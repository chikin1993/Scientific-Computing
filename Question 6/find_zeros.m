% A function to find the zero value of a given function
% between a given inteval and to a given tolerence.
% Function must be given with an '@' before it.
function output = find_zeros(fname,x1,x2,tol)
    
    % Setting tolerence value and while loop
    diff = tol+1;
    while diff > tol
    
        % Calculating initial values for comparison
        y1 = fname(x1);
        y2 = fname(x2);

        % Calculating the mid point of the interval and its 
        % value
        xdash = (x1 + x2)./2;
        ydash = fname(xdash);

        % Check signs and re-assign variables
        if sign(y1) == sign(ydash)
            x1 = xdash;
        else
            x2 = xdash;
        end

        % Computing the absolute difference of the values
        diff = abs(x1-x2);
        
    end
    output = (x1 + x2)./2;
end