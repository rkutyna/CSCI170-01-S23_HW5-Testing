module type Deque = sig
  (** An ['a t] is a double-ended queue whose elements have type ['a]. *)
  type 'a t

  (** Raised if [peek_first], [peek_last], [remove_first] or [remove_last] 
      is applied to the empty queue. *)
  exception Empty

  (** [empty] is the empty queue. *)
  val empty : 'a t

  (** [is_empty q] is whether [q] is empty. *)
  val is_empty : 'a t -> bool

  (** [add_first x q] is a queue with [x] as the first element, 
      followed by the elements [q]. *)
  val add_first : 'a -> 'a t -> 'a t
  
  (** [add_last x q] is a queue with the elements of the queue [q], 
      followed by [x] as the last element.*)
  val add_last : 'a -> 'a t -> 'a t

  (** [peek_first q] is the first element of the queue [q]. 
  Raises [Empty] if [q] is empty. *)
  val peek_first : 'a t -> 'a

  (** [peek_last q] is the last element of the queue [q]. 
  Raises [Empty] if [q] is empty. *)
  val peek_last : 'a t -> 'a

  (** [remove_first q] is the queue containing all the elements of [q] 
  except the first element of [q]. Raises [Empty] is [q] is empty. *)
  val remove_first : 'a t -> 'a t

  (** [remove_last q] is the queue containing all the elements of [q] 
  except the last element of [q]. Raises [Empty] is [q] is empty. *)
  val remove_last : 'a t -> 'a t

  (** [size q] is the number of elements in [q]. *)
  val size : 'a t -> int
  
  (** [to_list q] is a list containing the elements of [q] in order from
  the first element to the last element. *)
  val to_list : 'a t -> 'a list

  (** [filter f q] is a deque with all the elements of the deque [q] 
      that satisfy the predicate [f]. The order of the elements in the 
      argument [q] is preserved. 
  *)
  val filter : ('a -> bool) -> 'a t -> 'a t


  (** [map f q] applies function f to the elements of [q] and builds a deque 
   with the results returned by f.   
  *)
  val map : ('a -> 'b) -> 'a t -> 'b t


 (** [fold_from_first_forward f init q] uses [f] and [init] to combine
     the deque [q], starting with its first element and going forward,
     in a sense similar to List.fold_left.
     As an example, if [q] is an int deque with elements 1, 10, 20, 
     with 1 being the first element and 20 being the last,
     [f] is the int substraction ( - ), init is 0, then the result 
     of fold_from_first_forward should be -31.
  *)
  val fold_from_first_forward : ('a -> 'b -> 'a) -> 'a -> 'b t -> 'a

 (** [fold_from_last_backward f q init] uses [f] and [init] to combine
     the deque [q], starting with its last element and going backward,
     in a sense similar to List.fold_right.
     As an example, if [q] is an int deque with elements 1, 10, 20, 
     with 1 being the first element and 20 being the last,
     [f] is the int substraction ( - ), init is 0, then the result 
     of fold_from_last_backward is 11.
  *)
  val fold_from_last_backward : ('a -> 'b -> 'b) -> 'a t -> 'b -> 'b
end

module TwoListDeque : Deque = struct

  (** [{front; back; size}] represents the deque [front @ List.rev back]
  along with its size -- the number of elements in the deque. 
  For example, [{front = [10; 20]; back = [50; 40; 30]; size = 5}] 
  represents the conceptual queue 10, 20, 30, 40, 50, where [10] is 
  the first element and [50] is the last. 
  To avoid ambiguity about emptiness, whenever only one of the 
  lists is empty, it must be [back]. For example,
  [{front = [10]; back = []; size = 1}] is a legal representation, but 
  [{front = []; back = [10]; size =1 }] is not. This implies that if
  [front] is empty, [back] must also be empty. *)

  type 'a t = {front : 'a list; back : 'a list; size: int}

  exception Empty

  let empty = {front = []; back = []; size = 0}

  let is_empty q = q.size = 0

  let add_first x q = {front = x :: q.front; back = q.back; size = q.size + 1}

  let add_last x q = {front = q.front; back = x :: q.back; size = q.size + 1}

  let peek_first q = 
    match q.front with
    | [] -> raise Empty
    | x :: _ -> x


  (* provide all the funcions defined in the Deque module type,
     and define helper methods if needed
  *)

end