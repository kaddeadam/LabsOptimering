F = @(x) 1-x.*exp(-x);

alpha = (sqrt(5)-1)/2;

[xgold,Ngold] = goldensection(F,0,2,2*alpha^(4)+0.01)

xmin = (xgold(2) - xgold(1))/2;
F(xmin)