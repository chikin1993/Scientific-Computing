function sum = q3d(x,k)
    sum = 0;
    for n = 2:k+1
        sum = sum + ((n.*(n-1))./2).*x.^(n-2);
    end
end