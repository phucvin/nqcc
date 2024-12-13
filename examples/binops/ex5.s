    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $5, %eax
    push %eax
    movl    $4, %eax
    movl %eax, %ecx
    pop %eax
    xor %edx, %edx
    idivl %ecx
    movl %ebp, %esp
    pop %ebp
    ret
    addl $0, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
