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
    
 y=x;
 j = randi([1 D]);
 
 y(j)= xl(j) + (xu(j)-xl(j))*rand();
 
 if f(y(1),y(2))<f(x(1),x(2))
     x = y;
 end
 
end 

%Plot_Coutour(f,[x y], xl, xu);