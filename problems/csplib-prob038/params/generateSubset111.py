#!/usr/bin/env python3
import sys

#  Take subsets of the famous 111 instance by taking the first n orders. 

n_orders=int(sys.argv[1])

slabSizes=[12, 14, 17, 18, 19, 20, 23, 24, 25, 26, 27, 28, 29, 30, 32, 35, 39, 42, 43, 44]

orderSize=[
4	,
22	,
9	,
5	,
8	,
3	,
3	,
4	,
7	,
7	,
3	,
2	,
2	,
8	,
5	,
7	,
4	,
7	,
5	,
7	,
8	,
3	,
25	,
14	,
3	,
22	,
19	,
19	,
22	,
22	,
22	,
20	,
22	,
5	,
4	,
10	,
26	,
17	,
20	,
16	,
10	,
19	,
10	,
10	,
23	,
22	,
26	,
27	,
22	,
27	,
22	,
22	,
13	,
14	,
16	,
26	,
26	,
27	,
22	,
20	,
26	,
22	,
13	,
19	,
20	,
16	,
15	,
17	,
10	,
20	,
5	,
26	,
19	,
15	,
10	,
10	,
13	,
13  ,
13	,
12	,
12	,
18	,
10	,
18	,
16	,
20	,
12	,
6	,
6	,
15	,
15	,
15	,
21	,
30	,
30	,
30	,
30	,
23	,
15	,
15	,
27	,
27	,
27	,
27	,
27	,
27	,
27	,
27	,
27	,
10	,
3
]

colour=[
1,
2,
3,
4,
5,
6,
4,
7,
4,
8,
6,
6,
4,
9,
10,
11,
7,
11,
10,
11,
9,
1,
12,
13,
6,
14,
15,
15,
16,
17,
18,
19,
20,
21,
22,
23,
24,
25,
26,
27,
28,
29,
30,
31,
32,
33,
34,
35,
36,
37,
38,
39,
40,
41,
27	,
34,
42,
35,
36,
43,
24	,
44,
45,
46,
47,
48,
49,
50,
28	,
51	,
52,
24	,
53,
54,
55,
56,
57,
58,
59,
60,
61,
62,
63,
64,
65,
66,
67,
68,
68,
69,
70,
70,
71,
72,
73,
74,
75,
76,
77,
78,
79,
80,
81,
82,
83,
84,
79,
85,
86,
87,
88
]

print("language Essence 1.2.0")

print("letting n_orders be "+str(n_orders))
print("letting n_colours be "+str(max(colour)))
print("letting col_per_slab be 2")

orderSizeSub=[ orderSize[i] for i in range(n_orders)]
colourSub=[ colour[i] for i in range(n_orders)]

print("letting ordSize be function (")

comma=","
for i in range(n_orders):
    if i == n_orders-1:
        comma=""
    print("%d --> %d %s"%(i+1,orderSizeSub[i], comma))

print(")")

print("letting ordCol be function (")

comma=","
for i in range(n_orders):
    if i == n_orders-1:
        comma=""
    print("%d --> %d %s"%(i+1,colourSub[i],comma))

print(")")

