; U2

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real) (y Real)) (=> (< x y) (< (f x) (f y))))) ; increasing

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ x y)) (+ (f x) (f y)))))

; Find all possible f

(check-sat)
(get-model)
