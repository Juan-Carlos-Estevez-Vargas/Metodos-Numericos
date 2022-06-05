syms y t;
a = input('Ingrese el primer valor del rango: ');
b = input('Ingrese el último valor del rango: ');
h = input('Ingrese el valor de espaciado: ');
f = input('Ingrese la función en la forma dy/dt: ');
D = input('Es la solución exacta de forma explícita S/N: ','s');
if D == 'S'
    Fexacta = input('Ingrese la función solución particular: ');
    Y(1) = input('Ingrese el valor inicial: ');
    %Cálculos
    n = (b-a)/h;
    T = [a:h:b];
    F = subs(Fexacta,T);
    fprintf('t\t\t ||k1\t\t\t\t\t ||k2\t\t\t\t\t ||y(t)\t\t\t\t\t ||F(t)\t\t\t\t\t ||e\t\t\t\t\t\n');
    fprintf('%.4f\t ||%.15f\t ||%.15f\t ||%.15f\t ||%.15f\t ||%e\n',double(T(1)),0,0,double(Y(1)),double(F(1)),0);
    for i=1:n
        k1 = subs(f,[t y],[T(i) Y(i)]);
        k2 = subs(f,[t y],[T(i)+h,Y(i)+(h*k1)]);
        Y(i+1) = Y(i)+(h/2)*(k1+k2);
        e = abs(Y(i+1)-F(i+1));
        fprintf('%.4f\t ||%.15f\t ||%.15f\t ||%.15f\t ||%.15f\t ||%e\n',double(T(i+1)),double(k1),double(k2),double(Y(i)),double(F(i)),double(e));
    end
    fprintf('\nLa solución aproximada es: %.15f',double(Y(i+1)));
    fprintf('\nLa solución exacta es: %.15f',double(F(i+1)));
    fprintf('\nEl error aproximado es: %e\n',double(e));
else
    g = input('Ingrese la función g: ');
    Y(1) = input('Ingrese el valor inicial: ');
    %Cálculos
    n = (b-a)/h;
    T = [a:h:b];
    fprintf('t\t\t ||k1\t\t\t\t\t ||k2\t\t\t\t\t ||y(t)\t\t\t\t\t ||e\t\t\t\t\t\n');
    fprintf('%.4f\t ||%.15f\t ||%.15f\t ||%.15f\t ||%e\n',double(T(1)),0,0,double(Y(1)),0);
    for i=1:n
        k1 = subs(f,[t y],[T(i) Y(i)]);
        k2 = subs(f,[t y],[T(i)+h,Y(i)+(h*k1)]);
        Y(i+1) = Y(i)+(h/2)*(k1+k2);
        fprintf('%.4f\t ||%.15f\t ||%.15f\t ||%.15f\t\n',double(T(i+1)),double(k1),double(k2),double(Y(i)));
    end
    F = subs(g,t,T);
    for j=1:n+1
        root = double(solve(F(j)));
        exacta(j) = root(2);
    end
    fprintf('\nLa solución aproximada es: %.15f',double(Y(i+1)));
    fprintf('\nLa solución exacta es: %.15f',double(exacta(n+1)));
    e = abs(exacta(n+1)-Y(i+1));
    fprintf('\nEl error aproximado es: %e\n',double(e));
end