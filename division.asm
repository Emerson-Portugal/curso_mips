
		.data
			numero1: .word 10
			numero2: .word 5
		.text
			main:
			
				
				lw $t1, numero1
				lw $t2, numero2
				
				li $v0, 1
				div $a0, $t1, $t2
				syscall

				mflo $t6     # Cociente de la division
				mfhi $t7     # Resto de la division

				li $v0, 1
				move $a0, $t6
				syscall


				li $v0, 1
				move $a0, $t7
				syscall
				
			li $v0, 10
			syscall