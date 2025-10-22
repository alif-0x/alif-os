.section .multiboot
  .long 0x1BADB002
  .long 0x0
  .long -(0x1BADB002 + 0x0)

.section .text
.global _start
.extern kernel_main

_start:
    cli
    call kernel_main
.hang:
    hlt
    jmp .hang
