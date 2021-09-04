import Data.Vect

readVectLen : (len : Nat) -> IO (Vect len String)
readVectLen Z = pure []
readVectLen (S k) = do s <- getLine
                       ss <- readVectLen k
                       pure (s :: ss)
