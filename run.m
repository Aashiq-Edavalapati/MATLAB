clc
clear all
syms x
x=-10:1:10
y=x.^2
y1=(x+5).^2
y2=(x-5).^2
plot(x,y,'b',x,y1,'g',x,y2,'m','LineWidth',3)
legend('x.^2','(x+5).^2','(x-5).^2')