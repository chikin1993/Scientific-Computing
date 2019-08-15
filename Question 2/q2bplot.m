% Script to plot the figure for question 2b
[q2bx,q2by] = meshgrid(-2:.1:3,0:0.1:2);                                
q2bz = q2b(q2bx,q2by);
surf(q2bx,q2by,q2bz)
title('Graph of f(x,y) for Question 2b')
xlabel('-2 <= x <= 3')
ylabel('0 <= y <= 2')
zlabel('f(x,y)')