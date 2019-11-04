function [x0, it] = zeroNewton(f, df, x0, errMax, itMax)

for it=1:itMax
    if abs(f(x0))<errMax
        return;
    end
    x0 = x0 - f(x0)/df(x0);
end

end