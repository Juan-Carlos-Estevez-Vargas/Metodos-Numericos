function f
clc
fprintf('\tResolución de Ecuaciones diferenciales por el método de Runge Kutta\n');
f=input('\ningrese la ecuacion diferencial: ','s');
x0=input('\ningrese el valor inicial de x: ');
x1=input('\ningrese el valor final de x: ');
y0=input('\ningrese el valor de y: ');
n=input('\ningrese el numero de iteraciones: ');
h=(x1-x0)/n;
xs=x0:h:x1;
fprintf('\n''´Pto x0 y(x1)');
vectorx = x0;
vectory = y0;

for i=1:n
    Pto=i;
    x0=xs(i+1);
    x=x0;
    y=y0;
    k1=h*eval(f);
    x=xs(i);
    y=y0+k1;
    k2=h*eval(f);
    y0=y0+(k1+k2)/2;
    fprintf('\n%2.0f%10.6f%10.6f\n',Pto,x0,y0);
    vectorx = [vectorx, x0];
    vectory = [vectory, y0];
end

fprintf('\n El punto aproximado Y(x1) es= %8.6f\n',y0);
plot(vectorx, vectory);