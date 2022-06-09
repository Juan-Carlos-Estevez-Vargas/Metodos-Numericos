% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCI�N ----------------------------------------------------
% Calcula la raiz de una funci�n en un rango [a, b]
% Para ejecutar el m�todo, debes ejecutar el fichero 'MetodoDeNewtonRaphson.m',
% esta es solo una implementaci�n.
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% f = Ecuaci�n o poliniomio a evaluar.
% df = Derivada de la funci�n calculada por matlab.
% x0 = Valor aproximado de la raiz de la funci�n..
% n = N�mero de iteraciones m�ximo permitido.
% tol = Valor del error permitido: ejemplo 0.0001.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% k = N�mero de iteraci�n.
% x1 = Aproximaci�n a la raiz de la funci�n.
% -----------------------------------------------------------------------

function NewtonRaphson(x0)
syms x;
f = input('ingrese nuevamente la funci�n ');
df = diff(f);
disp(df);
n = input('Digite el n�mero de ieraciones ');
tol = input('Ingrese la tolerancia ');

for k=1: n
    x1 = x0 - subs(f, x0)/subs(df, x0);
    if(abs(x1 - x0) < tol)
        fprintf('\nx%d=%f es un aproximaci�n de una ra�z\n', k, x1);
        disp('\n')
        return 
    end
    fprintf('x%d=%f\n', k, x1); 
    x0 = x1;
end
