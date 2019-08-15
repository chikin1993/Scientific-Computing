function y = q4biv(x)
    y = (exp(x./4)-exp(-x))./(3.*sin(x./3).*cos(x./3).^2) + 3.*x.^2.*tan(x./3);
end