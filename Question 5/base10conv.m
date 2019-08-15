% A function to convert a base 10 number n, to another
% base b given by the user, valid for bases up to 
% and including base 15.
function output = base10conv(n,b)
    
    % Setting up initial list and first values for d,r
    list = [];
    d = floor(n./b);
    r = mod(n,b);
    list = [list, r];
    
    % Now repeat this process until d=0 and stop
    while d > 0
        r = mod(d,b);
        d = floor(d./b);
        list = [list, r];
    end
    
    % List must be in the reverse order
    list = fliplr(list);
    
    % Turn the list of numbers to a list of strings
    list = string(list);
    
    % Replace any numbers laterger than 10 with letters
    for i=1:length(list)
        if list(i) == "10"
            list(i) = "a";
        elseif list(i) == "11"
            list(i) = "b";
        elseif list(i) == "12"
            list(i) = "c";
        elseif list(i) == "13"
            list(i) = "d";
        elseif list(i) == "14"
            list(i) = "e";
        end
    end
    
    % Join the strings together for the output, empty character added
    % otherwise MATLAB inserts a space
    output = strjoin(list,'');
end