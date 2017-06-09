\ Copyright 2017 Fredrik Noring

\ Many algorithms need random access memory to work effectively. The n>allot
\ and nallot> words move n cells from the stack to data space and vice versa.
\ This makes it possible to use data space as a random access scratch pad.

\ n>allot and nallot> correspond to >r and nr>, with the difference that >r and
\ nr> also store n on the return stack. Would that be useful for n! and n@ too?
\ A slight problem with this is where to store n in data space. If it is stored
\ in the beginning of the array, it will be useful for applications but nallot>
\ will be unable to infer it based on the address of here. If n is stored at
\ the end of the array, it will be less useful to applications but nallot> will
\ be able to find it. Storing n both at the beginning and at the end of the
\ array would solve these issues but that does not seem aesthetically pleasing.

\ Subtract the size in address units of a cell to a-addr1, giving a-addr2.
: cell- ( a-addr1 -- a-addr2 ) [ 1 cells ] literal - ;

\ Remove address and n from the stack, and then move n additional items from
\ the stack to the memory starting at the address.
: n! ( n * x n a -- ) swap 0 +do dup -rot ! cell+ loop drop ;

\ Remove address and n from the stack, and then move n additional items from
\ the stack to the memory starting at the address. The address is
\ predecreased for every copied item.
: -n! ( n * x n a -- ) swap 0 +do cell- dup -rot ! loop drop ;

\ Remove address and n from the stack, and then copy n items from
\ the memory starting at the address to the stack.
: n@ ( n a -- n * x ) swap 0 +do dup @ swap cell+ loop drop ;

\ Remove address and n from the stack, and then copy n items from
\ the memory starting at the address to the stack. The address is
\ predecreased for every copied item.
: -n@ ( n a -- n * x ) swap 0 +do cell- dup @ swap loop drop ;

\ Remove n from the stack and then move n additional cells to the memory
\ reserved by allot.
: n>allot ( n * x n -- ) dup here swap cells allot n! ;

\ Remove n from the stack and then move n additional cells from the memory
\ address starting at here n cells - to the stack. Finally release n cells
\ of data space.
: nallot> { n -- n * x n } n here -n@ n negate cells allot ;
