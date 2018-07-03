function [Raiz,Iter] = Newton_Raiz(funcao, Toler);
    """
    Calcula a raiz esperada utilizando o método de Newton.
    Retorna a raiz encontrada e a quantidade de itereções necessárias.
    """
    
    % Inicialmente o x0 é de 0.5
    x = 0.5;
    Fx = eval(funcao);
    DFx = eval(diff(funcao));
    Iter = 0;
   
    while (True)
        delta_x = -Fx / DFx;
        x = x + delta_x;
        Fx = eval(funcao);
        DFx = eval(diff(funcao));
        Iter = Iter + 1;
        if( abs(delta_x) < tolerancia && abs(Fx)<tolerancia) || abs(DFx) == 0
            break;
        end     
    end

    Raiz = x;
  
end
