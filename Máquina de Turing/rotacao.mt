0,1,#

@
-
0,1,#1,#0,a1,vb,ax,xf,F
0
F
#0,#,,a1,0,D,,,#0,0,,#0,0,D,,,#0,1,,#0,1,D,,,#1,#,,a1,1,D,,,#1,0,,#1,0,D,,,#1,1,,#1,1,D,,,0,@,,1,@,D,,,1,0,,#0,0,D,,,1,1,,#1,1,D,,,a1,-,,xf,-,E,,,a1,1,,vb,#,E,,,ax,0,,1,-,D,,,ax,1,,1,-,D,,,vb,-,,ax,-,D,,,vb,0,,vb,0,E,,,vb,1,,vb,1,E,,,vb,@,,ax,@,D,,,xf,0,,F,-,E,,,xf,1,,F,-,E,,,
Explicação: começa no estado 0, que só vai para o estado 1, que por sua vez vai para a direita e vai para o estado #0 ou #1, de acordo com o caractere lido. no estado #0, vai para a direita até achar #, quando achar, escreve 0 e vai para a direita, no estado a1. #1 faz o mesmo, mas escreve 1. no estado a1, caso leia vazio, apaga o caractere recém escrito à esquerda (xf) e finaliza (f). caso leia 1, escreve # e vai para a esquerda, no estado vb. o estado vb apaga o primeiro símbolo da palavra, vai para a direita e começa tudo de novo (1).
