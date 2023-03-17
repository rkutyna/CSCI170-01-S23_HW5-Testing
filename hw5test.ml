let q1 = TwoListDeque.empty;;
assert(0=(TwoListDeque.size q1));;

<<<<<<< HEAD

let jqueue = TwoListDeque.empty;;
TwoListDeque.add_first 5 jqueue;;
assert(1 = (TwoListDeque.size jqueue));;
=======
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
>>>>>>> caf249b9ad216c819d5c8d14d80a6c7934a5a605
