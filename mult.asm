section .text
global mult

mult:
    
    add     rdi, rdi
    mov     rax, rdi
    ret


global print
print:
    mov       rbx, rdi
    mov       rcx, rsi
    mov       rax, 1        ; system call for write
    mov       rdi, 1                  ; file handle 1 is stdout
    mov       rsi, rbx            ; address of string to output
    mov       rdx, rcx                 ; number of bytes
    syscall                           ; invoke operating system to do the write
    ret
   ; mov       rax, 0x02000001         ; system call for exit
   ; xor       rdi, rdi                ; exit code 0
   ; syscall                           ; invoke operating system to exit





section   .data
message:  db        "Hello, World", 10      ; note the newline at the end