	.data

		number1: .word 5
		number2: .word 10
	.text
		main:

		lw $t0, number1
		lw $t1, number2
	
		
		li $v0, 1
		addi $a0, $t1, $t0
		syscall   

		li $v0, 10
		syscall