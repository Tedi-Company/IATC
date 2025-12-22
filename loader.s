.set MAGIC, 0x1badb002
.set FLAGS, (1<<0 | 1<<1)
.set CHECKSUM, -(MAGIC + FLAGS)

.section .multiboot
  .long MAGIC
  .long FLAGS
  .long CHECKSUM

.section .text
.external kmain
.global loader

loader:
  mov $kernel_stack, %rsp
  movl %ebx, %edi
  movl %eax, 
