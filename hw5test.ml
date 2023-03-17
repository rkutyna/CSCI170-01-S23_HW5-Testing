let q1 = TwoListDeque.empty;;
assert(0=(TwoListDeque.size q1));;

(* peeking an empty deque returns empty *)
let q2 = TwoListDeque.empty;;
assert(Empty=(TwoListDeque.peek q2));;