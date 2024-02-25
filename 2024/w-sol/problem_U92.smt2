; U92

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real) (y Real)) (=> (distinct x y) (distinct (f x) (f y))))) ; injective

; Equations
(assert (forall ((x Real) (y Real)) (=> (distinct x y) (= (f (/ (+ x y) (- x y))) (/ (+ (f x) (f y)) (- (f x) (f y)))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) x))))

(check-sat)
