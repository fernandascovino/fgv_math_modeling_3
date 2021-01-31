////////////////////////////////////////////////
///Variáveis de entrada: 
/// f = função a ser aproximada
/// x = conjunto dos valores de entrada
/// y = conjunto dos resultados observados 
/// m = grau do polinômio da aproximação
////////////////////////////////////////////////
///Variáveis de saída: 
/// v = vetor de coeficientes do polinômio de melhor aproximação
/// E = norma euclidiana do erro
/// b = conjunto das aproximações
/// A = matriz com as potências do polinômio
////////////////////////////////////////////////

function [v,E,b,A]=ajuste_polinomial2(x,y,m)
    A = [] // matriz com as potências do polinômio
    n = size(x,1)
    for i=1:n
        e = x(i)
        for j=0:m
            A(i,j+1) = e^j // cada linha é calculada num ponto
        end
    end
    // para acharmos v, devemos resolver o sistema A'Av = A'b
    M = A'*A, k = A'*y
    v = Gaussian_Elimination_4(M,k)
    b = A*v
    E = norm(y - b, 2)
endfunction
