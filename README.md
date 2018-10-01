# Exam 1 - COMP 7087
### Adithya Chakilam
## Question 3.7

We are presented with a data flow diagram and asked to compute the time taken for the last data item to be available on the memory.

### Notation

- $C_i$ is a Computational Unit  $(1 \leq i \leq 13)$
- $T_i$ represents the time take by computational unit $C_i$
- $d_i$ resprests a Data Item $(1 \leq i \leq 23)$
- $t_i$ represents time taken for a data item $d_i$to be available.

Assuming that a the Computational Unit start working as soon as it sees its data item being available, the least time needed for a $C_i$ to start its computation can be assumed as the maximum time taken for its data item to be available.

$$
Start \  Time \  of \ C_i =  max(incoming \ t_i) 
$$
Hence, 

$Start \  Time \  of \ C_{13} = max(t_{18}, t_{12}, t_{8}, t_{13}, t_{14}, t_{16}, t_{17})$
$Start \  Time \  of \ C_{12} = t_{15}   (\text{has only one Incoming DataItem})$
$Start \  Time \  of \ C_{11} = max(t_{10}, t_{19})$
$Start \  Time \  of \ C_{10} = max(t_{9}, t_{22})$
$Start \  Time \  of \ C_{9} = max(t_{11}, t_{20})$
$Start \  Time \  of \ C_{8} = max(t_{6}, t_{8})$
$Start \  Time \  of \ C_{7} = t_{2}$
$Start \  Time \  of \ C_{6} = max(t_{2}, t_{5})$
$Start \  Time \  of \ C_{5} = t_7$
$Start \  Time \  of \ C_{4} = t_{4}$
$Start \  Time \  of \ C_{3} = t_{3}$
$Start \  Time \  of \ C_{2} = max(t_{2}, t_{21})$
$Start \  Time \  of \ C_{1} = t_{1}$

Since the last data-item $t_{24}$ computed $C_{13}$, The time taken to complete the full computation is equal to:
$$
Total \ Time = T_{13} \cdot (Start \  Time \  of \ C_{13})\\
= T_{13} \cdot max(t_{18}, t_{12}, t_{8}, t_{13}, t_{14}, t_{16}, t_{17})
$$
Let's proceed by calculating $t_{18}, t_{12}, t_{8}, t_{13}, t_{14}, t_{16}, t_{17}$ and then substitute them in the equation again,


$t_{18} = T_{10} \cdot Start \ of \ C_{10}$
$= T_{10} \cdot max(t_{9}, t_{22})$
$=T_{10} \cdot max(T_{5} \cdot Start \ of \ C_{5} , T_8 \cdot Start \ of \ C_{8})$
$=T_{10} \cdot max(T_{5} \cdot t_7, T_8 \cdot max(t_{6}, t_{8}))$
$=T_{10} \cdot max(T_{5} \cdot t_7, T_8 \cdot max(T_1 \cdot t_1, T_6\cdot max(t_{2}, t_{5}))$
$=T_{10} \cdot max(T_{5} \cdot t_7, T_8 \cdot max(T_1 \cdot t_1, T_6 \cdot max(T_1 \cdot t_1, t_{5}))$ ``(Equation 1)``




$t_{12} = T_{8} \cdot Start \ of \ C_{8}$
$= T_{8} \cdot max(t_{6}, t_{8})$
$=T_{8} \cdot max(T_{1} \cdot Start \ of \ C_{1} , T_6 \cdot Start \ of \ C_{6})$
$=T_{8} \cdot max(T_{1} \cdot t_1, T_6 \cdot max(t_{5}, t_{2}))$
$=T_{8} \cdot max(T_1 \cdot t_1, T_6 \cdot max(T_1 \cdot t_1, t_{2}))$``(Equation 2)``

$t_{8} = T_{6} \cdot Start \ of \ C_{6}$
$=T_6 \cdot max(t_{5}, t_{2}))$
$= T_6 \cdot max(T_1 \cdot t_1, t_{2}))$``(Equation 3)``


$t_{14} = T_{9} \cdot Start \ of \ C_{9}$
$= T_{9} \cdot max(t_{11}, t_{20})$
$=T_{9} \cdot max(T_{2} \cdot Start \ of \ C_{2},T_{3} \cdot Start \ of \ C_{3})$
$=T_{9} \cdot max(T_{2} \cdot max(t_{2}, t_{21}) ,T_{3} \cdot t_{3})$
$=T_{9} \cdot max(T_{2} \cdot max(t_2,T_{3} \cdot{t_{3}), T_3} \cdot t_3))$``(Equation 4)``


$t_{16} = T_{11} \cdot Start \ of \ C_{11}$
$= T_{11} \cdot max(t_{10}, t_{19})$
$=T_{11} \cdot max(T_3 \cdot t_3, T_4 \cdot t_4 )$``(Equation 5)``

$t_{17} = T_{12} \cdot Start \ of \ C_{12}$
$= T_{12} \cdot  t_{15}$
$=T_{12} \cdot T_{4} \cdot Start \ of \ C_{4}$
$=T_{12}\cdot T_{4} \cdot t_4$   ``(Equation 6)``

		
We can see that all the values are in the terms of $t_i$ where $1 \leq i  \leq 4$ and $T_j$ where $1 \leq j  \leq 14$ which are already known to us. Hence the total time $(T)$ is:

$$
T= T_{13} \cdot max(t_{18}, t_{12}, t_{8}, t_{13}, t_{14}, t_{16}, t_{17})\\
$$
> $where \ t_{18}, t_{12}, t_{8}, t_{13}, t_{14}, t_{16}, t_{17} \ are \ given \ by \ Equations\ 1,2,3,4,5,6\ respectively$
