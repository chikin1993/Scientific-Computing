% Script to plot the figure for question 2a
[q2ax,q2ay] = meshgrid(-5:0.1:5);                                
q2az = q2a(q2ax,q2ay);
surf(q2ax,q2ay,q2az)
title('Graph of f(x,y) for Question 2a')
xlabel('-5 <= x <= 5')
ylabel('-5 <= y <= 5')
zlabel('f(x,y)')