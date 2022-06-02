% Interpolación Vandermonde
syms x;
format rat
disp('A continuación, deberá ingresar unos vectores, para ellos, utilice la siguiente sintaxis [x0, x1, ... , xn]')
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



