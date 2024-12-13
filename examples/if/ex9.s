    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $2, %eax
    push %eax
    movl    $1, %eax
    cmp     $0, %eax
    je      post_if0
    movl    $5, %eax
    movl %eax, -4(%ebp)
    addl $0, %esp
    jmp     post_else1
post_if0:
    movl    $7, %eax
    movl %eax, -4(%ebp)
    addl $0, %esp
post_else1:
    movl -4(%ebp), %eax
    push %eax
    movl    $5, %eax
    movl %eax, %ecx
    pop %eax
    subl %ecx, %eax
    push %eax
    movl -8(%ebp), %eax
    cmp     $0, %eax
    je      post_if2
    movl    $4, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $0, %esp
post_if2:
    movl    $5, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $8, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
