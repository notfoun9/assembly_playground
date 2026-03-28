.text
// expects x0 - return value, x1 - msg pointer
.global strlen
strlen:
    // save previous value of x2 on stack
    str x2, [sp, #-16]!
    mov x0, #0
    strlen_loop:
        ldrb w2, [x1, x0]
        add x0, x0, #1
        cmp w2, #0
        bne strlen_loop
    ldr x2, [sp, #16]!
    ret

// expects x0 - dest adr, x1 - source adr, x2 - N of bytes to copy
.global memcpy
memcpy:
    // save previous value of x2 on stack
    stp x2, x3, [sp, #-16]!
    sub x2, x2, #1

    memcpy_loop:
        ldrb w3, [x1, x2]
        strb w3, [x0, x2]
        cmp x2, #0
        beq memcpy_loop_end
        sub x2, x2, #1
        b memcpy_loop
    memcpy_loop_end:

    ldp x2, x3, [sp], #16
    ret
