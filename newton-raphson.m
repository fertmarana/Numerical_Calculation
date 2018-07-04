function [resposta] =newton(funcao, tolerancia);

    
    format long # Para melhor a precisao

#    x = 0.5; % Inicialmente o x0 eh de 0.5
#    Fx = eval(funcao);
#    DFx = eval(diff(funcao));
   
#    while (True)
#        delta_x = -Fx / DFx;
#        x = x + delta_x;
#        Fx = eval(funcao);
#        DFx = eval(diff(funcao));
#        if (abs(delta_x) < tolerancia && abs(Fx)<tolerancia) || abs(DFx) == 0
#            break;
#        end     
#    end

#    resposta = x;
    
    
    
tolerancia = 10 ^ (-10);
k = 1;
xatual = 0.5;
xprox = 0;
nite = 0;

while (k >= tolerancia)
xprox = xatual - (Simpson(0, xatual,1,'exp(-(x^2)/2)/((2*pi)^(1/2))') - 0.45) / (exp(-(xatual^2)/2)/((2*pi)^(1/2)));
k = abs(xprox - xatual);
xatual = xprox;
nite = nite + 1;
end
ynewton = xatual;
disp("NUMERO DE ITERACOES");
disp(nite);
disp("RAIZ DA FUNCAO");
disp(xatual);
end

  

