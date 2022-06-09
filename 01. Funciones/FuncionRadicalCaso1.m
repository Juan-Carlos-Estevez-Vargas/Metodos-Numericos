% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCIÓN ----------------------------------------------------
% Calcula el dominio y rango de una función radical de tipo sqrt(ax + b).
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% a = Coeficiente que acompaña a las X.
% b = Coeficiente independiente.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% Dominio de la función.
% -----------------------------------------------------------------------

function FuncionRadicalCaso1()
disp ('Calculo del dominio y rango de funciones');
disp ('Funcion Radical');
disp ('Sea la funcion sqrt(ax + b) :');

a = input ('Ingrese el valor de a   ');
b = input ('Ingrese el valor de b   ');

x = -50:0.01:50;
y= sqrt(a*x + b);
w = -b./a;
plot (x,y);

disp ("El dominio es: [," + w + " ?)");