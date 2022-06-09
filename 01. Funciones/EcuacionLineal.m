% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCI�N ----------------------------------------------------
% Calcula el dominio y rango de una funci�n lineal de tipo 
% (ax + b)
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% a, b = Coeficientes que pertenecen a la ecuaci�n.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% Dominio de la funci�n.
% -----------------------------------------------------------------------

function EcuacionLineal()

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion lineal');
disp ('Sea la funcion ax + b :');

a = input ('Ingrese el valor de a   ');
b = input ('Ingrese el valor de b   ');

x = -50:0.01:50;
y = a*x + b;

plot (x,y);

disp ('El dominio es: (-?, ?)');