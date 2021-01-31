function [lambda,v] = Metodo_potencia(A,x0,epsilon)
    x = x0
    y = A*x
    [m n] = max(abs(y))
    xk = y/y(n)
    ek = xk - x
    while xk<>x | norm(ek) >= epsilon
        x = xk
        y = A*x
        [m n] = max(abs(y))
        xk = y/y(n)
        ek = xk - x
    end
    v = xk
    lambda = ((A*x)'*x)/(x'*x)
endfunction
    
