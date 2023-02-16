clear
close all
clc

f=@(x,y) x.*exp(-x.^2-y.^2); %funcion objetivo
xl=[-5 -5]';
xu=[5 5]';



D=2;
N=10000;
fx_plot = zeros([1 N]);
x=[0 0]';

for i=1:N
 y= xl + (xu-xl).*rand(D,1);
 if f(y(1),y(2))<f(x(1),x(2))
     x = y;
 end
 fx_plot(i)=f(x(1),x(2));
end 
%Resultados

disp(['x = ' num2str(x(1))])
disp(['y = ' num2str(x(2))])
disp(['f(x,y) = ' num2str(f(x(1),x(2)))])

%Grafica de convergencia%
figure
hold on
grid on
plot(fx_plot,'b-','LineWidth',2);
title('Gráfica de Convergencia');
xlabel('No. de iteración');
ylabel('f(x)');

%Graficas resultantes%
x_lim = linspace(-5,5,50); % límites para eje x, -5 es inferior, 5 es superior, con 50 puntos
y_lim = linspace(-5,5,50); % límites para eje y, -5 es inferior, 5 es superior, con 50 puntos

[x1,y1] = meshgrid(x_lim,y_lim); % creamos una rejilla de puntos (x,y) para crear el plot
z = f(x1,y1); % evaluación de cada elemento en la rejilla para crear su valor en el eje z

figure
hold on
grid on

surf(x1,y1,z) % plot de la rejilla en 3D
plot3(x(1),x(2),f(x(1),x(2)),'r*','LineWidth',2,'MarkerSize',10) % plot de un punto cualqueira en 3
legend({'función','óptimo'},'FontSize',15)

title('Búsqueda aleatoria 1 3D','FontSize',15)
xlabel('x','FontSize',15)
ylabel('y','FontSize',15)
zlabel('f(x,y)','FontSize',15)
view([-20,60]) % estos valores definen la vista 3D del plot

figure
hold on
grid on

contour(x1,y1,z,20) % plot de la rejilla en 2D
plot(x(1),x(2),'r*','LineWidth',2,'MarkerSize',10) % plot de un punto cualqueira en 2D
legend({'función','óptimo'},'FontSize',15)
title('Búsqueda aleatoria 1 2D','FontSize',15)
xlabel('x','FontSize',15)
ylabel('y','FontSize',15)