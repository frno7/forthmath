\ Copyright 2017 Fredrik Noring

require ttester.fth

require math/gcd.fth

T{ -12 -12 gcd ->  12 }T
T{ -12 -11 gcd ->   1 }T
T{ -12 -10 gcd ->   2 }T
T{ -12  -9 gcd ->   3 }T
T{ -12  -8 gcd ->   4 }T
T{ -12  -7 gcd ->   1 }T
T{ -12  -6 gcd ->   6 }T
T{ -12  -5 gcd ->   1 }T
T{ -12  -4 gcd ->   4 }T
T{ -12  -3 gcd ->   3 }T
T{ -12  -2 gcd ->   2 }T
T{ -12  -1 gcd ->   1 }T
T{ -12   0 gcd ->  12 }T
T{ -12   1 gcd ->   1 }T
T{ -12   2 gcd ->   2 }T
T{ -12   3 gcd ->   3 }T
T{ -12   4 gcd ->   4 }T
T{ -12   5 gcd ->   1 }T
T{ -12   6 gcd ->   6 }T
T{ -12   7 gcd ->   1 }T
T{ -12   8 gcd ->   4 }T
T{ -12   9 gcd ->   3 }T
T{ -12  10 gcd ->   2 }T
T{ -12  11 gcd ->   1 }T
T{ -12  12 gcd ->  12 }T
T{ -11 -12 gcd ->   1 }T
T{ -11 -11 gcd ->  11 }T
T{ -11 -10 gcd ->   1 }T
T{ -11  -9 gcd ->   1 }T
T{ -11  -8 gcd ->   1 }T
T{ -11  -7 gcd ->   1 }T
T{ -11  -6 gcd ->   1 }T
T{ -11  -5 gcd ->   1 }T
T{ -11  -4 gcd ->   1 }T
T{ -11  -3 gcd ->   1 }T
T{ -11  -2 gcd ->   1 }T
T{ -11  -1 gcd ->   1 }T
T{ -11   0 gcd ->  11 }T
T{ -11   1 gcd ->   1 }T
T{ -11   2 gcd ->   1 }T
T{ -11   3 gcd ->   1 }T
T{ -11   4 gcd ->   1 }T
T{ -11   5 gcd ->   1 }T
T{ -11   6 gcd ->   1 }T
T{ -11   7 gcd ->   1 }T
T{ -11   8 gcd ->   1 }T
T{ -11   9 gcd ->   1 }T
T{ -11  10 gcd ->   1 }T
T{ -11  11 gcd ->  11 }T
T{ -11  12 gcd ->   1 }T
T{ -10 -12 gcd ->   2 }T
T{ -10 -11 gcd ->   1 }T
T{ -10 -10 gcd ->  10 }T
T{ -10  -9 gcd ->   1 }T
T{ -10  -8 gcd ->   2 }T
T{ -10  -7 gcd ->   1 }T
T{ -10  -6 gcd ->   2 }T
T{ -10  -5 gcd ->   5 }T
T{ -10  -4 gcd ->   2 }T
T{ -10  -3 gcd ->   1 }T
T{ -10  -2 gcd ->   2 }T
T{ -10  -1 gcd ->   1 }T
T{ -10   0 gcd ->  10 }T
T{ -10   1 gcd ->   1 }T
T{ -10   2 gcd ->   2 }T
T{ -10   3 gcd ->   1 }T
T{ -10   4 gcd ->   2 }T
T{ -10   5 gcd ->   5 }T
T{ -10   6 gcd ->   2 }T
T{ -10   7 gcd ->   1 }T
T{ -10   8 gcd ->   2 }T
T{ -10   9 gcd ->   1 }T
T{ -10  10 gcd ->  10 }T
T{ -10  11 gcd ->   1 }T
T{ -10  12 gcd ->   2 }T
T{  -9 -12 gcd ->   3 }T
T{  -9 -11 gcd ->   1 }T
T{  -9 -10 gcd ->   1 }T
T{  -9  -9 gcd ->   9 }T
T{  -9  -8 gcd ->   1 }T
T{  -9  -7 gcd ->   1 }T
T{  -9  -6 gcd ->   3 }T
T{  -9  -5 gcd ->   1 }T
T{  -9  -4 gcd ->   1 }T
T{  -9  -3 gcd ->   3 }T
T{  -9  -2 gcd ->   1 }T
T{  -9  -1 gcd ->   1 }T
T{  -9   0 gcd ->   9 }T
T{  -9   1 gcd ->   1 }T
T{  -9   2 gcd ->   1 }T
T{  -9   3 gcd ->   3 }T
T{  -9   4 gcd ->   1 }T
T{  -9   5 gcd ->   1 }T
T{  -9   6 gcd ->   3 }T
T{  -9   7 gcd ->   1 }T
T{  -9   8 gcd ->   1 }T
T{  -9   9 gcd ->   9 }T
T{  -9  10 gcd ->   1 }T
T{  -9  11 gcd ->   1 }T
T{  -9  12 gcd ->   3 }T
T{  -8 -12 gcd ->   4 }T
T{  -8 -11 gcd ->   1 }T
T{  -8 -10 gcd ->   2 }T
T{  -8  -9 gcd ->   1 }T
T{  -8  -8 gcd ->   8 }T
T{  -8  -7 gcd ->   1 }T
T{  -8  -6 gcd ->   2 }T
T{  -8  -5 gcd ->   1 }T
T{  -8  -4 gcd ->   4 }T
T{  -8  -3 gcd ->   1 }T
T{  -8  -2 gcd ->   2 }T
T{  -8  -1 gcd ->   1 }T
T{  -8   0 gcd ->   8 }T
T{  -8   1 gcd ->   1 }T
T{  -8   2 gcd ->   2 }T
T{  -8   3 gcd ->   1 }T
T{  -8   4 gcd ->   4 }T
T{  -8   5 gcd ->   1 }T
T{  -8   6 gcd ->   2 }T
T{  -8   7 gcd ->   1 }T
T{  -8   8 gcd ->   8 }T
T{  -8   9 gcd ->   1 }T
T{  -8  10 gcd ->   2 }T
T{  -8  11 gcd ->   1 }T
T{  -8  12 gcd ->   4 }T
T{  -7 -12 gcd ->   1 }T
T{  -7 -11 gcd ->   1 }T
T{  -7 -10 gcd ->   1 }T
T{  -7  -9 gcd ->   1 }T
T{  -7  -8 gcd ->   1 }T
T{  -7  -7 gcd ->   7 }T
T{  -7  -6 gcd ->   1 }T
T{  -7  -5 gcd ->   1 }T
T{  -7  -4 gcd ->   1 }T
T{  -7  -3 gcd ->   1 }T
T{  -7  -2 gcd ->   1 }T
T{  -7  -1 gcd ->   1 }T
T{  -7   0 gcd ->   7 }T
T{  -7   1 gcd ->   1 }T
T{  -7   2 gcd ->   1 }T
T{  -7   3 gcd ->   1 }T
T{  -7   4 gcd ->   1 }T
T{  -7   5 gcd ->   1 }T
T{  -7   6 gcd ->   1 }T
T{  -7   7 gcd ->   7 }T
T{  -7   8 gcd ->   1 }T
T{  -7   9 gcd ->   1 }T
T{  -7  10 gcd ->   1 }T
T{  -7  11 gcd ->   1 }T
T{  -7  12 gcd ->   1 }T
T{  -6 -12 gcd ->   6 }T
T{  -6 -11 gcd ->   1 }T
T{  -6 -10 gcd ->   2 }T
T{  -6  -9 gcd ->   3 }T
T{  -6  -8 gcd ->   2 }T
T{  -6  -7 gcd ->   1 }T
T{  -6  -6 gcd ->   6 }T
T{  -6  -5 gcd ->   1 }T
T{  -6  -4 gcd ->   2 }T
T{  -6  -3 gcd ->   3 }T
T{  -6  -2 gcd ->   2 }T
T{  -6  -1 gcd ->   1 }T
T{  -6   0 gcd ->   6 }T
T{  -6   1 gcd ->   1 }T
T{  -6   2 gcd ->   2 }T
T{  -6   3 gcd ->   3 }T
T{  -6   4 gcd ->   2 }T
T{  -6   5 gcd ->   1 }T
T{  -6   6 gcd ->   6 }T
T{  -6   7 gcd ->   1 }T
T{  -6   8 gcd ->   2 }T
T{  -6   9 gcd ->   3 }T
T{  -6  10 gcd ->   2 }T
T{  -6  11 gcd ->   1 }T
T{  -6  12 gcd ->   6 }T
T{  -5 -12 gcd ->   1 }T
T{  -5 -11 gcd ->   1 }T
T{  -5 -10 gcd ->   5 }T
T{  -5  -9 gcd ->   1 }T
T{  -5  -8 gcd ->   1 }T
T{  -5  -7 gcd ->   1 }T
T{  -5  -6 gcd ->   1 }T
T{  -5  -5 gcd ->   5 }T
T{  -5  -4 gcd ->   1 }T
T{  -5  -3 gcd ->   1 }T
T{  -5  -2 gcd ->   1 }T
T{  -5  -1 gcd ->   1 }T
T{  -5   0 gcd ->   5 }T
T{  -5   1 gcd ->   1 }T
T{  -5   2 gcd ->   1 }T
T{  -5   3 gcd ->   1 }T
T{  -5   4 gcd ->   1 }T
T{  -5   5 gcd ->   5 }T
T{  -5   6 gcd ->   1 }T
T{  -5   7 gcd ->   1 }T
T{  -5   8 gcd ->   1 }T
T{  -5   9 gcd ->   1 }T
T{  -5  10 gcd ->   5 }T
T{  -5  11 gcd ->   1 }T
T{  -5  12 gcd ->   1 }T
T{  -4 -12 gcd ->   4 }T
T{  -4 -11 gcd ->   1 }T
T{  -4 -10 gcd ->   2 }T
T{  -4  -9 gcd ->   1 }T
T{  -4  -8 gcd ->   4 }T
T{  -4  -7 gcd ->   1 }T
T{  -4  -6 gcd ->   2 }T
T{  -4  -5 gcd ->   1 }T
T{  -4  -4 gcd ->   4 }T
T{  -4  -3 gcd ->   1 }T
T{  -4  -2 gcd ->   2 }T
T{  -4  -1 gcd ->   1 }T
T{  -4   0 gcd ->   4 }T
T{  -4   1 gcd ->   1 }T
T{  -4   2 gcd ->   2 }T
T{  -4   3 gcd ->   1 }T
T{  -4   4 gcd ->   4 }T
T{  -4   5 gcd ->   1 }T
T{  -4   6 gcd ->   2 }T
T{  -4   7 gcd ->   1 }T
T{  -4   8 gcd ->   4 }T
T{  -4   9 gcd ->   1 }T
T{  -4  10 gcd ->   2 }T
T{  -4  11 gcd ->   1 }T
T{  -4  12 gcd ->   4 }T
T{  -3 -12 gcd ->   3 }T
T{  -3 -11 gcd ->   1 }T
T{  -3 -10 gcd ->   1 }T
T{  -3  -9 gcd ->   3 }T
T{  -3  -8 gcd ->   1 }T
T{  -3  -7 gcd ->   1 }T
T{  -3  -6 gcd ->   3 }T
T{  -3  -5 gcd ->   1 }T
T{  -3  -4 gcd ->   1 }T
T{  -3  -3 gcd ->   3 }T
T{  -3  -2 gcd ->   1 }T
T{  -3  -1 gcd ->   1 }T
T{  -3   0 gcd ->   3 }T
T{  -3   1 gcd ->   1 }T
T{  -3   2 gcd ->   1 }T
T{  -3   3 gcd ->   3 }T
T{  -3   4 gcd ->   1 }T
T{  -3   5 gcd ->   1 }T
T{  -3   6 gcd ->   3 }T
T{  -3   7 gcd ->   1 }T
T{  -3   8 gcd ->   1 }T
T{  -3   9 gcd ->   3 }T
T{  -3  10 gcd ->   1 }T
T{  -3  11 gcd ->   1 }T
T{  -3  12 gcd ->   3 }T
T{  -2 -12 gcd ->   2 }T
T{  -2 -11 gcd ->   1 }T
T{  -2 -10 gcd ->   2 }T
T{  -2  -9 gcd ->   1 }T
T{  -2  -8 gcd ->   2 }T
T{  -2  -7 gcd ->   1 }T
T{  -2  -6 gcd ->   2 }T
T{  -2  -5 gcd ->   1 }T
T{  -2  -4 gcd ->   2 }T
T{  -2  -3 gcd ->   1 }T
T{  -2  -2 gcd ->   2 }T
T{  -2  -1 gcd ->   1 }T
T{  -2   0 gcd ->   2 }T
T{  -2   1 gcd ->   1 }T
T{  -2   2 gcd ->   2 }T
T{  -2   3 gcd ->   1 }T
T{  -2   4 gcd ->   2 }T
T{  -2   5 gcd ->   1 }T
T{  -2   6 gcd ->   2 }T
T{  -2   7 gcd ->   1 }T
T{  -2   8 gcd ->   2 }T
T{  -2   9 gcd ->   1 }T
T{  -2  10 gcd ->   2 }T
T{  -2  11 gcd ->   1 }T
T{  -2  12 gcd ->   2 }T
T{  -1 -12 gcd ->   1 }T
T{  -1 -11 gcd ->   1 }T
T{  -1 -10 gcd ->   1 }T
T{  -1  -9 gcd ->   1 }T
T{  -1  -8 gcd ->   1 }T
T{  -1  -7 gcd ->   1 }T
T{  -1  -6 gcd ->   1 }T
T{  -1  -5 gcd ->   1 }T
T{  -1  -4 gcd ->   1 }T
T{  -1  -3 gcd ->   1 }T
T{  -1  -2 gcd ->   1 }T
T{  -1  -1 gcd ->   1 }T
T{  -1   0 gcd ->   1 }T
T{  -1   1 gcd ->   1 }T
T{  -1   2 gcd ->   1 }T
T{  -1   3 gcd ->   1 }T
T{  -1   4 gcd ->   1 }T
T{  -1   5 gcd ->   1 }T
T{  -1   6 gcd ->   1 }T
T{  -1   7 gcd ->   1 }T
T{  -1   8 gcd ->   1 }T
T{  -1   9 gcd ->   1 }T
T{  -1  10 gcd ->   1 }T
T{  -1  11 gcd ->   1 }T
T{  -1  12 gcd ->   1 }T
T{   0 -12 gcd ->  12 }T
T{   0 -11 gcd ->  11 }T
T{   0 -10 gcd ->  10 }T
T{   0  -9 gcd ->   9 }T
T{   0  -8 gcd ->   8 }T
T{   0  -7 gcd ->   7 }T
T{   0  -6 gcd ->   6 }T
T{   0  -5 gcd ->   5 }T
T{   0  -4 gcd ->   4 }T
T{   0  -3 gcd ->   3 }T
T{   0  -2 gcd ->   2 }T
T{   0  -1 gcd ->   1 }T
T{   0   0 gcd ->   0 }T
T{   0   1 gcd ->   1 }T
T{   0   2 gcd ->   2 }T
T{   0   3 gcd ->   3 }T
T{   0   4 gcd ->   4 }T
T{   0   5 gcd ->   5 }T
T{   0   6 gcd ->   6 }T
T{   0   7 gcd ->   7 }T
T{   0   8 gcd ->   8 }T
T{   0   9 gcd ->   9 }T
T{   0  10 gcd ->  10 }T
T{   0  11 gcd ->  11 }T
T{   0  12 gcd ->  12 }T
T{   1 -12 gcd ->   1 }T
T{   1 -11 gcd ->   1 }T
T{   1 -10 gcd ->   1 }T
T{   1  -9 gcd ->   1 }T
T{   1  -8 gcd ->   1 }T
T{   1  -7 gcd ->   1 }T
T{   1  -6 gcd ->   1 }T
T{   1  -5 gcd ->   1 }T
T{   1  -4 gcd ->   1 }T
T{   1  -3 gcd ->   1 }T
T{   1  -2 gcd ->   1 }T
T{   1  -1 gcd ->   1 }T
T{   1   0 gcd ->   1 }T
T{   1   1 gcd ->   1 }T
T{   1   2 gcd ->   1 }T
T{   1   3 gcd ->   1 }T
T{   1   4 gcd ->   1 }T
T{   1   5 gcd ->   1 }T
T{   1   6 gcd ->   1 }T
T{   1   7 gcd ->   1 }T
T{   1   8 gcd ->   1 }T
T{   1   9 gcd ->   1 }T
T{   1  10 gcd ->   1 }T
T{   1  11 gcd ->   1 }T
T{   1  12 gcd ->   1 }T
T{   2 -12 gcd ->   2 }T
T{   2 -11 gcd ->   1 }T
T{   2 -10 gcd ->   2 }T
T{   2  -9 gcd ->   1 }T
T{   2  -8 gcd ->   2 }T
T{   2  -7 gcd ->   1 }T
T{   2  -6 gcd ->   2 }T
T{   2  -5 gcd ->   1 }T
T{   2  -4 gcd ->   2 }T
T{   2  -3 gcd ->   1 }T
T{   2  -2 gcd ->   2 }T
T{   2  -1 gcd ->   1 }T
T{   2   0 gcd ->   2 }T
T{   2   1 gcd ->   1 }T
T{   2   2 gcd ->   2 }T
T{   2   3 gcd ->   1 }T
T{   2   4 gcd ->   2 }T
T{   2   5 gcd ->   1 }T
T{   2   6 gcd ->   2 }T
T{   2   7 gcd ->   1 }T
T{   2   8 gcd ->   2 }T
T{   2   9 gcd ->   1 }T
T{   2  10 gcd ->   2 }T
T{   2  11 gcd ->   1 }T
T{   2  12 gcd ->   2 }T
T{   3 -12 gcd ->   3 }T
T{   3 -11 gcd ->   1 }T
T{   3 -10 gcd ->   1 }T
T{   3  -9 gcd ->   3 }T
T{   3  -8 gcd ->   1 }T
T{   3  -7 gcd ->   1 }T
T{   3  -6 gcd ->   3 }T
T{   3  -5 gcd ->   1 }T
T{   3  -4 gcd ->   1 }T
T{   3  -3 gcd ->   3 }T
T{   3  -2 gcd ->   1 }T
T{   3  -1 gcd ->   1 }T
T{   3   0 gcd ->   3 }T
T{   3   1 gcd ->   1 }T
T{   3   2 gcd ->   1 }T
T{   3   3 gcd ->   3 }T
T{   3   4 gcd ->   1 }T
T{   3   5 gcd ->   1 }T
T{   3   6 gcd ->   3 }T
T{   3   7 gcd ->   1 }T
T{   3   8 gcd ->   1 }T
T{   3   9 gcd ->   3 }T
T{   3  10 gcd ->   1 }T
T{   3  11 gcd ->   1 }T
T{   3  12 gcd ->   3 }T
T{   4 -12 gcd ->   4 }T
T{   4 -11 gcd ->   1 }T
T{   4 -10 gcd ->   2 }T
T{   4  -9 gcd ->   1 }T
T{   4  -8 gcd ->   4 }T
T{   4  -7 gcd ->   1 }T
T{   4  -6 gcd ->   2 }T
T{   4  -5 gcd ->   1 }T
T{   4  -4 gcd ->   4 }T
T{   4  -3 gcd ->   1 }T
T{   4  -2 gcd ->   2 }T
T{   4  -1 gcd ->   1 }T
T{   4   0 gcd ->   4 }T
T{   4   1 gcd ->   1 }T
T{   4   2 gcd ->   2 }T
T{   4   3 gcd ->   1 }T
T{   4   4 gcd ->   4 }T
T{   4   5 gcd ->   1 }T
T{   4   6 gcd ->   2 }T
T{   4   7 gcd ->   1 }T
T{   4   8 gcd ->   4 }T
T{   4   9 gcd ->   1 }T
T{   4  10 gcd ->   2 }T
T{   4  11 gcd ->   1 }T
T{   4  12 gcd ->   4 }T
T{   5 -12 gcd ->   1 }T
T{   5 -11 gcd ->   1 }T
T{   5 -10 gcd ->   5 }T
T{   5  -9 gcd ->   1 }T
T{   5  -8 gcd ->   1 }T
T{   5  -7 gcd ->   1 }T
T{   5  -6 gcd ->   1 }T
T{   5  -5 gcd ->   5 }T
T{   5  -4 gcd ->   1 }T
T{   5  -3 gcd ->   1 }T
T{   5  -2 gcd ->   1 }T
T{   5  -1 gcd ->   1 }T
T{   5   0 gcd ->   5 }T
T{   5   1 gcd ->   1 }T
T{   5   2 gcd ->   1 }T
T{   5   3 gcd ->   1 }T
T{   5   4 gcd ->   1 }T
T{   5   5 gcd ->   5 }T
T{   5   6 gcd ->   1 }T
T{   5   7 gcd ->   1 }T
T{   5   8 gcd ->   1 }T
T{   5   9 gcd ->   1 }T
T{   5  10 gcd ->   5 }T
T{   5  11 gcd ->   1 }T
T{   5  12 gcd ->   1 }T
T{   6 -12 gcd ->   6 }T
T{   6 -11 gcd ->   1 }T
T{   6 -10 gcd ->   2 }T
T{   6  -9 gcd ->   3 }T
T{   6  -8 gcd ->   2 }T
T{   6  -7 gcd ->   1 }T
T{   6  -6 gcd ->   6 }T
T{   6  -5 gcd ->   1 }T
T{   6  -4 gcd ->   2 }T
T{   6  -3 gcd ->   3 }T
T{   6  -2 gcd ->   2 }T
T{   6  -1 gcd ->   1 }T
T{   6   0 gcd ->   6 }T
T{   6   1 gcd ->   1 }T
T{   6   2 gcd ->   2 }T
T{   6   3 gcd ->   3 }T
T{   6   4 gcd ->   2 }T
T{   6   5 gcd ->   1 }T
T{   6   6 gcd ->   6 }T
T{   6   7 gcd ->   1 }T
T{   6   8 gcd ->   2 }T
T{   6   9 gcd ->   3 }T
T{   6  10 gcd ->   2 }T
T{   6  11 gcd ->   1 }T
T{   6  12 gcd ->   6 }T
T{   7 -12 gcd ->   1 }T
T{   7 -11 gcd ->   1 }T
T{   7 -10 gcd ->   1 }T
T{   7  -9 gcd ->   1 }T
T{   7  -8 gcd ->   1 }T
T{   7  -7 gcd ->   7 }T
T{   7  -6 gcd ->   1 }T
T{   7  -5 gcd ->   1 }T
T{   7  -4 gcd ->   1 }T
T{   7  -3 gcd ->   1 }T
T{   7  -2 gcd ->   1 }T
T{   7  -1 gcd ->   1 }T
T{   7   0 gcd ->   7 }T
T{   7   1 gcd ->   1 }T
T{   7   2 gcd ->   1 }T
T{   7   3 gcd ->   1 }T
T{   7   4 gcd ->   1 }T
T{   7   5 gcd ->   1 }T
T{   7   6 gcd ->   1 }T
T{   7   7 gcd ->   7 }T
T{   7   8 gcd ->   1 }T
T{   7   9 gcd ->   1 }T
T{   7  10 gcd ->   1 }T
T{   7  11 gcd ->   1 }T
T{   7  12 gcd ->   1 }T
T{   8 -12 gcd ->   4 }T
T{   8 -11 gcd ->   1 }T
T{   8 -10 gcd ->   2 }T
T{   8  -9 gcd ->   1 }T
T{   8  -8 gcd ->   8 }T
T{   8  -7 gcd ->   1 }T
T{   8  -6 gcd ->   2 }T
T{   8  -5 gcd ->   1 }T
T{   8  -4 gcd ->   4 }T
T{   8  -3 gcd ->   1 }T
T{   8  -2 gcd ->   2 }T
T{   8  -1 gcd ->   1 }T
T{   8   0 gcd ->   8 }T
T{   8   1 gcd ->   1 }T
T{   8   2 gcd ->   2 }T
T{   8   3 gcd ->   1 }T
T{   8   4 gcd ->   4 }T
T{   8   5 gcd ->   1 }T
T{   8   6 gcd ->   2 }T
T{   8   7 gcd ->   1 }T
T{   8   8 gcd ->   8 }T
T{   8   9 gcd ->   1 }T
T{   8  10 gcd ->   2 }T
T{   8  11 gcd ->   1 }T
T{   8  12 gcd ->   4 }T
T{   9 -12 gcd ->   3 }T
T{   9 -11 gcd ->   1 }T
T{   9 -10 gcd ->   1 }T
T{   9  -9 gcd ->   9 }T
T{   9  -8 gcd ->   1 }T
T{   9  -7 gcd ->   1 }T
T{   9  -6 gcd ->   3 }T
T{   9  -5 gcd ->   1 }T
T{   9  -4 gcd ->   1 }T
T{   9  -3 gcd ->   3 }T
T{   9  -2 gcd ->   1 }T
T{   9  -1 gcd ->   1 }T
T{   9   0 gcd ->   9 }T
T{   9   1 gcd ->   1 }T
T{   9   2 gcd ->   1 }T
T{   9   3 gcd ->   3 }T
T{   9   4 gcd ->   1 }T
T{   9   5 gcd ->   1 }T
T{   9   6 gcd ->   3 }T
T{   9   7 gcd ->   1 }T
T{   9   8 gcd ->   1 }T
T{   9   9 gcd ->   9 }T
T{   9  10 gcd ->   1 }T
T{   9  11 gcd ->   1 }T
T{   9  12 gcd ->   3 }T
T{  10 -12 gcd ->   2 }T
T{  10 -11 gcd ->   1 }T
T{  10 -10 gcd ->  10 }T
T{  10  -9 gcd ->   1 }T
T{  10  -8 gcd ->   2 }T
T{  10  -7 gcd ->   1 }T
T{  10  -6 gcd ->   2 }T
T{  10  -5 gcd ->   5 }T
T{  10  -4 gcd ->   2 }T
T{  10  -3 gcd ->   1 }T
T{  10  -2 gcd ->   2 }T
T{  10  -1 gcd ->   1 }T
T{  10   0 gcd ->  10 }T
T{  10   1 gcd ->   1 }T
T{  10   2 gcd ->   2 }T
T{  10   3 gcd ->   1 }T
T{  10   4 gcd ->   2 }T
T{  10   5 gcd ->   5 }T
T{  10   6 gcd ->   2 }T
T{  10   7 gcd ->   1 }T
T{  10   8 gcd ->   2 }T
T{  10   9 gcd ->   1 }T
T{  10  10 gcd ->  10 }T
T{  10  11 gcd ->   1 }T
T{  10  12 gcd ->   2 }T
T{  11 -12 gcd ->   1 }T
T{  11 -11 gcd ->  11 }T
T{  11 -10 gcd ->   1 }T
T{  11  -9 gcd ->   1 }T
T{  11  -8 gcd ->   1 }T
T{  11  -7 gcd ->   1 }T
T{  11  -6 gcd ->   1 }T
T{  11  -5 gcd ->   1 }T
T{  11  -4 gcd ->   1 }T
T{  11  -3 gcd ->   1 }T
T{  11  -2 gcd ->   1 }T
T{  11  -1 gcd ->   1 }T
T{  11   0 gcd ->  11 }T
T{  11   1 gcd ->   1 }T
T{  11   2 gcd ->   1 }T
T{  11   3 gcd ->   1 }T
T{  11   4 gcd ->   1 }T
T{  11   5 gcd ->   1 }T
T{  11   6 gcd ->   1 }T
T{  11   7 gcd ->   1 }T
T{  11   8 gcd ->   1 }T
T{  11   9 gcd ->   1 }T
T{  11  10 gcd ->   1 }T
T{  11  11 gcd ->  11 }T
T{  11  12 gcd ->   1 }T
T{  12 -12 gcd ->  12 }T
T{  12 -11 gcd ->   1 }T
T{  12 -10 gcd ->   2 }T
T{  12  -9 gcd ->   3 }T
T{  12  -8 gcd ->   4 }T
T{  12  -7 gcd ->   1 }T
T{  12  -6 gcd ->   6 }T
T{  12  -5 gcd ->   1 }T
T{  12  -4 gcd ->   4 }T
T{  12  -3 gcd ->   3 }T
T{  12  -2 gcd ->   2 }T
T{  12  -1 gcd ->   1 }T
T{  12   0 gcd ->  12 }T
T{  12   1 gcd ->   1 }T
T{  12   2 gcd ->   2 }T
T{  12   3 gcd ->   3 }T
T{  12   4 gcd ->   4 }T
T{  12   5 gcd ->   1 }T
T{  12   6 gcd ->   6 }T
T{  12   7 gcd ->   1 }T
T{  12   8 gcd ->   4 }T
T{  12   9 gcd ->   3 }T
T{  12  10 gcd ->   2 }T
T{  12  11 gcd ->   1 }T
T{  12  12 gcd ->  12 }T

