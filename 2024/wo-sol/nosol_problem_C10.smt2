; C10

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real) (y Real)) (=> (< x y) (<= (f x) (f y))))) ; nondecreasing

; Equations
(assert (forall ((x Real)) (= (f (f x)) x)))

; Find all possible f

(check-sat)
(get-model)
