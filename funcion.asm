	.data
		suma: .asciiz  "la suma es "  
	.text
		main:
		
			addi $t4, $zero, 5
			addi $t5, $zero, 8

			li $v0, 4
			la $a0, suma
			syscall

			jal la_suma

				
		
		li $v0, 10
		syscall


		la_suma:
			li $v0, 1
			add $a0, $t4, $t5
			syscall
			
		jr $ra