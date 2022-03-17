clc
clear all;
opc = 0

while true
    disp ('Calculo del dominio y rango de funciones');
    disp ('1. Función Lineal');
    disp ('2. Funcion Polinómica');
    disp ('3. Función Racional');
    disp ('4. Función Exponencial');
    disp ('5. Función Logarítmica');
    disp ('-1. Salir');
    opc = input('A continuación seleccione el tipo de función que desea evaluar o -1 para salir  ');
    
    if opc == 1
        clc
        clear all;
        disp ('Calculo del dominio y rango de funciones');
        disp ('Funcion lineal');
        disp ('Sea la funcion ax + b :');
        a = input ('Ingrese el valor de a   ');
        b = input ('Ingrese el valor de b   ');
        x = -500:0.01:500;
        y= a*x + b;
        plot (x,y);
        disp ('El rango es: (-?, ?)');
        disp ('El dominio es: (-?, ?)');
    elseif opc == 2
        clear all;
        clc;
        disp ('Calculo del dominio y rango de funciones');
        disp ('Funcion cuadratica');
        disp ('Sea la funcion ax^2 + bx + c :');
        global A B C X1 X2 X3 X4 D %#ok<GVMIS> 
        disp('Ecuación de segundo grado A*X^2+B*X+C=0');
        A=input('Ingrese el valor de A: ');
        B=input('Ingrese el valor de B: ');
        C=input('Ingrese el valor de C: ');
        D=B^2-4*A*C;
        if (D>=0)
            X1=(-B+D^0.5)/(2*A);
            X2=(-B-D^0.5)/(2*A);
            fprintf('La primera solución de la ecuación cuadratica es %2.2f\n',X1);
            fprintf('La segunda solución de la ecuación cuadratica es %2.2f\n',X2);
        elseif D==0
            X1=(-B)/(2*A);
            X2=(-B)/(2*A);
            fprintf('La primera solución de la ecuación cuadratica es %2.2f\n',X1);
            fprintf('La segunda solución de la ecuación cuadratica es %2.2f\n',X2);
        else
            X1=(-B)/(2*A);
            X2=(-B)/(2*A);
            X3=(abs(D))^0.5/(2*A);
            X4=-(abs(D))^0.5/(2*A);
            fprintf('La primera solución de la ecuación cuadratica es %2.2f + %2.2f i\n',X1,X3);
            fprintf('La segunda solución de la ecuación cuadratica es %2.2f + %2.2f i\n',X2,X4);
        end
        x = -500:0.01:500;
        y= A*x.^2 + B*x + C;
        plot (x,y);
        disp ('El rango es: (-?, ?)');
        disp ('El dominio es: (-?, ?)');
    elseif opc == 3
        while true
            disp ('1. Función Racional CASO 1');
            disp ('2. Funcion Racional CASO 2');
            disp ('3. Función Racional CASO 3');
            disp ('4. Función Racional CASO 4');
            opc = input('A continuación seleccione el tipo de función que desea evaluar  ');
            if opc == 1
                clc
                clear all;
                disp ('Calculo del dominio y rango de funciones');
                disp ('Funcion Racional Caso 1');
                disp ('Sea la funcion a / bx + c :');
                A=input('Ingrese el valor de A: ');
                B=input('Ingrese el valor de B: ');
                C=input('Ingrese el valor de C: ');
                x = linspace (-10, 10, 100);
                y= A./ (B*x + C);
                plot (x,y);
                Z = -C./B;
                disp ("El dominio es: (-?, " + Z + ") U ("+ Z + ", ?)");
            elseif opc == 2
                clc
                clear all;
                disp ('Calculo del dominio y rango de funciones');
                disp ('Funcion Racional Caso 2');
                disp ('Sea la funcion (ax + b) / (cx + d) :');
                A=input('Ingrese el valor de A: ');
                B=input('Ingrese el valor de B: ');
                C=input('Ingrese el valor de C: ');
                D=input('Ingrese el valor de D: ');
                x = linspace (-10, 10, 100);
                y= (A*x + B)./(C*x + D);
                plot (x,y);
                W = -D./C;
                disp ("El dominio es: (-?, " + W + ") U ("+ W + ", ?)");
            elseif opc == 3
                clc
                clear all;
                disp ('Calculo del dominio y rango de funciones');
                disp ('Funcion Racional Caso 3');
                disp ('Sea la funcion (ax^2 + bx + c) / (dx + e) :');
                A=input('Ingrese el valor de A: ');
                B=input('Ingrese el valor de B: ');
                C=input('Ingrese el valor de C: ');
                D=input('Ingrese el valor de D: ');
                E=input('Ingrese el valor de E: ');
                x = linspace (-10, 10, 100);
                y= (A*x.^2 + B*x + C )./(D*x + E);
                plot (x,y);
                W = -E./D;
                disp ("El dominio es: (-?, " + W + ") U ("+ W + ", ?)")
            elseif opc == 4
                clc
                clear all;
                disp ('Calculo del dominio y rango de funciones');
                disp ('Funcion Racional Caso 4');
                disp ('Sea la funcion (ax + b) / (cx^2 + dx + e) :');
                global A B C E F X1 X2 X3 X4 D 
                A=input('Ingrese el valor de A: ');
                B=input('Ingrese el valor de B: ');
                C=input('Ingrese el valor de C: ');
                D=input('Ingrese el valor de D: ');
                E=input('Ingrese el valor de E: ');
                F=D^2-4*C*E;
                if (D>=0)
                    X1=(-D+F^0.5)/(2*C);
                    X2=(-D-F^0.5)/(2*C);
                    fprintf('La primera solución de la ecuación cuadratica es %2.2f\n',X1);
                    fprintf('La segunda solución de la ecuación cuadratica es %2.2f\n',X2);
                elseif D==0
                    X1=(-D)/(2*C);
                    X2=(-D)/(2*C);
                    fprintf('La primera solución de la ecuación cuadratica es %2.2f\n',X1);
                    fprintf('La segunda solución de la ecuación cuadratica es %2.2f\n',X2);
                else
                    X1=(-D)/(2*C);
                    X2=(-D)/(2*C);
                    X3=(abs(F))^0.5/(2*C);
                    X4=-(abs(F))^0.5/(2*C);
                    fprintf('La primera solución de la ecuación cuadratica es %2.2f + %2.2f i\n',X1,X3);
                    fprintf('La segunda solución de la ecuación cuadratica es %2.2f + %2.2f i\n',X2,X4);
                end
                x = linspace (-20, 20, 100);
                y = (A*x + B)./(C*x.^2 + D*x + E);
                plot (x,y);
                disp ("El dominio es: (-?, " + X1 + ") U (" + X1 + ", " + X2 + ") U ("+ X2 + ", ?)");
            elseif opc == -1
                    break   
            end
        end
    elseif opc == 4
         while true
            disp ('1. Función Exponencial CASO 1');
            disp ('2. Funcion Exponencial CASO 2');
            disp ('3. Función Exponencial CASO 3');
            disp ('4. Función Exponencial CASO 4');
            opc = input('A continuación seleccione el tipo de función que desea evaluar  ');
            if opc == 1
                clc
                clear all;
                disp ('Calculo del dominio y rango de funciones');
                disp ('Funcion Exponecial caso 1');
                disp ('Sea la funcion a^(bx + c) :');
                A=input('Ingrese el valor de A: ');
                B=input('Ingrese el valor de B: ');
                C=input('Ingrese el valor de C: ');
                x = linspace (-10, 10, 100);
                y = A.^(B*x + C);
                plot (x,y);
                disp ("El dominio es: (-?, ?)");
            elseif opc == 2
                clc
                clear all;
                disp ('Calculo del dominio y rango de funciones');
                disp ('Funcion Exponecial caso 1');
                disp ('Sea la funcion a^(bx + c) / dx + e :');
                A=input('Ingrese el valor de A: ');
                B=input('Ingrese el valor de B: ');
                C=input('Ingrese el valor de C: ');
                D=input('Ingrese el valor de D: ');
                E=input('Ingrese el valor de E: ');
                x = linspace (-10, 10, 100);
                y = A.^((B*x + C)./(D*x + E));
                W = -E./D;
                plot (x,y);
                disp ("El dominio es: (-?, " + W + ") U ("+ W + ", ?)");
            elseif opc == 3
                clc
                clear all;
                disp ('Calculo del dominio y rango de funciones');
                disp ('Funcion Racional Caso 3');
                disp ('Sea la funcion a^(bx^2 + cx + d) / (ex + f) :');
                A=input('Ingrese el valor de A: ');
                B=input('Ingrese el valor de B: ');
                C=input('Ingrese el valor de C: ');
                D=input('Ingrese el valor de D: ');
                E=input('Ingrese el valor de E: ');
                F=input('Ingrese el valor de F: ');
                x = linspace (-10, 10, 100);
                y= A.^(B*x.^2 + C*x + D )./(E*x + F);
                plot (x,y);
                W = -E./D;
                disp ("El dominio es: (-?, " + W + ") U ("+ W + ", ?)")
            elseif opc == 4
                clc
                clear all;
                disp ('Calculo del dominio y rango de funciones');
                disp ('Funcion Exponencial Caso 4');
                disp ('Sea la funcion a^((bx + c) / (dx^2 + ex + f)) :');
                global A B C E F G X1 X2 X3 X4 D 
                A=input('Ingrese el valor de A: ');
                B=input('Ingrese el valor de B: ');
                C=input('Ingrese el valor de C: ');
                D=input('Ingrese el valor de D: ');
                E=input('Ingrese el valor de E: ');
                F=input('Ingrese el valor de F: ');
                G=E^2-4*D*F;
                if (E>=0)
                    X1=(-E+G^0.5)/(2*D);
                    X2=(-E-G^0.5)/(2*D);
                    fprintf('La primera solución de la ecuación cuadratica es %2.2f\n',X1);
                    fprintf('La segunda solución de la ecuación cuadratica es %2.2f\n',X2);
                elseif E==0
                    X1=(-E)/(2*D);
                    X2=(-E)/(2*D);
                    fprintf('La primera solución de la ecuación cuadratica es %2.2f\n',X1);
                    fprintf('La segunda solución de la ecuación cuadratica es %2.2f\n',X2);
                else
                    X1=(-E)/(2*D);
                    X2=(-E)/(2*D);
                    X3=(abs(G))^0.5/(2*D);
                    X4=-(abs(G))^0.5/(2*D);
                    fprintf('La primera solución de la ecuación cuadratica es %2.2f + %2.2f i\n',X1,X3);
                    fprintf('La segunda solución de la ecuación cuadratica es %2.2f + %2.2f i\n',X2,X4);
                end
                x = linspace (-20, 20, 100);
                y = A.^((B*x + C)./(D*x.^2 + E*x + F));
                plot (x,y);
                disp ("El dominio es: ["+ X1 + ", ?)");
                disp ("El dominio es: (-?, " + X2 + ") U (" + X2 + ", " + X1 + ") U ("+ X1 + ", ?)");
            elseif opc == -1
                    break   
            end
         end  
    elseif opc == 5
         while true
            disp ('1. Función Logarítmica CASO 1');
            disp ('2. Funcion Logarítmica CASO 2');
            disp ('3. Función Logarítmica CASO 3');
            disp ('4. Función Logarítmica CASO 4');
            opc = input('A continuación seleccione el tipo de función que desea evaluar  ');
            if opc == 1
                clc
                clear all;
                disp ('Calculo del dominio y rango de funciones');
                disp ('Funcion Logarítmica Caso 1');
                disp ('Sea la funcion loga(bx + c) :');
                a = input ('Ingrese el valor de a   ');
                b = input ('Ingrese el valor de b   ');
                c = input ('Ingrese el valor de c   ');
                x = linspace (-20, 20, 100);
                y = log10(b*x + c)./log10(a);
                z = -c ./ b;
                plot (x,y);
                disp ("El dominio es: (" + z + ", ?)");
            elseif opc == 2
                clc
                clear all;
                disp ('Calculo del dominio y rango de funciones');
                disp ('Funcion Logarítmica caso 1');
                disp ('Sea la funcion loga((bx + c) / dx + e) :');
                A=input('Ingrese el valor de A: ');
                B=input('Ingrese el valor de B: ');
                C=input('Ingrese el valor de C: ');
                D=input('Ingrese el valor de D: ');
                E=input('Ingrese el valor de E: ');
                x = linspace (-10, 10, 100);
                y = log10((B*x + C)./(D*x + E))./log10(A);
                W = -E./D;
                plot (x,y);
                disp ("El dominio es: ("+ W + ", ?)");
            elseif opc == 3
                clc
                clear all;
                disp ('Calculo del dominio y rango de funciones');
                disp ('Funcion Logarítmica Caso 3');
                disp ('Sea la funcion loga((bx^2 + cx + d) / (ex + f)) :');
                A=input('Ingrese el valor de A: ');
                B=input('Ingrese el valor de B: ');
                C=input('Ingrese el valor de C: ');
                D=input('Ingrese el valor de D: ');
                E=input('Ingrese el valor de E: ');
                F=input('Ingrese el valor de F: ');
                x = linspace (-10, 10, 100);
                y= log10((B*x.^2 + C*x + D )./(E*x + F))./log10(A);
                plot (x,y);
                W = -E./D;
                disp ("El dominio es: ("+ W + ", ?)")
            elseif opc == 4
                clc
                clear all;
                disp ('Calculo del dominio y rango de funciones');
                disp ('Funcion Logarítmica Caso 4');
                disp ('Sea la funcion loga((bx + c) / (dx^2 + ex + f)) :');
                global A B C E F G X1 X2 X3 X4 D 
                A=input('Ingrese el valor de A: ');
                B=input('Ingrese el valor de B: ');
                C=input('Ingrese el valor de C: ');
                D=input('Ingrese el valor de D: ');
                E=input('Ingrese el valor de E: ');
                F=input('Ingrese el valor de F: ');
                G=E^2-4*D*F;
                if (E>=0)
                    X1=(-E+G^0.5)/(2*D);
                    X2=(-E-G^0.5)/(2*D);
                    fprintf('La primera solución de la ecuación cuadratica es %2.2f\n',X1);
                    fprintf('La segunda solución de la ecuación cuadratica es %2.2f\n',X2);
                elseif E==0
                    X1=(-E)/(2*D);
                    X2=(-E)/(2*D);
                    fprintf('La primera solución de la ecuación cuadratica es %2.2f\n',X1);
                    fprintf('La segunda solución de la ecuación cuadratica es %2.2f\n',X2);
                else
                    X1=(-E)/(2*D);
                    X2=(-E)/(2*D);
                    X3=(abs(G))^0.5/(2*D);
                    X4=-(abs(G))^0.5/(2*D);
                    fprintf('La primera solución de la ecuación cuadratica es %2.2f + %2.2f i\n',X1,X3);
                    fprintf('La segunda solución de la ecuación cuadratica es %2.2f + %2.2f i\n',X2,X4);
                end
                x = linspace (-20, 20, 100);
                y = log10((B*x + C)./(D*x.^2 + E*x + F))./log10(A);
                plot (x,y);
                disp ("El dominio es: (-?, " + X2 + ") U ("+ X1 + ", ?)");
            elseif opc == -1
                    break   
            end
         end 
    elseif opc == -1
        break
    end
end