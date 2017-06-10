\ Copyright 2017 Fredrik Noring

require math/binomial.fth
require math/bernoulli.fth
require math/exponent.fth
require math/gcd.fth

: rational-simplify ( d -- d ) 2dup gcd dup -rot / -rot / swap ; \ FIXME
: rational* ( d d -- d ) \ FIXME
	{ a b c d } a c * b d * rational-simplify ;
: rational+ ( d d -- d ) \ FIXME
	{ a b c d } a d * b c * + b d * rational-simplify ;

\ Knuth, Concrete Mathematics, p. 283.
: faulhaber { n m -- n }
	0 1
	m 1+ 0 +do
		m 1+ i binomial n m 1+ i - ** * 1 i bernoulli rational* rational+
	loop 1 m 1+ rational* / ;
