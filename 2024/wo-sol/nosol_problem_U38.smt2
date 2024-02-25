; U38 IMOSC-1996-A7

(set-logic UFNIRA)

; Special functions
(declare-fun rabs (Real) Real)
(assert (forall ((x Real)) (=> (>= x 0.0) (= (rabs x) x))))
(assert (forall ((x Real)) (=> (<= x 0.0) (= (rabs x) (- x)))))

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (<= (rabs (f x)) 1.0)))
(assert (forall ((x Real)) (= (+ (f (+ x (/ 13.0 42.0))) (f x)) (+ (f (+ x (/ 1.0 6.0))) (f (+ x (/ 1.0 7.0)))))))

(check-sat)
(get-model)
