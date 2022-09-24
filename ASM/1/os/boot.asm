mov ah, 0x0e
mov al, 'A'
loop:
    int 0x10
    add al, 32
    int 0x10
    inc al
    sub al, 32
    cmp al, 'Z'+1
    jne loop
; Boot Sector
times 510-($-$$) db 0
db 0x55, 0xaa