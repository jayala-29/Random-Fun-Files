open Printf

type node =
  | Leaf
  | Node of string * btnode * btnode
;;

let bt1 = Node("1", Node("0", Leaf, Leaf), Node("2", Leaf, Leaf));;
let bt2 = Node("5", Node("4", Node ("2", Leaf, Leaf), Node("3", Leaf, Leaf)), Node("6", Node("7", Leaf, Leaf), Node("8", Leaf, Leaf)));;
let bt3 = Node("9", Node("8", Node("7", Node("6", Node("5", Node("4", Node("3", Node("2", Node("1", Node("0", Leaf, Leaf), Leaf), Leaf), Leaf), Leaf), Leaf), Leaf), Leaf), Leaf), Leaf);;
let bt4 = Node("0", Leaf, Node("1", Leaf, Node("2", Leaf, Node("3", Leaf, Node("4", Leaf, Node("5", Leaf, Node("6", Leaf, Node("7", Leaf, Node("8", Leaf, Node("9", Leaf, Leaf))))))))));;

let rec inorder_trav (n : node) : string =
  match n with
    | Leaf -> ""
    | Node(s, l, r) -> (inorder_trav l) ^ s ^ (inorder_trav r);;

let rec getSize (n : node) : int = 
  match n with
    | Leaf -> 0
    | Node(s, left, right) -> 1 + size(left) + size(right);;

let rec getHeight (n : node) : int =
  match n with
    | Leaf -> 0
    | Node(s, l, r) -> 1 + (max (height l) (height r));;
