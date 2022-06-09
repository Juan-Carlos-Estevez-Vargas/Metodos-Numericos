% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCIÓN ----------------------------------------------------
% Calcula el dominio y rango cualquier tipo de función (que se encuentre en 
% el menú de opciones). 
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% opc = Opción suministrada por el usuario.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% Dominio de la función elegida por el usuario.
% -----------------------------------------------------------------------

clc
clear all;
opc = 0

while true
    disp ('\n\nCalculo del dominio y rango de funciones');
    disp ('\n1. Función Lineal');
    disp ('2. Funcion Polinómica');
    disp ('3. Función Racional');
    disp ('4. Función Exponencial');
    disp ('5. Función Logarítmica');
    disp ('6. Función Radical');
    disp ('-1. Salir');
    opc = input('A continuación seleccione el tipo de función que desea evaluar o -1 para salir  '); 
    if opc == 1
        EcuacionLineal();
    elseif opc == 2
        EcuacionCuadratica();
    elseif opc == 3
        while true
            disp ('\n1. Función Racional CASO 1');
            disp ('2. Funcion Racional CASO 2');
            disp ('3. Función Racional CASO 3');
            disp ('4. Función Racional CASO 4');
            disp ('-1. Regresar al menú principal');
            opc = input('A continuación seleccione el tipo de función que desea evaluar o -1 para regresar  ');
            if opc == 1
                EcuacionRacionalCaso1();
            elseif opc == 2
                EcuacionRacionalCaso2();
            elseif opc == 3
                EcuacionRacionalCaso3();
            elseif opc == 4
                EcuacionRacionalCaso4();
            elseif opc == -1
                break;  
            end
        end
    elseif opc == 4
         while true
            disp ('\n1. Función Exponencial CASO 1');
            disp ('2. Funcion Exponencial CASO 2');
            disp ('3. Función Exponencial CASO 3');
            disp ('4. Función Exponencial CASO 4');
            disp ('-1. Regresar al menú principal');
            opc = input('A continuación seleccione el tipo de función que desea evaluar o -1 para regresar ');
            if opc == 1
                EcuacionExponencialCaso1();
            elseif opc == 2
                EcuacionExponencialCaso2();
            elseif opc == 3
                EcuacionExponencialCaso3();
            elseif opc == 4
                EcuacionExponencialCaso4();
            elseif opc == -1
                    break   
            end
         end  
    elseif opc == 5
         while true
            disp ('\n1. Función Logarítmica CASO 1');
            disp ('2. Funcion Logarítmica CASO 2');
            disp ('3. Función Logarítmica CASO 3');
            disp ('4. Función Logarítmica CASO 4');
            disp ('-1. Regresar al menú principal');
            opc = input('A continuación seleccione el tipo de función que desea evaluar o -1 para regresar ');
            if opc == 1
                EcuacionLogaritmicaCaso1();
            elseif opc == 2
                EcuacionLogaritmicaCaso2();
            elseif opc == 3
                EcuacionLogaritmicaCaso3();
            elseif opc == 4
                EcuacionLogaritmicaCaso4();
            elseif opc == -1
                    break   
            end
         end 
    elseif opc == 6
        FuncionRadicalCaso1();
    elseif opc == -1
        break
    end
end