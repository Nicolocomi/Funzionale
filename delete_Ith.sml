(*delete ith element from a list*)
fun delete_ith (nil, _) = nil
  | delete_ith (l, i) =
      if i = 1 then tl l
      else hd l :: delete_ith (tl l, i - 1);

val x = [1,24,54,56];
val y = delete_ith(x,3);
