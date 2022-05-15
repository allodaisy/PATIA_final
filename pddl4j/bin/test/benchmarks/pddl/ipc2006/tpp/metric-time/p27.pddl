(define (problem pfile27)
(:domain TPP-MetricTime)
(:objects
	market1 market2 market3 market4 market5 market6 market7 - market
	depot1 depot2 depot3 - depot
	truck1 truck2 truck3 truck4 truck5 truck6 truck7 - truck
	goods1 goods2 goods3 goods4 goods5 goods6 goods7 goods8 goods9 goods10 goods11 goods12 goods13 goods14 goods15 goods16 goods17 - goods)

(:init
	(= (price goods1 market1) 49)
	(= (ready-to-load goods1 market1) 0)
	(= (on-sale goods1 market1) 17)
	(= (ready-to-load goods1 market2) 0)
	(= (on-sale goods1 market2) 0)
	(= (ready-to-load goods1 market3) 0)
	(= (on-sale goods1 market3) 0)
	(= (price goods1 market4) 15)
	(= (ready-to-load goods1 market4) 0)
	(= (on-sale goods1 market4) 16)
	(= (ready-to-load goods1 market5) 0)
	(= (on-sale goods1 market5) 0)
	(= (ready-to-load goods1 market6) 0)
	(= (on-sale goods1 market6) 0)
	(= (price goods1 market7) 34)
	(= (ready-to-load goods1 market7) 0)
	(= (on-sale goods1 market7) 20)
	(= (price goods2 market1) 26)
	(= (ready-to-load goods2 market1) 0)
	(= (on-sale goods2 market1) 9)
	(= (ready-to-load goods2 market2) 0)
	(= (on-sale goods2 market2) 0)
	(= (ready-to-load goods2 market3) 0)
	(= (on-sale goods2 market3) 0)
	(= (ready-to-load goods2 market4) 0)
	(= (on-sale goods2 market4) 0)
	(= (price goods2 market5) 18)
	(= (ready-to-load goods2 market5) 0)
	(= (on-sale goods2 market5) 17)
	(= (price goods2 market6) 17)
	(= (ready-to-load goods2 market6) 0)
	(= (on-sale goods2 market6) 3)
	(= (price goods2 market7) 14)
	(= (ready-to-load goods2 market7) 0)
	(= (on-sale goods2 market7) 13)
	(= (ready-to-load goods3 market1) 0)
	(= (on-sale goods3 market1) 0)
	(= (price goods3 market2) 18)
	(= (ready-to-load goods3 market2) 0)
	(= (on-sale goods3 market2) 20)
	(= (ready-to-load goods3 market3) 0)
	(= (on-sale goods3 market3) 0)
	(= (price goods3 market4) 11)
	(= (ready-to-load goods3 market4) 0)
	(= (on-sale goods3 market4) 15)
	(= (ready-to-load goods3 market5) 0)
	(= (on-sale goods3 market5) 0)
	(= (price goods3 market6) 12)
	(= (ready-to-load goods3 market6) 0)
	(= (on-sale goods3 market6) 5)
	(= (price goods3 market7) 43)
	(= (ready-to-load goods3 market7) 0)
	(= (on-sale goods3 market7) 3)
	(= (ready-to-load goods4 market1) 0)
	(= (on-sale goods4 market1) 0)
	(= (price goods4 market2) 24)
	(= (ready-to-load goods4 market2) 0)
	(= (on-sale goods4 market2) 11)
	(= (price goods4 market3) 32)
	(= (ready-to-load goods4 market3) 0)
	(= (on-sale goods4 market3) 16)
	(= (ready-to-load goods4 market4) 0)
	(= (on-sale goods4 market4) 0)
	(= (price goods4 market5) 36)
	(= (ready-to-load goods4 market5) 0)
	(= (on-sale goods4 market5) 1)
	(= (price goods4 market6) 36)
	(= (ready-to-load goods4 market6) 0)
	(= (on-sale goods4 market6) 8)
	(= (price goods4 market7) 25)
	(= (ready-to-load goods4 market7) 0)
	(= (on-sale goods4 market7) 3)
	(= (ready-to-load goods5 market1) 0)
	(= (on-sale goods5 market1) 0)
	(= (ready-to-load goods5 market2) 0)
	(= (on-sale goods5 market2) 0)
	(= (price goods5 market3) 1)
	(= (ready-to-load goods5 market3) 0)
	(= (on-sale goods5 market3) 2)
	(= (price goods5 market4) 13)
	(= (ready-to-load goods5 market4) 0)
	(= (on-sale goods5 market4) 12)
	(= (ready-to-load goods5 market5) 0)
	(= (on-sale goods5 market5) 0)
	(= (price goods5 market6) 3)
	(= (ready-to-load goods5 market6) 0)
	(= (on-sale goods5 market6) 16)
	(= (price goods5 market7) 1)
	(= (ready-to-load goods5 market7) 0)
	(= (on-sale goods5 market7) 18)
	(= (ready-to-load goods6 market1) 0)
	(= (on-sale goods6 market1) 0)
	(= (ready-to-load goods6 market2) 0)
	(= (on-sale goods6 market2) 0)
	(= (ready-to-load goods6 market3) 0)
	(= (on-sale goods6 market3) 0)
	(= (price goods6 market4) 8)
	(= (ready-to-load goods6 market4) 0)
	(= (on-sale goods6 market4) 7)
	(= (price goods6 market5) 10)
	(= (ready-to-load goods6 market5) 0)
	(= (on-sale goods6 market5) 18)
	(= (price goods6 market6) 27)
	(= (ready-to-load goods6 market6) 0)
	(= (on-sale goods6 market6) 15)
	(= (price goods6 market7) 12)
	(= (ready-to-load goods6 market7) 0)
	(= (on-sale goods6 market7) 4)
	(= (price goods7 market1) 3)
	(= (ready-to-load goods7 market1) 0)
	(= (on-sale goods7 market1) 11)
	(= (price goods7 market2) 6)
	(= (ready-to-load goods7 market2) 0)
	(= (on-sale goods7 market2) 4)
	(= (price goods7 market3) 18)
	(= (ready-to-load goods7 market3) 0)
	(= (on-sale goods7 market3) 15)
	(= (ready-to-load goods7 market4) 0)
	(= (on-sale goods7 market4) 0)
	(= (price goods7 market5) 30)
	(= (ready-to-load goods7 market5) 0)
	(= (on-sale goods7 market5) 4)
	(= (price goods7 market6) 30)
	(= (ready-to-load goods7 market6) 0)
	(= (on-sale goods7 market6) 13)
	(= (price goods7 market7) 5)
	(= (ready-to-load goods7 market7) 0)
	(= (on-sale goods7 market7) 5)
	(= (ready-to-load goods8 market1) 0)
	(= (on-sale goods8 market1) 0)
	(= (ready-to-load goods8 market2) 0)
	(= (on-sale goods8 market2) 0)
	(= (ready-to-load goods8 market3) 0)
	(= (on-sale goods8 market3) 0)
	(= (ready-to-load goods8 market4) 0)
	(= (on-sale goods8 market4) 0)
	(= (price goods8 market5) 39)
	(= (ready-to-load goods8 market5) 0)
	(= (on-sale goods8 market5) 2)
	(= (price goods8 market6) 24)
	(= (ready-to-load goods8 market6) 0)
	(= (on-sale goods8 market6) 10)
	(= (price goods8 market7) 33)
	(= (ready-to-load goods8 market7) 0)
	(= (on-sale goods8 market7) 1)
	(= (ready-to-load goods9 market1) 0)
	(= (on-sale goods9 market1) 0)
	(= (price goods9 market2) 27)
	(= (ready-to-load goods9 market2) 0)
	(= (on-sale goods9 market2) 17)
	(= (ready-to-load goods9 market3) 0)
	(= (on-sale goods9 market3) 0)
	(= (ready-to-load goods9 market4) 0)
	(= (on-sale goods9 market4) 0)
	(= (ready-to-load goods9 market5) 0)
	(= (on-sale goods9 market5) 0)
	(= (ready-to-load goods9 market6) 0)
	(= (on-sale goods9 market6) 0)
	(= (price goods9 market7) 35)
	(= (ready-to-load goods9 market7) 0)
	(= (on-sale goods9 market7) 5)
	(= (ready-to-load goods10 market1) 0)
	(= (on-sale goods10 market1) 0)
	(= (price goods10 market2) 8)
	(= (ready-to-load goods10 market2) 0)
	(= (on-sale goods10 market2) 20)
	(= (ready-to-load goods10 market3) 0)
	(= (on-sale goods10 market3) 0)
	(= (ready-to-load goods10 market4) 0)
	(= (on-sale goods10 market4) 0)
	(= (price goods10 market5) 34)
	(= (ready-to-load goods10 market5) 0)
	(= (on-sale goods10 market5) 6)
	(= (ready-to-load goods10 market6) 0)
	(= (on-sale goods10 market6) 0)
	(= (price goods10 market7) 1)
	(= (ready-to-load goods10 market7) 0)
	(= (on-sale goods10 market7) 6)
	(= (ready-to-load goods11 market1) 0)
	(= (on-sale goods11 market1) 0)
	(= (ready-to-load goods11 market2) 0)
	(= (on-sale goods11 market2) 0)
	(= (price goods11 market3) 23)
	(= (ready-to-load goods11 market3) 0)
	(= (on-sale goods11 market3) 9)
	(= (price goods11 market4) 7)
	(= (ready-to-load goods11 market4) 0)
	(= (on-sale goods11 market4) 1)
	(= (price goods11 market5) 33)
	(= (ready-to-load goods11 market5) 0)
	(= (on-sale goods11 market5) 10)
	(= (price goods11 market6) 38)
	(= (ready-to-load goods11 market6) 0)
	(= (on-sale goods11 market6) 10)
	(= (price goods11 market7) 22)
	(= (ready-to-load goods11 market7) 0)
	(= (on-sale goods11 market7) 8)
	(= (price goods12 market1) 31)
	(= (ready-to-load goods12 market1) 0)
	(= (on-sale goods12 market1) 6)
	(= (price goods12 market2) 9)
	(= (ready-to-load goods12 market2) 0)
	(= (on-sale goods12 market2) 16)
	(= (ready-to-load goods12 market3) 0)
	(= (on-sale goods12 market3) 0)
	(= (price goods12 market4) 16)
	(= (ready-to-load goods12 market4) 0)
	(= (on-sale goods12 market4) 7)
	(= (ready-to-load goods12 market5) 0)
	(= (on-sale goods12 market5) 0)
	(= (price goods12 market6) 28)
	(= (ready-to-load goods12 market6) 0)
	(= (on-sale goods12 market6) 3)
	(= (price goods12 market7) 30)
	(= (ready-to-load goods12 market7) 0)
	(= (on-sale goods12 market7) 15)
	(= (price goods13 market1) 44)
	(= (ready-to-load goods13 market1) 0)
	(= (on-sale goods13 market1) 9)
	(= (ready-to-load goods13 market2) 0)
	(= (on-sale goods13 market2) 0)
	(= (price goods13 market3) 32)
	(= (ready-to-load goods13 market3) 0)
	(= (on-sale goods13 market3) 16)
	(= (ready-to-load goods13 market4) 0)
	(= (on-sale goods13 market4) 0)
	(= (ready-to-load goods13 market5) 0)
	(= (on-sale goods13 market5) 0)
	(= (ready-to-load goods13 market6) 0)
	(= (on-sale goods13 market6) 0)
	(= (price goods13 market7) 30)
	(= (ready-to-load goods13 market7) 0)
	(= (on-sale goods13 market7) 10)
	(= (ready-to-load goods14 market1) 0)
	(= (on-sale goods14 market1) 0)
	(= (price goods14 market2) 3)
	(= (ready-to-load goods14 market2) 0)
	(= (on-sale goods14 market2) 8)
	(= (ready-to-load goods14 market3) 0)
	(= (on-sale goods14 market3) 0)
	(= (price goods14 market4) 10)
	(= (ready-to-load goods14 market4) 0)
	(= (on-sale goods14 market4) 11)
	(= (price goods14 market5) 27)
	(= (ready-to-load goods14 market5) 0)
	(= (on-sale goods14 market5) 9)
	(= (price goods14 market6) 9)
	(= (ready-to-load goods14 market6) 0)
	(= (on-sale goods14 market6) 13)
	(= (price goods14 market7) 4)
	(= (ready-to-load goods14 market7) 0)
	(= (on-sale goods14 market7) 4)
	(= (ready-to-load goods15 market1) 0)
	(= (on-sale goods15 market1) 0)
	(= (ready-to-load goods15 market2) 0)
	(= (on-sale goods15 market2) 0)
	(= (ready-to-load goods15 market3) 0)
	(= (on-sale goods15 market3) 0)
	(= (ready-to-load goods15 market4) 0)
	(= (on-sale goods15 market4) 0)
	(= (price goods15 market5) 3)
	(= (ready-to-load goods15 market5) 0)
	(= (on-sale goods15 market5) 17)
	(= (ready-to-load goods15 market6) 0)
	(= (on-sale goods15 market6) 0)
	(= (price goods15 market7) 19)
	(= (ready-to-load goods15 market7) 0)
	(= (on-sale goods15 market7) 1)
	(= (ready-to-load goods16 market1) 0)
	(= (on-sale goods16 market1) 0)
	(= (ready-to-load goods16 market2) 0)
	(= (on-sale goods16 market2) 0)
	(= (ready-to-load goods16 market3) 0)
	(= (on-sale goods16 market3) 0)
	(= (ready-to-load goods16 market4) 0)
	(= (on-sale goods16 market4) 0)
	(= (ready-to-load goods16 market5) 0)
	(= (on-sale goods16 market5) 0)
	(= (ready-to-load goods16 market6) 0)
	(= (on-sale goods16 market6) 0)
	(= (price goods16 market7) 1)
	(= (ready-to-load goods16 market7) 0)
	(= (on-sale goods16 market7) 9)
	(= (price goods17 market1) 46)
	(= (ready-to-load goods17 market1) 0)
	(= (on-sale goods17 market1) 20)
	(= (ready-to-load goods17 market2) 0)
	(= (on-sale goods17 market2) 0)
	(= (ready-to-load goods17 market3) 0)
	(= (on-sale goods17 market3) 0)
	(= (price goods17 market4) 25)
	(= (ready-to-load goods17 market4) 0)
	(= (on-sale goods17 market4) 2)
	(= (ready-to-load goods17 market5) 0)
	(= (on-sale goods17 market5) 0)
	(= (ready-to-load goods17 market6) 0)
	(= (on-sale goods17 market6) 0)
	(= (price goods17 market7) 10)
	(= (ready-to-load goods17 market7) 0)
	(= (on-sale goods17 market7) 4)
	(connected market1 market6)
	(connected market6 market1)
	(= (drive-cost market1 market6) 784.00)
	(= (drive-cost market6 market1) 784.00)
	(= (drive-time market1 market6) 2352.00)
	(= (drive-time market6 market1) 2352.00)
	(connected market1 market7)
	(connected market7 market1)
	(= (drive-cost market1 market7) 975.00)
	(= (drive-cost market7 market1) 975.00)
	(= (drive-time market1 market7) 2925.00)
	(= (drive-time market7 market1) 2925.00)
	(connected market2 market4)
	(connected market4 market2)
	(= (drive-cost market2 market4) 235.00)
	(= (drive-cost market4 market2) 235.00)
	(= (drive-time market2 market4) 705.00)
	(= (drive-time market4 market2) 705.00)
	(connected market2 market5)
	(connected market5 market2)
	(= (drive-cost market2 market5) 668.00)
	(= (drive-cost market5 market2) 668.00)
	(= (drive-time market2 market5) 2004.00)
	(= (drive-time market5 market2) 2004.00)
	(connected market2 market6)
	(connected market6 market2)
	(= (drive-cost market2 market6) 106.00)
	(= (drive-cost market6 market2) 106.00)
	(= (drive-time market2 market6) 318.00)
	(= (drive-time market6 market2) 318.00)
	(connected market2 market7)
	(connected market7 market2)
	(= (drive-cost market2 market7) 888.00)
	(= (drive-cost market7 market2) 888.00)
	(= (drive-time market2 market7) 2664.00)
	(= (drive-time market7 market2) 2664.00)
	(connected market3 market4)
	(connected market4 market3)
	(= (drive-cost market3 market4) 434.00)
	(= (drive-cost market4 market3) 434.00)
	(= (drive-time market3 market4) 1302.00)
	(= (drive-time market4 market3) 1302.00)
	(connected market3 market5)
	(connected market5 market3)
	(= (drive-cost market3 market5) 466.00)
	(= (drive-cost market5 market3) 466.00)
	(= (drive-time market3 market5) 1398.00)
	(= (drive-time market5 market3) 1398.00)
	(connected market3 market6)
	(connected market6 market3)
	(= (drive-cost market3 market6) 58.00)
	(= (drive-cost market6 market3) 58.00)
	(= (drive-time market3 market6) 174.00)
	(= (drive-time market6 market3) 174.00)
	(connected market3 market7)
	(connected market7 market3)
	(= (drive-cost market3 market7) 327.00)
	(= (drive-cost market7 market3) 327.00)
	(= (drive-time market3 market7) 981.00)
	(= (drive-time market7 market3) 981.00)
	(connected market4 market6)
	(connected market6 market4)
	(= (drive-cost market4 market6) 947.00)
	(= (drive-cost market6 market4) 947.00)
	(= (drive-time market4 market6) 2841.00)
	(= (drive-time market6 market4) 2841.00)
	(connected market4 market7)
	(connected market7 market4)
	(= (drive-cost market4 market7) 874.00)
	(= (drive-cost market7 market4) 874.00)
	(= (drive-time market4 market7) 2622.00)
	(= (drive-time market7 market4) 2622.00)
	(connected market5 market6)
	(connected market6 market5)
	(= (drive-cost market5 market6) 617.00)
	(= (drive-cost market6 market5) 617.00)
	(= (drive-time market5 market6) 1851.00)
	(= (drive-time market6 market5) 1851.00)
	(connected market5 market7)
	(connected market7 market5)
	(= (drive-cost market5 market7) 371.00)
	(= (drive-cost market7 market5) 371.00)
	(= (drive-time market5 market7) 1113.00)
	(= (drive-time market7 market5) 1113.00)
	(connected depot1 market4)
	(connected market4 depot1)
	(= (drive-cost market4 depot1) 352.00)
	(= (drive-cost depot1 market4) 352.00)
	(= (drive-time market4 depot1) 1056.00)
	(= (drive-time depot1 market4) 1056.00)
	(connected depot2 market2)
	(connected market2 depot2)
	(= (drive-cost market2 depot2) 49.00)
	(= (drive-cost depot2 market2) 49.00)
	(= (drive-time market2 depot2) 147.00)
	(= (drive-time depot2 market2) 147.00)
	(connected depot3 market3)
	(connected market3 depot3)
	(= (drive-cost market3 depot3) 622.00)
	(= (drive-cost depot3 market3) 622.00)
	(= (drive-time market3 depot3) 1866.00)
	(= (drive-time depot3 market3) 1866.00)
	(= (loaded goods1 truck1) 0)
	(= (loaded goods2 truck1) 0)
	(= (loaded goods3 truck1) 0)
	(= (loaded goods4 truck1) 0)
	(= (loaded goods5 truck1) 0)
	(= (loaded goods6 truck1) 0)
	(= (loaded goods7 truck1) 0)
	(= (loaded goods8 truck1) 0)
	(= (loaded goods9 truck1) 0)
	(= (loaded goods10 truck1) 0)
	(= (loaded goods11 truck1) 0)
	(= (loaded goods12 truck1) 0)
	(= (loaded goods13 truck1) 0)
	(= (loaded goods14 truck1) 0)
	(= (loaded goods15 truck1) 0)
	(= (loaded goods16 truck1) 0)
	(= (loaded goods17 truck1) 0)
	(at truck1 depot1)
	(= (loaded goods1 truck2) 0)
	(= (loaded goods2 truck2) 0)
	(= (loaded goods3 truck2) 0)
	(= (loaded goods4 truck2) 0)
	(= (loaded goods5 truck2) 0)
	(= (loaded goods6 truck2) 0)
	(= (loaded goods7 truck2) 0)
	(= (loaded goods8 truck2) 0)
	(= (loaded goods9 truck2) 0)
	(= (loaded goods10 truck2) 0)
	(= (loaded goods11 truck2) 0)
	(= (loaded goods12 truck2) 0)
	(= (loaded goods13 truck2) 0)
	(= (loaded goods14 truck2) 0)
	(= (loaded goods15 truck2) 0)
	(= (loaded goods16 truck2) 0)
	(= (loaded goods17 truck2) 0)
	(at truck2 depot3)
	(= (loaded goods1 truck3) 0)
	(= (loaded goods2 truck3) 0)
	(= (loaded goods3 truck3) 0)
	(= (loaded goods4 truck3) 0)
	(= (loaded goods5 truck3) 0)
	(= (loaded goods6 truck3) 0)
	(= (loaded goods7 truck3) 0)
	(= (loaded goods8 truck3) 0)
	(= (loaded goods9 truck3) 0)
	(= (loaded goods10 truck3) 0)
	(= (loaded goods11 truck3) 0)
	(= (loaded goods12 truck3) 0)
	(= (loaded goods13 truck3) 0)
	(= (loaded goods14 truck3) 0)
	(= (loaded goods15 truck3) 0)
	(= (loaded goods16 truck3) 0)
	(= (loaded goods17 truck3) 0)
	(at truck3 depot2)
	(= (loaded goods1 truck4) 0)
	(= (loaded goods2 truck4) 0)
	(= (loaded goods3 truck4) 0)
	(= (loaded goods4 truck4) 0)
	(= (loaded goods5 truck4) 0)
	(= (loaded goods6 truck4) 0)
	(= (loaded goods7 truck4) 0)
	(= (loaded goods8 truck4) 0)
	(= (loaded goods9 truck4) 0)
	(= (loaded goods10 truck4) 0)
	(= (loaded goods11 truck4) 0)
	(= (loaded goods12 truck4) 0)
	(= (loaded goods13 truck4) 0)
	(= (loaded goods14 truck4) 0)
	(= (loaded goods15 truck4) 0)
	(= (loaded goods16 truck4) 0)
	(= (loaded goods17 truck4) 0)
	(at truck4 depot1)
	(= (loaded goods1 truck5) 0)
	(= (loaded goods2 truck5) 0)
	(= (loaded goods3 truck5) 0)
	(= (loaded goods4 truck5) 0)
	(= (loaded goods5 truck5) 0)
	(= (loaded goods6 truck5) 0)
	(= (loaded goods7 truck5) 0)
	(= (loaded goods8 truck5) 0)
	(= (loaded goods9 truck5) 0)
	(= (loaded goods10 truck5) 0)
	(= (loaded goods11 truck5) 0)
	(= (loaded goods12 truck5) 0)
	(= (loaded goods13 truck5) 0)
	(= (loaded goods14 truck5) 0)
	(= (loaded goods15 truck5) 0)
	(= (loaded goods16 truck5) 0)
	(= (loaded goods17 truck5) 0)
	(at truck5 depot1)
	(= (loaded goods1 truck6) 0)
	(= (loaded goods2 truck6) 0)
	(= (loaded goods3 truck6) 0)
	(= (loaded goods4 truck6) 0)
	(= (loaded goods5 truck6) 0)
	(= (loaded goods6 truck6) 0)
	(= (loaded goods7 truck6) 0)
	(= (loaded goods8 truck6) 0)
	(= (loaded goods9 truck6) 0)
	(= (loaded goods10 truck6) 0)
	(= (loaded goods11 truck6) 0)
	(= (loaded goods12 truck6) 0)
	(= (loaded goods13 truck6) 0)
	(= (loaded goods14 truck6) 0)
	(= (loaded goods15 truck6) 0)
	(= (loaded goods16 truck6) 0)
	(= (loaded goods17 truck6) 0)
	(at truck6 depot3)
	(= (loaded goods1 truck7) 0)
	(= (loaded goods2 truck7) 0)
	(= (loaded goods3 truck7) 0)
	(= (loaded goods4 truck7) 0)
	(= (loaded goods5 truck7) 0)
	(= (loaded goods6 truck7) 0)
	(= (loaded goods7 truck7) 0)
	(= (loaded goods8 truck7) 0)
	(= (loaded goods9 truck7) 0)
	(= (loaded goods10 truck7) 0)
	(= (loaded goods11 truck7) 0)
	(= (loaded goods12 truck7) 0)
	(= (loaded goods13 truck7) 0)
	(= (loaded goods14 truck7) 0)
	(= (loaded goods15 truck7) 0)
	(= (loaded goods16 truck7) 0)
	(= (loaded goods17 truck7) 0)
	(at truck7 depot2)
	(= (stored goods1) 0)
	(= (stored goods2) 0)
	(= (stored goods3) 0)
	(= (stored goods4) 0)
	(= (stored goods5) 0)
	(= (stored goods6) 0)
	(= (stored goods7) 0)
	(= (stored goods8) 0)
	(= (stored goods9) 0)
	(= (stored goods10) 0)
	(= (stored goods11) 0)
	(= (stored goods12) 0)
	(= (stored goods13) 0)
	(= (stored goods14) 0)
	(= (stored goods15) 0)
	(= (stored goods16) 0)
	(= (stored goods17) 0)
	(= (total-cost) 0)
	(= (rebate-rate market1) 0.78)
	(= (rebate-rate market2) 0.88)
	(= (rebate-rate market3) 0.82)
	(= (rebate-rate market4) 0.88)
	(= (rebate-rate market5) 0.81)
	(= (rebate-rate market6) 0.78)
	(= (rebate-rate market7) 0.87)
	(= (bought goods1) 0)
	(= (bought goods2) 0)
	(= (bought goods3) 0)
	(= (bought goods4) 0)
	(= (bought goods5) 0)
	(= (bought goods6) 0)
	(= (bought goods7) 0)
	(= (bought goods8) 0)
	(= (bought goods9) 0)
	(= (bought goods10) 0)
	(= (bought goods11) 0)
	(= (bought goods12) 0)
	(= (bought goods13) 0)
	(= (bought goods14) 0)
	(= (bought goods15) 0)
	(= (bought goods16) 0)
	(= (bought goods17) 0)
	(= (request goods1) 29)
	(= (request goods2) 2)
	(= (request goods3) 26)
	(= (request goods4) 18)
	(= (request goods5) 15)
	(= (request goods6) 3)
	(= (request goods7) 13)
	(= (request goods8) 7)
	(= (request goods9) 1)
	(= (request goods10) 30)
	(= (request goods11) 30)
	(= (request goods12) 5)
	(= (request goods13) 3)
	(= (request goods14) 36)
	(= (request goods15) 7)
	(= (request goods16) 1)
	(= (request goods17) 19))

(:goal (and
	(>= (stored goods1) (request goods1))
	(>= (stored goods2) (request goods2))
	(>= (stored goods3) (request goods3))
	(>= (stored goods4) (request goods4))
	(>= (stored goods5) (request goods5))
	(>= (stored goods6) (request goods6))
	(>= (stored goods7) (request goods7))
	(>= (stored goods8) (request goods8))
	(>= (stored goods9) (request goods9))
	(>= (stored goods10) (request goods10))
	(>= (stored goods11) (request goods11))
	(>= (stored goods12) (request goods12))
	(>= (stored goods13) (request goods13))
	(>= (stored goods14) (request goods14))
	(>= (stored goods15) (request goods15))
	(>= (stored goods16) (request goods16))
	(>= (stored goods17) (request goods17))))

(:metric minimize (+ (* 1.3 (total-cost))(total-time)))
)