function [A] = fz1b(A)

[n, ~] = size(A);
ck = A(:, ceil(n/2));
ck = ceil(n/2);
A = fliplr(A);

for i = 1:n
    for j = 1:n
        if i==j
            tmp = A(i, ck);
            A(i, ck) = A(i,j);
            A(i,j) = tmp;
        end
    end
end

A = fliplr(A);

end