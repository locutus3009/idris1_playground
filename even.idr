is_even : Nat -> Bool
is_even Z = True
is_even (S k) = odd k where
  odd : Nat -> Bool
  odd Z = False
  odd (S k) = is_even k
