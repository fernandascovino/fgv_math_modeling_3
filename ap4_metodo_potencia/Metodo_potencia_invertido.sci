function [lambda,v] = Metodo_potencia_inverso(A,x0,epsilon)
    A = inv(A) //usamos a matriz inversa
    [lambda,v] = Metodo_potencia(A,x0,epsilon)
    //lambda é autovalor de inv(A), então 1/lambda é autovalor de A
    lambda = 1/lambda 
endfunction
