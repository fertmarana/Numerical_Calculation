function [x,fx,v] = Simpson(a,b,n,funcao)
  
    format long # Para melhor a precisao
    
    tam_passo = (b-a) / n;
    x = a: ((b-a)/n) :b;

    funcao = inline(funcao);
    for i = 1:length(x)
        fx(i) = funcao(x(i));
    end

    v = fx(1) + fx(length(x));
    for i= 2:length(x)-1
        if mod(i,2) == 0
            v += 4 * fx(i); 
        else
            v += 2 * fx(i);   
        end 
    end

    v = tam_passo /3*v;
end