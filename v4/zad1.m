% Data je funkcija f(x) = sin x.
f = @(x) sin(x);

% a) Nacrtati x-osu i grafik funkcije na intervalu [pi/3, 4pi/3]

a = pi/3;
b = 4*pi/3;
x = linspace(a,b,100);

plot(x, f(x)); hold on
% x-osa
plot(x, x*0);

% b) Zatvorenom metodom naći i nacrtati nulu funkcije u istom intervalu.

[x0,~] = zeroBisection(f, a, b, 0.00001);
plot(x0, f(x0), 'o');

disp(['Resenje: ', num2str(x0)]);