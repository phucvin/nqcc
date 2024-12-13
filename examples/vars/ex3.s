    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $3, %eax
    push %eax
    movl    $4, %eax
    movl %eax, -4(%ebp)
    push %eax
    movl -4(%ebp), %eax
    push %eax
    movl -8(%ebp), %eax
    movl %eax, %ecx
    pop %eax
    addl %ecx, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $8, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
