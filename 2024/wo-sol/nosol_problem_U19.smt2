; U19 U52 APMO-1989

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real) (y Real)) (=> (< x y) (< (f x) (f y))))) ; increasing
(declare-fun g (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f (g x)) x)))
(assert (forall ((x Real)) (= (g (f x)) x)))
(assert (forall ((x Real)) (= (+ (f x) (g x)) (* 2.0 x))))

; Find all possible f g

(check-sat)
(get-model)
