% Script to plot the figure for question 2c
[q2cx,q2cy] = meshgrid(-2:0.1:5);                                
q2cz = q2c(q2cx,q2cy);
surf(q2cx,q2cy,q2cz)
title('Graph of f(x,y) for Question 2c')
xlabel('-2 <= x <= 5')
ylabel('-2 <= y <= 5')
zlabel('f(x,y)')