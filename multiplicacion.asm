	.data
		numero1:  .word   5
		numero2:  .word   4

	.text
		main:
			
			lw $t1, numero1
			lw $t2, numero2		
			
			li $v0, 1
			mul $a0, $t1, $t2
			syscall


		li $v0,10
		syscall