************************************************************************
file with basedata            : md80_.bas
initial value random generator: 25675
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  14
horizon                       :  106
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     12      0       16        1       16
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           6  10
   3        3          3           5   6   7
   4        3          3           5   8  10
   5        3          3           9  11  12
   6        3          2          11  13
   7        3          2           8  10
   8        3          3           9  11  12
   9        3          1          13
  10        3          1          12
  11        3          1          14
  12        3          1          14
  13        3          1          14
  14        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     3       7    4    0    2
         2     9       5    4    0    2
         3    10       5    3    6    0
  3      1     1      10    3    0    3
         2     1       9    2    8    0
         3     7       8    2    5    0
  4      1     1       3    7    0    9
         2     7       2    6    6    0
         3     8       2    3    0    7
  5      1     2       9   10    8    0
         2     9       7    9    7    0
         3    10       4    7    5    0
  6      1     4       9    8    6    0
         2     9       7    7    0    2
         3    10       4    4    5    0
  7      1     1       9    6    7    0
         2     4       9    5    6    0
         3     8       9    4    5    0
  8      1     5       9    4    4    0
         2     5       8    5    3    0
         3     7       5    4    0    4
  9      1     5       7    5    9    0
         2     9       6    4    0    5
         3    10       6    3    9    0
 10      1     1       7    7    0    6
         2     8       6    7    4    0
         3    10       4    4    0    4
 11      1     3       3    8    0    2
         2     5       2    4    0    1
         3     8       2    3    0    1
 12      1     9       8    3    0    9
         2     9      10    2    0   10
         3     9       8    4    3    0
 13      1     3      10    7    0    5
         2     8       8    7    5    0
         3     9       7    7    0    5
 14      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   25   20   38   25
************************************************************************
