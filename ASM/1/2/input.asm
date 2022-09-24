[org 0x7c00] ;switch to safe mode

mov ah, 0 ;switch to input mode
mov bx, [variable] ;move variable --> bx register

dothis:
    mov ah, 0 ;switch to input mode
    int 0x16 ;take input interupt
    mov bh, [bx] ; move input character to bx register
    cmp bh, 13 ;comapre bx register to enter or return input
    je stopit ; if diff = 0 then jump to stopit function
    ; cmp bh, 8
    ; je gives
    mov ah, 0x0e ; switch to teletype mode
    mov [bx], al ; move bx register character to al register
    int 0x10 ; print character output <interrupt>
    jmp dothis ;restart the dothis function

stopit:
    mov ah, 0x0e ;switch to teletype mode
    mov al, 'F' ;mov f char to al register
    times 100 int 0x10 ;print al registry 100 times
    hlt ;hlt the cpu

; gives:
;     mov ah, 0x0e
;     mov al, 127
;     int 0x10
;     jmp dothis

variable:
    times 10 db 0 ;create memory location for it


;boot sector identifier
times 510-($-$$) db 0
db 0x55, 0xaa