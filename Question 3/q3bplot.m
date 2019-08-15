% Script for plotting the relative error between a function and the first 
% six terms of its Maclaurin series.
q3bx = linspace(-pi/6,pi/6);
q3breal = atan(q3bx);
q3bmac = q3b(q3bx,6);
% Both functions are absolute below as arctan(x) would be negative
% for part and give a negative relative error which does not show
% as accurately how approximations fail towards the edges of the interval
q3by = abs(q3breal-q3bmac)./abs(q3breal);
plot(q3bx,q3by)
title('Graph of the Relative Error of arctan(x)')
xlabel('-\pi/6 <= x <= \pi/6')
ylabel('Relative Error')
