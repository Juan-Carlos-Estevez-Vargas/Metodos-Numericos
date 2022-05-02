function Biseccion(f, a, b)

%f = input('Ingrese la función (en comilla sencilla):  ');
f = inline(f);

%a = input('Ingrese el límite inferior del intervalo:  ');
%b = input('Ingrese el límite superior del intervalo:  ');
tolerancia = input('Ingrese el error máximo permitido:  ');

if (f(a)*f(b) > 0)
    error('No se cumple el Teorema del valor medio');
end

contador = 0;

while (abs(b - a) > tolerancia)
    semilla = (a + b)/2;
    if (f(a)*f(semilla) < 0)
        b = semilla;
    end
    if (f(semilla)*f(b) < 0)
        a = semilla;
    end
    if (abs(f(semilla)) < eps)
        fprintf('\nLa raíz es: %f\n\n', semilla);
        return
    end
    contador = contador + 1;
    fprintf('\nIteración %d, intervalo [%f, %f]', contador, a, b);
end
fprintf('\n\n');