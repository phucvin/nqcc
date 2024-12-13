    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $0, %eax
    cmp     $0, %eax
    je      post_if0
    movl    $1, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $0, %esp
    jmp     post_else1
post_if0:
    movl    $2, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $0, %esp
post_else1:
    addl $0, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
