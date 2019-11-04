function [x, it] = zeroBisection(f, a, b, errMax)

it = 0;

while true
    c = (a+b)/2;
    if abs(f(c))<errMax
        x = c;
        return;
    elseif f(a)*f(c)<0
        b = c;
        it = it+1;
        continue;
    elseif f(c)*f(b)<0
        a = c;
        it = it+1;
        continue;
    else
        %error
        x = NaN;
        return;
    end

end

end