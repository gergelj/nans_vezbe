function [A] = zadatak6(A)

[n,m] = size(A);

for i=1:2:n
    A(i,:) = fliplr(A(i, :));
end

end