(*Let us represent sets by lists. We represent a set by
a list: the elements can be in any order, but without
repetitions.
• Write a function member(x,S) to test whether x is (supposing that S is a list of list..)
a member of set S using patterns*)      
fun member (x,[]) = false          (*   x = [2,3,4] and S = [[1,2,3],[2,3,4],[],[3,45,6]]     *)
| member (x,set::seTail) = if x=set then true else member(x,seTail);
val x = [];
val S = [[1,2,3],[2,3,4],[3,45,6]];
member(x,S);
(* Write a function that deletes an element from a set delete(x,S) using patterns *)
fun delete_from_set (x,[]) = []
| delete_from_set (x,set::seTail) = if (set = x) then seTail else set::delete_from_set(x,seTail);
val x = [2,3,4,6];
val S = [[1,2,3],[2,3,4],[3,45,6]];
delete_from_set(x,S);
(*si poteva implementare con member*)

(*Write a function that inserts an element into a set
insert(x,S) using patterns.*)
fun insert (x,[[]]) = [[x]]
|insert (x,s) = [x]::s;

val x = [234,55,45];
val S = [[1,2,3],[2,3,4],[3,45,6]];
insert(x,S);    