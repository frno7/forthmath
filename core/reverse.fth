\ Copyright 2017 Fredrik Noring

require core/nallot.fth

\ Remove n from the stack and reverse the order of the n following stack items.
: reverse ( n * x n --- n * x )
	here { n a }
	n cells allot
	n a n!
	n a n@
	n negate cells allot ;
