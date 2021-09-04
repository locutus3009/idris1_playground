import Data.Vect

filter1 : (a -> Bool) -> Vect n a -> (p ** Vect p a)
filter1 f [] = (_ ** [])
filter1 f (x :: xs) =
  let (_ ** xs') = filter1 f xs in
  if f x then (_ ** x :: xs')
         else (_ ** xs')
