.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
_data: .space 25536
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
addi $sp, $sp, -40
move $t1, $sp
la $t0, _data
addi $t0, $t0, 960
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 968
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 972
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 968
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 972
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 976
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 976
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 980
sw $t3, 0($t0)
li $t1, 47010
la $t0, _data
addi $t0, $t0, 984
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 984
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 980
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 988
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 992
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 988
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 992
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 996
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 996
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1000
sw $t3, 0($t0)
li $t1, 53015
la $t0, _data
addi $t0, $t0, 1004
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1004
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1000
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 1008
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1012
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1008
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1012
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1016
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1016
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1020
sw $t3, 0($t0)
li $t1, 5443
la $t0, _data
addi $t0, $t0, 1024
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1024
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1020
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 1028
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1032
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1028
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1032
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1036
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1036
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1040
sw $t3, 0($t0)
li $t1, 22146
la $t0, _data
addi $t0, $t0, 1044
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1044
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1040
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1048
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1052
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1048
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1052
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1056
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1056
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1060
sw $t3, 0($t0)
li $t1, 34614
la $t0, _data
addi $t0, $t0, 1064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1064
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1060
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 1068
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1072
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1076
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1076
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1080
sw $t3, 0($t0)
li $t1, 16958
la $t0, _data
addi $t0, $t0, 1084
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1084
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1080
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 6
la $t0, _data
addi $t0, $t0, 1088
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1092
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1092
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1096
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1096
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1100
sw $t3, 0($t0)
li $t1, 49608
la $t0, _data
addi $t0, $t0, 1104
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1104
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1100
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 7
la $t0, _data
addi $t0, $t0, 1108
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1112
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1108
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1112
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1116
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1116
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1120
sw $t3, 0($t0)
li $t1, 60504
la $t0, _data
addi $t0, $t0, 1124
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1124
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1120
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 8
la $t0, _data
addi $t0, $t0, 1128
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1132
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1128
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1132
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1136
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1136
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1140
sw $t3, 0($t0)
li $t1, 32856
la $t0, _data
addi $t0, $t0, 1144
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1144
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1140
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 9
la $t0, _data
addi $t0, $t0, 1148
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1152
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1152
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1156
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1156
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1160
sw $t3, 0($t0)
li $t1, 53066
la $t0, _data
addi $t0, $t0, 1164
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1164
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1160
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1168
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1168
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1172
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1172
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1176
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1176
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1180
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 952
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1180
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1184
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1184
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 1188
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1192
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1188
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1192
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1196
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1196
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1200
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1200
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1204
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 1204
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 1212
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1216
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1216
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1220
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1220
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1224
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1224
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1228
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 1228
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 1236
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1240
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1236
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1240
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1244
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1248
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1248
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1252
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 1252
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 1260
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1264
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1260
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1264
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1268
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1272
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1272
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1276
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 1276
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 1284
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1288
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1288
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1292
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1296
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1296
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1300
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 1300
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 1308
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1312
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1312
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1316
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1316
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1320
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1320
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1324
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 1324
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 6
la $t0, _data
addi $t0, $t0, 1332
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1336
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1332
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1336
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1340
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1340
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1344
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1344
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1348
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 1348
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 7
la $t0, _data
addi $t0, $t0, 1356
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1360
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1356
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1360
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1364
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1364
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1368
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1368
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1372
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 1372
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 8
la $t0, _data
addi $t0, $t0, 1380
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1384
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1384
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1388
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1388
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1392
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1392
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1396
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 1396
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 9
la $t0, _data
addi $t0, $t0, 1404
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1408
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1408
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1412
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1412
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1416
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1416
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1420
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 1420
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 1432
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 1436
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1440
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1440
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1444
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1444
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1448
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1448
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1452
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 1460
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1460
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1452
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1456
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 1464
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 1468
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1468
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1472
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1464
lw $t2, 0($t0)
beq $t1, $t2, L62
la $t0, _data
addi $t0, $t0, 1464
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1472
sw $t1, 0($t0)
L62:
li $t1, 0
la $t0, _data
addi $t0, $t0, 1480
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1480
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1472
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1476
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1456
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1476
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 1484
sw $t3, 0($t0)
li $t1, 24937
la $t0, _data
addi $t0, $t0, 1488
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 1496
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 1500
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1500
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1492
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 1508
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 1512
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1512
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1504
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1508
lw $t2, 0($t0)
bne $t1, $t2, L64
li $t1, 7196
la $t0, _data
addi $t0, $t0, 1516
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1516
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1508
lw $t2, 0($t0)
bne $t1, $t2, L64
la $t0, _data
addi $t0, $t0, 1508
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1504
sw $t1, 0($t0)
L64:
la $t0, _data
addi $t0, $t0, 1504
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1496
lw $t2, 0($t0)
bne $t1, $t2, L63
la $t0, _data
addi $t0, $t0, 944
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1496
lw $t2, 0($t0)
bne $t1, $t2, L63
la $t0, _data
addi $t0, $t0, 1496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1492
sw $t1, 0($t0)
L63:
li $t1, 60795
la $t0, _data
addi $t0, $t0, 1520
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1524
sw $t3, 0($t0)
li $t1, 36660
la $t0, _data
addi $t0, $t0, 1528
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1528
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1532
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 940
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
li $t1, 9
la $t0, _data
addi $t0, $t0, 1536
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1540
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1536
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1540
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1544
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 964
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1548
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1548
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 1552
sw $t2, 0($t0)
li $t1, 61909
la $t0, _data
addi $t0, $t0, 1556
sw $t1, 0($t0)
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 940
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 944
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 948
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 952
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 956
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 1556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1552
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1492
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 1560
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 1488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1560
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1564
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1436
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1428
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1484
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1564
lw $t2, 0($t0)
blt $t1, $t2, L61
la $t0, _data
addi $t0, $t0, 1432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1428
sw $t1, 0($t0)
L61:
addi $sp, $sp, 40
la $t0, _data
addi $t0, $t0, 1428
lw, $v0, 0($t0)
jr $ra
F10:
addi $sp, $sp, -40
move $t1, $sp
la $t0, _data
addi $t0, $t0, 1572
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1572
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
sw $t1, 0($t0)
addi $sp, $sp, -28
move $t1, $sp
la $t0, _data
addi $t0, $t0, 1580
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1580
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
sw $t1, 0($t0)
addi $sp, $sp, -36
move $t1, $sp
la $t0, _data
addi $t0, $t0, 1588
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1588
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
sw $t1, 0($t0)
addi $sp, $sp, -40
move $t1, $sp
la $t0, _data
addi $t0, $t0, 1596
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1596
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
sw $t1, 0($t0)
addi $sp, $sp, -36
move $t1, $sp
la $t0, _data
addi $t0, $t0, 1604
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1604
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
sw $t1, 0($t0)
addi $sp, $sp, -28
move $t1, $sp
la $t0, _data
addi $t0, $t0, 1612
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1612
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1616
sw $t1, 0($t0)
addi $sp, $sp, -36
move $t1, $sp
la $t0, _data
addi $t0, $t0, 1620
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1620
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
sw $t1, 0($t0)
addi $sp, $sp, -20
move $t1, $sp
la $t0, _data
addi $t0, $t0, 1628
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1628
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1632
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 1636
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1640
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1636
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1640
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1644
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1648
sw $t3, 0($t0)
li $t1, 13694
la $t0, _data
addi $t0, $t0, 1652
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1652
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1648
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 1656
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1660
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1660
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1664
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1668
sw $t3, 0($t0)
li $t1, 49297
la $t0, _data
addi $t0, $t0, 1672
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1672
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1668
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 1676
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1680
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1676
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1680
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1684
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1684
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1688
sw $t3, 0($t0)
li $t1, 31485
la $t0, _data
addi $t0, $t0, 1692
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1692
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1688
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 1696
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1700
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1696
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1700
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1704
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1704
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1708
sw $t3, 0($t0)
li $t1, 44758
la $t0, _data
addi $t0, $t0, 1712
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1712
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1708
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1716
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1720
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1716
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1720
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1724
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1728
sw $t3, 0($t0)
li $t1, 20490
la $t0, _data
addi $t0, $t0, 1732
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1732
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1728
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 1736
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1740
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1736
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1740
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1744
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1744
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1748
sw $t3, 0($t0)
li $t1, 47454
la $t0, _data
addi $t0, $t0, 1752
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1752
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1748
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 6
la $t0, _data
addi $t0, $t0, 1756
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1760
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1756
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1760
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1764
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1764
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1768
sw $t3, 0($t0)
li $t1, 17518
la $t0, _data
addi $t0, $t0, 1772
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1772
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1768
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 7
la $t0, _data
addi $t0, $t0, 1776
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1780
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1776
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1780
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1784
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1784
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1788
sw $t3, 0($t0)
li $t1, 26982
la $t0, _data
addi $t0, $t0, 1792
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1788
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 8
la $t0, _data
addi $t0, $t0, 1796
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1800
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1796
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1800
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1804
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1804
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1808
sw $t3, 0($t0)
li $t1, 48919
la $t0, _data
addi $t0, $t0, 1812
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1812
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1808
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 9
la $t0, _data
addi $t0, $t0, 1816
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1820
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1820
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1824
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1824
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1828
sw $t3, 0($t0)
li $t1, 25776
la $t0, _data
addi $t0, $t0, 1832
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1832
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1828
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 21886
la $t0, _data
addi $t0, $t0, 1840
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1840
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1836
sw $t1, 0($t0)
li $t1, 57705
la $t0, _data
addi $t0, $t0, 1848
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1848
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1844
sw $t1, 0($t0)
li $t1, 46744
la $t0, _data
addi $t0, $t0, 1856
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1856
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1852
sw $t1, 0($t0)
li $t1, 8765
la $t0, _data
addi $t0, $t0, 1864
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1864
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1860
sw $t1, 0($t0)
li $t1, 39179
la $t0, _data
addi $t0, $t0, 1872
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1872
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1868
sw $t1, 0($t0)
li $t1, 34223
la $t0, _data
addi $t0, $t0, 1880
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1880
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1876
sw $t1, 0($t0)
li $t1, 14208
la $t0, _data
addi $t0, $t0, 1888
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1888
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1884
sw $t1, 0($t0)
li $t1, 61325
la $t0, _data
addi $t0, $t0, 1896
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1896
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1892
sw $t1, 0($t0)
li $t1, 3301
la $t0, _data
addi $t0, $t0, 1904
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1904
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1900
sw $t1, 0($t0)
li $t1, 31166
la $t0, _data
addi $t0, $t0, 1912
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1912
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1908
sw $t1, 0($t0)
li $t1, 45397
la $t0, _data
addi $t0, $t0, 1920
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1920
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1916
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 1924
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1928
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1924
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1928
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1932
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1932
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1936
sw $t3, 0($t0)
li $t1, 63805
la $t0, _data
addi $t0, $t0, 1940
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1940
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1936
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 1944
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1944
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1948
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1952
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1952
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1956
sw $t3, 0($t0)
li $t1, 64023
la $t0, _data
addi $t0, $t0, 1960
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1956
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 1964
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1968
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1964
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1968
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1972
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1972
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1976
sw $t3, 0($t0)
li $t1, 32927
la $t0, _data
addi $t0, $t0, 1980
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1980
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1976
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 1984
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 1988
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1984
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1988
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1992
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 1992
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 1996
sw $t3, 0($t0)
li $t1, 23207
la $t0, _data
addi $t0, $t0, 2000
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1996
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2004
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2008
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2004
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2008
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2012
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2012
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2016
sw $t3, 0($t0)
li $t1, 5683
la $t0, _data
addi $t0, $t0, 2020
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2016
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 2024
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2028
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2024
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2028
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2032
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2032
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2036
sw $t3, 0($t0)
li $t1, 28186
la $t0, _data
addi $t0, $t0, 2040
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2036
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 6
la $t0, _data
addi $t0, $t0, 2044
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2048
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2044
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2048
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2052
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2052
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2056
sw $t3, 0($t0)
li $t1, 59867
la $t0, _data
addi $t0, $t0, 2060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2060
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2056
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 18332
la $t0, _data
addi $t0, $t0, 2068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2064
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 2072
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2076
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2076
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2080
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2080
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2084
sw $t3, 0($t0)
li $t1, 28188
la $t0, _data
addi $t0, $t0, 2088
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2084
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 2092
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2096
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2092
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2096
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2100
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2100
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2104
sw $t3, 0($t0)
li $t1, 56240
la $t0, _data
addi $t0, $t0, 2108
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2108
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2104
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 2112
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2116
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2116
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2120
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2124
sw $t3, 0($t0)
li $t1, 32026
la $t0, _data
addi $t0, $t0, 2128
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2128
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2124
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 2132
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2136
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2132
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2136
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2140
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2140
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2144
sw $t3, 0($t0)
li $t1, 11949
la $t0, _data
addi $t0, $t0, 2148
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2144
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2152
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2156
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2152
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2156
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2160
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2160
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2164
sw $t3, 0($t0)
li $t1, 22190
la $t0, _data
addi $t0, $t0, 2168
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2168
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2164
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 2172
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2176
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2172
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2176
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2180
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2180
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2184
sw $t3, 0($t0)
li $t1, 11249
la $t0, _data
addi $t0, $t0, 2188
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2188
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2184
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 6
la $t0, _data
addi $t0, $t0, 2192
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2196
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2196
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2200
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2204
sw $t3, 0($t0)
li $t1, 32440
la $t0, _data
addi $t0, $t0, 2208
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2208
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2204
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 7
la $t0, _data
addi $t0, $t0, 2212
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2216
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2216
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2220
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2220
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2224
sw $t3, 0($t0)
li $t1, 4108
la $t0, _data
addi $t0, $t0, 2228
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2228
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2224
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 8
la $t0, _data
addi $t0, $t0, 2232
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2236
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2232
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2236
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2240
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2240
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2244
sw $t3, 0($t0)
li $t1, 28767
la $t0, _data
addi $t0, $t0, 2248
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2248
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2244
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 59422
la $t0, _data
addi $t0, $t0, 2256
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2256
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2252
sw $t1, 0($t0)
li $t1, 53028
la $t0, _data
addi $t0, $t0, 2264
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2264
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2260
sw $t1, 0($t0)
li $t1, 54543
la $t0, _data
addi $t0, $t0, 2272
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2272
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2268
sw $t1, 0($t0)
li $t1, 15772
la $t0, _data
addi $t0, $t0, 2280
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2280
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2276
sw $t1, 0($t0)
li $t1, 45197
la $t0, _data
addi $t0, $t0, 2288
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2288
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2284
sw $t1, 0($t0)
li $t1, 35751
la $t0, _data
addi $t0, $t0, 2296
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2296
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2292
sw $t1, 0($t0)
li $t1, 24537
la $t0, _data
addi $t0, $t0, 2304
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2304
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2300
sw $t1, 0($t0)
li $t1, 18840
la $t0, _data
addi $t0, $t0, 2312
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2312
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2308
sw $t1, 0($t0)
li $t1, 4438
la $t0, _data
addi $t0, $t0, 2320
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2320
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2316
sw $t1, 0($t0)
li $t1, 38746
la $t0, _data
addi $t0, $t0, 2328
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2328
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2324
sw $t1, 0($t0)
li $t1, 14630
la $t0, _data
addi $t0, $t0, 2336
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2332
sw $t1, 0($t0)
li $t1, 7740
la $t0, _data
addi $t0, $t0, 2344
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2344
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2340
sw $t1, 0($t0)
li $t1, 4376
la $t0, _data
addi $t0, $t0, 2352
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2352
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2348
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 2356
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2360
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2356
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2360
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2364
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2364
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2368
sw $t3, 0($t0)
li $t1, 60027
la $t0, _data
addi $t0, $t0, 2372
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2372
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2368
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 2376
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2380
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2376
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2380
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2384
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2388
sw $t3, 0($t0)
li $t1, 6009
la $t0, _data
addi $t0, $t0, 2392
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2392
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2388
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 2396
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2400
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2396
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2400
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2404
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2408
sw $t3, 0($t0)
li $t1, 2863
la $t0, _data
addi $t0, $t0, 2412
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2412
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2408
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 2416
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2420
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2416
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2420
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2424
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2424
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2428
sw $t3, 0($t0)
li $t1, 27419
la $t0, _data
addi $t0, $t0, 2432
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2428
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2436
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2440
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2436
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2440
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2444
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2444
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2448
sw $t3, 0($t0)
li $t1, 29216
la $t0, _data
addi $t0, $t0, 2452
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2448
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 2456
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2460
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2456
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2460
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2464
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2464
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2468
sw $t3, 0($t0)
li $t1, 8547
la $t0, _data
addi $t0, $t0, 2472
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2472
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2468
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 6
la $t0, _data
addi $t0, $t0, 2476
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2480
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2476
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2480
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2484
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2484
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2488
sw $t3, 0($t0)
li $t1, 55605
la $t0, _data
addi $t0, $t0, 2492
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2492
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2488
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 7
la $t0, _data
addi $t0, $t0, 2496
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2500
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2500
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2504
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2504
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2508
sw $t3, 0($t0)
li $t1, 23547
la $t0, _data
addi $t0, $t0, 2512
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2512
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2508
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 8
la $t0, _data
addi $t0, $t0, 2516
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2520
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2516
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2520
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2524
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2528
sw $t3, 0($t0)
li $t1, 26879
la $t0, _data
addi $t0, $t0, 2532
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2528
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 9
la $t0, _data
addi $t0, $t0, 2536
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2540
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2536
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2540
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2544
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2548
sw $t3, 0($t0)
li $t1, 18257
la $t0, _data
addi $t0, $t0, 2552
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2552
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2548
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 14252
la $t0, _data
addi $t0, $t0, 2560
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2560
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2556
sw $t1, 0($t0)
li $t1, 58906
la $t0, _data
addi $t0, $t0, 2568
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2568
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2564
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 2572
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2576
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2572
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2576
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2580
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2580
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2584
sw $t3, 0($t0)
li $t1, 30207
la $t0, _data
addi $t0, $t0, 2588
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2588
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2584
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 2592
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2596
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2592
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2596
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2600
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2600
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2604
sw $t3, 0($t0)
li $t1, 36442
la $t0, _data
addi $t0, $t0, 2608
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2608
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2604
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 2612
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2616
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2612
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2616
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2620
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2620
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2624
sw $t3, 0($t0)
li $t1, 4619
la $t0, _data
addi $t0, $t0, 2628
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2628
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2624
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 2632
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2636
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2632
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2636
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2640
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2640
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2644
sw $t3, 0($t0)
li $t1, 62647
la $t0, _data
addi $t0, $t0, 2648
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2648
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2644
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2652
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2656
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2652
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2656
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2660
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2660
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2664
sw $t3, 0($t0)
li $t1, 40550
la $t0, _data
addi $t0, $t0, 2668
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2668
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2664
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 2672
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2676
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2672
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2676
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2680
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2680
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2684
sw $t3, 0($t0)
li $t1, 33386
la $t0, _data
addi $t0, $t0, 2688
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2688
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2684
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 6
la $t0, _data
addi $t0, $t0, 2692
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2696
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2692
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2696
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2700
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2700
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2704
sw $t3, 0($t0)
li $t1, 56533
la $t0, _data
addi $t0, $t0, 2708
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2708
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2704
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 7
la $t0, _data
addi $t0, $t0, 2712
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2716
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2712
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2716
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2720
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2720
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2724
sw $t3, 0($t0)
li $t1, 28042
la $t0, _data
addi $t0, $t0, 2728
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2728
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2724
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 8
la $t0, _data
addi $t0, $t0, 2732
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2736
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2732
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2736
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2740
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2740
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2744
sw $t3, 0($t0)
li $t1, 22393
la $t0, _data
addi $t0, $t0, 2748
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2748
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2744
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 6769
la $t0, _data
addi $t0, $t0, 2756
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2756
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2752
sw $t1, 0($t0)
li $t1, 7703
la $t0, _data
addi $t0, $t0, 2764
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2764
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2760
sw $t1, 0($t0)
li $t1, 58144
la $t0, _data
addi $t0, $t0, 2772
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2772
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2768
sw $t1, 0($t0)
li $t1, 31307
la $t0, _data
addi $t0, $t0, 2780
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2780
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2776
sw $t1, 0($t0)
li $t1, 26544
la $t0, _data
addi $t0, $t0, 2788
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2788
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2784
sw $t1, 0($t0)
li $t1, 62582
la $t0, _data
addi $t0, $t0, 2796
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2796
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2792
sw $t1, 0($t0)
li $t1, 4517
la $t0, _data
addi $t0, $t0, 2804
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2804
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2800
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 2808
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2812
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2808
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2812
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2816
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1616
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2820
sw $t3, 0($t0)
li $t1, 41174
la $t0, _data
addi $t0, $t0, 2824
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2824
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2820
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 2828
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2832
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2828
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2832
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2836
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1616
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2840
sw $t3, 0($t0)
li $t1, 4786
la $t0, _data
addi $t0, $t0, 2844
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2844
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2840
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 2848
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2852
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2848
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2852
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2856
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2856
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1616
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2860
sw $t3, 0($t0)
li $t1, 8893
la $t0, _data
addi $t0, $t0, 2864
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2864
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2860
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 2868
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2872
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2872
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2876
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2876
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1616
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2880
sw $t3, 0($t0)
li $t1, 35665
la $t0, _data
addi $t0, $t0, 2884
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2884
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2880
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2888
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2892
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2888
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2892
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2896
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2896
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1616
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2900
sw $t3, 0($t0)
li $t1, 10796
la $t0, _data
addi $t0, $t0, 2904
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2904
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2900
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 2908
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2912
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2912
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2916
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2916
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1616
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2920
sw $t3, 0($t0)
li $t1, 11757
la $t0, _data
addi $t0, $t0, 2924
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2924
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2920
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 6
la $t0, _data
addi $t0, $t0, 2928
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2932
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2928
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2932
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2936
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2936
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1616
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2940
sw $t3, 0($t0)
li $t1, 63084
la $t0, _data
addi $t0, $t0, 2944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2944
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2940
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 40012
la $t0, _data
addi $t0, $t0, 2952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2952
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2948
sw $t1, 0($t0)
li $t1, 20304
la $t0, _data
addi $t0, $t0, 2960
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2956
sw $t1, 0($t0)
li $t1, 53154
la $t0, _data
addi $t0, $t0, 2968
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2968
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2964
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 2972
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2976
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2972
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2976
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2980
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2980
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 2984
sw $t3, 0($t0)
li $t1, 63560
la $t0, _data
addi $t0, $t0, 2988
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2988
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2984
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 2992
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 2996
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2992
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2996
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3000
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3004
sw $t3, 0($t0)
li $t1, 47183
la $t0, _data
addi $t0, $t0, 3008
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3008
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3004
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 3012
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 3016
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3012
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3016
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3020
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3024
sw $t3, 0($t0)
li $t1, 5875
la $t0, _data
addi $t0, $t0, 3028
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3028
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3024
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 3032
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 3036
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3032
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3036
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3040
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3044
sw $t3, 0($t0)
li $t1, 12276
la $t0, _data
addi $t0, $t0, 3048
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3048
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3044
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 3052
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 3056
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3052
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3056
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3060
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3060
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3064
sw $t3, 0($t0)
li $t1, 40553
la $t0, _data
addi $t0, $t0, 3068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3064
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 3072
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 3076
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3076
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3080
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3080
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3084
sw $t3, 0($t0)
li $t1, 36082
la $t0, _data
addi $t0, $t0, 3088
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3084
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 6
la $t0, _data
addi $t0, $t0, 3092
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 3096
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3092
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3096
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3100
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3100
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3104
sw $t3, 0($t0)
li $t1, 48718
la $t0, _data
addi $t0, $t0, 3108
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3108
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3104
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 7
la $t0, _data
addi $t0, $t0, 3112
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 3116
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3116
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3120
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3124
sw $t3, 0($t0)
li $t1, 45172
la $t0, _data
addi $t0, $t0, 3128
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3128
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3124
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 8
la $t0, _data
addi $t0, $t0, 3132
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 3136
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3132
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3136
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3140
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3140
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3144
sw $t3, 0($t0)
li $t1, 33193
la $t0, _data
addi $t0, $t0, 3148
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3144
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3152
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 3156
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3152
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3156
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3160
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3160
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1632
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3164
sw $t3, 0($t0)
li $t1, 23732
la $t0, _data
addi $t0, $t0, 3168
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3168
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3164
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3172
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 3176
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3172
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3176
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3180
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3180
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1632
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3184
sw $t3, 0($t0)
li $t1, 13022
la $t0, _data
addi $t0, $t0, 3188
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3188
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3184
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 3192
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 3196
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3196
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3200
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1632
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3204
sw $t3, 0($t0)
li $t1, 24190
la $t0, _data
addi $t0, $t0, 3208
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3208
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3204
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 3212
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 3216
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3216
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3220
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3220
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1632
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3224
sw $t3, 0($t0)
li $t1, 51775
la $t0, _data
addi $t0, $t0, 3228
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3228
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3224
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 3232
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 3236
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3232
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3236
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3240
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3240
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1632
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3244
sw $t3, 0($t0)
li $t1, 35415
la $t0, _data
addi $t0, $t0, 3248
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3248
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3244
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 30960
la $t0, _data
addi $t0, $t0, 3256
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3256
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3252
sw $t1, 0($t0)
li $t1, 59478
la $t0, _data
addi $t0, $t0, 3264
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3264
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3260
sw $t1, 0($t0)
li $t1, 28023
la $t0, _data
addi $t0, $t0, 3272
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3272
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3268
sw $t1, 0($t0)
li $t1, 62267
la $t0, _data
addi $t0, $t0, 3280
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3280
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3276
sw $t1, 0($t0)
li $t1, 20486
la $t0, _data
addi $t0, $t0, 3288
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3288
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3284
sw $t1, 0($t0)
li $t1, 25070
la $t0, _data
addi $t0, $t0, 3296
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3296
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3292
sw $t1, 0($t0)
L65:
li $t1, 0
la $t0, _data
addi $t0, $t0, 3304
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3308
sw $t1, 0($t0)
li $t1, 1248
la $t0, _data
addi $t0, $t0, 3312
sw $t1, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 3312
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 3316
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3324
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2792
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3320
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3316
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3320
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3328
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3300
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2784
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3328
lw $t2, 0($t0)
bgt $t1, $t2, L67
la $t0, _data
addi $t0, $t0, 3304
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3300
sw $t1, 0($t0)
L67:
li $t1, 0
la $t0, _data
addi $t0, $t0, 3332
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3332
lw $t2, 0($t0)
beq $t1, $t2, L66
L68:
li $t1, 61660
la $t0, _data
addi $t0, $t0, 3336
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3340
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3340
lw $t2, 0($t0)
beq $t1, $t2, L69
li $t1, 29856
la $t0, _data
addi $t0, $t0, 3348
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3348
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3344
sw $t1, 0($t0)
li $t1, 10141
la $t0, _data
addi $t0, $t0, 3356
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3356
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3352
sw $t1, 0($t0)
li $t1, 31790
la $t0, _data
addi $t0, $t0, 3360
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3368
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3368
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3360
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3364
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3372
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3376
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3376
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3380
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3364
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3372
lw $t2, 0($t0)
beq $t1, $t2, L70
la $t0, _data
addi $t0, $t0, 3372
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3380
sw $t1, 0($t0)
L70:
li $t1, 0
la $t0, _data
addi $t0, $t0, 3384
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3388
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3388
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3392
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3384
lw $t2, 0($t0)
beq $t1, $t2, L71
la $t0, _data
addi $t0, $t0, 3384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3392
sw $t1, 0($t0)
L71:
la $t0, _data
addi $t0, $t0, 3392
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1916
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3396
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3392
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3396
lw $t2, 0($t0)
beq $t1, $t2, L72
li $t1, 0
la $t0, _data
addi $t0, $t0, 3400
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3404
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3408
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2800
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3400
lw $t2, 0($t0)
beq $t1, $t2, L73
la $t0, _data
addi $t0, $t0, 3400
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3408
sw $t1, 0($t0)
L73:
j L139
L72:
li $t1, 40652
la $t0, _data
addi $t0, $t0, 3416
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3416
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3412
sw $t1, 0($t0)
li $t1, 21898
la $t0, _data
addi $t0, $t0, 3424
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3424
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3420
sw $t1, 0($t0)
li $t1, 29338
la $t0, _data
addi $t0, $t0, 3432
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3428
sw $t1, 0($t0)
li $t1, 15129
la $t0, _data
addi $t0, $t0, 3440
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3440
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3436
sw $t1, 0($t0)
li $t1, 42202
la $t0, _data
addi $t0, $t0, 3448
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3448
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3444
sw $t1, 0($t0)
li $t1, 16956
la $t0, _data
addi $t0, $t0, 3456
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3456
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3452
sw $t1, 0($t0)
li $t1, 13153
la $t0, _data
addi $t0, $t0, 3464
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3464
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3460
sw $t1, 0($t0)
li $t1, 23850
la $t0, _data
addi $t0, $t0, 3472
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3472
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3468
sw $t1, 0($t0)
li $t1, 22832
la $t0, _data
addi $t0, $t0, 3480
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3480
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3476
sw $t1, 0($t0)
li $t1, 25429
la $t0, _data
addi $t0, $t0, 3488
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3484
sw $t1, 0($t0)
li $t1, 64403
la $t0, _data
addi $t0, $t0, 3496
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3492
sw $t1, 0($t0)
li $t1, 58914
la $t0, _data
addi $t0, $t0, 3504
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3504
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3500
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3512
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3516
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3524
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3528
sw $t1, 0($t0)
li $t1, 8611
la $t0, _data
addi $t0, $t0, 3532
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1884
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3536
sw $t3, 0($t0)
li $t1, 44040
la $t0, _data
addi $t0, $t0, 3540
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3536
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3540
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3544
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 3544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 3548
sw $v0, 0($t0)
li $t1, 26572
la $t0, _data
addi $t0, $t0, 3552
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3548
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3552
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3556
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3564
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3564
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3452
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3560
sw $t3, 0($t0)
li $t1, 32343
la $t0, _data
addi $t0, $t0, 3568
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3560
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3568
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3572
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 3572
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 3576
sw $v0, 0($t0)
li $t1, 57062
la $t0, _data
addi $t0, $t0, 3580
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3576
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3580
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 3584
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3528
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3520
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3584
lw $t2, 0($t0)
bgt $t1, $t2, L76
la $t0, _data
addi $t0, $t0, 3524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3520
sw $t1, 0($t0)
L76:
li $t1, 50762
la $t0, _data
addi $t0, $t0, 3588
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3596
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3596
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3588
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3592
sw $t3, 0($t0)
li $t1, 18582
la $t0, _data
addi $t0, $t0, 3600
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3592
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3600
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3604
sw $t3, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3608
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3604
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3608
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3612
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3516
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3508
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3520
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3612
lw $t2, 0($t0)
ble $t1, $t2, L75
la $t0, _data
addi $t0, $t0, 3512
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3508
sw $t1, 0($t0)
L75:
li $t1, 0
la $t0, _data
addi $t0, $t0, 3616
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3508
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3616
lw $t2, 0($t0)
beq $t1, $t2, L77
li $t1, 0
la $t0, _data
addi $t0, $t0, 3624
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3628
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3636
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3640
sw $t1, 0($t0)
li $t1, 5
la $t0, _data
addi $t0, $t0, 3644
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 3648
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3648
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3652
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3652
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1616
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3656
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3656
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 3660
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3668
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3672
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3668
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3664
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3680
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3684
sw $t1, 0($t0)
li $t1, 12917
la $t0, _data
addi $t0, $t0, 3688
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3684
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3676
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3688
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1868
lw $t2, 0($t0)
beq $t1, $t2, L81
la $t0, _data
addi $t0, $t0, 3680
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3676
sw $t1, 0($t0)
L81:
la $t0, _data
addi $t0, $t0, 3676
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3668
lw $t2, 0($t0)
beq $t1, $t2, L80
la $t0, _data
addi $t0, $t0, 3292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3668
lw $t2, 0($t0)
beq $t1, $t2, L80
la $t0, _data
addi $t0, $t0, 3672
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3664
sw $t1, 0($t0)
L80:
li $t1, 0
la $t0, _data
addi $t0, $t0, 3696
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3700
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3708
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3712
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3720
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3724
sw $t1, 0($t0)
li $t1, 33011
la $t0, _data
addi $t0, $t0, 3728
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3716
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2768
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3728
lw $t2, 0($t0)
blt $t1, $t2, L84
la $t0, _data
addi $t0, $t0, 3720
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3716
sw $t1, 0($t0)
L84:
li $t1, 14499
la $t0, _data
addi $t0, $t0, 3732
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3712
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3704
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3716
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3732
lw $t2, 0($t0)
blt $t1, $t2, L83
la $t0, _data
addi $t0, $t0, 3708
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3704
sw $t1, 0($t0)
L83:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 3704
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 3736
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 3736
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3292
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3740
sw $t3, 0($t0)
li $t1, 14165
la $t0, _data
addi $t0, $t0, 3744
sw $t1, 0($t0)
li $t1, 29136
la $t0, _data
addi $t0, $t0, 3748
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3748
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2324
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3752
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3760
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3764
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3772
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3776
sw $t1, 0($t0)
li $t1, 44356
la $t0, _data
addi $t0, $t0, 3780
sw $t1, 0($t0)
li $t1, 24307
la $t0, _data
addi $t0, $t0, 3784
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3776
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3768
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3780
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3784
lw $t2, 0($t0)
bge $t1, $t2, L86
la $t0, _data
addi $t0, $t0, 3772
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3768
sw $t1, 0($t0)
L86:
li $t1, 60926
la $t0, _data
addi $t0, $t0, 3788
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3764
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3756
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3768
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3788
lw $t2, 0($t0)
bne $t1, $t2, L85
la $t0, _data
addi $t0, $t0, 3760
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3756
sw $t1, 0($t0)
L85:
li $t1, 4
la $t0, _data
addi $t0, $t0, 3792
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1844
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3792
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3796
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3796
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1632
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3800
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3800
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 3804
sw $t2, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 3804
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3756
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3752
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3744
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3740
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 3808
sw $v0, 0($t0)
li $t1, 19472
la $t0, _data
addi $t0, $t0, 3812
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3700
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3692
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3808
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3812
lw $t2, 0($t0)
bgt $t1, $t2, L82
la $t0, _data
addi $t0, $t0, 3696
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3692
sw $t1, 0($t0)
L82:
li $t1, 0
la $t0, _data
addi $t0, $t0, 3820
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3824
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3824
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3816
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3832
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3836
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3828
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2948
lw $t2, 0($t0)
bne $t1, $t2, L88
la $t0, _data
addi $t0, $t0, 3832
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3828
sw $t1, 0($t0)
L88:
la $t0, _data
addi $t0, $t0, 3828
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3820
lw $t2, 0($t0)
bne $t1, $t2, L87
la $t0, _data
addi $t0, $t0, 2316
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3820
lw $t2, 0($t0)
bne $t1, $t2, L87
la $t0, _data
addi $t0, $t0, 3820
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3816
sw $t1, 0($t0)
L87:
li $t1, 0
la $t0, _data
addi $t0, $t0, 3844
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3848
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3844
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3840
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3852
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3856
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3856
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3860
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3344
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3852
lw $t2, 0($t0)
beq $t1, $t2, L90
la $t0, _data
addi $t0, $t0, 3852
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3860
sw $t1, 0($t0)
L90:
la $t0, _data
addi $t0, $t0, 3860
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3844
lw $t2, 0($t0)
beq $t1, $t2, L89
la $t0, _data
addi $t0, $t0, 2316
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3844
lw $t2, 0($t0)
beq $t1, $t2, L89
la $t0, _data
addi $t0, $t0, 3848
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3840
sw $t1, 0($t0)
L89:
la $t0, _data
addi $t0, $t0, 2956
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3352
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3868
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3872
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3872
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3864
sw $t1, 0($t0)
li $t1, 46205
la $t0, _data
addi $t0, $t0, 3876
sw $t1, 0($t0)
li $t1, 24728
la $t0, _data
addi $t0, $t0, 3880
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3876
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3880
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3884
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3884
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3868
lw $t2, 0($t0)
bne $t1, $t2, L91
la $t0, _data
addi $t0, $t0, 2964
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3868
lw $t2, 0($t0)
bne $t1, $t2, L91
la $t0, _data
addi $t0, $t0, 3868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3864
sw $t1, 0($t0)
L91:
li $t1, 0
la $t0, _data
addi $t0, $t0, 3892
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3892
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3460
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3888
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3896
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3900
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3900
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3904
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3888
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3896
lw $t2, 0($t0)
beq $t1, $t2, L92
la $t0, _data
addi $t0, $t0, 3896
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3904
sw $t1, 0($t0)
L92:
li $t1, 34601
la $t0, _data
addi $t0, $t0, 3908
sw $t1, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 3908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 3912
sw $v0, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 3912
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3904
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3864
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2956
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3840
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 3916
sw $v0, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 3468
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 3920
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 3928
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3928
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3920
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3924
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 3924
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3916
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3692
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 3932
sw $v0, 0($t0)
li $t1, 22872
la $t0, _data
addi $t0, $t0, 3936
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3932
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3936
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3940
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3640
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3632
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3660
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3940
lw $t2, 0($t0)
ble $t1, $t2, L79
la $t0, _data
addi $t0, $t0, 3636
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3632
sw $t1, 0($t0)
L79:
li $t1, 4
la $t0, _data
addi $t0, $t0, 3944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3476
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3944
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3948
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3948
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3952
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3952
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 3956
sw $t2, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 3960
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3484
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3960
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3964
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3964
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1632
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3968
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3968
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 3972
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 3956
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3972
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 3976
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3628
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3620
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3632
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3976
lw $t2, 0($t0)
beq $t1, $t2, L78
la $t0, _data
addi $t0, $t0, 3624
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3620
sw $t1, 0($t0)
L78:
li $t1, 0
la $t0, _data
addi $t0, $t0, 3980
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3620
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3980
lw $t2, 0($t0)
beq $t1, $t2, L93
li $t1, 0
la $t0, _data
addi $t0, $t0, 3988
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 3992
sw $t1, 0($t0)
li $t1, 41685
la $t0, _data
addi $t0, $t0, 3996
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4004
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4008
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4004
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4000
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4016
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4020
sw $t1, 0($t0)
li $t1, 47754
la $t0, _data
addi $t0, $t0, 4024
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4012
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3492
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4024
lw $t2, 0($t0)
beq $t1, $t2, L96
la $t0, _data
addi $t0, $t0, 4016
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4012
sw $t1, 0($t0)
L96:
la $t0, _data
addi $t0, $t0, 4012
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4004
lw $t2, 0($t0)
beq $t1, $t2, L95
la $t0, _data
addi $t0, $t0, 2964
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4004
lw $t2, 0($t0)
beq $t1, $t2, L95
la $t0, _data
addi $t0, $t0, 4008
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4000
sw $t1, 0($t0)
L95:
li $t1, 0
la $t0, _data
addi $t0, $t0, 4032
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4036
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3500
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3500
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4040
sw $t3, 0($t0)
li $t1, 46722
la $t0, _data
addi $t0, $t0, 4044
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4044
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 4048
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 4048
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 4052
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 4036
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4028
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4052
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3276
lw $t2, 0($t0)
beq $t1, $t2, L97
la $t0, _data
addi $t0, $t0, 4032
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4028
sw $t1, 0($t0)
L97:
li $t1, 0
la $t0, _data
addi $t0, $t0, 4056
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4060
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4056
lw $t2, 0($t0)
beq $t1, $t2, L98
la $t0, _data
addi $t0, $t0, 4056
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4064
sw $t1, 0($t0)
L98:
li $t1, 0
la $t0, _data
addi $t0, $t0, 4068
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4076
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4064
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4068
lw $t2, 0($t0)
beq $t1, $t2, L99
la $t0, _data
addi $t0, $t0, 4068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4076
sw $t1, 0($t0)
L99:
li $t1, 0
la $t0, _data
addi $t0, $t0, 4080
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4084
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4084
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4088
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2800
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4080
lw $t2, 0($t0)
beq $t1, $t2, L100
la $t0, _data
addi $t0, $t0, 4080
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4088
sw $t1, 0($t0)
L100:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 4088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4076
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4028
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 4092
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4100
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4100
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4092
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4096
sw $t3, 0($t0)
li $t1, 64517
la $t0, _data
addi $t0, $t0, 4104
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4112
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4104
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4108
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4120
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4108
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4116
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 4116
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 4124
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 4096
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4124
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 4128
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3992
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3984
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3996
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4128
lw $t2, 0($t0)
bne $t1, $t2, L94
la $t0, _data
addi $t0, $t0, 3988
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3984
sw $t1, 0($t0)
L94:
j L103
L93:
li $t1, 0
la $t0, _data
addi $t0, $t0, 4136
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4140
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4148
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3412
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4144
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4140
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4132
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4144
lw $t2, 0($t0)
bne $t1, $t2, L104
la $t0, _data
addi $t0, $t0, 4136
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4132
sw $t1, 0($t0)
L104:
li $t1, 0
la $t0, _data
addi $t0, $t0, 4152
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4132
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4152
lw $t2, 0($t0)
beq $t1, $t2, L103
li $t1, 0
la $t0, _data
addi $t0, $t0, 4160
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4164
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4160
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4156
sw $t1, 0($t0)
li $t1, 7647
la $t0, _data
addi $t0, $t0, 4168
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4168
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4160
lw $t2, 0($t0)
beq $t1, $t2, L105
la $t0, _data
addi $t0, $t0, 2316
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4160
lw $t2, 0($t0)
beq $t1, $t2, L105
la $t0, _data
addi $t0, $t0, 4164
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4156
sw $t1, 0($t0)
L105:
li $t1, 4
la $t0, _data
addi $t0, $t0, 4172
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4156
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4172
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4176
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4176
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4180
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4180
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 4184
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4192
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4184
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4188
sw $t3, 0($t0)
li $t1, 45589
la $t0, _data
addi $t0, $t0, 4196
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4188
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4196
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4200
sw $t3, 0($t0)
j L93
L103:
j L106
L77:
li $t1, 0
la $t0, _data
addi $t0, $t0, 4204
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4208
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4208
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4212
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4204
lw $t2, 0($t0)
beq $t1, $t2, L107
la $t0, _data
addi $t0, $t0, 4204
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4212
sw $t1, 0($t0)
L107:
li $t1, 6
la $t0, _data
addi $t0, $t0, 4216
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 4220
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4216
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4220
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4224
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4224
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4228
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4228
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 4232
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 4212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4232
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4236
sw $t3, 0($t0)
addi $sp, $sp, 264
la $t0, _data
addi $t0, $t0, 4236
lw, $v0, 0($t0)
jr $ra
L106:
li $t1, 9
la $t0, _data
addi $t0, $t0, 4240
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 4244
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4240
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4244
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4248
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4248
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4252
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4252
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 4256
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4264
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4264
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4256
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4260
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3420
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4260
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4268
sw $t3, 0($t0)
li $t1, 6
la $t0, _data
addi $t0, $t0, 4272
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 4276
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4272
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4276
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4280
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4280
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4284
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4284
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 4288
sw $t2, 0($t0)
li $t1, 4158
la $t0, _data
addi $t0, $t0, 4292
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4296
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4300
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4304
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4296
lw $t2, 0($t0)
beq $t1, $t2, L108
la $t0, _data
addi $t0, $t0, 4296
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4304
sw $t1, 0($t0)
L108:
li $t1, 0
la $t0, _data
addi $t0, $t0, 4308
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4312
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4312
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4316
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4304
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4308
lw $t2, 0($t0)
beq $t1, $t2, L109
la $t0, _data
addi $t0, $t0, 4308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4316
sw $t1, 0($t0)
L109:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 4316
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 4320
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 4288
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4320
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4324
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4328
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4328
lw $t2, 0($t0)
beq $t1, $t2, L110
L111:
li $t1, 1648
la $t0, _data
addi $t0, $t0, 4332
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4336
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4332
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4336
lw $t2, 0($t0)
beq $t1, $t2, L112
L113:
li $t1, 42562
la $t0, _data
addi $t0, $t0, 4340
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4348
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4352
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4360
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4364
sw $t1, 0($t0)
li $t1, 20344
la $t0, _data
addi $t0, $t0, 4368
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4364
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4356
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4368
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3428
lw $t2, 0($t0)
ble $t1, $t2, L116
la $t0, _data
addi $t0, $t0, 4360
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4356
sw $t1, 0($t0)
L116:
la $t0, _data
addi $t0, $t0, 4352
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4344
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4356
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2300
lw $t2, 0($t0)
bne $t1, $t2, L115
la $t0, _data
addi $t0, $t0, 4348
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4344
sw $t1, 0($t0)
L115:
li $t1, 0
la $t0, _data
addi $t0, $t0, 4376
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4380
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4376
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4372
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4388
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4392
sw $t1, 0($t0)
li $t1, 14173
la $t0, _data
addi $t0, $t0, 4396
sw $t1, 0($t0)
li $t1, 31991
la $t0, _data
addi $t0, $t0, 4400
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4392
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4384
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4396
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4400
lw $t2, 0($t0)
blt $t1, $t2, L118
la $t0, _data
addi $t0, $t0, 4388
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4384
sw $t1, 0($t0)
L118:
la $t0, _data
addi $t0, $t0, 4384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4376
lw $t2, 0($t0)
beq $t1, $t2, L117
li $t1, 33262
la $t0, _data
addi $t0, $t0, 4404
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4376
lw $t2, 0($t0)
beq $t1, $t2, L117
la $t0, _data
addi $t0, $t0, 4380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4372
sw $t1, 0($t0)
L117:
li $t1, 47185
la $t0, _data
addi $t0, $t0, 4408
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4408
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4412
sw $t3, 0($t0)
li $t1, 46491
la $t0, _data
addi $t0, $t0, 4416
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4412
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4416
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4420
sw $t3, 0($t0)
li $t1, 47427
la $t0, _data
addi $t0, $t0, 4424
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4432
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4424
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4428
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4428
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2324
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4436
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 4436
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4420
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4372
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4344
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4340
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 4440
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4448
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4448
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4440
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4444
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4452
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4444
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4452
lw $t2, 0($t0)
beq $t1, $t2, L114
L119:
li $t1, 10785
la $t0, _data
addi $t0, $t0, 4456
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4460
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4456
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4460
lw $t2, 0($t0)
beq $t1, $t2, L120
li $t1, 0
la $t0, _data
addi $t0, $t0, 4468
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4472
sw $t1, 0($t0)
li $t1, 25311
la $t0, _data
addi $t0, $t0, 4476
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4472
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4464
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2768
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4476
lw $t2, 0($t0)
bgt $t1, $t2, L121
la $t0, _data
addi $t0, $t0, 4468
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4464
sw $t1, 0($t0)
L121:
li $t1, 9
la $t0, _data
addi $t0, $t0, 4480
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 4484
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4480
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4484
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4488
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4492
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4492
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 4496
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4504
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4508
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4516
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4520
sw $t1, 0($t0)
li $t1, 44783
la $t0, _data
addi $t0, $t0, 4524
sw $t1, 0($t0)
li $t1, 52404
la $t0, _data
addi $t0, $t0, 4528
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4520
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4512
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4528
lw $t2, 0($t0)
blt $t1, $t2, L123
la $t0, _data
addi $t0, $t0, 4516
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4512
sw $t1, 0($t0)
L123:
la $t0, _data
addi $t0, $t0, 4508
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4500
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4512
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3292
lw $t2, 0($t0)
blt $t1, $t2, L122
la $t0, _data
addi $t0, $t0, 4504
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4500
sw $t1, 0($t0)
L122:
li $t1, 0
la $t0, _data
addi $t0, $t0, 4536
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4540
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4536
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4532
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4536
lw $t2, 0($t0)
beq $t1, $t2, L124
la $t0, _data
addi $t0, $t0, 1836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4536
lw $t2, 0($t0)
beq $t1, $t2, L124
la $t0, _data
addi $t0, $t0, 4540
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4532
sw $t1, 0($t0)
L124:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 4532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 4544
sw $v0, 0($t0)
li $t1, 30903
la $t0, _data
addi $t0, $t0, 4548
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4548
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 4552
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4560
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4564
sw $t1, 0($t0)
li $t1, 13849
la $t0, _data
addi $t0, $t0, 4568
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4576
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4580
sw $t1, 0($t0)
li $t1, 3
la $t0, _data
addi $t0, $t0, 4584
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 4588
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4584
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4588
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4592
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4592
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4596
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4596
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 4600
sw $t2, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 4600
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 4604
sw $v0, 0($t0)
li $t1, 61603
la $t0, _data
addi $t0, $t0, 4608
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4580
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4572
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4604
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4608
lw $t2, 0($t0)
beq $t1, $t2, L126
la $t0, _data
addi $t0, $t0, 4576
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4572
sw $t1, 0($t0)
L126:
li $t1, 0
la $t0, _data
addi $t0, $t0, 4616
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4620
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2260
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1844
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4624
sw $t3, 0($t0)
li $t1, 56462
la $t0, _data
addi $t0, $t0, 4628
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4620
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4612
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4624
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4628
lw $t2, 0($t0)
beq $t1, $t2, L127
la $t0, _data
addi $t0, $t0, 4616
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4612
sw $t1, 0($t0)
L127:
li $t1, 0
la $t0, _data
addi $t0, $t0, 4636
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4640
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4640
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4632
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4648
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4652
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4648
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4644
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4648
lw $t2, 0($t0)
beq $t1, $t2, L129
la $t0, _data
addi $t0, $t0, 1852
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4648
lw $t2, 0($t0)
beq $t1, $t2, L129
la $t0, _data
addi $t0, $t0, 4652
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4644
sw $t1, 0($t0)
L129:
la $t0, _data
addi $t0, $t0, 4644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4636
lw $t2, 0($t0)
bne $t1, $t2, L128
la $t0, _data
addi $t0, $t0, 1868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4636
lw $t2, 0($t0)
bne $t1, $t2, L128
la $t0, _data
addi $t0, $t0, 4636
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4632
sw $t1, 0($t0)
L128:
li $t1, 6033
la $t0, _data
addi $t0, $t0, 4656
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4664
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4656
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4660
sw $t3, 0($t0)
li $t1, 3715
la $t0, _data
addi $t0, $t0, 4668
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4660
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4668
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 4672
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 4672
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 4676
sw $v0, 0($t0)
li $t1, 36515
la $t0, _data
addi $t0, $t0, 4680
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1860
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4680
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4684
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4692
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4696
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4692
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4688
sw $t1, 0($t0)
li $t1, 6
la $t0, _data
addi $t0, $t0, 4700
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 4704
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4700
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4704
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4708
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4708
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4712
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4712
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 4716
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 4716
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4692
lw $t2, 0($t0)
beq $t1, $t2, L130
la $t0, _data
addi $t0, $t0, 1868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4692
lw $t2, 0($t0)
beq $t1, $t2, L130
la $t0, _data
addi $t0, $t0, 4696
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4688
sw $t1, 0($t0)
L130:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 4688
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4684
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4676
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4632
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4612
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 4720
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4728
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4728
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4720
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4724
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4736
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4740
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4740
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4732
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2268
lw $t2, 0($t0)
bgt $t1, $t2, L131
la $t0, _data
addi $t0, $t0, 4736
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4732
sw $t1, 0($t0)
L131:
li $t1, 0
la $t0, _data
addi $t0, $t0, 4748
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4752
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4760
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4764
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4764
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4756
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2760
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2340
lw $t2, 0($t0)
bgt $t1, $t2, L133
la $t0, _data
addi $t0, $t0, 4760
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4756
sw $t1, 0($t0)
L133:
la $t0, _data
addi $t0, $t0, 4752
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4744
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4756
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3284
lw $t2, 0($t0)
ble $t1, $t2, L132
la $t0, _data
addi $t0, $t0, 4748
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4744
sw $t1, 0($t0)
L132:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 4744
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4732
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4572
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4568
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 4768
sw $v0, 0($t0)
li $t1, 60609
la $t0, _data
addi $t0, $t0, 4772
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4564
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4556
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4768
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4772
lw $t2, 0($t0)
blt $t1, $t2, L125
la $t0, _data
addi $t0, $t0, 4560
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4556
sw $t1, 0($t0)
L125:
li $t1, 17324
la $t0, _data
addi $t0, $t0, 4776
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4776
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1876
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4780
sw $t3, 0($t0)
li $t1, 3039
la $t0, _data
addi $t0, $t0, 4784
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4792
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4796
sw $t1, 0($t0)
li $t1, 10693
la $t0, _data
addi $t0, $t0, 4800
sw $t1, 0($t0)
li $t1, 21482
la $t0, _data
addi $t0, $t0, 4804
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4796
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4788
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4800
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4804
lw $t2, 0($t0)
bge $t1, $t2, L134
la $t0, _data
addi $t0, $t0, 4792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4788
sw $t1, 0($t0)
L134:
li $t1, 0
la $t0, _data
addi $t0, $t0, 4812
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4816
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4812
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4808
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3436
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 4820
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4820
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4812
lw $t2, 0($t0)
beq $t1, $t2, L135
li $t1, 4688
la $t0, _data
addi $t0, $t0, 4824
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4824
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4812
lw $t2, 0($t0)
beq $t1, $t2, L135
la $t0, _data
addi $t0, $t0, 4816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4808
sw $t1, 0($t0)
L135:
li $t1, 0
la $t0, _data
addi $t0, $t0, 4832
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4836
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4844
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4848
sw $t1, 0($t0)
li $t1, 53255
la $t0, _data
addi $t0, $t0, 4852
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4848
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4840
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1884
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4852
lw $t2, 0($t0)
bne $t1, $t2, L137
la $t0, _data
addi $t0, $t0, 4844
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4840
sw $t1, 0($t0)
L137:
la $t0, _data
addi $t0, $t0, 4836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4828
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4840
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2276
lw $t2, 0($t0)
bne $t1, $t2, L136
la $t0, _data
addi $t0, $t0, 4832
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4828
sw $t1, 0($t0)
L136:
li $t1, 0
la $t0, _data
addi $t0, $t0, 4860
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4864
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4860
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4856
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1892
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2284
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4868
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4860
lw $t2, 0($t0)
beq $t1, $t2, L138
li $t1, 41827
la $t0, _data
addi $t0, $t0, 4872
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4872
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4860
lw $t2, 0($t0)
beq $t1, $t2, L138
la $t0, _data
addi $t0, $t0, 4864
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4856
sw $t1, 0($t0)
L138:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 4856
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4828
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4808
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4788
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 4876
sw $v0, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 4876
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4784
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4780
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4552
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 4880
sw $v0, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 2768
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4880
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4500
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4464
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 4884
sw $v0, 0($t0)
li $t1, 18861
la $t0, _data
addi $t0, $t0, 4888
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4896
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4896
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4888
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4892
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4884
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4892
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4900
sw $t3, 0($t0)
j L119
L120:
j L113
L114:
j L111
L112:
j L139
L110:
li $t1, 0
la $t0, _data
addi $t0, $t0, 4908
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4912
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 4916
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1900
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4916
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4920
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4920
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4924
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4924
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 4928
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4932
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 4936
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4936
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4940
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4928
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4932
lw $t2, 0($t0)
beq $t1, $t2, L141
la $t0, _data
addi $t0, $t0, 4932
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4940
sw $t1, 0($t0)
L141:
li $t1, 19710
la $t0, _data
addi $t0, $t0, 4944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4940
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4944
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4948
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4912
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4904
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3444
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4948
lw $t2, 0($t0)
blt $t1, $t2, L140
la $t0, _data
addi $t0, $t0, 4908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4904
sw $t1, 0($t0)
L140:
addi $sp, $sp, 264
la $t0, _data
addi $t0, $t0, 4904
lw, $v0, 0($t0)
jr $ra
L139:
li $t1, 9553
la $t0, _data
addi $t0, $t0, 4956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4956
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4952
sw $t1, 0($t0)
li $t1, 510
la $t0, _data
addi $t0, $t0, 4964
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4964
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4960
sw $t1, 0($t0)
li $t1, 665
la $t0, _data
addi $t0, $t0, 4972
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4972
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4968
sw $t1, 0($t0)
li $t1, 56980
la $t0, _data
addi $t0, $t0, 4980
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4980
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4976
sw $t1, 0($t0)
li $t1, 11295
la $t0, _data
addi $t0, $t0, 4988
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4988
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4984
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 4996
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4996
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2276
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 4992
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5004
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5004
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4992
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5000
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5012
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5016
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2260
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5020
sw $t3, 0($t0)
li $t1, 25976
la $t0, _data
addi $t0, $t0, 5024
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5016
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5008
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5024
lw $t2, 0($t0)
beq $t1, $t2, L142
la $t0, _data
addi $t0, $t0, 5012
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5008
sw $t1, 0($t0)
L142:
li $t1, 3
la $t0, _data
addi $t0, $t0, 5028
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 5032
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5028
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5032
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5036
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 5036
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5040
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 5040
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 5044
sw $t2, 0($t0)
li $t1, 5224
la $t0, _data
addi $t0, $t0, 5048
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5044
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5048
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5052
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5060
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5060
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5056
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1892
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4952
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5068
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 5068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5060
lw $t2, 0($t0)
beq $t1, $t2, L143
li $t1, 50047
la $t0, _data
addi $t0, $t0, 5072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5060
lw $t2, 0($t0)
beq $t1, $t2, L143
la $t0, _data
addi $t0, $t0, 5064
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5056
sw $t1, 0($t0)
L143:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 5056
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5052
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5008
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 5076
sw $v0, 0($t0)
li $t1, 48374
la $t0, _data
addi $t0, $t0, 5080
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5080
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5084
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5092
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5096
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5104
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5108
sw $t1, 0($t0)
li $t1, 19073
la $t0, _data
addi $t0, $t0, 5112
sw $t1, 0($t0)
li $t1, 59787
la $t0, _data
addi $t0, $t0, 5116
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5108
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5100
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5116
lw $t2, 0($t0)
beq $t1, $t2, L145
la $t0, _data
addi $t0, $t0, 5104
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5100
sw $t1, 0($t0)
L145:
li $t1, 55426
la $t0, _data
addi $t0, $t0, 5120
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5096
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5088
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5100
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5120
lw $t2, 0($t0)
beq $t1, $t2, L144
la $t0, _data
addi $t0, $t0, 5092
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5088
sw $t1, 0($t0)
L144:
li $t1, 0
la $t0, _data
addi $t0, $t0, 5128
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5132
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5132
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5124
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1908
lw $t2, 0($t0)
bne $t1, $t2, L146
la $t0, _data
addi $t0, $t0, 5128
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5124
sw $t1, 0($t0)
L146:
la $t0, _data
addi $t0, $t0, 3252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1916
sw $t1, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 3252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 5136
sw $v0, 0($t0)
li $t1, 15140
la $t0, _data
addi $t0, $t0, 5140
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5136
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5140
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5144
sw $t3, 0($t0)
li $t1, 50713
la $t0, _data
addi $t0, $t0, 5148
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4968
sw $t1, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 5148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5144
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5124
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5084
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 5152
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 5076
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5152
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 5156
sw $t3, 0($t0)
li $t1, 2
la $t0, _data
addi $t0, $t0, 5160
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 5164
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5160
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5164
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5168
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 5168
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5172
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 5172
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 5176
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 5156
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5176
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5180
sw $t3, 0($t0)
li $t1, 21692
la $t0, _data
addi $t0, $t0, 5184
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5180
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5184
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5188
sw $t3, 0($t0)
li $t1, 59853
la $t0, _data
addi $t0, $t0, 5196
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5196
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5192
sw $t1, 0($t0)
li $t1, 38829
la $t0, _data
addi $t0, $t0, 5204
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5204
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5200
sw $t1, 0($t0)
li $t1, 16765
la $t0, _data
addi $t0, $t0, 5212
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5208
sw $t1, 0($t0)
li $t1, 11641
la $t0, _data
addi $t0, $t0, 5220
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5220
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5216
sw $t1, 0($t0)
li $t1, 41868
la $t0, _data
addi $t0, $t0, 5228
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5228
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5224
sw $t1, 0($t0)
li $t1, 27458
la $t0, _data
addi $t0, $t0, 5236
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5236
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5232
sw $t1, 0($t0)
li $t1, 33124
la $t0, _data
addi $t0, $t0, 5244
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5240
sw $t1, 0($t0)
li $t1, 46556
la $t0, _data
addi $t0, $t0, 5252
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5248
sw $t1, 0($t0)
li $t1, 15177
la $t0, _data
addi $t0, $t0, 5260
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5260
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5256
sw $t1, 0($t0)
li $t1, 9415
la $t0, _data
addi $t0, $t0, 5268
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5264
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5276
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5280
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5288
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5292
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5300
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5304
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5312
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5316
sw $t1, 0($t0)
li $t1, 65418
la $t0, _data
addi $t0, $t0, 5320
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5328
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5328
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5320
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5324
sw $t3, 0($t0)
li $t1, 34888
la $t0, _data
addi $t0, $t0, 5332
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5332
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5336
sw $t3, 0($t0)
li $t1, 18968
la $t0, _data
addi $t0, $t0, 5340
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5316
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5308
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5340
lw $t2, 0($t0)
bne $t1, $t2, L150
la $t0, _data
addi $t0, $t0, 5312
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5308
sw $t1, 0($t0)
L150:
la $t0, _data
addi $t0, $t0, 5304
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5296
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3276
lw $t2, 0($t0)
bgt $t1, $t2, L149
la $t0, _data
addi $t0, $t0, 5300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5296
sw $t1, 0($t0)
L149:
la $t0, _data
addi $t0, $t0, 5292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5284
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5296
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5192
lw $t2, 0($t0)
ble $t1, $t2, L148
la $t0, _data
addi $t0, $t0, 5288
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5284
sw $t1, 0($t0)
L148:
li $t1, 0
la $t0, _data
addi $t0, $t0, 5348
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5352
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5348
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5344
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2300
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5356
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 5356
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5348
lw $t2, 0($t0)
beq $t1, $t2, L151
li $t1, 392
la $t0, _data
addi $t0, $t0, 5360
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5360
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5348
lw $t2, 0($t0)
beq $t1, $t2, L151
la $t0, _data
addi $t0, $t0, 5352
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5344
sw $t1, 0($t0)
L151:
li $t1, 35553
la $t0, _data
addi $t0, $t0, 5364
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5364
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4960
sw $t1, 0($t0)
li $t1, 10412
la $t0, _data
addi $t0, $t0, 5368
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5376
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5380
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5388
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5392
sw $t1, 0($t0)
li $t1, 11688
la $t0, _data
addi $t0, $t0, 5396
sw $t1, 0($t0)
li $t1, 61530
la $t0, _data
addi $t0, $t0, 5400
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5392
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5384
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5396
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5400
lw $t2, 0($t0)
bgt $t1, $t2, L153
la $t0, _data
addi $t0, $t0, 5388
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5384
sw $t1, 0($t0)
L153:
li $t1, 8055
la $t0, _data
addi $t0, $t0, 5404
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5372
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5404
lw $t2, 0($t0)
bge $t1, $t2, L152
la $t0, _data
addi $t0, $t0, 5376
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5372
sw $t1, 0($t0)
L152:
li $t1, 0
la $t0, _data
addi $t0, $t0, 5412
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5412
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3276
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5408
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 5408
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2292
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5416
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 5416
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5372
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5368
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5364
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5344
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 5420
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5428
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5428
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5420
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5424
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 5280
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5272
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5424
lw $t2, 0($t0)
beq $t1, $t2, L147
la $t0, _data
addi $t0, $t0, 5276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5272
sw $t1, 0($t0)
L147:
li $t1, 0
la $t0, _data
addi $t0, $t0, 5436
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5440
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5440
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5432
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2284
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 5444
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 5444
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5436
lw $t2, 0($t0)
bne $t1, $t2, L154
li $t1, 29158
la $t0, _data
addi $t0, $t0, 5448
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5448
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5436
lw $t2, 0($t0)
bne $t1, $t2, L154
la $t0, _data
addi $t0, $t0, 5436
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5432
sw $t1, 0($t0)
L154:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 5432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 5452
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5460
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5464
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5468
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5472
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5472
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5476
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1860
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5468
lw $t2, 0($t0)
beq $t1, $t2, L156
la $t0, _data
addi $t0, $t0, 5468
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5476
sw $t1, 0($t0)
L156:
li $t1, 0
la $t0, _data
addi $t0, $t0, 5484
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5488
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5480
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2260
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5484
lw $t2, 0($t0)
bne $t1, $t2, L157
li $t1, 1218
la $t0, _data
addi $t0, $t0, 5492
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5492
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5484
lw $t2, 0($t0)
bne $t1, $t2, L157
la $t0, _data
addi $t0, $t0, 5484
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5480
sw $t1, 0($t0)
L157:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 5480
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 5496
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 5464
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5456
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5476
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5496
lw $t2, 0($t0)
bge $t1, $t2, L155
la $t0, _data
addi $t0, $t0, 5460
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5456
sw $t1, 0($t0)
L155:
li $t1, 0
la $t0, _data
addi $t0, $t0, 5504
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5508
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5516
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5520
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2064
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3344
sw $t1, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 2064
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 5524
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 5524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2268
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5528
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5536
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5540
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 5544
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5544
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5548
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 5548
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5552
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 5552
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 5556
sw $t2, 0($t0)
li $t1, 58102
la $t0, _data
addi $t0, $t0, 5560
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5540
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5532
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5560
lw $t2, 0($t0)
bne $t1, $t2, L160
la $t0, _data
addi $t0, $t0, 5536
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5532
sw $t1, 0($t0)
L160:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 5532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 5564
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 5528
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5564
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5568
sw $t3, 0($t0)
li $t1, 11996
la $t0, _data
addi $t0, $t0, 5572
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5520
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5512
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5568
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5572
lw $t2, 0($t0)
bgt $t1, $t2, L159
la $t0, _data
addi $t0, $t0, 5516
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5512
sw $t1, 0($t0)
L159:
li $t1, 0
la $t0, _data
addi $t0, $t0, 5580
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5584
sw $t1, 0($t0)
li $t1, 20291
la $t0, _data
addi $t0, $t0, 5588
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5596
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5596
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5588
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5592
sw $t3, 0($t0)
li $t1, 52353
la $t0, _data
addi $t0, $t0, 5600
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5584
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5576
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5592
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5600
lw $t2, 0($t0)
bge $t1, $t2, L161
la $t0, _data
addi $t0, $t0, 5580
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5576
sw $t1, 0($t0)
L161:
li $t1, 0
la $t0, _data
addi $t0, $t0, 5604
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5608
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5608
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5612
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5604
lw $t2, 0($t0)
beq $t1, $t2, L162
la $t0, _data
addi $t0, $t0, 5604
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5612
sw $t1, 0($t0)
L162:
la $t0, _data
addi $t0, $t0, 5612
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1868
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5616
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 5616
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 5620
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 5620
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5208
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5624
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5632
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5636
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5644
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5648
sw $t1, 0($t0)
li $t1, 1887
la $t0, _data
addi $t0, $t0, 5652
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5648
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5640
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5652
lw $t2, 0($t0)
bge $t1, $t2, L164
la $t0, _data
addi $t0, $t0, 5644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5640
sw $t1, 0($t0)
L164:
la $t0, _data
addi $t0, $t0, 5636
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5628
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5640
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2276
lw $t2, 0($t0)
bgt $t1, $t2, L163
la $t0, _data
addi $t0, $t0, 5632
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5628
sw $t1, 0($t0)
L163:
la $t0, _data
addi $t0, $t0, 4960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5216
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5660
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5660
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3292
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5656
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5668
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5668
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5656
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5664
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 5664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5628
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5624
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5576
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 5672
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5676
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5680
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5680
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5684
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5672
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5676
lw $t2, 0($t0)
beq $t1, $t2, L165
la $t0, _data
addi $t0, $t0, 5676
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5684
sw $t1, 0($t0)
L165:
la $t0, _data
addi $t0, $t0, 5508
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5500
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5512
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5684
lw $t2, 0($t0)
ble $t1, $t2, L158
la $t0, _data
addi $t0, $t0, 5504
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5500
sw $t1, 0($t0)
L158:
li $t1, 0
la $t0, _data
addi $t0, $t0, 5692
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5696
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5696
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5688
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5704
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5708
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5716
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5720
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5716
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5712
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5728
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5732
sw $t1, 0($t0)
li $t1, 35431
la $t0, _data
addi $t0, $t0, 5736
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5732
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5724
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5224
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5736
lw $t2, 0($t0)
blt $t1, $t2, L169
la $t0, _data
addi $t0, $t0, 5728
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5724
sw $t1, 0($t0)
L169:
la $t0, _data
addi $t0, $t0, 5724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5716
lw $t2, 0($t0)
beq $t1, $t2, L168
li $t1, 37530
la $t0, _data
addi $t0, $t0, 5740
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5740
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5716
lw $t2, 0($t0)
beq $t1, $t2, L168
la $t0, _data
addi $t0, $t0, 5720
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5712
sw $t1, 0($t0)
L168:
li $t1, 0
la $t0, _data
addi $t0, $t0, 5748
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5752
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5752
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5744
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5760
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5764
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5760
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5756
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2260
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5760
lw $t2, 0($t0)
beq $t1, $t2, L171
la $t0, _data
addi $t0, $t0, 5232
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5760
lw $t2, 0($t0)
beq $t1, $t2, L171
la $t0, _data
addi $t0, $t0, 5764
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5756
sw $t1, 0($t0)
L171:
la $t0, _data
addi $t0, $t0, 5756
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5748
lw $t2, 0($t0)
bne $t1, $t2, L170
la $t0, _data
addi $t0, $t0, 2268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5748
lw $t2, 0($t0)
bne $t1, $t2, L170
la $t0, _data
addi $t0, $t0, 5748
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5744
sw $t1, 0($t0)
L170:
li $t1, 63347
la $t0, _data
addi $t0, $t0, 5768
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2800
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5768
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5772
sw $t3, 0($t0)
li $t1, 54287
la $t0, _data
addi $t0, $t0, 5776
sw $t1, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 5776
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5772
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5744
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5712
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 5780
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 5780
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1900
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5784
sw $t3, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5788
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 5792
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5788
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5792
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5796
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 5796
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5800
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 5800
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 5804
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 5804
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3252
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5808
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5816
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5820
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5812
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5240
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 5824
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 5824
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5816
lw $t2, 0($t0)
beq $t1, $t2, L172
li $t1, 27580
la $t0, _data
addi $t0, $t0, 5828
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5828
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5816
lw $t2, 0($t0)
beq $t1, $t2, L172
la $t0, _data
addi $t0, $t0, 5820
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5812
sw $t1, 0($t0)
L172:
li $t1, 0
la $t0, _data
addi $t0, $t0, 5836
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5840
sw $t1, 0($t0)
li $t1, 10452
la $t0, _data
addi $t0, $t0, 5844
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5848
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5852
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5852
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5856
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5844
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5848
lw $t2, 0($t0)
beq $t1, $t2, L174
la $t0, _data
addi $t0, $t0, 5848
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5856
sw $t1, 0($t0)
L174:
li $t1, 3769
la $t0, _data
addi $t0, $t0, 5860
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5840
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5832
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5856
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5860
lw $t2, 0($t0)
bgt $t1, $t2, L173
la $t0, _data
addi $t0, $t0, 5836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5832
sw $t1, 0($t0)
L173:
li $t1, 0
la $t0, _data
addi $t0, $t0, 5868
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5872
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5880
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5880
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2276
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5876
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 5872
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5864
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5876
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5248
lw $t2, 0($t0)
beq $t1, $t2, L175
la $t0, _data
addi $t0, $t0, 5868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5864
sw $t1, 0($t0)
L175:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 5864
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5832
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5812
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5808
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5784
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 5884
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 5884
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2760
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 5888
sw $t3, 0($t0)
li $t1, 3912
la $t0, _data
addi $t0, $t0, 5892
sw $t1, 0($t0)
li $t1, 37911
la $t0, _data
addi $t0, $t0, 5896
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5892
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5896
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 5900
sw $t3, 0($t0)
li $t1, 36893
la $t0, _data
addi $t0, $t0, 5904
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5900
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5904
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 5908
sw $t3, 0($t0)
li $t1, 50469
la $t0, _data
addi $t0, $t0, 5912
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5920
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5920
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5912
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5916
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 5916
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3352
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5924
sw $t3, 0($t0)
li $t1, 3
la $t0, _data
addi $t0, $t0, 5928
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 5932
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5928
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5932
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5936
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 5936
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5940
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 5940
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 5944
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 5952
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5952
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5948
sw $t1, 0($t0)
li $t1, 50351
la $t0, _data
addi $t0, $t0, 5960
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5960
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5964
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 5964
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5952
lw $t2, 0($t0)
beq $t1, $t2, L176
la $t0, _data
addi $t0, $t0, 5256
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5952
lw $t2, 0($t0)
beq $t1, $t2, L176
la $t0, _data
addi $t0, $t0, 5956
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5948
sw $t1, 0($t0)
L176:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 5264
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5948
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5944
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5924
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 5968
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 5708
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5700
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5888
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5968
lw $t2, 0($t0)
beq $t1, $t2, L167
la $t0, _data
addi $t0, $t0, 5704
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5700
sw $t1, 0($t0)
L167:
la $t0, _data
addi $t0, $t0, 5700
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5692
lw $t2, 0($t0)
bne $t1, $t2, L166
li $t1, 0
la $t0, _data
addi $t0, $t0, 5972
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 5976
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5976
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5980
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5972
lw $t2, 0($t0)
beq $t1, $t2, L177
la $t0, _data
addi $t0, $t0, 5972
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5980
sw $t1, 0($t0)
L177:
li $t1, 22440
la $t0, _data
addi $t0, $t0, 5984
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5980
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5984
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 5988
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 5988
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 5992
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 5992
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5692
lw $t2, 0($t0)
bne $t1, $t2, L166
la $t0, _data
addi $t0, $t0, 5692
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5688
sw $t1, 0($t0)
L166:
li $t1, 65276
la $t0, _data
addi $t0, $t0, 5996
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6004
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6004
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 5996
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6000
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6012
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6012
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6000
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6008
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6020
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6008
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6016
sw $t3, 0($t0)
L178:
li $t1, 0
la $t0, _data
addi $t0, $t0, 6028
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6032
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6040
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6044
sw $t1, 0($t0)
li $t1, 50743
la $t0, _data
addi $t0, $t0, 6048
sw $t1, 0($t0)
li $t1, 57994
la $t0, _data
addi $t0, $t0, 6052
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6044
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6036
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6048
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6052
lw $t2, 0($t0)
beq $t1, $t2, L181
la $t0, _data
addi $t0, $t0, 6040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6036
sw $t1, 0($t0)
L181:
la $t0, _data
addi $t0, $t0, 6032
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6024
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6036
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1868
lw $t2, 0($t0)
beq $t1, $t2, L180
la $t0, _data
addi $t0, $t0, 6028
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6024
sw $t1, 0($t0)
L180:
li $t1, 0
la $t0, _data
addi $t0, $t0, 6060
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2284
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6068
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6064
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6056
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2752
lw $t2, 0($t0)
ble $t1, $t2, L182
la $t0, _data
addi $t0, $t0, 6060
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6056
sw $t1, 0($t0)
L182:
li $t1, 10153
la $t0, _data
addi $t0, $t0, 6072
sw $t1, 0($t0)
li $t1, 62431
la $t0, _data
addi $t0, $t0, 6076
sw $t1, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 6076
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6056
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6024
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 6080
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 6080
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4976
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 6084
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 4968
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6084
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6088
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6092
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6092
lw $t2, 0($t0)
beq $t1, $t2, L179
li $t1, 0
la $t0, _data
addi $t0, $t0, 6100
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6100
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3292
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6096
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6104
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6096
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6104
lw $t2, 0($t0)
beq $t1, $t2, L183
li $t1, 53988
la $t0, _data
addi $t0, $t0, 6112
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6108
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1844
sw $t1, 0($t0)
li $t1, 18208
la $t0, _data
addi $t0, $t0, 6116
sw $t1, 0($t0)
li $t1, 26054
la $t0, _data
addi $t0, $t0, 6120
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6116
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6120
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 6124
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6124
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2252
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 6128
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6136
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6140
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6136
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6132
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6148
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6152
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6144
sw $t1, 0($t0)
li $t1, 55206
la $t0, _data
addi $t0, $t0, 6156
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6156
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6148
lw $t2, 0($t0)
beq $t1, $t2, L185
la $t0, _data
addi $t0, $t0, 2776
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6148
lw $t2, 0($t0)
beq $t1, $t2, L185
la $t0, _data
addi $t0, $t0, 6152
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6144
sw $t1, 0($t0)
L185:
la $t0, _data
addi $t0, $t0, 6144
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6136
lw $t2, 0($t0)
beq $t1, $t2, L184
li $t1, 10775
la $t0, _data
addi $t0, $t0, 6160
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6160
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6136
lw $t2, 0($t0)
beq $t1, $t2, L184
la $t0, _data
addi $t0, $t0, 6140
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6132
sw $t1, 0($t0)
L184:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 6132
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 6164
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 3292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6108
sw $t1, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 3292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6164
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3352
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6128
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 6168
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6172
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6168
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6172
lw $t2, 0($t0)
beq $t1, $t2, L186
li $t1, 0
la $t0, _data
addi $t0, $t0, 6180
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6184
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6184
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6176
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6192
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2300
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6188
sw $t3, 0($t0)
li $t1, 38050
la $t0, _data
addi $t0, $t0, 6196
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6204
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6204
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6196
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6200
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6188
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6200
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6208
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6208
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6180
lw $t2, 0($t0)
bne $t1, $t2, L187
li $t1, 0
la $t0, _data
addi $t0, $t0, 6216
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6216
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2268
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6212
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6224
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6224
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6212
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6220
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 3260
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2776
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6228
sw $t3, 0($t0)
li $t1, 9961
la $t0, _data
addi $t0, $t0, 6232
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6232
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2956
sw $t1, 0($t0)
li $t1, 63128
la $t0, _data
addi $t0, $t0, 6236
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6236
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2252
sw $t1, 0($t0)
li $t1, 39937
la $t0, _data
addi $t0, $t0, 6240
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6240
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3344
sw $t1, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 6240
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 6244
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6248
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6252
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6256
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6248
lw $t2, 0($t0)
beq $t1, $t2, L188
la $t0, _data
addi $t0, $t0, 6248
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6256
sw $t1, 0($t0)
L188:
li $t1, 45392
la $t0, _data
addi $t0, $t0, 6260
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6268
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6260
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6264
sw $t3, 0($t0)
li $t1, 35123
la $t0, _data
addi $t0, $t0, 6272
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6264
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6272
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6276
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 6276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6256
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6236
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6232
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6228
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 6280
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 6220
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6280
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6284
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6180
lw $t2, 0($t0)
bne $t1, $t2, L187
la $t0, _data
addi $t0, $t0, 6180
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6176
sw $t1, 0($t0)
L187:
addi $sp, $sp, 264
la $t0, _data
addi $t0, $t0, 6176
lw, $v0, 0($t0)
jr $ra
j L190
L186:
li $t1, 0
la $t0, _data
addi $t0, $t0, 6292
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6296
sw $t1, 0($t0)
li $t1, 37748
la $t0, _data
addi $t0, $t0, 6300
sw $t1, 0($t0)
li $t1, 2
la $t0, _data
addi $t0, $t0, 6304
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 6308
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6304
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6308
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6312
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6312
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6316
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6316
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 6320
sw $t2, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 6320
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 6324
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 6296
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6288
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6324
lw $t2, 0($t0)
beq $t1, $t2, L190
la $t0, _data
addi $t0, $t0, 6292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6288
sw $t1, 0($t0)
L190:
j L193
L183:
li $t1, 0
la $t0, _data
addi $t0, $t0, 6332
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6336
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6340
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6344
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6344
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6348
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2348
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6340
lw $t2, 0($t0)
beq $t1, $t2, L195
la $t0, _data
addi $t0, $t0, 6340
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6348
sw $t1, 0($t0)
L195:
li $t1, 0
la $t0, _data
addi $t0, $t0, 6356
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6356
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6348
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6352
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6360
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6364
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6364
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6368
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6352
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6360
lw $t2, 0($t0)
beq $t1, $t2, L196
la $t0, _data
addi $t0, $t0, 6360
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6368
sw $t1, 0($t0)
L196:
li $t1, 0
la $t0, _data
addi $t0, $t0, 6372
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6376
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6376
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6380
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6372
lw $t2, 0($t0)
beq $t1, $t2, L197
la $t0, _data
addi $t0, $t0, 6372
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6380
sw $t1, 0($t0)
L197:
la $t0, _data
addi $t0, $t0, 6368
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6380
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 6384
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6392
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6396
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6404
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6408
sw $t1, 0($t0)
li $t1, 29876
la $t0, _data
addi $t0, $t0, 6412
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6408
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6400
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6412
lw $t2, 0($t0)
bge $t1, $t2, L199
la $t0, _data
addi $t0, $t0, 6404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6400
sw $t1, 0($t0)
L199:
la $t0, _data
addi $t0, $t0, 6396
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6388
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6400
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2308
lw $t2, 0($t0)
beq $t1, $t2, L198
la $t0, _data
addi $t0, $t0, 6392
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6388
sw $t1, 0($t0)
L198:
li $t1, 0
la $t0, _data
addi $t0, $t0, 6420
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6424
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6432
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6436
sw $t1, 0($t0)
li $t1, 61723
la $t0, _data
addi $t0, $t0, 6440
sw $t1, 0($t0)
li $t1, 39262
la $t0, _data
addi $t0, $t0, 6444
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6436
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6428
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6440
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6444
lw $t2, 0($t0)
bne $t1, $t2, L201
la $t0, _data
addi $t0, $t0, 6432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6428
sw $t1, 0($t0)
L201:
li $t1, 33646
la $t0, _data
addi $t0, $t0, 6448
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6424
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6416
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6428
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6448
lw $t2, 0($t0)
beq $t1, $t2, L200
la $t0, _data
addi $t0, $t0, 6420
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6416
sw $t1, 0($t0)
L200:
li $t1, 0
la $t0, _data
addi $t0, $t0, 6456
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6456
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2268
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6452
sw $t3, 0($t0)
li $t1, 100
la $t0, _data
addi $t0, $t0, 6460
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6468
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6468
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6460
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6464
sw $t3, 0($t0)
li $t1, 11637
la $t0, _data
addi $t0, $t0, 6472
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6464
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6472
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6476
sw $t3, 0($t0)
li $t1, 5003
la $t0, _data
addi $t0, $t0, 6480
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2316
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6480
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6484
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6484
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1868
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 6488
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 6488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6476
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6416
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6388
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 6492
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 6336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6328
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6492
lw $t2, 0($t0)
bge $t1, $t2, L194
la $t0, _data
addi $t0, $t0, 6332
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6328
sw $t1, 0($t0)
L194:
li $t1, 0
la $t0, _data
addi $t0, $t0, 6496
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6328
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6496
lw $t2, 0($t0)
beq $t1, $t2, L193
li $t1, 6
la $t0, _data
addi $t0, $t0, 6500
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 6504
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6500
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6504
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6508
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6508
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6512
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6512
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 6516
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 6516
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2332
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6520
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 6520
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 6524
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 6524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 4984
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2564
sw $t1, 0($t0)
addi $sp, $sp, 264
la $t0, _data
addi $t0, $t0, 6524
lw, $v0, 0($t0)
jr $ra
j L183
L193:
j L178
L179:
j L68
L69:
j L65
L66:
addi $sp, $sp, -24
move $t1, $sp
la $t0, _data
addi $t0, $t0, 6528
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6528
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6532
sw $t1, 0($t0)
li $t1, 51312
la $t0, _data
addi $t0, $t0, 6540
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6540
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6536
sw $t1, 0($t0)
li $t1, 35384
la $t0, _data
addi $t0, $t0, 6548
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6548
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6544
sw $t1, 0($t0)
li $t1, 21630
la $t0, _data
addi $t0, $t0, 6556
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6552
sw $t1, 0($t0)
li $t1, 51052
la $t0, _data
addi $t0, $t0, 6564
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6564
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6560
sw $t1, 0($t0)
li $t1, 20591
la $t0, _data
addi $t0, $t0, 6572
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6572
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6568
sw $t1, 0($t0)
li $t1, 14088
la $t0, _data
addi $t0, $t0, 6580
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6580
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6576
sw $t1, 0($t0)
li $t1, 61205
la $t0, _data
addi $t0, $t0, 6588
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6588
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6584
sw $t1, 0($t0)
li $t1, 17487
la $t0, _data
addi $t0, $t0, 6596
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6596
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6592
sw $t1, 0($t0)
li $t1, 2540
la $t0, _data
addi $t0, $t0, 6604
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6604
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6600
sw $t1, 0($t0)
li $t1, 13878
la $t0, _data
addi $t0, $t0, 6612
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6612
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6608
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6616
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 6620
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6616
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6620
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6624
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6624
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6532
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6628
sw $t3, 0($t0)
li $t1, 43541
la $t0, _data
addi $t0, $t0, 6632
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6632
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6628
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6636
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 6640
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6636
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6640
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6644
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6532
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6648
sw $t3, 0($t0)
li $t1, 57746
la $t0, _data
addi $t0, $t0, 6652
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6652
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6648
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 6656
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 6660
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6660
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6664
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6532
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6668
sw $t3, 0($t0)
li $t1, 24653
la $t0, _data
addi $t0, $t0, 6672
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6672
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6668
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 6676
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 6680
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6676
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6680
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6684
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6684
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6532
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6688
sw $t3, 0($t0)
li $t1, 16055
la $t0, _data
addi $t0, $t0, 6692
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6692
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6688
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 6696
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 6700
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6696
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6700
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6704
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6704
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6532
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6708
sw $t3, 0($t0)
li $t1, 2171
la $t0, _data
addi $t0, $t0, 6712
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6712
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6708
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 6716
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 6720
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6716
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6720
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6724
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6532
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6728
sw $t3, 0($t0)
li $t1, 22245
la $t0, _data
addi $t0, $t0, 6732
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6732
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6728
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6740
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6744
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6744
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6736
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6752
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6756
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6752
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6748
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6592
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6752
lw $t2, 0($t0)
beq $t1, $t2, L203
li $t1, 55993
la $t0, _data
addi $t0, $t0, 6760
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6760
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1916
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6764
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6764
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6752
lw $t2, 0($t0)
beq $t1, $t2, L203
la $t0, _data
addi $t0, $t0, 6756
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6748
sw $t1, 0($t0)
L203:
la $t0, _data
addi $t0, $t0, 6748
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6740
lw $t2, 0($t0)
bne $t1, $t2, L202
li $t1, 0
la $t0, _data
addi $t0, $t0, 6772
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6776
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6784
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6788
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6792
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6796
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6796
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6800
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6536
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6792
lw $t2, 0($t0)
beq $t1, $t2, L206
la $t0, _data
addi $t0, $t0, 6792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6800
sw $t1, 0($t0)
L206:
li $t1, 47564
la $t0, _data
addi $t0, $t0, 6804
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6788
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6780
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6800
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6804
lw $t2, 0($t0)
bge $t1, $t2, L205
la $t0, _data
addi $t0, $t0, 6784
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6780
sw $t1, 0($t0)
L205:
li $t1, 57368
la $t0, _data
addi $t0, $t0, 6808
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6816
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6808
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6812
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6776
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6768
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6780
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6812
lw $t2, 0($t0)
bgt $t1, $t2, L204
la $t0, _data
addi $t0, $t0, 6772
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6768
sw $t1, 0($t0)
L204:
la $t0, _data
addi $t0, $t0, 6768
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6740
lw $t2, 0($t0)
bne $t1, $t2, L202
la $t0, _data
addi $t0, $t0, 6740
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6736
sw $t1, 0($t0)
L202:
li $t1, 0
la $t0, _data
addi $t0, $t0, 6820
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6736
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6820
lw $t2, 0($t0)
beq $t1, $t2, L207
li $t1, 0
la $t0, _data
addi $t0, $t0, 6828
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6832
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6828
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6824
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6840
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6844
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6844
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6836
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6852
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6856
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6856
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6848
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1908
lw $t2, 0($t0)
bne $t1, $t2, L210
la $t0, _data
addi $t0, $t0, 6852
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6848
sw $t1, 0($t0)
L210:
la $t0, _data
addi $t0, $t0, 6848
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6840
lw $t2, 0($t0)
bne $t1, $t2, L209
li $t1, 28205
la $t0, _data
addi $t0, $t0, 6860
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6860
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6840
lw $t2, 0($t0)
bne $t1, $t2, L209
la $t0, _data
addi $t0, $t0, 6840
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6836
sw $t1, 0($t0)
L209:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 6836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 6864
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6868
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6872
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6872
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6876
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6864
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6868
lw $t2, 0($t0)
beq $t1, $t2, L211
la $t0, _data
addi $t0, $t0, 6868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6876
sw $t1, 0($t0)
L211:
li $t1, 0
la $t0, _data
addi $t0, $t0, 6880
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6884
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6884
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6888
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6876
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6880
lw $t2, 0($t0)
beq $t1, $t2, L212
la $t0, _data
addi $t0, $t0, 6880
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6888
sw $t1, 0($t0)
L212:
li $t1, 16171
la $t0, _data
addi $t0, $t0, 6892
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6896
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6900
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6900
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6904
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6892
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6896
lw $t2, 0($t0)
beq $t1, $t2, L213
la $t0, _data
addi $t0, $t0, 6896
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6904
sw $t1, 0($t0)
L213:
li $t1, 0
la $t0, _data
addi $t0, $t0, 6908
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6912
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6912
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6916
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6904
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6908
lw $t2, 0($t0)
beq $t1, $t2, L214
la $t0, _data
addi $t0, $t0, 6908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6916
sw $t1, 0($t0)
L214:
la $t0, _data
addi $t0, $t0, 6888
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6916
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6920
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6920
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6828
lw $t2, 0($t0)
beq $t1, $t2, L208
li $t1, 20642
la $t0, _data
addi $t0, $t0, 6924
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6924
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6828
lw $t2, 0($t0)
beq $t1, $t2, L208
la $t0, _data
addi $t0, $t0, 6832
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6824
sw $t1, 0($t0)
L208:
j L215
L207:
li $t1, 0
la $t0, _data
addi $t0, $t0, 6928
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6932
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6932
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6936
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6928
lw $t2, 0($t0)
beq $t1, $t2, L216
la $t0, _data
addi $t0, $t0, 6928
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6936
sw $t1, 0($t0)
L216:
addi $sp, $sp, 288
la $t0, _data
addi $t0, $t0, 6936
lw, $v0, 0($t0)
jr $ra
L215:
li $t1, 0
la $t0, _data
addi $t0, $t0, 6944
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6944
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6940
sw $t1, 0($t0)
li $t1, 58082
la $t0, _data
addi $t0, $t0, 6952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6952
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6944
lw $t2, 0($t0)
beq $t1, $t2, L219
li $t1, 12359
la $t0, _data
addi $t0, $t0, 6956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6956
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6944
lw $t2, 0($t0)
beq $t1, $t2, L219
la $t0, _data
addi $t0, $t0, 6948
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6940
sw $t1, 0($t0)
L219:
li $t1, 0
la $t0, _data
addi $t0, $t0, 6964
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6968
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6964
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6960
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6976
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6976
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1900
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 6972
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 6972
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6964
lw $t2, 0($t0)
beq $t1, $t2, L220
li $t1, 59905
la $t0, _data
addi $t0, $t0, 6980
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6980
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6964
lw $t2, 0($t0)
beq $t1, $t2, L220
la $t0, _data
addi $t0, $t0, 6968
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6960
sw $t1, 0($t0)
L220:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 6960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 6984
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 6992
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 6996
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6568
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6552
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7000
sw $t3, 0($t0)
li $t1, 26192
la $t0, _data
addi $t0, $t0, 7004
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6996
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6988
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7004
lw $t2, 0($t0)
ble $t1, $t2, L221
la $t0, _data
addi $t0, $t0, 6992
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6988
sw $t1, 0($t0)
L221:
li $t1, 8
la $t0, _data
addi $t0, $t0, 7008
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 7012
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7008
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7012
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7016
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7016
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7020
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7020
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 7024
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7032
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7032
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7024
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7028
sw $t3, 0($t0)
li $t1, 31195
la $t0, _data
addi $t0, $t0, 7036
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7036
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1836
sw $t1, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 7036
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7028
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6988
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6984
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6940
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 7040
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7044
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7048
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7048
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7052
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7044
lw $t2, 0($t0)
beq $t1, $t2, L222
la $t0, _data
addi $t0, $t0, 7044
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7052
sw $t1, 0($t0)
L222:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7056
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7060
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7052
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7056
lw $t2, 0($t0)
beq $t1, $t2, L223
la $t0, _data
addi $t0, $t0, 7056
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7064
sw $t1, 0($t0)
L223:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7064
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7068
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7076
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7076
lw $t2, 0($t0)
beq $t1, $t2, L218
li $t1, 0
la $t0, _data
addi $t0, $t0, 7084
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7088
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7080
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 7092
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7092
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7096
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7096
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7100
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7100
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 7104
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7112
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7104
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7108
sw $t3, 0($t0)
li $t1, 63028
la $t0, _data
addi $t0, $t0, 7116
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7120
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7124
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7124
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7128
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7116
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7120
lw $t2, 0($t0)
beq $t1, $t2, L225
la $t0, _data
addi $t0, $t0, 7120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7128
sw $t1, 0($t0)
L225:
li $t1, 5196
la $t0, _data
addi $t0, $t0, 7132
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7128
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7132
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 7136
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7108
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7136
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7140
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7140
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7084
lw $t2, 0($t0)
bne $t1, $t2, L224
li $t1, 2
la $t0, _data
addi $t0, $t0, 7144
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 7148
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7144
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7148
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7152
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7152
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7156
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7156
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 7160
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7168
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7168
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7160
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7164
sw $t3, 0($t0)
li $t1, 26827
la $t0, _data
addi $t0, $t0, 7172
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7164
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7172
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7176
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7176
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7084
lw $t2, 0($t0)
bne $t1, $t2, L224
la $t0, _data
addi $t0, $t0, 7084
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7080
sw $t1, 0($t0)
L224:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7180
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7080
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7180
lw $t2, 0($t0)
beq $t1, $t2, L226
L227:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7184
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2948
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7184
lw $t2, 0($t0)
beq $t1, $t2, L228
li $t1, 2488
la $t0, _data
addi $t0, $t0, 7192
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7188
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7200
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7188
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7196
sw $t3, 0($t0)
li $t1, 53467
la $t0, _data
addi $t0, $t0, 7204
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7212
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7204
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7208
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7196
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7208
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7216
sw $t3, 0($t0)
j L227
L228:
addi $sp, $sp, 288
la $t0, _data
addi $t0, $t0, 2332
lw, $v0, 0($t0)
jr $ra
L229:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7224
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7228
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7236
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7240
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7240
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7232
sw $t1, 0($t0)
li $t1, 40915
la $t0, _data
addi $t0, $t0, 7244
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2292
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7248
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7248
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7236
lw $t2, 0($t0)
bne $t1, $t2, L232
li $t1, 63693
la $t0, _data
addi $t0, $t0, 7252
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7236
lw $t2, 0($t0)
bne $t1, $t2, L232
la $t0, _data
addi $t0, $t0, 7236
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7232
sw $t1, 0($t0)
L232:
li $t1, 4
la $t0, _data
addi $t0, $t0, 7256
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7232
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7256
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7260
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7260
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7264
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7264
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 7268
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7276
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7280
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7272
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 7284
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7284
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7288
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7288
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7292
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7292
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 7296
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 7296
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7276
lw $t2, 0($t0)
beq $t1, $t2, L233
li $t1, 5418
la $t0, _data
addi $t0, $t0, 7300
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7276
lw $t2, 0($t0)
beq $t1, $t2, L233
la $t0, _data
addi $t0, $t0, 7280
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7272
sw $t1, 0($t0)
L233:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7308
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7312
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7312
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7304
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7320
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7324
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7316
sw $t1, 0($t0)
li $t1, 43456
la $t0, _data
addi $t0, $t0, 7328
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7328
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7320
lw $t2, 0($t0)
bne $t1, $t2, L235
la $t0, _data
addi $t0, $t0, 6560
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7320
lw $t2, 0($t0)
bne $t1, $t2, L235
la $t0, _data
addi $t0, $t0, 7320
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7316
sw $t1, 0($t0)
L235:
la $t0, _data
addi $t0, $t0, 7316
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7308
lw $t2, 0($t0)
bne $t1, $t2, L234
la $t0, _data
addi $t0, $t0, 1836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7308
lw $t2, 0($t0)
bne $t1, $t2, L234
la $t0, _data
addi $t0, $t0, 7308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7304
sw $t1, 0($t0)
L234:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7332
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7336
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7340
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7332
lw $t2, 0($t0)
beq $t1, $t2, L236
la $t0, _data
addi $t0, $t0, 7332
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7340
sw $t1, 0($t0)
L236:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7348
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7348
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7340
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7344
sw $t3, 0($t0)
li $t1, 9
la $t0, _data
addi $t0, $t0, 7352
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 7356
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7352
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7356
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7360
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7360
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7364
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7364
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 7368
sw $t2, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 7368
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7344
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6568
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7304
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7272
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 7372
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 1908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7372
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 7376
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7228
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7220
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7376
lw $t2, 0($t0)
blt $t1, $t2, L231
la $t0, _data
addi $t0, $t0, 7224
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7220
sw $t1, 0($t0)
L231:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7380
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7220
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7380
lw $t2, 0($t0)
beq $t1, $t2, L230
L237:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7388
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7388
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6608
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7384
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7392
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7392
lw $t2, 0($t0)
beq $t1, $t2, L238
li $t1, 0
la $t0, _data
addi $t0, $t0, 7400
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7400
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2564
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7396
sw $t3, 0($t0)
j L237
L238:
j L229
L230:
li $t1, 35666
la $t0, _data
addi $t0, $t0, 7408
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7408
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7404
sw $t1, 0($t0)
li $t1, 36688
la $t0, _data
addi $t0, $t0, 7416
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7416
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7412
sw $t1, 0($t0)
li $t1, 65015
la $t0, _data
addi $t0, $t0, 7420
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7424
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7420
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7424
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7428
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7428
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2792
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7432
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1852
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1876
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7412
sw $t1, 0($t0)
li $t1, 2
la $t0, _data
addi $t0, $t0, 7436
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 7440
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7436
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7440
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7444
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7444
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7448
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7448
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 7452
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7460
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7464
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7460
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7456
sw $t1, 0($t0)
li $t1, 19866
la $t0, _data
addi $t0, $t0, 7468
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7472
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7476
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7476
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7480
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7468
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7472
lw $t2, 0($t0)
beq $t1, $t2, L240
la $t0, _data
addi $t0, $t0, 7472
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7480
sw $t1, 0($t0)
L240:
la $t0, _data
addi $t0, $t0, 7480
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7460
lw $t2, 0($t0)
beq $t1, $t2, L239
li $t1, 50766
la $t0, _data
addi $t0, $t0, 7484
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7484
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7460
lw $t2, 0($t0)
beq $t1, $t2, L239
la $t0, _data
addi $t0, $t0, 7464
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7456
sw $t1, 0($t0)
L239:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7492
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7496
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7488
sw $t1, 0($t0)
li $t1, 18141
la $t0, _data
addi $t0, $t0, 7500
sw $t1, 0($t0)
li $t1, 36037
la $t0, _data
addi $t0, $t0, 7504
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7500
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7508
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7508
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7492
lw $t2, 0($t0)
bne $t1, $t2, L241
la $t0, _data
addi $t0, $t0, 2340
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7492
lw $t2, 0($t0)
bne $t1, $t2, L241
la $t0, _data
addi $t0, $t0, 7492
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7488
sw $t1, 0($t0)
L241:
li $t1, 5873
la $t0, _data
addi $t0, $t0, 7512
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7516
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7520
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7520
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7524
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7512
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7516
lw $t2, 0($t0)
beq $t1, $t2, L242
la $t0, _data
addi $t0, $t0, 7516
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7524
sw $t1, 0($t0)
L242:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7528
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7532
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7536
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7528
lw $t2, 0($t0)
beq $t1, $t2, L243
la $t0, _data
addi $t0, $t0, 7528
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7536
sw $t1, 0($t0)
L243:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 7536
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7456
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 7540
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 7540
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2252
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7544
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7552
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7556
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7564
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7568
sw $t1, 0($t0)
li $t1, 10687
la $t0, _data
addi $t0, $t0, 7572
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7568
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7560
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2776
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7572
lw $t2, 0($t0)
beq $t1, $t2, L245
la $t0, _data
addi $t0, $t0, 7564
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7560
sw $t1, 0($t0)
L245:
la $t0, _data
addi $t0, $t0, 7556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7548
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7560
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2064
lw $t2, 0($t0)
bne $t1, $t2, L244
la $t0, _data
addi $t0, $t0, 7552
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7548
sw $t1, 0($t0)
L244:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 7548
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1876
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 7576
sw $v0, 0($t0)
li $t1, 48396
la $t0, _data
addi $t0, $t0, 7580
sw $t1, 0($t0)
li $t1, 242
la $t0, _data
addi $t0, $t0, 7584
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7580
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7588
sw $t3, 0($t0)
li $t1, 36879
la $t0, _data
addi $t0, $t0, 7592
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2348
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7592
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7596
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7588
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7596
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7600
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7608
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7608
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6536
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7604
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7600
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7604
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7612
sw $t3, 0($t0)
j L246
L226:
addi $sp, $sp, 288
la $t0, _data
addi $t0, $t0, 1916
lw, $v0, 0($t0)
jr $ra
L246:
j L215
L218:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7620
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7624
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7620
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7616
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1892
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7620
lw $t2, 0($t0)
beq $t1, $t2, L247
li $t1, 0
la $t0, _data
addi $t0, $t0, 7632
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7636
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 7640
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7640
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7644
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7648
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7648
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 7652
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7660
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7660
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7652
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7656
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 2260
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2348
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7664
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7636
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7628
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7664
lw $t2, 0($t0)
bge $t1, $t2, L248
la $t0, _data
addi $t0, $t0, 7632
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7628
sw $t1, 0($t0)
L248:
la $t0, _data
addi $t0, $t0, 7628
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7620
lw $t2, 0($t0)
beq $t1, $t2, L247
la $t0, _data
addi $t0, $t0, 7624
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7616
sw $t1, 0($t0)
L247:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7668
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7616
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7668
lw $t2, 0($t0)
beq $t1, $t2, L249
li $t1, 60855
la $t0, _data
addi $t0, $t0, 7672
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7680
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7680
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7672
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7676
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7676
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1844
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 7684
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 7684
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 7688
sw $v0, 0($t0)
li $t1, 6248
la $t0, _data
addi $t0, $t0, 7692
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7688
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7692
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 7696
sw $t3, 0($t0)
addi $sp, $sp, 288
la $t0, _data
addi $t0, $t0, 7696
lw, $v0, 0($t0)
jr $ra
j L278
L249:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7704
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7708
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7716
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7720
sw $t1, 0($t0)
li $t1, 2539
la $t0, _data
addi $t0, $t0, 7724
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7728
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7732
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7732
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7736
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7728
lw $t2, 0($t0)
beq $t1, $t2, L253
la $t0, _data
addi $t0, $t0, 7728
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7736
sw $t1, 0($t0)
L253:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 7736
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 7740
sw $v0, 0($t0)
li $t1, 58347
la $t0, _data
addi $t0, $t0, 7744
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6576
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7744
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7748
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7720
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7712
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7740
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7748
lw $t2, 0($t0)
blt $t1, $t2, L252
la $t0, _data
addi $t0, $t0, 7716
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7712
sw $t1, 0($t0)
L252:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7752
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7756
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7756
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7760
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6584
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7752
lw $t2, 0($t0)
beq $t1, $t2, L254
la $t0, _data
addi $t0, $t0, 7752
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7760
sw $t1, 0($t0)
L254:
la $t0, _data
addi $t0, $t0, 7708
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7700
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7712
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7760
lw $t2, 0($t0)
bge $t1, $t2, L251
la $t0, _data
addi $t0, $t0, 7704
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7700
sw $t1, 0($t0)
L251:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7764
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7700
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7764
lw $t2, 0($t0)
beq $t1, $t2, L255
L256:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 3292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 7768
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7776
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7776
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7768
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7772
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7780
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7772
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7780
lw $t2, 0($t0)
beq $t1, $t2, L257
li $t1, 0
la $t0, _data
addi $t0, $t0, 7788
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7792
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7784
sw $t1, 0($t0)
li $t1, 11445
la $t0, _data
addi $t0, $t0, 7796
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7804
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7804
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7796
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7800
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7800
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7788
lw $t2, 0($t0)
bne $t1, $t2, L258
li $t1, 19510
la $t0, _data
addi $t0, $t0, 7808
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7808
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7788
lw $t2, 0($t0)
bne $t1, $t2, L258
la $t0, _data
addi $t0, $t0, 7788
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7784
sw $t1, 0($t0)
L258:
addi $sp, $sp, 288
la $t0, _data
addi $t0, $t0, 7784
lw, $v0, 0($t0)
jr $ra
j L256
L257:
j L278
L255:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7816
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7820
sw $t1, 0($t0)
li $t1, 25687
la $t0, _data
addi $t0, $t0, 7824
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7828
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7832
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7832
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7836
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7824
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7828
lw $t2, 0($t0)
beq $t1, $t2, L261
la $t0, _data
addi $t0, $t0, 7828
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7836
sw $t1, 0($t0)
L261:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7840
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7844
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7844
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7848
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7840
lw $t2, 0($t0)
beq $t1, $t2, L262
la $t0, _data
addi $t0, $t0, 7840
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7848
sw $t1, 0($t0)
L262:
la $t0, _data
addi $t0, $t0, 2308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2276
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7852
sw $t3, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 7856
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7852
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7856
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7860
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7860
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7864
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7864
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 7868
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 7820
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7812
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7848
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7868
lw $t2, 0($t0)
ble $t1, $t2, L260
la $t0, _data
addi $t0, $t0, 7816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7812
sw $t1, 0($t0)
L260:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7872
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7812
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7872
lw $t2, 0($t0)
beq $t1, $t2, L263
li $t1, 38272
la $t0, _data
addi $t0, $t0, 7876
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7880
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7884
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7884
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7888
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7876
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7880
lw $t2, 0($t0)
beq $t1, $t2, L264
la $t0, _data
addi $t0, $t0, 7880
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7888
sw $t1, 0($t0)
L264:
li $t1, 0
la $t0, _data
addi $t0, $t0, 7896
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7896
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1836
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7892
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7904
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7904
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7892
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7900
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7888
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7900
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7908
sw $t3, 0($t0)
li $t1, 21998
la $t0, _data
addi $t0, $t0, 7912
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7912
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7916
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7920
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7916
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7920
lw $t2, 0($t0)
beq $t1, $t2, L265
addi $sp, $sp, -24
move $t1, $sp
la $t0, _data
addi $t0, $t0, 7924
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7924
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7928
sw $t1, 0($t0)
li $t1, 13619
la $t0, _data
addi $t0, $t0, 7936
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7936
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7932
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 7940
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 7944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7940
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7944
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7948
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7948
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7928
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7952
sw $t3, 0($t0)
li $t1, 13651
la $t0, _data
addi $t0, $t0, 7956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7956
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7952
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 7960
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 7964
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7964
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7968
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7968
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7928
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7972
sw $t3, 0($t0)
li $t1, 20156
la $t0, _data
addi $t0, $t0, 7976
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7976
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7972
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 7980
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 7984
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7980
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7984
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7988
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 7988
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7928
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 7992
sw $t3, 0($t0)
li $t1, 19037
la $t0, _data
addi $t0, $t0, 7996
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7996
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7992
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 8000
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 8004
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8004
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8008
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8008
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7928
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8012
sw $t3, 0($t0)
li $t1, 57107
la $t0, _data
addi $t0, $t0, 8016
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8016
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8012
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 8020
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 8024
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8024
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8028
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8028
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7928
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8032
sw $t3, 0($t0)
li $t1, 32191
la $t0, _data
addi $t0, $t0, 8036
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8036
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8032
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 8040
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 8044
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8044
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8048
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8048
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7928
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8052
sw $t3, 0($t0)
li $t1, 2461
la $t0, _data
addi $t0, $t0, 8056
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8056
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8052
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8064
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8060
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8076
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8080
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8076
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8072
sw $t1, 0($t0)
li $t1, 27238
la $t0, _data
addi $t0, $t0, 8084
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8084
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2292
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1844
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7932
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8092
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8096
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8104
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8104
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2332
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8100
sw $t3, 0($t0)
li $t1, 3344
la $t0, _data
addi $t0, $t0, 8108
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8096
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8088
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8100
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8108
lw $t2, 0($t0)
beq $t1, $t2, L268
la $t0, _data
addi $t0, $t0, 8092
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8088
sw $t1, 0($t0)
L268:
li $t1, 0
la $t0, _data
addi $t0, $t0, 8116
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8120
sw $t1, 0($t0)
li $t1, 1940
la $t0, _data
addi $t0, $t0, 8124
sw $t1, 0($t0)
li $t1, 65076
la $t0, _data
addi $t0, $t0, 8128
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8112
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8124
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8128
lw $t2, 0($t0)
blt $t1, $t2, L269
la $t0, _data
addi $t0, $t0, 8116
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8112
sw $t1, 0($t0)
L269:
li $t1, 0
la $t0, _data
addi $t0, $t0, 8136
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8140
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8136
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8132
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2556
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8144
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8144
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8136
lw $t2, 0($t0)
beq $t1, $t2, L270
li $t1, 62278
la $t0, _data
addi $t0, $t0, 8148
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8136
lw $t2, 0($t0)
beq $t1, $t2, L270
la $t0, _data
addi $t0, $t0, 8140
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8132
sw $t1, 0($t0)
L270:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 8132
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1844
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8084
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 8152
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 8152
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8076
lw $t2, 0($t0)
beq $t1, $t2, L267
li $t1, 57412
la $t0, _data
addi $t0, $t0, 8156
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8164
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8164
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8156
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8160
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8172
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8172
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8160
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8168
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8168
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8076
lw $t2, 0($t0)
beq $t1, $t2, L267
la $t0, _data
addi $t0, $t0, 8080
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8072
sw $t1, 0($t0)
L267:
la $t0, _data
addi $t0, $t0, 8072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8064
lw $t2, 0($t0)
bne $t1, $t2, L266
li $t1, 0
la $t0, _data
addi $t0, $t0, 8180
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8184
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 8188
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2564
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8188
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8192
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 7928
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8196
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8196
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 8200
sw $t2, 0($t0)
li $t1, 19406
la $t0, _data
addi $t0, $t0, 8204
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8208
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8212
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8216
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8204
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8208
lw $t2, 0($t0)
beq $t1, $t2, L272
la $t0, _data
addi $t0, $t0, 8208
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8216
sw $t1, 0($t0)
L272:
la $t0, _data
addi $t0, $t0, 8184
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8176
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8216
lw $t2, 0($t0)
bne $t1, $t2, L271
la $t0, _data
addi $t0, $t0, 8180
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8176
sw $t1, 0($t0)
L271:
la $t0, _data
addi $t0, $t0, 8176
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8064
lw $t2, 0($t0)
bne $t1, $t2, L266
la $t0, _data
addi $t0, $t0, 8064
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8060
sw $t1, 0($t0)
L266:
li $t1, 0
la $t0, _data
addi $t0, $t0, 8224
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8228
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8236
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8240
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8240
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8232
sw $t1, 0($t0)
li $t1, 47508
la $t0, _data
addi $t0, $t0, 8244
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8252
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8244
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8248
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8248
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8236
lw $t2, 0($t0)
bne $t1, $t2, L274
li $t1, 10017
la $t0, _data
addi $t0, $t0, 8256
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8256
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8236
lw $t2, 0($t0)
bne $t1, $t2, L274
la $t0, _data
addi $t0, $t0, 8236
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8232
sw $t1, 0($t0)
L274:
li $t1, 4
la $t0, _data
addi $t0, $t0, 8260
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8232
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8260
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8264
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8264
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8268
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8268
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 8272
sw $t2, 0($t0)
li $t1, 55443
la $t0, _data
addi $t0, $t0, 8276
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8228
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8220
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8272
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8276
lw $t2, 0($t0)
beq $t1, $t2, L273
la $t0, _data
addi $t0, $t0, 8224
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8220
sw $t1, 0($t0)
L273:
j L275
L265:
li $t1, 53381
la $t0, _data
addi $t0, $t0, 8280
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8284
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8288
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8288
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8292
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8280
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8284
lw $t2, 0($t0)
beq $t1, $t2, L276
la $t0, _data
addi $t0, $t0, 8284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8292
sw $t1, 0($t0)
L276:
li $t1, 4
la $t0, _data
addi $t0, $t0, 8296
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8296
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8300
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8304
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8304
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 8308
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8316
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8316
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8308
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8312
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8324
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8312
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8320
sw $t3, 0($t0)
L275:
j L278
L263:
li $t1, 20705
la $t0, _data
addi $t0, $t0, 8332
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8332
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8328
sw $t1, 0($t0)
li $t1, 38304
la $t0, _data
addi $t0, $t0, 8336
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8344
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8344
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8336
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8340
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8352
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8356
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8356
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8348
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8364
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8368
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8376
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8380
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6592
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2768
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8384
sw $t3, 0($t0)
li $t1, 53623
la $t0, _data
addi $t0, $t0, 8388
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8388
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8392
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8372
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8392
lw $t2, 0($t0)
bne $t1, $t2, L280
la $t0, _data
addi $t0, $t0, 8376
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8372
sw $t1, 0($t0)
L280:
la $t0, _data
addi $t0, $t0, 8368
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8360
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8372
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1892
lw $t2, 0($t0)
bgt $t1, $t2, L279
la $t0, _data
addi $t0, $t0, 8364
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8360
sw $t1, 0($t0)
L279:
la $t0, _data
addi $t0, $t0, 8360
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8352
lw $t2, 0($t0)
bne $t1, $t2, L278
li $t1, 0
la $t0, _data
addi $t0, $t0, 8400
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8404
sw $t1, 0($t0)
li $t1, 3
la $t0, _data
addi $t0, $t0, 8408
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 8412
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8408
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8412
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8416
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8416
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6532
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8420
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8420
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 8424
sw $t2, 0($t0)
li $t1, 59872
la $t0, _data
addi $t0, $t0, 8428
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8424
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8428
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8432
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8440
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8440
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8328
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8436
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8396
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8436
lw $t2, 0($t0)
beq $t1, $t2, L281
la $t0, _data
addi $t0, $t0, 8400
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8396
sw $t1, 0($t0)
L281:
la $t0, _data
addi $t0, $t0, 8396
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8352
lw $t2, 0($t0)
bne $t1, $t2, L278
la $t0, _data
addi $t0, $t0, 8352
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8348
sw $t1, 0($t0)
L278:
li $t1, 60123
la $t0, _data
addi $t0, $t0, 8448
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8448
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8444
sw $t1, 0($t0)
li $t1, 26435
la $t0, _data
addi $t0, $t0, 8456
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8456
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8452
sw $t1, 0($t0)
li $t1, 5781
la $t0, _data
addi $t0, $t0, 8464
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8464
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8460
sw $t1, 0($t0)
li $t1, 14098
la $t0, _data
addi $t0, $t0, 8472
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8472
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8468
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8480
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8484
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8492
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8496
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 8500
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8500
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8504
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8504
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1616
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8508
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8508
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 8512
sw $t2, 0($t0)
li $t1, 52122
la $t0, _data
addi $t0, $t0, 8516
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8512
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8516
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 8520
sw $t3, 0($t0)
li $t1, 44053
la $t0, _data
addi $t0, $t0, 8524
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8444
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8528
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8520
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8528
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8532
sw $t3, 0($t0)
li $t1, 36096
la $t0, _data
addi $t0, $t0, 8536
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8488
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8536
lw $t2, 0($t0)
bge $t1, $t2, L283
la $t0, _data
addi $t0, $t0, 8492
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8488
sw $t1, 0($t0)
L283:
li $t1, 0
la $t0, _data
addi $t0, $t0, 8544
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8548
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8548
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8540
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8468
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8544
lw $t2, 0($t0)
bne $t1, $t2, L284
la $t0, _data
addi $t0, $t0, 6544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8544
lw $t2, 0($t0)
bne $t1, $t2, L284
la $t0, _data
addi $t0, $t0, 8544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8540
sw $t1, 0($t0)
L284:
li $t1, 4
la $t0, _data
addi $t0, $t0, 8552
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8540
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8552
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8556
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1632
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8560
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8560
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 8564
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 8484
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8476
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8564
lw $t2, 0($t0)
ble $t1, $t2, L282
la $t0, _data
addi $t0, $t0, 8480
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8476
sw $t1, 0($t0)
L282:
la $t0, _data
addi $t0, $t0, 8444
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 8452
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 8460
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 8468
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 8588
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8592
sw $t1, 0($t0)
li $t1, 205
la $t0, _data
addi $t0, $t0, 8596
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8604
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8608
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8604
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8600
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8616
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8620
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8620
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8612
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6592
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2268
lw $t2, 0($t0)
bne $t1, $t2, L287
la $t0, _data
addi $t0, $t0, 8616
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8612
sw $t1, 0($t0)
L287:
la $t0, _data
addi $t0, $t0, 8612
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8604
lw $t2, 0($t0)
beq $t1, $t2, L286
la $t0, _data
addi $t0, $t0, 3252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8604
lw $t2, 0($t0)
beq $t1, $t2, L286
la $t0, _data
addi $t0, $t0, 8608
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8600
sw $t1, 0($t0)
L286:
li $t1, 0
la $t0, _data
addi $t0, $t0, 8628
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8632
sw $t1, 0($t0)
li $t1, 57704
la $t0, _data
addi $t0, $t0, 8636
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8632
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8624
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8636
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2752
lw $t2, 0($t0)
bne $t1, $t2, L288
la $t0, _data
addi $t0, $t0, 8628
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8624
sw $t1, 0($t0)
L288:
li $t1, 56252
la $t0, _data
addi $t0, $t0, 8640
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8648
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8652
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8660
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8664
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2760
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2768
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8668
sw $t3, 0($t0)
li $t1, 19243
la $t0, _data
addi $t0, $t0, 8672
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8656
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8668
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8672
lw $t2, 0($t0)
bge $t1, $t2, L290
la $t0, _data
addi $t0, $t0, 8660
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8656
sw $t1, 0($t0)
L290:
li $t1, 0
la $t0, _data
addi $t0, $t0, 8680
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8684
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8684
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8676
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2948
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2260
lw $t2, 0($t0)
ble $t1, $t2, L291
la $t0, _data
addi $t0, $t0, 8680
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8676
sw $t1, 0($t0)
L291:
li $t1, 0
la $t0, _data
addi $t0, $t0, 8692
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8696
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8692
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8688
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8704
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8708
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8708
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8700
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2768
lw $t2, 0($t0)
bge $t1, $t2, L293
la $t0, _data
addi $t0, $t0, 8704
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8700
sw $t1, 0($t0)
L293:
la $t0, _data
addi $t0, $t0, 8700
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8692
lw $t2, 0($t0)
beq $t1, $t2, L292
li $t1, 49276
la $t0, _data
addi $t0, $t0, 8712
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8712
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8692
lw $t2, 0($t0)
beq $t1, $t2, L292
la $t0, _data
addi $t0, $t0, 8696
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8688
sw $t1, 0($t0)
L292:
li $t1, 22908
la $t0, _data
addi $t0, $t0, 8716
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8716
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3292
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8724
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8728
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1900
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8460
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8732
sw $t3, 0($t0)
li $t1, 21704
la $t0, _data
addi $t0, $t0, 8736
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8728
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8720
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8732
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8736
lw $t2, 0($t0)
beq $t1, $t2, L294
la $t0, _data
addi $t0, $t0, 8724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8720
sw $t1, 0($t0)
L294:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 8720
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8716
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8688
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8676
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 8740
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 8652
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8644
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8740
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8468
lw $t2, 0($t0)
bge $t1, $t2, L289
la $t0, _data
addi $t0, $t0, 8648
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8644
sw $t1, 0($t0)
L289:
li $t1, 0
la $t0, _data
addi $t0, $t0, 8748
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8752
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8756
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 8760
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8756
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8760
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8764
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8764
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1632
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8768
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8768
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 8772
sw $t2, 0($t0)
li $t1, 23644
la $t0, _data
addi $t0, $t0, 8776
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8752
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8744
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8772
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8776
lw $t2, 0($t0)
bne $t1, $t2, L295
la $t0, _data
addi $t0, $t0, 8748
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8744
sw $t1, 0($t0)
L295:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 8744
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8640
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8624
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8600
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 8780
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8788
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8788
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8780
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8784
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8592
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8584
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8596
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8784
lw $t2, 0($t0)
blt $t1, $t2, L285
la $t0, _data
addi $t0, $t0, 8588
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8584
sw $t1, 0($t0)
L285:
addi $sp, $sp, 312
la $t0, _data
addi $t0, $t0, 8584
lw, $v0, 0($t0)
jr $ra
li $t1, 0
la $t0, _data
addi $t0, $t0, 8796
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8800
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8800
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8792
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8808
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8812
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8820
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8824
sw $t1, 0($t0)
li $t1, 10518
la $t0, _data
addi $t0, $t0, 8828
sw $t1, 0($t0)
li $t1, 22994
la $t0, _data
addi $t0, $t0, 8832
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8836
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8840
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8840
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8844
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8832
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8836
lw $t2, 0($t0)
beq $t1, $t2, L299
la $t0, _data
addi $t0, $t0, 8836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8844
sw $t1, 0($t0)
L299:
la $t0, _data
addi $t0, $t0, 8824
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8816
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8828
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8844
lw $t2, 0($t0)
bge $t1, $t2, L298
la $t0, _data
addi $t0, $t0, 8820
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8816
sw $t1, 0($t0)
L298:
li $t1, 15520
la $t0, _data
addi $t0, $t0, 8848
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8812
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8804
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8848
lw $t2, 0($t0)
beq $t1, $t2, L297
la $t0, _data
addi $t0, $t0, 8808
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8804
sw $t1, 0($t0)
L297:
la $t0, _data
addi $t0, $t0, 8804
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8796
lw $t2, 0($t0)
bne $t1, $t2, L296
li $t1, 0
la $t0, _data
addi $t0, $t0, 8856
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8860
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8868
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8872
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8880
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8880
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2316
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8876
sw $t3, 0($t0)
li $t1, 29924
la $t0, _data
addi $t0, $t0, 8884
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8876
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8884
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8888
sw $t3, 0($t0)
li $t1, 4966
la $t0, _data
addi $t0, $t0, 8892
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8872
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8864
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8888
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8892
lw $t2, 0($t0)
beq $t1, $t2, L301
la $t0, _data
addi $t0, $t0, 8868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8864
sw $t1, 0($t0)
L301:
la $t0, _data
addi $t0, $t0, 8860
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8852
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8864
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6592
lw $t2, 0($t0)
bgt $t1, $t2, L300
la $t0, _data
addi $t0, $t0, 8856
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8852
sw $t1, 0($t0)
L300:
la $t0, _data
addi $t0, $t0, 8852
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8796
lw $t2, 0($t0)
bne $t1, $t2, L296
la $t0, _data
addi $t0, $t0, 8796
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8792
sw $t1, 0($t0)
L296:
li $t1, 0
la $t0, _data
addi $t0, $t0, 8896
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8896
lw $t2, 0($t0)
beq $t1, $t2, L302
li $t1, 0
la $t0, _data
addi $t0, $t0, 8904
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8908
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8900
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6600
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8904
lw $t2, 0($t0)
bne $t1, $t2, L303
li $t1, 25537
la $t0, _data
addi $t0, $t0, 8912
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8912
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2776
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8916
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8916
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2792
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8920
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8928
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8932
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8932
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8924
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8940
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8944
sw $t1, 0($t0)
li $t1, 19831
la $t0, _data
addi $t0, $t0, 8948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8944
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8936
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8948
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1860
lw $t2, 0($t0)
bne $t1, $t2, L305
la $t0, _data
addi $t0, $t0, 8940
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8936
sw $t1, 0($t0)
L305:
la $t0, _data
addi $t0, $t0, 8936
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8928
lw $t2, 0($t0)
bne $t1, $t2, L304
la $t0, _data
addi $t0, $t0, 1900
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8928
lw $t2, 0($t0)
bne $t1, $t2, L304
la $t0, _data
addi $t0, $t0, 8928
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8924
sw $t1, 0($t0)
L304:
li $t1, 0
la $t0, _data
addi $t0, $t0, 8956
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8960
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8956
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8952
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 8968
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 8972
sw $t1, 0($t0)
li $t1, 58348
la $t0, _data
addi $t0, $t0, 8976
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8972
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8964
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8976
lw $t2, 0($t0)
beq $t1, $t2, L307
la $t0, _data
addi $t0, $t0, 8968
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8964
sw $t1, 0($t0)
L307:
la $t0, _data
addi $t0, $t0, 8964
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8956
lw $t2, 0($t0)
beq $t1, $t2, L306
li $t1, 46242
la $t0, _data
addi $t0, $t0, 8980
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8980
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8956
lw $t2, 0($t0)
beq $t1, $t2, L306
la $t0, _data
addi $t0, $t0, 8960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8952
sw $t1, 0($t0)
L306:
li $t1, 2
la $t0, _data
addi $t0, $t0, 8984
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 8988
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8984
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8988
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8992
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8992
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 8996
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 8996
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9000
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9008
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9012
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9008
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9004
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9020
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9024
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9024
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9016
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2332
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2956
lw $t2, 0($t0)
bne $t1, $t2, L309
la $t0, _data
addi $t0, $t0, 9020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9016
sw $t1, 0($t0)
L309:
la $t0, _data
addi $t0, $t0, 9016
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9008
lw $t2, 0($t0)
beq $t1, $t2, L308
li $t1, 38291
la $t0, _data
addi $t0, $t0, 9028
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9028
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9008
lw $t2, 0($t0)
beq $t1, $t2, L308
la $t0, _data
addi $t0, $t0, 9012
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9004
sw $t1, 0($t0)
L308:
li $t1, 26223
la $t0, _data
addi $t0, $t0, 9032
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9040
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9032
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9036
sw $t3, 0($t0)
li $t1, 40771
la $t0, _data
addi $t0, $t0, 9044
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2260
sw $t1, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1884
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9044
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9036
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9004
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 9048
sw $v0, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 9048
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8952
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8924
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8920
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 9052
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 9052
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2792
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9056
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 9056
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 9060
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 9060
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8904
lw $t2, 0($t0)
bne $t1, $t2, L303
la $t0, _data
addi $t0, $t0, 8904
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 8900
sw $t1, 0($t0)
L303:
j L312
L302:
li $t1, 32878
la $t0, _data
addi $t0, $t0, 9064
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9072
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9076
sw $t1, 0($t0)
li $t1, 52658
la $t0, _data
addi $t0, $t0, 9080
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9076
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9080
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3252
lw $t2, 0($t0)
bge $t1, $t2, L313
la $t0, _data
addi $t0, $t0, 9072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9068
sw $t1, 0($t0)
L313:
li $t1, 4
la $t0, _data
addi $t0, $t0, 9084
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9084
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9088
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9092
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9092
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9096
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 9064
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9096
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9100
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9104
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9100
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9104
lw $t2, 0($t0)
beq $t1, $t2, L312
li $t1, 46552
la $t0, _data
addi $t0, $t0, 9112
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9108
sw $t1, 0($t0)
li $t1, 46976
la $t0, _data
addi $t0, $t0, 9120
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9116
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9108
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 9116
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 9136
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9140
sw $t1, 0($t0)
li $t1, 39244
la $t0, _data
addi $t0, $t0, 9144
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 9148
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9148
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9152
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9152
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9156
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9156
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9160
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 9140
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9132
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9144
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9160
lw $t2, 0($t0)
blt $t1, $t2, L314
la $t0, _data
addi $t0, $t0, 9136
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9132
sw $t1, 0($t0)
L314:
li $t1, 4
la $t0, _data
addi $t0, $t0, 9164
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9132
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9164
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9168
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9168
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9172
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9172
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9176
sw $t2, 0($t0)
addi $sp, $sp, 312
la $t0, _data
addi $t0, $t0, 9176
lw, $v0, 0($t0)
jr $ra
la $t0, _data
addi $t0, $t0, 9108
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 9116
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 9192
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9196
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9204
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9204
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2292
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9200
sw $t3, 0($t0)
li $t1, 25069
la $t0, _data
addi $t0, $t0, 9208
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9196
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9188
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9208
lw $t2, 0($t0)
bne $t1, $t2, L315
la $t0, _data
addi $t0, $t0, 9192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9188
sw $t1, 0($t0)
L315:
li $t1, 17537
la $t0, _data
addi $t0, $t0, 9212
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9220
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9224
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9224
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9216
sw $t1, 0($t0)
li $t1, 39450
la $t0, _data
addi $t0, $t0, 9228
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9228
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2276
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9232
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9232
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9220
lw $t2, 0($t0)
bne $t1, $t2, L316
la $t0, _data
addi $t0, $t0, 2964
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9220
lw $t2, 0($t0)
bne $t1, $t2, L316
la $t0, _data
addi $t0, $t0, 9220
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9216
sw $t1, 0($t0)
L316:
li $t1, 0
la $t0, _data
addi $t0, $t0, 9240
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9244
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3260
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9248
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9236
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9248
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2800
lw $t2, 0($t0)
beq $t1, $t2, L317
la $t0, _data
addi $t0, $t0, 9240
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9236
sw $t1, 0($t0)
L317:
li $t1, 0
la $t0, _data
addi $t0, $t0, 9256
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9260
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9268
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9272
sw $t1, 0($t0)
li $t1, 17238
la $t0, _data
addi $t0, $t0, 9276
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9272
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9264
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2776
lw $t2, 0($t0)
blt $t1, $t2, L319
la $t0, _data
addi $t0, $t0, 9268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9264
sw $t1, 0($t0)
L319:
la $t0, _data
addi $t0, $t0, 9260
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9252
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9264
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2284
lw $t2, 0($t0)
beq $t1, $t2, L318
la $t0, _data
addi $t0, $t0, 9256
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9252
sw $t1, 0($t0)
L318:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 9252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9236
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9216
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9188
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 9280
sw $v0, 0($t0)
addi $sp, $sp, 312
la $t0, _data
addi $t0, $t0, 9280
lw, $v0, 0($t0)
jr $ra
li $t1, 0
la $t0, _data
addi $t0, $t0, 9288
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9292
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9288
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9284
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9300
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9304
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 9308
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6608
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9308
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9312
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9312
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9316
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9316
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9320
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9324
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9328
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9328
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9332
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9320
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9324
lw $t2, 0($t0)
beq $t1, $t2, L322
la $t0, _data
addi $t0, $t0, 9324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9332
sw $t1, 0($t0)
L322:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 9332
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 9336
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9340
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9344
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9344
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9348
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9340
lw $t2, 0($t0)
beq $t1, $t2, L323
la $t0, _data
addi $t0, $t0, 9340
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9348
sw $t1, 0($t0)
L323:
la $t0, _data
addi $t0, $t0, 9336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9348
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9352
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9356
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9360
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9360
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9364
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9356
lw $t2, 0($t0)
beq $t1, $t2, L324
la $t0, _data
addi $t0, $t0, 9356
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9364
sw $t1, 0($t0)
L324:
la $t0, _data
addi $t0, $t0, 9304
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9296
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9352
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9364
lw $t2, 0($t0)
bge $t1, $t2, L321
la $t0, _data
addi $t0, $t0, 9300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9296
sw $t1, 0($t0)
L321:
la $t0, _data
addi $t0, $t0, 9296
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9288
lw $t2, 0($t0)
beq $t1, $t2, L320
li $t1, 8253
la $t0, _data
addi $t0, $t0, 9368
sw $t1, 0($t0)
li $t1, 58693
la $t0, _data
addi $t0, $t0, 9372
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9368
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9372
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 9376
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9376
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9288
lw $t2, 0($t0)
beq $t1, $t2, L320
la $t0, _data
addi $t0, $t0, 9292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9284
sw $t1, 0($t0)
L320:
li $t1, 0
la $t0, _data
addi $t0, $t0, 9380
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9380
lw $t2, 0($t0)
beq $t1, $t2, L325
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 6544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 9384
sw $v0, 0($t0)
j L326
L325:
li $t1, 978
la $t0, _data
addi $t0, $t0, 9388
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9396
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9396
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9388
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9392
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9404
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9408
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9408
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9400
sw $t1, 0($t0)
li $t1, 31161
la $t0, _data
addi $t0, $t0, 9412
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9412
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9404
lw $t2, 0($t0)
bne $t1, $t2, L327
la $t0, _data
addi $t0, $t0, 1836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9404
lw $t2, 0($t0)
bne $t1, $t2, L327
la $t0, _data
addi $t0, $t0, 9404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9400
sw $t1, 0($t0)
L327:
la $t0, _data
addi $t0, $t0, 3276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6560
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 9416
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9416
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9420
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9420
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 6532
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9424
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9424
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9428
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9436
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9436
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9428
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9432
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9444
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9448
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9444
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9440
sw $t1, 0($t0)
li $t1, 14861
la $t0, _data
addi $t0, $t0, 9452
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9108
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 9456
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9456
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2768
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9460
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 9460
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 9464
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 9464
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9444
lw $t2, 0($t0)
beq $t1, $t2, L328
li $t1, 11956
la $t0, _data
addi $t0, $t0, 9468
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9468
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9444
lw $t2, 0($t0)
beq $t1, $t2, L328
la $t0, _data
addi $t0, $t0, 9448
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9440
sw $t1, 0($t0)
L328:
li $t1, 5
la $t0, _data
addi $t0, $t0, 9472
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 9476
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9472
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9476
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9480
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9480
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9484
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9484
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9488
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9496
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9116
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9492
sw $t3, 0($t0)
li $t1, 22474
la $t0, _data
addi $t0, $t0, 9500
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9500
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2752
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9504
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9512
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9516
sw $t1, 0($t0)
li $t1, 14871
la $t0, _data
addi $t0, $t0, 9520
sw $t1, 0($t0)
li $t1, 54025
la $t0, _data
addi $t0, $t0, 9524
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9520
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9524
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9528
sw $t3, 0($t0)
li $t1, 52398
la $t0, _data
addi $t0, $t0, 9532
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9516
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9508
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9528
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9532
lw $t2, 0($t0)
bne $t1, $t2, L329
la $t0, _data
addi $t0, $t0, 9512
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9508
sw $t1, 0($t0)
L329:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 9508
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9504
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9492
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9440
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 9536
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9540
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9544
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9548
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9536
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9540
lw $t2, 0($t0)
beq $t1, $t2, L330
la $t0, _data
addi $t0, $t0, 9540
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9548
sw $t1, 0($t0)
L330:
li $t1, 0
la $t0, _data
addi $t0, $t0, 9556
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9560
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9552
sw $t1, 0($t0)
li $t1, 19838
la $t0, _data
addi $t0, $t0, 9564
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9564
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9556
lw $t2, 0($t0)
beq $t1, $t2, L331
la $t0, _data
addi $t0, $t0, 3284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9556
lw $t2, 0($t0)
beq $t1, $t2, L331
la $t0, _data
addi $t0, $t0, 9560
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9552
sw $t1, 0($t0)
L331:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 1568
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 9552
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9548
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9400
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 9568
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 9392
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9568
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9572
sw $t3, 0($t0)
L326:
li $t1, 14026
la $t0, _data
addi $t0, $t0, 9580
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9580
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9576
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9588
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9592
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9592
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9584
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9596
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 9600
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9596
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9600
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9604
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9604
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9608
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9608
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9612
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9616
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9620
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9620
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9624
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9612
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9616
lw $t2, 0($t0)
beq $t1, $t2, L333
la $t0, _data
addi $t0, $t0, 9616
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9624
sw $t1, 0($t0)
L333:
li $t1, 0
la $t0, _data
addi $t0, $t0, 9632
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9632
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9624
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9628
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9640
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9640
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9628
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9636
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9636
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9588
lw $t2, 0($t0)
bne $t1, $t2, L332
li $t1, 0
la $t0, _data
addi $t0, $t0, 9648
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9652
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 9660
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 9664
sw $t1, 0($t0)
li $t1, 3
la $t0, _data
addi $t0, $t0, 9668
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 9672
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9668
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9672
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9676
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9676
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9680
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9680
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9684
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 9664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9656
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9684
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9576
lw $t2, 0($t0)
bne $t1, $t2, L335
la $t0, _data
addi $t0, $t0, 9660
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9656
sw $t1, 0($t0)
L335:
la $t0, _data
addi $t0, $t0, 2776
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 2268
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9688
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9652
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9644
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9688
lw $t2, 0($t0)
bne $t1, $t2, L334
la $t0, _data
addi $t0, $t0, 9648
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9644
sw $t1, 0($t0)
L334:
la $t0, _data
addi $t0, $t0, 9644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9588
lw $t2, 0($t0)
bne $t1, $t2, L332
la $t0, _data
addi $t0, $t0, 9588
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9584
sw $t1, 0($t0)
L332:
j L302
L312:
li $t1, 0
la $t0, _data
addi $t0, $t0, 9692
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 9696
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9692
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9696
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9700
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9700
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9704
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9704
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9708
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 9708
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 9716
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 9720
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9716
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9720
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9724
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9728
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9728
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9732
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 9732
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 9740
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 9744
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9740
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9744
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9748
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9748
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9752
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9752
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9756
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 9756
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 9764
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 9768
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9764
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9768
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9772
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9772
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9776
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9776
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9780
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 9780
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 9788
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 9792
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9788
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9792
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9796
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9796
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9800
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9800
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9804
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 9804
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 9812
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 9816
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9812
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9816
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9820
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9820
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9824
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9824
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9828
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 9828
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 6
la $t0, _data
addi $t0, $t0, 9836
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 9840
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9840
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9844
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9844
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9848
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9848
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9852
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 9852
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 7
la $t0, _data
addi $t0, $t0, 9860
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 9864
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9860
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9864
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9868
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9872
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9872
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9876
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 9876
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 8
la $t0, _data
addi $t0, $t0, 9884
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 9888
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9884
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9888
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9892
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9892
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9896
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9896
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9900
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 9900
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 9
la $t0, _data
addi $t0, $t0, 9908
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 9912
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9912
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9916
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9916
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9920
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9920
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9924
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 9924
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 1836
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 1844
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 1852
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 1860
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 1868
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 1876
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 1884
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 1892
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 1900
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 1908
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 1916
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 9976
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 9980
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9976
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 9980
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9984
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9984
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 9988
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 9988
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 9992
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 9992
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 10000
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10004
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10004
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10008
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10008
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10012
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10012
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10016
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10016
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 10024
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10028
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10024
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10028
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10032
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10032
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10036
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10036
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10040
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10040
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 10048
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10052
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10048
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10052
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10056
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10056
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10060
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10060
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10064
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10064
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 10072
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10076
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10076
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10080
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10080
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10084
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10084
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10088
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10088
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 10096
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10100
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10096
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10100
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10104
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10104
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10108
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10108
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10112
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10112
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 6
la $t0, _data
addi $t0, $t0, 10120
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10124
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10124
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10128
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10128
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10132
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10132
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10136
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10136
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2064
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 10148
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10152
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10152
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10156
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10156
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10160
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10160
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10164
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10164
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 10172
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10176
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10172
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10176
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10180
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10180
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10184
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10184
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10188
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10188
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 10196
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10200
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10196
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10200
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10204
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10204
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10208
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10208
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10212
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10212
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 10220
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10224
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10220
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10224
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10228
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10228
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10232
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10232
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10236
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10236
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 10244
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10248
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10248
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10252
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10256
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10256
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10260
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10260
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 10268
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10272
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10272
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10276
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10280
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10280
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10284
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10284
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 6
la $t0, _data
addi $t0, $t0, 10292
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10296
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10296
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10300
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10304
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10304
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10308
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10308
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 7
la $t0, _data
addi $t0, $t0, 10316
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10320
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10316
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10320
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10324
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10328
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10328
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10332
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10332
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 8
la $t0, _data
addi $t0, $t0, 10340
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10344
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10340
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10344
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10348
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10348
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10352
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10352
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10356
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10356
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2252
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2260
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2268
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2276
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2284
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2292
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2300
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2308
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2316
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2324
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2332
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2340
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2348
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 10416
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10420
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10416
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10420
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10424
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10424
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10428
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10428
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10432
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10432
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 10440
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10444
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10440
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10444
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10448
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10448
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10452
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10452
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10456
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10456
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 10464
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10468
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10464
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10468
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10472
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10472
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10476
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10476
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10480
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10480
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 10488
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10492
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10492
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10496
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10500
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10500
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10504
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10504
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 10512
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10516
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10512
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10516
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10520
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10520
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10524
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10524
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10528
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10528
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 10536
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10540
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10536
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10540
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10544
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10548
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10548
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10552
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10552
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 6
la $t0, _data
addi $t0, $t0, 10560
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10564
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10560
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10564
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10568
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10568
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10572
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10572
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10576
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10576
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 7
la $t0, _data
addi $t0, $t0, 10584
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10588
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10584
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10588
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10592
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10592
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10596
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10596
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10600
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10600
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 8
la $t0, _data
addi $t0, $t0, 10608
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10612
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10608
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10612
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10616
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10616
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10620
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10620
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10624
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10624
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 9
la $t0, _data
addi $t0, $t0, 10632
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10636
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10632
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10636
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10640
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10640
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10644
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10644
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10648
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10648
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2556
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2564
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 10664
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10668
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10668
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10672
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10672
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10676
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10676
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10680
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10680
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 10688
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10692
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10688
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10692
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10696
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10696
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10700
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10700
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10704
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10704
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 10712
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10716
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10712
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10716
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10720
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10720
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10724
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10724
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10728
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10728
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 10736
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10740
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10736
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10740
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10744
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10744
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10748
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10748
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10752
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10752
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 10760
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10764
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10760
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10764
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10768
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10768
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10772
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10772
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10776
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10776
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 10784
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10788
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10784
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10788
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10792
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10796
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10796
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10800
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10800
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 6
la $t0, _data
addi $t0, $t0, 10808
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10812
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10808
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10812
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10816
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10820
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10820
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10824
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10824
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 7
la $t0, _data
addi $t0, $t0, 10832
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10836
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10832
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10836
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10840
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10840
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10844
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10844
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10848
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10848
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 8
la $t0, _data
addi $t0, $t0, 10856
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10860
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10856
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10860
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10864
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10864
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10868
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10868
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10872
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10872
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2752
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2760
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2768
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2776
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2784
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2792
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2800
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 10908
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10912
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10912
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10916
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10916
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1616
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10920
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10920
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10924
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10924
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 10932
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10936
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10932
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10936
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10940
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10940
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1616
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10944
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10944
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10948
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10948
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 10956
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10960
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10956
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10960
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10964
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10964
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1616
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10968
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10968
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10972
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10972
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 10980
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 10984
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10980
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 10984
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10988
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10988
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1616
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 10992
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 10992
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 10996
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 10996
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 11004
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11008
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11004
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11008
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11012
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11012
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1616
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11016
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11016
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 11020
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 11020
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 11028
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11032
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11028
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11032
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11036
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11036
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1616
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11040
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11040
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 11044
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 11044
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 6
la $t0, _data
addi $t0, $t0, 11052
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11056
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11052
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11056
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11060
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11060
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1616
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11064
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11064
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 11068
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 11068
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2948
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2956
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 2964
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 11088
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11092
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11092
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11096
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11096
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11100
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11100
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 11104
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 11104
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 11112
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11116
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11116
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11120
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11124
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11124
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 11128
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 11128
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 11136
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11140
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11136
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11140
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11144
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11144
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11148
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11148
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 11152
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 11152
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 11160
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11164
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11160
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11164
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11168
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11168
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11172
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11172
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 11176
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 11176
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 11184
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11188
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11184
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11188
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11192
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11196
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11196
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 11200
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 11200
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 11208
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11212
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11208
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11212
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11216
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11216
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11220
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11220
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 11224
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 11224
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 6
la $t0, _data
addi $t0, $t0, 11232
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11236
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11232
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11236
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11240
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11240
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11244
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11244
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 11248
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 11248
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 7
la $t0, _data
addi $t0, $t0, 11256
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11260
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11256
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11260
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11264
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11264
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11268
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11268
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 11272
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 11272
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 8
la $t0, _data
addi $t0, $t0, 11280
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11284
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11280
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11284
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11288
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11288
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11292
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11292
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 11296
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 11296
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 11304
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11308
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11304
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11308
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11312
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11312
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1632
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11316
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11316
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 11320
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 11320
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 11328
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11332
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11328
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11332
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11336
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1632
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11340
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11340
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 11344
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 11344
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 11352
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11356
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11352
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11356
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11360
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11360
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1632
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11364
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11364
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 11368
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 11368
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 11376
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11380
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11376
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11380
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11384
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1632
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11388
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11388
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 11392
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 11392
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 11400
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11404
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11400
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11404
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11408
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11408
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1632
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11412
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11412
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 11416
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 11416
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 3252
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 3260
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 3268
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 3276
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 3284
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 3292
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 11452
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 11456
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11448
sw $t1, 0($t0)
li $t1, 59085
la $t0, _data
addi $t0, $t0, 11460
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 3292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11460
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11464
sw $t3, 0($t0)
li $t1, 33024
la $t0, _data
addi $t0, $t0, 11468
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11464
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11468
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 11472
sw $t3, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11476
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11472
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11476
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11480
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11480
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11484
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11484
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 11488
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 11488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11452
lw $t2, 0($t0)
beq $t1, $t2, L336
li $t1, 25516
la $t0, _data
addi $t0, $t0, 11492
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11492
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11452
lw $t2, 0($t0)
beq $t1, $t2, L336
la $t0, _data
addi $t0, $t0, 11456
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11448
sw $t1, 0($t0)
L336:
addi $sp, $sp, 312
la $t0, _data
addi $t0, $t0, 11448
lw, $v0, 0($t0)
jr $ra
F11:
addi $sp, $sp, -28
move $t1, $sp
la $t0, _data
addi $t0, $t0, 11500
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11500
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
sw $t1, 0($t0)
addi $sp, $sp, -24
move $t1, $sp
la $t0, _data
addi $t0, $t0, 11508
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11508
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
sw $t1, 0($t0)
addi $sp, $sp, -36
move $t1, $sp
la $t0, _data
addi $t0, $t0, 11516
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11516
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 11524
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11528
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11528
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11532
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11536
sw $t3, 0($t0)
li $t1, 34321
la $t0, _data
addi $t0, $t0, 11540
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11540
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11536
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 11544
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11548
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11548
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11552
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11552
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11556
sw $t3, 0($t0)
li $t1, 366
la $t0, _data
addi $t0, $t0, 11560
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11560
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11556
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 11564
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11568
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11564
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11568
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11572
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11572
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11576
sw $t3, 0($t0)
li $t1, 12638
la $t0, _data
addi $t0, $t0, 11580
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11580
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11576
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 11584
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11588
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11584
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11588
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11592
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11592
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11596
sw $t3, 0($t0)
li $t1, 15337
la $t0, _data
addi $t0, $t0, 11600
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11600
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11596
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11604
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11608
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11604
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11608
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11612
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11612
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11616
sw $t3, 0($t0)
li $t1, 47343
la $t0, _data
addi $t0, $t0, 11620
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11620
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11616
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 11624
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11628
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11624
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11628
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11632
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11632
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11636
sw $t3, 0($t0)
li $t1, 51882
la $t0, _data
addi $t0, $t0, 11640
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11640
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11636
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 6
la $t0, _data
addi $t0, $t0, 11644
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11648
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11648
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11652
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11652
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11656
sw $t3, 0($t0)
li $t1, 40407
la $t0, _data
addi $t0, $t0, 11660
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11660
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11656
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 0
la $t0, _data
addi $t0, $t0, 11664
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11668
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11668
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11672
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11672
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11676
sw $t3, 0($t0)
li $t1, 64880
la $t0, _data
addi $t0, $t0, 11680
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11680
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11676
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 11684
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11688
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11684
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11688
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11692
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11692
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11696
sw $t3, 0($t0)
li $t1, 25796
la $t0, _data
addi $t0, $t0, 11700
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11700
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11696
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 11704
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11708
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11704
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11708
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11712
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11712
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11716
sw $t3, 0($t0)
li $t1, 57645
la $t0, _data
addi $t0, $t0, 11720
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11720
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11716
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 11724
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11728
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11728
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11732
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11732
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11736
sw $t3, 0($t0)
li $t1, 7597
la $t0, _data
addi $t0, $t0, 11740
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11740
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11736
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11744
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11748
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11744
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11748
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11752
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11752
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11756
sw $t3, 0($t0)
li $t1, 18953
la $t0, _data
addi $t0, $t0, 11760
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11760
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11756
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 11764
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11768
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11764
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11768
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11772
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11772
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11776
sw $t3, 0($t0)
li $t1, 58623
la $t0, _data
addi $t0, $t0, 11780
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11780
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11776
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 38759
la $t0, _data
addi $t0, $t0, 11788
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11788
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11784
sw $t1, 0($t0)
li $t1, 33814
la $t0, _data
addi $t0, $t0, 11796
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11796
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11792
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 11800
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11804
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11800
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11804
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11808
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11808
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11812
sw $t3, 0($t0)
li $t1, 5043
la $t0, _data
addi $t0, $t0, 11816
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11812
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 11820
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11824
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11820
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11824
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11828
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11828
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11832
sw $t3, 0($t0)
li $t1, 30636
la $t0, _data
addi $t0, $t0, 11836
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11832
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 11840
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11844
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11840
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11844
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11848
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11848
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11852
sw $t3, 0($t0)
li $t1, 6783
la $t0, _data
addi $t0, $t0, 11856
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11856
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11852
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 11860
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11864
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11860
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11864
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11868
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11872
sw $t3, 0($t0)
li $t1, 27517
la $t0, _data
addi $t0, $t0, 11876
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11876
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11872
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11880
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11884
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11880
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11884
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11888
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11888
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11892
sw $t3, 0($t0)
li $t1, 45508
la $t0, _data
addi $t0, $t0, 11896
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11896
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11892
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 11900
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11904
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11900
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11904
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11908
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11912
sw $t3, 0($t0)
li $t1, 60808
la $t0, _data
addi $t0, $t0, 11916
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11916
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11912
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 6
la $t0, _data
addi $t0, $t0, 11920
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11924
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11920
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11924
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11928
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11928
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11932
sw $t3, 0($t0)
li $t1, 14379
la $t0, _data
addi $t0, $t0, 11936
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11936
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11932
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 7
la $t0, _data
addi $t0, $t0, 11940
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11940
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11944
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11948
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11948
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11952
sw $t3, 0($t0)
li $t1, 65346
la $t0, _data
addi $t0, $t0, 11956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11956
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11952
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 8
la $t0, _data
addi $t0, $t0, 11960
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11964
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11964
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11968
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11968
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11972
sw $t3, 0($t0)
li $t1, 9299
la $t0, _data
addi $t0, $t0, 11976
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11976
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11972
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 0
la $t0, _data
addi $t0, $t0, 11980
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 11984
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11980
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11984
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11988
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11988
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 11992
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11992
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 11996
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 11996
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 12004
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12008
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12004
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12008
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12012
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12012
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12016
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12016
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12020
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12020
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 12028
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12032
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12028
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12032
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12036
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12036
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12040
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12040
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12044
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12044
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 12052
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12056
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12052
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12056
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12060
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12060
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12064
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12064
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12068
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12068
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 12076
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12080
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12076
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12080
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12084
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12084
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12088
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12088
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12092
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12092
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 12100
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12104
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12100
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12104
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12108
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12108
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12112
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12112
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12116
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12116
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 6
la $t0, _data
addi $t0, $t0, 12124
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12128
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12124
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12128
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12132
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12132
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12136
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12136
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12140
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12140
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 12148
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12152
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12152
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12156
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12156
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12160
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12160
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12164
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12164
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 12172
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12176
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12172
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12176
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12180
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12180
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12184
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12184
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12188
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12188
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 12196
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12200
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12196
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12200
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12204
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12204
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12208
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12208
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12212
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12212
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 12220
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12224
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12220
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12224
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12228
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12228
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12232
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12232
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12236
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12236
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 12244
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12248
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12248
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12252
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12256
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12256
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12260
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12260
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 12268
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12272
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12272
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12276
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12280
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12280
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12284
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12284
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 11784
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 11792
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 12300
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12304
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12304
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12308
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12312
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12312
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12316
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12316
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 12324
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12328
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12328
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12332
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12332
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12336
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12336
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12340
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12340
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 12348
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12352
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12348
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12352
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12356
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12356
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12360
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12360
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12364
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12364
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 12372
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12376
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12372
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12376
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12380
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12384
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12384
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12388
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12388
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 12396
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12400
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12396
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12400
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12404
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12408
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12408
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12412
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12412
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 12420
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12424
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12420
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12424
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12428
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12428
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12432
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12432
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12436
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12436
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 6
la $t0, _data
addi $t0, $t0, 12444
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12448
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12444
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12448
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12452
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12456
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12456
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12460
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12460
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 7
la $t0, _data
addi $t0, $t0, 12468
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12472
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12468
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12472
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12476
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12476
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12480
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12480
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12484
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12484
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 8
la $t0, _data
addi $t0, $t0, 12492
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12496
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12492
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12496
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12500
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12500
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12504
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12504
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12508
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12508
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 12520
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 12524
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12520
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12516
sw $t1, 0($t0)
li $t1, 21072
la $t0, _data
addi $t0, $t0, 12528
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 12536
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12536
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12528
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12532
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 12544
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12532
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12540
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 12552
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12552
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12540
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12548
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 12560
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 12564
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12560
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12556
sw $t1, 0($t0)
li $t1, 12460
la $t0, _data
addi $t0, $t0, 12568
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12568
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11792
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12572
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12572
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12560
lw $t2, 0($t0)
beq $t1, $t2, L338
la $t0, _data
addi $t0, $t0, 11792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12560
lw $t2, 0($t0)
beq $t1, $t2, L338
la $t0, _data
addi $t0, $t0, 12564
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12556
sw $t1, 0($t0)
L338:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 11496
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 12556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11496
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F11
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 11496
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 12576
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 12548
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12576
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 12580
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12580
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12520
lw $t2, 0($t0)
beq $t1, $t2, L337
li $t1, 4032
la $t0, _data
addi $t0, $t0, 12584
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12584
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12520
lw $t2, 0($t0)
beq $t1, $t2, L337
la $t0, _data
addi $t0, $t0, 12524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12516
sw $t1, 0($t0)
L337:
addi $sp, $sp, 88
la $t0, _data
addi $t0, $t0, 12516
lw, $v0, 0($t0)
jr $ra
li $t1, 0
la $t0, _data
addi $t0, $t0, 12592
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 12596
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12592
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12588
sw $t1, 0($t0)
li $t1, 20365
la $t0, _data
addi $t0, $t0, 12600
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12600
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12592
lw $t2, 0($t0)
beq $t1, $t2, L339
li $t1, 6009
la $t0, _data
addi $t0, $t0, 12604
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12604
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12592
lw $t2, 0($t0)
beq $t1, $t2, L339
la $t0, _data
addi $t0, $t0, 12596
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12588
sw $t1, 0($t0)
L339:
li $t1, 4
la $t0, _data
addi $t0, $t0, 12608
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12588
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12608
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12612
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12612
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12616
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12616
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12620
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12620
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11496
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 12624
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12628
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12624
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12628
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12632
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12632
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12636
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12636
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12640
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12640
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 12648
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12652
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12648
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12652
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12656
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12660
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12660
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12664
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12664
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 12672
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12676
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12672
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12676
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12680
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12680
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12684
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12684
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12688
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12688
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 12696
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12700
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12696
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12700
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12704
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12704
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12708
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12708
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12712
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12712
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 12720
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12724
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12720
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12724
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12728
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12728
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12732
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12732
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12736
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12736
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 12744
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12748
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12744
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12748
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12752
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12752
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12756
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12756
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12760
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12760
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 6
la $t0, _data
addi $t0, $t0, 12768
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12772
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12768
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12772
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12776
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12776
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12780
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12780
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12784
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12784
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 12792
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12796
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12796
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12800
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12800
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12804
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12804
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12808
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12808
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 12816
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12820
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12820
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12824
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12824
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12828
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12828
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12832
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12832
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 12840
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12844
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12840
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12844
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12848
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12848
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12852
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12852
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12856
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12856
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 12864
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12868
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12864
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12868
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12872
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12872
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12876
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12876
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12880
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12880
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 12888
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12892
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12888
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12892
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12896
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12896
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12900
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12900
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12904
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12904
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 12912
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12916
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12912
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12916
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12920
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12920
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12924
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12924
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12928
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12928
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 11784
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 11792
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 12944
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12944
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12948
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12952
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12952
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12956
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12956
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12960
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12960
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 12968
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12972
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12968
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12972
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12976
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12976
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 12980
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 12980
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 12984
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 12984
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 12992
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 12996
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12992
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 12996
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13000
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13004
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13004
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13008
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13008
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 13016
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13020
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13016
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13020
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13024
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13024
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13028
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13028
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13032
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13032
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 13040
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13044
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13044
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13048
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13048
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13052
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13052
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13056
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13056
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 13064
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13064
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13068
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13072
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13076
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13076
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13080
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13080
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 6
la $t0, _data
addi $t0, $t0, 13088
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13092
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13092
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13096
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13096
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13100
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13100
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13104
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13104
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 7
la $t0, _data
addi $t0, $t0, 13112
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13116
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13116
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13120
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13124
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13124
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13128
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13128
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 8
la $t0, _data
addi $t0, $t0, 13136
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13140
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13136
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13140
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13144
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13144
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13148
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13148
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13152
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13152
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 13160
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 13164
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13164
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13168
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11784
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13160
lw $t2, 0($t0)
beq $t1, $t2, L340
la $t0, _data
addi $t0, $t0, 13160
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13168
sw $t1, 0($t0)
L340:
li $t1, 0
la $t0, _data
addi $t0, $t0, 13172
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 13176
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13176
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13180
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13168
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13172
lw $t2, 0($t0)
beq $t1, $t2, L341
la $t0, _data
addi $t0, $t0, 13172
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13180
sw $t1, 0($t0)
L341:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 11496
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 13180
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 11496
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 13184
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 13192
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13184
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13188
sw $t3, 0($t0)
li $t1, 37056
la $t0, _data
addi $t0, $t0, 13196
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13196
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13200
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13188
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13200
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13204
sw $t3, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13208
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13204
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13208
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13212
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13216
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13216
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13220
sw $t2, 0($t0)
addi $sp, $sp, 88
la $t0, _data
addi $t0, $t0, 13220
lw, $v0, 0($t0)
jr $ra
li $t1, 0
la $t0, _data
addi $t0, $t0, 13228
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 13232
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 13240
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 13244
sw $t1, 0($t0)
li $t1, 3
la $t0, _data
addi $t0, $t0, 13248
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13252
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13248
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13252
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13256
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13256
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13260
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13260
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13264
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 13268
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 13272
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13272
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13276
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13264
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13268
lw $t2, 0($t0)
beq $t1, $t2, L344
la $t0, _data
addi $t0, $t0, 13268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13276
sw $t1, 0($t0)
L344:
li $t1, 37422
la $t0, _data
addi $t0, $t0, 13280
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 13288
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13288
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13280
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13284
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11792
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13292
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13292
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13296
sw $t3, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13300
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13304
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13304
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13308
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13312
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13312
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13316
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13236
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13296
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13316
lw $t2, 0($t0)
beq $t1, $t2, L343
la $t0, _data
addi $t0, $t0, 13240
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13236
sw $t1, 0($t0)
L343:
li $t1, 19229
la $t0, _data
addi $t0, $t0, 13320
sw $t1, 0($t0)
li $t1, 44866
la $t0, _data
addi $t0, $t0, 13324
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13320
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13324
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 13328
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13232
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13224
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13236
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13328
lw $t2, 0($t0)
ble $t1, $t2, L342
la $t0, _data
addi $t0, $t0, 13228
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13224
sw $t1, 0($t0)
L342:
li $t1, 0
la $t0, _data
addi $t0, $t0, 13332
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13224
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13332
lw $t2, 0($t0)
beq $t1, $t2, L345
li $t1, 0
la $t0, _data
addi $t0, $t0, 13336
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 13340
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13340
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13344
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11784
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13336
lw $t2, 0($t0)
beq $t1, $t2, L346
la $t0, _data
addi $t0, $t0, 13336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13344
sw $t1, 0($t0)
L346:
li $t1, 30539
la $t0, _data
addi $t0, $t0, 13348
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 13356
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13356
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13348
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13352
sw $t3, 0($t0)
li $t1, 18573
la $t0, _data
addi $t0, $t0, 13360
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 13364
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 13368
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13368
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13372
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13360
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13364
lw $t2, 0($t0)
beq $t1, $t2, L347
la $t0, _data
addi $t0, $t0, 13364
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13372
sw $t1, 0($t0)
L347:
li $t1, 0
la $t0, _data
addi $t0, $t0, 13380
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13372
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13376
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 11496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11784
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13384
sw $t3, 0($t0)
li $t1, 5126
la $t0, _data
addi $t0, $t0, 13388
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13388
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13392
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 13400
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 13404
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13396
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 13412
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 13416
sw $t1, 0($t0)
li $t1, 22648
la $t0, _data
addi $t0, $t0, 13420
sw $t1, 0($t0)
li $t1, 26171
la $t0, _data
addi $t0, $t0, 13424
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13416
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13408
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13420
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13424
lw $t2, 0($t0)
bgt $t1, $t2, L349
la $t0, _data
addi $t0, $t0, 13412
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13408
sw $t1, 0($t0)
L349:
la $t0, _data
addi $t0, $t0, 13408
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13400
lw $t2, 0($t0)
bne $t1, $t2, L348
li $t1, 24080
la $t0, _data
addi $t0, $t0, 13428
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13428
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13400
lw $t2, 0($t0)
bne $t1, $t2, L348
la $t0, _data
addi $t0, $t0, 13400
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13396
sw $t1, 0($t0)
L348:
li $t1, 15735
la $t0, _data
addi $t0, $t0, 13432
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11784
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13436
sw $t3, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 11496
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 13436
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13396
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13392
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13376
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13352
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 11496
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 13440
sw $v0, 0($t0)
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 11496
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 13440
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11496
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F11
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 11496
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 13444
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 13344
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13444
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13448
sw $t3, 0($t0)
L345:
li $t1, 0
la $t0, _data
addi $t0, $t0, 13452
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13456
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13456
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13460
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13460
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13464
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13464
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13468
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13468
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 13476
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13480
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13476
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13480
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13484
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13484
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13488
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13488
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13492
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13492
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 13500
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13504
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13500
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13504
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13508
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13508
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13512
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13512
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13516
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13516
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 13524
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13528
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13528
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13532
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13536
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13536
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13540
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13540
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 13548
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13552
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13548
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13552
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13556
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13560
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13560
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13564
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13564
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 13572
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13576
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13572
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13576
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13580
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13580
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13584
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13584
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13588
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13588
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 6
la $t0, _data
addi $t0, $t0, 13596
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13600
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13596
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13600
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13604
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13604
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11504
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13608
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13608
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13612
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13612
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 13620
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13624
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13620
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13624
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13628
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13628
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13632
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13632
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13636
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13636
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 13644
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13648
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13648
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13652
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13652
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13656
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13656
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13660
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13660
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 13668
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13672
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13668
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13672
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13676
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13676
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13680
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13680
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13684
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13684
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 13692
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13696
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13692
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13696
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13700
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13700
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13704
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13704
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13708
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13708
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 13716
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13720
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13716
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13720
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13724
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13728
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13728
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13732
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13732
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 13740
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13744
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13740
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13744
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13748
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13748
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11512
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13752
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13752
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13756
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13756
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 11784
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 11792
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 13772
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13776
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13772
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13776
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13780
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13780
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13784
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13784
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13788
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13788
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 13796
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13800
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13796
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13800
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13804
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13804
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13808
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13808
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13812
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13812
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 13820
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13824
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13820
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13824
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13828
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13828
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13832
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13832
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13836
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13836
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 13844
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13848
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13844
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13848
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13852
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13852
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13856
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13856
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13860
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13860
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 13868
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13872
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13872
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13876
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13876
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13880
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13880
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13884
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13884
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 13892
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13896
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13892
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13896
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13900
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13900
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13904
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13904
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13908
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13908
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 6
la $t0, _data
addi $t0, $t0, 13916
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13920
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13916
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13920
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13924
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13924
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13928
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13928
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13932
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13932
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 7
la $t0, _data
addi $t0, $t0, 13940
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13940
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13944
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13948
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13948
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13952
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13952
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13956
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13956
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 8
la $t0, _data
addi $t0, $t0, 13964
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 13968
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13964
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13968
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13972
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13972
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 13976
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 13976
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 13980
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 13980
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 13992
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 13996
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13996
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13988
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14004
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14004
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11496
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14000
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13992
lw $t2, 0($t0)
bne $t1, $t2, L350
li $t1, 64930
la $t0, _data
addi $t0, $t0, 14008
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14008
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13992
lw $t2, 0($t0)
bne $t1, $t2, L350
la $t0, _data
addi $t0, $t0, 13992
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 13988
sw $t1, 0($t0)
L350:
addi $sp, $sp, -4
la $t0, _data
addi $t0, $t0, 11496
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 13988
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 11496
sw $t1, 0($t0)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14012
sw $v0, 0($t0)
li $t1, 7
la $t0, _data
addi $t0, $t0, 14016
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14020
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14016
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14020
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14024
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14024
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14028
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14028
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 14032
sw $t2, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14036
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14032
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14036
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14040
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11520
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14044
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14044
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 14048
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 14012
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14048
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 14052
sw $t3, 0($t0)
addi $sp, $sp, 88
la $t0, _data
addi $t0, $t0, 14052
lw, $v0, 0($t0)
jr $ra
F12:
addi $sp, $sp, -12
move $t1, $sp
la $t0, _data
addi $t0, $t0, 14076
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14076
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14080
sw $t1, 0($t0)
addi $sp, $sp, -16
move $t1, $sp
la $t0, _data
addi $t0, $t0, 14084
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14084
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14088
sw $t1, 0($t0)
addi $sp, $sp, -20
move $t1, $sp
la $t0, _data
addi $t0, $t0, 14092
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14092
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14096
sw $t1, 0($t0)
addi $sp, $sp, -20
move $t1, $sp
la $t0, _data
addi $t0, $t0, 14100
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14100
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14104
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14108
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14112
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14108
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14112
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14116
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14116
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14080
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14120
sw $t3, 0($t0)
li $t1, 30030
la $t0, _data
addi $t0, $t0, 14124
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14124
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14120
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 14128
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14132
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14128
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14132
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14136
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14136
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14080
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14140
sw $t3, 0($t0)
li $t1, 64678
la $t0, _data
addi $t0, $t0, 14144
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14144
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14140
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 14148
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14152
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14152
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14156
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14156
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14080
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14160
sw $t3, 0($t0)
li $t1, 48295
la $t0, _data
addi $t0, $t0, 14164
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14164
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14160
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 10002
la $t0, _data
addi $t0, $t0, 14172
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14172
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14168
sw $t1, 0($t0)
li $t1, 59950
la $t0, _data
addi $t0, $t0, 14180
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14180
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14176
sw $t1, 0($t0)
li $t1, 62674
la $t0, _data
addi $t0, $t0, 14188
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14188
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14184
sw $t1, 0($t0)
li $t1, 9812
la $t0, _data
addi $t0, $t0, 14196
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14196
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14192
sw $t1, 0($t0)
li $t1, 3713
la $t0, _data
addi $t0, $t0, 14204
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14204
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14200
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14208
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14212
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14208
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14212
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14216
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14216
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14088
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14220
sw $t3, 0($t0)
li $t1, 18210
la $t0, _data
addi $t0, $t0, 14224
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14224
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14220
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 14228
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14232
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14228
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14232
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14236
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14236
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14088
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14240
sw $t3, 0($t0)
li $t1, 22272
la $t0, _data
addi $t0, $t0, 14244
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14240
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 14248
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14252
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14248
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14252
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14256
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14256
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14088
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14260
sw $t3, 0($t0)
li $t1, 7745
la $t0, _data
addi $t0, $t0, 14264
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14264
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14260
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 14268
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14272
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14272
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14276
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14088
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14280
sw $t3, 0($t0)
li $t1, 38576
la $t0, _data
addi $t0, $t0, 14284
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14280
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 28282
la $t0, _data
addi $t0, $t0, 14292
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14288
sw $t1, 0($t0)
li $t1, 44801
la $t0, _data
addi $t0, $t0, 14300
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14296
sw $t1, 0($t0)
li $t1, 18921
la $t0, _data
addi $t0, $t0, 14308
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14304
sw $t1, 0($t0)
li $t1, 3076
la $t0, _data
addi $t0, $t0, 14316
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14316
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14312
sw $t1, 0($t0)
li $t1, 16688
la $t0, _data
addi $t0, $t0, 14324
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14320
sw $t1, 0($t0)
li $t1, 11905
la $t0, _data
addi $t0, $t0, 14332
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14332
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14328
sw $t1, 0($t0)
li $t1, 58744
la $t0, _data
addi $t0, $t0, 14340
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14340
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14336
sw $t1, 0($t0)
li $t1, 35917
la $t0, _data
addi $t0, $t0, 14348
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14348
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14344
sw $t1, 0($t0)
li $t1, 56771
la $t0, _data
addi $t0, $t0, 14356
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14356
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14352
sw $t1, 0($t0)
li $t1, 23747
la $t0, _data
addi $t0, $t0, 14364
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14364
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14360
sw $t1, 0($t0)
li $t1, 54491
la $t0, _data
addi $t0, $t0, 14372
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14372
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14368
sw $t1, 0($t0)
li $t1, 61897
la $t0, _data
addi $t0, $t0, 14380
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14376
sw $t1, 0($t0)
li $t1, 46395
la $t0, _data
addi $t0, $t0, 14388
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14388
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14384
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14392
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14396
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14392
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14396
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14400
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14400
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14096
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14404
sw $t3, 0($t0)
li $t1, 15126
la $t0, _data
addi $t0, $t0, 14408
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14408
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14404
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 14412
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14416
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14412
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14416
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14420
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14420
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14096
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14424
sw $t3, 0($t0)
li $t1, 20441
la $t0, _data
addi $t0, $t0, 14428
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14428
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14424
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 14432
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14436
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14436
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14440
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14440
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14096
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14444
sw $t3, 0($t0)
li $t1, 62130
la $t0, _data
addi $t0, $t0, 14448
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14448
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14444
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 14452
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14456
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14456
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14460
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14460
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14096
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14464
sw $t3, 0($t0)
li $t1, 14520
la $t0, _data
addi $t0, $t0, 14468
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14468
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14464
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14472
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14476
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14472
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14476
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14480
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14480
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14096
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14484
sw $t3, 0($t0)
li $t1, 12800
la $t0, _data
addi $t0, $t0, 14488
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14484
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 17372
la $t0, _data
addi $t0, $t0, 14496
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14492
sw $t1, 0($t0)
li $t1, 44550
la $t0, _data
addi $t0, $t0, 14504
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14504
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14500
sw $t1, 0($t0)
li $t1, 11942
la $t0, _data
addi $t0, $t0, 14512
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14512
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14508
sw $t1, 0($t0)
li $t1, 131
la $t0, _data
addi $t0, $t0, 14520
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14520
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14516
sw $t1, 0($t0)
li $t1, 54553
la $t0, _data
addi $t0, $t0, 14528
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14528
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14524
sw $t1, 0($t0)
li $t1, 6356
la $t0, _data
addi $t0, $t0, 14536
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14536
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14532
sw $t1, 0($t0)
li $t1, 62805
la $t0, _data
addi $t0, $t0, 14544
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14540
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14548
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14552
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14548
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14552
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14556
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14104
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14560
sw $t3, 0($t0)
li $t1, 64365
la $t0, _data
addi $t0, $t0, 14564
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14564
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14560
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 14568
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14572
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14568
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14572
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14576
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14576
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14104
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14580
sw $t3, 0($t0)
li $t1, 10070
la $t0, _data
addi $t0, $t0, 14584
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14584
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14580
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 14588
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14592
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14588
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14592
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14596
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14596
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14104
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14600
sw $t3, 0($t0)
li $t1, 15480
la $t0, _data
addi $t0, $t0, 14604
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14604
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14600
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 14608
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14612
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14608
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14612
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14616
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14616
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14104
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14620
sw $t3, 0($t0)
li $t1, 21102
la $t0, _data
addi $t0, $t0, 14624
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14624
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14620
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14628
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14632
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14628
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14632
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14636
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14636
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14104
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14640
sw $t3, 0($t0)
li $t1, 17815
la $t0, _data
addi $t0, $t0, 14644
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14640
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14648
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 14652
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14652
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14656
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14320
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14648
lw $t2, 0($t0)
beq $t1, $t2, L351
la $t0, _data
addi $t0, $t0, 14648
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14656
sw $t1, 0($t0)
L351:
li $t1, 0
la $t0, _data
addi $t0, $t0, 14660
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 14664
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14668
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14660
lw $t2, 0($t0)
beq $t1, $t2, L352
la $t0, _data
addi $t0, $t0, 14660
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14668
sw $t1, 0($t0)
L352:
li $t1, 0
la $t0, _data
addi $t0, $t0, 14676
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14676
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14668
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14672
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14684
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14684
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14672
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14680
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14688
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14680
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14688
lw $t2, 0($t0)
beq $t1, $t2, L353
la $t0, _data
addi $t0, $t0, 14200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14696
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 14700
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14696
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14692
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14064
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14704
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14704
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14696
lw $t2, 0($t0)
beq $t1, $t2, L354
li $t1, 54056
la $t0, _data
addi $t0, $t0, 14708
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14708
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14696
lw $t2, 0($t0)
beq $t1, $t2, L354
la $t0, _data
addi $t0, $t0, 14700
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14692
sw $t1, 0($t0)
L354:
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14692
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 14712
sw $v0, 0($t0)
li $t1, 49384
la $t0, _data
addi $t0, $t0, 14716
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14712
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14716
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14720
sw $t3, 0($t0)
li $t1, 2
la $t0, _data
addi $t0, $t0, 14724
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14728
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14728
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14732
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14732
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14080
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14736
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14736
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 14740
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14748
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 14752
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14748
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14744
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14760
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 14764
sw $t1, 0($t0)
li $t1, 52460
la $t0, _data
addi $t0, $t0, 14768
sw $t1, 0($t0)
li $t1, 13769
la $t0, _data
addi $t0, $t0, 14772
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14764
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14756
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14768
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14772
lw $t2, 0($t0)
ble $t1, $t2, L356
la $t0, _data
addi $t0, $t0, 14760
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14756
sw $t1, 0($t0)
L356:
la $t0, _data
addi $t0, $t0, 14756
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14748
lw $t2, 0($t0)
beq $t1, $t2, L355
la $t0, _data
addi $t0, $t0, 14288
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14748
lw $t2, 0($t0)
beq $t1, $t2, L355
la $t0, _data
addi $t0, $t0, 14752
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14744
sw $t1, 0($t0)
L355:
li $t1, 19346
la $t0, _data
addi $t0, $t0, 14776
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14784
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 14788
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14796
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 14800
sw $t1, 0($t0)
li $t1, 45669
la $t0, _data
addi $t0, $t0, 14804
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14800
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14792
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14804
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14176
lw $t2, 0($t0)
blt $t1, $t2, L358
la $t0, _data
addi $t0, $t0, 14796
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14792
sw $t1, 0($t0)
L358:
la $t0, _data
addi $t0, $t0, 14788
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14780
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14500
lw $t2, 0($t0)
bgt $t1, $t2, L357
la $t0, _data
addi $t0, $t0, 14784
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14780
sw $t1, 0($t0)
L357:
li $t1, 49686
la $t0, _data
addi $t0, $t0, 14808
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14808
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14168
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 14812
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14812
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14176
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14816
sw $t3, 0($t0)
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14780
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14776
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14744
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14740
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F12
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 14820
sw $v0, 0($t0)
li $t1, 10581
la $t0, _data
addi $t0, $t0, 14824
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14820
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14824
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 14828
sw $t3, 0($t0)
li $t1, 3880
la $t0, _data
addi $t0, $t0, 14832
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14840
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 14844
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14844
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14836
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14852
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 14856
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14852
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14848
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14852
lw $t2, 0($t0)
beq $t1, $t2, L360
la $t0, _data
addi $t0, $t0, 14532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14852
lw $t2, 0($t0)
beq $t1, $t2, L360
la $t0, _data
addi $t0, $t0, 14856
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14848
sw $t1, 0($t0)
L360:
la $t0, _data
addi $t0, $t0, 14848
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14840
lw $t2, 0($t0)
bne $t1, $t2, L359
li $t1, 38641
la $t0, _data
addi $t0, $t0, 14860
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14860
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14840
lw $t2, 0($t0)
bne $t1, $t2, L359
la $t0, _data
addi $t0, $t0, 14840
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14836
sw $t1, 0($t0)
L359:
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14832
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14828
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14720
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F12
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 14864
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14868
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 14872
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14872
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14876
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14864
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14868
lw $t2, 0($t0)
beq $t1, $t2, L361
la $t0, _data
addi $t0, $t0, 14868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14876
sw $t1, 0($t0)
L361:
addi $sp, $sp, 68
la $t0, _data
addi $t0, $t0, 14876
lw, $v0, 0($t0)
jr $ra
j L456
L353:
li $t1, 3
la $t0, _data
addi $t0, $t0, 14880
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 14884
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14880
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14884
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14888
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14888
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14096
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14892
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14892
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 14896
sw $t2, 0($t0)
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14896
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11496
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F11
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 14900
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 14900
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14296
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 14904
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14912
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 14916
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14912
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14908
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14924
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 14928
sw $t1, 0($t0)
li $t1, 53767
la $t0, _data
addi $t0, $t0, 14932
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14928
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14920
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14932
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14524
lw $t2, 0($t0)
beq $t1, $t2, L364
la $t0, _data
addi $t0, $t0, 14924
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14920
sw $t1, 0($t0)
L364:
la $t0, _data
addi $t0, $t0, 14920
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14912
lw $t2, 0($t0)
beq $t1, $t2, L363
li $t1, 27384
la $t0, _data
addi $t0, $t0, 14936
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14936
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14912
lw $t2, 0($t0)
beq $t1, $t2, L363
la $t0, _data
addi $t0, $t0, 14916
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14908
sw $t1, 0($t0)
L363:
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11496
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F11
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 14940
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 14904
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14940
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14944
sw $t3, 0($t0)
li $t1, 46870
la $t0, _data
addi $t0, $t0, 14948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14948
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14176
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 14952
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14952
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14312
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 14956
sw $t3, 0($t0)
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14956
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 14960
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14964
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 14968
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14968
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14972
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14964
lw $t2, 0($t0)
beq $t1, $t2, L365
la $t0, _data
addi $t0, $t0, 14964
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14972
sw $t1, 0($t0)
L365:
la $t0, _data
addi $t0, $t0, 14944
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14972
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 14976
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14984
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 14988
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 14996
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15000
sw $t1, 0($t0)
li $t1, 2751
la $t0, _data
addi $t0, $t0, 15004
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14992
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15004
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14304
lw $t2, 0($t0)
beq $t1, $t2, L367
la $t0, _data
addi $t0, $t0, 14996
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14992
sw $t1, 0($t0)
L367:
la $t0, _data
addi $t0, $t0, 14988
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14980
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14992
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14200
lw $t2, 0($t0)
bne $t1, $t2, L366
la $t0, _data
addi $t0, $t0, 14984
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14980
sw $t1, 0($t0)
L366:
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14980
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11496
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F11
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 15008
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 14976
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15008
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15012
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15016
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15012
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15016
lw $t2, 0($t0)
beq $t1, $t2, L368
addi $sp, $sp, -20
move $t1, $sp
la $t0, _data
addi $t0, $t0, 15020
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15024
sw $t1, 0($t0)
li $t1, 40184
la $t0, _data
addi $t0, $t0, 15032
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15032
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15028
sw $t1, 0($t0)
li $t1, 64243
la $t0, _data
addi $t0, $t0, 15040
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15036
sw $t1, 0($t0)
li $t1, 47302
la $t0, _data
addi $t0, $t0, 15048
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15048
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15044
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15052
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 15056
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15052
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15056
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15060
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15060
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15024
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15064
sw $t3, 0($t0)
li $t1, 52126
la $t0, _data
addi $t0, $t0, 15068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15064
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15072
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 15076
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15076
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15080
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15080
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15024
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15084
sw $t3, 0($t0)
li $t1, 64374
la $t0, _data
addi $t0, $t0, 15088
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15084
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 15092
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 15096
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15092
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15096
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15100
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15100
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15024
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15104
sw $t3, 0($t0)
li $t1, 36319
la $t0, _data
addi $t0, $t0, 15108
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15108
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15104
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 15112
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 15116
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15116
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15120
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15024
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15124
sw $t3, 0($t0)
li $t1, 58483
la $t0, _data
addi $t0, $t0, 15128
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15128
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15124
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 15132
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 15136
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15132
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15136
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15140
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15140
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15024
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15144
sw $t3, 0($t0)
li $t1, 61644
la $t0, _data
addi $t0, $t0, 15148
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15144
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 35148
la $t0, _data
addi $t0, $t0, 15156
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15156
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15152
sw $t1, 0($t0)
li $t1, 3017
la $t0, _data
addi $t0, $t0, 15164
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15164
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15160
sw $t1, 0($t0)
li $t1, 11588
la $t0, _data
addi $t0, $t0, 15172
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15172
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15168
sw $t1, 0($t0)
li $t1, 56250
la $t0, _data
addi $t0, $t0, 15180
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15180
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15176
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15188
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15192
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15200
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15204
sw $t1, 0($t0)
li $t1, 20832
la $t0, _data
addi $t0, $t0, 15208
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15216
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15216
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15208
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15212
sw $t3, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15220
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 15224
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15220
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15224
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15228
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15228
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14080
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15232
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15232
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 15236
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 15212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15236
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15240
sw $t3, 0($t0)
li $t1, 3
la $t0, _data
addi $t0, $t0, 15244
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 15248
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15248
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15252
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15024
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15256
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15256
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 15260
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 15204
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15196
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15240
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15260
lw $t2, 0($t0)
beq $t1, $t2, L370
la $t0, _data
addi $t0, $t0, 15200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15196
sw $t1, 0($t0)
L370:
li $t1, 27023
la $t0, _data
addi $t0, $t0, 15264
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15184
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15196
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15264
lw $t2, 0($t0)
bge $t1, $t2, L369
la $t0, _data
addi $t0, $t0, 15188
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15184
sw $t1, 0($t0)
L369:
li $t1, 0
la $t0, _data
addi $t0, $t0, 15268
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15184
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15268
lw $t2, 0($t0)
beq $t1, $t2, L371
addi $sp, $sp, -12
move $t1, $sp
la $t0, _data
addi $t0, $t0, 15272
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15272
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15276
sw $t1, 0($t0)
addi $sp, $sp, -4
move $t1, $sp
la $t0, _data
addi $t0, $t0, 15280
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15280
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15284
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15288
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 15292
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15288
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15292
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15296
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15296
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15276
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15300
sw $t3, 0($t0)
li $t1, 31682
la $t0, _data
addi $t0, $t0, 15304
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15304
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15300
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15308
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 15312
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15312
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15316
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15316
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15276
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15320
sw $t3, 0($t0)
li $t1, 26896
la $t0, _data
addi $t0, $t0, 15324
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15320
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 15328
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 15332
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15328
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15332
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15336
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15276
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15340
sw $t3, 0($t0)
li $t1, 7156
la $t0, _data
addi $t0, $t0, 15344
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15344
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15340
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15348
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 15352
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15348
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15352
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15356
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15356
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15284
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15360
sw $t3, 0($t0)
li $t1, 15833
la $t0, _data
addi $t0, $t0, 15364
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15364
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15360
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 37477
la $t0, _data
addi $t0, $t0, 15372
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15372
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15368
sw $t1, 0($t0)
li $t1, 11036
la $t0, _data
addi $t0, $t0, 15380
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15376
sw $t1, 0($t0)
li $t1, 54474
la $t0, _data
addi $t0, $t0, 15388
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15388
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15384
sw $t1, 0($t0)
L372:
li $t1, 44420
la $t0, _data
addi $t0, $t0, 15392
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15392
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14368
sw $t1, 0($t0)
li $t1, 61312
la $t0, _data
addi $t0, $t0, 15396
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15396
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14532
sw $t1, 0($t0)
li $t1, 42706
la $t0, _data
addi $t0, $t0, 15400
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15400
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15376
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15408
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15412
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15412
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15404
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15416
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15420
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15420
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15424
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15416
lw $t2, 0($t0)
beq $t1, $t2, L375
la $t0, _data
addi $t0, $t0, 15416
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15424
sw $t1, 0($t0)
L375:
la $t0, _data
addi $t0, $t0, 15424
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15408
lw $t2, 0($t0)
bne $t1, $t2, L374
la $t0, _data
addi $t0, $t0, 15176
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15408
lw $t2, 0($t0)
bne $t1, $t2, L374
la $t0, _data
addi $t0, $t0, 15408
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15404
sw $t1, 0($t0)
L374:
li $t1, 0
la $t0, _data
addi $t0, $t0, 15432
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15436
sw $t1, 0($t0)
li $t1, 6269
la $t0, _data
addi $t0, $t0, 15440
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15436
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15428
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14176
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15440
lw $t2, 0($t0)
bge $t1, $t2, L376
la $t0, _data
addi $t0, $t0, 15432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15428
sw $t1, 0($t0)
L376:
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 15428
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15400
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15396
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15392
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 15444
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15448
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15452
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15456
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15444
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15448
lw $t2, 0($t0)
beq $t1, $t2, L377
la $t0, _data
addi $t0, $t0, 15448
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15456
sw $t1, 0($t0)
L377:
li $t1, 0
la $t0, _data
addi $t0, $t0, 15460
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 15464
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15460
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15464
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15468
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15468
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15284
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15472
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15472
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 15476
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15484
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15484
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15476
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15480
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15456
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15480
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15488
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15492
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15492
lw $t2, 0($t0)
beq $t1, $t2, L373
li $t1, 46453
la $t0, _data
addi $t0, $t0, 15496
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15500
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15500
lw $t2, 0($t0)
beq $t1, $t2, L378
li $t1, 0
la $t0, _data
addi $t0, $t0, 15508
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15512
sw $t1, 0($t0)
li $t1, 41354
la $t0, _data
addi $t0, $t0, 15516
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15516
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15368
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15520
sw $t3, 0($t0)
li $t1, 33045
la $t0, _data
addi $t0, $t0, 15524
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15520
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15524
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 15528
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15532
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15536
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15536
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15540
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15532
lw $t2, 0($t0)
beq $t1, $t2, L380
la $t0, _data
addi $t0, $t0, 15532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15540
sw $t1, 0($t0)
L380:
li $t1, 0
la $t0, _data
addi $t0, $t0, 15548
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15548
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15540
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15544
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15528
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15544
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15552
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15560
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15564
sw $t1, 0($t0)
li $t1, 40192
la $t0, _data
addi $t0, $t0, 15568
sw $t1, 0($t0)
li $t1, 63542
la $t0, _data
addi $t0, $t0, 15572
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15564
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15556
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15568
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15572
lw $t2, 0($t0)
bgt $t1, $t2, L381
la $t0, _data
addi $t0, $t0, 15560
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15556
sw $t1, 0($t0)
L381:
li $t1, 4
la $t0, _data
addi $t0, $t0, 15576
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15576
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15580
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15580
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15284
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15584
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15584
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 15588
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 15512
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15504
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15552
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15588
lw $t2, 0($t0)
bne $t1, $t2, L379
la $t0, _data
addi $t0, $t0, 15508
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15504
sw $t1, 0($t0)
L379:
j L383
L378:
li $t1, 0
la $t0, _data
addi $t0, $t0, 15596
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15600
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15600
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15592
sw $t1, 0($t0)
li $t1, 25991
la $t0, _data
addi $t0, $t0, 15604
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15608
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 15612
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15608
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15612
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15616
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15616
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14096
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15620
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15620
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 15624
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 15604
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15624
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 15628
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15628
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15596
lw $t2, 0($t0)
bne $t1, $t2, L383
li $t1, 0
la $t0, _data
addi $t0, $t0, 15636
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15640
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15648
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15652
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15660
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15664
sw $t1, 0($t0)
li $t1, 29008
la $t0, _data
addi $t0, $t0, 15668
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15656
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15668
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15152
lw $t2, 0($t0)
blt $t1, $t2, L386
la $t0, _data
addi $t0, $t0, 15660
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15656
sw $t1, 0($t0)
L386:
li $t1, 47888
la $t0, _data
addi $t0, $t0, 15672
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15652
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15644
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15672
lw $t2, 0($t0)
blt $t1, $t2, L385
la $t0, _data
addi $t0, $t0, 15648
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15644
sw $t1, 0($t0)
L385:
li $t1, 23869
la $t0, _data
addi $t0, $t0, 15676
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15676
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15680
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15640
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15632
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15680
lw $t2, 0($t0)
bne $t1, $t2, L384
la $t0, _data
addi $t0, $t0, 15636
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15632
sw $t1, 0($t0)
L384:
la $t0, _data
addi $t0, $t0, 15632
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15596
lw $t2, 0($t0)
bne $t1, $t2, L383
la $t0, _data
addi $t0, $t0, 15596
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15592
sw $t1, 0($t0)
L383:
j L372
L373:
li $t1, 49840
la $t0, _data
addi $t0, $t0, 15684
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15684
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14516
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15688
sw $t3, 0($t0)
li $t1, 47996
la $t0, _data
addi $t0, $t0, 15692
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15688
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15692
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15696
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15704
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15708
sw $t1, 0($t0)
li $t1, 63968
la $t0, _data
addi $t0, $t0, 15712
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15708
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15700
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15712
lw $t2, 0($t0)
ble $t1, $t2, L387
la $t0, _data
addi $t0, $t0, 15704
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15700
sw $t1, 0($t0)
L387:
li $t1, 0
la $t0, _data
addi $t0, $t0, 15716
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 15720
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15716
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15720
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15724
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15284
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15728
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15728
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 15732
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14176
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15740
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15744
sw $t1, 0($t0)
li $t1, 25455
la $t0, _data
addi $t0, $t0, 15748
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15756
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15756
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15748
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15752
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15744
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15736
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15752
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15044
lw $t2, 0($t0)
bne $t1, $t2, L388
la $t0, _data
addi $t0, $t0, 15740
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15736
sw $t1, 0($t0)
L388:
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 15736
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15732
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15700
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15696
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F12
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 15760
sw $v0, 0($t0)
li $t1, 33900
la $t0, _data
addi $t0, $t0, 15764
sw $t1, 0($t0)
li $t1, 16906
la $t0, _data
addi $t0, $t0, 15768
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15764
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15768
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15772
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15760
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15772
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15776
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15784
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15788
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15788
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15780
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15796
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15800
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15796
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15792
sw $t1, 0($t0)
li $t1, 32611
la $t0, _data
addi $t0, $t0, 15804
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15804
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15796
lw $t2, 0($t0)
beq $t1, $t2, L390
la $t0, _data
addi $t0, $t0, 15168
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15796
lw $t2, 0($t0)
beq $t1, $t2, L390
la $t0, _data
addi $t0, $t0, 15800
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15792
sw $t1, 0($t0)
L390:
la $t0, _data
addi $t0, $t0, 15792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15784
lw $t2, 0($t0)
bne $t1, $t2, L389
la $t0, _data
addi $t0, $t0, 14516
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15784
lw $t2, 0($t0)
bne $t1, $t2, L389
la $t0, _data
addi $t0, $t0, 15784
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15780
sw $t1, 0($t0)
L389:
li $t1, 49733
la $t0, _data
addi $t0, $t0, 15808
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15808
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14376
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15812
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15820
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15824
sw $t1, 0($t0)
li $t1, 54383
la $t0, _data
addi $t0, $t0, 15828
sw $t1, 0($t0)
li $t1, 43647
la $t0, _data
addi $t0, $t0, 15832
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15824
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15816
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15828
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15832
lw $t2, 0($t0)
bge $t1, $t2, L391
la $t0, _data
addi $t0, $t0, 15820
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15816
sw $t1, 0($t0)
L391:
li $t1, 0
la $t0, _data
addi $t0, $t0, 15836
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15840
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15840
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15844
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15836
lw $t2, 0($t0)
beq $t1, $t2, L392
la $t0, _data
addi $t0, $t0, 15836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15844
sw $t1, 0($t0)
L392:
li $t1, 38672
la $t0, _data
addi $t0, $t0, 15848
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15844
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15848
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15852
sw $t3, 0($t0)
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 15852
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11496
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F11
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 15856
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15864
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15868
sw $t1, 0($t0)
li $t1, 33268
la $t0, _data
addi $t0, $t0, 15872
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15872
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 15876
sw $t3, 0($t0)
li $t1, 39424
la $t0, _data
addi $t0, $t0, 15880
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15860
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15876
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15880
lw $t2, 0($t0)
blt $t1, $t2, L393
la $t0, _data
addi $t0, $t0, 15864
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15860
sw $t1, 0($t0)
L393:
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 15860
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15856
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15812
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15780
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 15884
sw $v0, 0($t0)
li $t1, 15842
la $t0, _data
addi $t0, $t0, 15888
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15888
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14200
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15892
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15900
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15900
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15036
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15896
sw $t3, 0($t0)
li $t1, 39537
la $t0, _data
addi $t0, $t0, 15904
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14328
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14336
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15908
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15916
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15920
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15916
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15912
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 15924
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15924
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15928
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15928
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14088
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15932
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15932
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 15936
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 15936
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15916
lw $t2, 0($t0)
beq $t1, $t2, L394
li $t1, 16535
la $t0, _data
addi $t0, $t0, 15940
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15940
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15916
lw $t2, 0($t0)
beq $t1, $t2, L394
la $t0, _data
addi $t0, $t0, 15920
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15912
sw $t1, 0($t0)
L394:
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 15912
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15904
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15896
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15892
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 15944
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 15884
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15944
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 15948
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 15776
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15948
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15952
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15952
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15956
lw $t2, 0($t0)
beq $t1, $t2, L395
li $t1, 0
la $t0, _data
addi $t0, $t0, 15964
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 15968
sw $t1, 0($t0)
li $t1, 61299
la $t0, _data
addi $t0, $t0, 15972
sw $t1, 0($t0)
li $t1, 20454
la $t0, _data
addi $t0, $t0, 15976
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15968
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15960
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15972
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15976
lw $t2, 0($t0)
bne $t1, $t2, L396
la $t0, _data
addi $t0, $t0, 15964
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15960
sw $t1, 0($t0)
L396:
la $t0, _data
addi $t0, $t0, 14540
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14176
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 15980
sw $t3, 0($t0)
li $t1, 57889
la $t0, _data
addi $t0, $t0, 15984
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15980
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15984
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 15988
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 15996
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16000
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 16004
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16004
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16008
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16008
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14096
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16012
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16012
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 16016
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 16000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15992
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16016
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14376
lw $t2, 0($t0)
blt $t1, $t2, L397
la $t0, _data
addi $t0, $t0, 15996
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15992
sw $t1, 0($t0)
L397:
la $t0, _data
addi $t0, $t0, 14384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14320
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16020
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14320
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16024
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16028
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16032
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16032
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16036
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16028
lw $t2, 0($t0)
beq $t1, $t2, L398
la $t0, _data
addi $t0, $t0, 16028
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16036
sw $t1, 0($t0)
L398:
li $t1, 0
la $t0, _data
addi $t0, $t0, 16044
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16044
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16036
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16040
sw $t3, 0($t0)
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 16040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16024
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15992
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15988
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F12
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 16048
sw $v0, 0($t0)
j L400
L395:
li $t1, 0
la $t0, _data
addi $t0, $t0, 16056
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16060
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16052
sw $t1, 0($t0)
li $t1, 22987
la $t0, _data
addi $t0, $t0, 16064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16064
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16056
lw $t2, 0($t0)
bne $t1, $t2, L400
li $t1, 53498
la $t0, _data
addi $t0, $t0, 16068
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16076
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16076
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16068
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16072
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16056
lw $t2, 0($t0)
bne $t1, $t2, L400
la $t0, _data
addi $t0, $t0, 16056
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16052
sw $t1, 0($t0)
L400:
la $t0, _data
addi $t0, $t0, 14320
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14200
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16080
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14320
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16080
lw $t2, 0($t0)
beq $t1, $t2, L401
li $t1, 0
la $t0, _data
addi $t0, $t0, 16088
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16092
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16096
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16100
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16100
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16104
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14320
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16096
lw $t2, 0($t0)
beq $t1, $t2, L403
la $t0, _data
addi $t0, $t0, 16096
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16104
sw $t1, 0($t0)
L403:
li $t1, 32545
la $t0, _data
addi $t0, $t0, 16108
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16104
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16108
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16112
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16116
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16120
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16124
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16116
lw $t2, 0($t0)
beq $t1, $t2, L404
la $t0, _data
addi $t0, $t0, 16116
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16124
sw $t1, 0($t0)
L404:
la $t0, _data
addi $t0, $t0, 14328
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16124
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16128
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16092
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16084
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16128
lw $t2, 0($t0)
beq $t1, $t2, L402
la $t0, _data
addi $t0, $t0, 16088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16084
sw $t1, 0($t0)
L402:
j L406
L401:
li $t1, 0
la $t0, _data
addi $t0, $t0, 16136
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16140
sw $t1, 0($t0)
li $t1, 20993
la $t0, _data
addi $t0, $t0, 16144
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16144
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15384
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14320
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14176
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16148
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16152
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16152
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16156
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14376
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16148
lw $t2, 0($t0)
beq $t1, $t2, L407
la $t0, _data
addi $t0, $t0, 16148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16156
sw $t1, 0($t0)
L407:
la $t0, _data
addi $t0, $t0, 16156
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14500
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 16160
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16168
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16172
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16180
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16184
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16184
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16176
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14168
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14344
lw $t2, 0($t0)
beq $t1, $t2, L409
la $t0, _data
addi $t0, $t0, 16180
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16176
sw $t1, 0($t0)
L409:
la $t0, _data
addi $t0, $t0, 16172
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16164
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16176
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15036
lw $t2, 0($t0)
bne $t1, $t2, L408
la $t0, _data
addi $t0, $t0, 16168
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16164
sw $t1, 0($t0)
L408:
li $t1, 0
la $t0, _data
addi $t0, $t0, 16192
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16196
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16188
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16204
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16208
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16208
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16200
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14336
lw $t2, 0($t0)
ble $t1, $t2, L411
la $t0, _data
addi $t0, $t0, 16204
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16200
sw $t1, 0($t0)
L411:
la $t0, _data
addi $t0, $t0, 16200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16192
lw $t2, 0($t0)
beq $t1, $t2, L410
li $t1, 13953
la $t0, _data
addi $t0, $t0, 16212
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16192
lw $t2, 0($t0)
beq $t1, $t2, L410
la $t0, _data
addi $t0, $t0, 16196
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16188
sw $t1, 0($t0)
L410:
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 16188
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16164
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16160
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14320
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16144
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 16216
sw $v0, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 16220
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14376
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16220
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16224
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16224
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15276
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16228
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16228
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 16232
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16240
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16240
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16232
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16236
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16216
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16236
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16244
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16252
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14524
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16248
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16260
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16260
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16248
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16256
sw $t3, 0($t0)
li $t1, 3310
la $t0, _data
addi $t0, $t0, 16264
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16272
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16272
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16264
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16268
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16256
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16268
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 16276
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16140
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16132
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16276
lw $t2, 0($t0)
bne $t1, $t2, L406
la $t0, _data
addi $t0, $t0, 16136
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16132
sw $t1, 0($t0)
L406:
j L454
L371:
li $t1, 54148
la $t0, _data
addi $t0, $t0, 16280
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16284
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16288
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16288
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16292
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16280
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16284
lw $t2, 0($t0)
beq $t1, $t2, L413
la $t0, _data
addi $t0, $t0, 16284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16292
sw $t1, 0($t0)
L413:
li $t1, 4
la $t0, _data
addi $t0, $t0, 16296
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16296
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16300
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14096
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16304
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16304
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 16308
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 16308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15168
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16312
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16312
lw $t2, 0($t0)
beq $t1, $t2, L414
addi $sp, $sp, -24
move $t1, $sp
la $t0, _data
addi $t0, $t0, 16316
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16316
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16320
sw $t1, 0($t0)
li $t1, 42961
la $t0, _data
addi $t0, $t0, 16328
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16328
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16324
sw $t1, 0($t0)
li $t1, 51198
la $t0, _data
addi $t0, $t0, 16336
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16332
sw $t1, 0($t0)
li $t1, 12482
la $t0, _data
addi $t0, $t0, 16344
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16344
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16340
sw $t1, 0($t0)
li $t1, 27266
la $t0, _data
addi $t0, $t0, 16352
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16352
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16348
sw $t1, 0($t0)
li $t1, 33659
la $t0, _data
addi $t0, $t0, 16360
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16360
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16356
sw $t1, 0($t0)
li $t1, 10914
la $t0, _data
addi $t0, $t0, 16368
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16368
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16364
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16372
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 16376
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16372
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16376
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16380
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16320
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16384
sw $t3, 0($t0)
li $t1, 29484
la $t0, _data
addi $t0, $t0, 16388
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16388
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16384
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16392
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 16396
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16392
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16396
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16400
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16400
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16320
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16404
sw $t3, 0($t0)
li $t1, 23669
la $t0, _data
addi $t0, $t0, 16408
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16408
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16404
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 16412
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 16416
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16412
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16416
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16420
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16420
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16320
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16424
sw $t3, 0($t0)
li $t1, 36369
la $t0, _data
addi $t0, $t0, 16428
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16428
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16424
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 16432
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 16436
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16436
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16440
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16440
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16320
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16444
sw $t3, 0($t0)
li $t1, 63384
la $t0, _data
addi $t0, $t0, 16448
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16448
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16444
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 16452
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 16456
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16456
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16460
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16460
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16320
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16464
sw $t3, 0($t0)
li $t1, 40575
la $t0, _data
addi $t0, $t0, 16468
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16468
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16464
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 16472
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 16476
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16472
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16476
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16480
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16480
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16320
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16484
sw $t3, 0($t0)
li $t1, 3444
la $t0, _data
addi $t0, $t0, 16488
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16484
lw $t2, 0($t0)
sw $t1, 0($t2)
L415:
li $t1, 0
la $t0, _data
addi $t0, $t0, 16496
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16500
sw $t1, 0($t0)
li $t1, 47582
la $t0, _data
addi $t0, $t0, 16504
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16512
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16516
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16516
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16508
sw $t1, 0($t0)
li $t1, 29422
la $t0, _data
addi $t0, $t0, 16520
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16520
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14376
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 16524
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16512
lw $t2, 0($t0)
bne $t1, $t2, L418
la $t0, _data
addi $t0, $t0, 16348
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16512
lw $t2, 0($t0)
bne $t1, $t2, L418
la $t0, _data
addi $t0, $t0, 16512
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16508
sw $t1, 0($t0)
L418:
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 16508
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11496
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F11
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 16528
sw $v0, 0($t0)
li $t1, 47091
la $t0, _data
addi $t0, $t0, 16532
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16540
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16540
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16532
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16536
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16528
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16536
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 16544
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16500
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16492
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16504
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16544
lw $t2, 0($t0)
bne $t1, $t2, L417
la $t0, _data
addi $t0, $t0, 16496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16492
sw $t1, 0($t0)
L417:
li $t1, 0
la $t0, _data
addi $t0, $t0, 16548
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16492
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16548
lw $t2, 0($t0)
beq $t1, $t2, L416
li $t1, 0
la $t0, _data
addi $t0, $t0, 16556
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16560
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16560
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16552
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16568
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16572
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16572
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16564
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16580
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16584
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16584
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16576
sw $t1, 0($t0)
li $t1, 20718
la $t0, _data
addi $t0, $t0, 16588
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16588
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16592
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16592
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16580
lw $t2, 0($t0)
bne $t1, $t2, L421
li $t1, 62690
la $t0, _data
addi $t0, $t0, 16596
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16596
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16580
lw $t2, 0($t0)
bne $t1, $t2, L421
la $t0, _data
addi $t0, $t0, 16580
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16576
sw $t1, 0($t0)
L421:
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 16576
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 16600
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 16600
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14500
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16604
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16612
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16616
sw $t1, 0($t0)
li $t1, 20979
la $t0, _data
addi $t0, $t0, 16620
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15044
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16620
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 16624
sw $t3, 0($t0)
li $t1, 36560
la $t0, _data
addi $t0, $t0, 16628
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16616
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16608
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16624
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16628
lw $t2, 0($t0)
blt $t1, $t2, L422
la $t0, _data
addi $t0, $t0, 16612
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16608
sw $t1, 0($t0)
L422:
li $t1, 36691
la $t0, _data
addi $t0, $t0, 16632
sw $t1, 0($t0)
li $t1, 37514
la $t0, _data
addi $t0, $t0, 16636
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16632
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16636
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 16640
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16640
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14176
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16644
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 14500
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 16648
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16648
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16652
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16652
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15024
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16656
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16656
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 16660
sw $t2, 0($t0)
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 16660
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14500
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16608
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16604
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 16664
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16668
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16672
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16672
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16676
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16668
lw $t2, 0($t0)
beq $t1, $t2, L423
la $t0, _data
addi $t0, $t0, 16668
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16676
sw $t1, 0($t0)
L423:
li $t1, 0
la $t0, _data
addi $t0, $t0, 16684
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16684
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16676
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16680
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16680
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16568
lw $t2, 0($t0)
bne $t1, $t2, L420
la $t0, _data
addi $t0, $t0, 14288
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16568
lw $t2, 0($t0)
bne $t1, $t2, L420
la $t0, _data
addi $t0, $t0, 16568
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16564
sw $t1, 0($t0)
L420:
la $t0, _data
addi $t0, $t0, 16564
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16556
lw $t2, 0($t0)
bne $t1, $t2, L419
li $t1, 0
la $t0, _data
addi $t0, $t0, 16688
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16692
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16692
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16696
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16688
lw $t2, 0($t0)
beq $t1, $t2, L424
la $t0, _data
addi $t0, $t0, 16688
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16696
sw $t1, 0($t0)
L424:
la $t0, _data
addi $t0, $t0, 16696
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16556
lw $t2, 0($t0)
bne $t1, $t2, L419
la $t0, _data
addi $t0, $t0, 16556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16552
sw $t1, 0($t0)
L419:
li $t1, 0
la $t0, _data
addi $t0, $t0, 16700
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16552
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16700
lw $t2, 0($t0)
beq $t1, $t2, L425
li $t1, 32323
la $t0, _data
addi $t0, $t0, 16704
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16712
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16712
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16704
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16708
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16708
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14516
sw $t1, 0($t0)
j L426
L425:
li $t1, 0
la $t0, _data
addi $t0, $t0, 16720
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16724
sw $t1, 0($t0)
li $t1, 57146
la $t0, _data
addi $t0, $t0, 16728
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16732
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16736
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16736
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16740
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16728
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16732
lw $t2, 0($t0)
beq $t1, $t2, L428
la $t0, _data
addi $t0, $t0, 16732
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16740
sw $t1, 0($t0)
L428:
la $t0, _data
addi $t0, $t0, 16724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16716
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16740
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15152
lw $t2, 0($t0)
beq $t1, $t2, L427
la $t0, _data
addi $t0, $t0, 16720
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16716
sw $t1, 0($t0)
L427:
li $t1, 0
la $t0, _data
addi $t0, $t0, 16748
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16752
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16752
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16744
sw $t1, 0($t0)
li $t1, 29867
la $t0, _data
addi $t0, $t0, 16756
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16756
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14200
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16760
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16760
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16748
lw $t2, 0($t0)
bne $t1, $t2, L429
la $t0, _data
addi $t0, $t0, 14176
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16748
lw $t2, 0($t0)
bne $t1, $t2, L429
la $t0, _data
addi $t0, $t0, 16748
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16744
sw $t1, 0($t0)
L429:
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11496
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F11
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 16764
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 16764
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14376
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16768
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16776
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16780
sw $t1, 0($t0)
li $t1, 55310
la $t0, _data
addi $t0, $t0, 16784
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16788
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16792
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16796
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16784
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16788
lw $t2, 0($t0)
beq $t1, $t2, L431
la $t0, _data
addi $t0, $t0, 16788
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16796
sw $t1, 0($t0)
L431:
la $t0, _data
addi $t0, $t0, 16780
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16772
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16796
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14176
lw $t2, 0($t0)
bge $t1, $t2, L430
la $t0, _data
addi $t0, $t0, 16776
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16772
sw $t1, 0($t0)
L430:
li $t1, 45108
la $t0, _data
addi $t0, $t0, 16800
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16800
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14360
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 16804
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16364
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16804
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16808
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16808
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16320
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16812
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16812
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 16816
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16824
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16828
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16828
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16820
sw $t1, 0($t0)
li $t1, 62413
la $t0, _data
addi $t0, $t0, 16832
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16836
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16840
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16840
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16844
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16832
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16836
lw $t2, 0($t0)
beq $t1, $t2, L433
la $t0, _data
addi $t0, $t0, 16836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16844
sw $t1, 0($t0)
L433:
la $t0, _data
addi $t0, $t0, 16844
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16824
lw $t2, 0($t0)
bne $t1, $t2, L432
la $t0, _data
addi $t0, $t0, 14184
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16824
lw $t2, 0($t0)
bne $t1, $t2, L432
la $t0, _data
addi $t0, $t0, 16824
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16820
sw $t1, 0($t0)
L432:
li $t1, 10768
la $t0, _data
addi $t0, $t0, 16848
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16848
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16340
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16852
sw $t3, 0($t0)
li $t1, 59062
la $t0, _data
addi $t0, $t0, 16856
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16852
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16856
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16860
sw $t3, 0($t0)
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 16860
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16820
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16800
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16772
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F12
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 16864
sw $v0, 0($t0)
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 16864
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16768
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16744
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16716
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 16868
sw $v0, 0($t0)
li $t1, 187
la $t0, _data
addi $t0, $t0, 16872
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16876
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16880
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16880
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16884
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16872
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16876
lw $t2, 0($t0)
beq $t1, $t2, L434
la $t0, _data
addi $t0, $t0, 16876
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16884
sw $t1, 0($t0)
L434:
la $t0, _data
addi $t0, $t0, 16868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16884
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16888
sw $t3, 0($t0)
li $t1, 64916
la $t0, _data
addi $t0, $t0, 16892
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16896
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16900
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16900
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16904
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16892
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16896
lw $t2, 0($t0)
beq $t1, $t2, L435
la $t0, _data
addi $t0, $t0, 16896
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16904
sw $t1, 0($t0)
L435:
la $t0, _data
addi $t0, $t0, 16888
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16904
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16908
sw $t3, 0($t0)
li $t1, 36487
la $t0, _data
addi $t0, $t0, 16912
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16912
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14304
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16332
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16356
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16916
sw $t3, 0($t0)
li $t1, 51385
la $t0, _data
addi $t0, $t0, 16920
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16916
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16920
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16924
sw $t3, 0($t0)
li $t1, 11862
la $t0, _data
addi $t0, $t0, 16928
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16928
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14168
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16936
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16940
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16936
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16932
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16948
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16948
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16948
lw $t2, 0($t0)
beq $t1, $t2, L437
li $t1, 63753
la $t0, _data
addi $t0, $t0, 16956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16956
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16948
lw $t2, 0($t0)
beq $t1, $t2, L437
la $t0, _data
addi $t0, $t0, 16952
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16944
sw $t1, 0($t0)
L437:
la $t0, _data
addi $t0, $t0, 16944
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16936
lw $t2, 0($t0)
beq $t1, $t2, L436
la $t0, _data
addi $t0, $t0, 14328
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16936
lw $t2, 0($t0)
beq $t1, $t2, L436
la $t0, _data
addi $t0, $t0, 16940
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16932
sw $t1, 0($t0)
L436:
li $t1, 19508
la $t0, _data
addi $t0, $t0, 16960
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14500
sw $t1, 0($t0)
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 16960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16932
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16928
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16924
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16912
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 16964
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 16968
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 16972
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16972
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16976
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16964
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16968
lw $t2, 0($t0)
beq $t1, $t2, L438
la $t0, _data
addi $t0, $t0, 16968
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16976
sw $t1, 0($t0)
L438:
li $t1, 0
la $t0, _data
addi $t0, $t0, 16984
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16984
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16976
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16980
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 16908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16980
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 16988
sw $t3, 0($t0)
L426:
j L415
L416:
j L454
L414:
li $t1, 0
la $t0, _data
addi $t0, $t0, 16996
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 17000
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 17004
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 17008
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17008
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17012
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15036
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17004
lw $t2, 0($t0)
beq $t1, $t2, L441
la $t0, _data
addi $t0, $t0, 17004
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17012
sw $t1, 0($t0)
L441:
la $t0, _data
addi $t0, $t0, 17000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16992
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17012
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14524
lw $t2, 0($t0)
bgt $t1, $t2, L440
la $t0, _data
addi $t0, $t0, 16996
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16992
sw $t1, 0($t0)
L440:
li $t1, 22776
la $t0, _data
addi $t0, $t0, 17016
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 17024
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17024
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17016
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17020
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14200
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 17028
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 17036
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 17040
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17032
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14524
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17044
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17044
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17036
lw $t2, 0($t0)
bne $t1, $t2, L442
li $t1, 27701
la $t0, _data
addi $t0, $t0, 17048
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17048
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17036
lw $t2, 0($t0)
bne $t1, $t2, L442
la $t0, _data
addi $t0, $t0, 17036
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17032
sw $t1, 0($t0)
L442:
li $t1, 43177
la $t0, _data
addi $t0, $t0, 17052
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17052
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15152
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 17060
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 17064
sw $t1, 0($t0)
li $t1, 59145
la $t0, _data
addi $t0, $t0, 17068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17064
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17056
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14288
lw $t2, 0($t0)
bge $t1, $t2, L443
la $t0, _data
addi $t0, $t0, 17060
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17056
sw $t1, 0($t0)
L443:
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 17056
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17052
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14176
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17032
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17028
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F12
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 17072
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 17080
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 17084
sw $t1, 0($t0)
li $t1, 25550
la $t0, _data
addi $t0, $t0, 17088
sw $t1, 0($t0)
li $t1, 18216
la $t0, _data
addi $t0, $t0, 17092
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17092
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17096
sw $t3, 0($t0)
li $t1, 62589
la $t0, _data
addi $t0, $t0, 17100
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17084
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17076
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17096
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17100
lw $t2, 0($t0)
bgt $t1, $t2, L444
la $t0, _data
addi $t0, $t0, 17080
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17076
sw $t1, 0($t0)
L444:
li $t1, 0
la $t0, _data
addi $t0, $t0, 17108
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 17112
sw $t1, 0($t0)
li $t1, 7596
la $t0, _data
addi $t0, $t0, 17116
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15160
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17116
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 17120
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17104
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14360
lw $t2, 0($t0)
bgt $t1, $t2, L445
la $t0, _data
addi $t0, $t0, 17108
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17104
sw $t1, 0($t0)
L445:
li $t1, 3
la $t0, _data
addi $t0, $t0, 17124
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17128
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17124
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17128
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17132
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17132
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15024
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17136
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17136
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17140
sw $t2, 0($t0)
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 17140
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17104
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17076
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 16992
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 17144
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 17148
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 17152
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17152
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17156
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17144
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17148
lw $t2, 0($t0)
beq $t1, $t2, L446
la $t0, _data
addi $t0, $t0, 17148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17156
sw $t1, 0($t0)
L446:
li $t1, 0
la $t0, _data
addi $t0, $t0, 17164
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 17168
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17164
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17160
sw $t1, 0($t0)
li $t1, 28314
la $t0, _data
addi $t0, $t0, 17172
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17172
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17164
lw $t2, 0($t0)
beq $t1, $t2, L447
li $t1, 44793
la $t0, _data
addi $t0, $t0, 17176
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17176
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17164
lw $t2, 0($t0)
beq $t1, $t2, L447
la $t0, _data
addi $t0, $t0, 17168
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17160
sw $t1, 0($t0)
L447:
li $t1, 65124
la $t0, _data
addi $t0, $t0, 17180
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 17188
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17188
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17180
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17184
sw $t3, 0($t0)
li $t1, 64874
la $t0, _data
addi $t0, $t0, 17192
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17184
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17192
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17196
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 17204
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 17208
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 17216
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 17220
sw $t1, 0($t0)
li $t1, 15949
la $t0, _data
addi $t0, $t0, 17224
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17220
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17212
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17224
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14200
lw $t2, 0($t0)
bgt $t1, $t2, L449
la $t0, _data
addi $t0, $t0, 17216
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17212
sw $t1, 0($t0)
L449:
la $t0, _data
addi $t0, $t0, 17208
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17200
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14176
lw $t2, 0($t0)
bgt $t1, $t2, L448
la $t0, _data
addi $t0, $t0, 17204
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17200
sw $t1, 0($t0)
L448:
li $t1, 0
la $t0, _data
addi $t0, $t0, 17232
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 17236
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15176
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17240
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17236
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17228
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17240
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 15028
lw $t2, 0($t0)
beq $t1, $t2, L450
la $t0, _data
addi $t0, $t0, 17232
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17228
sw $t1, 0($t0)
L450:
li $t1, 37103
la $t0, _data
addi $t0, $t0, 17244
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14376
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17244
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17248
sw $t3, 0($t0)
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 17248
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17228
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17196
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17160
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 17252
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 17156
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17252
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17256
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 17260
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17256
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17260
lw $t2, 0($t0)
beq $t1, $t2, L451
li $t1, 31661
la $t0, _data
addi $t0, $t0, 17264
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 17268
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 17272
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17272
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17276
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17264
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17268
lw $t2, 0($t0)
beq $t1, $t2, L452
la $t0, _data
addi $t0, $t0, 17268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17276
sw $t1, 0($t0)
L452:
li $t1, 4
la $t0, _data
addi $t0, $t0, 17280
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17280
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17284
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14096
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17288
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17288
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17292
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 17296
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 17300
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17304
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17296
lw $t2, 0($t0)
beq $t1, $t2, L453
la $t0, _data
addi $t0, $t0, 17296
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17304
sw $t1, 0($t0)
L453:
li $t1, 4
la $t0, _data
addi $t0, $t0, 17308
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14500
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17308
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17312
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17312
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14096
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17316
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17316
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17320
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 17328
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17328
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17320
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17324
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17304
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17324
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17332
sw $t3, 0($t0)
addi $sp, $sp, 128
la $t0, _data
addi $t0, $t0, 17332
lw, $v0, 0($t0)
jr $ra
j L454
L451:
li $t1, 0
la $t0, _data
addi $t0, $t0, 17336
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 17340
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17340
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17344
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14176
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17336
lw $t2, 0($t0)
beq $t1, $t2, L455
la $t0, _data
addi $t0, $t0, 17336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17344
sw $t1, 0($t0)
L455:
li $t1, 4
la $t0, _data
addi $t0, $t0, 17348
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17344
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17348
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17352
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17352
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14088
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17356
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17356
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17360
sw $t2, 0($t0)
L454:
j L456
L368:
li $t1, 7559
la $t0, _data
addi $t0, $t0, 17364
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 17372
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17372
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17364
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17368
sw $t3, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17376
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17376
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17380
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14088
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17384
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17384
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17388
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 17392
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 17396
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17396
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17400
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17388
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17392
lw $t2, 0($t0)
beq $t1, $t2, L457
la $t0, _data
addi $t0, $t0, 17392
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17400
sw $t1, 0($t0)
L457:
la $t0, _data
addi $t0, $t0, 17368
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17400
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17404
sw $t3, 0($t0)
addi $sp, $sp, 128
la $t0, _data
addi $t0, $t0, 17404
lw, $v0, 0($t0)
jr $ra
L456:
li $t1, 0
la $t0, _data
addi $t0, $t0, 17408
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17412
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17408
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17412
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17416
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17416
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14080
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17420
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17420
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17424
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 17424
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 17432
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17436
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17436
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17440
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17440
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14080
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17444
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17444
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17448
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 17448
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 17456
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17460
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17456
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17460
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17464
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17464
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14080
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17468
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17468
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17472
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 17472
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14168
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14176
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14184
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14192
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14200
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 17500
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17504
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17500
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17504
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17508
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17508
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14088
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17512
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17512
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17516
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 17516
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 17524
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17528
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17528
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17532
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14088
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17536
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17536
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17540
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 17540
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 17548
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17552
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17548
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17552
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17556
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14088
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17560
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17560
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17564
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 17564
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 17572
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17576
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17572
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17576
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17580
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17580
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14088
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17584
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17584
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17588
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 17588
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14288
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14296
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14304
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14312
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14320
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14328
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14336
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14344
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14352
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14360
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14368
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14376
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14384
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 17648
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17652
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17648
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17652
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17656
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14096
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17660
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17660
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17664
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 17664
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 17672
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17676
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17672
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17676
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17680
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17680
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14096
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17684
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17684
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17688
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 17688
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 17696
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17700
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17696
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17700
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17704
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17704
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14096
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17708
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17708
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17712
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 17712
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 17720
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17724
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17720
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17724
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17728
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17728
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14096
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17732
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17732
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17736
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 17736
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 17744
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17748
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17744
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17748
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17752
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17752
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14096
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17756
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17756
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17760
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 17760
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14492
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14500
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14508
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14516
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14524
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14532
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 14540
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 17796
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17800
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17796
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17800
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17804
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17804
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14104
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17808
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17808
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17812
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 17812
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 17820
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17824
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17820
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17824
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17828
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17828
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14104
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17832
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17832
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17836
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 17836
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 17844
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17848
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17844
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17848
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17852
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17852
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14104
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17856
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17856
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17860
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 17860
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 17868
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17872
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17872
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17876
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17876
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14104
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17880
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17880
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17884
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 17884
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 17892
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17896
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17892
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17896
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17900
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17900
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14104
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17904
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17904
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17908
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 17908
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 17920
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 17924
sw $t1, 0($t0)
li $t1, 1434
la $t0, _data
addi $t0, $t0, 17928
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 17936
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 17940
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17936
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17932
sw $t1, 0($t0)
li $t1, 21436
la $t0, _data
addi $t0, $t0, 17944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17944
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14200
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17948
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17948
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17936
lw $t2, 0($t0)
beq $t1, $t2, L459
la $t0, _data
addi $t0, $t0, 14200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17936
lw $t2, 0($t0)
beq $t1, $t2, L459
la $t0, _data
addi $t0, $t0, 17940
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17932
sw $t1, 0($t0)
L459:
li $t1, 3
la $t0, _data
addi $t0, $t0, 17952
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 17956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17952
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17956
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17960
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14088
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 17964
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 17964
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 17968
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 17976
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 17980
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17976
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17972
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 17988
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 17992
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17988
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17984
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17988
lw $t2, 0($t0)
beq $t1, $t2, L461
li $t1, 32204
la $t0, _data
addi $t0, $t0, 17996
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17996
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17988
lw $t2, 0($t0)
beq $t1, $t2, L461
la $t0, _data
addi $t0, $t0, 17992
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17984
sw $t1, 0($t0)
L461:
la $t0, _data
addi $t0, $t0, 17984
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17976
lw $t2, 0($t0)
beq $t1, $t2, L460
la $t0, _data
addi $t0, $t0, 14540
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17976
lw $t2, 0($t0)
beq $t1, $t2, L460
la $t0, _data
addi $t0, $t0, 17980
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17972
sw $t1, 0($t0)
L460:
la $t0, _data
addi $t0, $t0, 14344
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14344
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18000
sw $t3, 0($t0)
li $t1, 46193
la $t0, _data
addi $t0, $t0, 18004
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18004
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18008
sw $t3, 0($t0)
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 18008
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11496
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F11
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 18012
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 18012
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14516
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 18016
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 18024
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 18028
sw $t1, 0($t0)
li $t1, 64034
la $t0, _data
addi $t0, $t0, 18032
sw $t1, 0($t0)
li $t1, 31584
la $t0, _data
addi $t0, $t0, 18036
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18032
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18036
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 18040
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14360
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18044
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 18052
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 18056
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18052
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18048
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 18064
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 18068
sw $t1, 0($t0)
li $t1, 17145
la $t0, _data
addi $t0, $t0, 18072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14500
lw $t2, 0($t0)
bgt $t1, $t2, L464
la $t0, _data
addi $t0, $t0, 18064
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18060
sw $t1, 0($t0)
L464:
la $t0, _data
addi $t0, $t0, 18060
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18052
lw $t2, 0($t0)
beq $t1, $t2, L463
la $t0, _data
addi $t0, $t0, 14328
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18052
lw $t2, 0($t0)
beq $t1, $t2, L463
la $t0, _data
addi $t0, $t0, 18056
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18048
sw $t1, 0($t0)
L463:
li $t1, 0
la $t0, _data
addi $t0, $t0, 18080
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18080
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14376
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18076
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 18088
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 18092
sw $t1, 0($t0)
li $t1, 49884
la $t0, _data
addi $t0, $t0, 18096
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18096
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14368
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18100
sw $t3, 0($t0)
li $t1, 43447
la $t0, _data
addi $t0, $t0, 18104
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18092
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18084
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18100
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18104
lw $t2, 0($t0)
ble $t1, $t2, L465
la $t0, _data
addi $t0, $t0, 18088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18084
sw $t1, 0($t0)
L465:
li $t1, 0
la $t0, _data
addi $t0, $t0, 18112
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 18116
sw $t1, 0($t0)
li $t1, 3
la $t0, _data
addi $t0, $t0, 18120
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18124
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18124
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18128
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18128
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14104
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18132
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18132
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 18136
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 18116
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18108
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18136
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14508
lw $t2, 0($t0)
beq $t1, $t2, L466
la $t0, _data
addi $t0, $t0, 18112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18108
sw $t1, 0($t0)
L466:
li $t1, 1
la $t0, _data
addi $t0, $t0, 18140
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18144
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18140
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18144
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18148
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14104
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18152
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18152
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 18156
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 14192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14492
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18160
sw $t3, 0($t0)
li $t1, 47034
la $t0, _data
addi $t0, $t0, 18164
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 18172
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18172
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18164
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18168
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18168
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14352
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 18176
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 18184
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 18188
sw $t1, 0($t0)
li $t1, 59833
la $t0, _data
addi $t0, $t0, 18192
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14068
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18196
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18188
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18180
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18196
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14184
lw $t2, 0($t0)
bne $t1, $t2, L467
la $t0, _data
addi $t0, $t0, 18184
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18180
sw $t1, 0($t0)
L467:
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 18180
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18176
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18160
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18156
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18108
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 18200
sw $v0, 0($t0)
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 18200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18084
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18076
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18048
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18044
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F12
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 18204
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 18028
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18020
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18204
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14384
lw $t2, 0($t0)
blt $t1, $t2, L462
la $t0, _data
addi $t0, $t0, 18024
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18020
sw $t1, 0($t0)
L462:
addi $sp, $sp, -20
la $t0, _data
addi $t0, $t0, 14056
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14060
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14064
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14068
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14072
lw $t1, 0($t0)
sw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 18020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18016
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17972
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17968
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17932
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
lw $t1, 16($sp)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
addi $sp, $sp, 20
la $t0, _data
addi $t0, $t0, 18208
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 17924
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17916
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17928
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18208
lw $t2, 0($t0)
bne $t1, $t2, L458
la $t0, _data
addi $t0, $t0, 17920
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 17916
sw $t1, 0($t0)
L458:
addi $sp, $sp, 128
la $t0, _data
addi $t0, $t0, 17916
lw, $v0, 0($t0)
jr $ra
F13:
addi $sp, $sp, -12
move $t1, $sp
la $t0, _data
addi $t0, $t0, 18212
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18216
sw $t1, 0($t0)
addi $sp, $sp, -20
move $t1, $sp
la $t0, _data
addi $t0, $t0, 18220
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18220
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18224
sw $t1, 0($t0)
addi $sp, $sp, -40
move $t1, $sp
la $t0, _data
addi $t0, $t0, 18228
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18228
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
sw $t1, 0($t0)
addi $sp, $sp, -4
move $t1, $sp
la $t0, _data
addi $t0, $t0, 18236
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18236
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18240
sw $t1, 0($t0)
li $t1, 3078
la $t0, _data
addi $t0, $t0, 18248
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18248
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18244
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 18252
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18256
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18256
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18260
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18260
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18216
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18264
sw $t3, 0($t0)
li $t1, 65250
la $t0, _data
addi $t0, $t0, 18268
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18264
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 18272
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18276
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18272
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18276
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18280
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18280
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18216
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18284
sw $t3, 0($t0)
li $t1, 56886
la $t0, _data
addi $t0, $t0, 18288
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18288
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18284
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 18292
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18296
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18296
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18300
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18216
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18304
sw $t3, 0($t0)
li $t1, 10674
la $t0, _data
addi $t0, $t0, 18308
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18304
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 47353
la $t0, _data
addi $t0, $t0, 18316
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18316
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18312
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 18320
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18324
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18320
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18324
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18328
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18328
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18224
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18332
sw $t3, 0($t0)
li $t1, 35495
la $t0, _data
addi $t0, $t0, 18336
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18332
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 18340
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18344
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18340
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18344
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18348
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18348
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18224
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18352
sw $t3, 0($t0)
li $t1, 38988
la $t0, _data
addi $t0, $t0, 18356
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18356
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18352
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 18360
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18364
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18360
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18364
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18368
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18368
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18224
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18372
sw $t3, 0($t0)
li $t1, 26611
la $t0, _data
addi $t0, $t0, 18376
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18376
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18372
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 18380
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18384
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18384
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18388
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18388
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18224
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18392
sw $t3, 0($t0)
li $t1, 35084
la $t0, _data
addi $t0, $t0, 18396
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18396
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18392
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18400
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18404
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18400
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18404
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18408
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18408
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18224
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18412
sw $t3, 0($t0)
li $t1, 38326
la $t0, _data
addi $t0, $t0, 18416
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18416
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18412
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 0
la $t0, _data
addi $t0, $t0, 18420
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18424
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18420
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18424
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18428
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18428
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18432
sw $t3, 0($t0)
li $t1, 42560
la $t0, _data
addi $t0, $t0, 18436
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18436
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18432
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 18440
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18444
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18440
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18444
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18448
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18448
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18452
sw $t3, 0($t0)
li $t1, 6651
la $t0, _data
addi $t0, $t0, 18456
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18456
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18452
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 18460
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18464
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18460
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18464
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18468
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18468
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18472
sw $t3, 0($t0)
li $t1, 4451
la $t0, _data
addi $t0, $t0, 18476
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18476
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18472
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 18480
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18484
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18480
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18484
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18488
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18492
sw $t3, 0($t0)
li $t1, 50119
la $t0, _data
addi $t0, $t0, 18496
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18492
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18500
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18504
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18500
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18504
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18508
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18508
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18512
sw $t3, 0($t0)
li $t1, 8085
la $t0, _data
addi $t0, $t0, 18516
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18516
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18512
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 18520
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18524
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18520
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18524
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18528
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18528
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18532
sw $t3, 0($t0)
li $t1, 25887
la $t0, _data
addi $t0, $t0, 18536
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18536
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18532
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 6
la $t0, _data
addi $t0, $t0, 18540
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18544
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18540
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18544
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18548
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18548
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18552
sw $t3, 0($t0)
li $t1, 37250
la $t0, _data
addi $t0, $t0, 18556
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18552
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 7
la $t0, _data
addi $t0, $t0, 18560
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18564
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18560
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18564
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18568
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18568
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18572
sw $t3, 0($t0)
li $t1, 6397
la $t0, _data
addi $t0, $t0, 18576
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18576
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18572
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 8
la $t0, _data
addi $t0, $t0, 18580
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18584
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18580
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18584
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18588
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18588
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18592
sw $t3, 0($t0)
li $t1, 58091
la $t0, _data
addi $t0, $t0, 18596
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18596
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18592
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 9
la $t0, _data
addi $t0, $t0, 18600
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18604
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18600
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18604
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18608
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18608
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18612
sw $t3, 0($t0)
li $t1, 17908
la $t0, _data
addi $t0, $t0, 18616
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18616
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18612
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4895
la $t0, _data
addi $t0, $t0, 18624
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18624
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18620
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 18628
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18632
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18628
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18632
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18636
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18636
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18240
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18640
sw $t3, 0($t0)
li $t1, 24140
la $t0, _data
addi $t0, $t0, 18644
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18640
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 35053
la $t0, _data
addi $t0, $t0, 18652
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18652
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18648
sw $t1, 0($t0)
li $t1, 54779
la $t0, _data
addi $t0, $t0, 18660
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18660
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18656
sw $t1, 0($t0)
li $t1, 2051
la $t0, _data
addi $t0, $t0, 18668
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18668
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18664
sw $t1, 0($t0)
L468:
li $t1, 0
la $t0, _data
addi $t0, $t0, 18672
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18676
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18672
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18676
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18680
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18680
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18216
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18684
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18684
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 18688
sw $t2, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18692
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18688
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18692
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18696
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18696
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18240
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18700
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18700
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 18704
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 18712
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 18716
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18716
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18708
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18712
lw $t2, 0($t0)
bne $t1, $t2, L470
li $t1, 2738
la $t0, _data
addi $t0, $t0, 18720
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18720
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18712
lw $t2, 0($t0)
bne $t1, $t2, L470
la $t0, _data
addi $t0, $t0, 18712
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18708
sw $t1, 0($t0)
L470:
li $t1, 4
la $t0, _data
addi $t0, $t0, 18724
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18708
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18724
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18728
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18728
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18732
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18732
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 18736
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 18704
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18736
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 18740
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 18744
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18740
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18744
lw $t2, 0($t0)
beq $t1, $t2, L469
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F13
lw $ra, 0($sp)
addi $sp, $sp, 4
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 18748
sw $v0, 0($t0)
j L468
L469:
li $t1, 0
la $t0, _data
addi $t0, $t0, 18752
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 18756
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18756
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18760
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18312
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18752
lw $t2, 0($t0)
beq $t1, $t2, L471
la $t0, _data
addi $t0, $t0, 18752
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18760
sw $t1, 0($t0)
L471:
li $t1, 0
la $t0, _data
addi $t0, $t0, 18768
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18768
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18312
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18764
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18760
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18764
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18772
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 18776
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18772
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18776
lw $t2, 0($t0)
beq $t1, $t2, L472
li $t1, 0
la $t0, _data
addi $t0, $t0, 18784
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 18788
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18784
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18780
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 18796
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 18800
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18796
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18792
sw $t1, 0($t0)
li $t1, 27943
la $t0, _data
addi $t0, $t0, 18804
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18804
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18796
lw $t2, 0($t0)
beq $t1, $t2, L474
li $t1, 40134
la $t0, _data
addi $t0, $t0, 18808
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18808
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18796
lw $t2, 0($t0)
beq $t1, $t2, L474
la $t0, _data
addi $t0, $t0, 18800
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18792
sw $t1, 0($t0)
L474:
la $t0, _data
addi $t0, $t0, 18664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18620
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18648
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F13
lw $ra, 0($sp)
addi $sp, $sp, 4
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 18812
sw $v0, 0($t0)
addi $sp, $sp, -0
la $t0, _data
addi $t0, $t0, 18812
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F12
lw $ra, 0($sp)
addi $sp, $sp, 4
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 18816
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 18820
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 18824
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18824
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18828
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18820
lw $t2, 0($t0)
beq $t1, $t2, L475
la $t0, _data
addi $t0, $t0, 18820
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18828
sw $t1, 0($t0)
L475:
li $t1, 62571
la $t0, _data
addi $t0, $t0, 18832
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 18840
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18840
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18832
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18836
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18828
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18836
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18844
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18844
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18784
lw $t2, 0($t0)
beq $t1, $t2, L473
li $t1, 31021
la $t0, _data
addi $t0, $t0, 18848
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18848
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18784
lw $t2, 0($t0)
beq $t1, $t2, L473
la $t0, _data
addi $t0, $t0, 18788
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18780
sw $t1, 0($t0)
L473:
j L477
L472:
li $t1, 39848
la $t0, _data
addi $t0, $t0, 18852
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 18856
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 18860
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18860
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18864
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18852
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18856
lw $t2, 0($t0)
beq $t1, $t2, L477
la $t0, _data
addi $t0, $t0, 18856
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18864
sw $t1, 0($t0)
L477:
addi $sp, $sp, -24
move $t1, $sp
la $t0, _data
addi $t0, $t0, 18868
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18872
sw $t1, 0($t0)
li $t1, 53922
la $t0, _data
addi $t0, $t0, 18880
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18880
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18876
sw $t1, 0($t0)
li $t1, 41695
la $t0, _data
addi $t0, $t0, 18888
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18888
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18884
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 18892
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18896
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18892
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18896
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18900
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18900
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18872
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18904
sw $t3, 0($t0)
li $t1, 21666
la $t0, _data
addi $t0, $t0, 18908
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18904
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 18912
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18916
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18912
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18916
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18920
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18920
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18872
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18924
sw $t3, 0($t0)
li $t1, 23881
la $t0, _data
addi $t0, $t0, 18928
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18928
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18924
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 18932
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18936
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18932
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18936
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18940
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18940
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18872
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18944
sw $t3, 0($t0)
li $t1, 15147
la $t0, _data
addi $t0, $t0, 18948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18948
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18944
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 18952
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18952
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18956
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18960
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18872
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18964
sw $t3, 0($t0)
li $t1, 48277
la $t0, _data
addi $t0, $t0, 18968
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18968
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18964
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18972
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18976
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18972
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18976
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18980
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 18980
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18872
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 18984
sw $t3, 0($t0)
li $t1, 58965
la $t0, _data
addi $t0, $t0, 18988
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18988
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18984
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 18992
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 18996
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18992
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18996
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19000
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18872
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19004
sw $t3, 0($t0)
li $t1, 53473
la $t0, _data
addi $t0, $t0, 19008
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19008
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19004
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 25301
la $t0, _data
addi $t0, $t0, 19016
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19016
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19012
sw $t1, 0($t0)
li $t1, 80
la $t0, _data
addi $t0, $t0, 19024
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19024
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19020
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 19032
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 19036
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19036
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19028
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 19044
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 19048
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19044
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19040
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19044
lw $t2, 0($t0)
beq $t1, $t2, L479
la $t0, _data
addi $t0, $t0, 19012
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19044
lw $t2, 0($t0)
beq $t1, $t2, L479
la $t0, _data
addi $t0, $t0, 19048
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19040
sw $t1, 0($t0)
L479:
la $t0, _data
addi $t0, $t0, 19040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19032
lw $t2, 0($t0)
bne $t1, $t2, L478
la $t0, _data
addi $t0, $t0, 18648
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19032
lw $t2, 0($t0)
bne $t1, $t2, L478
la $t0, _data
addi $t0, $t0, 19032
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19028
sw $t1, 0($t0)
L478:
addi $sp, $sp, -0
la $t0, _data
addi $t0, $t0, 19028
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 19052
sw $v0, 0($t0)
L480:
li $t1, 57925
la $t0, _data
addi $t0, $t0, 19056
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 19060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19056
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19060
lw $t2, 0($t0)
beq $t1, $t2, L481
L482:
la $t0, _data
addi $t0, $t0, 18656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18876
sw $t1, 0($t0)
li $t1, 9884
la $t0, _data
addi $t0, $t0, 19064
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 19072
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 19076
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19076
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19068
sw $t1, 0($t0)
li $t1, 8166
la $t0, _data
addi $t0, $t0, 19080
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19080
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19072
lw $t2, 0($t0)
bne $t1, $t2, L484
la $t0, _data
addi $t0, $t0, 18884
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19072
lw $t2, 0($t0)
bne $t1, $t2, L484
la $t0, _data
addi $t0, $t0, 19072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19068
sw $t1, 0($t0)
L484:
li $t1, 4
la $t0, _data
addi $t0, $t0, 19084
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18312
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19084
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19088
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18872
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19092
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19092
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19096
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19096
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19012
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 19100
sw $t3, 0($t0)
addi $sp, $sp, -0
la $t0, _data
addi $t0, $t0, 19100
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 19104
sw $v0, 0($t0)
li $t1, 18276
la $t0, _data
addi $t0, $t0, 19108
sw $t1, 0($t0)
li $t1, 47134
la $t0, _data
addi $t0, $t0, 19112
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19108
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19112
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19116
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18620
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 19120
sw $t3, 0($t0)
li $t1, 14563
la $t0, _data
addi $t0, $t0, 19124
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19124
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 19128
sw $t3, 0($t0)
li $t1, 10832
la $t0, _data
addi $t0, $t0, 19132
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19132
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18648
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19136
sw $t3, 0($t0)
addi $sp, $sp, -0
la $t0, _data
addi $t0, $t0, 19136
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19128
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19116
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19104
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 19140
sw $v0, 0($t0)
li $t1, 65042
la $t0, _data
addi $t0, $t0, 19144
sw $t1, 0($t0)
li $t1, 19458
la $t0, _data
addi $t0, $t0, 19148
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19144
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19148
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 19152
sw $t3, 0($t0)
li $t1, 34972
la $t0, _data
addi $t0, $t0, 19156
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 19164
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 19168
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19168
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19160
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 19176
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 19180
sw $t1, 0($t0)
li $t1, 34559
la $t0, _data
addi $t0, $t0, 19184
sw $t1, 0($t0)
li $t1, 8702
la $t0, _data
addi $t0, $t0, 19188
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19180
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19172
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19184
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19188
lw $t2, 0($t0)
bne $t1, $t2, L486
la $t0, _data
addi $t0, $t0, 19176
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19172
sw $t1, 0($t0)
L486:
la $t0, _data
addi $t0, $t0, 19172
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19164
lw $t2, 0($t0)
bne $t1, $t2, L485
la $t0, _data
addi $t0, $t0, 19020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19164
lw $t2, 0($t0)
bne $t1, $t2, L485
la $t0, _data
addi $t0, $t0, 19164
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19160
sw $t1, 0($t0)
L485:
addi $sp, $sp, -0
la $t0, _data
addi $t0, $t0, 19160
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19156
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19152
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19140
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19064
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 19192
sw $v0, 0($t0)
li $t1, 37023
la $t0, _data
addi $t0, $t0, 19196
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19196
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19200
sw $t3, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19204
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19204
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19208
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19208
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18240
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19212
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19212
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19216
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19216
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18656
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19220
sw $t3, 0($t0)
li $t1, 19439
la $t0, _data
addi $t0, $t0, 19224
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19224
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18664
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 19232
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 19236
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19232
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19228
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 19244
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 19248
sw $t1, 0($t0)
li $t1, 1802
la $t0, _data
addi $t0, $t0, 19252
sw $t1, 0($t0)
li $t1, 39761
la $t0, _data
addi $t0, $t0, 19256
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19248
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19240
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19256
lw $t2, 0($t0)
bne $t1, $t2, L488
la $t0, _data
addi $t0, $t0, 19244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19240
sw $t1, 0($t0)
L488:
la $t0, _data
addi $t0, $t0, 19240
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19232
lw $t2, 0($t0)
beq $t1, $t2, L487
la $t0, _data
addi $t0, $t0, 19020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19232
lw $t2, 0($t0)
beq $t1, $t2, L487
la $t0, _data
addi $t0, $t0, 19236
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19228
sw $t1, 0($t0)
L487:
addi $sp, $sp, -0
la $t0, _data
addi $t0, $t0, 19228
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19224
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19220
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F12
lw $ra, 0($sp)
addi $sp, $sp, 4
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 19260
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 19264
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19260
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19264
lw $t2, 0($t0)
beq $t1, $t2, L483
L489:
li $t1, 2
la $t0, _data
addi $t0, $t0, 19268
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19272
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19272
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19276
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19280
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19280
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19284
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 19288
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19288
lw $t2, 0($t0)
beq $t1, $t2, L490
li $t1, 36797
la $t0, _data
addi $t0, $t0, 19296
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19296
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19292
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19012
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19300
sw $t3, 0($t0)
j L489
L490:
j L482
L483:
j L480
L481:
li $t1, 0
la $t0, _data
addi $t0, $t0, 19308
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 19312
sw $t1, 0($t0)
li $t1, 12868
la $t0, _data
addi $t0, $t0, 19316
sw $t1, 0($t0)
li $t1, 16248
la $t0, _data
addi $t0, $t0, 19320
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19316
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19320
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 19324
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19312
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19304
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18656
lw $t2, 0($t0)
ble $t1, $t2, L491
la $t0, _data
addi $t0, $t0, 19308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19304
sw $t1, 0($t0)
L491:
addi $sp, $sp, -0
la $t0, _data
addi $t0, $t0, 19304
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11496
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F11
lw $ra, 0($sp)
addi $sp, $sp, 4
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 19328
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 19332
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19328
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19332
lw $t2, 0($t0)
beq $t1, $t2, L492
L492:
li $t1, 0
la $t0, _data
addi $t0, $t0, 19340
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 19344
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19344
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19336
sw $t1, 0($t0)
li $t1, 25183
la $t0, _data
addi $t0, $t0, 19348
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19348
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19340
lw $t2, 0($t0)
bne $t1, $t2, L493
li $t1, 0
la $t0, _data
addi $t0, $t0, 19356
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 19360
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19364
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19364
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19368
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19368
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18872
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19372
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19372
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19376
sw $t2, 0($t0)
li $t1, 54563
la $t0, _data
addi $t0, $t0, 19380
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 19388
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 19392
sw $t1, 0($t0)
li $t1, 37914
la $t0, _data
addi $t0, $t0, 19396
sw $t1, 0($t0)
li $t1, 49064
la $t0, _data
addi $t0, $t0, 19400
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19396
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19400
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 19404
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19392
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19384
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18244
lw $t2, 0($t0)
beq $t1, $t2, L495
la $t0, _data
addi $t0, $t0, 19388
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19384
sw $t1, 0($t0)
L495:
li $t1, 4
la $t0, _data
addi $t0, $t0, 19408
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18620
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19408
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19412
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19412
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18872
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19416
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19416
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19420
sw $t2, 0($t0)
addi $sp, $sp, -0
la $t0, _data
addi $t0, $t0, 19420
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 19424
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 19432
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 19436
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 19444
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 19448
sw $t1, 0($t0)
li $t1, 4175
la $t0, _data
addi $t0, $t0, 19452
sw $t1, 0($t0)
li $t1, 20655
la $t0, _data
addi $t0, $t0, 19456
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19448
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19440
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19456
lw $t2, 0($t0)
blt $t1, $t2, L497
la $t0, _data
addi $t0, $t0, 19444
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19440
sw $t1, 0($t0)
L497:
li $t1, 42494
la $t0, _data
addi $t0, $t0, 19460
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19436
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19428
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19440
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19460
lw $t2, 0($t0)
bge $t1, $t2, L496
la $t0, _data
addi $t0, $t0, 19432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19428
sw $t1, 0($t0)
L496:
li $t1, 0
la $t0, _data
addi $t0, $t0, 19468
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 19472
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19468
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19464
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19468
lw $t2, 0($t0)
beq $t1, $t2, L498
la $t0, _data
addi $t0, $t0, 19020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19468
lw $t2, 0($t0)
beq $t1, $t2, L498
la $t0, _data
addi $t0, $t0, 19472
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19464
sw $t1, 0($t0)
L498:
addi $sp, $sp, -0
la $t0, _data
addi $t0, $t0, 19464
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19428
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19424
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 19476
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 19360
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19352
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19376
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19476
lw $t2, 0($t0)
blt $t1, $t2, L494
la $t0, _data
addi $t0, $t0, 19356
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19352
sw $t1, 0($t0)
L494:
la $t0, _data
addi $t0, $t0, 19352
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19340
lw $t2, 0($t0)
bne $t1, $t2, L493
la $t0, _data
addi $t0, $t0, 19340
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19336
sw $t1, 0($t0)
L493:
la $t0, _data
addi $t0, $t0, 18244
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 19484
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19488
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19484
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19488
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19492
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19492
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18216
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19496
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19496
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19500
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19500
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 19508
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19512
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19508
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19512
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19516
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19516
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18216
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19520
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19520
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19524
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19524
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 19532
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19536
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19536
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19540
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19540
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18216
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19544
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19544
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19548
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19548
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 18312
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 19560
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19564
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19560
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19564
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19568
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19568
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18224
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19572
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19572
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19576
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19576
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 19584
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19588
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19584
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19588
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19592
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19592
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18224
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19596
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19596
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19600
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19600
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 19608
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19612
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19608
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19612
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19616
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19616
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18224
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19620
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19620
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19624
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19624
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 19632
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19636
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19632
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19636
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19640
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19640
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18224
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19644
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19644
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19648
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19648
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 19656
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19660
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19660
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19664
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18224
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19668
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19668
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19672
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19672
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 19680
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19684
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19680
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19684
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19688
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19688
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19692
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19692
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19696
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19696
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 19704
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19708
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19704
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19708
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19712
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19712
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19716
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19716
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19720
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19720
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 19728
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19732
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19728
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19732
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19736
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19736
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19740
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19740
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19744
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19744
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 19752
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19756
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19752
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19756
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19760
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19760
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19764
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19764
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19768
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19768
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 19776
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19780
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19776
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19780
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19784
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19784
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19788
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19788
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19792
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19792
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 19800
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19804
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19800
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19804
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19808
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19808
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19812
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19812
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19816
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19816
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 6
la $t0, _data
addi $t0, $t0, 19824
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19828
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19824
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19828
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19832
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19832
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19836
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19836
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19840
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19840
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 7
la $t0, _data
addi $t0, $t0, 19848
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19852
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19848
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19852
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19856
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19856
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19860
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19860
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19864
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19864
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 8
la $t0, _data
addi $t0, $t0, 19872
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19876
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19872
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19876
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19880
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19880
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19884
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19884
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19888
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19888
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 9
la $t0, _data
addi $t0, $t0, 19896
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19900
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19896
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19900
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19904
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19904
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19908
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19908
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19912
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19912
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 18620
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 19924
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19928
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19924
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19928
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19932
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19932
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18240
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19936
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19936
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19940
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 19940
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 18648
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 18656
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 18664
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 18648
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18656
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 19960
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18244
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19964
sw $t3, 0($t0)
li $t1, 8
la $t0, _data
addi $t0, $t0, 19968
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 19972
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19968
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19972
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19976
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19976
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18232
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19980
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 19980
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 19984
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 19992
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19992
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19984
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 19988
sw $t3, 0($t0)
addi $sp, $sp, -0
la $t0, _data
addi $t0, $t0, 19988
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 19996
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 19964
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 19996
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20000
sw $t3, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 20004
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20004
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20008
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20008
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 18224
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20012
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20012
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 20016
sw $t2, 0($t0)
addi $sp, $sp, 100
la $t0, _data
addi $t0, $t0, 20016
lw, $v0, 0($t0)
jr $ra
F14:
addi $sp, $sp, -12
move $t1, $sp
la $t0, _data
addi $t0, $t0, 20032
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20032
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20036
sw $t1, 0($t0)
addi $sp, $sp, -20
move $t1, $sp
la $t0, _data
addi $t0, $t0, 20040
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20044
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20048
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 20052
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20048
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20052
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20056
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20056
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20036
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20060
sw $t3, 0($t0)
li $t1, 42574
la $t0, _data
addi $t0, $t0, 20064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20064
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20060
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20068
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 20072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20072
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20076
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20076
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20036
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20080
sw $t3, 0($t0)
li $t1, 50037
la $t0, _data
addi $t0, $t0, 20084
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20084
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20080
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 20088
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 20092
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20092
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20096
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20096
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20036
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20100
sw $t3, 0($t0)
li $t1, 55840
la $t0, _data
addi $t0, $t0, 20104
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20104
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20100
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 50740
la $t0, _data
addi $t0, $t0, 20112
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20108
sw $t1, 0($t0)
li $t1, 2778
la $t0, _data
addi $t0, $t0, 20120
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20116
sw $t1, 0($t0)
li $t1, 37439
la $t0, _data
addi $t0, $t0, 20128
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20128
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20124
sw $t1, 0($t0)
li $t1, 65303
la $t0, _data
addi $t0, $t0, 20136
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20136
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20132
sw $t1, 0($t0)
li $t1, 13610
la $t0, _data
addi $t0, $t0, 20144
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20144
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20140
sw $t1, 0($t0)
li $t1, 36945
la $t0, _data
addi $t0, $t0, 20152
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20152
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20148
sw $t1, 0($t0)
li $t1, 19226
la $t0, _data
addi $t0, $t0, 20160
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20160
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20156
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20164
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 20168
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20164
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20168
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20172
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20172
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20044
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20176
sw $t3, 0($t0)
li $t1, 48582
la $t0, _data
addi $t0, $t0, 20180
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20180
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20176
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20184
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 20188
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20184
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20188
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20192
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20044
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20196
sw $t3, 0($t0)
li $t1, 5969
la $t0, _data
addi $t0, $t0, 20200
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20196
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 20204
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 20208
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20204
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20208
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20212
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20044
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20216
sw $t3, 0($t0)
li $t1, 27928
la $t0, _data
addi $t0, $t0, 20220
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20220
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20216
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 20224
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 20228
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20224
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20228
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20232
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20232
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20044
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20236
sw $t3, 0($t0)
li $t1, 20069
la $t0, _data
addi $t0, $t0, 20240
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20240
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20236
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 20244
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 20248
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20248
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20252
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20044
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20256
sw $t3, 0($t0)
li $t1, 25408
la $t0, _data
addi $t0, $t0, 20260
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20260
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20256
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20268
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20272
sw $t1, 0($t0)
li $t1, 29730
la $t0, _data
addi $t0, $t0, 20276
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20028
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20280
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20272
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20264
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20280
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20124
lw $t2, 0($t0)
blt $t1, $t2, L499
la $t0, _data
addi $t0, $t0, 20268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20264
sw $t1, 0($t0)
L499:
addi $sp, $sp, 32
la $t0, _data
addi $t0, $t0, 20108
lw, $v0, 0($t0)
jr $ra
li $t1, 0
la $t0, _data
addi $t0, $t0, 20288
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20292
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20284
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20300
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20304
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20304
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20296
sw $t1, 0($t0)
li $t1, 59830
la $t0, _data
addi $t0, $t0, 20308
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F13
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 20020
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 20024
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 20028
sw $t1, 0($t0)
addi $sp, $sp, 12
la $t0, _data
addi $t0, $t0, 20312
sw $v0, 0($t0)
li $t1, 7254
la $t0, _data
addi $t0, $t0, 20316
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20324
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20316
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20320
sw $t3, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F13
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 20020
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 20024
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 20028
sw $t1, 0($t0)
addi $sp, $sp, 12
la $t0, _data
addi $t0, $t0, 20328
sw $v0, 0($t0)
li $t1, 6130
la $t0, _data
addi $t0, $t0, 20332
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20328
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20332
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 20336
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20116
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20344
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20348
sw $t1, 0($t0)
li $t1, 31091
la $t0, _data
addi $t0, $t0, 20352
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20156
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20352
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20356
sw $t3, 0($t0)
li $t1, 20122
la $t0, _data
addi $t0, $t0, 20360
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20348
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20340
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20356
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20360
lw $t2, 0($t0)
bne $t1, $t2, L502
la $t0, _data
addi $t0, $t0, 20344
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20340
sw $t1, 0($t0)
L502:
li $t1, 0
la $t0, _data
addi $t0, $t0, 20368
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20372
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20380
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20384
sw $t1, 0($t0)
li $t1, 22378
la $t0, _data
addi $t0, $t0, 20388
sw $t1, 0($t0)
li $t1, 56274
la $t0, _data
addi $t0, $t0, 20392
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20376
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20388
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20392
lw $t2, 0($t0)
ble $t1, $t2, L504
la $t0, _data
addi $t0, $t0, 20380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20376
sw $t1, 0($t0)
L504:
li $t1, 9150
la $t0, _data
addi $t0, $t0, 20396
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20372
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20364
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20376
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20396
lw $t2, 0($t0)
bne $t1, $t2, L503
la $t0, _data
addi $t0, $t0, 20368
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20364
sw $t1, 0($t0)
L503:
addi $sp, $sp, -12
la $t0, _data
addi $t0, $t0, 20020
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 20024
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 20028
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 20364
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20340
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20320
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F12
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 20020
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 20024
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 20028
sw $t1, 0($t0)
addi $sp, $sp, 12
la $t0, _data
addi $t0, $t0, 20400
sw $v0, 0($t0)
li $t1, 60293
la $t0, _data
addi $t0, $t0, 20404
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20412
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20412
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20404
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20408
sw $t3, 0($t0)
li $t1, 39803
la $t0, _data
addi $t0, $t0, 20416
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20408
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20416
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20420
sw $t3, 0($t0)
addi $sp, $sp, -12
la $t0, _data
addi $t0, $t0, 20020
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 20024
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 20028
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 20420
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20028
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20400
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20024
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20312
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20020
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F14
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 20020
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 20024
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 20028
sw $t1, 0($t0)
addi $sp, $sp, 12
la $t0, _data
addi $t0, $t0, 20424
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20432
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20424
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20428
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20436
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20440
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20440
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20444
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20124
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20436
lw $t2, 0($t0)
beq $t1, $t2, L505
la $t0, _data
addi $t0, $t0, 20436
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20444
sw $t1, 0($t0)
L505:
li $t1, 0
la $t0, _data
addi $t0, $t0, 20452
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20444
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20448
sw $t3, 0($t0)
li $t1, 13325
la $t0, _data
addi $t0, $t0, 20456
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20464
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20468
sw $t1, 0($t0)
li $t1, 15412
la $t0, _data
addi $t0, $t0, 20472
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20480
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20480
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20472
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20476
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20468
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20460
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20476
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20148
lw $t2, 0($t0)
blt $t1, $t2, L506
la $t0, _data
addi $t0, $t0, 20464
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20460
sw $t1, 0($t0)
L506:
li $t1, 0
la $t0, _data
addi $t0, $t0, 20488
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20492
sw $t1, 0($t0)
li $t1, 16761
la $t0, _data
addi $t0, $t0, 20496
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20124
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20500
sw $t3, 0($t0)
li $t1, 5437
la $t0, _data
addi $t0, $t0, 20504
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20492
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20484
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20500
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20504
lw $t2, 0($t0)
bne $t1, $t2, L507
la $t0, _data
addi $t0, $t0, 20488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20484
sw $t1, 0($t0)
L507:
li $t1, 4
la $t0, _data
addi $t0, $t0, 20508
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20028
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20508
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20512
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20512
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20044
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20516
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20516
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 20520
sw $t2, 0($t0)
li $t1, 61369
la $t0, _data
addi $t0, $t0, 20524
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20124
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 20528
sw $t3, 0($t0)
li $t1, 59335
la $t0, _data
addi $t0, $t0, 20532
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20528
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20532
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20536
sw $t3, 0($t0)
li $t1, 55475
la $t0, _data
addi $t0, $t0, 20540
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20544
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20540
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20544
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20548
sw $t3, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20552
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20548
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20552
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20556
sw $t3, 0($t0)
addi $sp, $sp, -12
la $t0, _data
addi $t0, $t0, 20020
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 20024
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 20028
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 20556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20536
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20520
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20484
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20460
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 20020
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 20024
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 20028
sw $t1, 0($t0)
addi $sp, $sp, 12
la $t0, _data
addi $t0, $t0, 20560
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 20560
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20156
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20564
sw $t3, 0($t0)
addi $sp, $sp, -12
la $t0, _data
addi $t0, $t0, 20020
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 20024
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 20028
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 20564
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20456
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20448
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20428
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F12
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 20020
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 20024
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 20028
sw $t1, 0($t0)
addi $sp, $sp, 12
la $t0, _data
addi $t0, $t0, 20568
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 20568
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20300
lw $t2, 0($t0)
bne $t1, $t2, L501
li $t1, 58253
la $t0, _data
addi $t0, $t0, 20572
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20580
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20580
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20572
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20576
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20576
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20300
lw $t2, 0($t0)
bne $t1, $t2, L501
la $t0, _data
addi $t0, $t0, 20300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20296
sw $t1, 0($t0)
L501:
la $t0, _data
addi $t0, $t0, 20296
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20288
lw $t2, 0($t0)
bne $t1, $t2, L500
li $t1, 0
la $t0, _data
addi $t0, $t0, 20588
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20592
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 20596
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20108
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20596
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20600
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20600
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20036
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20604
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20604
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 20608
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20612
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20616
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20616
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20620
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20608
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20612
lw $t2, 0($t0)
beq $t1, $t2, L509
la $t0, _data
addi $t0, $t0, 20612
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20620
sw $t1, 0($t0)
L509:
li $t1, 23576
la $t0, _data
addi $t0, $t0, 20624
sw $t1, 0($t0)
li $t1, 44307
la $t0, _data
addi $t0, $t0, 20628
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20624
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20628
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20632
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20592
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20584
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20620
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20632
lw $t2, 0($t0)
ble $t1, $t2, L508
la $t0, _data
addi $t0, $t0, 20588
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20584
sw $t1, 0($t0)
L508:
la $t0, _data
addi $t0, $t0, 20584
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20288
lw $t2, 0($t0)
bne $t1, $t2, L500
la $t0, _data
addi $t0, $t0, 20288
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20284
sw $t1, 0($t0)
L500:
li $t1, 0
la $t0, _data
addi $t0, $t0, 20636
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20636
lw $t2, 0($t0)
beq $t1, $t2, L510
li $t1, 0
la $t0, _data
addi $t0, $t0, 20644
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20648
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20640
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20656
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20660
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20668
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20672
sw $t1, 0($t0)
li $t1, 6327
la $t0, _data
addi $t0, $t0, 20676
sw $t1, 0($t0)
li $t1, 60522
la $t0, _data
addi $t0, $t0, 20680
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20676
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20680
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 20684
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20132
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20124
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 20688
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20672
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20664
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20684
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20688
lw $t2, 0($t0)
beq $t1, $t2, L513
la $t0, _data
addi $t0, $t0, 20668
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20664
sw $t1, 0($t0)
L513:
la $t0, _data
addi $t0, $t0, 20660
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20652
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20140
lw $t2, 0($t0)
bge $t1, $t2, L512
la $t0, _data
addi $t0, $t0, 20656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20652
sw $t1, 0($t0)
L512:
la $t0, _data
addi $t0, $t0, 20652
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20644
lw $t2, 0($t0)
beq $t1, $t2, L511
li $t1, 0
la $t0, _data
addi $t0, $t0, 20696
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20700
sw $t1, 0($t0)
li $t1, 63533
la $t0, _data
addi $t0, $t0, 20704
sw $t1, 0($t0)
li $t1, 54909
la $t0, _data
addi $t0, $t0, 20708
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20700
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20692
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20704
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20708
lw $t2, 0($t0)
bne $t1, $t2, L514
la $t0, _data
addi $t0, $t0, 20696
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20692
sw $t1, 0($t0)
L514:
addi $sp, $sp, -12
la $t0, _data
addi $t0, $t0, 20020
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 20024
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 20028
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 20692
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 20020
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 20024
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 20028
sw $t1, 0($t0)
addi $sp, $sp, 12
la $t0, _data
addi $t0, $t0, 20712
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 20712
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20644
lw $t2, 0($t0)
beq $t1, $t2, L511
la $t0, _data
addi $t0, $t0, 20648
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20640
sw $t1, 0($t0)
L511:
li $t1, 0
la $t0, _data
addi $t0, $t0, 20716
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20640
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20716
lw $t2, 0($t0)
beq $t1, $t2, L515
L516:
li $t1, 0
la $t0, _data
addi $t0, $t0, 20724
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20728
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F13
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 20020
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 20024
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 20028
sw $t1, 0($t0)
addi $sp, $sp, 12
la $t0, _data
addi $t0, $t0, 20732
sw $v0, 0($t0)
li $t1, 955
la $t0, _data
addi $t0, $t0, 20736
sw $t1, 0($t0)
li $t1, 25925
la $t0, _data
addi $t0, $t0, 20740
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20736
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20740
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20744
sw $t3, 0($t0)
li $t1, 9442
la $t0, _data
addi $t0, $t0, 20748
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20756
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20756
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20748
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20752
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20744
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20752
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20760
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20728
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20720
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20732
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20760
lw $t2, 0($t0)
blt $t1, $t2, L518
la $t0, _data
addi $t0, $t0, 20724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20720
sw $t1, 0($t0)
L518:
li $t1, 0
la $t0, _data
addi $t0, $t0, 20764
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20720
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20764
lw $t2, 0($t0)
beq $t1, $t2, L517
li $t1, 26363
la $t0, _data
addi $t0, $t0, 20768
sw $t1, 0($t0)
j L516
L517:
j L520
L515:
li $t1, 0
la $t0, _data
addi $t0, $t0, 20776
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20780
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F13
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 20020
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 20024
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 20028
sw $t1, 0($t0)
addi $sp, $sp, 12
la $t0, _data
addi $t0, $t0, 20784
sw $v0, 0($t0)
li $t1, 55655
la $t0, _data
addi $t0, $t0, 20788
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20796
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20796
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20788
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20792
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20804
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20804
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20792
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20800
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20780
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20772
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20784
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20800
lw $t2, 0($t0)
bne $t1, $t2, L520
la $t0, _data
addi $t0, $t0, 20776
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20772
sw $t1, 0($t0)
L520:
j L521
L510:
li $t1, 3736
la $t0, _data
addi $t0, $t0, 20808
sw $t1, 0($t0)
L521:
li $t1, 0
la $t0, _data
addi $t0, $t0, 20816
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20820
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20820
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20812
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20828
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20832
sw $t1, 0($t0)
li $t1, 33617
la $t0, _data
addi $t0, $t0, 20836
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20840
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20844
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20844
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20848
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20840
lw $t2, 0($t0)
beq $t1, $t2, L524
la $t0, _data
addi $t0, $t0, 20840
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20848
sw $t1, 0($t0)
L524:
li $t1, 61785
la $t0, _data
addi $t0, $t0, 20852
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20140
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20852
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20856
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20856
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20024
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20860
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20832
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20824
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20848
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20860
lw $t2, 0($t0)
bge $t1, $t2, L523
la $t0, _data
addi $t0, $t0, 20828
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20824
sw $t1, 0($t0)
L523:
la $t0, _data
addi $t0, $t0, 20824
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20816
lw $t2, 0($t0)
bne $t1, $t2, L522
li $t1, 34828
la $t0, _data
addi $t0, $t0, 20864
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20872
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20872
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20864
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20868
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20876
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20880
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20880
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20884
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20868
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20876
lw $t2, 0($t0)
beq $t1, $t2, L525
la $t0, _data
addi $t0, $t0, 20876
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20884
sw $t1, 0($t0)
L525:
li $t1, 0
la $t0, _data
addi $t0, $t0, 20888
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20892
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20892
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20896
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20884
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20888
lw $t2, 0($t0)
beq $t1, $t2, L526
la $t0, _data
addi $t0, $t0, 20888
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20896
sw $t1, 0($t0)
L526:
la $t0, _data
addi $t0, $t0, 20896
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20816
lw $t2, 0($t0)
bne $t1, $t2, L522
la $t0, _data
addi $t0, $t0, 20816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20812
sw $t1, 0($t0)
L522:
li $t1, 0
la $t0, _data
addi $t0, $t0, 20904
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20908
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20900
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20916
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20920
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20928
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20932
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 20940
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 20944
sw $t1, 0($t0)
li $t1, 2
la $t0, _data
addi $t0, $t0, 20948
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 20952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20948
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20952
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20956
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20956
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20036
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20960
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20960
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 20964
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 20944
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20936
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20964
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20124
lw $t2, 0($t0)
blt $t1, $t2, L530
la $t0, _data
addi $t0, $t0, 20940
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20936
sw $t1, 0($t0)
L530:
la $t0, _data
addi $t0, $t0, 20932
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20924
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20936
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20024
lw $t2, 0($t0)
ble $t1, $t2, L529
la $t0, _data
addi $t0, $t0, 20928
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20924
sw $t1, 0($t0)
L529:
la $t0, _data
addi $t0, $t0, 20920
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20912
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20924
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20132
lw $t2, 0($t0)
bgt $t1, $t2, L528
la $t0, _data
addi $t0, $t0, 20916
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20912
sw $t1, 0($t0)
L528:
la $t0, _data
addi $t0, $t0, 20912
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20904
lw $t2, 0($t0)
bne $t1, $t2, L527
li $t1, 25566
la $t0, _data
addi $t0, $t0, 20968
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20968
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20140
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 20972
sw $t3, 0($t0)
li $t1, 62890
la $t0, _data
addi $t0, $t0, 20976
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20972
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20976
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 20980
sw $t3, 0($t0)
li $t1, 13385
la $t0, _data
addi $t0, $t0, 20984
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20980
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20984
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 20988
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 20988
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20904
lw $t2, 0($t0)
bne $t1, $t2, L527
la $t0, _data
addi $t0, $t0, 20904
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20900
sw $t1, 0($t0)
L527:
li $t1, 0
la $t0, _data
addi $t0, $t0, 20996
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 21000
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20992
sw $t1, 0($t0)
li $t1, 2
la $t0, _data
addi $t0, $t0, 21004
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21008
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21004
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21008
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21012
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21012
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20036
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21016
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21016
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21020
sw $t2, 0($t0)
li $t1, 16595
la $t0, _data
addi $t0, $t0, 21024
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21024
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 21028
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 21036
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 21040
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21036
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21032
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 21044
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21048
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21044
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21048
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21052
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21052
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20036
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21056
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21056
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21060
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 21060
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21036
lw $t2, 0($t0)
beq $t1, $t2, L532
li $t1, 10394
la $t0, _data
addi $t0, $t0, 21064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21064
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21036
lw $t2, 0($t0)
beq $t1, $t2, L532
la $t0, _data
addi $t0, $t0, 21040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21032
sw $t1, 0($t0)
L532:
li $t1, 0
la $t0, _data
addi $t0, $t0, 21072
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 21076
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21068
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 21084
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 21088
sw $t1, 0($t0)
li $t1, 6055
la $t0, _data
addi $t0, $t0, 21092
sw $t1, 0($t0)
li $t1, 10768
la $t0, _data
addi $t0, $t0, 21096
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21080
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21092
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21096
lw $t2, 0($t0)
ble $t1, $t2, L534
la $t0, _data
addi $t0, $t0, 21084
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21080
sw $t1, 0($t0)
L534:
la $t0, _data
addi $t0, $t0, 21080
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21072
lw $t2, 0($t0)
beq $t1, $t2, L533
la $t0, _data
addi $t0, $t0, 20124
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21072
lw $t2, 0($t0)
beq $t1, $t2, L533
la $t0, _data
addi $t0, $t0, 21076
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21068
sw $t1, 0($t0)
L533:
li $t1, 0
la $t0, _data
addi $t0, $t0, 21104
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 21108
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21104
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21100
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 21116
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 21120
sw $t1, 0($t0)
li $t1, 54934
la $t0, _data
addi $t0, $t0, 21124
sw $t1, 0($t0)
li $t1, 64308
la $t0, _data
addi $t0, $t0, 21128
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21112
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21124
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21128
lw $t2, 0($t0)
blt $t1, $t2, L536
la $t0, _data
addi $t0, $t0, 21116
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21112
sw $t1, 0($t0)
L536:
la $t0, _data
addi $t0, $t0, 21112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21104
lw $t2, 0($t0)
beq $t1, $t2, L535
li $t1, 34344
la $t0, _data
addi $t0, $t0, 21132
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21132
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21104
lw $t2, 0($t0)
beq $t1, $t2, L535
la $t0, _data
addi $t0, $t0, 21108
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21100
sw $t1, 0($t0)
L535:
addi $sp, $sp, -12
la $t0, _data
addi $t0, $t0, 20020
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 20024
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 20028
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 21100
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20028
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20024
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21032
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20020
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F14
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 20020
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 20024
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 20028
sw $t1, 0($t0)
addi $sp, $sp, 12
la $t0, _data
addi $t0, $t0, 21136
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 21028
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21136
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 21140
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21140
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20996
lw $t2, 0($t0)
bne $t1, $t2, L531
li $t1, 4
la $t0, _data
addi $t0, $t0, 21144
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20132
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21144
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21148
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20044
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21152
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21152
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21156
sw $t2, 0($t0)
li $t1, 33705
la $t0, _data
addi $t0, $t0, 21160
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21156
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21160
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21164
sw $t3, 0($t0)
li $t1, 5099
la $t0, _data
addi $t0, $t0, 21168
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20108
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21168
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 21172
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21164
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21172
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21176
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21176
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20996
lw $t2, 0($t0)
bne $t1, $t2, L531
la $t0, _data
addi $t0, $t0, 20996
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20992
sw $t1, 0($t0)
L531:
li $t1, 0
la $t0, _data
addi $t0, $t0, 21180
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21184
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21180
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21184
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21188
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21188
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20036
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21192
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21192
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21196
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 21196
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 21204
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21208
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21204
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21208
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21212
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20036
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21216
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21216
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21220
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 21220
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 21228
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21232
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21228
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21232
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21236
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21236
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20036
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21240
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21240
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21244
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 21244
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 20108
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 20116
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 20124
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 20132
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 20140
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 20148
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 20156
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 21280
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21284
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21280
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21284
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21288
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21288
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20044
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21292
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21292
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21296
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 21296
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 21304
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21308
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21304
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21308
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21312
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21312
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20044
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21316
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21316
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21320
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 21320
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 21328
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21332
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21328
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21332
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21336
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20044
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21340
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21340
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21344
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 21344
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 21352
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21356
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21352
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21356
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21360
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21360
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20044
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21364
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21364
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21368
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 21368
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 21376
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21380
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21376
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21380
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21384
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20044
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21388
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21388
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21392
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 21392
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 21404
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 21408
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21408
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21400
sw $t1, 0($t0)
li $t1, 2
la $t0, _data
addi $t0, $t0, 21412
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21416
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21412
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21416
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21420
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21420
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20044
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21424
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21424
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21428
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 21428
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21404
lw $t2, 0($t0)
bne $t1, $t2, L537
li $t1, 2
la $t0, _data
addi $t0, $t0, 21432
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21436
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21436
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21440
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21440
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20036
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21444
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21444
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21448
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 21448
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21404
lw $t2, 0($t0)
bne $t1, $t2, L537
la $t0, _data
addi $t0, $t0, 21404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21400
sw $t1, 0($t0)
L537:
la $t0, _data
addi $t0, $t0, 21400
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20148
sw $t1, 0($t0)
addi $sp, $sp, 32
la $t0, _data
addi $t0, $t0, 21400
lw, $v0, 0($t0)
jr $ra
F15:
addi $sp, $sp, -24
move $t1, $sp
la $t0, _data
addi $t0, $t0, 21468
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21468
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 21476
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21480
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21476
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21480
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21484
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21484
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21488
sw $t3, 0($t0)
li $t1, 57628
la $t0, _data
addi $t0, $t0, 21492
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21492
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21488
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 21496
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21500
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21500
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21504
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21504
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21508
sw $t3, 0($t0)
li $t1, 3914
la $t0, _data
addi $t0, $t0, 21512
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21512
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21508
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 21516
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21520
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21516
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21520
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21524
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21528
sw $t3, 0($t0)
li $t1, 56648
la $t0, _data
addi $t0, $t0, 21532
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21528
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 21536
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21540
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21536
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21540
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21544
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21548
sw $t3, 0($t0)
li $t1, 47748
la $t0, _data
addi $t0, $t0, 21552
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21552
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21548
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21556
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21560
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21560
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21564
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21564
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21568
sw $t3, 0($t0)
li $t1, 7651
la $t0, _data
addi $t0, $t0, 21572
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21572
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21568
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 21576
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21580
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21576
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21580
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21584
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21584
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21588
sw $t3, 0($t0)
li $t1, 24730
la $t0, _data
addi $t0, $t0, 21592
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21592
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21588
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 43997
la $t0, _data
addi $t0, $t0, 21600
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21600
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21596
sw $t1, 0($t0)
li $t1, 42479
la $t0, _data
addi $t0, $t0, 21608
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21608
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21604
sw $t1, 0($t0)
li $t1, 12934
la $t0, _data
addi $t0, $t0, 21616
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21616
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21612
sw $t1, 0($t0)
li $t1, 62625
la $t0, _data
addi $t0, $t0, 21624
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21624
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21620
sw $t1, 0($t0)
L538:
li $t1, 0
la $t0, _data
addi $t0, $t0, 21632
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 21636
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 21644
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21452
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21640
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 21648
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 21652
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21652
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21656
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21640
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21648
lw $t2, 0($t0)
beq $t1, $t2, L541
la $t0, _data
addi $t0, $t0, 21648
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21656
sw $t1, 0($t0)
L541:
li $t1, 2509
la $t0, _data
addi $t0, $t0, 21660
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 21664
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 21668
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21668
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21672
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21660
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21664
lw $t2, 0($t0)
beq $t1, $t2, L542
la $t0, _data
addi $t0, $t0, 21664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21672
sw $t1, 0($t0)
L542:
la $t0, _data
addi $t0, $t0, 21656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21672
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21676
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21636
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21628
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21596
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21676
lw $t2, 0($t0)
bge $t1, $t2, L540
la $t0, _data
addi $t0, $t0, 21632
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21628
sw $t1, 0($t0)
L540:
li $t1, 0
la $t0, _data
addi $t0, $t0, 21680
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21628
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21680
lw $t2, 0($t0)
beq $t1, $t2, L539
li $t1, 0
la $t0, _data
addi $t0, $t0, 21688
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 21692
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21688
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21684
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21456
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21688
lw $t2, 0($t0)
beq $t1, $t2, L543
li $t1, 0
la $t0, _data
addi $t0, $t0, 21696
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21700
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21696
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21700
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21704
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21704
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21708
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21708
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21712
sw $t2, 0($t0)
li $t1, 2343
la $t0, _data
addi $t0, $t0, 21716
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 21720
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 21724
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21728
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21716
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21720
lw $t2, 0($t0)
beq $t1, $t2, L544
la $t0, _data
addi $t0, $t0, 21720
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21728
sw $t1, 0($t0)
L544:
la $t0, _data
addi $t0, $t0, 21712
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21728
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21732
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21732
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21688
lw $t2, 0($t0)
beq $t1, $t2, L543
la $t0, _data
addi $t0, $t0, 21692
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21684
sw $t1, 0($t0)
L543:
j L538
L539:
li $t1, 0
la $t0, _data
addi $t0, $t0, 21736
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21740
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21736
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21740
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21744
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21744
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21748
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21748
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21752
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 21752
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 21760
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21764
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21760
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21764
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21768
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21768
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21772
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21772
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21776
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 21776
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 21784
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21788
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21784
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21788
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21792
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21796
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21796
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21800
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 21800
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 21808
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21812
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21808
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21812
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21816
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21820
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21820
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21824
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 21824
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 21832
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21836
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21832
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21836
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21840
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21840
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21844
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21844
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21848
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 21848
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 21856
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 21860
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21856
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21860
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21864
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21864
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21868
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21868
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 21872
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 21872
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 21596
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 21604
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 21612
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 21620
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 21896
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 21900
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21900
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21904
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21620
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21896
lw $t2, 0($t0)
beq $t1, $t2, L545
la $t0, _data
addi $t0, $t0, 21896
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21904
sw $t1, 0($t0)
L545:
la $t0, _data
addi $t0, $t0, 21612
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21904
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 21908
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21460
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21912
sw $t3, 0($t0)
addi $sp, $sp, 24
la $t0, _data
addi $t0, $t0, 21912
lw, $v0, 0($t0)
jr $ra
L546:
li $t1, 20967
la $t0, _data
addi $t0, $t0, 21916
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21464
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21916
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21920
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 21924
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21920
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21924
lw $t2, 0($t0)
beq $t1, $t2, L547
li $t1, 0
la $t0, _data
addi $t0, $t0, 21932
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 21936
sw $t1, 0($t0)
li $t1, 39272
la $t0, _data
addi $t0, $t0, 21940
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 21944
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 21948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21948
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21940
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21944
lw $t2, 0($t0)
beq $t1, $t2, L549
la $t0, _data
addi $t0, $t0, 21944
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21952
sw $t1, 0($t0)
L549:
li $t1, 0
la $t0, _data
addi $t0, $t0, 21956
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 21960
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21964
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21952
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21956
lw $t2, 0($t0)
beq $t1, $t2, L550
la $t0, _data
addi $t0, $t0, 21956
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21964
sw $t1, 0($t0)
L550:
li $t1, 0
la $t0, _data
addi $t0, $t0, 21972
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21972
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21964
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21968
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 21936
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21928
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21968
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21456
lw $t2, 0($t0)
beq $t1, $t2, L548
la $t0, _data
addi $t0, $t0, 21932
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21928
sw $t1, 0($t0)
L548:
j L546
L547:
li $t1, 18937
la $t0, _data
addi $t0, $t0, 21976
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 21984
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21984
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21976
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21980
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 21992
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21992
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21980
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 21988
sw $t3, 0($t0)
li $t1, 37083
la $t0, _data
addi $t0, $t0, 21996
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21996
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21456
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22000
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 22008
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 22012
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22012
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22004
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21464
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22016
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22016
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22008
lw $t2, 0($t0)
bne $t1, $t2, L551
li $t1, 63902
la $t0, _data
addi $t0, $t0, 22020
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22008
lw $t2, 0($t0)
bne $t1, $t2, L551
la $t0, _data
addi $t0, $t0, 22008
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22004
sw $t1, 0($t0)
L551:
li $t1, 0
la $t0, _data
addi $t0, $t0, 22024
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 22028
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22028
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22032
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22024
lw $t2, 0($t0)
beq $t1, $t2, L552
la $t0, _data
addi $t0, $t0, 22024
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22032
sw $t1, 0($t0)
L552:
la $t0, _data
addi $t0, $t0, 22032
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21456
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22036
sw $t3, 0($t0)
li $t1, 29331
la $t0, _data
addi $t0, $t0, 22040
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21604
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22044
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22044
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21612
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22048
sw $t3, 0($t0)
addi $sp, $sp, -16
la $t0, _data
addi $t0, $t0, 21452
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 21456
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 21460
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 21464
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 22048
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22036
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 952
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22004
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 944
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21988
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 940
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F9
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 21452
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 21456
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 21460
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 21464
sw $t1, 0($t0)
addi $sp, $sp, 16
la $t0, _data
addi $t0, $t0, 22052
sw $v0, 0($t0)
li $t1, 43139
la $t0, _data
addi $t0, $t0, 22056
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22056
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21452
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 22060
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22060
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21612
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22064
sw $t3, 0($t0)
li $t1, 9134
la $t0, _data
addi $t0, $t0, 22068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21596
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 22076
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 22080
sw $t1, 0($t0)
li $t1, 18729
la $t0, _data
addi $t0, $t0, 22084
sw $t1, 0($t0)
li $t1, 41911
la $t0, _data
addi $t0, $t0, 22088
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22080
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22084
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22088
lw $t2, 0($t0)
ble $t1, $t2, L553
la $t0, _data
addi $t0, $t0, 22076
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22072
sw $t1, 0($t0)
L553:
addi $sp, $sp, -16
la $t0, _data
addi $t0, $t0, 21452
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 21456
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 21460
lw $t1, 0($t0)
sw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 21464
lw $t1, 0($t0)
sw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 22072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21604
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22064
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22052
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F12
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 21452
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 21456
sw $t1, 0($t0)
lw $t1, 8($sp)
la $t0, _data
addi $t0, $t0, 21460
sw $t1, 0($t0)
lw $t1, 12($sp)
la $t0, _data
addi $t0, $t0, 21464
sw $t1, 0($t0)
addi $sp, $sp, 16
la $t0, _data
addi $t0, $t0, 22092
sw $v0, 0($t0)
li $t1, 43479
la $t0, _data
addi $t0, $t0, 22096
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 22100
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 22104
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22104
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22108
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22096
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22100
lw $t2, 0($t0)
beq $t1, $t2, L554
la $t0, _data
addi $t0, $t0, 22100
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22108
sw $t1, 0($t0)
L554:
la $t0, _data
addi $t0, $t0, 22092
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22108
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22112
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 22116
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22120
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22116
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22120
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22124
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22124
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22128
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22128
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 22132
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 22132
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 22140
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22144
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22140
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22144
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22148
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22152
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22152
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 22156
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 22156
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 22164
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22168
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22164
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22168
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22172
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22172
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22176
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22176
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 22180
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 22180
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 22188
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22192
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22188
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22192
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22196
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22196
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22200
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22200
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 22204
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 22204
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 22212
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22216
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22216
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22220
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22220
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22224
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22224
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 22228
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 22228
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 22236
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22240
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22236
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22240
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22244
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22248
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22248
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 22252
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 22252
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 21596
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 21604
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 21612
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 21620
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 22280
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 22284
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 22292
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 22296
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22300
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22300
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22304
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22304
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22308
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22308
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 22312
sw $t2, 0($t0)
li $t1, 52435
la $t0, _data
addi $t0, $t0, 22316
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22312
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22316
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 22320
sw $t3, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22324
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22320
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22324
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22328
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22328
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21472
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22332
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22332
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 22336
sw $t2, 0($t0)
li $t1, 47011
la $t0, _data
addi $t0, $t0, 22340
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22296
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22288
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22340
lw $t2, 0($t0)
bne $t1, $t2, L556
la $t0, _data
addi $t0, $t0, 22292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22288
sw $t1, 0($t0)
L556:
li $t1, 7273
la $t0, _data
addi $t0, $t0, 22344
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22344
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22348
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22276
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22288
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22348
lw $t2, 0($t0)
blt $t1, $t2, L555
la $t0, _data
addi $t0, $t0, 22280
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22276
sw $t1, 0($t0)
L555:
addi $sp, $sp, 24
la $t0, _data
addi $t0, $t0, 22276
lw, $v0, 0($t0)
jr $ra
F16:
addi $sp, $sp, -8
move $t1, $sp
la $t0, _data
addi $t0, $t0, 22360
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22360
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22364
sw $t1, 0($t0)
addi $sp, $sp, -40
move $t1, $sp
la $t0, _data
addi $t0, $t0, 22368
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22368
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 22376
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22380
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22376
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22380
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22384
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22364
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22388
sw $t3, 0($t0)
li $t1, 18602
la $t0, _data
addi $t0, $t0, 22392
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22392
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22388
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 22396
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22400
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22396
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22400
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22404
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22364
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22408
sw $t3, 0($t0)
li $t1, 41483
la $t0, _data
addi $t0, $t0, 22412
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22412
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22408
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 0
la $t0, _data
addi $t0, $t0, 22416
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22420
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22416
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22420
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22424
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22424
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22428
sw $t3, 0($t0)
li $t1, 37559
la $t0, _data
addi $t0, $t0, 22432
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22428
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 22436
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22440
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22436
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22440
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22444
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22444
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22448
sw $t3, 0($t0)
li $t1, 10694
la $t0, _data
addi $t0, $t0, 22452
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22448
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 22456
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22460
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22456
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22460
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22464
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22464
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22468
sw $t3, 0($t0)
li $t1, 45398
la $t0, _data
addi $t0, $t0, 22472
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22472
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22468
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 22476
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22480
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22476
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22480
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22484
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22484
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22488
sw $t3, 0($t0)
li $t1, 28671
la $t0, _data
addi $t0, $t0, 22492
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22492
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22488
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22496
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22500
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22500
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22504
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22504
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22508
sw $t3, 0($t0)
li $t1, 58442
la $t0, _data
addi $t0, $t0, 22512
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22512
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22508
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 22516
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22520
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22516
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22520
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22524
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22528
sw $t3, 0($t0)
li $t1, 53049
la $t0, _data
addi $t0, $t0, 22532
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22528
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 6
la $t0, _data
addi $t0, $t0, 22536
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22540
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22536
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22540
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22544
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22548
sw $t3, 0($t0)
li $t1, 53401
la $t0, _data
addi $t0, $t0, 22552
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22552
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22548
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 7
la $t0, _data
addi $t0, $t0, 22556
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22560
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22560
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22564
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22564
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22568
sw $t3, 0($t0)
li $t1, 36904
la $t0, _data
addi $t0, $t0, 22572
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22572
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22568
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 8
la $t0, _data
addi $t0, $t0, 22576
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22580
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22576
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22580
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22584
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22584
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22588
sw $t3, 0($t0)
li $t1, 29992
la $t0, _data
addi $t0, $t0, 22592
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22592
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22588
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 9
la $t0, _data
addi $t0, $t0, 22596
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22600
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22596
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22600
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22604
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22604
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22608
sw $t3, 0($t0)
li $t1, 799
la $t0, _data
addi $t0, $t0, 22612
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22612
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22608
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 33993
la $t0, _data
addi $t0, $t0, 22620
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22620
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22616
sw $t1, 0($t0)
li $t1, 32501
la $t0, _data
addi $t0, $t0, 22628
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22628
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22624
sw $t1, 0($t0)
li $t1, 11087
la $t0, _data
addi $t0, $t0, 22636
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22636
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22632
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 22644
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 22648
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22648
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22640
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 22656
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 22660
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22660
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22652
sw $t1, 0($t0)
li $t1, 44468
la $t0, _data
addi $t0, $t0, 22664
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22632
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22668
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22668
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22656
lw $t2, 0($t0)
bne $t1, $t2, L558
la $t0, _data
addi $t0, $t0, 22616
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22656
lw $t2, 0($t0)
bne $t1, $t2, L558
la $t0, _data
addi $t0, $t0, 22656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22652
sw $t1, 0($t0)
L558:
la $t0, _data
addi $t0, $t0, 22652
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22644
lw $t2, 0($t0)
bne $t1, $t2, L557
la $t0, _data
addi $t0, $t0, 22624
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22356
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22672
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22672
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22644
lw $t2, 0($t0)
bne $t1, $t2, L557
la $t0, _data
addi $t0, $t0, 22644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22640
sw $t1, 0($t0)
L557:
li $t1, 4
la $t0, _data
addi $t0, $t0, 22676
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22640
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22676
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22680
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22680
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22684
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22684
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 22688
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 22696
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 22700
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22696
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22692
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 22708
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 22712
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F13
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 22352
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 22356
sw $t1, 0($t0)
addi $sp, $sp, 8
la $t0, _data
addi $t0, $t0, 22716
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 22712
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22704
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22716
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22616
lw $t2, 0($t0)
ble $t1, $t2, L560
la $t0, _data
addi $t0, $t0, 22708
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22704
sw $t1, 0($t0)
L560:
la $t0, _data
addi $t0, $t0, 22352
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22632
sw $t1, 0($t0)
li $t1, 34844
la $t0, _data
addi $t0, $t0, 22720
sw $t1, 0($t0)
li $t1, 32054
la $t0, _data
addi $t0, $t0, 22724
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22720
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22724
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22728
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22728
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22624
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22732
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22352
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22356
sw $t1, 0($t0)
addi $sp, $sp, -8
la $t0, _data
addi $t0, $t0, 22352
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 22356
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 22352
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21464
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22732
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21460
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22352
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21456
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22704
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 21452
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F15
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 22352
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 22356
sw $t1, 0($t0)
addi $sp, $sp, 8
la $t0, _data
addi $t0, $t0, 22736
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 22740
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 22744
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22744
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22748
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22736
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22740
lw $t2, 0($t0)
beq $t1, $t2, L561
la $t0, _data
addi $t0, $t0, 22740
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22748
sw $t1, 0($t0)
L561:
li $t1, 0
la $t0, _data
addi $t0, $t0, 22752
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 22756
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22756
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22760
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22748
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22752
lw $t2, 0($t0)
beq $t1, $t2, L562
la $t0, _data
addi $t0, $t0, 22752
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22760
sw $t1, 0($t0)
L562:
li $t1, 4
la $t0, _data
addi $t0, $t0, 22764
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22624
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22764
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22768
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22768
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22364
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22772
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22772
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 22776
sw $t2, 0($t0)
li $t1, 18204
la $t0, _data
addi $t0, $t0, 22780
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22776
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22780
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 22784
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22760
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22784
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22788
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22788
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22696
lw $t2, 0($t0)
beq $t1, $t2, L559
li $t1, 53782
la $t0, _data
addi $t0, $t0, 22792
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 22800
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22800
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22792
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22796
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 22808
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22808
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22796
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22804
sw $t3, 0($t0)
li $t1, 16571
la $t0, _data
addi $t0, $t0, 22812
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22804
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22812
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 22816
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22696
lw $t2, 0($t0)
beq $t1, $t2, L559
la $t0, _data
addi $t0, $t0, 22700
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22692
sw $t1, 0($t0)
L559:
li $t1, 17577
la $t0, _data
addi $t0, $t0, 22820
sw $t1, 0($t0)
li $t1, 46741
la $t0, _data
addi $t0, $t0, 22824
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22820
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22824
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 22828
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 22832
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 22836
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22840
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22356
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22832
lw $t2, 0($t0)
beq $t1, $t2, L563
la $t0, _data
addi $t0, $t0, 22832
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22840
sw $t1, 0($t0)
L563:
la $t0, _data
addi $t0, $t0, 22828
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22840
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22844
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22844
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22632
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 22848
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22852
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22848
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22852
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22856
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22856
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22364
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22860
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22860
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 22864
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 22864
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 22872
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22876
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22872
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22876
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22880
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22880
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22364
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22884
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22884
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 22888
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 22888
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 22896
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22900
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22896
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22900
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22904
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22904
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22908
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22908
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 22912
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 22912
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 22920
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22924
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22920
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22924
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22928
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22928
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22932
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22932
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 22936
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 22936
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 22944
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22944
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22948
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22952
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22952
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22956
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22956
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 22960
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 22960
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 22968
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22972
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22968
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22972
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22976
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22976
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 22980
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 22980
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 22984
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 22984
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 22992
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 22996
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22992
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22996
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23000
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23004
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23004
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 23008
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 23008
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 23016
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23020
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23016
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23020
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23024
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23024
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23028
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23028
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 23032
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 23032
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 6
la $t0, _data
addi $t0, $t0, 23040
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23044
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23044
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23048
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23048
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23052
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23052
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 23056
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 23056
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 7
la $t0, _data
addi $t0, $t0, 23064
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23064
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23068
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23072
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23076
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23076
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 23080
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 23080
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 8
la $t0, _data
addi $t0, $t0, 23088
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23092
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23092
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23096
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23096
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23100
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23100
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 23104
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 23104
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 9
la $t0, _data
addi $t0, $t0, 23112
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23116
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23116
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23120
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22372
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23124
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23124
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 23128
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 23128
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 22616
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 22624
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 22632
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 25705
la $t0, _data
addi $t0, $t0, 23148
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22356
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23148
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23152
sw $t3, 0($t0)
addi $sp, $sp, 48
la $t0, _data
addi $t0, $t0, 23152
lw, $v0, 0($t0)
jr $ra
F17:
addi $sp, $sp, -16
move $t1, $sp
la $t0, _data
addi $t0, $t0, 23156
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23156
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23160
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 23164
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23168
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23164
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23168
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23172
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23172
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23160
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23176
sw $t3, 0($t0)
li $t1, 36307
la $t0, _data
addi $t0, $t0, 23180
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23180
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23176
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 23184
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23188
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23184
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23188
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23192
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23192
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23160
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23196
sw $t3, 0($t0)
li $t1, 23116
la $t0, _data
addi $t0, $t0, 23200
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23196
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 23204
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23208
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23204
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23208
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23212
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23160
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23216
sw $t3, 0($t0)
li $t1, 3648
la $t0, _data
addi $t0, $t0, 23220
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23220
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23216
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 23224
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23228
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23224
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23228
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23232
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23232
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23160
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23236
sw $t3, 0($t0)
li $t1, 23206
la $t0, _data
addi $t0, $t0, 23240
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23240
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23236
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4591
la $t0, _data
addi $t0, $t0, 23248
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23248
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23244
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 23252
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23256
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23256
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23260
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23260
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23160
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23264
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23264
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 23268
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 23268
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 23276
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23280
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23280
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23284
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23160
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23288
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23288
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 23292
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 23292
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 23300
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23304
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23304
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23308
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23160
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23312
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23312
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 23316
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 23316
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 23324
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23328
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23328
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23332
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23332
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23160
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23336
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23336
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 23340
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 23340
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 23244
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 23356
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 23360
sw $t1, 0($t0)
li $t1, 41809
la $t0, _data
addi $t0, $t0, 23364
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23364
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 23368
sw $t3, 0($t0)
li $t1, 46075
la $t0, _data
addi $t0, $t0, 23372
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 23376
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 23380
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23384
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23372
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23376
lw $t2, 0($t0)
beq $t1, $t2, L565
la $t0, _data
addi $t0, $t0, 23376
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23384
sw $t1, 0($t0)
L565:
li $t1, 0
la $t0, _data
addi $t0, $t0, 23392
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 23396
sw $t1, 0($t0)
li $t1, 48480
la $t0, _data
addi $t0, $t0, 23400
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 23408
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23408
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23400
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23404
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23396
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23388
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23244
lw $t2, 0($t0)
bne $t1, $t2, L566
la $t0, _data
addi $t0, $t0, 23392
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23388
sw $t1, 0($t0)
L566:
li $t1, 52502
la $t0, _data
addi $t0, $t0, 23412
sw $t1, 0($t0)
li $t1, 25937
la $t0, _data
addi $t0, $t0, 23416
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23412
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23416
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23420
sw $t3, 0($t0)
addi $sp, $sp, -0
la $t0, _data
addi $t0, $t0, 23420
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20028
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23388
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20024
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23384
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20020
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F14
lw $ra, 0($sp)
addi $sp, $sp, 4
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 23424
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 23368
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23424
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23428
sw $t3, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 23432
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23436
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23436
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23440
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23440
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23160
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23444
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23444
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 23448
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 23448
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23244
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 23452
sw $t3, 0($t0)
li $t1, 13450
la $t0, _data
addi $t0, $t0, 23456
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23456
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23460
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23360
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23352
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23428
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23460
lw $t2, 0($t0)
bne $t1, $t2, L564
la $t0, _data
addi $t0, $t0, 23356
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23352
sw $t1, 0($t0)
L564:
addi $sp, $sp, 16
la $t0, _data
addi $t0, $t0, 23352
lw, $v0, 0($t0)
jr $ra
li $t1, 0
la $t0, _data
addi $t0, $t0, 23464
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23468
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23464
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23468
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23472
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23472
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23160
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23476
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23476
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 23480
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 23480
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 23488
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23492
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23492
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23496
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23160
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23500
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23500
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 23504
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 23504
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 23512
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23516
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23512
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23516
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23520
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23520
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23160
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23524
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23524
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 23528
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 23528
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 23536
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23540
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23536
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23540
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23544
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23160
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23548
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23548
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 23552
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 23552
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 23244
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
addi $sp, $sp, 16
la $t0, _data
addi $t0, $t0, 23244
lw, $v0, 0($t0)
jr $ra
F18:
addi $sp, $sp, -12
move $t1, $sp
la $t0, _data
addi $t0, $t0, 23572
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23572
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23576
sw $t1, 0($t0)
addi $sp, $sp, -4
move $t1, $sp
la $t0, _data
addi $t0, $t0, 23580
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23580
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23584
sw $t1, 0($t0)
addi $sp, $sp, -24
move $t1, $sp
la $t0, _data
addi $t0, $t0, 23588
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23588
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23592
sw $t1, 0($t0)
addi $sp, $sp, -8
move $t1, $sp
la $t0, _data
addi $t0, $t0, 23596
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23596
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23600
sw $t1, 0($t0)
addi $sp, $sp, -12
move $t1, $sp
la $t0, _data
addi $t0, $t0, 23604
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23604
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23608
sw $t1, 0($t0)
li $t1, 65017
la $t0, _data
addi $t0, $t0, 23616
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23616
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23612
sw $t1, 0($t0)
li $t1, 16777
la $t0, _data
addi $t0, $t0, 23624
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23624
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23620
sw $t1, 0($t0)
li $t1, 43442
la $t0, _data
addi $t0, $t0, 23632
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23632
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23628
sw $t1, 0($t0)
li $t1, 281
la $t0, _data
addi $t0, $t0, 23640
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23640
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23636
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 23644
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23648
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23648
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23652
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23652
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23656
sw $t3, 0($t0)
li $t1, 50770
la $t0, _data
addi $t0, $t0, 23660
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23660
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23656
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 23664
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23668
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23668
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23672
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23672
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23676
sw $t3, 0($t0)
li $t1, 10407
la $t0, _data
addi $t0, $t0, 23680
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23680
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23676
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 23684
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23688
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23684
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23688
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23692
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23692
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23696
sw $t3, 0($t0)
li $t1, 11368
la $t0, _data
addi $t0, $t0, 23700
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23700
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23696
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 0
la $t0, _data
addi $t0, $t0, 23704
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23708
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23704
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23708
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23712
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23712
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23716
sw $t3, 0($t0)
li $t1, 29702
la $t0, _data
addi $t0, $t0, 23720
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23720
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23716
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 45252
la $t0, _data
addi $t0, $t0, 23728
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23728
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23724
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 23732
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23736
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23732
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23736
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23740
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23740
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23744
sw $t3, 0($t0)
li $t1, 43423
la $t0, _data
addi $t0, $t0, 23748
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23748
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23744
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 23752
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23756
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23752
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23756
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23760
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23760
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23764
sw $t3, 0($t0)
li $t1, 47906
la $t0, _data
addi $t0, $t0, 23768
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23768
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23764
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 23772
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23776
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23772
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23776
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23780
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23780
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23784
sw $t3, 0($t0)
li $t1, 33498
la $t0, _data
addi $t0, $t0, 23788
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23788
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23784
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 3
la $t0, _data
addi $t0, $t0, 23792
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23796
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23796
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23800
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23800
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23804
sw $t3, 0($t0)
li $t1, 47025
la $t0, _data
addi $t0, $t0, 23808
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23808
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23804
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23812
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23816
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23812
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23816
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23820
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23820
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23824
sw $t3, 0($t0)
li $t1, 64477
la $t0, _data
addi $t0, $t0, 23828
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23828
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23824
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 5
la $t0, _data
addi $t0, $t0, 23832
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23836
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23832
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23836
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23840
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23840
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23844
sw $t3, 0($t0)
li $t1, 51075
la $t0, _data
addi $t0, $t0, 23848
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23848
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23844
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 28230
la $t0, _data
addi $t0, $t0, 23856
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23856
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23852
sw $t1, 0($t0)
li $t1, 24646
la $t0, _data
addi $t0, $t0, 23864
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23864
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23860
sw $t1, 0($t0)
li $t1, 21846
la $t0, _data
addi $t0, $t0, 23872
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23872
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23868
sw $t1, 0($t0)
li $t1, 51346
la $t0, _data
addi $t0, $t0, 23880
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23880
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23876
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 23884
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23888
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23884
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23888
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23892
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23892
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23896
sw $t3, 0($t0)
li $t1, 28294
la $t0, _data
addi $t0, $t0, 23900
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23900
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23896
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 23904
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23908
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23904
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23908
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23912
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23912
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23916
sw $t3, 0($t0)
li $t1, 45052
la $t0, _data
addi $t0, $t0, 23920
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23920
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23916
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 0
la $t0, _data
addi $t0, $t0, 23924
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23928
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23924
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23928
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23932
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23932
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23936
sw $t3, 0($t0)
li $t1, 55938
la $t0, _data
addi $t0, $t0, 23940
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23940
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23936
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 1
la $t0, _data
addi $t0, $t0, 23944
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23944
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23948
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23952
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23952
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23956
sw $t3, 0($t0)
li $t1, 39215
la $t0, _data
addi $t0, $t0, 23960
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23956
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 2
la $t0, _data
addi $t0, $t0, 23964
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 23968
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23964
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23968
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23972
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23972
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 23976
sw $t3, 0($t0)
li $t1, 21324
la $t0, _data
addi $t0, $t0, 23980
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23980
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23976
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 36477
la $t0, _data
addi $t0, $t0, 23988
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23988
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23984
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23628
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23984
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 23992
sw $t3, 0($t0)
li $t1, 22160
la $t0, _data
addi $t0, $t0, 23996
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23992
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23996
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24000
sw $t3, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F13
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23564
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 23568
sw $t1, 0($t0)
addi $sp, $sp, 8
la $t0, _data
addi $t0, $t0, 24004
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 24000
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24004
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24008
sw $t3, 0($t0)
li $t1, 8291
la $t0, _data
addi $t0, $t0, 24012
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24016
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24020
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24020
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24024
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24012
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24016
lw $t2, 0($t0)
beq $t1, $t2, L567
la $t0, _data
addi $t0, $t0, 24016
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24024
sw $t1, 0($t0)
L567:
li $t1, 0
la $t0, _data
addi $t0, $t0, 24028
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24032
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24032
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24036
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24024
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24028
lw $t2, 0($t0)
beq $t1, $t2, L568
la $t0, _data
addi $t0, $t0, 24028
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24036
sw $t1, 0($t0)
L568:
la $t0, _data
addi $t0, $t0, 24008
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24036
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24040
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24048
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24052
sw $t1, 0($t0)
li $t1, 62414
la $t0, _data
addi $t0, $t0, 24056
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24056
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23612
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 24060
sw $t3, 0($t0)
li $t1, 33776
la $t0, _data
addi $t0, $t0, 24064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24060
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24064
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24068
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24076
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24080
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24080
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23612
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23564
lw $t2, 0($t0)
bne $t1, $t2, L570
la $t0, _data
addi $t0, $t0, 24076
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24072
sw $t1, 0($t0)
L570:
li $t1, 0
la $t0, _data
addi $t0, $t0, 24088
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24092
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24096
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 24100
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24096
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24100
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24104
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24104
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24108
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24108
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 24112
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 24092
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24084
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24112
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23724
lw $t2, 0($t0)
bge $t1, $t2, L571
la $t0, _data
addi $t0, $t0, 24088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24084
sw $t1, 0($t0)
L571:
li $t1, 0
la $t0, _data
addi $t0, $t0, 24120
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24124
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24124
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24116
sw $t1, 0($t0)
li $t1, 33257
la $t0, _data
addi $t0, $t0, 24128
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23612
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24128
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24132
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24132
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24120
lw $t2, 0($t0)
bne $t1, $t2, L572
la $t0, _data
addi $t0, $t0, 23852
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24120
lw $t2, 0($t0)
bne $t1, $t2, L572
la $t0, _data
addi $t0, $t0, 24120
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24116
sw $t1, 0($t0)
L572:
addi $sp, $sp, -8
la $t0, _data
addi $t0, $t0, 23564
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23568
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 24116
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11496
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F11
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23564
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 23568
sw $t1, 0($t0)
addi $sp, $sp, 8
la $t0, _data
addi $t0, $t0, 24136
sw $v0, 0($t0)
addi $sp, $sp, -8
la $t0, _data
addi $t0, $t0, 23564
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23568
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 24136
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23568
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24084
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24072
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24068
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F12
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23564
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 23568
sw $t1, 0($t0)
addi $sp, $sp, 8
la $t0, _data
addi $t0, $t0, 24140
sw $v0, 0($t0)
li $t1, 4941
la $t0, _data
addi $t0, $t0, 24144
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24052
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24044
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24140
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24144
lw $t2, 0($t0)
beq $t1, $t2, L569
la $t0, _data
addi $t0, $t0, 24048
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24044
sw $t1, 0($t0)
L569:
li $t1, 0
la $t0, _data
addi $t0, $t0, 24152
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24156
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24156
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24148
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F13
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23564
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 23568
sw $t1, 0($t0)
addi $sp, $sp, 8
la $t0, _data
addi $t0, $t0, 24160
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 24160
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24152
lw $t2, 0($t0)
bne $t1, $t2, L573
li $t1, 53770
la $t0, _data
addi $t0, $t0, 24164
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24164
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24152
lw $t2, 0($t0)
bne $t1, $t2, L573
la $t0, _data
addi $t0, $t0, 24152
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24148
sw $t1, 0($t0)
L573:
li $t1, 0
la $t0, _data
addi $t0, $t0, 24172
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24176
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23852
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24180
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24176
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24168
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24180
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23636
lw $t2, 0($t0)
bgt $t1, $t2, L574
la $t0, _data
addi $t0, $t0, 24172
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24168
sw $t1, 0($t0)
L574:
addi $sp, $sp, -8
la $t0, _data
addi $t0, $t0, 23564
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23568
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 24168
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20028
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24148
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20024
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24044
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20020
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F14
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23564
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 23568
sw $t1, 0($t0)
addi $sp, $sp, 8
la $t0, _data
addi $t0, $t0, 24184
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 23876
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24184
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24188
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24188
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24192
sw $t3, 0($t0)
li $t1, 33538
la $t0, _data
addi $t0, $t0, 24196
sw $t1, 0($t0)
li $t1, 55711
la $t0, _data
addi $t0, $t0, 24200
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24204
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24200
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24204
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24208
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24196
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24208
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24212
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23852
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24216
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24216
lw $t2, 0($t0)
beq $t1, $t2, L575
li $t1, 44907
la $t0, _data
addi $t0, $t0, 24220
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23852
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24220
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 24224
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24228
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24224
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24228
lw $t2, 0($t0)
beq $t1, $t2, L576
L577:
li $t1, 0
la $t0, _data
addi $t0, $t0, 24236
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24240
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24248
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24252
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24260
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24264
sw $t1, 0($t0)
li $t1, 19878
la $t0, _data
addi $t0, $t0, 24268
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24264
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24256
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24268
lw $t2, 0($t0)
beq $t1, $t2, L581
la $t0, _data
addi $t0, $t0, 24260
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24256
sw $t1, 0($t0)
L581:
li $t1, 43893
la $t0, _data
addi $t0, $t0, 24272
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24252
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24244
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24256
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24272
lw $t2, 0($t0)
bge $t1, $t2, L580
la $t0, _data
addi $t0, $t0, 24248
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24244
sw $t1, 0($t0)
L580:
li $t1, 22794
la $t0, _data
addi $t0, $t0, 24276
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24284
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24284
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24276
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24280
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24240
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24232
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24244
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24280
lw $t2, 0($t0)
bge $t1, $t2, L579
la $t0, _data
addi $t0, $t0, 24236
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24232
sw $t1, 0($t0)
L579:
li $t1, 0
la $t0, _data
addi $t0, $t0, 24288
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24232
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24288
lw $t2, 0($t0)
beq $t1, $t2, L578
li $t1, 2248
la $t0, _data
addi $t0, $t0, 24292
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23564
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24292
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 24296
sw $t3, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F17
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23564
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 23568
sw $t1, 0($t0)
addi $sp, $sp, 8
la $t0, _data
addi $t0, $t0, 24300
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 24296
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24300
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 24304
sw $t3, 0($t0)
li $t1, 11855
la $t0, _data
addi $t0, $t0, 24308
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23620
sw $t1, 0($t0)
li $t1, 4283
la $t0, _data
addi $t0, $t0, 24312
sw $t1, 0($t0)
li $t1, 1189
la $t0, _data
addi $t0, $t0, 24316
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24312
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24316
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24320
sw $t3, 0($t0)
addi $sp, $sp, -8
la $t0, _data
addi $t0, $t0, 23564
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23568
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 24320
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22356
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24308
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22352
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F16
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23564
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 23568
sw $t1, 0($t0)
addi $sp, $sp, 8
la $t0, _data
addi $t0, $t0, 24324
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24332
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24332
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24324
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24328
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24304
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24328
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24336
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24340
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24336
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24340
lw $t2, 0($t0)
beq $t1, $t2, L582
li $t1, 0
la $t0, _data
addi $t0, $t0, 24344
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24348
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24348
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24352
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23628
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24344
lw $t2, 0($t0)
beq $t1, $t2, L583
la $t0, _data
addi $t0, $t0, 24344
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24352
sw $t1, 0($t0)
L583:
li $t1, 0
la $t0, _data
addi $t0, $t0, 24360
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24360
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24352
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24356
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24368
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24368
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24356
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24364
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24376
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24376
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24364
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24372
sw $t3, 0($t0)
j L584
L582:
li $t1, 62931
la $t0, _data
addi $t0, $t0, 24380
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23564
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23984
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 24384
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23564
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24384
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24388
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24388
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24392
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24392
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 24396
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 24380
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24396
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24400
sw $t3, 0($t0)
L584:
j L577
L578:
j L587
L576:
li $t1, 32513
la $t0, _data
addi $t0, $t0, 24404
sw $t1, 0($t0)
li $t1, 25835
la $t0, _data
addi $t0, $t0, 24408
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24408
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24412
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24416
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24412
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24416
lw $t2, 0($t0)
beq $t1, $t2, L587
li $t1, 0
la $t0, _data
addi $t0, $t0, 24424
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24428
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24436
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24440
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24448
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24452
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 24456
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23620
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24456
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24460
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24460
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24464
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24464
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 24468
sw $t2, 0($t0)
li $t1, 19241
la $t0, _data
addi $t0, $t0, 24472
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24476
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24480
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24480
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24484
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24472
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24476
lw $t2, 0($t0)
beq $t1, $t2, L591
la $t0, _data
addi $t0, $t0, 24476
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24484
sw $t1, 0($t0)
L591:
la $t0, _data
addi $t0, $t0, 24468
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24484
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24488
sw $t3, 0($t0)
li $t1, 18323
la $t0, _data
addi $t0, $t0, 24492
sw $t1, 0($t0)
li $t1, 54129
la $t0, _data
addi $t0, $t0, 24496
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24492
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24496
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 24500
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24444
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24500
lw $t2, 0($t0)
bne $t1, $t2, L590
la $t0, _data
addi $t0, $t0, 24448
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24444
sw $t1, 0($t0)
L590:
la $t0, _data
addi $t0, $t0, 24440
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24432
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24444
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23868
lw $t2, 0($t0)
ble $t1, $t2, L589
la $t0, _data
addi $t0, $t0, 24436
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24432
sw $t1, 0($t0)
L589:
li $t1, 64294
la $t0, _data
addi $t0, $t0, 24504
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24504
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23860
sw $t1, 0($t0)
li $t1, 8725
la $t0, _data
addi $t0, $t0, 24508
sw $t1, 0($t0)
addi $sp, $sp, -8
la $t0, _data
addi $t0, $t0, 23564
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23568
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 24508
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23568
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24504
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23564
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F18
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23564
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 23568
sw $t1, 0($t0)
addi $sp, $sp, 8
la $t0, _data
addi $t0, $t0, 24512
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24520
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24520
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24512
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24516
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24428
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24420
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24516
lw $t2, 0($t0)
beq $t1, $t2, L588
la $t0, _data
addi $t0, $t0, 24424
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24420
sw $t1, 0($t0)
L588:
j L576
L587:
j L594
L575:
li $t1, 27809
la $t0, _data
addi $t0, $t0, 24524
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24528
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24524
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24528
lw $t2, 0($t0)
beq $t1, $t2, L594
li $t1, 0
la $t0, _data
addi $t0, $t0, 24536
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24540
sw $t1, 0($t0)
li $t1, 20082
la $t0, _data
addi $t0, $t0, 24544
sw $t1, 0($t0)
li $t1, 45202
la $t0, _data
addi $t0, $t0, 24548
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24540
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24532
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24544
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24548
lw $t2, 0($t0)
beq $t1, $t2, L595
la $t0, _data
addi $t0, $t0, 24536
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24532
sw $t1, 0($t0)
L595:
addi $sp, $sp, -8
la $t0, _data
addi $t0, $t0, 23564
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23568
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 24532
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 11496
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F11
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23564
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 23568
sw $t1, 0($t0)
addi $sp, $sp, 8
la $t0, _data
addi $t0, $t0, 24552
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24560
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24560
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24552
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24556
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24568
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24572
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23636
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23564
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 24576
sw $t3, 0($t0)
li $t1, 49969
la $t0, _data
addi $t0, $t0, 24580
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24572
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24564
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24576
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24580
lw $t2, 0($t0)
beq $t1, $t2, L596
la $t0, _data
addi $t0, $t0, 24568
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24564
sw $t1, 0($t0)
L596:
addi $sp, $sp, -8
la $t0, _data
addi $t0, $t0, 23564
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23568
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 24564
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 1568
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F10
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23564
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 23568
sw $t1, 0($t0)
addi $sp, $sp, 8
la $t0, _data
addi $t0, $t0, 24584
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 24556
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24584
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 24588
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24588
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23852
sw $t1, 0($t0)
j L575
L594:
li $t1, 0
la $t0, _data
addi $t0, $t0, 24596
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24600
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24600
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24592
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 24604
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23852
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24604
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24608
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24608
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24612
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24612
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 24616
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24624
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24624
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24616
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24620
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24628
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24632
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24632
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24636
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23876
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24628
lw $t2, 0($t0)
beq $t1, $t2, L598
la $t0, _data
addi $t0, $t0, 24628
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24636
sw $t1, 0($t0)
L598:
li $t1, 0
la $t0, _data
addi $t0, $t0, 24644
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24644
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24636
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24640
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24620
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24640
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 24648
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24648
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24596
lw $t2, 0($t0)
bne $t1, $t2, L597
li $t1, 28373
la $t0, _data
addi $t0, $t0, 24652
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23620
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24652
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24656
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24656
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23868
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24660
sw $t3, 0($t0)
li $t1, 42080
la $t0, _data
addi $t0, $t0, 24664
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24664
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23564
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24668
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24660
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24668
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24672
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24672
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24596
lw $t2, 0($t0)
bne $t1, $t2, L597
la $t0, _data
addi $t0, $t0, 24596
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24592
sw $t1, 0($t0)
L597:
addi $sp, $sp, -4
move $t1, $sp
la $t0, _data
addi $t0, $t0, 24676
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24676
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24680
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24684
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 24688
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24684
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24688
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24692
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24692
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24680
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24696
sw $t3, 0($t0)
li $t1, 18209
la $t0, _data
addi $t0, $t0, 24700
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24700
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24696
lw $t2, 0($t0)
sw $t1, 0($t2)
li $t1, 16537
la $t0, _data
addi $t0, $t0, 24708
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24708
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24704
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24716
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24720
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24720
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24712
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23852
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24716
lw $t2, 0($t0)
bne $t1, $t2, L599
li $t1, 52408
la $t0, _data
addi $t0, $t0, 24724
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24728
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24732
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24732
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24736
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24728
lw $t2, 0($t0)
beq $t1, $t2, L600
la $t0, _data
addi $t0, $t0, 24728
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24736
sw $t1, 0($t0)
L600:
la $t0, _data
addi $t0, $t0, 24736
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24716
lw $t2, 0($t0)
bne $t1, $t2, L599
la $t0, _data
addi $t0, $t0, 24716
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24712
sw $t1, 0($t0)
L599:
li $t1, 0
la $t0, _data
addi $t0, $t0, 24744
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24748
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24756
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24760
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24768
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24768
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23860
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24764
sw $t3, 0($t0)
li $t1, 51466
la $t0, _data
addi $t0, $t0, 24772
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24764
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24772
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24776
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24780
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24784
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24784
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24788
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23860
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24780
lw $t2, 0($t0)
beq $t1, $t2, L603
la $t0, _data
addi $t0, $t0, 24780
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24788
sw $t1, 0($t0)
L603:
la $t0, _data
addi $t0, $t0, 24776
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24788
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24792
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 23860
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23724
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24796
sw $t3, 0($t0)
li $t1, 21478
la $t0, _data
addi $t0, $t0, 24800
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24796
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24800
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24804
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24812
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24816
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24812
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24808
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24824
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24828
sw $t1, 0($t0)
li $t1, 40642
la $t0, _data
addi $t0, $t0, 24832
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24828
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24820
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23852
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24832
lw $t2, 0($t0)
blt $t1, $t2, L605
la $t0, _data
addi $t0, $t0, 24824
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24820
sw $t1, 0($t0)
L605:
la $t0, _data
addi $t0, $t0, 24820
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24812
lw $t2, 0($t0)
beq $t1, $t2, L604
la $t0, _data
addi $t0, $t0, 23984
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24812
lw $t2, 0($t0)
beq $t1, $t2, L604
la $t0, _data
addi $t0, $t0, 24816
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24808
sw $t1, 0($t0)
L604:
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F17
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23564
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 23568
sw $t1, 0($t0)
addi $sp, $sp, 8
la $t0, _data
addi $t0, $t0, 24836
sw $v0, 0($t0)
li $t1, 19469
la $t0, _data
addi $t0, $t0, 24840
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24844
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24848
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24848
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24852
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24840
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24844
lw $t2, 0($t0)
beq $t1, $t2, L606
la $t0, _data
addi $t0, $t0, 24844
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24852
sw $t1, 0($t0)
L606:
la $t0, _data
addi $t0, $t0, 24852
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23564
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24856
sw $t3, 0($t0)
li $t1, 11654
la $t0, _data
addi $t0, $t0, 24860
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24860
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23612
sw $t1, 0($t0)
addi $sp, $sp, -8
la $t0, _data
addi $t0, $t0, 23564
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23568
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 24860
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14072
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24856
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14068
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24836
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14064
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24808
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24804
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 14056
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F12
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23564
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 23568
sw $t1, 0($t0)
addi $sp, $sp, 8
la $t0, _data
addi $t0, $t0, 24864
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24872
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24872
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24864
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24868
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24760
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24752
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24792
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24868
lw $t2, 0($t0)
beq $t1, $t2, L602
la $t0, _data
addi $t0, $t0, 24756
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24752
sw $t1, 0($t0)
L602:
li $t1, 39284
la $t0, _data
addi $t0, $t0, 24876
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24884
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24888
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 24892
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23620
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24892
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24896
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24896
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24900
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24900
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 24904
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 24888
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24880
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24904
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23876
lw $t2, 0($t0)
bgt $t1, $t2, L607
la $t0, _data
addi $t0, $t0, 24884
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24880
sw $t1, 0($t0)
L607:
addi $sp, $sp, -8
la $t0, _data
addi $t0, $t0, 23564
lw $t1, 0($t0)
sw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23568
lw $t1, 0($t0)
sw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 24880
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22356
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24876
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 22352
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F16
lw $ra, 0($sp)
addi $sp, $sp, 4
lw $t1, 0($sp)
la $t0, _data
addi $t0, $t0, 23564
sw $t1, 0($t0)
lw $t1, 4($sp)
la $t0, _data
addi $t0, $t0, 23568
sw $t1, 0($t0)
addi $sp, $sp, 8
la $t0, _data
addi $t0, $t0, 24908
sw $v0, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24912
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24916
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24916
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24920
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24908
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24912
lw $t2, 0($t0)
beq $t1, $t2, L608
la $t0, _data
addi $t0, $t0, 24912
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24920
sw $t1, 0($t0)
L608:
la $t0, _data
addi $t0, $t0, 24748
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24740
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24752
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24920
lw $t2, 0($t0)
bne $t1, $t2, L601
la $t0, _data
addi $t0, $t0, 24744
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24740
sw $t1, 0($t0)
L601:
li $t1, 0
la $t0, _data
addi $t0, $t0, 24924
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 24928
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24924
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24928
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24932
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24932
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24936
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24936
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 24940
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24948
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24948
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24940
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24944
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24952
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24956
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24956
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24960
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24944
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24952
lw $t2, 0($t0)
beq $t1, $t2, L609
la $t0, _data
addi $t0, $t0, 24952
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24960
sw $t1, 0($t0)
L609:
li $t1, 4
la $t0, _data
addi $t0, $t0, 24964
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24960
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24964
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24968
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24968
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24680
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 24972
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 24972
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 24976
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 24980
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 24984
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24984
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24988
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24704
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24980
lw $t2, 0($t0)
beq $t1, $t2, L610
la $t0, _data
addi $t0, $t0, 24980
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 24988
sw $t1, 0($t0)
L610:
la $t0, _data
addi $t0, $t0, 23612
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 23620
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 23628
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 23636
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 25008
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 25012
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25008
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25012
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25016
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25016
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25020
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25020
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 25024
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 25024
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 25032
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 25036
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25032
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25036
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25040
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25040
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25044
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25044
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 25048
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 25048
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 25056
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 25060
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25056
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25060
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25064
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25064
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23576
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25068
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25068
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 25072
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 25072
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 25080
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 25084
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25080
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25084
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25088
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25088
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25092
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25092
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 25096
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 25096
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 23724
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 25108
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 25112
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25108
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25112
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25116
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25116
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25120
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25120
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 25124
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 25124
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 25132
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 25136
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25132
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25136
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25140
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25140
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25144
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25144
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 25148
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 25148
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 25156
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 25160
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25156
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25160
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25164
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25164
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25168
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25168
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 25172
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 25172
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 3
la $t0, _data
addi $t0, $t0, 25180
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 25184
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25180
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25184
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25188
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25188
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25192
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25192
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 25196
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 25196
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 4
la $t0, _data
addi $t0, $t0, 25204
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 25208
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25204
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25208
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25212
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25212
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25216
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25216
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 25220
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 25220
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 5
la $t0, _data
addi $t0, $t0, 25228
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 25232
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25228
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25232
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25236
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25236
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23592
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25240
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25240
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 25244
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 25244
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 23852
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 23860
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 23868
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 23876
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 25268
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 25272
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25268
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25272
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25276
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25276
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25280
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25280
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 25284
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 25284
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 25292
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 25296
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25292
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25296
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25300
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25300
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23600
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25304
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25304
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 25308
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 25308
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 25316
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 25320
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25316
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25320
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25324
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25324
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25328
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25328
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 25332
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 25332
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 1
la $t0, _data
addi $t0, $t0, 25340
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 25344
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25340
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25344
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25348
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25348
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25352
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25352
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 25356
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 25356
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 2
la $t0, _data
addi $t0, $t0, 25364
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 25368
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25364
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25368
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25372
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25372
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23608
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25376
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25376
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 25380
sw $t2, 0($t0)
la $t0, _data
addi $t0, $t0, 25380
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
la $t0, _data
addi $t0, $t0, 23984
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 25396
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 25400
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 25404
sw $t1, 0($t0)
li $t1, 4
la $t0, _data
addi $t0, $t0, 25408
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25404
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25408
lw $t2, 0($t0)
mul $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25412
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25412
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23584
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25416
sw $t3, 0($t0)
la $t0, _data
addi $t0, $t0, 25416
lw $t1, 0($t0)
lw $t2, 0($t1)
la $t0, _data
addi $t0, $t0, 25420
sw $t2, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 25428
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25428
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25420
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25424
sw $t3, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 25432
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 25436
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25436
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25440
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23724
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25432
lw $t2, 0($t0)
beq $t1, $t2, L612
la $t0, _data
addi $t0, $t0, 25432
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25440
sw $t1, 0($t0)
L612:
la $t0, _data
addi $t0, $t0, 25400
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25392
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25424
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25440
lw $t2, 0($t0)
bge $t1, $t2, L611
la $t0, _data
addi $t0, $t0, 25396
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25392
sw $t1, 0($t0)
L611:
la $t0, _data
addi $t0, $t0, 25392
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 23852
sw $t1, 0($t0)
addi $sp, $sp, 64
la $t0, _data
addi $t0, $t0, 25392
lw, $v0, 0($t0)
jr $ra
F19:
li $t1, 33780
la $t0, _data
addi $t0, $t0, 25448
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25448
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25444
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 25456
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 25460
sw $t1, 0($t0)
li $t1, 29497
la $t0, _data
addi $t0, $t0, 25464
sw $t1, 0($t0)
li $t1, 0
la $t0, _data
addi $t0, $t0, 25472
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25472
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25464
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25468
sw $t3, 0($t0)
li $t1, 25917
la $t0, _data
addi $t0, $t0, 25476
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25460
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25452
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25468
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25476
lw $t2, 0($t0)
bge $t1, $t2, L613
la $t0, _data
addi $t0, $t0, 25456
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25452
sw $t1, 0($t0)
L613:
li $t1, 0
la $t0, _data
addi $t0, $t0, 25484
sw $t1, 0($t0)
li $t1, 1
la $t0, _data
addi $t0, $t0, 25488
sw $t1, 0($t0)
li $t1, 34970
la $t0, _data
addi $t0, $t0, 25492
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25488
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25480
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25444
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25492
lw $t2, 0($t0)
bne $t1, $t2, L614
la $t0, _data
addi $t0, $t0, 25484
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25480
sw $t1, 0($t0)
L614:
li $t1, 26892
la $t0, _data
addi $t0, $t0, 25496
sw $t1, 0($t0)
li $t1, 58430
la $t0, _data
addi $t0, $t0, 25500
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25496
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25500
lw $t2, 0($t0)
div $t1, $t2
mflo $t3
la $t0, _data
addi $t0, $t0, 25504
sw $t3, 0($t0)
li $t1, 60805
la $t0, _data
addi $t0, $t0, 25508
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25504
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25508
lw $t2, 0($t0)
sub $t3, $t1, $t2
la $t0, _data
addi $t0, $t0, 25512
sw $t3, 0($t0)
addi $sp, $sp, -0
la $t0, _data
addi $t0, $t0, 25512
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20028
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25480
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20024
sw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 25452
lw $t1, 0($t0)
la $t0, _data
addi $t0, $t0, 20020
sw $t1, 0($t0)
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F14
lw $ra, 0($sp)
addi $sp, $sp, 4
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 25516
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 25444
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 46133
la $t0, _data
addi $t0, $t0, 25524
sw $t1, 0($t0)
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 25524
lw, $v0, 0($t0)
jr $ra
main:
addi $sp, $sp, -4
sw $ra, 0($sp)
jal F19
lw $ra, 0($sp)
addi $sp, $sp, 4
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 25528
sw $v0, 0($t0)
la $t0, _data
addi $t0, $t0, 25528
lw $t1, 0($t0)
move $a0, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
li $t1, 0
la $t0, _data
addi $t0, $t0, 25536
sw $t1, 0($t0)
addi $sp, $sp, 0
la $t0, _data
addi $t0, $t0, 25536
lw, $v0, 0($t0)
jr $ra
