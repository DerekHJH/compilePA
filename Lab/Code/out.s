.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
_data: .space 1576
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
addi $t0, $t0, 16
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 28
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 32
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 28
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 40
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 44
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 40
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 36
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 52
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 56
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 60
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 56
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 48
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 60
lw $t2, 0($t0)
bgt $t1, $t2, L4
la $t0, _data
addi $t0, $t0, 52
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 48
sw $t1, 0($t0)
L4:
la $t0, _data
addi $t0, $t0, 48
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 40
lw $t2, 0($t0)
beq $t1, $t2, L3
li $t1, 0
la $t0, _data
addi $t0, $t0, 68
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 72
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 76
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 72
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 64
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 76
lw $t2, 0($t0)
bgt $t1, $t2, L5
la $t0, _data
addi $t0, $t0, 68
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 64
sw $t1, 0($t0)
L5:
la $t0, _data
addi $t0, $t0, 64
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 40
lw $t2, 0($t0)
beq $t1, $t2, L3
la $t0, _data
addi $t0, $t0, 44
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 36
sw $t1, 0($t0)
L3:
la $t0, _data
addi $t0, $t0, 36
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 28
lw $t2, 0($t0)
beq $t1, $t2, L2
li $t1, 0
la $t0, _data
addi $t0, $t0, 84
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 88
sw $t1, 0($t0)
li $t1, 2147483647
la $t0, _data
addi $t0, $t0, 92
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 92
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 96
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 88
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 80
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 96
lw $t2, 0($t0)
bgt $t1, $t2, L6
la $t0, _data
addi $t0, $t0, 84
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 80
sw $t1, 0($t0)
L6:
la $t0, _data
addi $t0, $t0, 80
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 28
lw $t2, 0($t0)
beq $t1, $t2, L2
la $t0, _data
addi $t0, $t0, 32
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24
sw $t1, 0($t0)
L2:
la $t0, _data
addi $t0, $t0, 24
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16
lw $t2, 0($t0)
bne $t1, $t2, L1
li $t1, 0
la $t0, _data
addi $t0, $t0, 104
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 108
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 104
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 100
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 116
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 120
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 116
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 112
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 128
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 132
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 136
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 132
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 124
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 136
lw $t2, 0($t0)
blt $t1, $t2, L9
la $t0, _data
addi $t0, $t0, 128
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 124
sw $t1, 0($t0)
L9:
la $t0, _data
addi $t0, $t0, 124
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 116
lw $t2, 0($t0)
beq $t1, $t2, L8
li $t1, 0
la $t0, _data
addi $t0, $t0, 144
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 148
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 152
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 140
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 152
lw $t2, 0($t0)
blt $t1, $t2, L10
la $t0, _data
addi $t0, $t0, 144
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 140
sw $t1, 0($t0)
L10:
la $t0, _data
addi $t0, $t0, 140
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 116
lw $t2, 0($t0)
beq $t1, $t2, L8
la $t0, _data
addi $t0, $t0, 120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 112
sw $t1, 0($t0)
L8:
la $t0, _data
addi $t0, $t0, 112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 104
lw $t2, 0($t0)
beq $t1, $t2, L7
li $t1, 0
la $t0, _data
addi $t0, $t0, 160
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 164
sw $t1, 0($t0)
li $t1, -2147483648
la $t0, _data
addi $t0, $t0, 168
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 176
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 176
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 168
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 172
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 172
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 180
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 164
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 156
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 180
lw $t2, 0($t0)
blt $t1, $t2, L11
la $t0, _data
addi $t0, $t0, 160
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 156
sw $t1, 0($t0)
L11:
la $t0, _data
addi $t0, $t0, 156
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 104
lw $t2, 0($t0)
beq $t1, $t2, L7
la $t0, _data
addi $t0, $t0, 108
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 100
sw $t1, 0($t0)
L7:
la $t0, _data
addi $t0, $t0, 100
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16
lw $t2, 0($t0)
bne $t1, $t2, L1
la $t0, _data
addi $t0, $t0, 16
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12
sw $t1, 0($t0)
L1:
li $t1, 0
la $t0, _data
addi $t0, $t0, 184
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 184
lw $t2, 0($t0)
beq $t1, $t2, L12
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 4
lw, $v0, 0($t0)
jr $ra
L12:
la $t0, _data
addi $t0, $t0, 4
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 188
sw $t3, 0($t0)
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 188
lw, $v0, 0($t0)
jr $ra
F5:
li $t1, 0
la $t0, _data
addi $t0, $t0, 204
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 208
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 208
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 200
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 216
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 220
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 216
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 212
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 228
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 232
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 228
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 224
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 240
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 244
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 248
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 236
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 248
lw $t2, 0($t0)
bgt $t1, $t2, L16
la $t0, _data
addi $t0, $t0, 240
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 236
sw $t1, 0($t0)
L16:
la $t0, _data
addi $t0, $t0, 236
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 228
lw $t2, 0($t0)
beq $t1, $t2, L15
li $t1, 0
la $t0, _data
addi $t0, $t0, 256
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 260
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 264
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 260
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 252
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 196
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 264
lw $t2, 0($t0)
blt $t1, $t2, L17
la $t0, _data
addi $t0, $t0, 256
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 252
sw $t1, 0($t0)
L17:
la $t0, _data
addi $t0, $t0, 252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 228
lw $t2, 0($t0)
beq $t1, $t2, L15
la $t0, _data
addi $t0, $t0, 232
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 224
sw $t1, 0($t0)
L15:
la $t0, _data
addi $t0, $t0, 224
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 216
lw $t2, 0($t0)
beq $t1, $t2, L14
li $t1, 0
la $t0, _data
addi $t0, $t0, 272
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 276
sw $t1, 0($t0)
li $t1, 2147483647
la $t0, _data
addi $t0, $t0, 280
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 280
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 196
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 284
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 268
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 284
lw $t2, 0($t0)
bgt $t1, $t2, L18
la $t0, _data
addi $t0, $t0, 272
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 268
sw $t1, 0($t0)
L18:
la $t0, _data
addi $t0, $t0, 268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 216
lw $t2, 0($t0)
beq $t1, $t2, L14
la $t0, _data
addi $t0, $t0, 220
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 212
sw $t1, 0($t0)
L14:
la $t0, _data
addi $t0, $t0, 212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 204
lw $t2, 0($t0)
bne $t1, $t2, L13
li $t1, 0
la $t0, _data
addi $t0, $t0, 292
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 296
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 288
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 304
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 308
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 304
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 300
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 316
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 320
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 324
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 320
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 312
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 324
lw $t2, 0($t0)
blt $t1, $t2, L21
la $t0, _data
addi $t0, $t0, 316
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 312
sw $t1, 0($t0)
L21:
la $t0, _data
addi $t0, $t0, 312
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 304
lw $t2, 0($t0)
beq $t1, $t2, L20
li $t1, 0
la $t0, _data
addi $t0, $t0, 332
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 336
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 340
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 328
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 196
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 340
lw $t2, 0($t0)
bgt $t1, $t2, L22
la $t0, _data
addi $t0, $t0, 332
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 328
sw $t1, 0($t0)
L22:
la $t0, _data
addi $t0, $t0, 328
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 304
lw $t2, 0($t0)
beq $t1, $t2, L20
la $t0, _data
addi $t0, $t0, 308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 300
sw $t1, 0($t0)
L20:
la $t0, _data
addi $t0, $t0, 300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 292
lw $t2, 0($t0)
beq $t1, $t2, L19
li $t1, 0
la $t0, _data
addi $t0, $t0, 348
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 352
sw $t1, 0($t0)
li $t1, -2147483648
la $t0, _data
addi $t0, $t0, 356
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 364
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 364
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 356
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 360
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 360
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 196
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 368
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 352
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 344
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 368
lw $t2, 0($t0)
blt $t1, $t2, L23
la $t0, _data
addi $t0, $t0, 348
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 344
sw $t1, 0($t0)
L23:
la $t0, _data
addi $t0, $t0, 344
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 292
lw $t2, 0($t0)
beq $t1, $t2, L19
la $t0, _data
addi $t0, $t0, 296
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 288
sw $t1, 0($t0)
L19:
la $t0, _data
addi $t0, $t0, 288
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 204
lw $t2, 0($t0)
bne $t1, $t2, L13
la $t0, _data
addi $t0, $t0, 204
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 200
sw $t1, 0($t0)
L13:
li $t1, 0
la $t0, _data
addi $t0, $t0, 372
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 372
lw $t2, 0($t0)
beq $t1, $t2, L24
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 192
lw, $v0, 0($t0)
jr $ra
L24:
la $t0, _data
addi $t0, $t0, 192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 196
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 376
sw $t3, 0($t0)
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 376
lw, $v0, 0($t0)
jr $ra
F6:
li $t1, 0
la $t0, _data
addi $t0, $t0, 392
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 396
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 396
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 388
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 404
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 408
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 408
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 400
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 416
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 420
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 420
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 412
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 428
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 432
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 428
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 424
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 440
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 444
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 440
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 436
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 452
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 456
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 460
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 456
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 448
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 460
lw $t2, 0($t0)
bgt $t1, $t2, L30
la $t0, _data
addi $t0, $t0, 452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 448
sw $t1, 0($t0)
L30:
la $t0, _data
addi $t0, $t0, 448
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 440
lw $t2, 0($t0)
beq $t1, $t2, L29
li $t1, 0
la $t0, _data
addi $t0, $t0, 468
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 472
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 476
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 472
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 464
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 476
lw $t2, 0($t0)
bgt $t1, $t2, L31
la $t0, _data
addi $t0, $t0, 468
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 464
sw $t1, 0($t0)
L31:
la $t0, _data
addi $t0, $t0, 464
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 440
lw $t2, 0($t0)
beq $t1, $t2, L29
la $t0, _data
addi $t0, $t0, 444
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 436
sw $t1, 0($t0)
L29:
la $t0, _data
addi $t0, $t0, 436
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 428
lw $t2, 0($t0)
beq $t1, $t2, L28
li $t1, 0
la $t0, _data
addi $t0, $t0, 484
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 488
sw $t1, 0($t0)
li $t1, 2147483647
la $t0, _data
addi $t0, $t0, 492
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 492
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 384
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 496
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 480
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 496
lw $t2, 0($t0)
bgt $t1, $t2, L32
la $t0, _data
addi $t0, $t0, 484
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 480
sw $t1, 0($t0)
L32:
la $t0, _data
addi $t0, $t0, 480
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 428
lw $t2, 0($t0)
beq $t1, $t2, L28
la $t0, _data
addi $t0, $t0, 432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 424
sw $t1, 0($t0)
L28:
la $t0, _data
addi $t0, $t0, 424
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 416
lw $t2, 0($t0)
bne $t1, $t2, L27
li $t1, 0
la $t0, _data
addi $t0, $t0, 504
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 508
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 504
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 500
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 516
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 520
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 516
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 512
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 528
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 532
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 536
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 524
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 536
lw $t2, 0($t0)
bgt $t1, $t2, L35
la $t0, _data
addi $t0, $t0, 528
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 524
sw $t1, 0($t0)
L35:
la $t0, _data
addi $t0, $t0, 524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 516
lw $t2, 0($t0)
beq $t1, $t2, L34
li $t1, 0
la $t0, _data
addi $t0, $t0, 544
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 548
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 552
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 548
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 540
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 552
lw $t2, 0($t0)
ble $t1, $t2, L36
la $t0, _data
addi $t0, $t0, 544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 540
sw $t1, 0($t0)
L36:
la $t0, _data
addi $t0, $t0, 540
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 516
lw $t2, 0($t0)
beq $t1, $t2, L34
la $t0, _data
addi $t0, $t0, 520
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 512
sw $t1, 0($t0)
L34:
la $t0, _data
addi $t0, $t0, 512
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 504
lw $t2, 0($t0)
beq $t1, $t2, L33
li $t1, 0
la $t0, _data
addi $t0, $t0, 560
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 564
sw $t1, 0($t0)
li $t1, -2147483648
la $t0, _data
addi $t0, $t0, 568
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 576
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 576
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 568
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 572
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 572
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 380
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 580
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 564
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 556
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 580
lw $t2, 0($t0)
blt $t1, $t2, L37
la $t0, _data
addi $t0, $t0, 560
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 556
sw $t1, 0($t0)
L37:
la $t0, _data
addi $t0, $t0, 556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 504
lw $t2, 0($t0)
beq $t1, $t2, L33
la $t0, _data
addi $t0, $t0, 508
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 500
sw $t1, 0($t0)
L33:
la $t0, _data
addi $t0, $t0, 500
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 416
lw $t2, 0($t0)
bne $t1, $t2, L27
la $t0, _data
addi $t0, $t0, 416
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 412
sw $t1, 0($t0)
L27:
la $t0, _data
addi $t0, $t0, 412
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 404
lw $t2, 0($t0)
bne $t1, $t2, L26
li $t1, 0
la $t0, _data
addi $t0, $t0, 588
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 592
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 588
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 584
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 600
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 604
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 600
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 596
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 612
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 616
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 620
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 616
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 608
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 620
lw $t2, 0($t0)
ble $t1, $t2, L40
la $t0, _data
addi $t0, $t0, 612
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 608
sw $t1, 0($t0)
L40:
la $t0, _data
addi $t0, $t0, 608
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 600
lw $t2, 0($t0)
beq $t1, $t2, L39
li $t1, 0
la $t0, _data
addi $t0, $t0, 628
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 632
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 636
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 632
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 624
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 636
lw $t2, 0($t0)
bgt $t1, $t2, L41
la $t0, _data
addi $t0, $t0, 628
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 624
sw $t1, 0($t0)
L41:
la $t0, _data
addi $t0, $t0, 624
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 600
lw $t2, 0($t0)
beq $t1, $t2, L39
la $t0, _data
addi $t0, $t0, 604
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 596
sw $t1, 0($t0)
L39:
la $t0, _data
addi $t0, $t0, 596
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 588
lw $t2, 0($t0)
beq $t1, $t2, L38
li $t1, 0
la $t0, _data
addi $t0, $t0, 644
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 648
sw $t1, 0($t0)
li $t1, -2147483648
la $t0, _data
addi $t0, $t0, 652
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 660
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 660
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 652
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 656
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 384
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 664
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 648
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 640
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 664
lw $t2, 0($t0)
blt $t1, $t2, L42
la $t0, _data
addi $t0, $t0, 644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 640
sw $t1, 0($t0)
L42:
la $t0, _data
addi $t0, $t0, 640
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 588
lw $t2, 0($t0)
beq $t1, $t2, L38
la $t0, _data
addi $t0, $t0, 592
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 584
sw $t1, 0($t0)
L38:
la $t0, _data
addi $t0, $t0, 584
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 404
lw $t2, 0($t0)
bne $t1, $t2, L26
la $t0, _data
addi $t0, $t0, 404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 400
sw $t1, 0($t0)
L26:
la $t0, _data
addi $t0, $t0, 400
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 392
lw $t2, 0($t0)
bne $t1, $t2, L25
li $t1, 0
la $t0, _data
addi $t0, $t0, 672
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 676
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 672
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 668
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 684
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 688
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 684
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 680
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 696
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 700
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 696
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 692
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 708
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 712
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 716
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 712
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 704
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 716
lw $t2, 0($t0)
ble $t1, $t2, L46
la $t0, _data
addi $t0, $t0, 708
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 704
sw $t1, 0($t0)
L46:
la $t0, _data
addi $t0, $t0, 704
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 696
lw $t2, 0($t0)
beq $t1, $t2, L45
li $t1, 0
la $t0, _data
addi $t0, $t0, 724
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 728
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 732
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 728
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 720
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 732
lw $t2, 0($t0)
ble $t1, $t2, L47
la $t0, _data
addi $t0, $t0, 724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 720
sw $t1, 0($t0)
L47:
la $t0, _data
addi $t0, $t0, 720
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 696
lw $t2, 0($t0)
beq $t1, $t2, L45
la $t0, _data
addi $t0, $t0, 700
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 692
sw $t1, 0($t0)
L45:
la $t0, _data
addi $t0, $t0, 692
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 684
lw $t2, 0($t0)
beq $t1, $t2, L44
li $t1, 0
la $t0, _data
addi $t0, $t0, 740
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 744
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 748
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 744
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 736
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 748
lw $t2, 0($t0)
bne $t1, $t2, L48
la $t0, _data
addi $t0, $t0, 740
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 736
sw $t1, 0($t0)
L48:
la $t0, _data
addi $t0, $t0, 736
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 684
lw $t2, 0($t0)
beq $t1, $t2, L44
la $t0, _data
addi $t0, $t0, 688
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 680
sw $t1, 0($t0)
L44:
la $t0, _data
addi $t0, $t0, 680
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 672
lw $t2, 0($t0)
beq $t1, $t2, L43
li $t1, 0
la $t0, _data
addi $t0, $t0, 756
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 760
sw $t1, 0($t0)
li $t1, 2147483647
la $t0, _data
addi $t0, $t0, 764
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 764
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 380
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 768
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 760
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 752
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 768
lw $t2, 0($t0)
blt $t1, $t2, L49
la $t0, _data
addi $t0, $t0, 756
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 752
sw $t1, 0($t0)
L49:
la $t0, _data
addi $t0, $t0, 752
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 672
lw $t2, 0($t0)
beq $t1, $t2, L43
la $t0, _data
addi $t0, $t0, 676
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 668
sw $t1, 0($t0)
L43:
la $t0, _data
addi $t0, $t0, 668
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 392
lw $t2, 0($t0)
bne $t1, $t2, L25
la $t0, _data
addi $t0, $t0, 392
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 388
sw $t1, 0($t0)
L25:
li $t1, 0
la $t0, _data
addi $t0, $t0, 772
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 388
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 772
lw $t2, 0($t0)
beq $t1, $t2, L50
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 380
lw, $v0, 0($t0)
jr $ra
L50:
la $t0, _data
addi $t0, $t0, 380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 384
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 776
sw $t3, 0($t0)
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 776
lw, $v0, 0($t0)
jr $ra
F7:
li $t1, 0
la $t0, _data
addi $t0, $t0, 792
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 796
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 796
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 788
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 804
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 808
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 812
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 808
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 800
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 784
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 812
lw $t2, 0($t0)
beq $t1, $t2, L52
la $t0, _data
addi $t0, $t0, 804
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 800
sw $t1, 0($t0)
L52:
la $t0, _data
addi $t0, $t0, 800
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 792
lw $t2, 0($t0)
bne $t1, $t2, L51
li $t1, 0
la $t0, _data
addi $t0, $t0, 820
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 824
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 820
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 816
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 832
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 836
sw $t1, 0($t0)
li $t1, -2147483648
la $t0, _data
addi $t0, $t0, 840
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 848
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 848
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 840
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 844
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 828
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 780
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 844
lw $t2, 0($t0)
beq $t1, $t2, L54
la $t0, _data
addi $t0, $t0, 832
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 828
sw $t1, 0($t0)
L54:
la $t0, _data
addi $t0, $t0, 828
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 820
lw $t2, 0($t0)
beq $t1, $t2, L53
li $t1, 0
la $t0, _data
addi $t0, $t0, 856
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 860
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 864
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 872
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 872
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 864
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 868
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 860
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 852
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 784
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 868
lw $t2, 0($t0)
beq $t1, $t2, L55
la $t0, _data
addi $t0, $t0, 856
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 852
sw $t1, 0($t0)
L55:
la $t0, _data
addi $t0, $t0, 852
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 820
lw $t2, 0($t0)
beq $t1, $t2, L53
la $t0, _data
addi $t0, $t0, 824
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 816
sw $t1, 0($t0)
L53:
la $t0, _data
addi $t0, $t0, 816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 792
lw $t2, 0($t0)
bne $t1, $t2, L51
la $t0, _data
addi $t0, $t0, 792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 788
sw $t1, 0($t0)
L51:
li $t1, 0
la $t0, _data
addi $t0, $t0, 876
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 788
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 876
lw $t2, 0($t0)
beq $t1, $t2, L56
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 780
lw, $v0, 0($t0)
jr $ra
L56:
la $t0, _data
addi $t0, $t0, 780
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 784
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 880
sw $t3, 0($t0)
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 880
lw, $v0, 0($t0)
jr $ra
F8:
li $t1, 0
la $t0, _data
addi $t0, $t0, 896
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 900
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 900
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 892
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 908
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 912
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 916
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 912
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 904
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 884
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 916
lw $t2, 0($t0)
blt $t1, $t2, L58
la $t0, _data
addi $t0, $t0, 908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 904
sw $t1, 0($t0)
L58:
la $t0, _data
addi $t0, $t0, 904
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 896
lw $t2, 0($t0)
bne $t1, $t2, L57
li $t1, 0
la $t0, _data
addi $t0, $t0, 924
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 928
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 928
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 920
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 884
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 888
lw $t2, 0($t0)
bge $t1, $t2, L59
la $t0, _data
addi $t0, $t0, 924
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 920
sw $t1, 0($t0)
L59:
la $t0, _data
addi $t0, $t0, 920
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 896
lw $t2, 0($t0)
bne $t1, $t2, L57
la $t0, _data
addi $t0, $t0, 896
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 892
sw $t1, 0($t0)
L57:
li $t1, 0
la $t0, _data
addi $t0, $t0, 932
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 892
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 932
lw $t2, 0($t0)
beq $t1, $t2, L60
li $t1, 0
la $t0, _data
addi $t0, $t0, 936
sw $t1, 0($t0)
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 936
lw, $v0, 0($t0)
jr $ra
L60:
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 884
lw, $v0, 0($t0)
jr $ra
F9:
addi $sp, $sp, -36
move $t1, $sp
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 960
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 964
sw $t3, 0($t0)
li $t1, 3725
la $t0, _data
addi $t0, $t0, 968
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 968
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 972
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 976
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 972
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 976
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 980
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 980
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 984
sw $t3, 0($t0)
li $t1, 14363
la $t0, _data
addi $t0, $t0, 988
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 988
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 984
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 992
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 996
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 992
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 996
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1000
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1004
sw $t3, 0($t0)
li $t1, 19378
la $t0, _data
addi $t0, $t0, 1008
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1008
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1004
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 1012
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1016
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1012
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1016
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1020
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1024
sw $t3, 0($t0)
li $t1, 61335
la $t0, _data
addi $t0, $t0, 1028
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1028
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1024
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1032
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1036
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1032
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1036
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1040
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1044
sw $t3, 0($t0)
li $t1, 27469
la $t0, _data
addi $t0, $t0, 1048
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1048
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1044
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 1052
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1056
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1052
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1056
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1060
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1060
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1064
sw $t3, 0($t0)
li $t1, 52476
la $t0, _data
addi $t0, $t0, 1068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1064
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 6
la $t0, _data
addi $t0, $t0, 1072
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1076
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1076
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1080
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1080
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1084
sw $t3, 0($t0)
li $t1, 29162
la $t0, _data
addi $t0, $t0, 1088
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1084
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 7
la $t0, _data
addi $t0, $t0, 1092
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1096
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1092
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1096
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1100
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1100
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1104
sw $t3, 0($t0)
li $t1, 23155
la $t0, _data
addi $t0, $t0, 1108
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1108
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1104
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 8
la $t0, _data
addi $t0, $t0, 1112
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1116
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1116
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1120
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1124
sw $t3, 0($t0)
li $t1, 29291
la $t0, _data
addi $t0, $t0, 1128
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1128
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1124
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 19858
la $t0, _data
addi $t0, $t0, 1132
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 1140
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1140
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1132
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1136
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 1148
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 1152
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1152
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1144
sw $t1, 0($t0)
li $t1, 40825
la $t0, _data
addi $t0, $t0, 1156
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1156
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1160
sw $t3, 0($t0)
li $t1, 26110
la $t0, _data
addi $t0, $t0, 1164
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 1172
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1172
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1164
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1168
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1160
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1168
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1176
sw $t3, 0($t0)
li $t1, 60222
la $t0, _data
addi $t0, $t0, 1180
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1180
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 1184
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1184
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 1188
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1176
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1188
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1192
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1148
lw $t2, 0($t0)
bne $t1, $t2, L61
li $t1, 1
la $t0, _data
addi $t0, $t0, 1196
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1200
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1196
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1200
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1204
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1204
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1208
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1208
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1212
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 1220
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1220
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1212
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1216
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 940
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1216
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -8
sw $fp, 4($sp)
sw $ra, 0($sp)
move $fp, $sp
jal F9
lw $fp, 4($sp)
lw $ra, 0($sp)
addi $sp, $sp, 8
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 1224
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 1224
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1148
lw $t2, 0($t0)
bne $t1, $t2, L61
la $t0, _data
addi $t0, $t0, 1148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1144
sw $t1, 0($t0)
L61:
li $t1, 0
la $t0, _data
addi $t0, $t0, 1228
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1232
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1228
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1232
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1236
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1236
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1240
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1240
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1244
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 1244
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
li $t1, 1
la $t0, _data
addi $t0, $t0, 1252
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1256
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1256
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1260
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1260
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1264
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1264
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1268
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 1268
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
li $t1, 2
la $t0, _data
addi $t0, $t0, 1276
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1280
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1280
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1284
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1288
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1288
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1292
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 1292
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
li $t1, 3
la $t0, _data
addi $t0, $t0, 1300
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1304
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1304
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1308
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1312
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1312
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1316
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 1316
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
li $t1, 4
la $t0, _data
addi $t0, $t0, 1324
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1328
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1328
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1332
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1332
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1336
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1336
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1340
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 1340
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
li $t1, 5
la $t0, _data
addi $t0, $t0, 1348
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1352
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1348
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1352
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1356
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1356
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1360
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1360
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1364
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 1364
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
li $t1, 6
la $t0, _data
addi $t0, $t0, 1372
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1376
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1372
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1376
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1380
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1384
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1384
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1388
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 1388
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
li $t1, 7
la $t0, _data
addi $t0, $t0, 1396
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1400
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1396
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1400
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1404
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1408
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1408
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1412
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 1412
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
li $t1, 8
la $t0, _data
addi $t0, $t0, 1420
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1424
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1420
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1424
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1428
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1428
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1432
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1432
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1436
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 1436
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
li $t1, 11749
la $t0, _data
addi $t0, $t0, 1444
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 1452
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1444
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1448
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 1456
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 1460
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1460
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1464
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1448
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1456
lw $t2, 0($t0)
beq $t1, $t2, L62
la $t0, _data
addi $t0, $t0, 1456
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1464
sw $t1, 0($t0)
L62:
addi $sp, $sp, 36
la $t0, _data
addi $t0, $t0, 1464
lw, $v0, 0($t0)
jr $ra
F10:
li $t1, 31165
la $t0, _data
addi $t0, $t0, 1476
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 1480
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 1484
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1484
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1488
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1476
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1480
lw $t2, 0($t0)
beq $t1, $t2, L63
la $t0, _data
addi $t0, $t0, 1480
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1488
sw $t1, 0($t0)
L63:
la $t0, _data
addi $t0, $t0, 1488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1468
sw $t1, 0($t0)
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 1488
lw, $v0, 0($t0)
jr $ra
F11:
li $t1, 29937
la $t0, _data
addi $t0, $t0, 1496
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1492
sw $t1, 0($t0)
li $t1, 40143
la $t0, _data
addi $t0, $t0, 1504
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1504
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1500
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 1512
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 1516
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1516
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1508
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 1524
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 1528
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1528
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1520
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1500
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1524
lw $t2, 0($t0)
bne $t1, $t2, L65
la $t0, _data
addi $t0, $t0, 1492
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1524
lw $t2, 0($t0)
bne $t1, $t2, L65
la $t0, _data
addi $t0, $t0, 1524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1520
sw $t1, 0($t0)
L65:
la $t0, _data
addi $t0, $t0, 1520
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1512
lw $t2, 0($t0)
bne $t1, $t2, L64
li $t1, 29392
la $t0, _data
addi $t0, $t0, 1532
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1512
lw $t2, 0($t0)
bne $t1, $t2, L64
la $t0, _data
addi $t0, $t0, 1512
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1508
sw $t1, 0($t0)
L64:
li $t1, 0
la $t0, _data
addi $t0, $t0, 1540
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 1544
sw $t1, 0($t0)
li $t1, 24214
la $t0, _data
addi $t0, $t0, 1548
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1536
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1500
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1548
lw $t2, 0($t0)
bge $t1, $t2, L66
la $t0, _data
addi $t0, $t0, 1540
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1536
sw $t1, 0($t0)
L66:
addi $sp, $sp, -0
la $t0, _data
addi $t0, $t0, 1536
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1472
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1508
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1468
sw $t1, 0($t0)
addi $sp, $sp, -8
sw $fp, 4($sp)
sw $ra, 0($sp)
move $fp, $sp
jal F10
lw $fp, 4($sp)
lw $ra, 0($sp)
addi $sp, $sp, 8
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 1552
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 1492
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
la $t0, _data
addi $t0, $t0, 1500
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
li $t1, 33363
la $t0, _data
addi $t0, $t0, 1564
sw $t1, 0($t0)
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 1564
lw, $v0, 0($t0)
jr $ra
main:
addi $sp, $sp, -8
sw $fp, 4($sp)
sw $ra, 0($sp)
move $fp, $sp
jal F11
lw $fp, 4($sp)
lw $ra, 0($sp)
addi $sp, $sp, 8
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 1568
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
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
addi $t0, $t0, 1576
sw $t1, 0($t0)
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 1576
lw, $v0, 0($t0)
jr $ra
