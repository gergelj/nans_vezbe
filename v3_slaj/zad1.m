A = [9 3 1; 7 8 9; 4 1 9];
b = [33;54;13];
x0 = [0;0;0];
errMin = 10^(-5);
[x,it] = gaussSeidel(A,b,x0,100,errMin)