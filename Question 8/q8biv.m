% Function for question 8biv
function ydot = q8biv(t,y)
    ydot(1,1) = y(2);
    ydot(2,1) = 0.2.*(3.*y(2)-2.*y(1)+cos(4.*t));
end