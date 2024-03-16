fun min3_int (a,b,c) = 
    if a > b then
    if (b<c andalso c<a) then b else c
    else 
        if (a<b) then
        if (a<c andalso b<c) then a else c
        else b;

