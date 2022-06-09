% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCIÓN ----------------------------------------------------
% Encuentra el ajuste de curvas, es decir, una función aproximada a ciertos
% puntos suministrados por el usurio.
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% x = Vector con las X; ejemplo  [0 1 2 3] 
% y = Vector con las Y; ejemplo  [-2 0 1 2] 
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% Interpolación por medio de gráfica.
% -----------------------------------------------------------------------

clc
x = input('Ingrese el vector X: ');
y = input('Ingrese el vector Y: ');

plot(x,y,'linestyle','none','marker','o');
coeficientes = polyfit(x, y, 5);
hold on
y_funcion = polyval(coeficientes, x);
plot(x, y_funcion);