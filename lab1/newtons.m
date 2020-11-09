function [X, N] = newtons(F,lambda,tol,g,H)
h = 0.00001;
if nargin < 4
   g = @(x) (F(x+h) - F(x))/h; 
end

if nargin < 5
   H = @(x) (F(x-h) -2.*F(x) + F(x+h))/h^2;   
end

N = 0;
while abs(g(lambda)) > tol
    lambda = lambda - g(lambda)/H(lambda);
    N = N + 1;
end
X = lambda;
