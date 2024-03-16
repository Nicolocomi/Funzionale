fun sum_pair_list (x: (int * int) list) = 
    if x = nil then 0 
    else #1 (hd x) + #2 (hd x) + sum_pair_list(tl(x));
val a = [(3,4), (5,6)];
val b = sum_pair_list(a);