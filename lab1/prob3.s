int_multiply:
  addi sp, sp, -48
  sw s0, 44(sp)
  addi s0, sp, 48
  sw a0, -36(s0)

  li t0, 0		;result is x5, t0
	li t1, 0		;i is x28, t1
.LOOP:
  	beq t1, a1, .DONE
  	add t0, t0, a0
  	addi t1, t1, 1
  	j .LOOP
.DONE:
  	mv a0, t0

  lw s0, 44(sp)
  addi sp, sp, 48
  jr ra

factorial:
  addi sp, sp, -48
  sw s0, 44(sp)
  addi s0, sp, 48
  sw a0, -36(s0)

  add s1, zero, ra ; stores return address

  mv t2, a0 ;moves n argument to temp
  li t3, 1  ;product is initialized as 1
.while:
  bge zero, t2, .end
  add a0, zero, t3 ; stores product
  add a1, zero, t2 ; stores n
  call int_multiply
  add t3, zero, a0 ; moves int_multiply result to product
  addi t2, t2, -1
  j .while
.end:
  mv a0, t3

  ;lw s0, 44(sp)
  addi sp, sp, 48
  add ra, zero, s1 ; loads return address back
  jr ra

main:
  addi sp, sp, -48
  sw ra, 12(sp)
  sw s0, 8(sp)
  addi s0, sp, 16

  li a0, 8
  call factorial

  lw ra, 12(sp)
  lw s0, 8(sp)
  addi sp, sp, 16
  jr ra
