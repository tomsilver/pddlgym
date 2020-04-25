
(define (domain logistics)
  (:requirements :typing )
  (:types thing location)
  (:predicates (ispackage ?v0 - thing)
    (iscity ?v0 - location)
    (istruck ?v0 - thing)
    (isplace ?v0 - location)
    (in-city ?v0 - location ?v1 - location)
    (in ?v0 - thing ?v1 - thing)
    (islocation ?v0 - location)
    (isairplane ?v0 - thing)
    (isairport ?v0 - location)
    (eq ?v0 - location ?v1 - location)
    (at ?v0 - thing ?v1 - location)
  )


    (:action load-airplane
        :parameters (?pkg - thing ?airplane - thing ?loc - location)
        :precondition (and (at ?airplane ?loc)
            (at ?pkg ?loc)
            (isairplane ?airplane)
            (ispackage ?pkg)
            (isplace ?loc))
        :effect (and
            (not (at ?pkg ?loc))
            (in ?pkg ?airplane))
    )
    

    (:action fly-airplane
        :parameters (?airplane - thing ?loc_from - location ?loc_to - location)
        :precondition (and (not (eq ?loc_from ?loc_to))
            (at ?airplane ?loc_from)
            (isairplane ?airplane)
            (isairport ?loc_from)
            (isairport ?loc_to))
        :effect (and
            (not (at ?airplane ?loc_from))
            (at ?airplane ?loc_to))
    )
    

    (:action unload-truck
        :parameters (?pkg - thing ?truck - thing ?loc - location)
        :precondition (and (at ?truck ?loc)
            (in ?pkg ?truck)
            (ispackage ?pkg)
            (isplace ?loc)
            (istruck ?truck))
        :effect (and
            (not (in ?pkg ?truck))
            (at ?pkg ?loc))
    )
    

    (:action drive-truck
        :parameters (?truck - thing ?loc_from - location ?loc_to - location ?city - location)
        :precondition (and (not (eq ?loc_from ?loc_to))
            (at ?truck ?loc_from)
            (in-city ?loc_from ?city)
            (in-city ?loc_to ?city)
            (iscity ?city)
            (isplace ?loc_from)
            (isplace ?loc_to)
            (istruck ?truck))
        :effect (and
            (not (at ?truck ?loc_from))
            (at ?truck ?loc_to))
    )
    

    (:action unload-airplane
        :parameters (?pkg - thing ?airplane - thing ?loc - location)
        :precondition (and (at ?airplane ?loc)
            (in ?pkg ?airplane)
            (isairplane ?airplane)
            (ispackage ?pkg)
            (isplace ?loc))
        :effect (and
            (not (in ?pkg ?airplane))
            (at ?pkg ?loc))
    )
    

    (:action load-truck
        :parameters (?pkg - thing ?truck - thing ?loc - location)
        :precondition (and (at ?pkg ?loc)
            (at ?truck ?loc)
            (ispackage ?pkg)
            (isplace ?loc)
            (istruck ?truck))
        :effect (and
            (not (at ?pkg ?loc))
            (in ?pkg ?truck))
    )

)
        