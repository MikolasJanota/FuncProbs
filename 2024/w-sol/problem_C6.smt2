; C6 U77 PraSe-25-4-3

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (+ x y)) (* 2.0 (f (- x y)))) (- (* 3.0 (f y)) y))))

; Find all possible f

; Solutions

(assert (not (exists ((c Real)) (forall ((x Real)) (= (f x) (+ x c))))))

(check-sat)
