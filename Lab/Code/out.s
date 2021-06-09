.data
_prompt: .asciiz "Please throw me a number:"
_ret: .asciiz "\n"
_data: .space 424
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
PARAM t1
RETURN t1
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
addi $t0, $t0, 12
sw $v0, 0($t0)
t2 := t3
addi $sp, $sp, -8
sw $fp, 4($sp)
sw $ra, 0($sp)
move $fp, $sp
jal read
lw $fp, 4($sp)
lw $ra, 0($sp)
addi $sp, $sp, 8
la $t0, _data
addi $t0, $t0, 20
sw $v0, 0($t0)
t4 := t5
li 70
li 81
li 9100
t10 := t2 / t9
li 11100
t12 := t10 * t11
t6 := t8
IF t2 == t12 GOTO L1
t6 := t7
L1:
li 130
IF t6 == t13 GOTO L2
li 150
li 161
li 17400
t18 := t2 / t17
li 19400
t20 := t18 * t19
t14 := t16
IF t2 == t20 GOTO L3
t14 := t15
L3:
li 210
IF t14 == t21 GOTO L4
li 230
li 241
li 252
t22 := t24
IF t4 == t25 GOTO L5
t22 := t23
L5:
li 260
IF t22 == t26 GOTO L6
li 2729
la $t0, _data
addi $t0, $t0, 108
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
GOTO L10
L6:
li 300
li 311
li 322
t33 := t4 / t32
li 342
t35 := t33 * t34
t29 := t31
IF t4 == t35 GOTO L8
t29 := t30
L8:
li 360
IF t29 == t36 GOTO L9
li 3730
la $t0, _data
addi $t0, $t0, 148
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
GOTO L10
L9:
li 3931
la $t0, _data
addi $t0, $t0, 156
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
L10:
GOTO L17
L4:
li 420
li 431
li 442
t41 := t43
IF t4 == t44 GOTO L12
t41 := t42
L12:
li 450
IF t41 == t45 GOTO L13
li 4628
la $t0, _data
addi $t0, $t0, 184
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
GOTO L17
L13:
li 490
li 501
li 512
t52 := t4 / t51
li 532
t54 := t52 * t53
t48 := t50
IF t4 == t54 GOTO L15
t48 := t49
L15:
li 550
IF t48 == t55 GOTO L16
li 5630
la $t0, _data
addi $t0, $t0, 224
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
GOTO L17
L16:
li 5831
la $t0, _data
addi $t0, $t0, 232
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
L17:
GOTO L33
L2:
li 610
li 621
li 634
t64 := t2 / t63
li 654
t66 := t64 * t65
t60 := t62
IF t2 == t66 GOTO L19
t60 := t61
L19:
li 670
IF t60 == t67 GOTO L20
li 690
li 701
li 712
t68 := t70
IF t4 == t71 GOTO L21
t68 := t69
L21:
li 720
IF t68 == t72 GOTO L22
li 7329
la $t0, _data
addi $t0, $t0, 292
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
GOTO L26
L22:
li 760
li 771
li 782
t79 := t4 / t78
li 802
t81 := t79 * t80
t75 := t77
IF t4 == t81 GOTO L24
t75 := t76
L24:
li 820
IF t75 == t82 GOTO L25
li 8330
la $t0, _data
addi $t0, $t0, 332
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
GOTO L26
L25:
li 8531
la $t0, _data
addi $t0, $t0, 340
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
L26:
GOTO L33
L20:
li 880
li 891
li 902
t87 := t89
IF t4 == t90 GOTO L28
t87 := t88
L28:
li 910
IF t87 == t91 GOTO L29
li 9228
la $t0, _data
addi $t0, $t0, 368
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
GOTO L33
L29:
li 950
li 961
li 972
t98 := t4 / t97
li 992
t100 := t98 * t99
t94 := t96
IF t4 == t100 GOTO L31
t94 := t95
L31:
li 1010
IF t94 == t101 GOTO L32
li 10230
la $t0, _data
addi $t0, $t0, 408
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
GOTO L33
L32:
li 10431
la $t0, _data
addi $t0, $t0, 416
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
L33:
li 1060
RETURN t106
