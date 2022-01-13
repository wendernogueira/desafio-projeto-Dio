
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt



org 100h;realizar um salto



jmp start ;intrucao que o processador vai entender
;comando de pular
;vai pular para start(posicao de memoria)


msg: db "OLA!!! ELIEL GOMES!",0Dh,0Ah,24h  ;db= define o tamanho // 0Dh,0Ah,24h= quebra linhas


start: mov dx, msg ;mov vai mover o conteudo de (msg) para (dx)
       mov ah,09h;ah= funcao  09h= funcao para mostrar na tela    
       int 21h ;int=interrupcao vai mostrar o conteudo de dx
    
       mov ah,0 ;vai aguardar algo do teclado, quando teclado encerra o programa
       int 16h
    

ret




