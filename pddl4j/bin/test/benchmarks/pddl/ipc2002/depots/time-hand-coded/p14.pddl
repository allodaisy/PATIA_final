(define (problem depotprob7654) (:domain Depot)
(:objects
	depot0 depot1 depot2 - Depot
	distributor0 distributor1 distributor2 - Distributor
	truck0 truck1 truck2 truck3 truck4 truck5 truck6 truck7 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 crate16 crate17 crate18 crate19 crate20 crate21 crate22 crate23 crate24 crate25 crate26 crate27 crate28 crate29 crate30 crate31 crate32 crate33 crate34 crate35 crate36 crate37 crate38 crate39 crate40 crate41 crate42 crate43 crate44 crate45 crate46 crate47 crate48 crate49 crate50 crate51 crate52 crate53 crate54 crate55 crate56 crate57 crate58 crate59 crate60 crate61 crate62 crate63 crate64 crate65 crate66 crate67 crate68 crate69 crate70 crate71 crate72 crate73 crate74 crate75 crate76 crate77 crate78 crate79 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 hoist10 hoist11 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate71)
	(at pallet1 depot1)
	(clear crate49)
	(at pallet2 depot2)
	(clear crate67)
	(at pallet3 distributor0)
	(clear crate76)
	(at pallet4 distributor1)
	(clear crate50)
	(at pallet5 distributor2)
	(clear crate75)
	(at pallet6 depot1)
	(clear crate78)
	(at pallet7 distributor0)
	(clear crate79)
	(at pallet8 depot2)
	(clear crate74)
	(at pallet9 depot0)
	(clear crate69)
	(at truck0 depot1)
	(= (speed truck0) 3)
	(at truck1 depot2)
	(= (speed truck1) 2)
	(at truck2 distributor1)
	(= (speed truck2) 5)
	(at truck3 distributor0)
	(= (speed truck3) 6)
	(at truck4 distributor2)
	(= (speed truck4) 6)
	(at truck5 depot2)
	(= (speed truck5) 4)
	(at truck6 distributor1)
	(= (speed truck6) 7)
	(at truck7 depot0)
	(= (speed truck7) 2)
	(at hoist0 depot0)
	(available hoist0)
	(= (power hoist0) 2)
	(at hoist1 depot1)
	(available hoist1)
	(= (power hoist1) 1)
	(at hoist2 depot2)
	(available hoist2)
	(= (power hoist2) 9)
	(at hoist3 distributor0)
	(available hoist3)
	(= (power hoist3) 10)
	(at hoist4 distributor1)
	(available hoist4)
	(= (power hoist4) 4)
	(at hoist5 distributor2)
	(available hoist5)
	(= (power hoist5) 7)
	(at hoist6 distributor0)
	(available hoist6)
	(= (power hoist6) 1)
	(at hoist7 distributor1)
	(available hoist7)
	(= (power hoist7) 10)
	(at hoist8 distributor0)
	(available hoist8)
	(= (power hoist8) 5)
	(at hoist9 distributor0)
	(available hoist9)
	(= (power hoist9) 5)
	(at hoist10 depot2)
	(available hoist10)
	(= (power hoist10) 2)
	(at hoist11 distributor2)
	(available hoist11)
	(= (power hoist11) 4)
	(at crate0 depot1)
	(on crate0 pallet1)
	(= (weight crate0) 1)
	(at crate1 distributor0)
	(on crate1 pallet7)
	(= (weight crate1) 1)
	(at crate2 depot1)
	(on crate2 crate0)
	(= (weight crate2) 1)
	(at crate3 distributor2)
	(on crate3 pallet5)
	(= (weight crate3) 1)
	(at crate4 depot1)
	(on crate4 pallet6)
	(= (weight crate4) 1)
	(at crate5 distributor2)
	(on crate5 crate3)
	(= (weight crate5) 1)
	(at crate6 depot2)
	(on crate6 pallet2)
	(= (weight crate6) 1)
	(at crate7 depot1)
	(on crate7 crate2)
	(= (weight crate7) 1)
	(at crate8 distributor1)
	(on crate8 pallet4)
	(= (weight crate8) 1)
	(at crate9 distributor2)
	(on crate9 crate5)
	(= (weight crate9) 1)
	(at crate10 distributor0)
	(on crate10 crate1)
	(= (weight crate10) 1)
	(at crate11 distributor1)
	(on crate11 crate8)
	(= (weight crate11) 1)
	(at crate12 distributor0)
	(on crate12 crate10)
	(= (weight crate12) 1)
	(at crate13 depot2)
	(on crate13 crate6)
	(= (weight crate13) 1)
	(at crate14 depot1)
	(on crate14 crate7)
	(= (weight crate14) 1)
	(at crate15 depot2)
	(on crate15 pallet8)
	(= (weight crate15) 1)
	(at crate16 depot1)
	(on crate16 crate14)
	(= (weight crate16) 1)
	(at crate17 distributor1)
	(on crate17 crate11)
	(= (weight crate17) 1)
	(at crate18 distributor0)
	(on crate18 crate12)
	(= (weight crate18) 1)
	(at crate19 depot0)
	(on crate19 pallet0)
	(= (weight crate19) 1)
	(at crate20 depot1)
	(on crate20 crate4)
	(= (weight crate20) 1)
	(at crate21 depot0)
	(on crate21 pallet9)
	(= (weight crate21) 1)
	(at crate22 distributor2)
	(on crate22 crate9)
	(= (weight crate22) 1)
	(at crate23 distributor1)
	(on crate23 crate17)
	(= (weight crate23) 1)
	(at crate24 distributor0)
	(on crate24 pallet3)
	(= (weight crate24) 1)
	(at crate25 distributor0)
	(on crate25 crate18)
	(= (weight crate25) 1)
	(at crate26 depot1)
	(on crate26 crate16)
	(= (weight crate26) 1)
	(at crate27 depot1)
	(on crate27 crate26)
	(= (weight crate27) 1)
	(at crate28 depot0)
	(on crate28 crate21)
	(= (weight crate28) 1)
	(at crate29 depot1)
	(on crate29 crate27)
	(= (weight crate29) 1)
	(at crate30 depot1)
	(on crate30 crate20)
	(= (weight crate30) 1)
	(at crate31 distributor1)
	(on crate31 crate23)
	(= (weight crate31) 1)
	(at crate32 depot1)
	(on crate32 crate30)
	(= (weight crate32) 1)
	(at crate33 depot0)
	(on crate33 crate19)
	(= (weight crate33) 1)
	(at crate34 depot0)
	(on crate34 crate28)
	(= (weight crate34) 1)
	(at crate35 distributor0)
	(on crate35 crate25)
	(= (weight crate35) 1)
	(at crate36 depot1)
	(on crate36 crate32)
	(= (weight crate36) 1)
	(at crate37 distributor0)
	(on crate37 crate24)
	(= (weight crate37) 1)
	(at crate38 depot2)
	(on crate38 crate15)
	(= (weight crate38) 1)
	(at crate39 depot1)
	(on crate39 crate29)
	(= (weight crate39) 1)
	(at crate40 depot2)
	(on crate40 crate38)
	(= (weight crate40) 1)
	(at crate41 distributor0)
	(on crate41 crate37)
	(= (weight crate41) 1)
	(at crate42 depot0)
	(on crate42 crate33)
	(= (weight crate42) 1)
	(at crate43 depot2)
	(on crate43 crate40)
	(= (weight crate43) 1)
	(at crate44 depot2)
	(on crate44 crate43)
	(= (weight crate44) 1)
	(at crate45 depot1)
	(on crate45 crate39)
	(= (weight crate45) 1)
	(at crate46 depot0)
	(on crate46 crate42)
	(= (weight crate46) 1)
	(at crate47 depot2)
	(on crate47 crate13)
	(= (weight crate47) 1)
	(at crate48 distributor1)
	(on crate48 crate31)
	(= (weight crate48) 1)
	(at crate49 depot1)
	(on crate49 crate45)
	(= (weight crate49) 1)
	(at crate50 distributor1)
	(on crate50 crate48)
	(= (weight crate50) 1)
	(at crate51 depot0)
	(on crate51 crate34)
	(= (weight crate51) 1)
	(at crate52 depot1)
	(on crate52 crate36)
	(= (weight crate52) 1)
	(at crate53 distributor0)
	(on crate53 crate41)
	(= (weight crate53) 1)
	(at crate54 depot0)
	(on crate54 crate46)
	(= (weight crate54) 1)
	(at crate55 depot1)
	(on crate55 crate52)
	(= (weight crate55) 1)
	(at crate56 depot2)
	(on crate56 crate47)
	(= (weight crate56) 1)
	(at crate57 depot0)
	(on crate57 crate51)
	(= (weight crate57) 1)
	(at crate58 distributor2)
	(on crate58 crate22)
	(= (weight crate58) 1)
	(at crate59 depot2)
	(on crate59 crate56)
	(= (weight crate59) 1)
	(at crate60 depot2)
	(on crate60 crate44)
	(= (weight crate60) 1)
	(at crate61 depot2)
	(on crate61 crate60)
	(= (weight crate61) 1)
	(at crate62 depot0)
	(on crate62 crate57)
	(= (weight crate62) 1)
	(at crate63 distributor0)
	(on crate63 crate35)
	(= (weight crate63) 1)
	(at crate64 distributor2)
	(on crate64 crate58)
	(= (weight crate64) 1)
	(at crate65 depot2)
	(on crate65 crate61)
	(= (weight crate65) 1)
	(at crate66 depot2)
	(on crate66 crate65)
	(= (weight crate66) 1)
	(at crate67 depot2)
	(on crate67 crate59)
	(= (weight crate67) 1)
	(at crate68 depot0)
	(on crate68 crate54)
	(= (weight crate68) 1)
	(at crate69 depot0)
	(on crate69 crate62)
	(= (weight crate69) 1)
	(at crate70 depot0)
	(on crate70 crate68)
	(= (weight crate70) 1)
	(at crate71 depot0)
	(on crate71 crate70)
	(= (weight crate71) 1)
	(at crate72 depot1)
	(on crate72 crate55)
	(= (weight crate72) 1)
	(at crate73 depot1)
	(on crate73 crate72)
	(= (weight crate73) 1)
	(at crate74 depot2)
	(on crate74 crate66)
	(= (weight crate74) 1)
	(at crate75 distributor2)
	(on crate75 crate64)
	(= (weight crate75) 1)
	(at crate76 distributor0)
	(on crate76 crate53)
	(= (weight crate76) 1)
	(at crate77 depot1)
	(on crate77 crate73)
	(= (weight crate77) 1)
	(at crate78 depot1)
	(on crate78 crate77)
	(= (weight crate78) 1)
	(at crate79 distributor0)
	(on crate79 crate63)
	(= (weight crate79) 1)
	(= (distance depot0 depot0) 0)
	(= (distance depot0 depot1) 2)
	(= (distance depot0 depot2) 10)
	(= (distance depot0 distributor0) 6)
	(= (distance depot0 distributor1) 1)
	(= (distance depot0 distributor2) 7)
	(= (distance depot1 depot0) 3)
	(= (distance depot1 depot1) 0)
	(= (distance depot1 depot2) 3)
	(= (distance depot1 distributor0) 1)
	(= (distance depot1 distributor1) 10)
	(= (distance depot1 distributor2) 3)
	(= (distance depot2 depot0) 7)
	(= (distance depot2 depot1) 3)
	(= (distance depot2 depot2) 0)
	(= (distance depot2 distributor0) 7)
	(= (distance depot2 distributor1) 2)
	(= (distance depot2 distributor2) 4)
	(= (distance distributor0 depot0) 4)
	(= (distance distributor0 depot1) 10)
	(= (distance distributor0 depot2) 6)
	(= (distance distributor0 distributor0) 0)
	(= (distance distributor0 distributor1) 8)
	(= (distance distributor0 distributor2) 3)
	(= (distance distributor1 depot0) 5)
	(= (distance distributor1 depot1) 3)
	(= (distance distributor1 depot2) 4)
	(= (distance distributor1 distributor0) 3)
	(= (distance distributor1 distributor1) 0)
	(= (distance distributor1 distributor2) 10)
	(= (distance distributor2 depot0) 7)
	(= (distance distributor2 depot1) 6)
	(= (distance distributor2 depot2) 1)
	(= (distance distributor2 distributor0) 6)
	(= (distance distributor2 distributor1) 2)
	(= (distance distributor2 distributor2) 0)
)

