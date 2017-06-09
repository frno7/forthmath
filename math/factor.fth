\ Copyright 2017 Fredrik Noring

require aux/reverse.fth
require aux/sort.fth
require math/gcd.fth

\ Remove n1 from the stack and then remove n1 additional stack items.
: ndrop ( n1 * n n1 -- ) 0 +do drop loop ; \ FIXME

: traverse-factors' { n d xt -- f abs[n/d] }
	d n 0< if negate then xt execute
	n d / abs ;
: traverse-factors ( n xt -- )
	2 1 { n xt d s }
	n abs 1 <= if exit then ( Exit degenerate cases where abs[n] <= 1. )
	begin	n d /mod abs d >= ( Loop while d*d <= abs[n]. )
	while	0= if
			n d xt traverse-factors' to n invert if exit then
		else
			d s + to d ( Let d be 2, 3, 5, 7, 9, 11, .... )
			2 to s
		then
	repeat drop
	n 1 <> if n n abs xt traverse-factors' 2drop then ;

: reverse-factors ( n * x n --- n * x n ) { n } n reverse n ;
: factors' ( n1 n2 -- n2 n3 true ) swap 1+ true ;
: factors ( n1 -- n2 * n n2 )
	0 swap ['] factors' traverse-factors reverse-factors ;

: traverse-factor-exponents' true { d e xt b s -- d e xt f }
	d b = if
		d e 1+ xt
	else
		d 0 <> if d e 1+ xt execute to s then
		s if b 0 xt else 0 0 xt then
	then s ;
: traverse-factor-exponents { n xt -- }
	0 0 xt n abs ['] traverse-factor-exponents' traverse-factors
	drop over 0<> if 1+ xt execute drop else 2drop then ;

: reverse-exponents ( i * d n --- i * d n ) { n } n 2* reverse n ;
: factor-exponents' ( d n -- d n f ) swap rot 1+ true ;
: factor-exponents ( n1 -- n2 * n n2 )
	0 swap ['] factor-exponents' traverse-factor-exponents reverse-exponents ;

\ Computes the number of distinct prime divisors of a number.
: distinct-factor-count ( n1 -- n2 ) factor-exponents { n } n 2* ndrop n ;

: pollard-rho-pseudo ( n1 n2 -- n3 ) { n m } n n m */mod drop 1+ m mod ;
: pollard-rho-factor ( n1 n2 -- n3 f )
	dup 1 { n x y d }
	begin	d 1 =
	while	x n pollard-rho-pseudo to x
		y n pollard-rho-pseudo
		  n pollard-rho-pseudo to y
		x y - abs n gcd to d
	repeat
    d n = if 0 false else d true then ;
: order-factors ( n1 * n n1 -- n1 * n n1 ) { n } n sort> n ;
: pollard-rho-factors ( n1 -- i * n n2 )
	0 swap
	begin	dup 2 pollard-rho-factor
	while	tuck / rot 1+ swap
	repeat	drop swap 1+ order-factors ;

\ FIXME factors>exponents and exponents>factors to convert
\ between factor and exponent forms.
