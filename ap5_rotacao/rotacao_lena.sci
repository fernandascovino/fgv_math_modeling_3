function [B]=rotacao_lena(A)
    A = A'; //rotaciona 90º
    B=flipdim(A,2); //inverte verticalmente
    visualization(B)
endfunction
