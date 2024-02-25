; U40 IMOSC-2000-A3

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)
(declare-fun g (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ x (g y))) (+ (- (* x (f y)) (* y (f x))) (g x)))))

; Find all possible f g

(check-sat)
(get-model)
