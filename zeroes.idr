import Data.Vect

fibb : (n : Nat) -> Vect n Nat
fibb Z = []
fibb (S Z) = [0]
fibb (S (S Z)) = [1, 0]
fibb (S (S (S k))) = sum_item :: previous where
  previous : Vect (S (S k)) Nat
  previous = fibb (S (S k))
  sum_item : Nat
  sum_item = head previous + head (fibb (S k))

fibint : (n : Nat) -> Vect n Integer
fibint Z = []
fibint (S Z) = [0]
fibint (S (S Z)) = [1, 0]
fibint (S (S (S k))) = sum_item :: previous where
  previous : Vect (S (S k)) Integer
  previous = fibint (S (S k))
  sum_item : Integer
  sum_item = head previous + head (fibint (S k))

get_fib : (n : Integer) -> Integer
get_fib n = case n of
                 0 => 0
                 1 => 1
                 k => get_fib (k-1) + get_fib (k-2)
