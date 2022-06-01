% Encuentra el ajuste de curvas, es decir, una función aproximada a ciertos
% puntos suministrados por el usurio.
clc
n = input('Ingrese el número de puntos ')
x = -n:2:n;
y = [];

disp ('A continuación, ingrese los valor de y')
for i=0:n
    a = input('Ingrese un valor númerico ');
    y = [y, a];
end

plot(x,y,'linestyle','none','marker','o');
coeficientes = polyfit(x, y, 5);
hold on
y_funcion = polyval(coeficientes, x);
plot(x, y_funcion);