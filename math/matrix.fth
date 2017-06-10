\ Copyright 2017 Fredrik Noring

require aux/nallot.fth
require math/modulo.fth

: matrix-rows { a -- n } a @ ;
: matrix-cols { a -- n } a cell+ @ ;
: matrix-dimensions { a -- n n } a matrix-cols a matrix-rows ;
: matrix@ { col row a -- } a matrix-cols row * col + 2 + cells a + @ ;
: matrix! { col row a -- } a matrix-cols row * col + 2 + cells a + ! ;

: matrix>allot ( i * n n n -- )
	here { cols rows a }
	cols rows * 2 + cells allot
	cols rows 2 a n!
	cols rows * dup 2 + cells a + -n! ;

: matrix0allot ( n n -- )
	here { cols rows a }
	cols rows * 2 + cells dup allot a swap erase
	cols rows 2 a n! ;

: matrix1allot ( n -- )
	here { n a } n n matrix0allot n 0 +do 1 i i a matrix! loop ;

: matrix0 ( n n -- ) { cols rows } cols rows * 0 +do 0 loop cols rows ;
: matrix1 ( n -- ) { n } n 0 +do n 0 +do i j = abs loop loop n n ;

: matrix-allot { a -- } a matrix-dimensions * 2 + negate cells allot ;

: matrix-multiply-element ( n n n -- n n ) * + ;
: matrix-multiply-element-modulo ( n n n n -- n n n )
	{ m s a b } m a b m *mod s m +mod ;

: allot+matrix ( a -- )
	dup matrix-dimensions { a cols rows }
	cols rows * a 2 cells + n@
	cols rows ;

: allot>matrix ( a -- )
	dup matrix-dimensions { a cols rows }
	cols rows * a 2 cells + n@
	cols rows
	cols rows * 2 + cells negate allot ;

: matrix-unary ( a a xt -- )
	0 0 0 0 { a b xt rows-a cols-a rows-b cols-b }
	a matrix-dimensions to rows-a to cols-a
	b matrix-dimensions to rows-b to cols-b
	rows-a rows-b <>
	cols-a cols-b <> or if abort" Matrix dimensions mismatch" then
	a 2 cells + to a
	b 2 cells + to b
	rows-b 0 +do
	cols-b 0 +do
		a @ xt execute b !
		a cell+ to a
		b cell+ to b
	loop loop ;

: matrix-binary ( a a a xt -- )
	0 0 0 0 0 0 { a b c xt rows-a cols-a rows-b cols-b rows-c cols-c }
	a matrix-dimensions to rows-a to cols-a
	b matrix-dimensions to rows-b to cols-b
	c matrix-dimensions to rows-c to cols-c
	rows-a rows-b <>
	rows-a rows-c <> or
	cols-a cols-b <> or
	cols-a cols-c <> or if abort" Matrix dimensions mismatch" then
	a 2 cells + to a
	b 2 cells + to b
	c 2 cells + to c
	rows-c 0 +do
	cols-c 0 +do
		a @ b @ xt execute c !
		a cell+ to a
		b cell+ to b
		c cell+ to c
	loop loop ;

: matrix-multiply-elements ( n a n a xt -- n )
	{ cols-b b cols-a a xt }
	0 cols-a 0 +do
		a @ b @ xt execute
		a cell+ to a
		b cols-b cells + to b
	loop ;

: matrix-multiply ( a a a xt -- )
	0 0 0 0 0 0 { a b c xt rows-a cols-a rows-b cols-b rows-c cols-c }
	a matrix-dimensions to rows-a to cols-a
	b matrix-dimensions to rows-b to cols-b
	c matrix-dimensions to rows-c to cols-c
	cols-a rows-b <>
	rows-a cols-b <> or
	rows-a cols-c <> or
	cols-b rows-c <> or if abort" Matrix dimensions mismatch" then
	a 2 cells + to a
	b 2 cells + to b
	c 2 cells + to c
	rows-c 0 +do
	cols-c 0 +do
		cols-b b cols-a a xt matrix-multiply-elements c !
		b cell+ to b
		c cell+ to c
	loop a cols-a cells + to a
	     b cols-c cells - to b loop ;

: matrix-negate ( i * n n n -- i * n n n )
	0 { a }
	here to a matrix>allot
	a a ['] negate matrix-unary
	a allot>matrix ;

: matrix+ ( i * n n n i * n n n -- i * n n n )
	0 0 { a b }
	here to b matrix>allot
	here to a matrix>allot
	a b a ['] + matrix-binary
	a allot>matrix
	b matrix-allot ;

: matrix- ( i * n n n i * n n n -- i * n n n )
	0 0 { a b }
	here to b matrix>allot
	here to a matrix>allot
	a b a ['] - matrix-binary
	a allot>matrix
	b matrix-allot ;

: matrix* ( i * n n n i * n n n -- i * n n n )
	0 0 0 { a b c }
	here to b matrix>allot
	here to a matrix>allot
	here to c b matrix-cols
		  a matrix-rows matrix0allot
	a b c ['] matrix-multiply-element matrix-multiply
	c allot>matrix
	a matrix-allot
	b matrix-allot ;

: matrix-exponentation ( i * n n n n xt -- i * n n n )
	0 0 0 0 0 0 { e xt a b c m r t }
	e 0< if abort" Matrix inversion not implemented." then
	here dup to a to m matrix>allot ( Base matrix. )
	m matrix-dimensions <> if abort" Matrix dimensions mismatch" then
	here dup to b to r m matrix-rows matrix1allot ( Result matrix. )
	here dup to c to t m matrix-dimensions matrix0allot ( Temporary matrix. )
	begin	e ( Fast exponentiation by squaring. )
	while	e 1 and if r m t xt matrix-multiply r t to r to t then
		m m t xt matrix-multiply m t to m to t
		e 1 rshift to e
	repeat
	r allot+matrix
	c matrix-allot
	b matrix-allot
	a matrix-allot ;

: matrix** ( i * n n n n -- i * n n n )
	['] matrix-multiply-element matrix-exponentation ;

: matrix**mod ( i * n n n n n -- i * n n n )
	here { e m b } matrix>allot
	m b allot>matrix e ['] matrix-multiply-element-modulo matrix-exponentation
	matrix>allot drop b ( Drop modulo. ) allot>matrix ;
