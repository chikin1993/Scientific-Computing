function sum = q3c(x,k)
    sum = 0;
    for n = 1:k
        sum = sum + (x.^n)./n;
    end
    sum = -sum;
end