% Function for question 9b, k=0.5
function thetadot = q9biii(t,theta)

    w1 = 1.0;
    w2 = 1.1;
    k = 0.5;
    
    thetadot(1,1) = w1 + (k./2).*sin(theta(2)-theta(1));
    thetadot(2,1) = w2 + (k./2).*sin(theta(1)-theta(2));
end