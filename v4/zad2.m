% Data je funkcija f(x) = cos x.
f = @(x) cos(x);

% a) Nacrtati x-osu i grafik funkcije na intervalu [pi/3, 4*pi/3]

a = pi/3;
b = 4*pi/3;
x = linspace(a,b,100);

plot(x, f(x)); hold on
% x-osa
plot(x, x*0);

% b) Otvorenom metodom naći i nacrtati nulu funkcije u istom intervalu.

% umesto intervala [a,b], stavicemo [1, 2.5] da bismo dobili nulu na
% intervalu
[x0,~] = zeroSecant(f, 1, 2.5, 0.00001, 100);
plot(x0, f(x0), 'o');

disp(['Resenje: ', num2str(x0)]);