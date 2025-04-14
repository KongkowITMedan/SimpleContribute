.global _start

.section .data
message: .asciz "Hello World\n"
len = . - message

.section .text
_start:
    mov r0, #1          // File descriptor (stdout)
    ldr r1, =message    // Pointer to the message
    ldr r2, =len        // Length of the message
    mov r7, #4          // Syscall number (sys_write)
    swi 0               // Make the syscall

    mov r7, #1          // Syscall number (sys_exit)
    mov r0, #0          // Exit code
    swi 0               // Make the syscall
