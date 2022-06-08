f = @(x1, x2) x1^4 + x1*x2 + (1+x2)^2;
g = @(x1, x2) [4*x1+x2;x1+2*(1+x2)];

xk = [0 1]';
bk = [1 0; 0 1];
alpha = 1;
xk1 = xk+ alpha*(-bk*g(xk(1),xk(2)))
sk = xk1 - xk;
yk = g(xk1(1),xk1(2)) - g(xk(1),xk(2));
bk1 = bk + ((yk-bk*sk)*(yk-bk*sk)')/((yk-bk*sk)'*sk)
pk1 = -inv(bk1)*g(xk1(1),xk1(2))
xk2 = xk1 + alpha*pk1
