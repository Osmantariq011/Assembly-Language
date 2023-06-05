org 100h
.model small
.stack 100h
.data
var1 db "ENTER THE PASSWORD=$"   
var2 db "Osman123$"
var3 db 100 dup('$') 
var4 db " PASSWORD correct$"                    
var5 db " PASSWORD incorrect$"
.code
main proc
mov ax,@data
mov ds,ax 
lea dx,var1
mov ah,9
int 21h  
lea di,var2
lea si,var3
mov cx,8
a:       
mov ah,1
int 21h  
mov [si],al
cmp al,[di] 
jc incorrot 
inc si 
inc di
loop a 
jmp corrot
incorrot:  
mov dl,10
mov ah,2
int 21h    
mov dl,13
mov ah,2
int 21h
lea dx,var5 
mov ah,9
int 21h 
jmp end
corrot: 
mov dl,10
mov ah,2
int 21h    
mov dl,13
mov ah,2
int 21h 
lea dx,var4 
mov ah,9
int 21h 
end:
mov ah,4ch
int 21h 
main endp
end main
ret
