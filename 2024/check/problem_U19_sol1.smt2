(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák, Mikoláš Janota, Chad E. Brown
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 19, Úloha 52
Original source: APMO-1989
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "crafted")
(set-info :status unsat)

; Header
(declare-const c Real)
(declare-fun f (Real) Real)
(declare-fun g (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) (+ x c))))
(assert (forall ((x Real)) (= (g x) (- x c))))

; Negated constraints
(assert (not (and
  (forall ((x Real) (y Real)) (=> (< x y) (< (f x) (f y))))
  (forall ((x Real)) (= (f (g x)) x))
  (forall ((x Real)) (= (g (f x)) x))
  (forall ((x Real)) (= (+ (f x) (g x)) (* 2.0 x)))
)))

(check-sat)
(exit)
