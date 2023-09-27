clc
clear all
syms f(x)
f(x)=piecewise(x<-1,1+x,x>=-1&x<1,x.^2,x>=1,3-x);
fplot(f(x),[-4,-1.000000001],'r','LineWidth',2)
grid on;hold on
fplot(f(x),[-1,0.999999999],'g','LineWidth',2)
grid on;hold on
fplot(f(x),[1,4],'b','Linewidth',2)
grid on;hold on
plot(-1,0,'ro','MarkerFaceColor','w','MarkerSize',10)
plot(-1,1,'go','MarkerFaceColor','g','MarkerSize',10)
plot(1,1,'go','MarkerFaceColor','w','MarkerSize',10)
plot(1,2,'bo','MarkerFaceColor','b','MarkerSize',10)
axis equal;axis([-3 3 -3 3])
legend('1+x','x.^2','3-x')
xlabel('Time')
ylabel('Distance')
title('Limit')
RHL=limit(f,x,0,'right')
LHL=limit(f,x,0,'left')
L=limit(f,x,0)