T{   6  21 lcm ->  42 }T

T{ -12 -12 extended-gcd ->   0  -1  12 }T
T{ -11 -12 extended-gcd ->   1  -1   1 }T
T{ -10 -12 extended-gcd ->   1  -1   2 }T
T{  -9 -12 extended-gcd ->   1  -1   3 }T
T{  -8 -12 extended-gcd ->   1  -1   4 }T
T{  -7 -12 extended-gcd ->   5  -3   1 }T
T{  -6 -12 extended-gcd ->  -1   0   6 }T
T{  -5 -12 extended-gcd ->  -5   2   1 }T
T{  -4 -12 extended-gcd ->  -1   0   4 }T
T{  -3 -12 extended-gcd ->  -1   0   3 }T
T{  -2 -12 extended-gcd ->  -1   0   2 }T
T{  -1 -12 extended-gcd ->  -1   0   1 }T
T{   0 -12 extended-gcd ->   0  -1  12 }T
T{   1 -12 extended-gcd ->   1   0   1 }T
T{   2 -12 extended-gcd ->   1   0   2 }T
T{   3 -12 extended-gcd ->   1   0   3 }T
T{   4 -12 extended-gcd ->   1   0   4 }T
T{   5 -12 extended-gcd ->   5   2   1 }T
T{   6 -12 extended-gcd ->   1   0   6 }T
T{   7 -12 extended-gcd ->  -5  -3   1 }T
T{   8 -12 extended-gcd ->  -1  -1   4 }T
T{   9 -12 extended-gcd ->  -1  -1   3 }T
T{  10 -12 extended-gcd ->  -1  -1   2 }T
T{  11 -12 extended-gcd ->  -1  -1   1 }T
T{  12 -12 extended-gcd ->   0  -1  12 }T
T{ -12 -11 extended-gcd ->  -1   1   1 }T
T{ -11 -11 extended-gcd ->   0  -1  11 }T
T{ -10 -11 extended-gcd ->   1  -1   1 }T
T{  -9 -11 extended-gcd ->  -5   4   1 }T
T{  -8 -11 extended-gcd ->   4  -3   1 }T
T{  -7 -11 extended-gcd ->   3  -2   1 }T
T{  -6 -11 extended-gcd ->  -2   1   1 }T
T{  -5 -11 extended-gcd ->   2  -1   1 }T
T{  -4 -11 extended-gcd ->  -3   1   1 }T
T{  -3 -11 extended-gcd ->  -4   1   1 }T
T{  -2 -11 extended-gcd ->   5  -1   1 }T
T{  -1 -11 extended-gcd ->  -1   0   1 }T
T{   0 -11 extended-gcd ->   0  -1  11 }T
T{   1 -11 extended-gcd ->   1   0   1 }T
T{   2 -11 extended-gcd ->  -5  -1   1 }T
T{   3 -11 extended-gcd ->   4   1   1 }T
T{   4 -11 extended-gcd ->   3   1   1 }T
T{   5 -11 extended-gcd ->  -2  -1   1 }T
T{   6 -11 extended-gcd ->   2   1   1 }T
T{   7 -11 extended-gcd ->  -3  -2   1 }T
T{   8 -11 extended-gcd ->  -4  -3   1 }T
T{   9 -11 extended-gcd ->   5   4   1 }T
T{  10 -11 extended-gcd ->  -1  -1   1 }T
T{  11 -11 extended-gcd ->   0  -1  11 }T
T{  12 -11 extended-gcd ->   1   1   1 }T
T{ -12 -10 extended-gcd ->  -1   1   2 }T
T{ -11 -10 extended-gcd ->  -1   1   1 }T
T{ -10 -10 extended-gcd ->   0  -1  10 }T
T{  -9 -10 extended-gcd ->   1  -1   1 }T
T{  -8 -10 extended-gcd ->   1  -1   2 }T
T{  -7 -10 extended-gcd ->  -3   2   1 }T
T{  -6 -10 extended-gcd ->  -2   1   2 }T
T{  -5 -10 extended-gcd ->  -1   0   5 }T
T{  -4 -10 extended-gcd ->   2  -1   2 }T
T{  -3 -10 extended-gcd ->   3  -1   1 }T
T{  -2 -10 extended-gcd ->  -1   0   2 }T
T{  -1 -10 extended-gcd ->  -1   0   1 }T
T{   0 -10 extended-gcd ->   0  -1  10 }T
T{   1 -10 extended-gcd ->   1   0   1 }T
T{   2 -10 extended-gcd ->   1   0   2 }T
T{   3 -10 extended-gcd ->  -3  -1   1 }T
T{   4 -10 extended-gcd ->  -2  -1   2 }T
T{   5 -10 extended-gcd ->   1   0   5 }T
T{   6 -10 extended-gcd ->   2   1   2 }T
T{   7 -10 extended-gcd ->   3   2   1 }T
T{   8 -10 extended-gcd ->  -1  -1   2 }T
T{   9 -10 extended-gcd ->  -1  -1   1 }T
T{  10 -10 extended-gcd ->   0  -1  10 }T
T{  11 -10 extended-gcd ->   1   1   1 }T
T{  12 -10 extended-gcd ->   1   1   2 }T
T{ -12  -9 extended-gcd ->  -1   1   3 }T
T{ -11  -9 extended-gcd ->   4  -5   1 }T
T{ -10  -9 extended-gcd ->  -1   1   1 }T
T{  -9  -9 extended-gcd ->   0  -1   9 }T
T{  -8  -9 extended-gcd ->   1  -1   1 }T
T{  -7  -9 extended-gcd ->  -4   3   1 }T
T{  -6  -9 extended-gcd ->   1  -1   3 }T
T{  -5  -9 extended-gcd ->  -2   1   1 }T
T{  -4  -9 extended-gcd ->   2  -1   1 }T
T{  -3  -9 extended-gcd ->  -1   0   3 }T
T{  -2  -9 extended-gcd ->   4  -1   1 }T
T{  -1  -9 extended-gcd ->  -1   0   1 }T
T{   0  -9 extended-gcd ->   0  -1   9 }T
T{   1  -9 extended-gcd ->   1   0   1 }T
T{   2  -9 extended-gcd ->  -4  -1   1 }T
T{   3  -9 extended-gcd ->   1   0   3 }T
T{   4  -9 extended-gcd ->  -2  -1   1 }T
T{   5  -9 extended-gcd ->   2   1   1 }T
T{   6  -9 extended-gcd ->  -1  -1   3 }T
T{   7  -9 extended-gcd ->   4   3   1 }T
T{   8  -9 extended-gcd ->  -1  -1   1 }T
T{   9  -9 extended-gcd ->   0  -1   9 }T
T{  10  -9 extended-gcd ->   1   1   1 }T
T{  11  -9 extended-gcd ->  -4  -5   1 }T
T{  12  -9 extended-gcd ->   1   1   3 }T
T{ -12  -8 extended-gcd ->  -1   1   4 }T
T{ -11  -8 extended-gcd ->  -3   4   1 }T
T{ -10  -8 extended-gcd ->  -1   1   2 }T
T{  -9  -8 extended-gcd ->  -1   1   1 }T
T{  -8  -8 extended-gcd ->   0  -1   8 }T
T{  -7  -8 extended-gcd ->   1  -1   1 }T
T{  -6  -8 extended-gcd ->   1  -1   2 }T
T{  -5  -8 extended-gcd ->   3  -2   1 }T
T{  -4  -8 extended-gcd ->  -1   0   4 }T
T{  -3  -8 extended-gcd ->  -3   1   1 }T
T{  -2  -8 extended-gcd ->  -1   0   2 }T
T{  -1  -8 extended-gcd ->  -1   0   1 }T
T{   0  -8 extended-gcd ->   0  -1   8 }T
T{   1  -8 extended-gcd ->   1   0   1 }T
T{   2  -8 extended-gcd ->   1   0   2 }T
T{   3  -8 extended-gcd ->   3   1   1 }T
T{   4  -8 extended-gcd ->   1   0   4 }T
T{   5  -8 extended-gcd ->  -3  -2   1 }T
T{   6  -8 extended-gcd ->  -1  -1   2 }T
T{   7  -8 extended-gcd ->  -1  -1   1 }T
T{   8  -8 extended-gcd ->   0  -1   8 }T
T{   9  -8 extended-gcd ->   1   1   1 }T
T{  10  -8 extended-gcd ->   1   1   2 }T
T{  11  -8 extended-gcd ->   3   4   1 }T
T{  12  -8 extended-gcd ->   1   1   4 }T
T{ -12  -7 extended-gcd ->  -3   5   1 }T
T{ -11  -7 extended-gcd ->  -2   3   1 }T
T{ -10  -7 extended-gcd ->   2  -3   1 }T
T{  -9  -7 extended-gcd ->   3  -4   1 }T
T{  -8  -7 extended-gcd ->  -1   1   1 }T
T{  -7  -7 extended-gcd ->   0  -1   7 }T
T{  -6  -7 extended-gcd ->   1  -1   1 }T
T{  -5  -7 extended-gcd ->  -3   2   1 }T
T{  -4  -7 extended-gcd ->  -2   1   1 }T
T{  -3  -7 extended-gcd ->   2  -1   1 }T
T{  -2  -7 extended-gcd ->   3  -1   1 }T
T{  -1  -7 extended-gcd ->  -1   0   1 }T
T{   0  -7 extended-gcd ->   0  -1   7 }T
T{   1  -7 extended-gcd ->   1   0   1 }T
T{   2  -7 extended-gcd ->  -3  -1   1 }T
T{   3  -7 extended-gcd ->  -2  -1   1 }T
T{   4  -7 extended-gcd ->   2   1   1 }T
T{   5  -7 extended-gcd ->   3   2   1 }T
T{   6  -7 extended-gcd ->  -1  -1   1 }T
T{   7  -7 extended-gcd ->   0  -1   7 }T
T{   8  -7 extended-gcd ->   1   1   1 }T
T{   9  -7 extended-gcd ->  -3  -4   1 }T
T{  10  -7 extended-gcd ->  -2  -3   1 }T
T{  11  -7 extended-gcd ->   2   3   1 }T
T{  12  -7 extended-gcd ->   3   5   1 }T
T{ -12  -6 extended-gcd ->   0  -1   6 }T
T{ -11  -6 extended-gcd ->   1  -2   1 }T
T{ -10  -6 extended-gcd ->   1  -2   2 }T
T{  -9  -6 extended-gcd ->  -1   1   3 }T
T{  -8  -6 extended-gcd ->  -1   1   2 }T
T{  -7  -6 extended-gcd ->  -1   1   1 }T
T{  -6  -6 extended-gcd ->   0  -1   6 }T
T{  -5  -6 extended-gcd ->   1  -1   1 }T
T{  -4  -6 extended-gcd ->   1  -1   2 }T
T{  -3  -6 extended-gcd ->  -1   0   3 }T
T{  -2  -6 extended-gcd ->  -1   0   2 }T
T{  -1  -6 extended-gcd ->  -1   0   1 }T
T{   0  -6 extended-gcd ->   0  -1   6 }T
T{   1  -6 extended-gcd ->   1   0   1 }T
T{   2  -6 extended-gcd ->   1   0   2 }T
T{   3  -6 extended-gcd ->   1   0   3 }T
T{   4  -6 extended-gcd ->  -1  -1   2 }T
T{   5  -6 extended-gcd ->  -1  -1   1 }T
T{   6  -6 extended-gcd ->   0  -1   6 }T
T{   7  -6 extended-gcd ->   1   1   1 }T
T{   8  -6 extended-gcd ->   1   1   2 }T
T{   9  -6 extended-gcd ->   1   1   3 }T
T{  10  -6 extended-gcd ->  -1  -2   2 }T
T{  11  -6 extended-gcd ->  -1  -2   1 }T
T{  12  -6 extended-gcd ->   0  -1   6 }T
T{ -12  -5 extended-gcd ->   2  -5   1 }T
T{ -11  -5 extended-gcd ->  -1   2   1 }T
T{ -10  -5 extended-gcd ->   0  -1   5 }T
T{  -9  -5 extended-gcd ->   1  -2   1 }T
T{  -8  -5 extended-gcd ->  -2   3   1 }T
T{  -7  -5 extended-gcd ->   2  -3   1 }T
T{  -6  -5 extended-gcd ->  -1   1   1 }T
T{  -5  -5 extended-gcd ->   0  -1   5 }T
T{  -4  -5 extended-gcd ->   1  -1   1 }T
T{  -3  -5 extended-gcd ->  -2   1   1 }T
T{  -2  -5 extended-gcd ->   2  -1   1 }T
T{  -1  -5 extended-gcd ->  -1   0   1 }T
T{   0  -5 extended-gcd ->   0  -1   5 }T
T{   1  -5 extended-gcd ->   1   0   1 }T
T{   2  -5 extended-gcd ->  -2  -1   1 }T
T{   3  -5 extended-gcd ->   2   1   1 }T
T{   4  -5 extended-gcd ->  -1  -1   1 }T
T{   5  -5 extended-gcd ->   0  -1   5 }T
T{   6  -5 extended-gcd ->   1   1   1 }T
T{   7  -5 extended-gcd ->  -2  -3   1 }T
T{   8  -5 extended-gcd ->   2   3   1 }T
T{   9  -5 extended-gcd ->  -1  -2   1 }T
T{  10  -5 extended-gcd ->   0  -1   5 }T
T{  11  -5 extended-gcd ->   1   2   1 }T
T{  12  -5 extended-gcd ->  -2  -5   1 }T
T{ -12  -4 extended-gcd ->   0  -1   4 }T
T{ -11  -4 extended-gcd ->   1  -3   1 }T
T{ -10  -4 extended-gcd ->  -1   2   2 }T
T{  -9  -4 extended-gcd ->  -1   2   1 }T
T{  -8  -4 extended-gcd ->   0  -1   4 }T
T{  -7  -4 extended-gcd ->   1  -2   1 }T
T{  -6  -4 extended-gcd ->  -1   1   2 }T
T{  -5  -4 extended-gcd ->  -1   1   1 }T
T{  -4  -4 extended-gcd ->   0  -1   4 }T
T{  -3  -4 extended-gcd ->   1  -1   1 }T
T{  -2  -4 extended-gcd ->  -1   0   2 }T
T{  -1  -4 extended-gcd ->  -1   0   1 }T
T{   0  -4 extended-gcd ->   0  -1   4 }T
T{   1  -4 extended-gcd ->   1   0   1 }T
T{   2  -4 extended-gcd ->   1   0   2 }T
T{   3  -4 extended-gcd ->  -1  -1   1 }T
T{   4  -4 extended-gcd ->   0  -1   4 }T
T{   5  -4 extended-gcd ->   1   1   1 }T
T{   6  -4 extended-gcd ->   1   1   2 }T
T{   7  -4 extended-gcd ->  -1  -2   1 }T
T{   8  -4 extended-gcd ->   0  -1   4 }T
T{   9  -4 extended-gcd ->   1   2   1 }T
T{  10  -4 extended-gcd ->   1   2   2 }T
T{  11  -4 extended-gcd ->  -1  -3   1 }T
T{  12  -4 extended-gcd ->   0  -1   4 }T
T{ -12  -3 extended-gcd ->   0  -1   3 }T
T{ -11  -3 extended-gcd ->   1  -4   1 }T
T{ -10  -3 extended-gcd ->  -1   3   1 }T
T{  -9  -3 extended-gcd ->   0  -1   3 }T
T{  -8  -3 extended-gcd ->   1  -3   1 }T
T{  -7  -3 extended-gcd ->  -1   2   1 }T
T{  -6  -3 extended-gcd ->   0  -1   3 }T
T{  -5  -3 extended-gcd ->   1  -2   1 }T
T{  -4  -3 extended-gcd ->  -1   1   1 }T
T{  -3  -3 extended-gcd ->   0  -1   3 }T
T{  -2  -3 extended-gcd ->   1  -1   1 }T
T{  -1  -3 extended-gcd ->  -1   0   1 }T
T{   0  -3 extended-gcd ->   0  -1   3 }T
T{   1  -3 extended-gcd ->   1   0   1 }T
T{   2  -3 extended-gcd ->  -1  -1   1 }T
T{   3  -3 extended-gcd ->   0  -1   3 }T
T{   4  -3 extended-gcd ->   1   1   1 }T
T{   5  -3 extended-gcd ->  -1  -2   1 }T
T{   6  -3 extended-gcd ->   0  -1   3 }T
T{   7  -3 extended-gcd ->   1   2   1 }T
T{   8  -3 extended-gcd ->  -1  -3   1 }T
T{   9  -3 extended-gcd ->   0  -1   3 }T
T{  10  -3 extended-gcd ->   1   3   1 }T
T{  11  -3 extended-gcd ->  -1  -4   1 }T
T{  12  -3 extended-gcd ->   0  -1   3 }T
T{ -12  -2 extended-gcd ->   0  -1   2 }T
T{ -11  -2 extended-gcd ->  -1   5   1 }T
T{ -10  -2 extended-gcd ->   0  -1   2 }T
T{  -9  -2 extended-gcd ->  -1   4   1 }T
T{  -8  -2 extended-gcd ->   0  -1   2 }T
T{  -7  -2 extended-gcd ->  -1   3   1 }T
T{  -6  -2 extended-gcd ->   0  -1   2 }T
T{  -5  -2 extended-gcd ->  -1   2   1 }T
T{  -4  -2 extended-gcd ->   0  -1   2 }T
T{  -3  -2 extended-gcd ->  -1   1   1 }T
T{  -2  -2 extended-gcd ->   0  -1   2 }T
T{  -1  -2 extended-gcd ->  -1   0   1 }T
T{   0  -2 extended-gcd ->   0  -1   2 }T
T{   1  -2 extended-gcd ->   1   0   1 }T
T{   2  -2 extended-gcd ->   0  -1   2 }T
T{   3  -2 extended-gcd ->   1   1   1 }T
T{   4  -2 extended-gcd ->   0  -1   2 }T
T{   5  -2 extended-gcd ->   1   2   1 }T
T{   6  -2 extended-gcd ->   0  -1   2 }T
T{   7  -2 extended-gcd ->   1   3   1 }T
T{   8  -2 extended-gcd ->   0  -1   2 }T
T{   9  -2 extended-gcd ->   1   4   1 }T
T{  10  -2 extended-gcd ->   0  -1   2 }T
T{  11  -2 extended-gcd ->   1   5   1 }T
T{  12  -2 extended-gcd ->   0  -1   2 }T
T{ -12  -1 extended-gcd ->   0  -1   1 }T
T{ -11  -1 extended-gcd ->   0  -1   1 }T
T{ -10  -1 extended-gcd ->   0  -1   1 }T
T{  -9  -1 extended-gcd ->   0  -1   1 }T
T{  -8  -1 extended-gcd ->   0  -1   1 }T
T{  -7  -1 extended-gcd ->   0  -1   1 }T
T{  -6  -1 extended-gcd ->   0  -1   1 }T
T{  -5  -1 extended-gcd ->   0  -1   1 }T
T{  -4  -1 extended-gcd ->   0  -1   1 }T
T{  -3  -1 extended-gcd ->   0  -1   1 }T
T{  -2  -1 extended-gcd ->   0  -1   1 }T
T{  -1  -1 extended-gcd ->   0  -1   1 }T
T{   0  -1 extended-gcd ->   0  -1   1 }T
T{   1  -1 extended-gcd ->   0  -1   1 }T
T{   2  -1 extended-gcd ->   0  -1   1 }T
T{   3  -1 extended-gcd ->   0  -1   1 }T
T{   4  -1 extended-gcd ->   0  -1   1 }T
T{   5  -1 extended-gcd ->   0  -1   1 }T
T{   6  -1 extended-gcd ->   0  -1   1 }T
T{   7  -1 extended-gcd ->   0  -1   1 }T
T{   8  -1 extended-gcd ->   0  -1   1 }T
T{   9  -1 extended-gcd ->   0  -1   1 }T
T{  10  -1 extended-gcd ->   0  -1   1 }T
T{  11  -1 extended-gcd ->   0  -1   1 }T
T{  12  -1 extended-gcd ->   0  -1   1 }T
T{ -12   0 extended-gcd ->  -1   0  12 }T
T{ -11   0 extended-gcd ->  -1   0  11 }T
T{ -10   0 extended-gcd ->  -1   0  10 }T
T{  -9   0 extended-gcd ->  -1   0   9 }T
T{  -8   0 extended-gcd ->  -1   0   8 }T
T{  -7   0 extended-gcd ->  -1   0   7 }T
T{  -6   0 extended-gcd ->  -1   0   6 }T
T{  -5   0 extended-gcd ->  -1   0   5 }T
T{  -4   0 extended-gcd ->  -1   0   4 }T
T{  -3   0 extended-gcd ->  -1   0   3 }T
T{  -2   0 extended-gcd ->  -1   0   2 }T
T{  -1   0 extended-gcd ->  -1   0   1 }T
T{   1   0 extended-gcd ->   1   0   1 }T
T{   2   0 extended-gcd ->   1   0   2 }T
T{   3   0 extended-gcd ->   1   0   3 }T
T{   4   0 extended-gcd ->   1   0   4 }T
T{   5   0 extended-gcd ->   1   0   5 }T
T{   6   0 extended-gcd ->   1   0   6 }T
T{   7   0 extended-gcd ->   1   0   7 }T
T{   8   0 extended-gcd ->   1   0   8 }T
T{   9   0 extended-gcd ->   1   0   9 }T
T{  10   0 extended-gcd ->   1   0  10 }T
T{  11   0 extended-gcd ->   1   0  11 }T
T{  12   0 extended-gcd ->   1   0  12 }T
T{ -12   1 extended-gcd ->   0   1   1 }T
T{ -11   1 extended-gcd ->   0   1   1 }T
T{ -10   1 extended-gcd ->   0   1   1 }T
T{  -9   1 extended-gcd ->   0   1   1 }T
T{  -8   1 extended-gcd ->   0   1   1 }T
T{  -7   1 extended-gcd ->   0   1   1 }T
T{  -6   1 extended-gcd ->   0   1   1 }T
T{  -5   1 extended-gcd ->   0   1   1 }T
T{  -4   1 extended-gcd ->   0   1   1 }T
T{  -3   1 extended-gcd ->   0   1   1 }T
T{  -2   1 extended-gcd ->   0   1   1 }T
T{  -1   1 extended-gcd ->   0   1   1 }T
T{   0   1 extended-gcd ->   0   1   1 }T
T{   1   1 extended-gcd ->   0   1   1 }T
T{   2   1 extended-gcd ->   0   1   1 }T
T{   3   1 extended-gcd ->   0   1   1 }T
T{   4   1 extended-gcd ->   0   1   1 }T
T{   5   1 extended-gcd ->   0   1   1 }T
T{   6   1 extended-gcd ->   0   1   1 }T
T{   7   1 extended-gcd ->   0   1   1 }T
T{   8   1 extended-gcd ->   0   1   1 }T
T{   9   1 extended-gcd ->   0   1   1 }T
T{  10   1 extended-gcd ->   0   1   1 }T
T{  11   1 extended-gcd ->   0   1   1 }T
T{  12   1 extended-gcd ->   0   1   1 }T
T{ -12   2 extended-gcd ->   0   1   2 }T
T{ -11   2 extended-gcd ->  -1  -5   1 }T
T{ -10   2 extended-gcd ->   0   1   2 }T
T{  -9   2 extended-gcd ->  -1  -4   1 }T
T{  -8   2 extended-gcd ->   0   1   2 }T
T{  -7   2 extended-gcd ->  -1  -3   1 }T
T{  -6   2 extended-gcd ->   0   1   2 }T
T{  -5   2 extended-gcd ->  -1  -2   1 }T
T{  -4   2 extended-gcd ->   0   1   2 }T
T{  -3   2 extended-gcd ->  -1  -1   1 }T
T{  -2   2 extended-gcd ->   0   1   2 }T
T{  -1   2 extended-gcd ->  -1   0   1 }T
T{   0   2 extended-gcd ->   0   1   2 }T
T{   1   2 extended-gcd ->   1   0   1 }T
T{   2   2 extended-gcd ->   0   1   2 }T
T{   3   2 extended-gcd ->   1  -1   1 }T
T{   4   2 extended-gcd ->   0   1   2 }T
T{   5   2 extended-gcd ->   1  -2   1 }T
T{   6   2 extended-gcd ->   0   1   2 }T
T{   7   2 extended-gcd ->   1  -3   1 }T
T{   8   2 extended-gcd ->   0   1   2 }T
T{   9   2 extended-gcd ->   1  -4   1 }T
T{  10   2 extended-gcd ->   0   1   2 }T
T{  11   2 extended-gcd ->   1  -5   1 }T
T{  12   2 extended-gcd ->   0   1   2 }T
T{ -12   3 extended-gcd ->   0   1   3 }T
T{ -11   3 extended-gcd ->   1   4   1 }T
T{ -10   3 extended-gcd ->  -1  -3   1 }T
T{  -9   3 extended-gcd ->   0   1   3 }T
T{  -8   3 extended-gcd ->   1   3   1 }T
T{  -7   3 extended-gcd ->  -1  -2   1 }T
T{  -6   3 extended-gcd ->   0   1   3 }T
T{  -5   3 extended-gcd ->   1   2   1 }T
T{  -4   3 extended-gcd ->  -1  -1   1 }T
T{  -3   3 extended-gcd ->   0   1   3 }T
T{  -2   3 extended-gcd ->   1   1   1 }T
T{  -1   3 extended-gcd ->  -1   0   1 }T
T{   0   3 extended-gcd ->   0   1   3 }T
T{   1   3 extended-gcd ->   1   0   1 }T
T{   2   3 extended-gcd ->  -1   1   1 }T
T{   3   3 extended-gcd ->   0   1   3 }T
T{   4   3 extended-gcd ->   1  -1   1 }T
T{   5   3 extended-gcd ->  -1   2   1 }T
T{   6   3 extended-gcd ->   0   1   3 }T
T{   7   3 extended-gcd ->   1  -2   1 }T
T{   8   3 extended-gcd ->  -1   3   1 }T
T{   9   3 extended-gcd ->   0   1   3 }T
T{  10   3 extended-gcd ->   1  -3   1 }T
T{  11   3 extended-gcd ->  -1   4   1 }T
T{  12   3 extended-gcd ->   0   1   3 }T
T{ -12   4 extended-gcd ->   0   1   4 }T
T{ -11   4 extended-gcd ->   1   3   1 }T
T{ -10   4 extended-gcd ->  -1  -2   2 }T
T{  -9   4 extended-gcd ->  -1  -2   1 }T
T{  -8   4 extended-gcd ->   0   1   4 }T
T{  -7   4 extended-gcd ->   1   2   1 }T
T{  -6   4 extended-gcd ->  -1  -1   2 }T
T{  -5   4 extended-gcd ->  -1  -1   1 }T
T{  -4   4 extended-gcd ->   0   1   4 }T
T{  -3   4 extended-gcd ->   1   1   1 }T
T{  -2   4 extended-gcd ->  -1   0   2 }T
T{  -1   4 extended-gcd ->  -1   0   1 }T
T{   0   4 extended-gcd ->   0   1   4 }T
T{   1   4 extended-gcd ->   1   0   1 }T
T{   2   4 extended-gcd ->   1   0   2 }T
T{   3   4 extended-gcd ->  -1   1   1 }T
T{   4   4 extended-gcd ->   0   1   4 }T
T{   5   4 extended-gcd ->   1  -1   1 }T
T{   6   4 extended-gcd ->   1  -1   2 }T
T{   7   4 extended-gcd ->  -1   2   1 }T
T{   8   4 extended-gcd ->   0   1   4 }T
T{   9   4 extended-gcd ->   1  -2   1 }T
T{  10   4 extended-gcd ->   1  -2   2 }T
T{  11   4 extended-gcd ->  -1   3   1 }T
T{  12   4 extended-gcd ->   0   1   4 }T
T{ -12   5 extended-gcd ->   2   5   1 }T
T{ -11   5 extended-gcd ->  -1  -2   1 }T
T{ -10   5 extended-gcd ->   0   1   5 }T
T{  -9   5 extended-gcd ->   1   2   1 }T
T{  -8   5 extended-gcd ->  -2  -3   1 }T
T{  -7   5 extended-gcd ->   2   3   1 }T
T{  -6   5 extended-gcd ->  -1  -1   1 }T
T{  -5   5 extended-gcd ->   0   1   5 }T
T{  -4   5 extended-gcd ->   1   1   1 }T
T{  -3   5 extended-gcd ->  -2  -1   1 }T
T{  -2   5 extended-gcd ->   2   1   1 }T
T{  -1   5 extended-gcd ->  -1   0   1 }T
T{   0   5 extended-gcd ->   0   1   5 }T
T{   1   5 extended-gcd ->   1   0   1 }T
T{   2   5 extended-gcd ->  -2   1   1 }T
T{   3   5 extended-gcd ->   2  -1   1 }T
T{   4   5 extended-gcd ->  -1   1   1 }T
T{   5   5 extended-gcd ->   0   1   5 }T
T{   6   5 extended-gcd ->   1  -1   1 }T
T{   7   5 extended-gcd ->  -2   3   1 }T
T{   8   5 extended-gcd ->   2  -3   1 }T
T{   9   5 extended-gcd ->  -1   2   1 }T
T{  10   5 extended-gcd ->   0   1   5 }T
T{  11   5 extended-gcd ->   1  -2   1 }T
T{  12   5 extended-gcd ->  -2   5   1 }T
T{ -12   6 extended-gcd ->   0   1   6 }T
T{ -11   6 extended-gcd ->   1   2   1 }T
T{ -10   6 extended-gcd ->   1   2   2 }T
T{  -9   6 extended-gcd ->  -1  -1   3 }T
T{  -8   6 extended-gcd ->  -1  -1   2 }T
T{  -7   6 extended-gcd ->  -1  -1   1 }T
T{  -6   6 extended-gcd ->   0   1   6 }T
T{  -5   6 extended-gcd ->   1   1   1 }T
T{  -4   6 extended-gcd ->   1   1   2 }T
T{  -3   6 extended-gcd ->  -1   0   3 }T
T{  -2   6 extended-gcd ->  -1   0   2 }T
T{  -1   6 extended-gcd ->  -1   0   1 }T
T{   0   6 extended-gcd ->   0   1   6 }T
T{   1   6 extended-gcd ->   1   0   1 }T
T{   2   6 extended-gcd ->   1   0   2 }T
T{   3   6 extended-gcd ->   1   0   3 }T
T{   4   6 extended-gcd ->  -1   1   2 }T
T{   5   6 extended-gcd ->  -1   1   1 }T
T{   6   6 extended-gcd ->   0   1   6 }T
T{   7   6 extended-gcd ->   1  -1   1 }T
T{   8   6 extended-gcd ->   1  -1   2 }T
T{   9   6 extended-gcd ->   1  -1   3 }T
T{  10   6 extended-gcd ->  -1   2   2 }T
T{  11   6 extended-gcd ->  -1   2   1 }T
T{  12   6 extended-gcd ->   0   1   6 }T
T{ -12   7 extended-gcd ->  -3  -5   1 }T
T{ -11   7 extended-gcd ->  -2  -3   1 }T
T{ -10   7 extended-gcd ->   2   3   1 }T
T{  -9   7 extended-gcd ->   3   4   1 }T
T{  -8   7 extended-gcd ->  -1  -1   1 }T
T{  -7   7 extended-gcd ->   0   1   7 }T
T{  -6   7 extended-gcd ->   1   1   1 }T
T{  -5   7 extended-gcd ->  -3  -2   1 }T
T{  -4   7 extended-gcd ->  -2  -1   1 }T
T{  -3   7 extended-gcd ->   2   1   1 }T
T{  -2   7 extended-gcd ->   3   1   1 }T
T{  -1   7 extended-gcd ->  -1   0   1 }T
T{   0   7 extended-gcd ->   0   1   7 }T
T{   1   7 extended-gcd ->   1   0   1 }T
T{   2   7 extended-gcd ->  -3   1   1 }T
T{   3   7 extended-gcd ->  -2   1   1 }T
T{   4   7 extended-gcd ->   2  -1   1 }T
T{   5   7 extended-gcd ->   3  -2   1 }T
T{   6   7 extended-gcd ->  -1   1   1 }T
T{   7   7 extended-gcd ->   0   1   7 }T
T{   8   7 extended-gcd ->   1  -1   1 }T
T{   9   7 extended-gcd ->  -3   4   1 }T
T{  10   7 extended-gcd ->  -2   3   1 }T
T{  11   7 extended-gcd ->   2  -3   1 }T
T{  12   7 extended-gcd ->   3  -5   1 }T
T{ -12   8 extended-gcd ->  -1  -1   4 }T
T{ -11   8 extended-gcd ->  -3  -4   1 }T
T{ -10   8 extended-gcd ->  -1  -1   2 }T
T{  -9   8 extended-gcd ->  -1  -1   1 }T
T{  -8   8 extended-gcd ->   0   1   8 }T
T{  -7   8 extended-gcd ->   1   1   1 }T
T{  -6   8 extended-gcd ->   1   1   2 }T
T{  -5   8 extended-gcd ->   3   2   1 }T
T{  -4   8 extended-gcd ->  -1   0   4 }T
T{  -3   8 extended-gcd ->  -3  -1   1 }T
T{  -2   8 extended-gcd ->  -1   0   2 }T
T{  -1   8 extended-gcd ->  -1   0   1 }T
T{   0   8 extended-gcd ->   0   1   8 }T
T{   1   8 extended-gcd ->   1   0   1 }T
T{   2   8 extended-gcd ->   1   0   2 }T
T{   3   8 extended-gcd ->   3  -1   1 }T
T{   4   8 extended-gcd ->   1   0   4 }T
T{   5   8 extended-gcd ->  -3   2   1 }T
T{   6   8 extended-gcd ->  -1   1   2 }T
T{   7   8 extended-gcd ->  -1   1   1 }T
T{   8   8 extended-gcd ->   0   1   8 }T
T{   9   8 extended-gcd ->   1  -1   1 }T
T{  10   8 extended-gcd ->   1  -1   2 }T
T{  11   8 extended-gcd ->   3  -4   1 }T
T{  12   8 extended-gcd ->   1  -1   4 }T
T{ -12   9 extended-gcd ->  -1  -1   3 }T
T{ -11   9 extended-gcd ->   4   5   1 }T
T{ -10   9 extended-gcd ->  -1  -1   1 }T
T{  -9   9 extended-gcd ->   0   1   9 }T
T{  -8   9 extended-gcd ->   1   1   1 }T
T{  -7   9 extended-gcd ->  -4  -3   1 }T
T{  -6   9 extended-gcd ->   1   1   3 }T
T{  -5   9 extended-gcd ->  -2  -1   1 }T
T{  -4   9 extended-gcd ->   2   1   1 }T
T{  -3   9 extended-gcd ->  -1   0   3 }T
T{  -2   9 extended-gcd ->   4   1   1 }T
T{  -1   9 extended-gcd ->  -1   0   1 }T
T{   0   9 extended-gcd ->   0   1   9 }T
T{   1   9 extended-gcd ->   1   0   1 }T
T{   2   9 extended-gcd ->  -4   1   1 }T
T{   3   9 extended-gcd ->   1   0   3 }T
T{   4   9 extended-gcd ->  -2   1   1 }T
T{   5   9 extended-gcd ->   2  -1   1 }T
T{   6   9 extended-gcd ->  -1   1   3 }T
T{   7   9 extended-gcd ->   4  -3   1 }T
T{   8   9 extended-gcd ->  -1   1   1 }T
T{   9   9 extended-gcd ->   0   1   9 }T
T{  10   9 extended-gcd ->   1  -1   1 }T
T{  11   9 extended-gcd ->  -4   5   1 }T
T{  12   9 extended-gcd ->   1  -1   3 }T
T{ -12  10 extended-gcd ->  -1  -1   2 }T
T{ -11  10 extended-gcd ->  -1  -1   1 }T
T{ -10  10 extended-gcd ->   0   1  10 }T
T{  -9  10 extended-gcd ->   1   1   1 }T
T{  -8  10 extended-gcd ->   1   1   2 }T
T{  -7  10 extended-gcd ->  -3  -2   1 }T
T{  -6  10 extended-gcd ->  -2  -1   2 }T
T{  -5  10 extended-gcd ->  -1   0   5 }T
T{  -4  10 extended-gcd ->   2   1   2 }T
T{  -3  10 extended-gcd ->   3   1   1 }T
T{  -2  10 extended-gcd ->  -1   0   2 }T
T{  -1  10 extended-gcd ->  -1   0   1 }T
T{   0  10 extended-gcd ->   0   1  10 }T
T{   1  10 extended-gcd ->   1   0   1 }T
T{   2  10 extended-gcd ->   1   0   2 }T
T{   3  10 extended-gcd ->  -3   1   1 }T
T{   4  10 extended-gcd ->  -2   1   2 }T
T{   5  10 extended-gcd ->   1   0   5 }T
T{   6  10 extended-gcd ->   2  -1   2 }T
T{   7  10 extended-gcd ->   3  -2   1 }T
T{   8  10 extended-gcd ->  -1   1   2 }T
T{   9  10 extended-gcd ->  -1   1   1 }T
T{  10  10 extended-gcd ->   0   1  10 }T
T{  11  10 extended-gcd ->   1  -1   1 }T
T{  12  10 extended-gcd ->   1  -1   2 }T
T{ -12  11 extended-gcd ->  -1  -1   1 }T
T{ -11  11 extended-gcd ->   0   1  11 }T
T{ -10  11 extended-gcd ->   1   1   1 }T
T{  -9  11 extended-gcd ->  -5  -4   1 }T
T{  -8  11 extended-gcd ->   4   3   1 }T
T{  -7  11 extended-gcd ->   3   2   1 }T
T{  -6  11 extended-gcd ->  -2  -1   1 }T
T{  -5  11 extended-gcd ->   2   1   1 }T
T{  -4  11 extended-gcd ->  -3  -1   1 }T
T{  -3  11 extended-gcd ->  -4  -1   1 }T
T{  -2  11 extended-gcd ->   5   1   1 }T
T{  -1  11 extended-gcd ->  -1   0   1 }T
T{   0  11 extended-gcd ->   0   1  11 }T
T{   1  11 extended-gcd ->   1   0   1 }T
T{   2  11 extended-gcd ->  -5   1   1 }T
T{   3  11 extended-gcd ->   4  -1   1 }T
T{   4  11 extended-gcd ->   3  -1   1 }T
T{   5  11 extended-gcd ->  -2   1   1 }T
T{   6  11 extended-gcd ->   2  -1   1 }T
T{   7  11 extended-gcd ->  -3   2   1 }T
T{   8  11 extended-gcd ->  -4   3   1 }T
T{   9  11 extended-gcd ->   5  -4   1 }T
T{  10  11 extended-gcd ->  -1   1   1 }T
T{  11  11 extended-gcd ->   0   1  11 }T
T{  12  11 extended-gcd ->   1  -1   1 }T
T{ -12  12 extended-gcd ->   0   1  12 }T
T{ -11  12 extended-gcd ->   1   1   1 }T
T{ -10  12 extended-gcd ->   1   1   2 }T
T{  -9  12 extended-gcd ->   1   1   3 }T
T{  -8  12 extended-gcd ->   1   1   4 }T
T{  -7  12 extended-gcd ->   5   3   1 }T
T{  -6  12 extended-gcd ->  -1   0   6 }T
T{  -5  12 extended-gcd ->  -5  -2   1 }T
T{  -4  12 extended-gcd ->  -1   0   4 }T
T{  -3  12 extended-gcd ->  -1   0   3 }T
T{  -2  12 extended-gcd ->  -1   0   2 }T
T{  -1  12 extended-gcd ->  -1   0   1 }T
T{   0  12 extended-gcd ->   0   1  12 }T
T{   1  12 extended-gcd ->   1   0   1 }T
T{   2  12 extended-gcd ->   1   0   2 }T
T{   3  12 extended-gcd ->   1   0   3 }T
T{   4  12 extended-gcd ->   1   0   4 }T
T{   5  12 extended-gcd ->   5  -2   1 }T
T{   6  12 extended-gcd ->   1   0   6 }T
T{   7  12 extended-gcd ->  -5   3   1 }T
T{   8  12 extended-gcd ->  -1   1   4 }T
T{   9  12 extended-gcd ->  -1   1   3 }T
T{  10  12 extended-gcd ->  -1   1   2 }T
T{  11  12 extended-gcd ->  -1   1   1 }T
T{  12  12 extended-gcd ->   0   1  12 }T

\ By Bézout's identity we have -9·240 + 47·46 = 2 = gcd(240, 46).
T{ 240  46 extended-gcd ->  -9  47   2 }T

: test-bezout's-identity { p q d a b } p a * q b * + d = ;
: test-extended-gcd
   20 -19 +do
   20 -19 +do i j and if
      T{ i j extended-gcd nip nip -> i j gcd }T
      T{ i j extended-gcd i j test-bezout's-identity -> true }T
   then loop loop ;
test-extended-gcd
