    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $3, %eax
    push %eax
    movl    $1, %eax
    push %eax
    movl    $3, %eax
    push %eax
    movl    $5, %eax
    movl %eax, %ecx
    pop %eax
    cmp %ecx, %eax
    movl $0, %eax
    setg %al
    cmp   $0, %eax
    je   second_branch_label1
    movl    $5, %eax
    movl %eax, -8(%ebp)
    jmp    post_ternary0
second_branch_label1:
    movl    $1, %eax
post_ternary0:
    movl %eax, -4(%ebp)
    movl -8(%ebp), %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $8, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
