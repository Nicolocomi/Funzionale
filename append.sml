fun append (x,y) =     (* append y to x f.e. x = [1,2,3], y = [12,3]; app = [1,2,3,12,3] *)
    if x = nil then y
    else hd(x) ::  append ((tl (x)), y);    (*prima scrivo x e poi al caso base metto y*)
val a = [1,45,34,66];
val b = [367,37];
append (a,b);

