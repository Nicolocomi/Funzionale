fun first (x : (int *int ) list ) =         (*given first(input) where input is [(3,4),(5,6)] i want [3,5] *)
    if x  = nil then []
    else #1 (hd x) :: first (tl(x));
val a = [(3,4),(5,6)];
first (a);

fun second (x : (int *int) list ) = 
    if x = nil then []
    else #2 (hd x) :: second (tl x);

fun sum_list x = 
    if x = nil then 0
    else hd(x) + sum_list(tl(x));

fun sum_pair_list2 (x : (int *int ) list ) = 
    sum_list(first(x)) + sum_list(second(x));