% Function created to solve simple differential equations, given a function
% name (preceeded by the @ symbol), initial conditions (can be scalar or
% vector) and a known solution point (can also be a vector).
% Works for 1 or 2 differential equations, could be generalised to n.
% Method is the "Mid-point" method.
function [t, x] = my_midpoint(fname, tspan, x0)
    
    % Find the number of points required to calculate in tspan
    n = numel(tspan);
    
    % Find the distance between each step
    h = (max(tspan)-min(tspan))./(n-1);
    
    %Decide if using 1 or 2 equations and set starting variables
    if length(x0) == 1
        x = zeros(n, 1);
        x(1) = x0(1);
    else 
        x = zeros(n, 2);
        x(1,1) = x0(1);
        x(1,2) = x0(2);
    end

    % Implement the midpoint method to calculate the values of x(i+1)
    for i = 1:n-1

        % Code for the Mid-point method F(t,x) version
        a = fname(tspan(i),x(i,:));
        b = fname(tspan(i)+(h./2),x(i,:)+(h./2).*a);
        x(i+1,:) = x(i,:) + h.*b';

            % Alternate code for the Mid-point method F(x,t) version
            %a = fname(x(i,1),tspan(i));
            %b = fname(x(i,1)+(h./2).*a,tspan(i)+(h./2));
            %x(i+1,1) = x(i,1) + h.*b;

            % Code for Euler's method, used in testing (Uncomment if needed)
            %x(i+1,1) = x(i,1) + fname(tspan(i),x(i,1)).*h;
    end
    
    % Now assign t to tspan and transpose it so solution can be plotted,
    % transposing is just for consistency, but not necessary
    t = tspan.';
end