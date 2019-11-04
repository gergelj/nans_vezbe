function [b] = zadatak5(A)

[n,m] = size(A);

d1 = A(A&eye(n)); %vektor glavne dijagonale
d2 = A(A&fliplr(eye(n))); %vektor sporedne dijagonale

[m1, i1] = min(d1);
[m2, i2] = min(d2);

if m1<m2
    b = [i1, i1];
else
    b = [n-i2+1, i2];
end

end