function y = q1e(t)
    y = log(t+3.*t.^2-1).*cosh(t./4)-(t.^3-3).^0.5;
end