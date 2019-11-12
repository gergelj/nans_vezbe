x = [1, 4, 5];
fX = [1, 3, 3];
% Nacrtati poznate ta?ke.
scatter(x, fX, 'black'); hold on
% Lagranžovom interpolacijom na?i polinom koj zadovoljava poznate ta?ke i nacrtati ga.
p = lagrangeInterp(x, fX);

x = linspace(min(x), max(x), 100);
pX = polyval(p, x);
plot(x, pX, 'green');

% Na?i x1 za koje važi f(x1) = 2 i nacrtati tu ta?ku.
p0 = p;
p0(length(p0)) = p0(length(p0))-2;
x0 = zeroSecant(@(x) polyval(p0,x), min(x), max(x), 0.00001, 100);
scatter(x0,polyval(p, x0), 'red');