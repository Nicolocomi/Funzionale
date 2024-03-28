(* Write a program to compute the square of an integer, 
using patterns according to the formula 𝑛^2 = (𝑛 − 1)^2 + 2𝑛 − 1*)
fun square (0) = 0
| square(1) = 1
| square (x) = (((x-1)*(x-1)) + (2*x) -1)  ;
val x = 4;
square(x); 