(declare-fun v1 () Bool)
(declare-fun v7 () Bool)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i14 () Int)
(declare-fun i15 () Int)
(declare-heap (Int Int))
(declare-fun i16 () Int)
(declare-fun v15 () Bool)
(declare-fun v18 () Bool)
(assert (or (xor v18 (<= i15 84) (pto i4 i15) (< (* 54 i3 i16 i1) i14) (sep (pto i2 (+ 54 i15)) (xor v7 v15 v1))) (xor v18 (<= i15 84) (pto i4 i15) (< (* 54 i3 i16 i1) i14) (sep (pto i2 (+ 54 i15)) (xor v7 v15 v1))) (xor v18 (<= i15 84) (pto i4 i15) (< (* 54 i3 i16 i1) i14) (sep (pto i2 (+ 54 i15)) (xor v7 v15 v1)))))
(check-sat)
