a,b
x
@
-
q0,q1,q2,q3,q4,q5,q6,q7
q0
q7
q0,@,,q1,@,D,,,q1,a,,q2,a,D,,,q2,a,,q2,a,D,,,q2,b,,q3,x,E,,,q3,a,,q4,b,D,,,q3,b,,q3,b,E,,,q3,x,,q3,x,E,,,q4,b,,q4,b,D,,,q4,x,,q5,x,D,,,q5,-,,q6,-,E,,,q5,b,,q3,x,E,,,q5,x,,q5,x,D,,,q6,@,,q7,@,D,,,q6,a,,q2,a,D,,,q6,b,,q6,b,E,,,q6,x,,q6,x,E,,,,,,q4,b,,q4,b,D,,,q4,x,,q5,x,D,,,q5,-,,q6,-,E,,,q5,b,,q3,x,E,,,q5,x,,q5,x,D,,,q6,@,,q7,@,D,,,q6,a,,q2,a,D,,,q6,b,,q6,b,E,,,q6,x,,q6,x,E,,,
O símbolo auxiliar 'x' é usado para marcar (sobrescrever com 'x') elementos visitados.

A MT avança até encontrar um elemento 'b' não-marcado, então marca o mesmo, e começa a voltar até encontrar um elemento 'a', e sobrescreve o mesmo com um elemento 'b'. A MT continua o processo, repetindo os passos acima, cuidando para em cada passo só considerar como elemento 'b', os elementos 'b' que estiverem a direita do elemento 'b' marcado no passo anterior.

Quando a MT chega ao 'final' da fita, a MT termina o processo acima, e volta para verificar se todos os elementos 'a' foram sobrescritos, se sim, termina em aceitação, senão, recomeça o processo acima.

A MT termina em indefinição se após encontrar um elemento 'b', voltar para sobrescrever um elemento 'a', e encontrar nenhum. Também termina em indefinição se no início do processamento não encontrar um elemento 'a' no 'início' da fita, se não encontrar um elemento 'b' após a cadeia inicial de elementos 'a', ou se encontrar algum elemento 'a' a direita de qualquer elemento 'b'.