; U57 BalticWay-2011-6

(set-logic AUFNIRA)

; Header
(declare-const c Real)
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f (f x)) (+ (- (* x x) x) 1.0))))
(assert (= (f 0.0) c))

; Find all possible c

; Solutions

(assert (not (= c 1.0)))

(check-sat)
