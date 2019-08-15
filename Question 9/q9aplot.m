% Script to plot the graph for q9a
[t9,y9]=ode45(@q9a,0:0.01:20,[0 pi]);
plot(t9,y9(:,1))
hold on
plot(t9,y9(:,2))
title('Graph of the ode45 solution with 2 male fireflies')
xlabel('0 <= t <= 20')
ylabel('Values of theta(t)')
legend('Theta 1 (t)','Theta 2 (t)')