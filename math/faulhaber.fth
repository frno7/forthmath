\ Copyright 2017 Fredrik Noring

require math/bernoulli.fth
require math/binomial.fth
require math/exponent.fth
require math/gcd.fth
require math/rational.fth

\ Knuth, Concrete Mathematics, p. 283.
: faulhaber { n m -- n }
	0 s>q
	m 1+ 0 +do
		m 1+ i binomial n m 1+ i - ** * 1 i bernoulli q* q+
	loop 1 m 1+ q* / ;
