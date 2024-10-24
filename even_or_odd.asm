org 100h

mov ah, 01h
int 21h
sub al, 30h

mov ah, 00h
mov bl, 02
div bl
cmp ah, 0
je even

mov ah, 09h
lea dx, odd_msg
int 21h
jmp exit

even:
mov ah, 09h
lea dx, even_msg
int 21h

exit:
mov ah, 4ch
int 21h

odd_msg db 'Number is odd$'
even_msg db 'Number is even$'