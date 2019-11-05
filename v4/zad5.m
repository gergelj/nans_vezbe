% Date su funkcije f(x) = x^2 − 2 i g(x) = -x^2+2
f = @(x) x.^2-2;
g = @(x) -x.^2+2;

% a) Nacrtati grafik obe funkcije na intervalu [-2,2].

a = -2;
b = 2;
x = linspace(a,b,100);

plot(x, f(x)); hold on
plot(x, g(x));
legend('f(x)', 'g(x)');

% b) Proizvoljnom metodom naći i nacrtati sve preseke funkcija u istom intervalu.

% presek dve funkcije je tacka x0, koja je nula funkcije h(x) = f(x) - g(x)

h = @(x) f(x)-g(x);

% ali posto imamo dva preseka, prilagodimo intervale
x01 = zeroBisection(h, a, 0, 0.00001);
x02 = zeroBisection(h, 0, b, 0.00001);

plot(x01, f(x01), 'o');
plot(x02, f(x02), 'o'); hold off

disp('Resenje: ');
disp(['x1 = ', num2str(x01)]);
disp(['x2 = ', num2str(x02)]);