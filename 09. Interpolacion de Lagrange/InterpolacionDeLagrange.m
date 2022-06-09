% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCIÓN ----------------------------------------------------
% Realiza la interpolación polinómica de Lagrange para una serie de puntos
% suministrados por el usuario como tabla de valores.
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% x = Vector con las X; ejemplo  [-1 0 1 2] 
% y = Vector con las Y; ejemplo  [-4 -1 2 11]
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% C = Coeficientes del polinomio interpolador de lagrange.
% Gráfica con los puntos a interpolar.
% -----------------------------------------------------------------------

function InterpolacionDeLagrange()
clc
x = input('Ingrese el vector X: ');
y = input('Ingrese el vector Y: ');
C = [];

plot(x,y,'linestyle','none','marker','o');
hold on;
grid on;

n1=length(x);
n=n1-1;
L=zeros(n1,n1);

for k=1:n+1
    V=1;
    for j=1:n+1
        if k~=j;
            V=conv(V,poly(x(j)))/(x(k)-x(j));
        end
    end
    L(k,:)=V;
end

C=y*L