; U68 Romania-2009

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ (* x x x) (* y y y))) (+ (* x (f (* x x))) (* y (f (* y y)))))))

; Find all possible f

; Solutions

(assert (not (exists ((a Real)) (forall ((x Real)) (= (f x) (* a x))))))

(check-sat)
