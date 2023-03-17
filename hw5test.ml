let q1 = TwoListDeque.empty;;
assert(0=(TwoListDeque.size q1));;
assert(TwoListDeque.is_empty q1);;
(* add non empty TwoList Deque *)
let qdillon = TwoListDeque.empty;;
TwoListDeque.add_first 1 qdillon;;
assert(1=(TwoListDeque.size qdillon));;