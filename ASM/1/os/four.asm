
mov bx, variable   ;make 'variable' space in bx register

mov ah, 0x0e
mov al, 'T'
int 0x10
mov al, 'y'
int 0x10
mov al, 'p'
int 0x10
mov al, 'e'
int 0x10
mov al, ' '
int 0x10
mov al, 'h'
int 0x10
mov al, 'e'
int 0x10
mov al, 'r'
int 0x10
mov al, 'e'
int 0x10
mov al, '>'
int 0x10

printf:
    mov al, [bx]
    mov ah, 0
    int 0x16
    mov ah, 0x0e ;teletype mode
    int 0x10 ;printf interrupt
    cmp al, 0 ; comapre
    je end ; if 0 then end
    ; inc bx
    jmp printf

end:
    hlt

variable:
    db 0




;Boot Sector
times 510-($-$$) db 0
db 0x55, 0xaa