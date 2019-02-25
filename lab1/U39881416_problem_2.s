.text
.globl int_multiply
.type int_multiply, @function
int_multiply:
  ; housekeeping
  addi sp, sp, -48
  sw s0, 44(sp)
  addi s0, sp, 48
  sw a0, -36(s0)
  sw a1, -40(s0)

  ; deals with negative inputs
  blt a1, zero, .swap
  j .mult
.swap:
  ; runs if there is one negative input (needs to be in a0)
  blt a0, zero, .invert
  mv t0, a0
  mv a0, a1
  mv a1, t0
  j .mult
.invert:
  ; runs if both inputs are negative
  sub a0, zero, a0 ; both inputs are negated
  sub a1, zero, a1 ; before they are sent to the function

.mult:
  ; .mult is the actual processing of the int_multiply function
  li t0, 0		;result is x5, t0
	li t3, 0		;i is x28, t3
.LOOP:
  	beq t3, a1, .DONE
  	add t0, t0, a0
  	addi t3, t3, 1
  	j .LOOP
.DONE:
  	mv a0, t0

  ; more housekeeping
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

  li a0, 2
  li a1, -2
  call int_multiply

  lw ra, 12(sp)
  lw s0, 8(sp)
  addi sp, sp, 16
  jr ra
