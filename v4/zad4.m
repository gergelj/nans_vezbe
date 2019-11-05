% Date su funkcije f(x) = x^2 − x + 3 i g(x) = e^x
f = @(x) x.^2-x+3;
g = @(x) exp(x);

% a) Nacrtati grafik obe funkcije na intervalu [0,2].

a = 0;
b = 2;
x = linspace(a,b,100);

plot(x, f(x)); hold on
plot(x, g(x));
legend('f(x)', 'g(x)');

% b) Proizvoljnom metodom naći i nacrtati presek funkcija u istom intervalu.

% presek dve funkcije je tacka x0, koja je nula funkcije h(x) = f(x) - g(x)

h = @(x) f(x)-g(x);

x0 = zeroBisection(h, a, b, 0.00001);

plot(x0, f(x0), 'o'); hold off

disp(['Resenje: ', num2str(x0)]);