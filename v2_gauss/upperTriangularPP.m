function [A,b] = upperTriangularPP(A,b)

[m,~] = size(A);

for i = 1:m-1
    for j = i+1:m
        [~,k] = max(A(j:m,i));
        k = j+k-1;
        %zamenjuj j-tu vrstu sa k-tom vrstom
        temp = A(j,:);
        A(j, :) = A(k,:);
        A(k,:) = temp;

        tmp = b(j);
        b(j) = b(k);
        b(k) = tmp;

        mn = A(j,i)/A(i, i);
        A(j,:) = A(j,:)-A(i,:)*mn;
        b(j) = b(j) - b(i)*mn;
    end
end

disp(A);

end