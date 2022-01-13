
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
 
 PUSH BX
 PUSH CX
 PUSH DX
 XOR BX, BX
 XOR CX, CX
 
 MOV AH, 1H  
 INT 21H 
 CMP AL,'-'
 JE MENOS
 CMP AL, '+'
 JE MAIS
 JMP NUM



ret




