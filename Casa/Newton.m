clear
close all
clc

f = @(x) 4*x.^3-80*x.^2+400*x; %funcion objetivo
fp = @(x) 12*x.^2-160*x+400; %primer derivada
fpp = @(x) 24*x-160; %segunda derivada

x=0:0.1:10; %espacio de busqueda
N=10;
xr=1.5; %valor inicial, que tambien es la x que iterará sobre la función

for i=1:N
    xr=xr-fp(xr)/fpp(xr);
end

if fpp(xr)>=0
    %disp([fpp(xr)]) %evaluación del valor máximo en la segunda derivada
    disp(["Mínimo en f''(x):" num2str(xr)])
else
    disp(["Máximo en f''(x):" num2str(xr)])
end

figure
cla
grid on
hold on
plot(x,f(x),'b-','LineWidth',2)
plot(x,fp(x),'g-','LineWidth',2)
plot(x,fpp(x),'r-','LineWidth',2)

plot(xr,f(xr),'g*','LineWidth',2,'MarkerSize',8)
plot(xr,fp(xr),'r*','LineWidth',2,'MarkerSize',8)
plot(xr,fpp(xr),'b*','LineWidth',2,'MarkerSize',8)

legend({'Función objetivo','Primer derivada','Segunda derivada','Punto óptimo','fp(xr)','fpp(xr)'},'FontSize',8)
title('Optimización por método de Newton','FontSize',10)
xlabel('x')
ylabel('f(x) fp(x) fpp(x)')





