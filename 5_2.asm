	.data
	.text
	.globl main
main:
	li $t1,2
	li $s0,10
	li $t2,0
loop:	
	ble $t1,$zero,l1
	add $t2,$t2,$s0
	addi $t1,$t1,-1	
	j loop
	
l1:
	move $a0,$t2
	li $v0,1
	syscall
	li $v0,10
	syscall

	


	
	