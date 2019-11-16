function [a] = lSquares(x, fX, order)

x = x';
fX = fX';

A = ones(length(x), order+1);

for i = 1:order+1
   A(:,i) = x.^(i-1);
end

a = (A'*A)\(A'*fX);
a = fliplr(a');

end