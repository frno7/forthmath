\ Copyright 2017 Fredrik Noring

require aux/reverse.fth
require math/matrix.fth

\ Remove xt from the stack and compute the Fibonacci numbers F_0, F_1, ....
\ The invoked xt has the stack effect ( i * x n -- j * x flag ).
\ traverse-fibonaccis does not put any items other than the Fibonacci number n
\ on the stack when calling xt, so that xt can access and modify the rest of
\ the stack. If flag is true, continue with the next Fibonacci number, else
\ return.
: traverse-fibonaccis ( xt -- )
	0 1 { xt a b }
	begin	a xt execute
	while	a b + b to a to b
	repeat ;

: fibonaccis' ( n1 n2 -- n2 n3 true | false )
	swap dup 1 <= if drop false else 1- true then ;
\ Remove n from the stack and compute F_0, F_1, ..., F_{n-1} up to and
\ including Fibonacci number n-1 with F_0 at the top of the stack.
: fibonaccis { n1 -- n1 * n }
   n1 ['] fibonaccis' traverse-fibonaccis n1 reverse ;

: fibonacci' ( k n n -- k-1 n true | n false )
	nip swap dup 1 < if drop false else 1- swap true then ;
\ Remove n from the stack and compute F_n, the nth Fibonacci number.
: fibonacci ( n1 -- n2 )
	{ n }
	n abs 0 ['] fibonacci' traverse-fibonaccis
	n 0< n 2 mod 0= and if negate then ;

: fibonacci-matrix ( -- 4 * n n n )
	1 1
	1 0 2 2 ;
: fibonacci-mod ( n n -- n )
	0 { n m r }
	fibonacci-matrix n abs m matrix**mod
	0 1 matrix-element to r
	matrix-drop r n 0< n 2 mod 0= and if negate then m mod ;
