; U48 MEMO-2008

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (* x (f (+ x (* x y)))) (+ (* x (f x)) (* (f (* x x)) (f y))))))

; Find all possible f

(check-sat)
(get-model)
