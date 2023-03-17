let ah_hi_bye_check = TwoListDeque.(empty |> add_first "hi" |> add_first "somewhere in between" |> add_first "bye");;
assert("bye" = TwoListDeque.peek_first x);;
