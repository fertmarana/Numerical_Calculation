function [resposta] = met_newton(funcao, tolerancia);
    """
    Calcula uma aproximacao para a raiz de uma funcao
      utilizando o metodo de Newton.
    """
    
    format long # Para melhor a precisao

    x = 0.5; % Inicialmente o x0 eh de 0.5
    Fx = eval(funcao);
    DFx = eval(diff(funcao));
   
    while (True)
        delta_x = -Fx / DFx;
        x = x + delta_x;
        Fx = eval(funcao);
        DFx = eval(diff(funcao));
        if (abs(delta_x) < tolerancia && abs(Fx)<tolerancia) || abs(DFx) == 0
            break;
        end     
    end

    resposta = x;
  
end
