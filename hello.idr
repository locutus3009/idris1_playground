hello: Nat-> Nat
lemma_1 : (k : Nat) -> Nat
lemma_1 k = case k>10 of
                 False => 0
                 True => 1

hello k = case k<10 of
               False =>lemma_1 k
               True => 15
