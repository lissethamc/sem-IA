clear
close all
clc

f=@(x,y) (x-2).^2+(y-2).^2;
xl=[-5 5]';
xu=[5 5]';
D=2;
N=50;
sigma=1;

x=xl + (xu-xl).*rand(D,1);
x=[3 3]';

for i=1:N
 r = normrnd(0,sigma,[D 1]);
 y = x + r;
 j = randi([1 D]);
 
 
 if f(y(1),y(2))<f(x(1),x(2))
     x = y;
 end
 
end 

%Plot_Coutour(f,[x y], xl, xu);