% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCIÓN ----------------------------------------------------
% Calcula el dominio y rango de una función racional de tipo 
% ((ax + b) / (cx + d)
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% A, B, C, D = Coeficientes que pertenecen a la ecuación.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% Dominio de la función.
% -----------------------------------------------------------------------

function EcuacionRacionalCaso2

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion Racional Caso 2');
disp ('Sea la funcion (ax + b) / (cx + d) :');

A=input('Ingrese el valor de A: ');
B=input('Ingrese el valor de B: ');
C=input('Ingrese el valor de C: ');
D=input('Ingrese el valor de D: ');

x = linspace (-20, 20, 50);
y= (A*x + B)./(C*x + D);

plot (x,y);

W = -D./C;

disp ("El dominio es: (-?, " + W + ") U ("+ W + ", ?)");