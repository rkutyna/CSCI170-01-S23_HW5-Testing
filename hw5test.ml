let q1 = TwoListDeque.empty;;
assert(0=(TwoListDeque.size q1));;

let deque_empty = TwoListDeque.empty;;
let deqeu_1 = TwoListDeque.(add_first 1 deque_empty);;
let deque_2 = TwoListDeque.(add_first 2 deque_1);;

assert(TwoListDeque.((to_list deque_empty) = []));;

let is_empty_1 = TwoListDeque.(is_empty deque_empty);;
assert(is_empty1);;

let is_empty_2 = TwoListDeque.(is_empty deque_1);;
assert(not (is_empty2));;

let add_first_1 = TwoListDeque.(add_first 1 deqeu_empty |> to_list);;
assert([1] = add_first_1);;

let add_first_2 = TwoListDeque.(add_first 2 deqeu_1);;
assert([1; 2] = add_first_2);;