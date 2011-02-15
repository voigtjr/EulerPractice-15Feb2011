; Project Euler Problem 2
; Solution by nathan dotz - nathan (period) dotz (at sign) gmail (period) com
;
; Each new term in the Fibonacci sequence is generated by adding
; the previous two terms. By starting with 1 and 2, the first
; 10 terms will be:
; 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
; 
; Find the sum of all the even-valued terms in the sequence
; which do not exceed four million.
;

(define (fib n)
  (define (fib-worker n stack)
	  (if (<= n (car stack))
		(cdr stack)
		(fib-worker n (cons (+ (first stack) (second stack)) stack))))
  (fib-worker n '(1 1))
  )

(define (even-small-fib small-fib)
  (filter even? small-fib)
  )

(printf "The sum of even-calued fibonaccis below 400000 is ~v ~n" (apply + (even-small-fib (fib 4000000))))