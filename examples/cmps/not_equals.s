    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $2, %eax
    push %eax
    movl    $3, %eax
    movl %eax, %ecx
    pop %eax
    cmp %ecx, %eax
    movl $0, %eax
    setne %al
    movl %ebp, %esp
    pop %ebp
    ret
    addl $0, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
