.data
msg:
    .ascii "Hello, World!\n\0"

msg2:
    .ascii "Aboba, Aboba!\n\0"

.text
.global _start
_start:
    adr x1, msg
    bl strlen
    mov x2, x0
    mov x0, #0
    mov x8, #0x40
    svc #0

    adr x1, msg2
    mov x0, #0
    mov x8, #0x40
    svc #0

    adr x0, msg2
    adr x1, msg
    bl memcpy

    adr x1, msg2
    mov x0, #0
    mov x8, #0x40
    svc #0

    mov x0, #0
    mov x8, #0x5D
    svc #0

