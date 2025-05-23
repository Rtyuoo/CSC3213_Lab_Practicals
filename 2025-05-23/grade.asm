; Given a mark from 0-100 display a grade:
;90-100-->A
;cmp 90,mark
;jge printA

;75-89-->B
;cmp 75,mark
;jge printB

;60-74-->C
;cmp 60,mark
;jge printC

;50-59-->D
;cmp 50,mark
;jge Print D
;jl printfail

;below 50-->fail

.model small
.stack 100h
.data
mark db 76
heading db "How many marks: $"
msg1 db "Grade is A $"
msg2 db "Grade is B $"
msg3 db "Grade is C $"
msg4 db "Grade is D $"
msg5 db "Fail"

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

mov al,mark
cmp al,90
jge printA

cmp al,75
jge printB

cmp al,60
jge printC

cmp al,50
jge printD
jl printE

printA:
mov dx,offset msg1
mov ah,09h
int 21h
jmp endd

printB:
mov dx,offset msg2
mov ah,09h
int 21h
jmp endd

printC:
mov dx,offset msg3
mov ah,09h
int 21h
jmp endd

printD:
mov dx,offset msg4
mov ah,09h
int 21h
jmp endd

printE:
mov dx,offset msg5
mov ah,09h
int 21h
jmp endd

endd:
mov ax,4c00h
int 21h

end start
