% Script for plotting the relative error between a function and the first 
% six terms of its Maclaurin series.
q3ax = linspace(1,5);
q3areal = cosh(q3ax);
q3amac = q3a(q3ax,6);
q3ay = abs(q3areal-q3amac)./q3areal;
plot(q3ax,q3ay)
title('Graph of the Relative Error of cosh(x)')
xlabel('1 <= x <= 5')
ylabel('Relative Error')
