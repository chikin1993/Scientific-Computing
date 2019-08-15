% Script to plot the figure for question 2d
[q2du,q2dv] = meshgrid(-2:0.1:2,-1:0.1:1);                                
q2dz = q2d(q2du,q2dv);
surf(q2du,q2dv,q2dz)
title('Graph of f(u,v) for Question 2d')
xlabel('-2 <= u <= 2')
ylabel('-1 <= v <= 1')
zlabel('f(u,v)')