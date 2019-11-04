function [A] = zadatak8(A)

[n] = size(A);

d1 = eye(n(1));
d2 = fliplr(d1);
maska = d1|d2;

elementi = A.*maska;
bez_elementi = A.*(~maska);
elementi = fliplr(elementi);
A = elementi+bez_elementi;

end