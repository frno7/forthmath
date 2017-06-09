\ Copyright 2017 Fredrik Noring

require math/factor.fth
require math/exponent.fth

\ The Euler phi function.
: euler-phi ( n1 -- n2 )
	1 { p } factor-exponents 0 ?do
		2dup ** -rot 1- ** - p * to p
	loop p ;
