    .text
    .globl main
main:
    push %ebp
    movl %esp, %ebp
    movl    $3, %eax
    push %eax
    movl    $4, %eax
    movl %eax, %ecx
    pop %eax
    addl %ecx, %eax
    push %eax
    movl    $4, %eax
    movl %eax, %ecx
    pop %eax
    cmp %ecx, %eax
    movl $0, %eax
    setle %al
    cmp $0, %eax
    je or_clause20
    movl $1, %eax
    jmp post_or1
or_clause20:
    movl    $1, %eax
    cmp $0, %eax
    jne and_clause22
    jmp post_and3
and_clause22:
    movl    $2, %eax
    push %eax
    movl    $3, %eax
    push %eax
    movl    $6, %eax
    movl %eax, %ecx
    pop %eax
    cmp %ecx, %eax
    movl $0, %eax
    setg %al
    movl %eax, %ecx
    pop %eax
    cmp %ecx, %eax
    movl $0, %eax
    setne %al
    cmp $0, %eax
    movl $0, %eax
    setne %al
post_and3:
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
