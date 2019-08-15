function sum = q3a(x,k)
    sum = 0;
    for n = 0:k-1
        sum = sum + x.^(2.*n)./factorial(2.*n);
    end
end