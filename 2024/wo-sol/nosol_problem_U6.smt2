; U6 U80 PraSe-27-7-1

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (- (f (+ x y)) (f (- x y))) (* x y))))

; Find all possible f

(check-sat)
(get-model)
