function [s, err] = zadatak1(A)

[n,m] = size(A);

if n~=m
    err=1;
    s = -1;
else
    err = 0;
    d = eye(n);
    s = sum(A(A&d));
end



end