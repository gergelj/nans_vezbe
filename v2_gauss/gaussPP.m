function [x] = gaussPP(A, b)

[A,b] = upperTriangularPP(A,b);
x = solveUpperTriangular(A,b);

end