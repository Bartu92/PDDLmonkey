(define (problem pb1)

(:domain monkey_banana)

(:objects
	p1 p2 p3 p4 - location
	charlie - monkey
	banana1 - banana
	knife1 - cutter_ob
	box_1 - box
	glass1 - glass
)	

(:init
	(at charlie p2) ; charlie is currently at p1
	(at box_1 p1)
	(at knife1 p4)
	(not (monkey_high charlie))
	(at banana1 p3)
	(not (banana_cut charlie))
	(at glass1 p4)
	
)

(:goal (and (not (monkey_high charlie)) (holding charlie banana1) (holding charlie glass1)
	   )
)

)
