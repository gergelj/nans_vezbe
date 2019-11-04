function [A] = zadatak9(A)

[n,m] = size(A);

for i=1:2:m
    A(:,i) = flipud(A(:,i));
end

end