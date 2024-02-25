; U53 APMO-2002-5

(set-logic AUFNIRA)

; Header
(declare-fun roots (Int) Real)
(declare-const roots_bound Int)
(declare-fun f (Real) Real)
(assert (exists ((x Real)) (=> (= (f x) 0.0) (exists ((k Int)) (and (<= 0 k roots_bound) (= x (roots k))))))) ; finitely_many_roots

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ (* x x x x) y)) (+ (* (* x x x) (f x)) (f (f y))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) x))))

(check-sat)
