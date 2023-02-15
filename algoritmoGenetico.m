clear
close all
clc

f=@(x,y) (x-2).^2+(y-2).^2;
xl=[-5 5]';
xu=[5 5]';

N = 4;%poblacion;
D =2; %dimension del problema a resolver;
x=zeros(D,N)%matriz de 0, primero filas y luego columnas columnas kndividuos filas codificación;
aptitud = zeros(1,N);%vector de aptitud;
%fx_plot(i)=fx;
%colocarlos de manera aleatoria, inicialización;
for i=1:N
    x(:,i)=xl+(xu-xl).*rand(D,1);
end

%seleccion del mas apto eliminando los valores negativos
%evaluacion de la aptitud 
for i=1:N
    fx = f(x(1,i),x(2,i));
    if fx>=0
        aptitud(i)=1/(1+fx);
    else
        aptitud(i)=1+abs(fx);
    end
end

%Seleccion por ruleta
i_best=Seleccion(aptitud)


%
p1=Seleccion(aptitud);
p2=p1;

while p1==p2;
    p2 = Seleccion(aptitud);
end

x(:,p1)
x(:,p2)


p1=[1.1 2.2 3.3 4.4 5.5 6.6];%codificacion que representa a un padre, la dimension es de 6
p2=[0.1 0.2 0.3 0.4 0.5 0.6];

D=6
pc=randi([1 D]);

h1 = p1; %hijo 1 tiene info directa del padre 1, hijo 2 del padre 2
h2 = p2;

%a partir del punto de cruce intercambio información
h2(pc:D)=p1(pc:D)
h1(pc:D)=p2(pc:D)

%mutacion

for i=1:N
    for j=1:D
        if rand()<pm
            x(j,i)=xl(j)+(xu(j)-xl(j)).*rand();
        end
        
  %%%%%%      
        
for i=1:N;
    x(:i

    
for i=1:G
    %evaluacion de la aptitud
    
    f_plot = zeros(1,G);
    [~,i_best]= max(aptitud) %uno es la aptitud mas alta y el otro el indice 
    f_plot(g) = f(x(1, i_best), x(2,i_best));
