
F = @(x) (x-2).*(x-1).*(x+2);
G = @(x) 2.*(x-2);

xlin  = linspace(0,3,1000000);

[xdich,Ndich] = dichotomous(F,1,3,0.001)
[xgold,Ngold] = goldensection(F,1,3,0.001)
[xbi,Nbi] = bisection(F,1,3,0.001)
[xnewt,Nnewt] = newtons(F,1,0.01)

xmin = (x(2)+x(1))/2;

plot(xlin,F(xlin))
Fdich = F((xdich(2)+xdich(1))/2)
Fgold = F((xgold(2)+xgold(1))/2)
Fbi = F((xbi(2)+xbi(1))/2)
Fnewt = F(xnewt)

Fmin = min(F(xlin))