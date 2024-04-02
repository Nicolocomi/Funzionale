(*
• Suppose that sets are represented by lists. Write a
function that takes a list, and produces the powerset of the list
• If 𝑆 is a set, the power set of 𝑆 is the set of all
subsets 𝑆’ such that 𝑆′ ⊆ 𝑆
E.g., S=[1,2,3],
powerSet(S)=[[],[1],[2],[3],[1,2],[1,3],[2,3],[1,2,3]] *)
fun insertAll (x,[]) = []
|insertAll (x,set::setTail) = (x::set) :: insertAll (x,setTail);
fun powerSet nil = [nil]            (*[1,2] = [[],[1],[2],[1,2]]*)
|powerSet (set::setTail) = powerSet(setTail)@insertAll(set,powerSet(setTail));
powerSet([1,2,3]);