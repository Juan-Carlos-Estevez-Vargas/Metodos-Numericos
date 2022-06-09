% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCI�N ----------------------------------------------------
% Calcula el dominio y rango de una funci�n logaritmica de tipo 
% loga(bx + c)
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% a, b, c = Coeficientes que pertenecen a la ecuaci�n.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% Dominio de la funci�n.
% -----------------------------------------------------------------------

function EcuacionLogaritmicaCaso1()

disp ('Calculo del dominio y rango de funciones');
disp ('Funcion Logar�tmica Caso 1');
disp ('Sea la funcion loga(bx + c) :');

a = input ('Ingrese el valor de a   ');
b = input ('Ingrese el valor de b   ');
c = input ('Ingrese el valor de c   ');

x = linspace (-20, 20, 50);
y = log10(b*x + c)./log10(a);

z = -c./b;

plot (x,y);

disp ("El dominio es: (" + z + ", ?)");