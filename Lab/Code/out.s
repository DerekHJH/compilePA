.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
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
move $t0, $sp
addi $sp, $sp, -8
sw $fp, 4($sp)
sw $ra, 0($sp)
addi $sp, $sp, -100
move $fp, $sp
addi $sp, $sp, -40
move $t1, $sp
sw $t1, 0($fp)
lw $t1, 0($fp)
sw $t1, 4($fp)
li $t1, 0
sw $t1, 8($fp)
li $t1, 4
sw $t1, 12($fp)
lw $t1, 8($fp)
lw $t2, 12($fp)
mul $t3, $t1, $t2
sw $t3, 16($fp)
lw $t1, 16($fp)
lw $t2, 4($fp)
add $t3, $t1, $t2
sw $t3, 20($fp)
li $t1, 10
sw $t1, 24($fp)
lw $t1, 24($fp)
lw $t2, 20($fp)
sw $t1, 0($t2)
li $t1, 1
sw $t1, 28($fp)
li $t1, 4
sw $t1, 32($fp)
lw $t1, 28($fp)
lw $t2, 32($fp)
mul $t3, $t1, $t2
sw $t3, 36($fp)
lw $t1, 36($fp)
lw $t2, 4($fp)
add $t3, $t1, $t2
sw $t3, 40($fp)
li $t1, 9
sw $t1, 44($fp)
lw $t1, 44($fp)
lw $t2, 40($fp)
sw $t1, 0($t2)
li $t1, 0
sw $t1, 48($fp)
li $t1, 4
sw $t1, 52($fp)
lw $t1, 48($fp)
lw $t2, 52($fp)
mul $t3, $t1, $t2
sw $t3, 56($fp)
lw $t1, 56($fp)
lw $t2, 4($fp)
add $t3, $t1, $t2
sw $t3, 60($fp)
lw $t1, 60($fp)
lw $t2, 0($t1)
sw $t2, 64($fp)
li $t1, 1
sw $t1, 68($fp)
li $t1, 4
sw $t1, 72($fp)
lw $t1, 68($fp)
lw $t2, 72($fp)
mul $t3, $t1, $t2
sw $t3, 76($fp)
lw $t1, 76($fp)
lw $t2, 4($fp)
add $t3, $t1, $t2
sw $t3, 80($fp)
lw $t1, 80($fp)
lw $t2, 0($t1)
sw $t2, 84($fp)
lw $t1, 64($fp)
lw $t2, 84($fp)
add $t3, $t1, $t2
sw $t3, 88($fp)
lw $t1, 88($fp)
move $a0, $t1
move $t0, $sp
addi $sp, $sp, -8
sw $fp, 4($sp)
sw $ra, 0($sp)
addi $sp, $sp, -0
move $fp, $sp
jal write
move $sp, $fp
addi $sp, $sp, 0
lw $fp, 4($sp)
lw $ra, 0($sp)
addi $sp, $sp, 8
li $t1, 0
sw $t1, 96($fp)
move $sp, $fp
addi $sp, $sp, 100
lw $fp, 4($sp)
lw $ra, 0($sp)
addi $sp, $sp, 8
lw, $v0, 96($fp)
jr $ra
