(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák, Mikoláš Janota, Chad E. Brown
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 16
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "crafted")
(set-info :status unsat)

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
(exit)
