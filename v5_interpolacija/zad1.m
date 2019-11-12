x = [0.7854, 1.9635, 3.1416, 4.3197, 5.4978];
fx = [0.7071, 0.9239, 0, -0.9239, -0.7071];

% Nacrtati poznate ta?ke.
scatter(x, fx); hold on

% Lagranžovom interpolacijom na?i polinom koj zadovoljava poznate ta?ke i nacrtati ga.
p = lagrangeInterp(x, fx);

x = linspace(min(x), max(x), 100);
px = polyval(p, x);
plot(x, px);

disp(p);