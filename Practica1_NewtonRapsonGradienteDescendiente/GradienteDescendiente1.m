clear
close all
clc

f=@(x,y) x.*exp(-x.^2-y.^2); %funcion objetivo
fpx=@(x,y) exp(-x.^2-y.^2)-2*exp(-x.^2-y.^2)*x.^2;%derivada parcial respecto de x
fpy=@(x,y) (-2*exp(-x.^2-y.^2))*(x*y);%derivada parcial respecto de y

xi = [-1 1]';
h = 0.1;


for i=1:500
    Gxy = [fpx(xi(1,1),xi(2,1)),fpy(xi(1,1),xi(2,1))]';
    xi=xi-h*Gxy;
end




x_lim = linspace(-5,5,50); % límites para eje x, -5 es inferior, 5 es superior, con 50 puntos
y_lim = linspace(-5,5,50); % límites para eje y, -5 es inferior, 5 es superior, con 50 puntos

[x,y] = meshgrid(x_lim,y_lim); % creamos una rejilla de puntos (x,y) para crear el plot
z = f(x,y); % evaluación de cada elemento en la rejilla para crear su valor en el eje z

figure
hold on
grid on

surf(x,y,z) % plot de la rejilla en 3D
plot3(xi(1,1),xi(2,1),f(xi(1,1),xi(2,1)),'r*','LineWidth',2,'MarkerSize',10) % plot de un punto cualqueira en 3
legend({'función','óptimo'},'FontSize',15)

title('Gradiente Descendiente 1','FontSize',15)
xlabel('x','FontSize',15)
ylabel('y','FontSize',15)
zlabel('f(x,y)','FontSize',15)
view([-20,60]) % estos valores definen la vista 3D del plot

figure
hold on
grid on

contour(x,y,z,20) % plot de la rejilla en 2D
plot(xi(1,1),xi(2,1),'r*','LineWidth',2,'MarkerSize',10) % plot de un punto cualqueira en 2D
legend({'función','óptimo'},'FontSize',15)
title('Gradiente Descendiente 1','FontSize',15)
xlabel('x','FontSize',15)
ylabel('y','FontSize',15)

