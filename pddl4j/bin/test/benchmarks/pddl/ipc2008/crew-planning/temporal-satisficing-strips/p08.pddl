(define (problem CrewPlanning_2crew_1day_100utilization)
(:domain CrewPlanning)
(:objects
	d0 d1 d2 - Day

	c1 c2 - CrewMember
	mcs1 mcs2 - MedicalState

	spaceshipFilter - FilterState

	rpcm1 - RPCM

	pa1_1 pa1_2 pa1_3 pa1_4 pa1_5 pa1_6 pa1_7 pa1_8 - PayloadAct

	e1 e2 - ExerEquipment
)

(:init
	(currentday c1 d0)
	(done_sleep c1 d0)
	(available c1)
	(currentday c2 d0)
	(done_sleep c2 d0)
	(available c2)
	(initiated d1)
	(next d0 d1)
	(next d1 d2)
	
	(unused e1)
	(unused e2)
	)

(:goal
(and
	(done_sleep c1 d1)
	(done_sleep c2 d1)
	(initiated d2)

	(mcs_finished mcs1 d1)

	(changed spaceshipFilter d1)

	(done_rpcm rpcm1 d1)

	(payload_act_completed pa1_1 d1)
	(payload_act_completed pa1_2 d1)
	(payload_act_completed pa1_3 d1)
	(payload_act_completed pa1_4 d1)
	(payload_act_completed pa1_5 d1)
	(payload_act_completed pa1_6 d1)
	(payload_act_completed pa1_7 d1)
	(payload_act_completed pa1_8 d1)
)
)
(:metric minimize (total-time))
)
