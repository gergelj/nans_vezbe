function [b] = zadatak4(A)

[n,m] = size(A);

maska = ~fliplr(eye(n));
A = A.*maska;
b = sum(A,2);

end