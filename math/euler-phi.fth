\ Copyright 2017 Fredrik Noring

require math/factor.fth
require math/exponent.fth

\ The Euler phi function. Knuth, Concrete Mathematics, p. 134 (4.53).
: euler-phi ( n1 -- n2 )
	factor-exponents 1 swap 0 ?do >r 2dup ** -rot 1- ** - r> * loop ;
