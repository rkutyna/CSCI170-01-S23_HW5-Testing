let q1 = TwoListDeque.empty;;
assert(0=(TwoListDeque.size q1));;


let empty = TwoListDeque.empty;;
let test_add_first = TwoListDeque.add_first 3 empty;;
assert((TwoListDeque.peek_first test_add_first)=3);;

let test_add_last = TwoListDeque.add_last 4 test_add_first;;
assert((TwoListDeque.peek_first test_add_last)=3);;
assert((TwoListDeque.peek_last test_add_last)=4);;
assert((TwoListDeque.to_list test_add_last)=[3;4])

let test_remove_first = TwoListDeque.remove_first test_add_last;;
assert((TwoListDeque.peek_first)=4);;

let test_remove_last = TwoListDeque.remove_last test_remove_first;;
assert((TwoListDeque.is_empty test_remove_last)=true)


assert(TwoListDeque.is_empty q1);;


(* ! lev's tests ! *)
(* ? testing empty/is_empty *)
let test = TwoListDeque.empty

let t1 = assert(TwoListDeque.is_empty test = true)

let test = TwoListDeque.add_first 3 test

let t2 = assert(TwoListDeque.is_empty test = false)

(* ? testing add/peek *)
let t3 = assert(TwoListDeque.peek_first test = 3)

let t4 = assert(TwoListDeque.peek_last test = 3)

let test = TwoListDeque.add_last 4 test

let t5 = assert(TwoListDeque.peek_first test = 3)

let t6 = assert(TwoListDeque.peek_last test = 4)
(* ! lev's test end ! *)

