% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCIÓN ----------------------------------------------------
% Calcula el dominio y rango de una función exponencial de tipo 
% a^((bx + c) / (dx + e))
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% A, B, C, D, E = Coeficientes que pertenecen a la ecuación.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% Dominio de la función.
% -----------------------------------------------------------------------

function EcuacionExponencialCaso2()

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion Exponecial caso 1');
disp ('Sea la funcion a^((bx + c) / (dx + e)) :');

A=input('Ingrese el valor de A: ');
B=input('Ingrese el valor de B: ');
C=input('Ingrese el valor de C: ');
D=input('Ingrese el valor de D: ');
E=input('Ingrese el valor de E: ');


x = linspace (-10, 10, 50);
y = A.^((B*x + C)./(D*x + E));

W = -E./D;
plot (x,y);

disp ("El dominio es: (-?, " + W + ") U ("+ W + ", ?)");