(:goal (and
		(on crate0 crate76)
		(on crate1 pallet1)
		(on crate2 crate72)
		(on crate3 crate41)
		(on crate4 crate29)
		(on crate7 crate35)
		(on crate8 pallet4)
		(on crate9 crate18)
		(on crate10 crate71)
		(on crate11 crate2)
		(on crate12 pallet2)
		(on crate13 crate7)
		(on crate15 crate45)
		(on crate16 crate38)
		(on crate17 crate77)
		(on crate18 crate79)
		(on crate19 crate10)
		(on crate21 crate37)
		(on crate22 pallet7)
		(on crate23 crate53)
		(on crate24 crate34)
		(on crate25 crate48)
		(on crate26 crate54)
		(on crate27 crate22)
		(on crate28 crate21)
		(on crate29 crate15)
		(on crate30 crate52)
		(on crate31 crate0)
		(on crate33 pallet5)
		(on crate34 crate56)
		(on crate35 crate62)
		(on crate37 crate30)
		(on crate38 pallet8)
		(on crate39 pallet9)
		(on crate40 crate17)
		(on crate41 crate73)
		(on crate42 crate1)
		(on crate43 pallet6)
		(on crate44 crate11)
		(on crate45 crate55)
		(on crate46 crate51)
		(on crate47 crate66)
		(on crate48 crate13)
		(on crate49 crate69)
		(on crate51 crate12)
		(on crate52 pallet3)
		(on crate53 crate4)
		(on crate54 crate9)
		(on crate55 crate46)
		(on crate56 crate27)
		(on crate57 crate25)
		(on crate58 crate63)
		(on crate62 crate75)
		(on crate63 crate3)
		(on crate64 crate43)
		(on crate65 crate24)
		(on crate66 crate33)
		(on crate67 crate19)
		(on crate68 crate8)
		(on crate69 pallet0)
		(on crate70 crate23)
		(on crate71 crate16)
		(on crate72 crate40)
		(on crate73 crate42)
		(on crate75 crate64)
		(on crate76 crate65)
		(on crate77 crate39)
		(on crate78 crate67)
		(on crate79 crate47)
	)
)

(:metric minimize (total-time)))