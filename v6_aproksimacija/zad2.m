x = [1,2,3,5,6];
fX = [2,4,4,1,3];

scatter(x, fX); hold on
p = lSquares(x, fX, 4);
x = linspace(min(x), max(x));
plot(x, polyval(p, x)); 

scatter(4, polyval(p, 4)); hold off
polyval(p, 4)