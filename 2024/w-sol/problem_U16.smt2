; U16

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real) (y Real)) (=> (distinct x y) (distinct (f x) (f y))))) ; injective
(assert (forall ((y Real)) (exists ((x Real)) (= (f x) y)))) ; surjective

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ (f x) (f (f y)))) (f (+ (f (f x)) (f y))))))

; Find all possible f

; Solutions

(assert (not (exists ((c Real)) (forall ((x Real)) (= (f x) (+ x c))))))

(check-sat)
