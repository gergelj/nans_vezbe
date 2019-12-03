% zadatak 4
clear
clc

f = @(x) exp(x)/2 .* cos(x.^2/3);
a = 1;
b = 6;
errMax = 0.0001;
itMax = 100;

x = linspace(a, b, 8);

xx = linspace(a, b);

% a)
p = lagrangeInterp(x, f(x))

plot(xx, f(xx)); hold on
plot(xx, polyval(p, xx));

% b)
y = 35;
plot(xx, ones(1, length(xx))*y);

x1 = zeroSecant(@(x) polyval(p, x) - y, 4.5, 5.2, errMax, itMax)
x2 = zeroSecant(@(x) polyval(p, x) - y, 5.5, 6, errMax, itMax)

scatter([x1, x2], [polyval(p, x1), polyval(p, x2)]);

% c)
x3 = zeroSecant(@(x) polyval(p,x)-f(x), 4.5, 5, errMax, itMax)
x4 = zeroSecant(@(x) polyval(p,x)-f(x), 5, 5.5, errMax, itMax)

scatter([x3, x4], [polyval(p, x3), polyval(p, x4)]);

legend('f(x)', 'polynomial', 'y = 35', 'x1,2', 'preseci'); hold off