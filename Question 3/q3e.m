function sum = q3e(x,k)
    sum = 0;
    for n = 0:k-1
        sum = sum + (factorial(2.*n)./((4.^n).*(factorial(n).^2).*(2.*n+1))).*x.^(2.*n+1);
    end
end