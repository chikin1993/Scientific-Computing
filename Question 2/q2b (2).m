function z = q2b(x,y)
    z = sin(x.*y).*exp(-3.*x.^2-y.^2+x.*y-3);
end