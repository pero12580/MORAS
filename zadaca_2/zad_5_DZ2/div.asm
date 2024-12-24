@0
D=M;

@d
M=D-1;


(div_s)

@0
D=M;

@d
D=D-M;

@temp1
M=D;
D=M;

@0
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

(div_e)

   //@temp2
   //D=M;
   //@1   //ako zelim vidjet sta sam dobio na kraju
   //M=D;

(END)
@END
0;JMP