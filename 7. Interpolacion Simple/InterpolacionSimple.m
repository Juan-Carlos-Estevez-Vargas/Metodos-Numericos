% Encuentra una ecuación aproximada a ciertos puntos suministrados como
% tabla de valores.
clc
y = [];
x = [];
n = input('Introduzca la cantidad de puntos: ');

disp ();
disp ('A continuación, ingrese los valor de x')
for i=1:n
    a = input('Ingrese un valor númerico ');
    x = [x, a];
end

disp ();
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