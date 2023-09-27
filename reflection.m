%Reflection
clc
clear all
syms x
x=-20:20
y=x.^(1/3)
y1=-x.^(1/3)
plot(x,y,'b',x,y1,'g','LineWidth',3)
grid on