% Autor: Juan Carlos Estevez Vargas
% Canal de Youtube: Apuntes de un Ingeniero
% Actualizado: 9/junio/2022

% ------- DESCRIPCI�N ----------------------------------------------------
% Calcula el dominio y rango cualquier tipo de funci�n (que se encuentre en 
% el men� de opciones). 
% ------------------------------------------------------------------------

% ------- ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA: -------------
% opc = Opci�n suministrada por el usuario.
% ------------------------------------------------------------------------

% ------- VARIABLES DE SALIDA: -------------------------------------------
% Dominio de la funci�n elegida por el usuario.
% -----------------------------------------------------------------------

clc
clear all;
opc = 0

while true
    disp ('\n\nCalculo del dominio y rango de funciones');
    disp ('\n1. Funci�n Lineal');
    disp ('2. Funcion Polin�mica');
    disp ('3. Funci�n Racional');
    disp ('4. Funci�n Exponencial');
    disp ('5. Funci�n Logar�tmica');
    disp ('6. Funci�n Radical');
    disp ('-1. Salir');
    opc = input('A continuaci�n seleccione el tipo de funci�n que desea evaluar o -1 para salir  '); 
    if opc == 1
        EcuacionLineal();
    elseif opc == 2
        EcuacionCuadratica();
    elseif opc == 3
        while true
            disp ('\n1. Funci�n Racional CASO 1');
            disp ('2. Funcion Racional CASO 2');
            disp ('3. Funci�n Racional CASO 3');
            disp ('4. Funci�n Racional CASO 4');
            disp ('-1. Regresar al men� principal');
            opc = input('A continuaci�n seleccione el tipo de funci�n que desea evaluar o -1 para regresar  ');
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
            disp ('\n1. Funci�n Exponencial CASO 1');
            disp ('2. Funcion Exponencial CASO 2');
            disp ('3. Funci�n Exponencial CASO 3');
            disp ('4. Funci�n Exponencial CASO 4');
            disp ('-1. Regresar al men� principal');
            opc = input('A continuaci�n seleccione el tipo de funci�n que desea evaluar o -1 para regresar ');
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
            disp ('\n1. Funci�n Logar�tmica CASO 1');
            disp ('2. Funcion Logar�tmica CASO 2');
            disp ('3. Funci�n Logar�tmica CASO 3');
            disp ('4. Funci�n Logar�tmica CASO 4');
            disp ('-1. Regresar al men� principal');
            opc = input('A continuaci�n seleccione el tipo de funci�n que desea evaluar o -1 para regresar ');
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