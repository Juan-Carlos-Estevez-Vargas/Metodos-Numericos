function ReglaFalsa(f, xa, xb)
f = inline(f);
T = input('Ingrese el valor de la tolerancia  ');
vc = 0; ite = 0.0000; error = 100;
fprintf('\t iter \t\txa \t\t vc \t\t xb \terror\n');

while error > T
    vc = (xa*f(xb)-xb*f(xa))/(f(xb)-f(xa));
    disp([ite,xa,vc,xb,error]);
    if f(xa)*f(vc)<0
        xb = vc;
    else 
        xa = vc;
    end
    error = abs(f(vc));
    ite = ite+1;
end
fprintf('La raíz se encontró en el punto: \n\t%fn',vc);