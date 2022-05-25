% Create X & Y
xSpace = linspace(-5,5,100);
ySpace = linspace(-5,5,100);
%Use meshgrip to create frid for plotting
[X1,X2] = meshgrid(xSpace,ySpace);

%Compute f(x) values

Y = sin(X1.*X1) - cos(X2.*X2);

% save f(x) values
save salah.txt Y -ascii

%create contour plot
contourf(X1,X2,Y);
colorbar()

%save plot
print -dsvg salah_plot.svg

