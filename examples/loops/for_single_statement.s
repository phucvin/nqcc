    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $0, %eax
    push %eax
    movl    $0, %eax
    push %eax
loop0:
    movl -8(%ebp), %eax
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
    xor %edx, %edx
    idivl %ecx
    movl %edx, %eax
    cmp     $0, %eax
    je      post_if3
    movl -4(%ebp), %eax
    push %eax
    movl    $1, %eax
    movl %eax, %ecx
    pop %eax
    addl %ecx, %eax
    movl %eax, -4(%ebp)
post_if3:
loop_continue2:
    movl -8(%ebp), %eax
    push %eax
    movl    $1, %eax
    movl %eax, %ecx
    pop %eax
    addl %ecx, %eax
    movl %eax, -8(%ebp)
    jmp loop0
post_loop1:
    pop %eax
    movl -4(%ebp), %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $4, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret