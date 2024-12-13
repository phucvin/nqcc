    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $1, %eax
    cmp $0, %eax
    jne and_clause20
    jmp post_and1
and_clause20:
    movl    $0, %eax
    cmp $0, %eax
    movl $0, %eax
    setne %al
post_and1:
    movl %ebp, %esp
    pop %ebp
    ret
    addl $0, %esp
    movl $0, %eax
    movl %ebp, %esp
    pop %ebp
    ret
