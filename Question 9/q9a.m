% Function for question 9a, equations of 2 male fireflies
function thetadot = q9a(t,theta)

    w1 = 1.0;
    w2 = 1.1;
    k = 0.01;
    
    thetadot(1,1) = w1 + (k./2).*sin(theta(2)-theta(1));
    thetadot(2,1) = w2 + (k./2).*sin(theta(1)-theta(2));
end