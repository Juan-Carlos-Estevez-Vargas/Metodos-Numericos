function MetodoDeLaSecante(f, x0, x1)
clear
clc
f = input('Ingrese la función: ','s');
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

fprintf('\nEl número de iteraciones es: %3.0f\n',i);
fprintf('La raiz es: %4.6f\n',x2);
    