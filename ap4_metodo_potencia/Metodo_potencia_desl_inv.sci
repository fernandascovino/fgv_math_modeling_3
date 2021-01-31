function [lambda,v] = Metodo_potencia_desl_inv(A,x0,alfa,epsilon)
    A = inv(A -alfa*eye(size(A,1), size(A,2))) //deslocamento e inversão da matriz
    [lambda,v] = Metodo_potencia(A,x0,epsilon)
    //lambda é autovalor de inv(A - alfa*I), então (alfa + 1/lambda) é autovalor de A
    lambda = alfa + 1/lambda 
endfunction
