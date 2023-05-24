.text
.global main
main:
#a = 11
add	s1, zero, 11

#b = 7
add	s2, zero, 7

#c = 8
add	s3, zero, 8

#y = a + b
add	t1, s1, s2

#y = a - b + 1
sub	t1, s1, s2
add	t1, t1, 1

#y = (a + c) - (a + b) + 5
add	t1, s1, s3
add	t2, s1, s2
sub	t1, t1, t2
add t1, t1, 5

#y = (a & b | c) << 2
and	t1, s1, s2
or	t1, t1, s3
sll	t1, t1, 2
