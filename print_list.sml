fun print_list (nil) = print (Int.toString(0))
| print_list(x::xs:int list) = (print(Int.toString(x)); print_list(xs));
(*• Write a function to compute (𝑛
                                𝑚), while printing 𝑛,𝑚 and the result.
• Recall that   (𝑛) =𝑛 ! / 𝑚! 𝑛−𝑚 !
                (m) *)
fun binomiale (n, m) =
let 
    fun fattoriale 0 = 1 
    | fattoriale n = n * fattoriale(n-1);

    fun coeff_binomiale (n,0) = 1 
    | coeff_binomiale (n,m) = fattoriale(n) div (fattoriale(m)*fattoriale(n-m));
    in 
    (
        print (" n = " ^ (Int.toString(n)) ^ ", ");
        print (" m = " ^ (Int.toString(m) ^ ", "));
        print ("Binomiale (n,m) = " ^ (Int.toString(coeff_binomiale(n,m))) ^ "\n" )
    )
    end;

binomiale(5, 2);
(*Given 𝑛, print 2^𝑛 X's*)
fun power (n,0) = 1
|power (n,1) = n
|power (n,x) = n * power(n,x-1);
fun printX_s (n) = 
let 
    val supp = power (2,n);
    fun printX (0) = ""
    |printX (1) = "X"
    |printX(n) = "X" ^ printX(n-1);
    in
        print (printX(supp))
end;
printX_s(4);

