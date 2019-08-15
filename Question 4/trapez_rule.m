% This function calculates the integral of a specified function.
% Include an @ symbol before the function name, a,b and n must be 
% numbers with a<b and n>0.
function sum = trapez_rule(fname,a,b,n)

    % initialise to zero.
    sum = 0;
    
    % calculate the step size.
    h = (b-a)/n;
    
    % iterate over the values up to n, calculating the function each time.
    for i = 1:n
        sum = sum + fname(a+(i-1)*h) + fname(a+i*h);
    end
    
    % correct the value by division by step size and return this.
    sum = sum*(h/2);
end