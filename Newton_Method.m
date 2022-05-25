f = @(x) 7*x - log(x); %Function
g = @(x) 7 - (1/x); %Gradient 
h = @(x) (1/x.^2); %Hessian

delta = 100; % Difference
x = 0.01; %Starting point
alpha = 1; %Learning rate
iter = 1;
fprintf("# \t\t x \t\t f(x) \t\t delta \n")
while (delta >= 0.0001)
  p = inv(h(x))*-g(x); % Newton method
  %fprintf("%f \n", p);
  next_x = x + alpha*p;
  delta = f(x) - f(next_x);
  fprintf("%d \t\t %f \t %f \t %f \n", iter, x, f(x), delta);
  x = next_x;
  iter = iter+1;
end
