% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCI�N ----------------------------------------------------
% Calcula la raiz de una funci�n en un rango [a, b]
% Para ejecutar el m�todo, debes ejecutar el fichero 'MetodoBisecci�n.m',
% esta es solo una implementaci�n.
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% f = Ecuaci�n o poliniomio a evaluar el cu�l viene suministrado del fichero 
%     principal 'M�todoDeBisecci�n.m'.
% a = Inicio del intervalo.
% b = Fin del intervalo.
% tolerancia = Valor del error permitido: ejemplo 0.0001.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% a = Raiz encontrada en el intervalo suministrado.
% -----------------------------------------------------------------------

function Biseccion(f, a, b)
f = inline(f);
tolerancia = input('Ingrese el error m�ximo permitido:  ');

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
        fprintf('\nLa ra�z es: %f\n\n', semilla);
        return
    end
    contador = contador + 1;
    fprintf('\nIteraci�n %d, intervalo [%f, %f]', contador, a, b);
end
fprintf('\n\nRa�z encontrada en: ');
disp(a)