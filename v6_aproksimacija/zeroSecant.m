function [x0, it] = zeroSecant(f,a,b,errMax,itMax)

for it = 1:itMax
    k = (f(a)-f(b))/(a-b);
    n = f(b)-k*b;
    x0 = -n/k;
    if (abs(f(x0))<errMax)
        return;
    end
    a = b;
    b = x0;
end
end