    .text
    .globl incr
incr:
    push %ebp
    movl %esp, %ebp
    movl 8(%ebp), %eax
    push %eax
    movl    $1, %eax
    movl %eax, %ecx
    pop %eax
    addl %ecx, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $4, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $2, %eax
    push %eax
    movl    $1, %eax
    push %eax
    movl    $2, %eax
    movl %eax, %ecx
    pop %eax
    addl %ecx, %eax
    push %eax
    movl %esp, %eax
    subl $8, %eax
    xorl %edx, %edx
    movl $0x20, %ecx
    idivl %ecx
    subl %edx, %esp
    pushl %edx
    movl -4(%ebp), %eax
    push %eax
    movl    $1, %eax
    movl %eax, %ecx
    pop %eax
    addl %ecx, %eax
    pushl %eax
    call _incr
    addl $4, %esp
    popl %edx
    addl %edx, %esp
    movl %eax, %ecx
    pop %eax
    addl %ecx, %eax
    movl %eax, -4(%ebp)
    movl -4(%ebp), %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $4, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
