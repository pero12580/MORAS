@24576
D = A;
@5
M = D; // na 5 registar stavlja vrijednost adrese najveceg registra

@i
M = 0; // krece od registra 0

(loop_s)
//ako i == 5 zavrsi
@i
D = M;

@5
D = D-A;

@loop_e
D;JEQ
//

@i
A = M;

D = M; // sto pise na adresi koja pise u i

//jel vrijednost pozitivna, ako nije samo skocim na (vece)
@vece
D;JLE
//

@5
D = D-M;

@vece
D;JGT

@i
A = M;

D = M; // sto pise na adresi koja pise u i

@5
M = D;

(vece)


//
@i
M = M+1;

@loop_s
0;JMP

(loop_e)

@24576
D = A;
@5
D=D-M;

@kraj
D;JNE

@5
M=0; // ako su svi od 0..4 negativni u peti spremi 0

(kraj)



(END)
@END
0;JMP