function I = integrateSimpson(f, a, b, intervals)
    if b <= a
        error('b <= a!')
    end
    if mod(intervals, 2) ~= 0
        error('mod(intervals, 2) != 0!')
    end

    I = integrateSimpsonWithoutPlot(f, a, b, intervals);
end

function I = integrateSimpsonWithoutPlot(f, a, b, intervals)
    width = (b - a)/intervals;
    x = a:width:b;
    fX = f(x);

    I = (fX(1) + 4*sum(fX(2:2:end - 1)) + 2*sum(fX(3:2:end - 2)) + fX(end))*width/3;
end