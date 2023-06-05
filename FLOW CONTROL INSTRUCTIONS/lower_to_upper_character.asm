org 100h
.model small
.stack 100h
.data
var1 db ?
msg1 db 10,13,' '
.code
main proc    
mov ax,@data
mov ds,ax  
l1:
mov ah,1
int 21h  
mov bl,al
sub bl,32
mov dl,10 
mov ah,2
int 21h 
mov dl,13
mov ah,2
int 21h
mov dl,bl
mov ah,2
int 21h  
cmp dl,237  
mov dl,10 
         mov ah,2
int 21h 
mov dl,13
mov ah,2
int 21h
jne l1   
mov dl,msg1
mov ah,2
int 21h   
mov ah,4ch
int 21h     
main endp
end main
ret
