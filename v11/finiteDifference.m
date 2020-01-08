function fX = finiteDifference(left, right, x1, fX1, xN, fXN, h)
    x = x1:h:xN;
    n = length(x) - 2;
    if n < 3
        error('Too few intervals!')
    end

    A = zeros(n, n);
    b = zeros(n, 1);
    for it = 1:n
        m = left(x(it + 1), h);
        mid = round(length(m)/2);

        fromA = max(1, it - mid + 1);
        toA = min(n, it + mid - 1);
        fromM = mid - it + fromA;
        toM = mid - it + toA;       
        A(it, fromA:toA) = m(fromM:toM);
        b(it) = right(x(it + 1));
    end
    mA = left(x(2), h);
    b(1) = b(1) - mA(mid - 1)*fX1;
    mB = left(x(end - 1), h);
    b(end) = b(end) - mB(mid + 1)*fXN;

    fX = A\b;
    fX = [fX1 fX' fXN];
end