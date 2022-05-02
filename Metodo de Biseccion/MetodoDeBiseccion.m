%Calcula una tabla de valores de ini a fin con un intervalo de h para una determinada ecuacion
clc
y = [];
x = [];
w = [];
disp ('Introduzca la función que desea calcular:')
ecuacion = input('y(x) = ','s');

%Introducimos los límites de la gráfica
while (1),
    ini = input('Introduzca el valor inicial:  ');
    fin = input('Introduzca el valor final:  ');
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
if (y(1) < 0 & y(2) >= 0) | (y(1) >= 0 & y(2) < 0 )
    disp (-19 / 2)  
    Biseccion(ecuacion, -10, -9);
end
if (y(2) < 0 & y(3) >= 0) | (y(2) >= 0 & y(3) < 0 )
    disp (-17 / 2)
    Biseccion(ecuacion, -9, -8);
end
if (y(3) < 0 & y(4) >= 0) | (y(3) >= 0 & y(4) < 0 )
    disp (-15 / 2)
    Biseccion(ecuacion, -8, -7);
end
if (y(4) < 0 & y(5) >= 0) | (y(4) >= 0 & y(5) < 0 )
    disp (-13 / 2)
    Biseccion(ecuacion, -7, -6);
end
if (y(5) < 0 & y(6) >= 0) | (y(5) >= 0 & y(6) < 0 )
    disp (-11 / 2)
    Biseccion(ecuacion, -6, -5);
end
if (y(6) < 0 & y(7) >= 0) | (y(6) >= 0 & y(7) < 0 )
    disp (-9 / 2)
    Biseccion(ecuacion, -5, -4);
end
if (y(7) < 0 & y(8) >= 0) | (y(7) >= 0 & y(8) < 0 )
    disp (-7 / 2)
    Biseccion(ecuacion, -4, -3);
end
if (y(8) < 0 & y(9) >= 0) | (y(8) >= 0 & y(9) < 0 )
    disp (-5 / 2)
    Biseccion(ecuacion, -3, -2);
end
if (y(9) < 0 & y(10) >= 0) | (y(9) >= 0 & y(10) < 0 )
    disp (-3 / 2)
    Biseccion(ecuacion, -2, -1);
end
if (y(10) < 0 & y(11) >= 0) | (y(10) >= 0 & y(11) < 0 )
    disp (-1 / 2)
    Biseccion(ecuacion, -1, 0);
end
if (y(11) < 0 & y(12) >= 0) | (y(11) >= 0 & y(12) < 0 )
    disp (1 / 2)
    Biseccion(ecuacion, 0, 1);
end
if (y(12) < 0 & y(13) >= 0) | (y(12) >= 0 & y(13) < 0 )
    disp (3 / 2)
    Biseccion(ecuacion, 1, 2);
end
if (y(13) < 0 & y(14) >= 0) | (y(13) >= 0 & y(14) < 0 )
    disp (5 / 2)
    Biseccion(ecuacion, 2, 3);
end
if (y(14) < 0 & y(15) >= 0) | (y(14) >= 0 & y(15) < 0 )
    disp (7 / 2)
    Biseccion(ecuacion, 3, 4);
end
if (y(15) < 0 & y(16) >= 0) | (y(15) >= 0 & y(16) < 0 )
    disp (9 / 2)
    Biseccion(ecuacion, 4, 5);
end
if (y(16) < 0 & y(17) >= 0) | (y(16) >= 0 & y(17) < 0 )
    disp (11 / 2)
    Biseccion(ecuacion, 5, 6);
end
if (y(17) < 0 & y(18) >= 0) | (y(17) >= 0 & y(18) < 0 )
    disp (13 / 2)
    Biseccion(ecuacion, 6, 7);
end
if (y(18) < 0 & y(19) >= 0) | (y(18) >= 0 & y(19) < 0 )
    disp (15 / 2)
    Biseccion(ecuacion, 7, 8);
end
if (y(19) < 0 & y(20) >= 0) | (y(19) >= 0 & y(20) < 0 )
    disp (17 / 2)
    Biseccion(ecuacion, 8, 9);
end
if (y(20) < 0 & y(21) >= 0) | (y(20) >= 0 & y(21) < 0 )
    disp (19 / 2)
    Biseccion(ecuacion, 9, 10);
end

clear;