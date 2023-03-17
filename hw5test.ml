(* Dillon's Tests *)

let q1 = TwoListDeque.empty;;
assert(0=(TwoListDeque.size q1));;
assert(TwoListDeque.is_empty q1);;

(* add non empty TwoList Deque *)
let qdillon = TwoListDeque.empty;;

(* add 2 ints to Deque *)
TwoListDeque.add_first 1 qdillon;;
TwoListDeque.add_last 2 qdillon;;

(* check size equal to 2 *)
assert(2=(TwoListDeque.size qdillon));;

(* make sure peeks are working *)
assert(1=(TwoListDeque.peek_first qdillon));;
assert(2=(TwoListDeque.peek_last qdillon));;

(* remove last and check size *)
TwoListDeque.remove_last qdillon;;
assert(1=(TwoListDeque.size qdillon));;

(* remove first and check size *)
TwoListDeque.remove_first qdillon;;
assert(0=(TwoListDeque.size qdillon));;

(* Dillon's Tests *)