F = @(x) exp(-x) + x.^2;
alpha = (sqrt(5)-1)/2;

[xnewt, Nnewt] = newtons(F,1,0.0000000000000000000000000000000000000000000001)
[xbi, Nbi] = bisection(F,-1,1,0.1)

xminbi = (xbi(2) - xbi(1))/2;
Fbi = F(xminbi)
Fnewt = F(xnewt)