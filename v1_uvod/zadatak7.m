function [b] = zadatak7(A)

[n,m] = size(A);

b = 1:n;
b = b';

for i=1:n
    max_ind = 1;
    for j=1:m
        if A(i,j)>A(i, max_ind)
            max_ind = j;
        end
    end
    b(i) = max_ind;
end

end