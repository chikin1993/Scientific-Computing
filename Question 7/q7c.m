% Generating points to plot for q7c
blue_points = ginger(1,2.01,1000);
plot(blue_points(:,1),blue_points(:,2),'b--o')

title('A 2D plot of the Gingerbreadman Map')
xlabel('Values of x')
ylabel('Values of y')

hold on

red_points = ginger(1,2.05,1000);
plot(red_points(:,1),red_points(:,2),'r--o')

yellow_points = ginger(1,2.1,1000);
plot(yellow_points(:,1),yellow_points(:,2),'y--o')

magenta_points = ginger(1,2.15,1000);
plot(magenta_points(:,1),magenta_points(:,2),'m--o')

green_points = ginger(1,2.2,1000);
plot(green_points(:,1),green_points(:,2),'g--o')

legend('Initial Point(1,2.05)','Initial Point(1,2.1)','Initial Point(1,2.15)','Initial Point(1,2.2)')

hold off