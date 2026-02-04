MOV AL, 01H       
MOV [3000H], AL   

START:
    MOV AL, [3000H]  
    AND AL, 01H       

    JZ EVEN           
    JNZ ODD            

EVEN:
    MOV BYTE PTR [3001H], 00H  
    JMP NEXT

ODD:
    MOV BYTE PTR [3001H], 01H  

NEXT:
    INC BYTE PTR [3000H]   
    MOV AL, [3000H]
    CMP AL, 0BH         
    JNZ START

HLT









MOV SI, 3000H      ; SI points to start of array
MOV CL, 05H        ; Number of elements = 5

MOV AL, [SI]       ; Assume first element is MAX
INC SI             ; Point to next element
DEC CL             ; One element already used

START:
    MOV BL, [SI]   ; Load next array element
    CMP AL, BL     ; Compare current MAX with element
    JNC SKIP       ; If AL >= BL, skip update

    MOV AL, BL     ; Else update MAX

SKIP:
    INC SI         ; Move to next element
    DEC CL         ; Decrease count
    JNZ START      ; Repeat till all elements checked

MOV [3010H], AL    ; Store MAX value in memory

HLT







MOV SI, 3000H        ; SI points to memory for storing Fibonacci numbers
MOV CL, 05H          ; Count = 5 numbers

MOV AL, 00H          ; First Fibonacci number = 0
MOV BL, 01H          ; Second Fibonacci number = 1

MOV [SI], AL         ; Store 0 at 3000H
INC SI

MOV [SI], BL         ; Store 1 at 3001H
INC SI

DEC CL               ; Two numbers already stored
DEC CL               ; CL = 3 remaining

START:
    ADD AL, BL       ; AL = AL + BL (next Fibonacci)
    MOV [SI], AL     ; Store next number
    INC SI

    XCHG AL, BL      ; Prepare for next iteration
                     ; BL = current, AL = previous

    DEC CL
    JNZ START

HLT
