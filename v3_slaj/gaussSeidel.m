function [x, it] = gaussSeidel(A,b,x0,itMax,errMin)

[rows, ~] = size(A);
x = x0;

for it = 1:itMax
    for i = 1:rows
        x(i) = 1/A(i,i) * (b(i) - A(i, [1:i-1, i+1:end])*x([1:i-1, i+1:end]));
    end
    if abs(x-x0)<errMin
        return
    end
    x0 = x;
end

end