import Data.Vect

tryIndex : Integer -> Vect n a -> Maybe a
tryIndex {n} i xs = case integerToFin i n of
                         Nothing => Nothing
                         (Just i') => Just(index i' xs)

process_string : Nat -> String -> Maybe (String, Nat)
process_string Z str = Nothing
process_string (S k) str = Just (str, k)

main : IO ()
main = replWith 1 "echo:" process_string
