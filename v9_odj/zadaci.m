%% zadatak 1
clear
clc

df = @(x, f) cos(x);
a = 0;
b = 2*pi;
f0 = 0;
h = (b-a)/1000;

xx = a:h:b;
[fX, fnX] = rk4N(a, b, h, f0, df, -1);
plot(xx, fnX);

%% zadatak 2
clear
clc

d2f = @(x, f, df) -sin(x);
nfX0 = [0;1];
a = 0;
b = 2*pi;
h = (b-a)/1000;

xx = a:h:b;
plot(xx, sin(xx)); hold on

fX = rk4N(a, b, h, nfX0, d2f, -1);
plot(xx, fX);
legend('sin(x)', 'resenje'); hold off

%% zadatak 3
clear
clc

d2f = @(x, f, df) -f + x + 2;
a = 0;
b = 4*pi;
h = (b-a)/1000;

nfX0 = [4;2];

fX = rk4N(a, b, h, nfX0, d2f, -1);

xx = a:h:b;
plot(xx, 2*cos(xx) + sin(xx) + xx + 2); hold on
plot(xx, fX);
legend('tacno resenje', 'rk4'); hold off

%% zadatak 4
clear
clc

d4f = @(x, f, df, d2f, d3f) -13*d2f - 36*f;
a = 0;
b = 4*pi;
nfX0 = [0;-3;5;-3];
h = (b-a)/1000;

fX = rk4N(a, b, h, nfX0, d4f, -1);
x = a:h:b;

plot(x, cos(2*x) - 3*sin(2*x) - cos(3*x) + sin(3*x)); hold on
plot(x, fX);
legend('tacno resenje', 'rk4'); hold off

%% zadatak 5
clear
clc

F = 10;
m = 1;
d2s = @(x, s, ds) F/m;

nsT0 = [0; 0];
t0 = 0;
t1 = 10;
h = (t1 - t0)/1000;

sT = rk4N(t0, t1, h, nsT0, d2s, -1);

sT(length(sT))

%% zadatak 6
clear
clc

df = @(t, f) 2.^(0.2*t - 0.1*f);

% a)
disp('a)');

t0 = 3.4;
f0 = 1.36;
t2 = 10; % npr. 10 ali moze bilo koja vrednost koja je veca od t0
h = (t2 - t0)/1000;
t1 = 2.2; % trazimo vrednost funkcije za ovaj trenutak

fT = rk4N(t0, t2, h, f0, df, -1);
t = t0 : h : t2;

p = lSquares(t, fT, 7);
fT1 = polyval(p, t1)

% b)
disp('b)');

t0 = 3.2;
f0 = 5.4;
t2 = 10;
h = (t2 - t0)/1000;
fT1 = 4.8;

fT = rk4N(t0, t2, h, f0, df, -1);
t = t0 : h : t2;

p = lSquares(t, fT, 7);

t1 = zeroBisection(@(x) polyval(p,x)-fT1, 0, t2, 0.0001)

%% zadatak 7
clear
clc

dh = @(t, h) -sin(2*t) + 0.2*h;
r = 3;

disp('a)');

t0 = 5.5;
hT0 = 2;
t1 = 10;
h = (t1 - t0)/1000;

hT = rk4N(t0, t1, h, hT0, dh, -1);
hT1 = hT(length(hT));

V = r^2 * pi * (hT1 - hT0);
disp(['V = ', num2str(V), 'cm3']);

disp('b)');
t0 = 2;
hT0 = 8;
hT1 = 16;
t2 = 10;

h = (t2 - t0)/1000;
t = t0 : h : t2;

fT = rk4N(t0, t2, h, hT0, dh, -1);
p = lSquares(t, fT, 7);

t1 = zeroBisection(@(t) polyval(p, t)-hT1, t0, t2, 0.0001);

disp(['t1 = ', num2str(t1), 's']);





