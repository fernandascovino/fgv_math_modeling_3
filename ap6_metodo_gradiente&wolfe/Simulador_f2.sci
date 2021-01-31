function [f,g]=Simulador_f2(x)
    f = (1-x(1))^2 + 100*(x(2)-x(1)^2)^2
    g_1 = -2*(1-x(1))-400*(x(2)-(x(1).^2))*x(1)
    g_2 = 200*(x(2)-(x(1)^2))
    g = [g_1; g_2]
endfunction
