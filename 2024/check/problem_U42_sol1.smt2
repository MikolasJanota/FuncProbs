(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 42
Original source: IMOSC-2002-A1
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-const c Real)
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) (+ x c))))

; Negated constraints
(assert (not (and
  (forall ((x Real) (y Real)) (= (f (+ (f x) y)) (+ (* 2.0 x) (f (- (f y) x)))))
)))

(check-sat)
