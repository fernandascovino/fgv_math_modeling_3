function [x, f, g, k]= Metodo_do_Gradiente_Wolfe(t,x0,m,Sim,e)
    [f g] = Sim(x0)
    x = x0, k = 0, m1 = 0.1, m2 = 0.9
    while (norm(g,%inf) > e) & (k < m)
        d = -g
        x = x + t*d
        [f g] = Sim(x)
        k = k+1
        t = Busca_de_Wolfe(x,d,t,Sim,10,m1,m2,e)
    end
endfunction
