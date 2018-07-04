function [resposta] = vai(funcao, tolerancia);
   
    
    format long 

    x = 0.5;
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