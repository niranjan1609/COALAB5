	.data
	.text
	.globl main
main:	
	li $t3,12
	li $t1,1
	li $t2,100
	li $t4,0
	beq $t3,$zero,l1
	beq $t3,$t1,l2
	move $t4,$t2
	move $a0,$t4
	li $v0,1
	syscall
	li $v0,10
	syscall
l1:
	add $t4,$t4,1
	move $a0,$t4
	li $v0,1
	syscall
	li $v0,10
	syscall
l2:
	addi $t4,$t4,-1
	move $a0,$t4
	li $v0,1
	syscall
	li $v0,10
	syscall

	
	