    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    push %eax
    movl    $4, %eax
    push %eax
    movl    $2, %eax
    movl %eax, %ecx
    pop %eax
    imul %ecx, %eax
    movl %eax, -4(%ebp)
    movl -4(%ebp), %eax
    push %eax
    movl    $1, %eax
    movl %eax, %ecx
    pop %eax
    addl %ecx, %eax
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
