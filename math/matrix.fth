\ Copyright 2017 Fredrik Noring

require aux/nallot.fth

: matrix-rows { a -- n } a @ ;
: matrix-cols { a -- n } a cell+ @ ;
: matrix-dimensions { a -- n n } a matrix-cols a matrix-rows ;

: matrix>allot ( i * n n n -- )
	here { cols rows a }
	cols rows * 2 + cells allot
	cols rows 2 a n!
	cols rows * dup 2 + cells a + -n! ;

: matrix-allot { a -- } a matrix-dimensions * 2 + negate cells allot ;

: allot>matrix ( a -- )
	dup matrix-dimensions { a cols rows }
	cols rows * a 2 cells + n@
	cols rows ;

: matrix@ { col row a -- } a matrix-cols row * col + 2 + cells a + @ ;
: matrix! { col row a -- } a matrix-cols row * col + 2 + cells a + ! ;

: matrix-unary ( a a xt -- )
	0 0 0 0 { a d xt rows-a cols-a rows-d cols-d }
	a matrix-dimensions to rows-a to cols-a
	d matrix-dimensions to rows-d to cols-d
	rows-a rows-d <>
	cols-a cols-d <> or if abort" Matrix dimensions mismatch" then
	a 2 cells + to a
	d 2 cells + to d
	rows-a 0 +do
	cols-a 0 +do
		a @ xt execute d !
		a cell+ to a
		d cell+ to d
	loop loop ;

: matrix-binary ( a a a xt -- )
	0 0 0 0 0 0 { a b d xt rows-a cols-a rows-b cols-b rows-d cols-d }
	a matrix-dimensions to rows-a to cols-a
	b matrix-dimensions to rows-b to cols-b
	d matrix-dimensions to rows-d to cols-d
	rows-a rows-b <>
	rows-a rows-d <> or
	cols-a cols-b <> or
	cols-a cols-d <> or if abort" Matrix dimensions mismatch" then
	a 2 cells + to a
	b 2 cells + to b
	d 2 cells + to d
	rows-a 0 +do
	cols-a 0 +do
		b @ a @ xt execute d !
		a cell+ to a
		b cell+ to b
		d cell+ to d
	loop loop ;

: matrix-negate ( i * n n n -- i * n n n )
	0 { a }
	here to a matrix>allot
	a a ['] negate matrix-unary
	a allot>matrix ;

: matrix+ ( i * n n n i * n n n -- i * n n n )
	0 0 { a b }
	here to a matrix>allot
	here to b matrix>allot
	a b a ['] + matrix-binary
	b matrix-allot
	a allot>matrix ;

: matrix- ( i * n n n i * n n n -- i * n n n )
	0 0 { a b }
	here to a matrix>allot
	here to b matrix>allot
	a b a ['] - matrix-binary
	b matrix-allot
	a allot>matrix ;
