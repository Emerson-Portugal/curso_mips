# Int

	.data
		mensaje1: .asciiz "Ingresa tu Integer "
		mensaje2: .asciiz "Este es tu Integer "

	.text
		main:
		
		li $v0, 4
		la $a0, mensaje1
		syscall
		
		li $v0, 5
		move $t0, $v0	
		syscall	

		li $v0, 4
		la $a0, mensaje2
		syscall

		li $v0, 1
		move $a0, $t0
		syscall

		#Terminamos el la funcion (Ojo si no se hace infinita)
		
		li $v0, 10
		syscall

# Float

	.data
		mensaje1: .asciiz "Ingresa tu Float "
		mensaje2: .asciiz "Este es tu Float "

	.text
		main:
		
		li $v0, 4
		la $a0, mensaje1
		syscall
		
		# Ingresamos
		li $v0, 6
		syscall

		li $v0, 4
		la $a0, mensaje2
		syscall

		li $v0, 2
		add.s $f12, $f2, $f0
		syscall

		#Terminamos el la funcion (Ojo si no se hace infinita)
		
		li $v0, 10
		syscall


# Double

	.data
		mensaje1: .asciiz "Ingresa tu Double "
		mensaje2: .asciiz "Este es tu Double "

	.text
		main:
		
		li $v0, 4
		la $a0, mensaje1
		syscall
		
		# Ingresamos
		li $v0, 7
		syscall

		li $v0, 4
		la $a0, mensaje2
		syscall

		li $v0, 3
		add.d $f12, $f2, $f0
		syscall

		#Terminamos el la funcion (Ojo si no se hace infinita)
		
		li $v0, 10
		syscall


# String


	.data
		mensaje1: .asciiz "Di tu Nombre "
		mensaje2: .asciiz "Hola "
		name: .space 20

	.text
		main:
		
		li $v0, 4
		la $a0, mensaje1
		syscall
		
		# Ingresamos
		li $v0, 8
		la $a0, name
		li $a1, 20
		syscall

		li $v0, 4
		la $a0, mensaje2
		syscall

		li $v0, 4
		la $a0, name
		syscall

		#Terminamos el la funcion (Ojo si no se hace infinita)
		
		li $v0, 10
		syscall