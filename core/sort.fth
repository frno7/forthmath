\ Copyright 2017 Fredrik Noring

require core/nallot.fth

\ Remove xt, address and cell count from the stack. Execute xt to compare any
\ two cells. The invoked xt has the stack effect ( i * x x2 x1 -- j * x flag).
\ Sort does not put any items other than x1 and x2 on the stack when calling
\ xt, so that xt can access and modify the rest of the stack. If flag is true,
\ keep x2 and x1 in the given order, otherwise they are reversed as x1 and x2.
: insertion-sort { n a xt -- }
	n 1 +do
		i 0 +do
			a j i - cells + dup -1 cells + 2dup @ swap @ 2dup
			xt execute
			if	2drop 2drop leave
			else	rot ! swap !
			then
		loop
	loop ;

\ Remove xt and cell count from the stack. Execute xt to compare any two cells.
\ The invoked xt has the stack effect ( i * x x2 x1 -- j * x flag ). Sort does
\ not put any items other than x1 and x2 on the stack when calling xt, so that
\ xt can access and modify the rest of the stack. If flag is true, keep x2 and
\ x1 in the given order, otherwise they are reversed as x1 and x2.
: sort ( n * x n xt -- n * x )
	here { n xt a }
    n n>allot
    n a xt insertion-sort
    n nallot> ;

: sort> ( n * x n -- n * x ) ['] > sort ; \ Sort in ascending order.
: sort< ( n * x n -- n * x ) ['] < sort ; \ Sort in descending order.

\ FIXME Quicksort?
