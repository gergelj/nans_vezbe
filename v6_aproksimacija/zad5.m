f = @(x) x.^3 .* cos(x);
a = -pi/2;
b = 5*pi/9;

x = linspace(a, b, 6);
fX = f(x);
scatter(x, fX); hold on
p = lSquares(x, fX, length(x)-1);
x = linspace(a, b);
plot(x, polyval(p, x));

h = @(x) polyval(p, x) + 0.5;

axis = ones(1, length(x)) * (-0.5);
plot(x, axis); 

xx(1) = zeroSecant(h, a, -1.7, 0.00001, 100);
xx(2) = zeroSecant(h, -1.7, -0.5, 0.00001, 100);
xx(3) = zeroSecant(h, 1.5, b, 0.00001, 100);

scatter(xx, polyval(p, xx)); hold off
xx