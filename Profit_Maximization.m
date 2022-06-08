f = @(x,y,z) 0.013*x.^2+0.012*y.^2+0.009*z.^2+70*(x+y+z)^-1+600-12*x-14*y-13*z; %Function
g = @(x,y,z) [0.026*x-70*(x+y+z)^-2-12;0.024*y-70*(x+y+z)^-2-14;0.018*z-70*(x+y+z)^-2-13]; %Gradient 
h = @(x,y,z) [0.026+140*(x+y+z)^-3,140*(x+y+z)^-3,140*(x+y+z)^-3;140*(x+y+z)^-3,0.024+140*(x+y+z)^-3,140*(x+y+z)^-3;140*(x+y+z)^-3,140*(x+y+z)^-3,0.018+140*(x+y+z)^-3]; %Hessian

b = [1,1,1]'; %Starting point (1 cupcake, 1 muffin, 1 cookie)
alpha = 0.002; %Learning rate
iter = 1;

% We want cost functions to be < -2500, in other words, profits > 2500.

while (f(b(1),b(2),b(3)) > - 2500) 

p = inv(h(b(1),b(2),b(3)))*-g(b(1),b(2),b(3)); 
next_b = b + alpha*p;
b = next_b;
iter = iter+1;
 end
 fprintf("Total number of iterations is %d\n", iter)
 fprintf("x value is %f\n", b(1))
 fprintf("y value is %f\n", b(2))
 fprintf("z value is %f\n", b(3))
 fprintf("cost value is %f\n",f(b(1),b(2),b(3)))
