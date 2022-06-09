% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCIÓN ----------------------------------------------------
% Calcula la raiz de una función en un rango [a, b]
% Para ejecutar el método, debes ejecutar el fichero 'MetodoBisección.m',
% esta es solo una implementación.
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% f = Ecuación o poliniomio a evaluar el cuál viene suministrado del fichero 
%     principal 'MétodoDeBisección.m'.
% a = Inicio del intervalo.
% b = Fin del intervalo.
% tolerancia = Valor del error permitido: ejemplo 0.0001.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% a = Raiz encontrada en el intervalo suministrado.
% -----------------------------------------------------------------------

function Biseccion(f, a, b)
f = inline(f);
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
fprintf('\n\nRaíz encontrada en: ');
disp(a)