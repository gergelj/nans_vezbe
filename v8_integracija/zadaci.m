%% 1. zadatak
clear
clc

f = @(x) sin(x);
a = 0;
b = 3*pi/2;

% x = linspace(a,b);
% plot(x, f(x));

I = integrateSimpson13(f, a, b, 100)

%% 2. zadatak
clear
clc

f = @(x) exp(-x.^2/2);
a = 0;
b = 0.2;

% x = linspace(a,b);
% plot(x, f(x));

I = 2/sqrt(2*pi) * integrateSimpson13(f, a, b, 100)

%% 3. zadatak
clear
clc

f = @(x) x.^2;
g = @(x) sqrt(x);
a = 0;
b = 2;

x = linspace(a,b);
plot(x, f(x)); hold on
plot(x, g(x));
legend('f(x)', 'g(x)'); hold off

P = integrateSimpson13(@(x) abs(f(x)-g(x)), a, b, 100)

%% 4. zadatak
clear
clc

f = @(x) exp(2*x)./x;

a = 1;
b = 2;

% x = linspace(a,b);
% plot(x, f(x));

V = pi * integrateSimpson13(@(x) (f(x)).^2, a, b, 100)

%% 5. zadatak
clear
clc

f = @(x) exp(x) + 2;
g = @(x) sqrt(x);
a = 2;
b = 3;

% x = linspace(a,b);
% plot(x, f(x)); hold on
% plot(x, g(x));
% legend('f(x)', 'g(x)');

V = pi * (integrateSimpson13(@(x) (f(x)).^2, a, b, 100) - integrateSimpson13(@(x) (g(x)).^2, a, b, 100))

%% 6. zadatak
clear
clc

f = @(x) x.^2 + 2;

a = 2;
b = 4;

%inverzna funkcija
syms x;
fun(x) = f(x);
f_inv = matlabFunction(finverse(fun));

P = integrateSimpson13(f_inv, a, b, 100)

%% 7. zadatak
clear
clc

f = @(x) x.^2 + 2;

a = 0;
b = 4;

%inverzna funkcija
syms x;
fun(x) = f(x);
f_inv = matlabFunction(finverse(fun));

%zapremina valjka
valjak = pi * integrateSimpson13(@(x) b^2, 0, f(b), 100);
V = valjak - pi * integrateSimpson13(@(x) (f_inv(x)).^2, f(a), f(b), 100)

%% 8. zadatak
clear
clc

v = @(t) t.^2 - 2*t + 3;

t0 = 0;
t1 = 5;

s = integrateSimpson13(v, t0, t1, 100)