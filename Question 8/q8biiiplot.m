% Script for plotting the relative error between the solutions obtained
% from the differential equations of question 8.
[q8biiit1, q8biiix1] = my_midpoint(@q8biii, 0:0.005:3, 0.1);
[q8biiit2, q8biiix2] = ode45(@q8biii, 0:0.005:3, 0.1);
error = abs(q8biiix1-q8biiix2)./abs(q8biiix2);
plot(q8biiit1, error)
title('Graph of the relative error between my\_midpoint and ode45 for q8biii')
xlabel('0 <= t <= 3')
ylabel('Relative Error')