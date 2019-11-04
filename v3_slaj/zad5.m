%podelimo trecu jednacinu sa z, pa 1/z zamenimo nekom drugom promenljivom
A = [4 2 0; 1 2 0; 2 1 4];
b = [1 -1 0];
x0 = [0;0;0];
errMin = 10^(-5);
[x,it] = gaussSeidel(A,b,x0,100,errMin);

disp(['[x y z] = [', num2str(x(1)), ', ' num2str(x(2)), ', ', num2str(1/x(3)), ']']);
disp(['Broj iteracija: ', num2str(it)]);