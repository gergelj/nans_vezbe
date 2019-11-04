function [x] = solveUpperTriangular(A,b)

[m,~] = size(A);
    
x = 1:m;
x = x';
for i = m:-1:1
    x(i) = (b(i) - A(i, i+1:end)*x(i+1:end)) / A(i,i);
end


end