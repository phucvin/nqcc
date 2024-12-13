    .text
    .globl foo
foo:
    push %ebp
    movl %esp, %ebp
    movl    $3, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    addl $0, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $1, %eax
    push %eax
    movl %esp, %eax
    subl $4, %eax
    xorl %edx, %edx
    movl $0x20, %ecx
    idivl %ecx
    subl %edx, %esp
    pushl %edx
    call _foo
    addl $0, %esp
    popl %edx
    addl %edx, %esp
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
