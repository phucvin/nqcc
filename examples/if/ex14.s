    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $3, %eax
    push %eax
    movl -4(%ebp), %eax
    push %eax
    movl    $3, %eax
    movl %eax, %ecx
    pop %eax
    cmp %ecx, %eax
    movl $0, %eax
    setg %al
    cmp   $0, %eax
    je   second_branch_label1
    movl    $1, %eax
    push %eax
    movl    $2, %eax
    movl %eax, %ecx
    pop %eax
    cmp %ecx, %eax
    movl $0, %eax
    setl %al
    cmp   $0, %eax
    je   second_branch_label3
    movl    $4, %eax
    jmp    post_ternary2
second_branch_label3:
    movl    $5, %eax
post_ternary2:
    jmp    post_ternary0
second_branch_label1:
    movl    $3, %eax
    push %eax
    movl    $4, %eax
    movl %eax, %ecx
    pop %eax
    cmp %ecx, %eax
    movl $0, %eax
    setl %al
    cmp   $0, %eax
    je   second_branch_label5
    movl    $6, %eax
    jmp    post_ternary4
second_branch_label5:
    movl    $7, %eax
post_ternary4:
post_ternary0:
    push %eax
    movl -8(%ebp), %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $8, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
