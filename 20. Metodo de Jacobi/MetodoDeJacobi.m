% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 11/junio/2022

% ------- DESCRIPCIÓN ----------------------------------------------------
% Resuelve sistemas de ecuaciones lineales por el método de Jacobi.
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% n = Número de ecuaciones; ejemplo 3
% b = Vector b; ejemplo [5 6 4]
% A = Matriz A; ejemplo [5 -3 1; 2 4 -1; 2 -3 8]
% m = Cantidad máxima de iteraciones; ejemplo 20
% E = Error permitido; ejemplo 0.0001
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% Tabla con las iteraciones realizadas y sus respectivos valores.
% -----------------------------------------------------------------------
clear
clc
n = input('Número de ecuaciones (n): ');
A = input('La matriz A: ');
b = input('El vector b: ');
m = input('Total de iteraciones: ');
E = input('Error permitido: ');

X0 = zeros(1,n);
X = X0;
K = 0;
Norma = 1;
fprintf('       X        Y         Z       error\n')
while Norma > E
	K = K+1;
	fprintf('%d', K);
	for i = 1:n
		suma = 0;
		for j = 1:n
			if i ~= j
				suma = suma + A(i,j) * X(j);
			end
		end
		X(i) = (b(i) - suma) / A(i,i);
		fprintf('%10.6f', X(i));
	end
	Norma = norm(X0 - X);
	fprintf('%10.6f\n', Norma);
	X0 = X;
	if K >= m
		break
	end
end