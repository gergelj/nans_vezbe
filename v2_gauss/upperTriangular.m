function [A, b] = upperTriangular(A, b)

[m,~] = size(A);

    for i = 1:m-1
        for j = i+1:m
            mn = A(j,i)/A(i,i);
            A(j, :) = A(j,:) - A(i,:).*mn;
            b(j) = b(j) - b(i)*mn;
        end

    end
    
    disp(A);
end