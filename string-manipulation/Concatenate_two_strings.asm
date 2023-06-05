org 100h
.model small
.stack 100h
.data
var0 db 10,13,"ENTER THE LENGHT OF STRING ONE AND TWO=$" 
var1 db 10,13,"ENTER THE STRING ONE=$" 
var2 db 100 dup('$')
var3 db 10,13,"ENTER THE STRING TWO=$" 
var4 db ?     
var5 db 10,13,"Concatenate strings and then display them=$"
.code
main proc
mov ax,@data
mov ds,ax    
lea dx,var0 
mov ah,9
int 21h 
mov ah,1
int 21h 
sub al,48 
mov var4,al 
lea dx,var1 
mov ah,9
int 21h  
lea si,var2 
mov cx,0
mov cl,var4
a:       
mov ah,1
int 21h  
mov [si],al
inc si
loop a 
lea dx,var3 
mov ah,9
int 21h 
mov cl,var4
b:       
mov ah,1
int 21h  
mov [si],al
inc si
loop b 
lea dx,var5 
mov ah,9
int 21h
lea dx,var2 
mov ah,9
int 21h 
mov ah,4ch
int 21h 
main endp
end main
ret
