let q1 = TwoListDeque.empty;;
assert(0=(TwoListDeque.size q1));;

let empty = TwoListDeque.empty;;
let test_add_first = TwoListDeque.add_first 3 empty;;
assert((TwoListDeque.peek_first test_add_first)=3);;

let test_add_last = TwoListDeque.add_last 4 test_add_first;;
assert((TwoListDeque.peek_first test_add_last)=3);;
assert((TwoListDeque.peek_last test_add_last)=4);;

let test_remove_first = TwoListDeque.remove_first test_add_last;;
assert((TwoListDeque.peek_first)=4);;

let test_remove_last = TwoListDeque.remove_last test_remove_first;;
assert((TwoListDeque.is_empty test_remove_last)=true)