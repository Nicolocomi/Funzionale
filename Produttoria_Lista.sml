(*E.g., [1.0,2.0,3.0],
prodDiff([1.0,2.0,3.0])=(1.0-2.0)*(1.0-3.0)*(2.0-3.0) = -2.0*)
fun prodDiff1(_,nil) = 1.0
| prodDiff1(a,b::bs) = (a-b)*prodDiff1(a,bs);
fun prodDiff(nil) = 1.0
| prodDiff(b::bs) =
prodDiff1(b,bs)*prodDiff(bs);