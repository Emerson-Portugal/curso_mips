.data

			newLine:   .asciiz " \n"
			end: .asciiz "Fin del Programa"

		.text

		main:
			

			addi $t0, $zero, 6
			
			while:
			
				bgt $t0, 12, exit
				jal numero
				addi $t0, $t0,1 # t0 = t0 + 1
				
			j while
				
				
					
			exit:
			
				li $v0, 4
				la $a0, end
				syscall
	
		
		li $v0, 10
		syscall

			numero:
			
			li $v0, 1
			move $a0, $t0
			syscall
			
			li $v0, 4
			la $a0, newLine
			syscall

			jr $ra