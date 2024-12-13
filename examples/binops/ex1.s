    .text
    .globl _main
_main:
    push %ebp
    movl %esp, %ebp
    movl    $3, %eax
    push %eax
    movl    $2, %eax
    movl %eax, %ecx
    pop %eax
    addl %ecx, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $0, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
