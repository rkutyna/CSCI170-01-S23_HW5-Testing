
open deque;; 
let q1 = TwoListDeque.empty;;
assert(0=(TwoListDeque.size q1));;

(***
Added a test case to test the add_first function of TwoListDeque
***)
let q2 = TwoListDeque.add_first 3;;
assert([3] = TwoListDeque.remove_first q2);;

(***
Added a test case to test the add_last function of TwoListDeque
***)
let q3 = TwoListDeque.add_last 1;;
assert([1] = TwoListDeque.remove_last q3);;
(***
add_first test case
***)
let q4 = TwoListDeque.add_first [1;2;3];;
assert(1 = TwoListDeque.peek_first q4);;
assert(3 = TwoListDeque.peek_last q4);;
(***
add_last test case
***)
let q5 = TwoListDeque.add_last [4;5;6];;
assert(6 = TwoListDeque.size q5);;
assert(6 = TwoListDeque.peek_last q5);;
(***
remove_first test case
***)
let q6 = TwoListDeque.remove_first q5;;
assert([2;3;4;5;6] = TwoListDeque.remove_first q6);;

(***
map test case
***)
let q7 = TwoLIstDeque.map (fun x -> x+1) q6;;
assert([3] = TwoListDeque.remove_first q7);;

let q10 = TwoListDeque.map (fun x -> x+1) q7;;
assert([4] = TwoListDeque.remove_first q10);;

(*** 
filter test cases
***)
let q8 = TwoListDeque.filter (fun x -> x mod 2 = 0) q6;;
assert([2;4;6] = TwoListDeque.remove_first q8);;

let q9 = TwoListDeque.filter (fun x -> x mod 2 = 1) q6;;
assert([1;3;5] = TwoListDeque.remove_first q9);;






