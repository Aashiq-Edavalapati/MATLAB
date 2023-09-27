clc
clear all
syms f(x)
f(x)=piecewise(x<1,1+x,x>=1,2);
fplot(f(x),[-5,0.9999999999],'r','LineWidth',2)
grid on;hold on
fplot(f(x),[1,5],'g','LineWidth',2)
grid on;hold on
axis equal;axis([-5 5 -5 5])
xlabel('Time')
ylabel('Distance')
title('Limit')
RHL=limit(f,x,2,'right')
LHL=limit(f,x,2,'left')
L=limit(f,x,2)