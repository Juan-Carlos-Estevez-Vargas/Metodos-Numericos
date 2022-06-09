%Autor: Juan Carlos Estevez Vargas
%Canal de Youtube: Apuntes de un Ingeniero
%Actualizado: 8/junio/2022

% ESTA FUNCI�N PIDE LOS SIGUIENTES DATOS DE ENTRADA:

% f = funci�n a operar.
% x0 = Primer punto de operaci�n, primer valor de intervalo [a, b].
% x1 = Segundo punto de operaci�n, valor de cierre del intervalo [a, b].
% tol = Tolerancia permitida en el programa (ejemplo: 10^-4 o 0.001).

% VARIABLES DE SALIDA:

% i = N�mero de iteraciones realizadas en el sistema.
% x2 = Ra�z encontrada de la funci�n f.

function MetodoDeLaSecante()
clear
clc
f = input('Ingrese la funci�n: ','s');
x0 = input('Ingrese el punto x0: ');
x1 = input('Ingrese el punto x1: ');
tol = input('Ingrese la tolerancia: ');
ezplot(f), grid on
f = inline(f);
error = 1;
i = 0;
fprintf('Iteracipon:   Raiz:\n');

while error>tol
    x2 = x0 - ((x0-x1)/(feval(f, x0)-feval(f,x1)))*feval(f,x0);
    x0 = x1;
    x1 = x2;
    i = i+1;
    error = abs(feval(f,x2));
    i2(i)=i;
    x3(i)=x2;
end

fprintf('\nEl n�mero de iteraciones es: %3.0f\n',i);
fprintf('La raiz es: %4.6f\n',x2);
    