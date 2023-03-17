let q1 = TwoListDeque.empty;;
assert(0=(TwoListDeque.size q1));;


let jqueue = TwoListDeque.empty;;
TwoListDeque.add_first 5 jqueue;;
assert(1 = (TwoListDeque.size jqueue));;
