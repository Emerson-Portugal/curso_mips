# Int
	.data
		numero: .word 5
	.text
		main:
		
    		li $v0, 1
    		lw $a0, numero
    		syscall
		

		#Terminamos el la funcion (Ojo si no se hace infinita)
		
		li $v0, 10
		syscall

# Float

	.data
		numero: .float 5.5
	.text
		main:
		
    		li $v0, 2
    		lwc1 $f12, numero
    		syscall
		

		#Terminamos el la funcion (Ojo si no se hace infinita)
		
		li $v0, 10
		syscall

# Double


	.data
		numero: .double 5.556
	.text
		main:
		
    		li $v0, 3
    		ldc1 $f12, numero
    		syscall
		

		#Terminamos el la funcion (Ojo si no se hace infinita)
		
		li $v0, 10
		syscall


# String

	.data
		string: .asciiz "Hola Mundo"
	.text
		main:
		
		li $v0, 4
		la $a0, string
		syscall
		

		#Terminamos el la funcion (Ojo si no se hace infinita)
		
		li $v0, 10
		syscall