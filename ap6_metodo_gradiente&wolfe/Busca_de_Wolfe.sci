function [t]= Busca_de_Wolfe(x,d,t0,Sim,a,m1,m2,e)
    [f,g]=Sim(x);
    q0 = f;
    qp0 = d'*g; // t=0: q(0), q'(0)
    while norm(g,2) > e
        d = -norm(g,2); //direção de descida
        tL =0; tR =0; //intervalo de busca de t
        t = 1; B = 1; // B = indicadora
        while B == 1
            [f,g] = Sim(x+t*d);
            qt = f, qpt =d'*g;
            if qt > (q0 + m1*qp0*t) //t é grande demais
                tR = t
            else
                if (qt <= q0 + m1*qp0*t) & (qt < m2*qp0*t) // t é pequeno demais
                    tL = t
                else
                    B = 0 // t é satisfatório
                end
            end
            if B == 1
                if tR == 0
                    t = a*t
                else
                    t = (tL + tR)/2
                end
            end
         end
         x = x + t*d
    end
