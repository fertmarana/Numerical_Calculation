function [qtdd_interacao, raiz] =met_newton(precisao);
   # Esta funcao e exclusiva para 'exp(-(x^2)/2)/((2*pi)^(1/2))'
    
    format long # Para melhor a precisao
    # No nosso caso a tolerancia sera 10 ^ (-10);
 
    i = 1;
    raiz = 0.5;
    x = 0;
    qtdd_interacao = 0;
    while (i >= precisao)
    x = raiz - (Simpson(0, raiz,1,'exp(-(x^2)/2)/((2*pi)^(1/2))') - 0.45) / (exp(-(raiz.^2)/2)/(sqrt(2*pi)));
    i = abs(x - raiz);
    raiz = x;
    qtdd_interacao = qtdd_interacao + 1;
    end
end