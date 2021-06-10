.data
_prompt: .asciiz "Please throw me a number:"
_ret: .asciiz "\n"
_data: .space 60
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

F4:
li $t1, 0
la $t0, _data
addi $t0, $t0, 12
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20
lw $t2, 0($t0)
beq $t1, $t2, L1
la $t0, _data
addi $t0, $t0, 12
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8
sw $t1, 0($t0)
L1:
li $t1, 0
la $t0, _data
addi $t0, $t0, 24
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24
lw $t2, 0($t0)
beq $t1, $t2, L2
li $t1, 1
la $t0, _data
addi $t0, $t0, 28
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 28
lw, $v0, 0($t0)
jr $ra
L2:
li $t1, 1
la $t0, _data
addi $t0, $t0, 32
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 32
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 36
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 4
lw $t1, 0($t0)
sw $t1, 0($sp)
addi $sp, $sp, -8
sw $fp, 4($sp)
sw $ra, 0($sp)
move $fp, $sp
jal F4
lw $fp, 4($sp)
lw $ra, 0($sp)
addi $sp, $sp, 8
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 40
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 4
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 40
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 44
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 44
lw, $v0, 0($t0)
jr $ra
main:
li $t1, 2
la $t0, _data
addi $t0, $t0, 48
sw $t1, 0($t0)
addi $sp, $sp, -0
addi $sp, $sp, -8
sw $fp, 4($sp)
sw $ra, 0($sp)
move $fp, $sp
jal F4
lw $fp, 4($sp)
lw $ra, 0($sp)
addi $sp, $sp, 8
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 52
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 52
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
addi $t0, $t0, 60
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 60
lw, $v0, 0($t0)
jr $ra
