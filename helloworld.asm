
section .data
        text db "Hello, World!",10 ;assign text to the address in the memory it is located in. db = define bytes. 10 == \n

section .text
        global _start ; let the linker know the address of the _start label

_start: ; this is a label "_start:" needs to be in a program
        mov rax, 1 ; move standard output into the rax register
        mov rdi, 1 ; move standard output into the rdi register
        mov rsi, text ; move the text defined in the .data section into the rsi register
        mov rdx, 14 ; put the length of the string into the rdx register.
        syscall

        mov rax, 60 ; 60 = exit
        mov rdi, 0 ; load 0 into the rdi register to quit with no error
        syscall




























