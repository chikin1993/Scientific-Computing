% Script for plotting the relative error between a function and the first 
% six terms of its Maclaurin series.
q3cx = linspace(-2/3,3/5);
q3creal = log(1-q3cx);
q3cmac = q3c(q3cx,6);
% Both functions are absolute below as log(1-x) would be negative
% for part and give a negative relative error which does not show
% as accurately how approximations fail towards the edges of the interval
q3cy = abs((q3creal-q3cmac)./q3creal);
plot(q3cx,q3cy)
title('Graph of the Relative Error of log(1-x)')
xlabel('-2/3 <= x <= 3/5')
ylabel('Relative Error')
