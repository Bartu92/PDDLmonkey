(define (domain monkey_banana)

  (:requirements
    :typing
    :negative-preconditions
  )

  (:types
    location
    monkey item - object
    cutter_ob - item
    box - item
    glass - item
    banana - item
  )

  (:predicates
    (at ?obj - object ?loc - location)
    (monkey_high ?m - monkey)
    (holding ?m - monkey ?obj - object)
    (banana_cut ?m - monkey)
    (water_filled ?m - monkey)
  )

  (:action goto
    :parameters (?m - monkey ?x - location ?y - location)
    :precondition (and (at ?m ?x) (not (monkey_high ?m)))
    :effect (and (not (at ?m ?x)) (at ?m ?y))
  )

  (:action climb
    :parameters (?m - monkey ?box - box ?x - location)
    :precondition (and (at ?m ?x) (at ?box ?x) (not (monkey_high ?m)))
    :effect (and (monkey_high ?m))
  )

  (:action get_down
    :parameters (?m - monkey ?box - box ?x - location)
    :precondition (and (at ?m ?x) (at ?box ?x) (monkey_high ?m))
    :effect (and (not (monkey_high ?m)))
  )

  (:action take_banana
    :parameters (?m - monkey ?banana - object ?x - location ?knife - cutter_ob)
    :precondition (and (at ?m ?x) (at ?banana ?x) (not (holding ?m ?banana)) (monkey_high ?m) (holding ?m ?knife) (not (banana_cut ?m)))
    :effect (and (holding ?m ?banana) (banana_cut ?m))
  )

  (:action take_knife
    :parameters (?m - monkey ?knife - cutter_ob ?x - location)
    :precondition (and (at ?m ?x) (at ?knife ?x) (not (holding ?m ?knife)) )
    :effect (and (holding ?m ?knife))
  )

  (:action take_water_glass
    :parameters (?m - monkey ?x - location ?banana - banana ?glass - glass)
    :precondition (and (at ?m ?x) (at ?glass ?x) (not (holding ?m ?glass)) (not (holding ?m ?banana)) (not (banana_cut ?m)) (not (water_filled ?m)))
    :effect (and (holding ?m ?glass))
  )

  (:action release
    :parameters (?m - monkey ?obj - object ?x - location)
    :precondition (and (at ?m ?x) (holding ?m ?obj))
    :effect (and (not (holding ?m ?obj)) (at ?obj ?x))
  )

  (:action push
    :parameters (?m - monkey ?box - box ?x - location ?y - location ?banana - banana ?glass - glass ?knife - cutter_ob)
    :precondition (and (at ?m ?x) (at ?box ?x) (not (holding ?m ?banana)) (not (holding ?m ?knife)) (not (holding ?m ?glass)) (not (monkey_high ?m)))
    :effect (and (not (at ?box ?x)) (not (at ?m ?x)) (at ?box ?y) (at ?m ?y))
  )

  (:action fetch_water
    :parameters (?m - monkey ?glass - object ?x - location ?y - location ?knife - cutter_ob ?glass - glass ?banana - banana)
    :precondition (and (at ?m ?x) (at ?glass ?x) (not (holding ?m ?banana)) (not (holding ?m ?knife)) (not (holding ?m ?glass)) (not (water_filled ?m)))
    :effect (and (water_filled ?m))
  )

)
