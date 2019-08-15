function y = q1d(x)
    y = sin(abs(4-x)).*cos(abs(6.*x-4)).*atan((x-3).*(x-5)).*exp(-x./2);
end