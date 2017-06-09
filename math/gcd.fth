\ Copyright 2017 Fredrik Noring

\ Greatest common divisor.
: gcd ( n1 n2 -- n3 ) begin ?dup while tuck mod repeat abs ;

: /symmetric ( n1 n2 -- n3 ) \ FIXME Is there a better way to do this?
	2dup / dup 0< if drop negate / negate else -rot 2drop then ;

\ Extended greatest common divisor.
: extended-gcd ( n1 n2 -- n3 n4 n5 )
	1 0 0 1 { n m d c b a }
	begin	m 0<>
	while	n m /symmetric
		dup a * c swap - to c
		dup b * d swap - to d
		    m * n swap - to n
		a c to a to c
		b d to b to d
		m n to m to n
	repeat n 0< if d negate c negate n negate else d c n then ;

\ Least common multiple.
: lcm ( n1 n2 -- n3 ) 2dup * abs -rot gcd / ;
