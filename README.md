# Curso de MIPS



## Estructura de Nuestro entorno de Trabajo:

```mips
.data

.text
main:
    li $v0, 10
    syscall
```
## Tipos de variable:

### Int

```mips
.data
    numero: .word 5
.text
main:
    li $v0, 1
    lw $a0, numero
    syscall
    
    li $v0, 10
    syscall
```

### Float


```mips
.data
    numero: .float 5.5
.text
main:
    li $v0, 2
    lwc1 $f12, numero
    syscall
    
    li $v0, 10
    syscall
```

### Double

```mips
.data
    numero: .double 5.556
.text
main:
    li $v0, 3
    ldc1 $f12, numero
    syscall
    
    li $v0, 10
    syscall
```


### String

```mips
.data
    string: .asciiz "Hola Mundo"
.text
main:
    li $v0, 4
    la $a0, string
    syscall
    
    li $v0, 10
    syscall
```

## Como Ingresar los tipos de variable:

### Int

```mips
.data
    mensaje1: .asciiz "Ingresa tu Integer "
    mensaje2: .asciiz "Este es tu Integer "
.text
main:
    li $v0, 4
    la $a0, mensaje1
    syscall
    
    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, mensaje2
    syscall

    li $v0, 1
    move $a0, $t0
    syscall
    
    li $v0, 10
    syscall
```

### Float


```mips
.data
    mensaje1: .asciiz "Ingresa tu Float "
    mensaje2: .asciiz "Este es tu Float "
.text
main:
    li $v0, 4
    la $a0, mensaje1
    syscall
    
    li $v0, 6
    syscall

    li $v0, 4
    la $a0, mensaje2
    syscall

    li $v0, 2
    add.s $f12, $f0, $f2
    syscall
    
    li $v0, 10
    syscall
```

### Double

```mips
.data
    mensaje1: .asciiz "Ingresa tu Double "
    mensaje2: .asciiz "Este es tu Double "
.text
main:
    li $v0, 4
    la $a0, mensaje1
    syscall
    
    li $v0, 7
    syscall

    li $v0, 4
    la $a0, mensaje2
    syscall

    li $v0, 3
    add.d $f12, $f0, $f2
    syscall
    
    li $v0, 10
    syscall
```

### String

```mips
.data
    mensaje1: .asciiz "Di tu Nombre "
    mensaje2: .asciiz "Hola "
    name: .space 20
.text
main:
    li $v0, 4
    la $a0, mensaje1
    syscall
    
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
    
    li $v0, 10
    syscall
```

## Operaciones Matemeticas para INT:

### Suma:

```mips
.data
    number1: .word 5
    number2: .word 10
.text
main:
    lw $t0, number1
    lw $t1, number2

    li $v0, 1
    add $a0, $t1, $t0
    syscall

    li $v0, 10
    syscall
```

### Resta:

```mips
.data
    numero1: .word 5
    numero2: .word 4
.text
main:
    lw $t1, numero1
    lw $t2, numero2

    li $v0, 1
    sub $a0, $t1, $t2
    syscall

    li $v0, 10
    syscall
```

### Multiplicación:

```mips
.data
    numero1: .word 5
    numero2: .word 4
.text
main:
    lw $t1, numero1
    lw $t2, numero2

    li $v0, 1
    mul $a0, $t1, $t2
    syscall

    li $v0, 10
    syscall
```

### División:

```mips
.data
    numero1: .word 10
    numero2: .word 5
.text
main:
    lw $t1, numero1
    lw $t2, numero2

    li $v0, 1
    div $t1, $t2
    mflo $a0
    syscall

    li $v0, 10
    syscall
```
## Funciones

```mips
.data
    suma: .asciiz "La suma es "
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
    add $v0, $t4, $t5
    jr $ra

```
## Condicionales

### Igual o Diferente

```mips
.data
    son_iguales: .asciiz "Son iguales"
    son_diferentes: .asciiz "Son diferentes"
.text
main:
    addi $t0, $zero, 5
    addi $t1, $zero, 5

    # Comparación
    beq $t0, $t1, iguales
    bne $t0, $t1, diferentes

    li $v0, 10
    syscall

iguales:
    li $v0, 4
    la $a0, son_iguales
    syscall

    j fin

diferentes:
    li $v0, 4
    la $a0, son_diferentes
    syscall

fin:
    li $v0, 10
    syscall
```

### Mayor o Menor:

