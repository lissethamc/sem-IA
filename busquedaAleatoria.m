clear
close all
clc

f=@(x,y) (x-2).^2+(y-2).^2;
xl=[-5 5]';
xu=[5 5]';
D=2;
N=50;

x=[3 3]';

for i=1:N
 y= xl + (xu-xl).*rand(D,1);
 if f(y(1),y(2))<f(x(1),x(2))
     x = y;
 end
end 