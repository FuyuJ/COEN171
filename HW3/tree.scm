; vi:ai:lisp:sm
;
(define (data-value t) (car t))
(define (left-child t) (cadr t))
(define (right-child t) (caddr t))

(define (member? t x)
  (cond
    ((null? t) #f)
    ((< x (data-value t))(member? (left-child t)x))
    ((> x (data-value t))(member? (right-child t)x))
    (else #t)))

(define (insert t x)
  (cond ((null? t)
	 (list x '() '()))
	((< x (data-value t)) (list (data-value t) (insert (left-child t) x) (right-child t)))
	((> x (data-value t)) (list (data-value t) (left-child t) (insert (right-child t) x)))
	(else t)))


