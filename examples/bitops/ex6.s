    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $1, %eax
    push %eax
    movl    $0, %eax
    neg %eax
    movl %eax, %ecx
    pop %eax
    or %ecx, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $0, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
