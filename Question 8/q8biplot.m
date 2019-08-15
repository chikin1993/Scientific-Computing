% Script for plotting the relative error between the solutions obtained
% from the differential equations of question 8.
[q8bit1, q8bix1] = my_midpoint(@q8bi, 0:0.01:3*pi, 0.5);
[q8bit2, q8bix2] = ode45(@q8bi, 0:0.01:3*pi, 0.5);
error = abs(q8bix1-q8bix2)./abs(q8bix2);
plot(q8bit1, error)
title('Graph of the relative error between my\_midpoint and ode45 for q8bi')
xlabel('0 <= t <= 3\pi')
ylabel('Relative Error')