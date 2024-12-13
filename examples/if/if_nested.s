    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $0, %eax
    push %eax
    movl -4(%ebp), %eax
    push %eax
    movl    $2, %eax
    movl %eax, %ecx
    pop %eax
    cmp %ecx, %eax
    movl $0, %eax
    setg %al
    cmp     $0, %eax
    je      post_if0
    movl    $1, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $0, %esp
    jmp     post_else1
post_if0:
    movl -4(%ebp), %eax
    push %eax
    movl    $0, %eax
    movl %eax, %ecx
    pop %eax
    cmp %ecx, %eax
    movl $0, %eax
    setge %al
    cmp     $0, %eax
    je      post_if2
    movl    $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $0, %esp
    jmp     post_else3
post_if2:
    movl    $5, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $0, %esp
post_else3:
post_else1:
    addl $4, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
