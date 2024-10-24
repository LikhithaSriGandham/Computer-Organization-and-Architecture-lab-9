org 100h

; Display message: "Enter first number: "
mov ah, 09h
lea dx, input_msg1
int 21h

; Input first number
mov ah, 01h
int 21h
sub al, 30h  ; Convert ASCII to numeric value
mov bl, al   ; Store first number in BL

; Display message: "Enter second number: "
mov ah, 09h
lea dx, input_msg2
int 21h

; Input second number
mov ah, 01h
int 21h
sub al, 30h  ; Convert ASCII to numeric value

; Compare the two numbers
cmp al, bl
je equal     ; If equal, jump to "equal" label

; If not equal, display message: "Numbers are not equal"
mov ah, 09h
lea dx, not_equal_msg
int 21h
jmp exit     ; Jump to exit

equal:
; Display message: "Numbers are equal"
mov ah, 09h
lea dx, equal_msg
int 21h

exit:
; Exit the program
mov ah, 4ch
int 21h  

; Data Section
input_msg1 db 'Enter first number: $ '
input_msg2 db 'Enter second number: $ '
equal_msg db 'Numbers are equal$'
not_equal_msg db 'Numbers are not equal$'
