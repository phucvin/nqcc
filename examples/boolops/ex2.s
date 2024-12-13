    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $1, %eax
    cmp $0, %eax
    je or_clause20
    movl $1, %eax
    jmp post_or1
or_clause20:
    movl    $0, %eax
    cmp $0, %eax
    movl $0, %eax
    setne %al
post_or1:
    movl %ebp, %esp
    pop %ebp
    ret
    addl $0, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
