(*Write a function insertAll that takes an element
a and a list of lists L and inserts a at the front of 
each of these lists. For example insertAll(1,[[2,3],[],[3]])=[[1,2,3],[1],[1,3]]*)
fun insertAll (x,[]) = []
|insertAll (x,set::setTail) = (x::set) ::insertAll (x,setTail);
val x = 1;
val Set = [[2,3],[],[3]];
insertAll (x,Set);
