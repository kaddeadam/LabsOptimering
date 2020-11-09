function [X, N] = bisection(F,a,b,tol,g)
h = 0.0001;
if nargin < 5
   g = @(x) (F(x+h) - F(x))/h; 
end

ak = a;
bk= b;
N = 0;
while bk-ak > tol
    lk = (ak + bk)/2;
    if g(lk) <= 0
        ak = lk;
    else
        bk = lk;
    end
    N = N + 1;
end
X = [ak bk bk-ak];
