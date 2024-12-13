    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $4, %eax
    push %eax
    movl    $3, %eax
    movl %eax, %ecx
    pop %eax
    xor %edx, %edx
    idivl %ecx
    push %eax
    movl    $2, %eax
    movl %eax, %ecx
    pop %eax
    imul %ecx, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $0, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
