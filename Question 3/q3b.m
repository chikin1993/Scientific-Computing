function sum = q3b(x,k)
    sum = 0;
    for n = 0:k-1
        sum = sum + (((-1).^n)./(2.*n+1)).*x.^(2.*n+1);
    end
end