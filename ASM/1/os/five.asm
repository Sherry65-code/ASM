[org 0x7c00]

mov bp, 0x8000
mov sp, bp
mov ah, 0
mov bx, [variable]

variable:
    times 10 db 0

loop:
    mov ah, 0
    int 0x16
    mov bh, [bx]
    cmp [bx], 13
    je end 
    jmp loop

end:
    mov ah, 0x0e
    mov al, [bx]
    int 0x10
    mov al, ch
    int 0x10

times 510-($-$$) db 0
db 0x55, 0xaa