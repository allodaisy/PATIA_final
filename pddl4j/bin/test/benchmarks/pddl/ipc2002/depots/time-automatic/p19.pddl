(define (problem depotprob6178) (:domain Depot)
(:objects
	depot0 depot1 depot2 depot3 - Depot
	distributor0 distributor1 distributor2 distributor3 - Distributor
	truck0 truck1 truck2 truck3 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate6)
	(at pallet1 depot1)
	(clear crate1)
	(at pallet2 depot2)
	(clear pallet2)
	(at pallet3 depot3)
	(clear crate7)
	(at pallet4 distributor0)
	(clear crate2)
	(at pallet5 distributor1)
	(clear crate5)
	(at pallet6 distributor2)
	(clear pallet6)
	(at pallet7 distributor3)
	(clear pallet7)
	(at pallet8 distributor2)
	(clear crate4)
	(at pallet9 depot3)
	(clear crate0)
	(at truck0 depot0)
	(= (speed truck0) 5)
	(at truck1 distributor0)
	(= (speed truck1) 6)
	(at truck2 depot2)
	(= (speed truck2) 2)
	(at truck3 distributor3)
	(= (speed truck3) 6)
	(at hoist0 depot0)
	(available hoist0)
	(= (power hoist0) 7)
	(at hoist1 depot1)
	(available hoist1)
	(= (power hoist1) 7)
	(at hoist2 depot2)
	(available hoist2)
	(= (power hoist2) 1)
	(at hoist3 depot3)
	(available hoist3)
	(= (power hoist3) 1)
	(at hoist4 distributor0)
	(available hoist4)
	(= (power hoist4) 1)
	(at hoist5 distributor1)
	(available hoist5)
	(= (power hoist5) 5)
	(at hoist6 distributor2)
	(available hoist6)
	(= (power hoist6) 2)
	(at hoist7 distributor3)
	(available hoist7)
	(= (power hoist7) 3)
	(at crate0 depot3)
	(on crate0 pallet9)
	(= (weight crate0) 81)
	(at crate1 depot1)
	(on crate1 pallet1)
	(= (weight crate1) 32)
	(at crate2 distributor0)
	(on crate2 pallet4)
	(= (weight crate2) 50)
	(at crate3 distributor1)
	(on crate3 pallet5)
	(= (weight crate3) 80)
	(at crate4 distributor2)
	(on crate4 pallet8)
	(= (weight crate4) 20)
	(at crate5 distributor1)
	(on crate5 crate3)
	(= (weight crate5) 63)
	(at crate6 depot0)
	(on crate6 pallet0)
	(= (weight crate6) 93)
	(at crate7 depot3)
	(on crate7 pallet3)
	(= (weight crate7) 67)
	(= (distance depot0 depot0) 0)
	(= (distance depot0 depot1) 5)
	(= (distance depot0 depot2) 3)
	(= (distance depot0 depot3) 2)
	(= (distance depot0 distributor0) 10)
	(= (distance depot0 distributor1) 8)
	(= (distance depot0 distributor2) 4)
	(= (distance depot0 distributor3) 2)
	(= (distance depot1 depot0) 4)
	(= (distance depot1 depot1) 0)
	(= (distance depot1 depot2) 5)
	(= (distance depot1 depot3) 8)
	(= (distance depot1 distributor0) 8)
	(= (distance depot1 distributor1) 9)
	(= (distance depot1 distributor2) 8)
	(= (distance depot1 distributor3) 7)
	(= (distance depot2 depot0) 1)
	(= (distance depot2 depot1) 3)
	(= (distance depot2 depot2) 0)
	(= (distance depot2 depot3) 6)
	(= (distance depot2 distributor0) 2)
	(= (distance depot2 distributor1) 7)
	(= (distance depot2 distributor2) 4)
	(= (distance depot2 distributor3) 10)
	(= (distance depot3 depot0) 4)
	(= (distance depot3 depot1) 7)
	(= (distance depot3 depot2) 2)
	(= (distance depot3 depot3) 0)
	(= (distance depot3 distributor0) 3)
	(= (distance depot3 distributor1) 7)
	(= (distance depot3 distributor2) 6)
	(= (distance depot3 distributor3) 4)
	(= (distance distributor0 depot0) 1)
	(= (distance distributor0 depot1) 8)
	(= (distance distributor0 depot2) 5)
	(= (distance distributor0 depot3) 10)
	(= (distance distributor0 distributor0) 0)
	(= (distance distributor0 distributor1) 8)
	(= (distance distributor0 distributor2) 2)
	(= (distance distributor0 distributor3) 9)
	(= (distance distributor1 depot0) 9)
	(= (distance distributor1 depot1) 6)
	(= (distance distributor1 depot2) 6)
	(= (distance distributor1 depot3) 7)
	(= (distance distributor1 distributor0) 5)
	(= (distance distributor1 distributor1) 0)
	(= (distance distributor1 distributor2) 4)
	(= (distance distributor1 distributor3) 5)
	(= (distance distributor2 depot0) 6)
	(= (distance distributor2 depot1) 4)
	(= (distance distributor2 depot2) 1)
	(= (distance distributor2 depot3) 8)
	(= (distance distributor2 distributor0) 1)
	(= (distance distributor2 distributor1) 4)
	(= (distance distributor2 distributor2) 0)
	(= (distance distributor2 distributor3) 4)
	(= (distance distributor3 depot0) 1)
	(= (distance distributor3 depot1) 9)
	(= (distance distributor3 depot2) 8)
	(= (distance distributor3 depot3) 3)
	(= (distance distributor3 distributor0) 5)
	(= (distance distributor3 distributor1) 3)
	(= (distance distributor3 distributor2) 6)
	(= (distance distributor3 distributor3) 0)
)

(:goal (and
		(on crate0 pallet6)
		(on crate1 pallet8)
		(on crate3 crate1)
		(on crate4 pallet5)
		(on crate5 crate7)
		(on crate6 pallet4)
		(on crate7 crate4)
	)
)

(:metric minimize (total-time)))