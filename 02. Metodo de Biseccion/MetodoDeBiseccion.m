% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCIÓN ----------------------------------------------------
% Calcula una tabla de valores de ini a fin con un intervalo de h para una
% determinada ecuación para posteriormente calcular las semillas de dicha
% función y llamar la función 'Biseccion' la cuál se encarga de calcular la
% raiz.
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% ecuacion = Ecuación o poliniomio a evaluar; ejemplo 3*x^2-2*x.
% ini = Valor inicial a calcular la tabla de valores de la función; ejemplo -10.
% fin = Valor final a calcular la tabla de valores de la función; ejemplo 10.
% h = Incremento o paso de la tabla de valores; ejemplo 1.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% Gráfica de la función ingresada
% Tabla de valores generada.
% Semillas de la función.
% Llamado al método de Bisección el cual calcula las raices de la función.
% -----------------------------------------------------------------------

clc
y = [];
x = [];
w = [];
disp ('Introduzca la función que desea calcular:')
ecuacion = input('y(x) = ','s');

%Introducimos los límites de la gráfica
while (1),
    ini = input('Introduzca el valor inicial a calcular la tabla de valores:  ');
    fin = input('Introduzca el valor final a calcular la tabla de valores:  ');
    %Comprobamos que ini>=fin
    if ini>fin
       disp('El valor iniclal no puede ser mayor que el valor final.')
    elseif ini<=fin,
       break;
    end;
end;
while (1),
   h=input('Introduzca el incremento:  ');
   if h>0 && (abs(ini)+abs(fin))>h,
      break;
   end;
end;

%Calculamos la y para cada valor de x
temp = inline(ecuacion);
for x=ini:h:fin,
    y = [y temp(x)];
end;
x=ini:h:fin;

plot(x,y);
hold on;
grid on;

%Introducimos los datos en una variable llamada funcion
funcion{length(x)+1,2}=[];
funcion{1,1}='x';
funcion{1,2}='y(x)';
for i=1:length(x),
    funcion{i+1,1}=x(i);
    funcion{i+1,2}=y(i);
end;

%Mostramos la tabla de valores
disp(['y(x)=' ecuacion])
disp(' ')
disp(funcion)

disp('Semillas de la función')

for i=1: length(x),
    if (y(i) < length(x))
        if (y(i) < 0 & y(i+1) >= 0) | (y(i) >= 0 & y(i+1) < 0)
            disp('Semilla encontrada')
            disp ((x(i) + x(i+1)) / 2)  
            Biseccion(ecuacion, x(i), x(i+1));
        end
    end
end;