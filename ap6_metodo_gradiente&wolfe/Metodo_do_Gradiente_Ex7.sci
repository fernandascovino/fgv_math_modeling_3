function [x, f, g, k]= Metodo_do_Gradiente_Ex7(t,x0,m,Sim,e)
    [f g] = Sim(x0)
    x = x0
    k = 0
    while (norm(g,%inf) > e) & (k < m)
        d = -g
        x = x + t*d
        [f g] = Sim(x)
        k = k+1
        t = 1/k
    end
    
