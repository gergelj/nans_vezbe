% Data je funkcija f(x) = sin 2x.
f = @(x) sin(2*x);

% a) Nacrtati x-osu i grafik funkcije na intervalu [pi/4, 7pi/4]

a = pi/4;
b = 7*pi/4;
x = linspace(a,b,100);

plot(x, f(x)); hold on
% x-osa
plot(x, x*0);

% b) Proizvoljnom metodom naći i nacrtati sve nule funkcije u istom intervalu.

% vidimo da funkcija ima tri nule, proizvoljno se bira tri intervala da bi
% metodom dobili sve tri nule
[x01,~] = zeroSecant(f, 1, 2, 0.00001, 100);
[x02,~] = zeroSecant(f, 2.5, 3.9, 0.00001, 100);
[x03,~] = zeroSecant(f, 4, 5, 0.00001, 100);
plot(x01, f(x01), 'o');
plot(x02, f(x02), 'o');
plot(x03, f(x03), 'o');

disp('Resenje: ');
disp(['x1 = ', num2str(x01)]);
disp(['x2 = ', num2str(x02)]);
disp(['x3 = ', num2str(x03)]);