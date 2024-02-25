; U17

(set-logic AUFNIRA)

; Header
(declare-const r Real)
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f (f x)) (+ x (f x)))))
(assert (= (f (f r)) 0.0))

; Find all possible r

; Solutions

(assert (not (= r 0.0)))

(check-sat)
