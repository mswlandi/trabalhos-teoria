a,b
#,x,y,1
@
-
pa,q0,q1,q2,q3,q4,q5,vc,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23
q7
q3
q0,#,,q23,#,D,,,q0,a,,q9,x,D,,,q0,b,,q0,b,D,,,q1,a,,q2,a,D,,,q1,b,,q6,b,D,,,q10,#,,q10,#,E,,,q10,1,,q10,1,E,,,q10,a,,q10,a,E,,,q10,b,,q10,b,E,,,q10,x,,q0,a,D,,,q11,#,,q11,#,D,,,q11,-,,q16,-,E,,,q11,1,,q12,x,E,,,q11,a,,q11,a,D,,,q11,b,,q11,b,D,,,q12,#,,q12,#,E,,,q12,-,,q13,-,D,,,q12,@,,q13,@,D,,,q12,a,,q12,a,E,,,q12,b,,q12,b,E,,,q13,a,,q14,-,D,,,q13,b,,q15,-,D,,,q14,#,,q14,#,D,,,q14,a,,q14,a,D,,,q14,b,,q14,b,D,,,q14,x,,q11,a,D,,,q15,#,,q15,#,D,,,q15,a,,q15,a,D,,,q15,b,,q15,b,D,,,q15,x,,q11,b,D,,,q16,#,,q22,#,E,,,q16,a,,q17,-,E,,,q16,b,,q18,-,E,,,q17,#,,q19,#,E,,,q17,a,,q17,a,E,,,q17,b,,q17,b,E,,,q18,#,,q20,#,E,,,q18,a,,q18,a,E,,,q18,b,,q18,b,E,,,q19,a,,q21,x,D,,,q19,x,,q19,x,E,,,q19,y,,q19,y,E,,,q2,#,,q3,#,D,,,q2,a,,q5,a,E,,,q2,b,,q4,b,D,,,q20,b,,q21,y,D,,,q20,x,,q20,x,E,,,q20,y,,q20,y,E,,,q21,#,,q21,#,D,,,q21,-,,q16,-,E,,,q21,a,,q21,a,D,,,q21,b,,q21,b,D,,,q21,x,,q21,x,D,,,q21,y,,q21,y,D,,,q22,-,,q1,-,D,,,q22,@,,q1,@,D,,,q22,a,,q22,a,E,,,q22,b,,q22,b,E,,,q22,x,,q22,a,E,,,q22,y,,q22,b,E,,,q23,1,,q11,1,E,,,q4,#,,q3,#,D,,,q4,a,,q5,a,E,,,q4,b,,q5,b,E,,,q5,-,,q0,-,D,,,q5,@,,q0,@,D,,,q5,a,,q5,a,E,,,q5,b,,q5,b,E,,,q6,#,,q3,#,D,,,q6,a,,q5,a,E,,,q6,b,,q5,b,E,,,q7,-,,q8,#,E,,,q7,@,,q7,@,D,,,q7,a,,q7,a,D,,,q7,b,,q7,b,D,,,q8,@,,q1,@,D,,,q8,a,,q8,a,E,,,q8,b,,q8,b,E,,,q9,#,,q9,#,D,,,q9,-,,q10,1,E,,,q9,1,,q9,1,D,,,q9,a,,q9,a,D,,,q9,b,,q9,b,D,,,
Esta Máquina de Turing foi construída usando o software JFlap, e depois convertido automáticamente para o modelo do simulador do Prof. Rodrigo.

O seguinte algoritmo basea-se nas observações de que as k primeiras letras da n-ésima palavra de fibonacci formam a (n-2)-ésima palavra de fibonacci, onde k é o número de 'a's na palavra, e de que uma palavra é de fibonacci se e somente se esse prefixo é igual ao sufixo de mesmo tamanho.

Algoritmo:

Marca # no final
(seja w sempre a palavra antes de #)
enquanto w diferente de ab ou a ou b:
    para cada a:
        marca 1 no final
    para cada 1:
        trocar n-ésimo 1 por n-ésimo dígito de w (apagando de w)
    para cada digito depois de #:
        comparar com últimos dígitos de w, apagando os dígitos depois de #. (se forem diferentes, rejeita)
aceita (se chegou aqui, falhou no teste do 'enquanto', ou seja, w == ab ou a ou b)
