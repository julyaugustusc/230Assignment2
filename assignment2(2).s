###########################################################
# Assignment #: 2
# Name: Augustus Crosby 
# ASU email: ancrosby@asu.edu
# Course: CSE230, MW 3:05pm
# Description: It prints 2 integers and the sum of the 
#              2 and then subtracts one from another.
###########################################################

#data declarations: declare variable names used in program, storage allocated in RAM

		.data   
num1:		.word 741234 #create a int in decimal containing "741234"
num2:		.word 0xD7A #create a int in hexadecimal containing "D7A"
line1:		.asciiz "num1 is: " 
line2:		.asciiz "\nnum2 is: "
line3:		.asciiz "\nnum1+num2 = "
line4:		.asciiz "\nnum1-num2 = "


#program code is contained below under .text

		.text 
		.globl main    #define a global function main

# the program begins execution at main()

main:
		la		$t0, num1	# $t0 = address of num1
		la		$t1, num2	# $t1 = address of num2
		la		$t2, line1	# $t2 = address of line1
		la		$t3, line2	# $t3 = address of line2
		la		$t4, line3	# $t4 = address of line3
		la		$t5, line4	# $t5 = address of line4

		li		$v0, 4		# $v0 = 4, to print string
		move		$a0, $t2	# $a0 = $t2
		syscall				# call print_string()

		li		$v0, 1		# $v0 = 1, to print int
		lw 		$s2, 0($t0)	# $s2 = 741234
		move		$a0, $s2	# $a0 = $s2
		syscall				# call print_int()

		li		$v0, 4		# $v0 = 4, to print string
		move		$a0, $t3	# $a0 = $t3
		syscall				# call print_string()

		li		$v0, 1		# $v0 = 1, to print int
		lw 		$s3, 0($t1)	# $s3 = 0xD7A
		move		$a0, $s3	# $a0 = $s3
		syscall				# call print_int()

		li		$v0, 4		# $v0 = 4, to print string
		move		$a0, $t4	# $a0 = $t4
		syscall				# call print_string()

		li		$v0, 1		# $v0 = 1, to print int
		add		$s4, $s2, $s3	# $s4 = $s2 (741234) + $s3 (0xD7A)
		move		$a0, $s4	# $a0 = $s4
		syscall				# call print_int()

		li		$v0, 4		# $v0 = 4, to print string
		move		$a0, $t5	# $a0 = $t5
		syscall				# call print_string()

		li		$v0, 1		# $v0 = 1, to print int
		sub		$s5, $s2, $s3	# $s5 = $s2 (741234) - $s3 (0xD7A)
		move		$a0, $s5	# $a0 = $s5
		syscall				# call print_int()

		li		$v0, 10		# $v0 = 10
		syscall				# end