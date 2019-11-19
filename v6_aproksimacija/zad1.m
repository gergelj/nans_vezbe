x = [0, 1.25,2.5,3.75,5];
fX = [1.7499,0.983,1.2554,3.0802,2.3664];
p = lSquares(x, fX, 3);

scatter(x, fX); hold on
x = linspace(min(x), max(x));
plot(x, polyval(p, x)); hold off
p