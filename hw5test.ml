let q1 = TwoListDeque.empty;;
assert(0=(TwoListDeque.size q1));;

let test1_0_DA = Deque.is_empty [];;
assert(test1_0_DA);;

let test2_0_DA = Deque.add_first 1 [2; 3];;
assert([1; 2; 3] = test2_0_DA);;

let test3_0_DA = Deque.add_last 3 [1; 2];;
assert([1; 2; 3] = test3_0_DA);;
