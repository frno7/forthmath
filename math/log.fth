\ Copyright 2017 Fredrik Noring

: log2-floor ( n -- n )
	dup 0<= if abort" Nonpositive log2-floor argument" then
	-1 swap
	begin	?dup
	while	1 rshift swap
		1+ swap
	repeat ;

: log2-ceiling ( n -- n )
	dup 0<= if abort" Nonpositive log2-ceiling argument" then
	1- dup 0<> if log2-floor 1+ then ;

: ln-lower ( n -- n ) log2-floor 69 * 100 / ;       \ FIXME Rational log(2.718281828459045235360)/log(2)
: ln-upper ( n -- n ) log2-ceiling 70 * 100  + 100 / ; \ FIXME Rational log(2.718281828459045235360)/log(2)
