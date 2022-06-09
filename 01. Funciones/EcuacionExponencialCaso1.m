% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCI�N ----------------------------------------------------
% Calcula el dominio y rango de una funci�n exponencial de tipo 
% a^(bx + c)
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% A, B, C = Coeficientes que pertenecen a la ecuaci�n.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% Dominio de la funci�n.
% -----------------------------------------------------------------------

function EcuacionExponencialCaso1()

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion Exponecial caso 1');
disp ('Sea la funcion a^(bx + c) :');

A=input('Ingrese el valor de A: ');
B=input('Ingrese el valor de B: ');
C=input('Ingrese el valor de C: ');

x = linspace (-10, 1, 50);
y = A.^(B*x + C);

plot (x,y);

disp ("El dominio es: (-?, ?)");