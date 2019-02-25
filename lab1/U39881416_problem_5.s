.text
.globl fib_r
.type fib_r, @function
fib_r:
  addi sp, sp, -48
  sw s0, 44(sp)
  addi s0, sp, 48
  sw a0, -36(s0)
  sw ra, -32(s0)

  li t0, 1
  bge t0, a0, .return
  addi a0, a0, -1

  call fib_r
  mv t0, a0
  sw t0, -28(s0)

  lw a0, -36(s0)
  addi a0, a0, -2
  call fib_r
  lw t0, -28(s0)

  add t1, t0, a0
  mv a0, t1

  lw ra, -32(s0)

  lw s0, 44(sp)
  addi sp, sp, 48
  jr ra

.return:
  lw ra, -32(s0)
  lw s0, 44(sp)
  addi sp, sp, 48
  jr ra

.text
.globl main
.type main, @function
main:
  addi sp, sp, -16
  sw ra, 12(sp)
  sw s0, 8(sp)
  addi s0, sp, 16

  li a0, 1
  call fib_r
  mv a2, a0

  li a0, 3
  call fib_r
  mv a3, a0

  li a0, 8
  call fib_r
  mv a4, a0

  li a0, 17
  call fib_r
  mv a5, a0

  lw ra, 12(sp)
  lw s0, 8(sp)
  addi sp, sp, 16
  jr ra
