% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCIÓN ----------------------------------------------------
% Calcula la raiz de una función en un rango [a, b]
% Para ejecutar el método, debes ejecutar el fichero 'MetodoDeNewtonRaphson.m',
% esta es solo una implementación.
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% f = Ecuación o poliniomio a evaluar.
% df = Derivada de la función calculada por matlab.
% x0 = Valor aproximado de la raiz de la función..
% n = Número de iteraciones máximo permitido.
% tol = Valor del error permitido: ejemplo 0.0001.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% k = Número de iteración.
% x1 = Aproximación a la raiz de la función.
% -----------------------------------------------------------------------

function NewtonRaphson(x0)
syms x;
f = input('ingrese nuevamente la función ');
df = diff(f);
disp(df);
n = input('Digite el número de ieraciones ');
tol = input('Ingrese la tolerancia ');

for k=1: n
    x1 = x0 - subs(f, x0)/subs(df, x0);
    if(abs(x1 - x0) < tol)
        fprintf('\nx%d=%f es un aproximación de una raíz\n', k, x1);
        disp('\n')
        return 
    end
    fprintf('x%d=%f\n', k, x1); 
    x0 = x1;
end
