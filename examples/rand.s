.section .data

value = 12345

buf:
    .space 20

.section .text
.global _start
_start:
    bl rand_64
    bl print_num

    bl rand_64
    bl print_num

    bl rand_64
    bl print_num

    bl rand_64
    bl print_num

    bl rand_64
    bl print_num

    mov x0, #1
    mov x8, #0x5D
    svc #0

    ret

rand_64:
    sub sp, sp, #64
    mov     x0, sp             // buffer pointer
    mov     x1, #64            // buflen
    mov     x2, #0             // flags
    mov     x8, #278           // syscall number: getrandom (arch-dependent; 278 on aarch64)
    svc     #0
    
    ldr     x0, [sp]           // load 32-bit random value into w0

    add sp, sp, #64
    ret

.data
printNumBuf:
    .byte 30
