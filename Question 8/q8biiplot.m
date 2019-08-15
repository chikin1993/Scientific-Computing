% Script for plotting the relative error between the solutions obtained
% from the differential equations of question 8.
[q8biit1, q8biix1] = my_midpoint(@q8bii, 2:0.01:10, 0);
[q8biit2, q8biix2] = ode45(@q8bii, 2:0.01:10, 0);
error = abs(q8biix1-q8biix2)./abs(q8biix2);
plot(q8biit1, error)
title('Graph of the relative error between my\_midpoint and ode45 for q8bii')
xlabel('2 <= t <= 10')
ylabel('Relative Error')