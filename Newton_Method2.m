f = @(x1,x2) 13.5*x1.^2+128*x2.^2-0.3*cos(3*pi*x1)-0.4*cos(4*pi*x2) +0.7;

g = @(x1,x2) [27*x1+0.9*pi*sin(3*pi*x1); 256*x2+1.6*pi*sin(4*pi*x2)];

h = @(x1,x2) [27+2.7*pi^2*cos(3*pi*x1),0;
              0, 256+6.4*pi^2*cos(4*pi*x2)];

x0 =[5;5]; %Starting point
alpha = 0.020; %Learning rate
iter = 1;

while (iter < 1000)
   p = inv(h(x0(1),x0(2)))*-g(x0(1),x0(2)); % Newton method
   next_x = x0 + alpha*p;
   delta = f(x0(1),x0(2)) - f(next_x(1),next_x(2));
   x0 = next_x;
   iter = iter+1;
end
fprintf("Total number of iterations is %d\n", iter)
fprintf("x1 value is %f\n", x0(1))
fprintf("x2 value is %f\n", x0(2))
fprintf("function value is %f\n",f(x0(1),x0(2)))


%Plotting to confirm our findings
xSpace = linspace(-6,6);
ySPace = linspace(-6,6);
[X,Y] = meshgrid(xSpace,ySPace);
Z = @(w1,w2) 13.5*w1.^2+128*w2.^2-0.3*cos(3*pi*w1)-0.4*cos(4*pi*w2) +0.7;

contourf(X,Y,Z(X,Y));
colorbar()


