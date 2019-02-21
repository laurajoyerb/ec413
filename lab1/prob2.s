int_multiply:
  addi sp, sp, -48
  sw s0, 44(sp)
  addi s0, sp, 48
  sw a0, -36(s0)

  li t0, 0		;result is x5, t0
	li t3, 0		;i is x28, t3
.LOOP:
  	beq t3, a1, .DONE
  	add t0, t0, a0
  	addi t3, t3, 1
  	j .LOOP
.DONE:
  	mv a0, t0

  lw s0, 44(sp)
  addi sp, sp, 48
  jr ra
main:
  addi sp, sp, -16
  sw ra, 12(sp)
  sw s0, 8(sp)
  addi s0, sp, 16

  li a0, -2
  li a1, 2
  call int_multiply

  lw ra, 12(sp)
  lw s0, 8(sp)
  addi sp, sp, 16
  jr ra
