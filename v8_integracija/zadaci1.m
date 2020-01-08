%% zadatak 1
clear
clc

f = @(x) sin(x);
a = 0;
b = 3*pi/2;

I = integrateSimpson(f, a, b, 1000);
I

%% zadatak 2
clear
clc

f = @(x) 2/sqrt(2*pi) .* exp(-x.^2/2);
a = 0;
b = 0.2;

I = integrateSimpson(f, a, b, 100);
I

%% zadatak 3
clear
clc

f = @(x) x.^2;
g = @(x) sqrt(x);
a = 0;
b = 2;

P = integrateSimpson(@(x) abs(f(x)-g(x)), a, b, 100);
P

%% zadatak 4
clear
clc

f = @(x) exp(2*x) ./ x;
a = 1;
b = 2;

V = pi * integrateSimpson(@(x) f(x).*f(x), a, b, 100);
V

%% zadatak 5
clear
clc

f = @(x) exp(x) + 2;
g = @(x) sqrt(x);
a = 2;
b = 3;

V = pi * (integrateSimpson(@(x) f(x).*f(x), a, b, 100) - integrateSimpson(@(x) g(x).*g(x), a, b, 100));
V
xx = linspace(a,b);
plot(xx, f(xx)); hold on
plot(xx, g(xx));
legend('f', 'g');
hold off

%% zadatak 6
clear
clc

f = @(x) x.^2 + 2;
a = 2;
b = 4;

f_inv = matlabFunction(finverse(sym(f)));

P = integrateSimpson(f_inv, a, b, 100);
P

%% zadatak 7
clear
clc

f = @(x) x.^2 + 2;
f_inv = matlabFunction(finverse(sym(f)));
a = 0;
b = 4;

V1 = pi * integrateSimpson(@(x) f_inv(x)*0 + b^2, a, f(b), 100);
V2 = pi * integrateSimpson(@(x) f_inv(x).*f_inv(x), f(a), f(b), 100);
V = V1 - V2

%% zadatak 8
clear
clc

v = @(t) t.^2 - 2*t + 3;
t0 = 0;
t1 = 5;

s = integrateSimpson(v, t0, t1, 100);
s







