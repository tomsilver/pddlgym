(define (domain doors-keys-gems)
    (:requirements :typing)
    (:types key gem - item 
            dir loc - other
    )
    (:predicates (conn ?d - dir ?l1 - loc ?l2 - loc) (wall ?l - loc) (door ?l - loc)
                 (at ?o - item ?l - loc) (has ?o - item) (pos ?l - loc))
    (:action pickup
     :parameters (?i - item ?l - loc)
     :precondition (and (pos ?l) (at ?i ?l))
     :effect (and (not (at ?i ?l)) (has ?i))
    )
    (:action unlock
     :parameters (?k - key ?from - loc ?to - loc ?dir - dir)
     :precondition (and (has ?k) (pos ?from) (door ?to) (conn ?dir ?from ?to))
     :effect (and (not (has ?k)) (not (door ?to)))
    )
    (:action move
     :parameters (?from - loc ?to - loc ?dir - dir)
     :precondition (and (pos ?from) (conn ?dir ?from ?to)
                        (not (wall ?to)) (not (door ?to)))
     :effect (and (pos ?to) (not (pos ?from)))
    )
)
