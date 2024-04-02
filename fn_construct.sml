(*Write a function is_one that returns “one” if the
parameter is 1 and “anything else” otherwise, using
the construct case and pattern matching with fun
and fn.*)
(*case fun: *)
(*fun IsOne x  = case x of 
1 => "one"
|_ => "anth_else";
IsOne(2);*)
(*pattern fun*)
(*fun IsOne (1) = "one"
| IsOne (_) = "anthelse";*)
(*case fn : *)
(* val IsOne = fn x => case x of
1 => "one"
| _ => "anthelse"; *)
(*pattern match with fn*)
(*val IsOne = fn (1) => "one"
|_ => "anthelse";
IsOne(1);*)

(*////////////////////////////////////////////////////////////////////////////////////////////////*)

(*Write a case statement to simulate the if-then-else
clause, e.g., write a case statement
is_lower_than5 such as if a value is lower than 5,
then 1, otherwise 2*)

val is_lower_than5 = fn x => case x of
1 => 1
|2 => 1
|3 => 1
|4 => 1
|5=> 1
|_ => 2;
is_lower_than5(3);