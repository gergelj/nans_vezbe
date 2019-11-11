function [p] = lagrangeInterp(x, fx)

p = zeros(1, length(x)); %matrica dimenzija 1xlength(x) odnosno nula polinom reda length(x)-1

for i = 1:length(x)
    den = 1;
    L = 1;
   for j = 1:length(x)
       if(i~=j)
           L = conv(L, [1 -x(j)]);
           den = den * (x(i) - x(j));
       end
   end
   p = p + L*fx(i)/den;
end

end