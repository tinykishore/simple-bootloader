[org 0x7e00]

mov bx, ExtendedSpaceSuccess
call PrintString

jmp $
%include "sector1/print.asm"

ExtendedSpaceSuccess:
    db "Reading from sector2..."

times 2048-($-$$) db 0