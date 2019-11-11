function [p] = interpolate(x, fx)

order = length(x)-1;
p = polyfit(x, fx, order);

scatter(x, fx); hold on
x = linspace(min(x), max(x), 100);
px = polyval(p, x);
plot(x, px);


end