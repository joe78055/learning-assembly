;TODO ADD COMMENTS

section .data
        textOne db "This is the first Line of Text!",10
        textTwo db "This is the second Line of Text!",10

section .text
        global _start

_start:
        call _printTextOne
        call _printTextTwo
        mov rax, 60
        mov rdi, 0
        syscall


_printTextOne:
        mov rax, 1
        mov rdi, 1
        mov rsi, textOne
        mov rdx, 32
        syscall
        ret

_printTextTwo:
        mov rax, 1
        mov rdi, 1
        mov rsi, textTwo
        mov rdx, 33
        syscall
        ret