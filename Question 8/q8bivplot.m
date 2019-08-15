% Script for plotting the relative error between the solutions obtained
% from the differential equations of question 8.
[q8bivt1, q8bivx1] = my_midpoint(@q8biv, 0:0.01:5, [0.2, -0.5]);
[q8bivt2, q8bivx2] = ode45(@q8biv, 0:0.01:5, [0.2, -0.5]);
error = abs(q8bivx1-q8bivx2)./abs(q8bivx2);
plot(q8bivt1, error)
title('Graph of the relative error between my\_midpoint and ode45 for q8biv')
xlabel('0 <= t <= 5')
ylabel('Relative Error')
legend('Error of y(1)','Error of y(2)')