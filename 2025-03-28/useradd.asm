.model small
.stack 100h
.data
   msg1 db "Enter the number 01 : $"
   
   msg2 db "Enter the number 02 : $"
   
   msg3 db "Total of num1 and num2 : $"
   n1 db 0
   n2 db 0
   n3 db 0
   .code
   start:
   mov ax,@data
   mov ds,ax
   
   mov dx,offset msg1 ;print the msg1
   mov ah,09h
   int 21h
   
   mov ah,01h ;read input......3 al=3+48=51
   int 21h
   
   mov dl,al ; al=51 dl=51
   sub dl,48 ;dl=51-48=3
   
   mov n1,dl ;n1=3
   mov dl,10; next line
   mov ah,02h
   int 21h
   
   mov dx,offset msg2 ;print the msg2
   mov ah,09h
   int 21h
   
   mov ah,01h ;read input 02
   int 21h
   
   mov dl,al ;al=2+48=50 dl=50
   sub dl,48 ;dl=50-48=2
   mov n2,dl ;n2=2
   
   
   mov dl,10; next line
   mov ah,02h
   int 21h
   
   
   mov dx,offset msg3 ;print the msg3
   mov ah,09h
   int 21h
   
   mov dl,n1;dl=3
   add dl,n2;dl=3+2=5
   add dl,48;dl=5+48=53
   
   mov ah,02h
   int 21h
   
   
   
   
   
   mov ax,4c00h
   int 21h

   end start