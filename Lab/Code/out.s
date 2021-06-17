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

F4:
li $t1, 60483
sw $t1, 12($fp)
lw $t1, 12($fp)
sw $t1, 8($fp)
li $t1, 63528
sw $t1, 20($fp)
lw $t1, 20($fp)
sw $t1, 16($fp)
li $t1, 62159
sw $t1, 28($fp)
lw $t1, 28($fp)
sw $t1, 24($fp)
li $t1, 23290
sw $t1, 36($fp)
lw $t1, 36($fp)
sw $t1, 32($fp)
li $t1, 23183
sw $t1, 44($fp)
lw $t1, 44($fp)
sw $t1, 40($fp)
li $t1, 63380
sw $t1, 52($fp)
lw $t1, 52($fp)
sw $t1, 48($fp)
li $t1, 28578
sw $t1, 60($fp)
lw $t1, 60($fp)
sw $t1, 56($fp)
li $t1, 0
sw $t1, 68($fp)
li $t1, 1
sw $t1, 72($fp)
li $t1, 0
sw $t1, 80($fp)
li $t1, 1
sw $t1, 84($fp)
li $t1, 0
sw $t1, 92($fp)
li $t1, 1
sw $t1, 96($fp)
li $t1, 0
sw $t1, 104($fp)
li $t1, 1
sw $t1, 108($fp)
li $t1, 0
sw $t1, 112($fp)
li $t1, 1
sw $t1, 116($fp)
lw $t1, 116($fp)
sw $t1, 120($fp)
lw $t1, 24($fp)
lw $t2, 112($fp)
beq $t1, $t2, L5
lw $t1, 112($fp)
sw $t1, 120($fp)
L5:
lw $t1, 120($fp)
lw $t2, 32($fp)
add $t3, $t1, $t2
sw $t3, 124($fp)
li $t1, 6632
sw $t1, 128($fp)
lw $t1, 108($fp)
sw $t1, 100($fp)
lw $t1, 124($fp)
lw $t2, 128($fp)
bne $t1, $t2, L4
lw $t1, 104($fp)
sw $t1, 100($fp)
L4:
li $t1, 0
sw $t1, 136($fp)
lw $t1, 136($fp)
lw $t2, 56($fp)
sub $t3, $t1, $t2
sw $t3, 132($fp)
lw $t1, 96($fp)
sw $t1, 88($fp)
lw $t1, 100($fp)
lw $t2, 132($fp)
bne $t1, $t2, L3
lw $t1, 92($fp)
sw $t1, 88($fp)
L3:
lw $t1, 84($fp)
sw $t1, 76($fp)
lw $t1, 88($fp)
lw $t2, 16($fp)
beq $t1, $t2, L2
lw $t1, 80($fp)
sw $t1, 76($fp)
L2:
lw $t1, 72($fp)
sw $t1, 64($fp)
lw $t1, 76($fp)
lw $t2, 8($fp)
bge $t1, $t2, L1
lw $t1, 68($fp)
sw $t1, 64($fp)
L1:
li $t1, 0
sw $t1, 140($fp)
lw $t1, 64($fp)
lw $t2, 140($fp)
beq $t1, $t2, L6
li $t1, 123
sw $t1, 144($fp)
lw $t1, 144($fp)
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
L6:
li $t1, 0
sw $t1, 156($fp)
li $t1, 1
sw $t1, 160($fp)
li $t1, 0
sw $t1, 164($fp)
li $t1, 1
sw $t1, 168($fp)
lw $t1, 168($fp)
sw $t1, 172($fp)
lw $t1, 24($fp)
lw $t2, 164($fp)
beq $t1, $t2, L8
lw $t1, 164($fp)
sw $t1, 172($fp)
L8:
lw $t1, 172($fp)
lw $t2, 32($fp)
add $t3, $t1, $t2
sw $t3, 176($fp)
li $t1, 6332
sw $t1, 180($fp)
lw $t1, 160($fp)
sw $t1, 152($fp)
lw $t1, 176($fp)
lw $t2, 180($fp)
bne $t1, $t2, L7
lw $t1, 156($fp)
sw $t1, 152($fp)
L7:
lw $t1, 152($fp)
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
lw, $v0, 40($fp)
jr $ra
F5:
li $t1, 1991
sw $t1, 4($fp)
lw $t1, 4($fp)
sw $t1, 0($fp)
li $t1, 1230
sw $t1, 8($fp)
li $t1, 0
sw $t1, 16($fp)
li $t1, 1
sw $t1, 20($fp)
lw $t1, 20($fp)
sw $t1, 12($fp)
li $t1, 0
sw $t1, 28($fp)
li $t1, 1
sw $t1, 32($fp)
lw $t1, 32($fp)
sw $t1, 24($fp)
lw $t1, 0($fp)
lw $t2, 0($fp)
bne $t1, $t2, L10
lw $t1, 28($fp)
sw $t1, 24($fp)
L10:
lw $t1, 24($fp)
lw $t2, 16($fp)
bne $t1, $t2, L9
li $t1, 47129
sw $t1, 36($fp)
lw $t1, 36($fp)
lw $t2, 16($fp)
bne $t1, $t2, L9
lw $t1, 16($fp)
sw $t1, 12($fp)
L9:
lw $t1, 12($fp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 8($fp)
addi $sp, $sp, -4
sw $t1, 0($sp)
move $t0, $sp
addi $sp, $sp, -8
sw $fp, 4($sp)
sw $ra, 0($sp)
addi $sp, $sp, -188
move $fp, $sp
lw $t1, 0($t0)
sw $t1, 0($fp)
lw $t1, 4($t0)
sw $t1, 4($fp)
jal F4
move $sp, $fp
addi $sp, $sp, 188
lw $fp, 4($sp)
lw $ra, 0($sp)
addi $sp, $sp, 8
sw $v0, 40($fp)
lw $t1, 0($fp)
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
li $t1, 64344
sw $t1, 48($fp)
lw, $v0, 48($fp)
jr $ra
main:
move $t0, $sp
addi $sp, $sp, -8
sw $fp, 4($sp)
sw $ra, 0($sp)
addi $sp, $sp, -12
move $fp, $sp
move $t0, $sp
addi $sp, $sp, -8
sw $fp, 4($sp)
sw $ra, 0($sp)
addi $sp, $sp, -52
move $fp, $sp
jal F5
move $sp, $fp
addi $sp, $sp, 52
lw $fp, 4($sp)
lw $ra, 0($sp)
addi $sp, $sp, 8
sw $v0, 0($fp)
lw $t1, 0($fp)
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
sw $t1, 8($fp)
lw, $v0, 8($fp)
move $sp, $fp
addi $sp, $sp, 12
lw $fp, 4($sp)
lw $ra, 0($sp)
addi $sp, $sp, 8
jr $ra
