
org 100h
.model small
.stack 100h
.data 
var0 db "ENTER THE number of STRING=$"
var1 db 10,13,"ENTER THE ANY STRING=$"
var2 db 100 dup('$') 
var3 db 10,13, "REVERSE STRING=$"
var4 db ?
.code
main proc
mov ax,@data
mov ds,ax  
lea dx,var0
mov ah,9
int 21h
mov ah,1
int 21h 
mov var4,al 
sub var4,48
lea dx,var1
mov ah,9
int 21h
lea si,var2
mov cl,var4 
dec var4
mov bl,var4
a:       
mov ah,1
int 21h  
mov [si+bx],al
dec si
loop a 
lea dx,var3 
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
