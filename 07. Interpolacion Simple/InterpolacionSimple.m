% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCIÓN ----------------------------------------------------
% Interpola un conjunto de valores dados como vectores a una función.
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% n = Cantidad de puntos a interpolar; ejemplo 4.
% x = Vector con los valores de X los cuales serán llenados por medio de un
%     bucle for; ejemplo [0 1 2 3]
% y = Vector con los valores de Y los cuales serán llenados por medio de un
%     bucle for; ejemplo [-2 0 1 2]
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% Gráfica de las puntos con la función interpolada.
% w = Vector de coeficientes del polinomio interpolador de grado n-1.
% -----------------------------------------------------------------------
clc
y = [];
x = [];
n = input('Introduzca la cantidad de puntos: ');

disp ('A continuación, ingrese los valor de x')
for i=1:n
    a = input('Ingrese un valor númerico ');
    x = [x, a];
end

disp ('A continuación, ingrese los valor de y')
for i=1:n
    a = input('Ingrese un valor númerico ');
    y = [y, a];
end

w = polyfit(x, y, n-1);
xx = linspace(0, 15, 100);
yy = polyval(w, xx);
hold on, grid on, plot(xx, yy);
w