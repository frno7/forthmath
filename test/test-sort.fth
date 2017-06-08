\ Copyright 2017 Fredrik Noring

require ttester.fth

require core/sort.fth

T{       0 sort> ->       }T
T{     0 1 sort> ->     0 }T
T{   1 2 2 sort> ->   2 1 }T
T{   2 1 2 sort> ->   2 1 }T
T{ 1 2 3 3 sort> -> 3 2 1 }T
T{ 1 3 2 3 sort> -> 3 2 1 }T
T{ 2 1 3 3 sort> -> 3 2 1 }T
T{ 3 1 2 3 sort> -> 3 2 1 }T
T{ 2 3 1 3 sort> -> 3 2 1 }T
T{ 3 2 1 3 sort> -> 3 2 1 }T

T{       0 sort< ->       }T
T{     0 1 sort< ->     0 }T
T{   1 2 2 sort< ->   1 2 }T
T{   2 1 2 sort< ->   1 2 }T
T{ 1 2 3 3 sort< -> 1 2 3 }T
T{ 1 3 2 3 sort< -> 1 2 3 }T
T{ 2 1 3 3 sort< -> 1 2 3 }T
T{ 3 1 2 3 sort< -> 1 2 3 }T
T{ 2 3 1 3 sort< -> 1 2 3 }T
T{ 3 2 1 3 sort< -> 1 2 3 }T

T{ 94 56 8 6 85 48 66 96 76 59 33 72 63 1 89 52 17 20 9 65 20 sort> ->
   96 94 89 85 76 72 66 65 63 59 56 52 48 33 20 17 9 8 6 1 }T

T{ 94 56 8 6 85 48 66 96 76 59 33 72 63 1 89 52 17 20 9 65 20 sort< ->
   1 6 8 9 17 20 33 48 52 56 59 63 65 66 72 76 85 89 94 96 }T
