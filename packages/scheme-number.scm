;; scheme-number.scm


;; Description:
;;
;; A package for working with ordinary numbers.



;; Definitions:

(define (install-scheme-number-package)
  (define (tag x)
    (attach-tag 'scheme-number x))
  (put 'add '(scheme-number scheme-number)
       (lambda (x y) (tag (+ x y))))
  (put 'sub '(scheme-number scheme-number)
       (lambda (x y) (tag (- x y))))
  (put 'mul '(scheme-number scheme-number)
       (lambda (x y) (tag (* x y))))
  (put 'div '(scheme-number scheme-number)
       (lambda (x y) (tag (/ x y))))
  (put 'exp '(scheme-number scheme-number)
       (lambda (x y) (tag (expt x y))))
  (put 'equ? '(scheme-number scheme-number) =)
  (put '=zero? '(scheme-number)
       (lambda (x) (= 0 x)))
  (put 'raise '(scheme-number)
       (lambda (x) ((get 'make 'rational) x 1)))
  (put 'make 'scheme-number
       (lambda (x) (tag x)))
  'scheme-number-package)

(install-scheme-number-package)

(define (make-scheme-number n)
  ((get 'make 'scheme-number) n))
