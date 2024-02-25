; U16

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real) (y Real)) (=> (distinct x y) (distinct (f x) (f y))))) ; injective
(assert (forall ((y Real)) (exists ((x Real)) (= (f x) y)))) ; surjective

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ (f x) (f (f y)))) (f (+ (f (f x)) (f y))))))

; Find all possible f

(check-sat)
(get-model)
