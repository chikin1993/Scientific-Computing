% Script for plotting the relative error between the solutions obtained
% from the differential equations of question 8.
[q8bvt1, q8bvx1] = my_midpoint(@q8bv, 5:0.005:20, [1, -1]);
[q8bvt2, q8bvx2] = ode45(@q8bv, 5:0.005:20, [1, -1]);
error = abs(q8bvx1(1:1250,:)-q8bvx2(1:1250,:))./abs(q8bvx2(1:1250,:));
% Commented out is the original plot
% plot(q8bvt1, error)
% Below is the plot for the avaliable data
plot(q8bvt1(1:1250,:), error)
title('Graph of the relative error between my\_midpoint and ode45 for q8bv')
xlabel('5 <= t <= 12')
ylabel('Relative Error (Avaliable)')
legend('Error of y(1)','Error of y(2)')