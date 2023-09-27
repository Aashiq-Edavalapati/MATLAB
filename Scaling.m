%Scaling
clc
clear all
syms x
x=-10:2:10
y=x.^(1/5)
y1=3*x.^(1/5)
y2 =(1/3)*x.^(1/5)
plot(x,y,'b',x,y1,'g',x,y2,'r','LineWidth',3)
