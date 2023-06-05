org 100h
.model small
.stack 100h
.data
var1 db 100 dup('$')    
var2 db 10,13,"vowels a=$"
vara db 48    
var3 db 10,13,"vowels e=$"
vare db 48
var4 db 10,13,"vowels i=$"
vari db 48
var5 db 10,13,"vowels o=$"
varo db 48
var6 db 10,13,"vowels u=$"
varu db 48
.code
main proc
mov ax,@data
mov ds,ax  
lea si,var1
mov cx,15
loop b 
a:
inc vara 
loop b  
e:
inc vare
loop b
i:
inc vari
loop b
o:
inc varo
loop b
u:
inc varu
b:       
mov ah,1
int 21h  
mov [si],al
cmp al,'a'
je a 
cmp al,'e'
je e
cmp al,'i'
je i
cmp al,'o'
je o
cmp al,'u'
je u
inc si 
loop b 
lea dx,var2 
mov ah,9
int 21h 
mov dl,vara 
mov ah,2
int 21h 
lea dx,var3 
mov ah,9
int 21h    
mov dl,vare 
mov ah,2
int 21h
lea dx,var4 
mov ah,9
int 21h
mov dl,vari 
mov ah,2
int 21h
lea dx,var5 
mov ah,9
int 21h
mov dl,varo 
mov ah,2
int 21h    
lea dx,var6 
mov ah,9
int 21h
mov dl,varu 
mov ah,2
int 21h
mov ah,4ch
int 21h 
main endp
end main
ret
