function [s] = fz1a(A, k)

if k<0
    s = NaN;
    return
end

x = unique(A);
[n,m] = size(A);
s = 0;

for i = 1:length(x)
    br = 0;
    for j = 1:n*m
        if x(i)==A(j)
            br = br + 1;
        end
        if br == k
            s = s + x(i);
            break
        end
    end
    
end

end