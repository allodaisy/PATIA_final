(define (problem depotprob4321) (:domain Depot)
(:objects
	depot0 depot1 depot2 depot3 depot4 depot5 depot6 depot7 depot8 depot9 - Depot
	distributor0 distributor1 distributor2 distributor3 distributor4 distributor5 distributor6 distributor7 distributor8 distributor9 - Distributor
	truck0 truck1 truck2 truck3 truck4 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 pallet11 pallet12 pallet13 pallet14 pallet15 pallet16 pallet17 pallet18 pallet19 pallet20 pallet21 pallet22 pallet23 pallet24 pallet25 pallet26 pallet27 pallet28 pallet29 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 crate16 crate17 crate18 crate19 crate20 crate21 crate22 crate23 crate24 crate25 crate26 crate27 crate28 crate29 crate30 crate31 crate32 crate33 crate34 crate35 crate36 crate37 crate38 crate39 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 hoist10 hoist11 hoist12 hoist13 hoist14 hoist15 hoist16 hoist17 hoist18 hoist19 - Hoist)
(:init
	(at pallet0 depot0)
	(clear pallet0)
	(at pallet1 depot1)
	(clear crate23)
	(at pallet2 depot2)
	(clear crate16)
	(at pallet3 depot3)
	(clear crate37)
	(at pallet4 depot4)
	(clear crate21)
	(at pallet5 depot5)
	(clear crate38)
	(at pallet6 depot6)
	(clear crate4)
	(at pallet7 depot7)
	(clear crate34)
	(at pallet8 depot8)
	(clear crate5)
	(at pallet9 depot9)
	(clear crate35)
	(at pallet10 distributor0)
	(clear crate14)
	(at pallet11 distributor1)
	(clear pallet11)
	(at pallet12 distributor2)
	(clear crate30)
	(at pallet13 distributor3)
	(clear crate12)
	(at pallet14 distributor4)
	(clear pallet14)
	(at pallet15 distributor5)
	(clear crate7)
	(at pallet16 distributor6)
	(clear pallet16)
	(at pallet17 distributor7)
	(clear crate27)
	(at pallet18 distributor8)
	(clear crate19)
	(at pallet19 distributor9)
	(clear crate36)
	(at pallet20 distributor2)
	(clear crate32)
	(at pallet21 distributor6)
	(clear crate22)
	(at pallet22 depot9)
	(clear crate3)
	(at pallet23 distributor4)
	(clear crate29)
	(at pallet24 distributor5)
	(clear crate11)
	(at pallet25 distributor1)
	(clear crate9)
	(at pallet26 depot7)
	(clear pallet26)
	(at pallet27 depot6)
	(clear crate39)
	(at pallet28 distributor9)
	(clear pallet28)
	(at pallet29 depot2)
	(clear pallet29)
	(at truck0 depot2)
	(at truck1 depot4)
	(at truck2 depot8)
	(at truck3 depot6)
	(at truck4 distributor9)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 depot1)
	(available hoist1)
	(at hoist2 depot2)
	(available hoist2)
	(at hoist3 depot3)
	(available hoist3)
	(at hoist4 depot4)
	(available hoist4)
	(at hoist5 depot5)
	(available hoist5)
	(at hoist6 depot6)
	(available hoist6)
	(at hoist7 depot7)
	(available hoist7)
	(at hoist8 depot8)
	(available hoist8)
	(at hoist9 depot9)
	(available hoist9)
	(at hoist10 distributor0)
	(available hoist10)
	(at hoist11 distributor1)
	(available hoist11)
	(at hoist12 distributor2)
	(available hoist12)
	(at hoist13 distributor3)
	(available hoist13)
	(at hoist14 distributor4)
	(available hoist14)
	(at hoist15 distributor5)
	(available hoist15)
	(at hoist16 distributor6)
	(available hoist16)
	(at hoist17 distributor7)
	(available hoist17)
	(at hoist18 distributor8)
	(available hoist18)
	(at hoist19 distributor9)
	(available hoist19)
	(at crate0 distributor1)
	(on crate0 pallet25)
	(at crate1 distributor2)
	(on crate1 pallet20)
	(at crate2 distributor5)
	(on crate2 pallet15)
	(at crate3 depot9)
	(on crate3 pallet22)
	(at crate4 depot6)
	(on crate4 pallet6)
	(at crate5 depot8)
	(on crate5 pallet8)
	(at crate6 distributor3)
	(on crate6 pallet13)
	(at crate7 distributor5)
	(on crate7 crate2)
	(at crate8 distributor1)
	(on crate8 crate0)
	(at crate9 distributor1)
	(on crate9 crate8)
	(at crate10 depot7)
	(on crate10 pallet7)
	(at crate11 distributor5)
	(on crate11 pallet24)
	(at crate12 distributor3)
	(on crate12 crate6)
	(at crate13 distributor0)
	(on crate13 pallet10)
	(at crate14 distributor0)
	(on crate14 crate13)
	(at crate15 depot2)
	(on crate15 pallet2)
	(at crate16 depot2)
	(on crate16 crate15)
	(at crate17 distributor2)
	(on crate17 pallet12)
	(at crate18 distributor6)
	(on crate18 pallet21)
	(at crate19 distributor8)
	(on crate19 pallet18)
	(at crate20 distributor6)
	(on crate20 crate18)
	(at crate21 depot4)
	(on crate21 pallet4)
	(at crate22 distributor6)
	(on crate22 crate20)
	(at crate23 depot1)
	(on crate23 pallet1)
	(at crate24 depot9)
	(on crate24 pallet9)
	(at crate25 depot6)
	(on crate25 pallet27)
	(at crate26 distributor7)
	(on crate26 pallet17)
	(at crate27 distributor7)
	(on crate27 crate26)
	(at crate28 depot3)
	(on crate28 pallet3)
	(at crate29 distributor4)
	(on crate29 pallet23)
	(at crate30 distributor2)
	(on crate30 crate17)
	(at crate31 distributor9)
	(on crate31 pallet19)
	(at crate32 distributor2)
	(on crate32 crate1)
	(at crate33 depot3)
	(on crate33 crate28)
	(at crate34 depot7)
	(on crate34 crate10)
	(at crate35 depot9)
	(on crate35 crate24)
	(at crate36 distributor9)
	(on crate36 crate31)
	(at crate37 depot3)
	(on crate37 crate33)
	(at crate38 depot5)
	(on crate38 pallet5)
	(at crate39 depot6)
	(on crate39 crate25)
)

(:goal (and
		(on crate0 crate19)
		(on crate1 crate9)
		(on crate3 pallet1)
		(on crate4 crate12)
		(on crate5 crate29)
		(on crate7 pallet28)
		(on crate8 pallet7)
		(on crate9 crate5)
		(on crate11 crate32)
		(on crate12 pallet0)
		(on crate14 crate11)
		(on crate15 crate27)
		(on crate16 pallet6)
		(on crate17 crate1)
		(on crate18 crate25)
		(on crate19 crate3)
		(on crate20 pallet2)
		(on crate21 pallet23)
		(on crate22 crate20)
		(on crate23 pallet10)
		(on crate24 crate0)
		(on crate25 pallet18)
		(on crate26 pallet15)
		(on crate27 pallet21)
		(on crate28 pallet27)
		(on crate29 pallet8)
		(on crate30 pallet19)
		(on crate31 pallet20)
		(on crate32 pallet3)
		(on crate33 crate21)
		(on crate35 crate24)
		(on crate37 crate14)
		(on crate38 crate28)
		(on crate39 crate7)
	)
))
