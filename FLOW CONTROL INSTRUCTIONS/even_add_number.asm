org 100h
.model small
.stack 100h
.data
msg1 db 'ENTER THE ANY NUMBER=$'         
msg2 db 10,13,'Even$' 
msg3 db 10,13,'Odd$' 
var1 db ?
.code
main proc
mov ax,@data
mov ds,ax
lea dx,msg1
mov ah,9
int 21h
mov ah,1
int 21h 
mov bl,2
div bl 
mov bl,0
cmp ah,bl
je even
jne odd
even: 
lea dx,msg2
mov ah,9
int 21h    
jmp end
odd: 
lea dx,msg3
mov ah,9
int 21h
end:
mov ah,4ch
int 21h   
main endp 
end main
ret
