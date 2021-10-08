gdt_nulldesc:
    dd 0
    dd 0

gdt_codeseg:
    dw 0xFFFF       ; Limit
    dw 0x0000       ; Base (low)
    db 0x00         ; Base (mid)
    db 10011010b    ; Flags
    db 11001111b    ; Flags and Upper Limit
    db 0x00         ; Base (High)

gdt_dataseg:
    dw 0xFFFF
    dw 0x0000
    db 0x00
    db 10010010b
    db 11001111b
    db 0x00

gdt_end:


gdt_descriptor:
    gdt_size:
        dw gdt_end - gdt_nulldesc -1
        dd gdt_nulldesc

codeseg equ gdt_codeseg - gdt_nulldesc
dataseg equ gdt_dataseg - gdt_nulldesc
[bits 32]

EditGDT:
    mov [gdt_codeseg + 6], byte 10101111b
    mov [gdt_dataseg + 6], byte 11001111b
    ret

[bits 16]