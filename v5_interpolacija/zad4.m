x = [1, 3, 5];
fX = [0, 3, 0];
% Nacrtati poznate ta?ke.
scatter(x, fX, 'black'); hold on
% Lagranžovom interpolacijom na?i polinom koj zadovoljava poznate ta?ke i nacrtati ga.
p = lagrangeInterp(x, fX);
x = linspace(min(x), max(x), 100);
plot(x, polyval(p, x), 'green');
% Nacrtati pravu f(x) = 1
one = ones(1, length(x));
plot(x, one, 'red');
% Na?i i nacrtati sve ta?ke preseka polinoma i prave f(x)
f = @(x) polyval(p, x)-1;
x01 = zeroSecant(f, 1, 3, 0.00001, 100);
x02 = zeroSecant(f, 3, 5, 0.00001, 100);

x0 = [x01 x02];
scatter(x0, polyval(p, x0));