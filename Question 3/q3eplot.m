% Script for plotting the relative error between a function and the first 
% six terms of its Maclaurin series.
q3ex = linspace(-1/4,1/4);
q3ereal = asin(q3ex);
q3emac = q3e(q3ex,6);
% Both functions are absolute below to keep the relative error positive
q3ey = abs(q3ereal-q3emac)./abs(q3ereal);
plot(q3ex,q3ey)
title('Graph of the Relative Error of arcsin(x)')
xlabel('-1/4 <= x <= 1/4')
ylabel('Relative Error')