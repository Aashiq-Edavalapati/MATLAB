clear all
clc
syms f(x)
f(x)=piecewise(x<2,3-x,x==2,2,x>2,x/2);
fplot(f(x),[-5,1.99],'r','LineWidth',2)
hold on;grid on
fplot(f(x),[2.0001,5],'g','LineWidth',2)
hold on;grid on
plot(2,2,'bo','MarkerFaceColor','b','MarkerSize',10)
plot(2,1,'ro','MarkerFaceColor','w','MarkerSize',10)
axis equal;axis([-10 10 0 10])
x0=2;
Limit_val = limit(f,x,x0)
f_val = vpa(subs(f,x,x0))
if any(f_val==Limit_val)
    fprintf('The function is continuous at x=%d',x0)
else
    fprintf('The function is not continuous at x=%d\n',x0)
end
