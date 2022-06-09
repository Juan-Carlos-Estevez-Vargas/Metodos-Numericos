% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCI�N ----------------------------------------------------
% Calcula el valor aproximado de una integral definida mediante el m�todo
% de simpson simple 3/8.
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% f = La funci�n de tipo f(x); ejemplo 5*x^2.
% b = L�mite superior de la integral; ejemplo 4.
% a = L�mite inferior de la integral: ejemplo 1.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% STO = C�lculo del �rea aproximada de la integral.
% -----------------------------------------------------------------------

function MetodoDeSimpson3_8()
clc
f=input('ingrese la funcion \n f(x)=','s');
b=input('ingrese el limite superior de la integral� ');
a=input('ingrese el limite inferior de la integral  ');
f = inline(f);
h = (b-a)/3;
STO = (3/8)*h*(f(a)+3*f(a+h)+3*f(a+(2*h))+f(b));
fprintf('El area aproximada es: %10.2f\n\n',STO);
end