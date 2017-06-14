\ Copyright 2017 Fredrik Noring

\ FIXME Intermediate rational computations may overflow. Can this be improved
\ effectively?

\ Simplify given rational to a reduced fraction with a positive denominator.
: q>q ( d -- d )
	2dup gcd dup -rot / -rot /
	over 0< if negate swap negate else swap then ;

: s>q ( n -- d ) 1 ;
: q>s ( n -- d ) / ;
: q* ( d d -- d ) { a b c d } a c * b d * q>q ;
: q/ ( d d -- d ) { a b c d } a d * b c * q>q ;
: q+ ( d d -- d ) { a b c d } a d * b c * + b d * q>q ;
: q- ( d d -- d ) { a b c d } a d * b c * - b d * q>q ;
