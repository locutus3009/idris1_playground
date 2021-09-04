import Data.String

-- prev : Nat -> Nat
-- prev Z = 0
-- prev (S k) = k
--
-- plus' : Nat -> Nat -> Nat
-- plus' Z j = j
-- plus' (S k) j = S (plus' k j)

parseNat : String -> Maybe(Nat)
parseNat = parsePositive

readNat : IO (Maybe Nat)
readNat = do  s <- getLine
              case parseNat s of
                    Nothing => pure Nothing
                    (Just x) => pure (Just x)
