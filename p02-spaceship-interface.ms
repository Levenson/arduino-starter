;;

(define engine-state (input 2))

(define stage-0 (output 3))
(define stage-1 (output 4))
(define stage-2 (output 5))

(define (loop)
  (if (low? engine-state)
      (begin
        (high stage-0)
        (low stage-1)
        (low stage-2))
      (begin
        ;; turn starge-2 RED
        (low stage-0)
        (low stage-1)
        (high stage-2)
        (pause 250)
        ;; turn starge-1 RED
        (high stage-1)
        (low stage-2)
        (pause 250))))

(forever loop)

;; Local Variables:
;; mode: scheme
;; End:
