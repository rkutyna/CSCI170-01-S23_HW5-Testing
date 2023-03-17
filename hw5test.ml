let q1 = TwoListDeque.empty;;
assert(0=(TwoListDeque.size q1));;

(*jonahs tests start*)
(* testing size 2 *)
let jqueue = TwoListDeque.empty;;
TwoListDeque.add_first "no" jqueue;;
TwoListDeque.add_last "hi" jqueue;;
assert(2 = (TwoListDeque.size jqueue));;
assert("hi" = (TwoListDeque.peek_last jqueue))
assert("no" = (TwoListDeque.peek_first jqueue))
TwoListDeque.remove_first jqueue
assert(1 = (TwoListDeque.size jqueue));;
assert("hi" = (TwoListDeque.peek_last jqueue))
assert("hi" = (TwoListDeque.peek_first jqueue))
(* jonahs test end*)


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
