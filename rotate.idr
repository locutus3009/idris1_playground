import Data.Vect

rotate : Vect n a -> Vect n a
rotate [] = []
rotate (x :: xs) = lemma_1 x xs where
  lemma_1 : a -> Vect len a -> Vect (S len) a
  lemma_1 x [] = [x]
  lemma_1 x (y :: xs) = y :: lemma_1 x xs
