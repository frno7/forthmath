\ Copyright 2017 Fredrik Noring

require aux/sort.fth
require math/exponent.fth
require math/factor.fth

\ The sum of the positive divisors function \sigma_x(n) implemented as
\ \sigma_x[ \prod^r_{i=1} p^{a_i}_i ] = \prod^r_{i=1} \sum^{a_i}_{j=0} p^{jx}_i.
: divisor-sum 1 0 { n x m s -- sum }
	n factor-exponents
	0 +do 0 to s
		1+ 0 +do
			dup i x * ** s + to s
		loop drop
		m s * to m
	loop m ;
: divisor-count ( n1 -- n2 ) 0 divisor-sum ;

: divisors' 0 0 { p k a n b e -- k | d k+1 a n }
	n 0<= if
		p k 1+
	else
		a @ to e
		a cell+ @ to b
		e 1+ 0 +do
			b i ** p *
			k
			a 2 cells +
			n 1-
			recurse to k
		loop k
	then ;
: divisors ( n1 -- n2 * n n2 )
	factor-exponents
	here 0 { n a d }
    n 2* n>allot
	1 0 a n divisors' to d
	n -2 * cells allot
    d sort> d ;

\ Remove xt and number to divide from the stack. Execute xt for all divisors
\ from 1 to the number itself. The invoked xt has the stack effect
\ ( i * x n -- j * x flag ). traverse-divisors does not put any items other
\ than x on the stack when calling xt, so that xt can access and modify the
\ rest of the stack. If flag is true, traverse next divisor if available,
\ otherwise return.
: traverse-divisors ( n xt -- )
   here 0 { n xt a d }
   n divisors to d d n>allot
   d 0 ?do
      a i cells + @ xt execute invert if leave then
   loop d negate cells allot ;
