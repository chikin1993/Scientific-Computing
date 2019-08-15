% Script to generate 500 random points in the square[?5,5] x [?5,5] and
% then generate 1000 points for each, calculate the createst comon distance
% and plot.

% Create an empty array for the triplets
points = [];

% For each iteration, pick x and y, calculate M, and append to the list
for i=1:500
    x = 10*rand(1) -5;
    y = 10*rand(1) -5;
    M = ginger_dist(x,y,1000);
    points = [points; x,y,M];
end

% Now plot each of the columns of the matrix points together. 
scatter3(points(:,1),points(:,2),points(:,3))
title('A 3D plot of the Maximum Euclidean distance of random trajectories of the Gingerbreadman Map')
xlabel('Values of x')
ylabel('Values of y')
zlabel('Max Euclidean Distance')