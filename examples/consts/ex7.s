    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $10, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $0, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