```mips
.data
    es_mayor: .asciiz "Es mayor"
    es_menor: .asciiz "Es menor"
.text
main:
    addi $t0, $zero, 6
    addi $t1, $zero, 5

    # Comparación
    bgt $t0, $t1, mayor
    blt $t0, $t1, menor

    li $v0, 10
    syscall

mayor:
    li $v0, 4
    la $a0, es_mayor
    syscall

    j fin

menor:
    li $v0, 4
    la $a0, es_menor
    syscall

fin:
    li $v0, 10
    syscall
```
## Bucles

### While:

```mips
.data
    newLine: .asciiz "\n"
    end: .asciiz "Fin del Programa"
.text
main:
    addi $t0, $zero, 6

while:
    bgt $t0, 12, fin
    jal numero
    addi $t0, $t0, 1 # t0 = t0 + 1
    j while

fin:
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
```

### do-while:

```mips
.data
    newLine: .asciiz "\n"
.text
main:
    li $t0, 0         # Inicialización de la variable de control
    li $t1, 10        # Valor límite del bucle

do_while_loop:
    # Código a ejecutar en cada iteración del bucle
    addi $t0, $t0, 1        # Incrementa la variable de control

    beq $t0, $t1, end_loop  # Compara si la variable de control es igual al límite
    j do_while_loop         # Salta al comienzo del bucle

end_loop:
    li $v0, 10
    syscall
```

### For:

```mips
.data
    newLine: .asciiz "\n"
.text
main:
    li $t0, 0         # Inicialización de la variable de control
    li $t1, 10        # Valor límite del bucle

for_loop:
    beq $t0, $t1, end_loop  # Compara si la variable de control es igual al límite
    # Código a ejecutar en cada iteración del bucle
    addi $t0, $t0, 1        # Incrementa la variable de control
    j for_loop              # Salta al comienzo del bucle

end_loop:
    li $v0, 10
    syscall
```


## Ejercicio 

### Calculadora 

```mips
.data
    newLine: .asciiz "\n"
    mensaje1: .asciiz "Ingrese el primer número: "
    mensaje2: .asciiz "Ingrese el segundo número: "
    mensaje3: .asciiz "Ingrese la operación (1: suma, 2: resta, 3: multiplicación, 4: división): "
    resultado: .asciiz "El resultado es: "
    errorDivisionCero: .asciiz "¡Error! No se puede dividir entre cero."

.text
main:
    # Solicitar el primer número al usuario
    li $v0, 4
    la $a0, mensaje1
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    # Solicitar el segundo número al usuario
    li $v0, 4
    la $a0, mensaje2
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    # Solicitar la operación al usuario
    li $v0, 4
    la $a0, mensaje3
    syscall

    li $v0, 5
    syscall
    move $t2, $v0

    # Llamar a la función operacion con los datos ingresados
    jal operacion

    # Imprimir el resultado
    li $v0, 4
    la $a0, resultado
    syscall

    move $a0, $t3
    li $v0, 1
    syscall

    li $v0, 10
    syscall

# Función que realiza la operación solicitada
operacion:
    # Guardar los registros de interés en la pila
    addi $sp, $sp, -12
    sw $ra, 0($sp)
    sw $s0, 4($sp)
    sw $s1, 8($sp)

    # Guardar los parámetros en registros
    move $s0, $a0
    move $s1, $a1

    # Variables locales
    move $t3, $zero  # Resultado de la operación

    # Realizar la operación según el valor de $t2 (1: suma, 2: resta, 3: multiplicación, 4: división)
    beq $t2, 1, suma
    beq $t2, 2, resta
    beq $t2, 3, multiplicacion
    beq $t2, 4, division

    j fin_operacion

suma:
    add $t3, $s0, $s1  # Suma $s0 + $s1
    j fin_operacion

resta:
    sub $t3, $s0, $s1  # Resta $s0 - $s1
    j fin_operacion

multiplicacion:
    mul $t3, $s0, $s1  # Multiplicación $s0 * $s1
    j fin_operacion

division:
    beqz $s1, division_cero # Verificar si el divisor es cero
    div $s0, $s1
    mflo $t3  # Guardar el cociente en $t3
    j fin_operacion

division_cero:
    li $v0, 4
    la $a0, errorDivisionCero
    syscall
    j fin_operacion

fin_operacion:
    # Recuperar los registros de la pila
    lw $ra, 0($sp)
    lw $s0, 4($sp)
    lw $s1, 8($sp)
    addi $sp, $sp, 12

    # Retornar al punto de llamada
    jr $ra

```
