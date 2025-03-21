; write an assembly program to division two numbers and display results.

.model small
.stack 100h

.data
n db 6
m db 3
r db ?

.code
start:

mov ax,@data
mov ds,ax

mov ah,00
mov al,n
div m ;a1=m/n=3/2 ah=1 al=2
mov r,ah ;r=1

mov dl,al ;dl=1
add dl,48;dl=1+48=49
mov ah,02h
int 21h

mov dl,10;nextine
mov ah,02h
int 21h

mov dl,r ;dl=1
add dl,48
mov ah,02h
int 21h

end start