    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $0, %eax
    cmp     $0, %eax
    je      post_if0
    movl    $4, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $0, %esp
post_if0:
    movl    $5, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $0, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
