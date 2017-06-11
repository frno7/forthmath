\ Copyright 2017 Fredrik Noring

require math/exponent.fth

\ FIXME Avoid intermediate overflow if possible.
\ FIXME Abort on definitive overflow.
: binomial ( n n -- n )
	{ n k }
	n 0< if k n - 1- k recurse k -1** * exit then
	k 0< n k < or if 0 exit then
	k n k - min to k ( Take advantage of symmetry. )
	1 k 0 +do n i - i 1 + */ loop ;
