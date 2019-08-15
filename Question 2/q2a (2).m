function z = q2a(x,y)
    z = cos((x.^2+y.^2+17).^0.5)./(2.*y.^2+4.*x.^2+9);
end