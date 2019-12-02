function [s] = integrateSimpson13(f, a, b, num_int)

if num_int <= 0 || mod(num_int, 2)==1
    s = NaN;
    return
end

h = (b-a)/num_int;
s = 0;

for i = 0:2:num_int-1
    s = s + (f(a+i*h) + 4*f(a+(i+1)*h) + f(a+(i+2)*h))*h/3;
end

end