% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCIÓN ----------------------------------------------------
% Calcula el valor aproximado de una integral definida mediante el método
% de simpson simple 3/8.
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% f = La función de tipo f(x); ejemplo 5*x^2.
% b = Límite superior de la integral; ejemplo 4.
% a = Límite inferior de la integral: ejemplo 1.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% STO = Cálculo del área aproximada de la integral.
% -----------------------------------------------------------------------

function MetodoDeSimpson3_8()
clc
f=input('ingrese la funcion \n f(x)=','s');
b=input('ingrese el limite superior de la integral´ ');
a=input('ingrese el limite inferior de la integral  ');
f = inline(f);
h = (b-a)/3;
STO = (3/8)*h*(f(a)+3*f(a+h)+3*f(a+(2*h))+f(b));
fprintf('El area aproximada es: %10.2f\n\n',STO);
end