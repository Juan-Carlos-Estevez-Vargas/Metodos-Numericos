%Autor: Juan Carlos Estevez Vargas
%Canal de Youtube: Apuntes de un Ingeniero
%Actualizado: 8/junio/2022

% ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA:

% f = Ecuaci�n diferencial (S�lo ingresa la funci�n) ejemplo: 
%       Sea la ecuaci�n diferendial dy/dx = x + y se debe ingresar solo x + y.
% x0 = Valor inicial de X.
% x1 = Valor final de X.
% y0 = Valor de Y a operar en la EDO.
% n = Cantidad entera de iteraciones que se deseen.

% VARIABLES DE SALIDA:

% y0 = Punto aproximado y(x1) encontrado del algoritmo mediante el m�todo
%       de Runge Kutta.
% Tambi�n se presenta la gr�fica de la funci�n (EDO) aproximada por el
%       m�todo num�rico.

function f
clc
fprintf('\tResoluci�n de Ecuaciones diferenciales por el m�todo de Runge Kutta\n');
f=input('\ningrese la ecuacion diferencial: ','s');
x0=input('\ningrese el valor inicial de x: ');
x1=input('\ningrese el valor final de x: ');
y0=input('\ningrese el valor de y: ');
n=input('\ningrese el numero de iteraciones: ');
h=(x1-x0)/n;
xs=x0:h:x1;
fprintf('\n''�Pto x0 y(x1)');
vectorx = x0;
vectory = y0;

for i=1:n
    Pto=i;
    x0=xs(i+1);
    x=x0;
    y=y0;
    k1=h*eval(f);
    x=xs(i);
    y=y0+k1;
    k2=h*eval(f);
    y0=y0+(k1+k2)/2;
    fprintf('\n%2.0f%10.6f%10.6f\n',Pto,x0,y0);
    vectorx = [vectorx, x0];
    vectory = [vectory, y0];
end

fprintf('\n El punto aproximado Y(x1) es= %8.6f\n',y0);
plot(vectorx, vectory);