; U2

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real) (y Real)) (=> (< x y) (< (f x) (f y))))) ; increasing

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ x y)) (+ (f x) (f y)))))

; Find all possible f

; Solutions

(assert (not (exists ((c Real)) (forall ((x Real)) (= (f x) (* c x))))))

(check-sat)
