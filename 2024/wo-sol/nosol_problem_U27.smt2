; U27 U36 IMOSC-1992-A2

(set-logic UFNIRA)

; Header
(declare-const a Real)
(assert (> a 0.0))
(declare-const b Real)
(assert (> b 0.0))
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0))))

; Equations
(assert (forall ((x Real)) (=> (> x 0.0) (= (+ (f (f x)) (* a (f x))) (* (* b (+ a b)) x)))))

; Find all possible f

(check-sat)
(get-model)
