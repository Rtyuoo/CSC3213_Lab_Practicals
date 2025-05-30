.model small
.stack 100h
.data
msg db "Enter a number : $"
a db ?

.code
mov ax,@data
mov ds,ax

mov dx,offset msg
mov ah,09h
int 21h

call read 
call newLine
call print

mov ax,4c00h
int 21h

proc read
mov ah,01h
int 21h
mov a,al

ret
endp

proc newLine
mov dl,0ah
mov ah,02h
int 21h

ret
endp

proc print
mov dl,a
mov ah,02h
int 21h

ret
endp

end
