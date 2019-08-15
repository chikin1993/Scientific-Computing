% Function for question 8bv
function ydot = q8bv(t,y)
    ydot(1,1) = y(2);
    ydot(2,1) = -y(2)+y(1).^2-2.*sin(t)-1;
end