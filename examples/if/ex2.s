    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $3, %eax
    push %eax
    movl -4(%ebp), %eax
    cmpl $0, %eax
    movl $0, %eax
    sete %al
    cmp     $0, %eax
    je      post_if0
    movl    $4, %eax
    movl %eax, -4(%ebp)
    jmp     post_else1
post_if0:
    movl    $5, %eax
    movl %eax, -4(%ebp)
post_else1:
    movl -4(%ebp), %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $4, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
