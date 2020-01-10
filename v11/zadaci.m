%% zadatak 1
clear
clc

f = @(x) 2*x.^2 + 2;
g = @(x) 20*cos(x);

disp('a)');
a = 0;
b = 2.5;

xx = linspace(a,b);
plot(xx, f(xx)); hold on
plot(xx, g(xx));
legend('f', 'g'); hold off

P = integrateSimpson(@(x) abs(f(x)-g(x)), a, b, 100);
disp(['P = ', num2str(P)]);

disp('b)');
a = 0;
b = 2;

f_inv = matlabFunction(finverse(sym(f)));

xx = linspace(a, b);
plot(xx, f(xx)); hold on
plot(xx, xx*0); hold off

V1 = pi * integrateSimpson(@(x) f(x)*0 + b^2, a, f(b), 100);
V2 = pi * integrateSimpson(@(x) f_inv(x).*f_inv(x), f(a), f(b), 100);
V = V1 - V2;
disp(['V = ', num2str(V)]);

%% zadatak 2
clear
clc

ddf = @(x, f, df) -f + cos(3*x) + 1;

% a)
a = 0;
b = 4*pi;
h = (b-a)/100;
fX0 = [1;0];

fX = rk4N(a, b, h, fX0, ddf);
xx = a : h : b;

subplot(2,1,1);
title('a)'); hold on
plot(xx, fX);
legend('f(x)'); hold off

disp('b)');

fX0 = [0;1];
a = 0;
b = 2*pi;
h = (b-a)/100;
fX = rk4N(a, b, h, fX0, ddf);
xx = a : h : b;

subplot(2,1,2);
title('b) i c)'); hold on
plot(xx, fX);

p = lSquares(xx, fX, 7);
vrednost = 1.5;

x01 = zeroSecant(@(x) polyval(p, x) - vrednost, a, 2, 0.0001, 100);
x02 = zeroSecant(@(x) polyval(p, x) - vrednost, 2.5, 5, 0.0001, 100);

scatter([x01 x02], [polyval(p, x01), polyval(p, x02)]);

disp(['x1 = ', num2str(x01)]);
disp(['x2 = ', num2str(x02)]);

disp('c)');
x3 = 2.6;
fX3 = polyval(p, x3);
disp(['f(', num2str(x3), ') = ', num2str(fX3)]);
scatter(x3, fX3);

legend('f(x)', ['f(x) = ', num2str(vrednost)], ['f(', num2str(x3), ')']); hold off

%% zadatak 3
clear
clc

left = @(x, h) (sin(2*x)).^3 * ddf(h) + df(h);
right = @(x) 3 - 2*x.^2;

% a)
x1 = 1; fX1 = 0;
x2 = 4; fX2 = pi/2;
h = (x2 - x1)/1000;
fX = finiteDifference(left, right, x1, fX1, x2, fX2, h);

xx = x1 : h : x2;
subplot(2,1,1);
title('a)'); hold on
plot(xx, fX); hold off

% b)

x1 = pi/4; fX1 = 0;
x2 = pi; fX2 = 1;
h = (x2 - x1)/100;
fX = finiteDifference(left, right, x1, fX1, x2, fX2, h);

xx = x1 : h : x2;
subplot(2,1,2);
title('b)'); hold on
plot(xx, fX);

p = lSquares(xx, fX, 7); % iako ovaj polinom ne prati funkciju bas najbolje
                         % tako se dobiju njihova resenja

vrednost = 13;
x01 = zeroSecant(@(x) polyval(p, x) - vrednost, x1, 1.5, 0.0001, 100);
x02 = zeroSecant(@(x) polyval(p, x) - vrednost, 3, x2, 0.0001, 100);
disp(['x1 = ', num2str(x01)]);
disp(['x2 = ', num2str(x02)]);

scatter([x01 x02], [polyval(p, x01), polyval(p, x02)]);

x3 = 2.3;
fX3 = polyval(p, x3);
disp(['f(', num2str(x3), ') = ', num2str(fX3)]);
scatter(x3, fX3);
legend('f(x)', ['f(x) = ', num2str(vrednost)], ['f(', num2str(x3), ')']); hold off
