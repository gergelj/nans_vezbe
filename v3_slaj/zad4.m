% z = 1/y
A = [2 1; 1 2];
b = [1;-2];
x0 = [0;0];
errMin = 10^(-5);
[x,it] = gaussSeidel(A,b,x0,100,errMin);
disp(['[x y] = [', num2str(x(1)), ', ' num2str(1/x(2)), ']']);
disp(['Broj iteracija: ', num2str(it)]);