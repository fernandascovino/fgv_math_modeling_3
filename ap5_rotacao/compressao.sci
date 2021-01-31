function [B]=compressao(A,p);
    [U,S,V]=svd(A)
    v = find(S>0); // vetor que contém os valores não nulos de S
    r = size(v,2); // valores singulares positivos (não nulos)
    s = max(1:p*r), V = V';
    B=U(:,1:s)*S(1:s,1:s)*V(1:s,:);
    visualization(B)
endfunction    
