let q1 = TwoListDeque.empty;;
assert(0=(TwoListDeque.size q1));;

let test_q = TwoListDeque.add_first 1 q1
assert(1 = TwoListDeque.size test_q);;
(* test 2*)
let test_peak_first = test_q
assert(1 = TwoListDeque.test_peak_first test_q);;
