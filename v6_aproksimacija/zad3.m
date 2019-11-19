f = @(x) x.^2 .* sin(x);
a = -pi;
b = pi;

x = linspace(a, b, 4);
fX = f(x);
scatter(x, fX); hold on
p = lSquares(x, fX, 3);
x = linspace(a, b);
plot(x, polyval(p, x));
plot(x, f(x), 'green');

a = -0.5;
b = 0.5;
h = @(x) f(x) - polyval(p, x);

[x0, it] = zeroSecant(h, a, b, 0.000001, 100);
scatter(x0, f(x0)); hold off
it