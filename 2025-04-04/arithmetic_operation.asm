; write an assembly language programme to read two one digit enter from the user and do the arithmetic operations as follows in the output

.model small
.stack 100h
.data ;passing data
	msg1 db "enter the first number: $"
	msg2 db "enter the second number: $"
	msg3 db "The Addition is: $"
	msg4 db "The Substracion is: $"
	msg5 db "The Multiplication is: $"
	msg6 db "The division quotient is: $"
	msg7 db "The division remainder is: $"
	n1 db 0
	n2 db 0
	rem db ?
	
.code
start:
	mov ax,@data ;ax is a register
	mov ds,ax ;move ax values in to ds(data segment)
	
	mov dx,offset msg1 
	mov ah,09h
	int 21h
	
	mov ah,01h ;n1=3
	int 21h ;al=48+3=51
	
	mov dl,al;dl=51
	sub dl,48;dl=51-48=3
	
	mov n1,dl;n1=3
	mov dl,10;go to next line
	mov ah,02h
	int 21h
	
	mov dx,offset msg2 
	mov ah,09h
	int 21h
	
	mov ah,01h 
	int 21h
	
	mov dl,al
	sub dl,48
	
	mov n2,dl
	mov dl,10
	mov ah,02h
	int 21h
	
	;add
	mov dx,offset msg3 
	mov ah,09h
	int 21h
	
	mov dl,n1 ;n1=3 dl=3
	add dl,n2 ;dl= dl+n2 3+2=5
	add dl,48 ;dl=dl+48=5+48=53
	
	mov ah,02h
	int 21h
	
	;next line
	mov dl,10
	mov ah,02h
	int 21h
	
	;substraction
	mov dx,offset msg4
	mov ah,09h
	int 21h
	
	mov dl,n1
	sub dl,n2
	add dl,48
	
	mov ah,02h
	int 21h
	
	mov dl,10
	mov ah,02h
	int 21h
	
	;multiplication
	mov dx,offset msg5
	mov ah,09h
	int 21h
	
	mov al,n1
	mul n2
	mov dl,al
	add dl,48
	
	mov ah,02h
	int 21h
	
	mov dl,10
	mov ah,02h
	int 21h
	
	;division quotient
	mov dx,offset msg6
	mov ah,09h
	int 21h
	
	mov ah,00
	mov al,n1
	div n2
	mov dl,al
	add dl,48
	
	mov ah,02h
	int 21h
	
	mov dl,10
	mov ah,02h
	int 21h
	
	;division remainder
	mov dx,offset msg7
	mov ah,09h
	int 21h
	
	mov dl,rem
	add dl,48
	
	mov ah,02h
	int 21h
	
	
	
	
	mov ax,4c00h
	int 21h
end start
	