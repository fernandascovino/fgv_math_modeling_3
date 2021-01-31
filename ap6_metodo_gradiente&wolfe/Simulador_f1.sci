function [f,g]=Simulador_f1(x)
    n = size(x,1)
    f = [1:n]*(x.^2)
    g = 2*[1:n]'.*x
endfunction
