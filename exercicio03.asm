
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt



org 100h
jmp start
; ===== Constantes =====
msg0 : db 0Dh,0Ah,'digite uma Letra x somente x e tem que ser maisculo:$'
msg1 : db 0Dh,0Ah,'PARABENS VOCE DIGITOU A UNICA LETRA QUE ESSA PORCARIA ACEITA:$'
msg2 : db 0Dh,0Ah,'QUE MERDA EU FALEI QUE SO ACEITA X MAIUSCULO:$'
start:
; ===== Passos para Ler o Conte�do da Vari�vel msg0 =====
MOV dx, msg0
MOV ah, 9h
INT 21h
leia:
MOV ah,1h ; Ativa a interrup��o 21H (01hpadr�o)
INT 21H ; Habilita a interrup��o 21
CMP AL,58H ; compara se a tecla digitada � enter
jz x
jmp nx
x:
MOV dx, msg1
MOV ah, 9h
INT 21h
jmp fim
nx:
MOV dx, msg2
MOV ah, 9h
INT 21h
fim:
MOV AH,4CH ;c�digo para devolver o controle p/ DOS

ret




