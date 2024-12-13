    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    push %eax
    movl    $0, %eax
    push %eax
    movl    $0, %eax
    movl %eax, -4(%ebp)
loop0:
    movl -4(%ebp), %eax
    push %eax
    movl    $5, %eax
    movl %eax, %ecx
    pop %eax
    cmp %ecx, %eax
    movl $0, %eax
    setl %al
    cmp $0, %eax
    je post_loop1
    movl -8(%ebp), %eax
    push %eax
    movl    $2, %eax
    movl %eax, %ecx
    pop %eax
    addl %ecx, %eax
    movl %eax, -8(%ebp)
    addl $0, %esp
loop_continue2:
    movl -4(%ebp), %eax
    push %eax
    movl    $1, %eax
    movl %eax, %ecx
    pop %eax
    addl %ecx, %eax
    movl %eax, -4(%ebp)
    jmp loop0
post_loop1:
    movl -8(%ebp), %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $8, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
