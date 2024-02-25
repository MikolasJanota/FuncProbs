; U7

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (- x (* y y))) (- (f x) (* y y)))))

; Find all possible f

(check-sat)
(get-model)
