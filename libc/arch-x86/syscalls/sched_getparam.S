/* autogenerated by gensyscalls.py */
#include <linux/err.h>
#include <machine/asm.h>
#include <asm/unistd.h>

ENTRY(sched_getparam)
    pushl   %ebx
    pushl   %ecx
    mov     12(%esp), %ebx
    mov     16(%esp), %ecx
    movl    $__NR_sched_getparam, %eax
    int     $0x80
    cmpl    $-MAX_ERRNO, %eax
    jb      1f
    negl    %eax
    pushl   %eax
    call    __set_errno
    addl    $4, %esp
    orl     $-1, %eax
1:
    popl    %ecx
    popl    %ebx
    ret
END(sched_getparam)
