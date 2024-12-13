    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $0, %eax
    neg %eax
    push %eax
    movl    $3, %eax
    movl %eax, %ecx
    pop %eax
    sall %cl, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $0, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
