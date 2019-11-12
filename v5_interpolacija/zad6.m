% Lagranžovom interpolacijom odrediti parametre a0 , a1 , a2 i a3 tako da funkcija f(x) = a0 + a1*x + a2*x^2 + a3*x^3
% zadovoljava slede?e:
x = [0.1, 0.3, 0.6, 1.2];
fX = [1.023, 1.261, 2.368, 9.064];

p = lagrangeInterp(x, fX);
p