////////////////////////////  ne radi za RAM[0] = 0,   i vraca binarni broj naopacke, ali inace sve oke, tko god bude ovo citao sretno
@skip
0;JMP
(ssstart)
@0
M=M+1;
(skip)
@0
D=M;

@input
M=D;

//while input != 0 
//  mod = mod(input)
//  input = div(input)
//  if mod != 0, nacrtaj 1, inace nacrtaj nulu
// offset++

@offset
M=0;

(loop)
@input
D=M;

@end
D;JEQ
//

@input
D=M;

@mod
M=D;

@2
D=A;

@j
M=D;

(mod_s)
@mod
D=M;

@mod_e
D;JLE
//

@j
D=M;
@mod
M=M-D;
//

@mod_s
0;JMP

(mod_e)
/////////////////////////////////crtanja  ako je mod == 0, crtaj nulu, inace jedan

@mod
D=M;

@nula
D;JEQ
////// ovdje nacrtaj jedan, pa na kraju stavi skip na poslije nule

@SCREEN // tu se piše neki offset broja
D=A;
@offset
D=D+M;

@s
M=D;

@512
D=A;
@kraj
M=D;
@SCREEN // tu se piše neki offset broja
D=A;
@offset
D=D+M;
@kraj
M=M+D;

(loop_s)
@s
D=M;
@kraj
D=D-M;
@loop_e
D;JEQ
//
@256
D=A;
@s
A=M;
M=D;
//
@32
D=A;
@s
M=M+D;

@loop_s
0;JMP

(loop_e)


@poslije_nule
0;JMP
//////
(nula)
@SCREEN 
D=A;
@offset  //////////////////////valjda ce valjati offset
D=D+M;
@i
M=D;
//
@384
D=A;

@i
A=M;
M=D;

@32
D=A;
@i
M=M+D;
//
@576
D=A;

@i
A=M;
M=D;

@32
D=A;
@i
M=M+D;
//
@1056
D=A;

@i
A=M;
M=D;

@32
D=A;
@i
M=M+D;
//
@2064
D=A;

@i
A=M;
M=D;

@32
D=A;
@i
M=M+D;
//
@4104
D=A;

@i
A=M;
M=D;

@32
D=A;
@i
M=M+D;
//
@8196
D=A;

@i
A=M;
M=D;

@32
D=A;
@i
M=M+D;
//
@16386
D=A;

@i
A=M;
M=D;

@32
D=A;
@i
M=M+D;
//
@32769
D=A;

@i
A=M;
M=D;

@32
D=A;
@i
M=M+D;
//
//
//
@16386
D=A;

@i
A=M;
M=D;

@32
D=A;
@i
M=M+D;
//
@8196
D=A;

@i
A=M;
M=D;

@32
D=A;
@i
M=M+D;
//
@4104
D=A;

@i
A=M;
M=D;

@32
D=A;
@i
M=M+D;
//
@2064
D=A;

@i
A=M;
M=D;

@32
D=A;
@i
M=M+D;
//
@1056
D=A;

@i
A=M;
M=D;

@32
D=A;
@i
M=M+D;
//
@576
D=A;

@i
A=M;
M=D;

@32
D=A;
@i
M=M+D;
//
@384
D=A;

@i
A=M;
M=D;

@32
D=A;
@i
M=M+D;

(poslije_nule)
//////////////////////////////////

//
@input
D=M;
@d
M=D-1;

(div_s)

@input
D=M;

@d
D=D-M;

@temp1
M=D;
D=M;

@input
D=M-D;

@temp2
M=D;

@temp1
D=M;
@temp2
D=D-M;

@div_e
D;JGE

//
@d
M=M-1;

@div_s
0;JMP 

(div_e) /////////// kraj div input

@temp2
D=M;

@input   //////// input = div(input)
M=D;

@offset
M=M+1;

@loop
0;JMP

(end)



////////////ako se pritisne U, treba vratiti sktoz na pocetak, ali tek kad se inkrementira na 0
/// tj ak je KBD == 85

(key)
@KBD
D=M;
@85
D=D-A;

@ssstart
D;JEQ

@key
0;JMP


(END)
@END
0;JMP
