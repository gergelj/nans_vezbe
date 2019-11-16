% Aproksimirati funkciju f(x) = x^2*sin(x) polinomom 3. stepena na intervalu [?pi, pi].
f = @(x) x.^2 .* sin(x);
a = -pi;
b = pi;
% Odabrati i nacrtati potreban broj ta?aka funkcije f(x) za aproksimaciju polinomom 3. stepena.
x = linspace(a, b, 3);
fX = f(x);
scatter(x, fX); hold on

% Lagran�ovom interpolacijom na?i polinom koj zadovoljava odabrane ta?ke i nacrtati ga.
p = lagrangeInterp(x, fX);
x = linspace(a, b, 100);

% Nacrtati funkciju f(x) na intervalu.
plot(x, f(x), 'blue');
%plot(x, polyval(p, x), 'red');
legend('tacke', 'f(x)', 'polynomial'); hold off