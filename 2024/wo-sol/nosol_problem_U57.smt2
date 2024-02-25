; U57 BalticWay-2011-6

(set-logic UFNIRA)

; Header
(declare-const c Real)
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f (f x)) (+ (- (* x x) x) 1.0))))
(assert (= (f 0.0) c))

; Find all possible c

(check-sat)
(get-model)
