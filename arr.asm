 
SECTION .text
global binary_array_to_number

; Returns an integer represented by the passed-in array of integers 0 or 1
; arg0         = (int32_t*) The array
; arg1         = (size_t)   The length of the array (guaranteed range of 1 inclusive to 32 inclusive)
; return value = (int32_t)  The integer represented by the array
binary_array_to_number:
  mov rax, [rdi]
  cmp rsi, 1
  je  res
  xor rax, rax
  mov rcx, 0x0

loop1:
  add eax, eax
  mov r9, [rdi+rcx*4]
  add eax, [rdi+rcx*4]
  inc rcx

  cmp rsi, rcx
  je  res
  jmp loop1
res:

  ret

