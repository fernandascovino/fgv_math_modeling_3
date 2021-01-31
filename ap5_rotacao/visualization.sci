function []= visualization(A)
    // Dado uma matriz de entrada A, retorna a sua visualização
    x=[1:size(A,1)], y=[1:size(A,2)];
    xset('colormap',graycolormap(256)); //256 tons de cinza
    isoview(0,512,0,512) //ajusta as dimensões da imagem
    grayplot(x, y, A)
endfunction
