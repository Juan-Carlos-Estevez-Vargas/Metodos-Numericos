% Encuentra el ajuste de curvas, es decir, una funci�n aproximada a ciertos
% puntos suministrados por el usurio.
clc
n = input('Ingrese el n�mero de puntos ')
x = -n:2:n;
y = [];

disp ('A continuaci�n, ingrese los valor de y')
for i=0:n
    a = input('Ingrese un valor n�merico ');
    y = [y, a];
end

plot(x,y,'linestyle','none','marker','o');
coeficientes = polyfit(x, y, 5);
hold on
y_funcion = polyval(coeficientes, x);
plot(x, y_funcion);