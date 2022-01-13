
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

jmp start
; ===== Constantes =====
msg0: db 0Dh,0Ah, 'DIGITE UM CARACTER: $'
msg1: db 0Dh,0Ah, 'SEU CARACTER EH: $'

start: MOV dx, msg0
MOV ah, 9h ; função para imprimir o conteúdo de dx
INT 21h ; Habilita a interrupção 21
; ===== Passos para Receber o conte
MOV ah,1h

INT 21H
push AX

MOV dx, msg1 ; pega endereco do segmento de dados
MOV ah, 09h
INT 21h
; ===== Passos para Imprimir o Caracter
pop AX
MOV dl,al ; Move cada caracter para o registrador DL
MOV ah,2h ; Ativa a interrupção 21H (02Hpadrão)
INT 21h ; Habilita a interrupção 21
;=====FINALIZAR O PROGRAMA
MOV AH,4CH ;código para devolver o controle p/ DOS
INT 21H ;interrupção que executa a função em AH

;mov ah,0 ;vai aguardar algo do teclado, quando teclado encerra o programa
;int 16h
ret