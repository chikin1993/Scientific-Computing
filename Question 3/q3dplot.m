% Script for plotting the relative error between a function and the first 
% six terms of its Maclaurin series.
q3dx = linspace(-1/2,4/7);
q3dreal = 1./(1-q3dx).^3;
q3dmac = q3d(q3dx,6);
q3dy = abs(q3dreal-q3dmac)./q3dreal;
plot(q3dx,q3dy)
title('Graph of the Relative Error of 1/(1-x)^3')
xlabel('-1/2 <= x <= 4/7')
ylabel('Relative Error')
