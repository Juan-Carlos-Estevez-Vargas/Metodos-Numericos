% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCIÓN ----------------------------------------------------
% Calcula el dominio y rango de una función racional de tipo 
% a / bx + c
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% A, B, C = Coeficientes que pertenecen a la ecuación.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% Dominio de la función.
% -----------------------------------------------------------------------

function EcuacionRacionalCaso1

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion Racional Caso 1');
disp ('Sea la funcion a / bx + c :');

A=input('Ingrese el valor de A: ');
B=input('Ingrese el valor de B: ');
C=input('Ingrese el valor de C: ');

x = linspace (-25, 25, 50);
y= A./ (B*x + C);

plot (x,y);

Z = -C./B;

disp ("El dominio es: (-?, " + Z + ") U ("+ Z + ", ?)");