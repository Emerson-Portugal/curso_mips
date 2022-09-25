# IF

		# -> Mayor o Menor


.data
			Es_Mayor:   .asciiz   "Es Mayor"
			Es_Menor:   .asciiz "Es Menor"

		.text

		main:
			

			addi $t0, $zero, 6
			addi $t1, $zero, 5



			# Comparacion

			bgt $t0, $t1, mayor # t0 > t1
			blt $t0, $t1, menor	 # t0 <	t1
	
		
		li $v0, 10
		syscall

			mayor:
			
			li $v0, 4
			la $a0, Es_Mayor
			syscall

			jr $ra

			menor:
			
			li $v0, 4
			la $a0, Es_Menor
			syscall


			jr $ra
