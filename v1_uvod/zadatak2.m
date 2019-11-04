function [s] = zadatak2(A)

[n,m] = size(A);
x = sum(sum(A)) / (n*m);

s = sum(A(A>x));

end