(define (problem goto_problem)
  (:domain monkey_banana)

  (:objects
    monkey - monkey
    box - object
    banana - object
    knife - object
    glass - object
    P1 P2 P3 P4 P5 P6 - position
  )

  (:init
    (at monkey P1)
    (at box P2)
    (at banana P3)
    (at knife P4)
    (at glass P5)
    (monkey_high monkey)
  )

  (:goal
    (and
      (not (holding monkey banana))
      (not (holding monkey knife))
      (not (holding monkey glass))
      (not (at box P2))
      (at box P6)
    )
  )
)
