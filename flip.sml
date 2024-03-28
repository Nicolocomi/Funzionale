(*Write a function flip that takes a list of pairs of
integers and orders each pair so that the smallest number is first, using patterns.
For instance, flip([(1,2),(3,4)]) = [(2,1),(4,3)] *)
fun flip (nil)= nil
|flip ((x,y)::xs) = if x < y then (x,y)::flip(xs) else (y,x) :: flip(xs);

flip ([(4,2),(3,1),(34,23)]);