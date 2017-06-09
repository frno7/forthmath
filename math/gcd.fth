\ Copyright 2017 Fredrik Noring

\ Greatest common divisor.
: gcd ( n1 n2 -- n3 ) begin ?dup while tuck mod repeat abs ;

\ Extended greatest common divisor.
: extended-gcd ( n1 n2 -- n3 n4 n5 )
	1 0 0 1 { n m d c b a }
	begin	m 0<>
	while	n s>d m sm/rem nip ( Symmetric division is required: n m / )
		dup a * c swap - to c
		dup b * d swap - to d
		    m * n swap - to n
		a c to a to c
		b d to b to d
		m n to m to n
	repeat n 0< if d negate c negate n negate else d c n then ;

\ Least common multiple.
: lcm ( n1 n2 -- n3 ) 2dup * abs -rot gcd / ;
