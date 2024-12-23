@16384
D=A;
@i
M = D;

@counter
M=0;

@unutarnji_counter
M=1;

(okomita)
//kad i dođe do 20480
@20480
D=A;
@i
D=D-M;

@kraj_okomita
D;JLE
//

@i
A = M;
M = 1;  // okomita crta, ne dirati


@counter
D=M;
@i
D=D+M;  // D = counter + i
@zapamti
M = D; // adresa di treba pisat unutarnji_counter

@unutarnji_counter
D=M;

@zapamti
A=M;
M=D;


//M=1; // tu ce ici drugi counter unutar registra

//

@32
D=A;
@i
M=M+D;



@unutarnji_counter // promjenit na zbrajanje sam sa sobom
D=M
M=M+D;
D=M
@16384 // 2^14 jer je to valjd zadnja tocka koju moze upisat
D=D-A;


@skip
D;JLE

@unutarnji_counter
M=1;
@counter
M=M+1;

(skip)


@okomita
0;JMP
(kraj_okomita)




(desno)
@20487
D=A;
@i
D=D-M;

@kraj_desno
D;JLT
//
@i
A=M;
M=-1
//
@i
M = M+1;
@desno
0;JMP


(END)
@END
0;JMP