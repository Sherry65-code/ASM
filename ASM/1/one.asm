mov ah, 0x0e
mov al, 'A'
sub al, 1
fuck:
    mov al, ' '
    int 0x10
    mov al, 'F'
    int 0x10
    mov al, 'u'
    int 0x10
    mov al, 'c'
    int 0x10
    mov al, 'k'
    int 0x10
    mov al, ' '
    int 0x10
    mov al, 'Y'
    int 0x10
    mov al, 'o'
    int 0x10
    mov al, 'u'
    int 0x10
    jmp $

loop:
    inc al
    int 0x10
    cmp al, 'Z'
    jne loop
    jne fuck


; boot sector identifier
times 510-($-$$) db 0
db 0x55, 0xaa