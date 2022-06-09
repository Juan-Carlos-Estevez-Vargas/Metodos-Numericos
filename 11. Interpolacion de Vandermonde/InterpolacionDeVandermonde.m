% Interpola un grupo de puntos por el m�todo de Vandermonde.

% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 8/junio/2022

% ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA:

% equis = Vector fila con los valores de X; ejemplo [-1 0 2 3].
% fx = Vector fila del mismo tama�o de equis con los valores de Y; ejemplo [3 7 5 9].

% VARIABLES DE SALIDA:

% Gr�fica de la funci�n Interpolada por el m�todo de Vandermonde.
% modelo = Polinomio interpolador de Vandermonde.

syms x;
format rat
disp('A continuaci�n, deber� ingresar unos vectores, para ellos, utilice la siguiente sintaxis [x0 x1 ... xn]')
equis = input('Ingrese el vector fila x: ');
fx = input('Ingrese el vector fila y: ');
n = length(equis);

if (n == length(fx))
    V = vander(equis);
    inversa = inv(V);
    solucion = inversa*fx';
    modelo = 0;
    for i=1:n
        modelo = modelo + solucion(i) * x^(n-i);
    end
    modelo
    ezplot(modelo)
    grid on
    hold on
    plot(equis, fx, 'r*')
else
    disp("La cantidad de valores de x debe ser la misma que y");
end



