@SCREEN // tu se piše neki offset broja
D=A;

@i
M=D;

@512
D=A;
@kraj
M=D;
@SCREEN // tu se piše neki offset broja
D=A;
@kraj
M=M+D;

(loop_s)
@i
D=M;
@kraj
D=D-M;
@loop_e
D;JEQ
//
@256
D=A;
@i
A=M;
M=D;
//
@32
D=A;
@i
M=M+D;

@loop_s
0;JMP

(loop_e)

(END)
@END
0;JMP


