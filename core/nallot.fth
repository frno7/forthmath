\ Copyright 2017 Fredrik Noring

\ Many algorithms need random access memory to work effectively. The n>allot
\ and nallot> words move n cells from the stack to data space and vice versa.
\ This makes it possible to use data space as a random access scratch pad.

\ FIXME n! and n@ are corresponds to >r and nr>, with the difference that
\ >r and nr> also store n on the return stack. Would that be useful for n!
\ and n@ too?

\ Remove address and n from the stack, and then move n additional items from
\ the stack to the memory starting at the address.
: n! ( n * x n a -- ) swap 0 +do dup -rot ! cell+ loop drop ;

\ Remove address and n from the stack, and then copy n items from
\ the memory starting at the address to the stack.
: n@ ( n a -- n * x ) swap 0 +do dup @ swap cell+ loop drop ;

\ Remove n from the stack and then move n additional cells to the memory
\ reserved by allot.
: n>allot ( n * x n -- ) dup here swap cells allot n! ;

\ Remove n from the stack and then move n additional cells from the memory
\ address starting at here n cells - to the stack. Finally release n cells
\ of data space.
: nallot> { n -- n * x n } n here n cells - n@ n negate cells allot ;
