fun sum_list x = 
    if x = nil then 0
    else hd(x) + sum_list(tl(x));
val a = [1,34,5];
sum_list(a);
