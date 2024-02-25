; U45 IMOSC-2009-A7

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (* x (f (+ x y)))) (+ (f (* y (f x))) (* x x)))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) x))))

(assert (not (forall ((x Real)) (= (f x) (- x)))))

(check-sat)
