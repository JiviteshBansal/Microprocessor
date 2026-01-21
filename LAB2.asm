MOV AX, 1234H 
MOV BX, 0E345H
MUL BX      
hlt 


MOV AX, -1234H
MOV BX, -5H
IMUL BX
HLT         


MOV AX, 1234H   
MOV BX, 0003H
DIV BX
HLT

MOV AX, 32H
MOV BX, 33H
ADD AX, BX
HLT                              



MOV AX, 32H
MOV BX, 33H
ADD AX, BX
AAA
ADD AX, 30H
HLT


MOV AX, 32H
MOV BX, 39H
SUB AX, BX
AAS
HLT