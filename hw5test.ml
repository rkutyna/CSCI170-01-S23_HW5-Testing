let q1 = TwoListDeque.empty;;
assert(0=(TwoListDeque.size q1));;


let test_q = TwoListDeque.add_first 1 q1;;
assert(1 = TwoListDeque.size test_q);;

let test_peak_first = test_q;;
assert(1 = TwoListDeque.test_peak_first test_q);;

(* Class test to make a 2 element q, then peak, then remove an element*)
let class_q = TwoListDeque.add_first "hello" q1;;
class_q = TwoListDeque.add_first "world" class_q;;
first_class_q = TwoListDeque.test_peak_first class_q;;
class_q = TwoListDeque.remove_first class_q;;
assert("hello" = class_q);;
