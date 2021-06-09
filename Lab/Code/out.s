.data
_prompt: .asciiz "Please throw me a number:"
_ret: .asciiz "\n"
_data: .space 16
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
addi $sp, $sp, -8
sw $fp, 4($sp)
sw $ra, 0($sp)
move $fp, $sp
jal read
lw $fp, 4($sp)
lw $ra, 0($sp)
addi $sp, $sp, 8
la $t0, _data
addi $t0, $t0, 4
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 4
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8
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
addi $t0, $t0, 16
sw $t1, 0($t0)
