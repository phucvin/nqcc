    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $1, %eax
    cmp     $0, %eax
    je      post_if0
    movl    $3, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    jmp     post_else1
post_if0:
    movl    $2, %eax
    movl %ebp, %esp
    pop %ebp
    ret
post_else1:
    addl $0, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
