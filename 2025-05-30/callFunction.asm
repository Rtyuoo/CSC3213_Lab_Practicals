.model small
.stack 100h
.data
msg1 db "Hi $"
msg2 db "Hello $"

.code
start:
mov ax,@data
mov ds,ax

mov dx,offset msg1
mov ah,09h
int 21h

call newLine ;call newline function

mov dx,offset msg2
mov ah,09h
int 21h

call newLine

mov ax,4c00h
int 21h

proc newLine  ;proceed (create newline function)
mov dl,0ah
mov ah,02h
int 21h

ret  ;return the new line

endp  ;end the function


end start


