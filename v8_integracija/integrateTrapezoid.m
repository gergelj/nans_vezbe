function [s] = integrateTrapezoid(f, a, b, num_int)

if num_int <= 0
    s = NaN;
    return
end

h = (b-a)/num_int;
s = 0;

for i = 0:num_int-1
    s = s + (f(a+i*h)+f(a+(i+1)*h))*h/2;
end

end