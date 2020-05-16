
(define (problem taxiproblem)
(:domain taxi)
(:objects
)
(:init
(= (total-cost) 0)
(in s8)
)
(:goal
(and
(done)
)
)
(:metric minimize (total-cost))
)
