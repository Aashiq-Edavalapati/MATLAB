clc
clear all
syms f(x)
f(x)=piecewise(x>=0&x<1,x.^2,x>=1&x<2,2,x>=2&x<=3,x.^2-3*x+2);
fplot(f(x),[0,0.999],'r','LineWidth',2)
grid on;hold on
fplot(f(x),[1,1.999],'b','LineWidth',2)
grid on;hold on
fplot(f(x),[2,3],'g','LineWidth',2)
grid on;hold on
plot(0,0,'ro','MarkerFaceColor','r','MarkerSize',10)
plot(1,1,'ro','MarkerFaceColor','w','MarkerSize',10)
plot(1,2,'bo','MarkerFaceColor','b','MarkerSize',10)
plot(2,2,'ro','MarkerFaceColor','w','MarkerSize',10)
plot(3,2,'go','MarkerFaceColor','g','MarkerSize',10)
axis([-4,4,0,4])