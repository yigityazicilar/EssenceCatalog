************************************************************************
file with basedata            : md98_.bas
initial value random generator: 1257677109
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  14
horizon                       :  74
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     12      0       13        1       13
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           8  10  12
   3        3          3           5   9  10
   4        3          2           5   6
   5        3          3          11  12  13
   6        3          3           7  10  12
   7        3          3           8   9  11
   8        3          1          13
   9        3          1          13
  10        3          1          11
  11        3          1          14
  12        3          1          14
  13        3          1          14
  14        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     2       0    8    7   10
         2     6       0    5    7   10
         3     9       6    0    6    9
  3      1     1       0    8    6    6
         2     2       0    8    6    3
         3     2       7    0    4    2
  4      1     1       8    0    5    5
         2     6       0    6    4    4
         3     8       0    6    4    2
  5      1     1       8    0    7    5
         2     5       6    0    6    3
         3     5       0    8    6    3
  6      1     6       0    9    3    3
         2     7       1    0    3    3
         3     8       0    8    2    3
  7      1     1       0    3    8    8
         2     5       6    0    5    5
         3     7       0    3    3    5
  8      1     1       0    3    6    6
         2     4       7    0    6    4
         3     4       0    3    6    4
  9      1     2       6    0    7    3
         2     2       0    7    6    2
         3     6       7    0    4    1
 10      1     3       0    2    9    2
         2     5       7    0    8    1
         3     5       9    0    7    2
 11      1     2       0    9    9    7
         2     6       0    9    6    1
         3     6       8    0    5    4
 12      1     6       0    4   10    2
         2     8       8    0    9    2
         3    10       7    0    6    1
 13      1     1       3    0    5    8
         2     2       0    9    3    7
         3     4       0    1    2    7
 14      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   16   11   62   46
************************************************************************
