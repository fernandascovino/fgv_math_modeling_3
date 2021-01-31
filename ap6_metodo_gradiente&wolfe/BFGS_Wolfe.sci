function [x, f, g, k]= BFGS_Wolfe(t,x0,m,Sim,e)
    [f g] = Sim(x0)
    xk = x0, k = 0, m1 = 0.1, m2 = 0.9
    Wk = eye(2,2)
    while (norm(g,%inf) > e) & (k < m)
        d = -Wk*g
        xk = x; [fk gk] = Sim(x)
        x = xk + t*d; [f g] = Sim(x)
        k = k+1
        t = Busca_de_Wolfe(x,d,t,Sim,10,m1,m2,e)
        sk = x - xk; yk = g - gk
        Wk = Wk - [(sk*yk'*Wk + Wk*yk*sk')/yk'*sk] + [1 + (yk'*Wk*yk)/yk'*sk]*(sk*sk')/yk'*sk
    end
endfunction
