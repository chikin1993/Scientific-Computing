% A function to convert a base 10 number n, to another
% base b given by the user, valif for bases up to 
% and including base 36
function output = modified_base10conv(n,b)
    
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
        elseif list(i) == "15"
            list(i) = "f";
        elseif list(i) == "16"
            list(i) = "g";
        elseif list(i) == "17"
            list(i) = "h";
        elseif list(i) == "18"
            list(i) = "i";
        elseif list(i) == "19"
            list(i) = "j";
        elseif list(i) == "20"
            list(i) = "k";
        elseif list(i) == "21"
            list(i) = "l";
        elseif list(i) == "22"
            list(i) = "m";
        elseif list(i) == "23"
            list(i) = "n";
        elseif list(i) == "24"
            list(i) = "o";
        elseif list(i) == "25"
            list(i) = "p";
        elseif list(i) == "26"
            list(i) = "q";
        elseif list(i) == "27"
            list(i) = "r";
        elseif list(i) == "28"
            list(i) = "s";
        elseif list(i) == "29"
            list(i) = "t";
        elseif list(i) == "30"
            list(i) = "u";
        elseif list(i) == "31"
            list(i) = "v";
        elseif list(i) == "32"
            list(i) = "w";
        elseif list(i) == "33"
            list(i) = "x";
        elseif list(i) == "34"
            list(i) = "y";
        elseif list(i) == "35"
            list(i) = "z";
        end
    end
    
    % Join the strings together for the output
    output = strjoin(list,'');
end