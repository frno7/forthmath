\ Copyright 2017 Fredrik Noring

require aux/reverse.fth
require math/factor.fth
require math/log.fth

: even? ( n -- f ) 1 and 0= ; \ FIXME

\ n/ln[n] < π[n] < 1.25506·n/ln[n]
\ where the left inequality holds for 17 ≤ n and the right inequality for 1 < n.
: prime-count-lower { n -- n }
	n 5 <= if n 2 - 0 max else n n ln-upper 1 max / then ;
: prime-count-upper { n -- n }
	n 1 <= if 0 else n 12551 10000 */ n ln-lower 1 max / 1+ then ;

\ ln[n] + ln[ln[n]] - 1 < p[n]/n < ln[n] + ln[ln[n]].
: prime-lower { n -- n[ln[n] + ln[ln[n]] - 1] }
	n 0<= if abort" Nonpositive prime index" then
	n ln-lower n ln-lower 1 max ln-lower + 1- n * n 1+ max ;
: prime-upper { n -- n[ln[n] + ln[ln[n]]] }
	n 0<= if abort" Nonpositive prime index" then
	n ln-upper n ln-upper 1 max ln-upper + n * ;

: allot0  ( n -- ) here swap dup allot erase ;
: bitset  ( n -- ) 7 + 8 / allot0 ;
: bitset@ ( a n -- f ) 8 /mod rot + @ 1 rot lshift and 0<> ;
: bitset! ( a n -- ) 8 /mod rot + dup -rot @ 1 rot lshift or swap ! ;

\ All even bits are implicitly set in bitset2 which therefore only uses half
\ the memory compared to a complete bitset.
: bitset2  ( n -- a) 2/ 1+ bitset ;
: bitset2@ ( a n -- a) dup 2 mod 0= if 2drop true else 1- 2/ bitset@ then ;
: bitset2! ( a n -- a) dup 2 mod 0= if 2drop else 1- 2/ bitset! then ;

\ Sieve of Eratosthenes with the optimisation that all even numbers are
\ implicitly marked, thus only using half the memory of a complete list.
: traverse-primes-preceding ( n xt -- )
	over 2 < if 2drop exit then
	swap 1+ here { xt n v }
	n bitset2
	n 2 +do
		v i bitset2@ invert
		i 2 = or ( All even numbers except 2 are composite. )
		if
			i xt execute invert if leave then
			n i +do
				v i bitset2!
			j +loop
		then
	loop
	v here - allot ;

: reverse-primes ( n * x n --- n * x n ) { n } n reverse n ;

: primes-preceding' ( n1 n2 -- n2 n3 true ) swap 1+ true ;
\ Compute primes less than or equal to given number to the stack.
: primes-preceding  ( n1 -- i * n )
	0 swap ['] primes-preceding' traverse-primes-preceding reverse-primes ;

: prime-count' ( n1 -- n2 ) drop 1+ true ; ( Discard all primes and increment. )
\ Compute number of primes less than or equal to given number.
: prime-count  ( n1 -- n2 ) 0 swap ['] prime-count' traverse-primes-preceding ;

: traverse-primes' { n k xt p -- n k+1 xt true | n k xt true }
	n k = if n k xt false else p xt execute n k 1+ rot xt swap then ;
\ Remove xt and n from the stack and compute the prime numbers p_1, p_2,
\ ..., p_n. The invoked xt has the stack effect ( i * x n -- j * x flag ).
\ traverse-primes does not put any items other than the prime number n
\ on the stack when calling xt, so that xt can access and modify the rest of
\ the stack. If flag is true, continue with the next prime number, else return.
: traverse-primes  { n xt -- }
	n 0<= if exit then
	n 0 xt n prime-upper ['] traverse-primes' traverse-primes-preceding
	drop <> if abort" Prime not found" then ;

: primes' ( p -- p true ) true ; ( Keep all primes on the data stack. )
\ Compute n primes 2, 3, 5, 7, ... on the stack.
: primes  { n1 -- n1 * n } n1 ['] primes' traverse-primes n1 reverse ;

: prime' ( n p -- n ) nip true ; ( Discard all primes except last one. )
\ Compute nth prime p_n where where p_1 = 2 is the first prime.
: prime { n1 -- n2 }
	n1 0<= if abort" Nonpositive prime index" then
	0 n1 ['] prime' traverse-primes ;

: prime?' ( n n -- n false ) nip false ; ( Only first factor is needed. )
\ True if given number is prime, else false.
: prime? { n -- f }
	n 2 < if false else n n 1- n ['] prime?' traverse-factors = then ;
\ True if given number is composite, else false.
: composite? { n -- f } n 2 < if false else n prime? invert then ;

\ Compute greatest prime less than or equal to given number.
: preceding-prime ( n1 -- n1 )
	dup 1 <= if abort" No prime preceeds 1" then
	dup 2 = if exit then ( 2 is first prime. )
	dup even? if 1- then ( All primes are odd except 2. )
	begin	dup prime? invert
	while	2 - ( Try preceding odd number. )
	repeat ;

\ Compute smallest prime greater than or equal to given number.
: following-prime ( n1 -- n2 )
	dup 2 <= if drop 2 exit then ( 2 is first prime. )
	dup even? if 1+ then ( All primes are odd except 2. )
	begin	dup prime? invert
	while	2 + ( Try following odd number. )
	repeat ;
