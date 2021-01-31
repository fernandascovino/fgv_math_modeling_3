function [z]=aplica_sim(x,y,sim)
    m = length(x);
    n = length(y);
    z = zeros(m,n)
    for i=1:m
        for j=1:n
            v=[x(i);y(j)]
            z(i,j)=sim(v)
        end
    end
