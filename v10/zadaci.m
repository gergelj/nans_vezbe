%% zadatak 1
clear
clc

left = @(x, h) ddf(h);
right = @(x) -sin(x);

x1 = 0;
fX1 = 0;
x2 = 2*pi;
fX2 = 0;

h = (x2 - x1)/1000;

fX = finiteDifference(left, right, x1, fX1, x2, fX2, h);

xx = x1 : h : x2;
plot(xx, sin(xx)); hold on
plot(xx, fX);
legend('tacno resenje', 'finiteDiff'); hold off

%% zadatak 2
clear
clc

left = @(x, h) ddf(h) + 2*df(h) + f(h);
right = @(x) x.^2;

x1 = 0;
fX1 = 0.2;
x2 = 1;
fX2 = 0.8;

h = (x2 - x1)/1000;

fX = finiteDifference(left, right, x1, fX1, x2, fX2, h);
xx = x1 : h : x2;

plot(xx, -5.8*exp(-xx) + -0.1802.*xx.*exp(-xx) + (xx).^2 - 4 * xx + 6); hold on
plot(xx, fX);
legend('tacno resenje', 'finiteDiff'); hold off

%% zadatak 3
clear
clc

left = @(x, h) 2*x.^2.*ddf(h) - 4*df(h) + sin(x)*f(h);
right = @(x) sqrt(x);

x1 = 0;
fX1 = 0;
x2 = 2;
fX2 = 1;

h = (x2 - x1)/100;
xx = x1 : h : x2;

fX = finiteDifference(left, right, x1, fX1, x2, fX2, h);

plot(xx, fX);

%% zadatak 4
clear
clc

left = @(x, h) -2*ddf(h) + df(h) + f(h)/2;
right = @(x) sin(x) ./ (x + 1);

x1 = 0; fX1 = 0;
x2 = 10; fX2 = 3.5;
h = (x2 - x1)/100;
xx = x1 : h : x2;

fX = finiteDifference(left, right, x1, fX1, x2, fX2, h);
p = lSquares(xx, fX, 7);

fX5 = polyval(p, 5);
disp(['f(5) = ', num2str(fX5)]);

%% zadatak 5
clear
clc

left = @(x, h) -2*ddf(h);
right = @(x) 2 - x.^3;

x1 = 2; fX1 = 2;
x2 = 4; fX2 = -2;
h = (x2 - x1)/100;
xx = x1 : h : x2;

fX = finiteDifference(left, right, x1, fX1, x2, fX2, h);
p = lSquares(xx, fX, 7);

fX3 = polyval(p, 3);
disp(['f(3) = ', num2str(fX3)]);

%% zadatak 6
clear
clc

left = @(x, h) (cos(x)).^2 .* ddf(h) - df(h);
right = @(x) 0;
x1 = 0; fX1 = 0;
x2 = pi; fX2 = 1;
h = (x2 - x1)/100;

xx = x1 : h : x2;
fX = finiteDifference(left, right, x1, fX1, x2, fX2, h);
p = lSquares(xx, fX, 7);

a = 0;
b = 3;
x = linspace(a, b);
plot(x, polyval(p, x)); hold on

errMax = 0.0001;
itMax = 100;
x1 = zeroSecant(@(x) polyval(p, x) - 1, 0.6, 1.2, errMax, itMax);
x2 = zeroSecant(@(x) polyval(p, x) - 1, 1.5, 2, errMax, itMax);
x3 = zeroSecant(@(x) polyval(p, x) - 1, 2.2, 2.6, errMax, itMax);
x4 = zeroSecant(@(x) polyval(p, x) - 1, 2.6, 3, errMax, itMax);
scatter([x1;x2;x3;x4], [polyval(p, x1); polyval(p, x2); polyval(p, x3); polyval(p, x4)]);
legend('funkcija', 'f(x) = 1'); hold off

disp(['x1 = ', num2str(x1)]);
disp(['x2 = ', num2str(x2)]);
disp(['x3 = ', num2str(x3)]);
disp(['x4 = ', num2str(x4)]);

%% zadatak 7
clear
clc

left = @(t, h) -4*ddf(h) + df(h)/2;
right = @(t) sin(t);
t1 = 5; fT1 = 20;
t2 = 10; fT2 = 50;
h = (t2 - t1)/100;
tt = t1 : h : t2;

fT = finiteDifference(left, right, t1, fT1, t2, fT2, h);
p = lSquares(tt, fT, 7);

disp('a)');
t3 = 7.5;
fT3 = polyval(p, t3);
disp(['v(', num2str(t3), ') = ', num2str(fT3), ' m/s']);

disp('b)');
t = linspace(0, t2);
plot(t, polyval(p, t)); hold on

t0 = zeroSecant(@(t) polyval(p, t), 0, 2, 0.0001, 100);
scatter(t0, polyval(p, t0));
legend('v(t)', 'pocetak kretanja'); hold off

disp(['t0 = ', num2str(t0), 's']);
