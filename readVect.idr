import Data.Vect

readVectLen : (len : Nat) -> IO (Vect len String)
readVectLen Z = pure []
readVectLen (S k) = do s <- getLine
                       ss <- readVectLen k
                       pure (s :: ss)

readVect : IO (len : Nat ** Vect len String)
readVect = do s <- getLine
              if s == ""
                then pure (_ ** [])
                else do
                  (k ** ss) <- readVect
                  pure (_ ** s :: ss)
