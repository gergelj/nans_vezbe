function [b] = zadatak3 (A)

[n,m] = size(A);
b = 1:m;

for j = 1:m
    min_ind = 1;
    for i = 1:n
        if A(i,j)<A(min_ind, j)
            min_ind = i;
        end
    end
    b(j) = min_ind;
end

end