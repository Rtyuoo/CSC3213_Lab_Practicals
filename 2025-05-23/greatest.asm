;Given three numbers , determine which one is the greatest and display the message.

.model small
.stack 100h
.data
n1 db 5
n2 db 6
n3 db 2
heading db "Which is greatest? $"
msg1 db "n1 is greatest $"
msg2 db "n2 is greatest $"
msg3 db "n3 is greatest $"
.code
start:

mov ax,@data
mov ds,ax

mov dx,offset heading
mov ah,09h
int 21h

mov dl,10
mov ah,02h
int 21h

mov al,n1
cmp al,n2 ;cmp n1 and n2
jge Lblyes  ; if n1>=n2
jl LblNo ;n1<n2

Lblyes:
mov bl,n3 ;cmp n1
cmp al,bl ;cmp n1 and n3
jge print1  ;if n1>=n3
jl print3  ;if n1<n3

LblNo:
mov dx,offset msg2
mov ah,09h
int 21h
jmp endd

print1:
mov dx,offset msg1
mov ah,09h
int 21h
jmp endd

print3:
mov dx,offset msg3
mov ah,09h
int 21h
jmp endd

endd:

mov ax,4c00h
int 21h

end start