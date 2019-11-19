x = [0,1,2,3,4,5];
fX = [5,3,5,1,3,5];

scatter(x, fX); hold on

p = lSquares(x, fX, length(x)-1);
x = linspace(min(x), max(x));
plot(x, polyval(p, x));
dp = polyder(p);

xmin = zeroSecant(@(x)polyval(dp, x), 3, 4, 0.00001, 100);
xmax = zeroSecant(@(x)polyval(dp, x), 4, 5, 0.00001, 100);

scatter(xmin, polyval(p, xmin));
scatter(xmax, polyval(p, xmax)); hold off