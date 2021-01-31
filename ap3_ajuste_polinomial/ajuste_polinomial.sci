////////////////////////////////////////////////
///Variáveis de entrada: 
/// f = função a ser aproximada
/// e = limite inferior do intervalo
/// d = limite superior do intervalo
/// m = grau do polinômio da aproximação
////////////////////////////////////////////////
///Variáveis de saída: 
/// v = vetor de coeficientes do polinômio de melhor aproximação
/// E = norma euclidiana do erro
/// x = vetor que contém os pontos escolhidos
/// y = vetor que contém as aproximações dos pontos
////////////////////////////////////////////////

function [v,E,x,y,A]=ajuste_polinomial(f,e,d,m)
    n = 3*m // número de pontos escolhidos
    r = (d - e)/n // distância entre os pontos
    b = [] // vetor com os valores da função nos pontos escolhidos
    A = [] // matriz com as potências do polinômio
    for i=1:n+1
        b(i) = f(e)
        for j=0:m
            A(i,j+1) = e^j // cada linha é calculada num ponto
        end
        e = e+r
    end
    x = A(:,2) //vetor com os pontos escolhidos
    // para acharmos v, devemos resolver o sistema A'Av = A'b
    M = A'*A, k = A'*b
    v = Gaussian_Elimination_4(M,k)
    y = A*v
    E = norm(b - y, 2)
endfunction
