F = @(x) exp(-x) + x.^2;
alpha = (sqrt(5)-1)/2;
[xgold, Ngold]  = goldensection(F,-1,1,2*alpha^(5))


xmin = (xgold(2) - xgold(1))/2;
F(xmin)
% Why does out calculation not work? vvv 
%[xdich, Ndich] = dichotomous(F,-1,1,2/(sqrt(2)^10),0.01)
[xdich, Ndich] = dichotomous(F,-1,1,2/(sqrt(2)^8),0.01)

