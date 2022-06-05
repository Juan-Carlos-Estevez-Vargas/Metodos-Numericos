syms x
syms y
fprintf('\tResolucion de Ecuaciones Diferenciales por Metodo Euler');
f=inline(input('\n Ingrese la derivada:','s'));
x=input('\n Ingrese el valor de X inicial:');
xf=input('\n Ingrese el valor de X final:');
y=input('\n Ingrese el valor de Y inicial:');
h=input('\n Ingrese el paso:');
n=(xf-x)/h
disp(' x    y');

for i=1:n+1
    y1= feval(f,x,y);
    hy1=h*y1;
    fprintf('\n%0.1f %0.4f ',x,y);
    y=y+hy1;
    x=x+h;
end