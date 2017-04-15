open Printf

type expr = 
  | Num of int
  | Add1 of expr
  | Sub1 of expr
;;

let rec compile (e : expr) : string list =
  match e with
    | Num(n) -> ["mov EAX, " ^ (string_of_int n)]
    | Add1(e) -> let es = compile e in es @ ["add EAX, 1"]
    | Sub1(e) -> let es = compile e in es @ ["sub EAX, 1"]
;;


(printf "\nTest Case 1: \nJust the number 3\n");;
let () = List.iter (printf "%s\n") (compile (Num(3)));;
(printf "\n");;


(printf "Test Case 2: \nAdding 1 to 3\n");;
let () = List.iter (printf "%s\n") (compile (Add1(Num(3))));;
(printf "\n");;


(printf "Test Case 3: \nSubtracting 1 from 3\n");;
let () = List.iter (printf "%s\n") (compile (Sub1(Num(3))));;
(printf "\n");;


(printf "Test Case 4: \nAdding 1 to 3 then subtracting 1\n");;
let () = List.iter (printf "%s\n") (compile (Sub1(Add1(Num(3)))));;
(printf "\n");;

(printf "Test Case 5: \nSubtracting 1 from 3 then adding 1\n");;
let () = List.iter (printf "%s\n") (compile (Add1(Sub1(Num(3)))));;
(printf "\n");;

(*
Output:

Test Case 1: 
Just the number 3
mov EAX, 3

Test Case 2: 
Adding 1 to 3
mov EAX, 3
add EAX, 1

Test Case 3: 
Subtracting 1 from 3
mov EAX, 3
sub EAX, 1

Test Case 4: 
Adding 1 to 3 then subtracting 1
mov EAX, 3
add EAX, 1
sub EAX, 1

Test Case 5: 
Subtracting 1 from 3 then adding 1
mov EAX, 3
sub EAX, 1
add EAX, 1
*)
