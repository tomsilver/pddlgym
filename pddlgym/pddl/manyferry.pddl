(define (domain ferry)
   (:predicates (not-eq ?x ?y)
        (car ?c)
        (location ?l)
        (at-ferry ?l)
        (at ?c ?l)
        (empty-ferry)
        (on ?c))

   (:action sail
       :parameters  (?from ?to)
       :precondition (and (not-eq ?from ?to) 
                          (location ?from) (location ?to) (at-ferry ?from))
       :effect (and  (at-ferry ?to)
             (not (at-ferry ?from))))


   (:action board
       :parameters (?car ?loc)
       :precondition  (and  (car ?car) (location ?loc)
                (at ?car ?loc) (at-ferry ?loc) (empty-ferry))
       :effect (and (on ?car)
            (not (at ?car ?loc)) 
            (not (empty-ferry))))

   (:action debark
       :parameters  (?car  ?loc)
       :precondition  (and  (car ?car) (location ?loc)
                (on ?car) (at-ferry ?loc))
       :effect (and (at ?car ?loc)
            (empty-ferry)
            (not (on ?car)))))
