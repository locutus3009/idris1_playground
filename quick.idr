import Data.Vect

-- algorithm quicksort(A, low, high) is
--    if low < high then
--        p:= partition(A, low, high)
--        quicksort(A, low, p - 1)
--        quicksort(A, p + 1, high)

-- quicksort : (Vect n Nat) -> (low: Nat) -> (high: Nat) -> Vect n Nat


concat_vects : (Vect n Nat) -> (Vect m Nat) -> Vect (n + m) Nat
concat_vects xs ys = xs ++ ys

 -- let ty : Type := v = v in t

is_even : Nat -> Bool
is_even Z = True
is_even (S k) = is_odd k where
   is_odd : Nat -> Bool
   is_odd Z = False
   is_odd (S k) = is_even k

algo_1 : (xs : Vect n Nat) -> (low : Nat) -> (high : Nat) -> Vect n Nat
partition_and_concat : (low : Nat) -> (high : Nat) -> (mid : Nat) -> (xs : Vect n Nat) -> Vect n Nat

mid_odd : (low : Nat) -> (high : Nat) -> (xs : Vect n Nat) -> Nat
mid_odd low high xs = mod (low + high + 1) 2


mid_even : (low : Nat) -> (high : Nat) -> (xs : Vect n Nat) -> Nat
mid_even low high xs = mod (low + high) 2

mid : (low : Nat) -> (high : Nat) -> (xs : Vect n Nat) -> Nat
mid low high xs = case is_even (plus low high) of
                       False => mid_odd low high xs
                       True => mid_even low high xs


algo_1 xs low high = partition_and_concat low high (mid low high xs) xs

-- algo_1 xs low high = let mid = ?get_mid in
--     ?collect_parts xs low high mid


quicksort_internal : (xs : Vect n Nat) -> (low: Nat) -> (high: Nat) -> Vect n Nat
quicksort_internal xs low high = case high>=low of
                                      False => xs
                                      True =>algo_1 xs low high

quicksort : Vect n Nat  -> Vect n Nat
quicksort [] = []
quicksort (x :: xs) = quicksort_internal (x :: xs) 0 (length (x :: xs))
