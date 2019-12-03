% zadatak3
clear
clc

f = @(x) x.*cos(2*x) - 2;
a = -3*pi/2;
b = 3*pi/4;
% a)
x = linspace(a,b);
plot(x, f(x)); hold on
plot(x, x*0);

errMax = 0.0001;
itMax = 100;
% b)
[x0, ~] = zeroSecant(f, a, -3, errMax, itMax)
scatter(x0, f(x0));

syms w;
fun(w) = f(w);
df = matlabFunction(diff(fun, w));

% c)
xmin = zeroSecant(df, -4, -3, errMax, itMax)
xmax = zeroSecant(df, a, -4, errMax, itMax)

scatter([xmin, xmax], [f(xmin), f(xmax)]);

% d)
g = @(x) -sin(x).*exp(x) - 2;

plot(x, g(x));

x1 = zeroSecant(@(x) f(x)-g(x), -5, -3, errMax, itMax)
x2 = zeroSecant(@(x) f(x)-g(x), -3, -2, errMax, itMax)
x3 = zeroSecant(@(x) f(x)-g(x), -2, -0.5, errMax, itMax)
x4 = zeroSecant(@(x) f(x)-g(x), -0.5, 2, errMax, itMax)

scatter([x1, x2, x3, x4], [f(x1), f(x2), f(x3), f(x4)]);

legend('f(x)', '', 'x0', 'min/max', 'g(x)', 'preseci'); hold off