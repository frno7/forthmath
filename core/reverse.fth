\ Copyright 2017 Fredrik Noring

\ Remove n from the stack and reverse the order of the n following stack items.
: reverse ( n * x n --- n * x )
	here { n a }
	n cells allot
	n 0 ?do a i cells + ! loop
	n 0 ?do a i cells + @ loop
	n negate cells allot ;
