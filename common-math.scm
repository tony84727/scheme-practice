(define (square x) (* x x))
(define (cube x) (* x (square x)))
(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (average x y)
  (/ (+ x y) 2))

(define (slow-gcd a b)
  (if (or (= a 0) (= b 0))
    (+ a b)
    (if (> b a)
      (slow-gcd a (- b a))
      (slow-gcd (- a b) b))))

(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (remainder a b))))
    
(define (gcd-3 a b c)
  (gcd (gcd a b) c))
