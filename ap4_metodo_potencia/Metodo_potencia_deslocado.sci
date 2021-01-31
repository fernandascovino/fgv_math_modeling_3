function [lambda1,v1,lambda2,v2] = Metodo_potencia_deslocado(A,x0,epsilon)
    [lambda1, v1] = Metodo_potencia(A,x0,epsilon) //autovalor dominante
    A = A - lambda1*eye(size(A,1), size(A,2)) //deslocamento da matriz
    [lambda2,v2] = Metodo_potencia(A,x0,epsilon)
    //lambda é autovalor de (A - lambda1*I), então (lambda + lambda1) é autovalor de A
    lambda2 = lambda2 + lambda1
endfunction
    
