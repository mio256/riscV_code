.text
.global main

main:
# register assignment
#  s1: int a

	add	a2, zero, 100	# set argujment 100
	jal	sum			# call sum()

	add	s1, a0, zero	# a = sum()

	ret			# return to system

sum:
# register assignment
#  a0: return value
#  a2: argument (n)
#  s1: int s
#  s2: int i

	add	sp, sp, -8		# allocate 2 words' space on stack
	sw	s2, 4(sp)		# save registers to stack
	sw	s1, 0(sp)
	add	s1, zero, zero		# i=0
	add	s2, zero, zero		# s=0
	start:
		blt	a2, s2, end	# n<i -> end
		add	s1, s1, s2	# s=s+i
		add	s2, s2, 1	# i=i+1
		j	start		# jump start
	end:
		add	a0, zero, s1	# return value = s
		lw	s2, 4(sp)		# load registers to stack
		lw	s1, 0(sp)
		add	sp, sp, 8		# deallocate 2 words' space on stack
	ret				# return to caller
