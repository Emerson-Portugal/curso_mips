# IF

		# -> Igual o Diderente


		.data
			son_iguales:   .asciiz   "Son iguales"
			son_diferentes:   .asciiz "Son diferentes"

		.text

		main:
			

			addi $t0, $zero, 5
			addi $t1, $zero, 5



			# Comparacion

			beq $t0, $t1, iguales
			bne $t0, $t1, diferentes
	
		
		li $v0, 10
		syscall

			iguales:
			
			li $v0, 4
			la $a0, son_iguales
			syscall

			jr $ra

			diferentes:
			
			li $v0, 4
			la $a0, son_diferentes
			syscall


			jr $ra