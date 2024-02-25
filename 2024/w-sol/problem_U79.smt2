; U79 PraSe-25-4-8

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real) (y Real)) (=> (< x y) (> (f x) (f y))))) ; decreasing

; Equations
(assert (forall ((x Real) (y Real)) (= (f (f (+ x (f y)))) (- (f (+ x y)) (f (+ y (f x)))))))

; Find all possible f

; No Solutions

(check-sat)
