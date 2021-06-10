.data
_prompt: .asciiz "Please throw me a number:"
_ret: .asciiz "\n"
_data: .space 100
.globl main
.text
read:
li $v0, 4
la $a0, _prompt
syscall
li $v0, 5
syscall
jr $ra

write:
li $v0, 1
syscall
li $v0, 4
la $a0, _ret
syscall
move $v0, $0
jr $ra

main:
addi $sp, $sp, -40
move $t1, $sp
la $t0, _data
addi $t0, $t0, 4
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 12
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 16
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24
sw $t3, 0($t0)
li $t1, 10
la $t0, _data
addi $t0, $t0, 28
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 28
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 32
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 36
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 32
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 36
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 40
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 40
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 44
sw $t3, 0($t0)
li $t1, 9
la $t0, _data
addi $t0, $t0, 48
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 48
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 44
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 0
la $t0, _data
addi $t0, $t0, 52
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 56
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 52
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 56
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 60
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 60
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 64
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 64
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 68
sw $t2, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 72
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 76
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 72
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 76
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 80
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 80
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 84
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 84
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 88
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 68
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 88
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 92
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 92
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -8
sw $fp, 4($sp)
sw $ra, 0($sp)
move $fp, $sp
jal write
lw $fp, 4($sp)
lw $ra, 0($sp)
addi $sp, $sp, 8
li $t1, 0
la $t0, _data
addi $t0, $t0, 100
sw $t1, 0($t0)
addi $sp, $sp, 40
la $t0, _data
addi $t0, $t0, 100
lw, $v0, 0($t0)
jr $ra
