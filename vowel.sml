(*Write a function vowel that takes a list of characters and returns true if the first element is a
vowel using patterns. For instance vowel [#”a”,#”b”] = true*)
fun isVowel c =
    let
        val vowels = [#"a", #"e", #"i", #"o", #"u", #"A", #"E", #"I", #"O", #"U"]
    in
        List.exists (fn v => v = c) vowels
    end;
val x = [#"b" ,#"a"];
fun vowel (nil) = false
| vowel (x::xs) = if isVowel(x) then true else false;

vowel (x);