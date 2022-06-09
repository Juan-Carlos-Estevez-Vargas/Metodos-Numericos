%Autor: Juan Carlos Estevez Vargas
%Canal de Youtube: Apuntes de un Ingeniero
%Actualizado: 8/junio/2022

% ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA:

% f = La función de tipo f(x, y); ejemplo 2*x*y.
% x = Valor inicial de X; ejemplo 1.
% xf = Valor final de X; ejemplo 1.5.
% y = Valor de Y a operar en la EDO; ejemplo 1.
% h = Paso; ejemplo 0.1.

% VARIABLES DE SALIDA:

% Tabla con las iteraciones realizadas y sus respectivos valores.

syms x
syms y
fprintf('\tResolucion de Ecuaciones Diferenciales por Metodo Euler');
f=inline(input('\n Ingrese la función que acompaña la EDO:','s'));
x=input('\n Ingrese el valor de X inicial:');
xf=input('\n Ingrese el valor de X final:');
y=input('\n Ingrese el valor de Y inicial:');
h=input('\n Ingrese el paso:');
n=(xf-x)/h
disp(' x    y');

for i=1:n+1
    y1= feval(f,x,y);
    hy1=h*y1;
    fprintf('\n%0.1f %0.4f ',x,y);
    y=y+hy1;
    x=x+h;
end