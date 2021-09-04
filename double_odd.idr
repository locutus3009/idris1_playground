mutual
  is_even : Nat -> Bool
  is_even Z = True
  is_even (S k) = is_odd k

  is_odd : Nat -> Bool
  is_odd Z = False
  is_odd (S k) = is_even k

data MyList : Type -> Type where
  MyNil : MyList a
  (::) : (x : a) -> (xs : MyList a) -> MyList a

hello : MyList Nat -> Nat
hello MyNil = 0
hello (x :: xs) = x
