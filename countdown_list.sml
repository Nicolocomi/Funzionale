fun countdown (x : int) =           (*if i give 6 f.e.the output'll be [6,5,4,3,2,1]*)
    if x = 0 then []
    else x :: countdown (x-1);
val a = 60;
countdown (a);