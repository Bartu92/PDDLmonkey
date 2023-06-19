(define (domain monkey_banana)

  (:requirements
  	:typing
    :negative-preconditions
  )

  (:types
    location
    item monkey - object
  )

  (:predicates
	  (at ?obj - object ?loc - location)
    (monkey_high ?m - monkey)
  )

  (:action goto
	     :parameters (?m - monkey ?x - location ?y - location) ; move monkey from x to y
	     :precondition (and (at ?m ?x))  ; monkey is located at x
	     :effect (and  (not (at ?m ?x))  ; delete the fact that the monkey is at x
	     							 (at ?m ?y))       ; add the fact that the monkey is at y
	 )

  (:action climb
       :parameters (?m - monkey ?box - item ?x - location)
       :precondition (and (at ?m ?x)
                          (at ?box ?x)
                          (not (monkey_high ?m)))
       :effect (and  (monkey_high ?m))
  )

  (:action get_down
       :parameters (?m - monkey ?box - item ?x - location)
       :precondition (and (at ?m ?x)
                          (at ?box ?x)
                          (monkey_high ?m))
       :effect (and  (not (monkey_high ?m)))
  )

)
