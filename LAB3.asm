MOV AX, 0902H
MOV BX, 39H
AAD
DIV BX              
HLT


MOV AX, 71H
MOV BX, 39H
ADD AX, BX          
DAA    
HLT
    

MOV AX, 71H
MOV BX, 39H
SUB AX, BX          
DAS    
HLT  


;LEA
;JC JNC 
;JZ JNZ
;JS JNS
;JPE JPO       



MOV CL, 0AH
MOV BL, 00H
MOV DL, 00H
LEA SI, 1000H                 
ADD SI, 01H
MOV AL, [SI]  
AND AL, 80H
JZ LABEL 
ADD DL, 01H