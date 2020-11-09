function [X,N] = dichotomous(F,a,b,tol,epsilon)
if nargin < 5 epsilon = tol*0.1; end

ak = a;
bk = b;
N = 0;
while bk-ak > tol
    lk = (ak+bk)/2 - epsilon;
    mk = (ak+bk)/2 + epsilon;
    if F(lk) <= F(mk)
        bk = mk;
    else
        ak = lk;
    end
    N = N + 2;
end
X = [ak bk bk-ak];