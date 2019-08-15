% A function to generate the first N points in a 2D map of a specific
% function
function output = ginger(x0,y0,N)
    
    % Create an empty array for the points to live in
    output = [];
    
    % Add the initial point to the array
    output = [output; x0,y0];
    
    % Calculate the new points and add them to the array
    for i=1:N-1
        output = [output; 1-output(i,2)+abs(output(i,1)),output(i,1)];
    end
end