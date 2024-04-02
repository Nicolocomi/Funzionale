(*fun hundredthPower (x:real) = 
let 
    val four = x*x*x*x;
    val twenty = four*four*four*four*four;
in
    twenty*twenty*twenty*twenty*twenty  
end;
hundredthPower 1.01;*)
(*fun split(nil) = (nil,nil)
| split([a]) = ([a],nil)
| split (a::b::cs) =
let
val (M,N) = split (cs)
in
(a::M,b::N)
end;*)
(*Write a short program thousandthPower that, given a real
x, uses let to compute 𝑥^1000*)
(*)
fun thousandthPower (x:real)= 
let 
val x = x*x*x*x*x*x*x*x*x*x;
val x = x*x*x*x*x*x*x*x*x*x;
in 
x*x*x*x*x*x*x*x*x*x
end;
*)
(*• Write the split program without using a pattern
in the val declaration but referencing the
components*)
fun split2(nil) = (nil,nil)
| split2([a]) = ([a],nil)
| split2 (a::b::cs) =
let
val result = split(cs);
val M = #1 result;
val N = #2 result;
in
(a::M,b::N)
end;
split2 ([1,2,3,4,5]);
(*• Improve the powerset function by using a let and
computing the powerset of the tail only once*)
fun insertAll (x,[]) = []
|insertAll (x,set::setTail) = (x::set) :: insertAll (x,setTail);

fun powerSet(nil) = [nil]
| powerSet(x::xs) =
let 
val res = powerSet(xs);
in
res @ insertAll(x,res)
end;
fun maxList([x:real]) = x
| maxList (x::y::zs) = 
if (x < y) then maxList(y::zs)
else maxList(x::zs);
(*• Write an improved function to find the largest of a list of
reals using a let.
• Suggestion: you can think about the maximum of the tail*)
fun maxList([x:real]) = x
| maxList (x::y::zs) = 
let 
    val tailMax = maxList(y::zs);
in  
    if x >tailMax then x else tailMax
end;
(*• Write an efficient program doubleExp to compute 𝑥^(2*𝑖), for real 𝑥 and nonnegative 𝑖, 
making only one recursive call. *)
fun doubleExp(0, _) = 0
  | doubleExp(_, 0) = 1
  | doubleExp(x, i) = 
    let 
      val res = doubleExp(x, i div 2)
    in  
      res * res * (if i mod 2 = 0 then 1 else x)
    end;

doubleExp(2,5);

