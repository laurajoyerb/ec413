fib_nr:
  addi sp, sp, -48
  sw s0, 44(sp)
  addi s0, sp, 48
  sw a0, -36(s0)

  li t0, 0  ;term1
  li t1, 1  ;term2
  li t2, 1  ;i

.for:
  blt a0, t2, .done
  add t3, t0, t1  ; nextTerm = term1 + term2
  add t0, zero, t1
  add t1, zero, t3
  addi t2, t2, 1
  j .for
.done:
  mv a0, t0

  lw s0, 44(sp)
  addi sp, sp, 48
  jr ra

main:
  addi sp, sp, -48
  sw ra, 12(sp)
  sw s0, 8(sp)
  addi s0, sp, 16

  li a0, 1
  call fib_nr
  mv a2, a0

  li a0, 3
  call fib_nr
  mv a3, a0

  li a0, 8
  call fib_nr
  mv a4, a0

  li a0, 17
  call fib_nr
  mv a5, a0

  lw ra, 12(sp)
  lw s0, 8(sp)
  addi sp, sp, 16
  jr ra
