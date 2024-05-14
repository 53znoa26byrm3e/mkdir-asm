global _start

section .text
    folder db "folder_name", 0

section .data 
_start:
    call create
    jmp exit

create:
    mov rax, 83
    mov rdi, folder
    syscall

exit:
    mov rax, 60
    mov rdi, 0
    syscall
