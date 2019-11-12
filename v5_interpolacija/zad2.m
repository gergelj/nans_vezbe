x = [1, 2, 4];
fX = [4, 5, 4];
% Nacrtati poznate ta?ke.
scatter(x, fX, 'black'); hold on
% Lagranžovom interpolacijom na?i polinom koj zadovoljava poznate ta?ke i nacrtati ga.
p = lagrangeInterp(x, fX);
x = linspace(min(x), max(x), 100);
pX = polyval(p, x);
plot(x, pX, 'green');

% Na?i i nacrtati vrednost funkcije f(x) u ta?ki x = 3.
scatter(3, polyval(p, 3), 'red');