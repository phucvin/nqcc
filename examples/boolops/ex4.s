    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $1, %eax
    push %eax
    movl    $1, %eax
    movl %eax, %ecx
    pop %eax
    cmp %ecx, %eax
    movl $0, %eax
    setle %al
    movl %ebp, %esp
    pop %ebp
    ret
    addl $0, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
