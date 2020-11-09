function [X,N]=goldensection(F,a,b,tol)
% For example F = @(x) 1-x*exp(-x)% [a,b] interval
% tol = max ratio of final to initial interval lengths
% X output matrix containing final a and b, b-a
% N = number of function evaluations

alpha = (sqrt(5)-1)/2;
lk = a + (1-alpha)*(b-a);
mk = a + alpha*(b-a);
ak = a;
bk = b;
N = 2;
lowerbound = F(lk);
upperbound = F(mk);
while bk-ak > tol
    if lowerbound <= upperbound
        bk = mk;
        mk = lk;
        upperbound = lowerbound;
        lk = ak + (1-alpha)*(bk-ak);
        lowerbound = F(lk);
    else
        ak = lk;
        lk = mk;
        mk = ak + alpha*(bk-ak);
        lowerbound = upperbound;
        upperbound = F(mk);
    end
    N = N + 1;
end
X = [ak bk bk-ak];

