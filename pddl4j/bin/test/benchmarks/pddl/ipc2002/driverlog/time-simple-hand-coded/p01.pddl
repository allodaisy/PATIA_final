(define (problem DLOG-20-20-20)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	driver5 - driver
	driver6 - driver
	driver7 - driver
	driver8 - driver
	driver9 - driver
	driver10 - driver
	driver11 - driver
	driver12 - driver
	driver13 - driver
	driver14 - driver
	driver15 - driver
	driver16 - driver
	driver17 - driver
	driver18 - driver
	driver19 - driver
	driver20 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	truck5 - truck
	truck6 - truck
	truck7 - truck
	truck8 - truck
	truck9 - truck
	truck10 - truck
	truck11 - truck
	truck12 - truck
	truck13 - truck
	truck14 - truck
	truck15 - truck
	truck16 - truck
	truck17 - truck
	truck18 - truck
	truck19 - truck
	truck20 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
	package7 - obj
	package8 - obj
	package9 - obj
	package10 - obj
	package11 - obj
	package12 - obj
	package13 - obj
	package14 - obj
	package15 - obj
	package16 - obj
	package17 - obj
	package18 - obj
	package19 - obj
	package20 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	s7 - location
	s8 - location
	s9 - location
	s10 - location
	s11 - location
	s12 - location
	s13 - location
	s14 - location
	s15 - location
	s16 - location
	s17 - location
	s18 - location
	s19 - location
	s20 - location
	s21 - location
	s22 - location
	s23 - location
	s24 - location
	s25 - location
	s26 - location
	s27 - location
	s28 - location
	s29 - location
	p0-5 - location
	p0-27 - location
	p1-7 - location
	p1-18 - location
	p4-23 - location
	p4-28 - location
	p5-1 - location
	p5-4 - location
	p5-8 - location
	p5-15 - location
	p6-21 - location
	p7-6 - location
	p7-23 - location
	p8-11 - location
	p8-17 - location
	p9-6 - location
	p9-19 - location
	p10-6 - location
	p11-16 - location
	p11-21 - location
	p12-14 - location
	p12-29 - location
	p13-2 - location
	p13-16 - location
	p13-28 - location
	p14-11 - location
	p14-22 - location
	p14-28 - location
	p15-27 - location
	p16-0 - location
	p17-25 - location
	p17-27 - location
	p18-10 - location
	p18-19 - location
	p19-6 - location
	p21-7 - location
	p21-29 - location
	p22-9 - location
	p23-0 - location
	p23-10 - location
	p24-0 - location
	p25-11 - location
	p25-17 - location
	p26-0 - location
	p26-9 - location
	p26-12 - location
	p26-13 - location
	p26-19 - location
	p27-3 - location
	p27-7 - location
	p27-16 - location
	p27-20 - location
	p27-24 - location
	p28-6 - location
	p28-19 - location
	p28-20 - location
	p29-22 - location
	p29-26 - location
	)
	(:init
	(at driver1 s17)
	(at driver2 s29)
	(at driver3 s7)
	(at driver4 s2)
	(at driver5 s29)
	(at driver6 s6)
	(at driver7 s6)
	(at driver8 s8)
	(at driver9 s9)
	(at driver10 s9)
	(at driver11 s9)
	(at driver12 s7)
	(at driver13 s2)
	(at driver14 s0)
	(at driver15 s17)
	(at driver16 s18)
	(at driver17 s3)
	(at driver18 s17)
	(at driver19 s26)
	(at driver20 s26)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s17)
	(empty truck2)
	(at truck3 s3)
	(empty truck3)
	(at truck4 s3)
	(empty truck4)
	(at truck5 s3)
	(empty truck5)
	(at truck6 s7)
	(empty truck6)
	(at truck7 s2)
	(empty truck7)
	(at truck8 s12)
	(empty truck8)
	(at truck9 s29)
	(empty truck9)
	(at truck10 s19)
	(empty truck10)
	(at truck11 s14)
	(empty truck11)
	(at truck12 s1)
	(empty truck12)
	(at truck13 s10)
	(empty truck13)
	(at truck14 s17)
	(empty truck14)
	(at truck15 s26)
	(empty truck15)
	(at truck16 s5)
	(empty truck16)
	(at truck17 s22)
	(empty truck17)
	(at truck18 s23)
	(empty truck18)
	(at truck19 s16)
	(empty truck19)
	(at truck20 s11)
	(empty truck20)
	(at package1 s18)
	(at package2 s17)
	(at package3 s13)
	(at package4 s11)
	(at package5 s12)
	(at package6 s2)
	(at package7 s0)
	(at package8 s11)
	(at package9 s20)
	(at package10 s26)
	(at package11 s23)
	(at package12 s13)
	(at package13 s13)
	(at package14 s26)
	(at package15 s26)
	(at package16 s15)
	(at package17 s2)
	(at package18 s19)
	(at package19 s18)
	(at package20 s29)
	(path s0 p0-5)
	(path p0-5 s0)
	(path s5 p0-5)
	(path p0-5 s5)
	(path s0 p0-27)
	(path p0-27 s0)
	(path s27 p0-27)
	(path p0-27 s27)
	(path s1 p1-7)
	(path p1-7 s1)
	(path s7 p1-7)
	(path p1-7 s7)
	(path s1 p1-18)
	(path p1-18 s1)
	(path s18 p1-18)
	(path p1-18 s18)
	(path s4 p4-23)
	(path p4-23 s4)
	(path s23 p4-23)
	(path p4-23 s23)
	(path s4 p4-28)
	(path p4-28 s4)
	(path s28 p4-28)
	(path p4-28 s28)
	(path s5 p5-1)
	(path p5-1 s5)
	(path s1 p5-1)
	(path p5-1 s1)
	(path s5 p5-4)
	(path p5-4 s5)
	(path s4 p5-4)
	(path p5-4 s4)
	(path s5 p5-8)
	(path p5-8 s5)
	(path s8 p5-8)
	(path p5-8 s8)
	(path s5 p5-15)
	(path p5-15 s5)
	(path s15 p5-15)
	(path p5-15 s15)
	(path s6 p6-21)
	(path p6-21 s6)
	(path s21 p6-21)
	(path p6-21 s21)
	(path s7 p7-6)
	(path p7-6 s7)
	(path s6 p7-6)
	(path p7-6 s6)
	(path s7 p7-23)
	(path p7-23 s7)
	(path s23 p7-23)
	(path p7-23 s23)
	(path s8 p8-11)
	(path p8-11 s8)
	(path s11 p8-11)
	(path p8-11 s11)
	(path s8 p8-17)
	(path p8-17 s8)
	(path s17 p8-17)
	(path p8-17 s17)
	(path s9 p9-6)
	(path p9-6 s9)
	(path s6 p9-6)
	(path p9-6 s6)
	(path s9 p9-19)
	(path p9-19 s9)
	(path s19 p9-19)
	(path p9-19 s19)
	(path s10 p10-6)
	(path p10-6 s10)
	(path s6 p10-6)
	(path p10-6 s6)
	(path s11 p11-16)
	(path p11-16 s11)
	(path s16 p11-16)
	(path p11-16 s16)
	(path s11 p11-21)
	(path p11-21 s11)
	(path s21 p11-21)
	(path p11-21 s21)
	(path s12 p12-14)
	(path p12-14 s12)
	(path s14 p12-14)
	(path p12-14 s14)
	(path s12 p12-29)
	(path p12-29 s12)
	(path s29 p12-29)
	(path p12-29 s29)
	(path s13 p13-2)
	(path p13-2 s13)
	(path s2 p13-2)
	(path p13-2 s2)
	(path s13 p13-16)
	(path p13-16 s13)
	(path s16 p13-16)
	(path p13-16 s16)
	(path s13 p13-28)
	(path p13-28 s13)
	(path s28 p13-28)
	(path p13-28 s28)
	(path s14 p14-11)
	(path p14-11 s14)
	(path s11 p14-11)
	(path p14-11 s11)
	(path s14 p14-22)
	(path p14-22 s14)
	(path s22 p14-22)
	(path p14-22 s22)
	(path s14 p14-28)
	(path p14-28 s14)
	(path s28 p14-28)
	(path p14-28 s28)
	(path s15 p15-27)
	(path p15-27 s15)
	(path s27 p15-27)
	(path p15-27 s27)
	(path s16 p16-0)
	(path p16-0 s16)
	(path s0 p16-0)
	(path p16-0 s0)
	(path s17 p17-25)
	(path p17-25 s17)
	(path s25 p17-25)
	(path p17-25 s25)
	(path s17 p17-27)
	(path p17-27 s17)
	(path s27 p17-27)
	(path p17-27 s27)
	(path s18 p18-10)
	(path p18-10 s18)
	(path s10 p18-10)
	(path p18-10 s10)
	(path s18 p18-19)
	(path p18-19 s18)
	(path s19 p18-19)
	(path p18-19 s19)
	(path s19 p19-6)
	(path p19-6 s19)
	(path s6 p19-6)
	(path p19-6 s6)
	(path s21 p21-7)
	(path p21-7 s21)
	(path s7 p21-7)
	(path p21-7 s7)
	(path s21 p21-29)
	(path p21-29 s21)
	(path s29 p21-29)
	(path p21-29 s29)
	(path s22 p22-9)
	(path p22-9 s22)
	(path s9 p22-9)
	(path p22-9 s9)
	(path s23 p23-0)
	(path p23-0 s23)
	(path s0 p23-0)
	(path p23-0 s0)
	(path s23 p23-10)
	(path p23-10 s23)
	(path s10 p23-10)
	(path p23-10 s10)
	(path s24 p24-0)
	(path p24-0 s24)
	(path s0 p24-0)
	(path p24-0 s0)
	(path s25 p25-11)
	(path p25-11 s25)
	(path s11 p25-11)
	(path p25-11 s11)
	(path s26 p26-0)
	(path p26-0 s26)
	(path s0 p26-0)
	(path p26-0 s0)
	(path s26 p26-9)
	(path p26-9 s26)
	(path s9 p26-9)
	(path p26-9 s9)
	(path s26 p26-12)
	(path p26-12 s26)
	(path s12 p26-12)
	(path p26-12 s12)
	(path s26 p26-13)
	(path p26-13 s26)
	(path s13 p26-13)
	(path p26-13 s13)
	(path s26 p26-19)
	(path p26-19 s26)
	(path s19 p26-19)
	(path p26-19 s19)
	(path s27 p27-3)
	(path p27-3 s27)
	(path s3 p27-3)
	(path p27-3 s3)
	(path s27 p27-7)
	(path p27-7 s27)
	(path s7 p27-7)
	(path p27-7 s7)
	(path s27 p27-16)
	(path p27-16 s27)
	(path s16 p27-16)
	(path p27-16 s16)
	(path s27 p27-20)
	(path p27-20 s27)
	(path s20 p27-20)
	(path p27-20 s20)
	(path s27 p27-24)
	(path p27-24 s27)
	(path s24 p27-24)
	(path p27-24 s24)
	(path s28 p28-6)
	(path p28-6 s28)
	(path s6 p28-6)
	(path p28-6 s6)
	(path s28 p28-19)
	(path p28-19 s28)
	(path s19 p28-19)
	(path p28-19 s19)
	(path s28 p28-20)
	(path p28-20 s28)
	(path s20 p28-20)
	(path p28-20 s20)
	(path s29 p29-22)
	(path p29-22 s29)
	(path s22 p29-22)
	(path p29-22 s22)
	(path s29 p29-26)
	(path p29-26 s29)
	(path s26 p29-26)
	(path p29-26 s26)
	(link s0 s7)
	(link s7 s0)
	(link s0 s11)
	(link s11 s0)
	(link s0 s27)
	(link s27 s0)
	(link s0 s29)
	(link s29 s0)
	(link s1 s14)
	(link s14 s1)
	(link s1 s16)
	(link s16 s1)
	(link s1 s20)
	(link s20 s1)
	(link s1 s25)
	(link s25 s1)
	(link s2 s6)
	(link s6 s2)
	(link s2 s9)
	(link s9 s2)
	(link s2 s15)
	(link s15 s2)
	(link s2 s21)
	(link s21 s2)
	(link s3 s0)
	(link s0 s3)
	(link s3 s4)
	(link s4 s3)
	(link s3 s20)
	(link s20 s3)
	(link s3 s26)
	(link s26 s3)
	(link s4 s13)
	(link s13 s4)
	(link s4 s14)
	(link s14 s4)
	(link s4 s28)
	(link s28 s4)
	(link s5 s7)
	(link s7 s5)
	(link s5 s13)
	(link s13 s5)
	(link s5 s17)
	(link s17 s5)
	(link s5 s25)
	(link s25 s5)
	(link s5 s28)
	(link s28 s5)
	(link s6 s3)
	(link s3 s6)
	(link s6 s16)
	(link s16 s6)
	(link s6 s28)
	(link s28 s6)
	(link s7 s6)
	(link s6 s7)
	(link s7 s15)
	(link s15 s7)
	(link s7 s18)
	(link s18 s7)
	(link s7 s22)
	(link s22 s7)
	(link s7 s23)
	(link s23 s7)
	(link s7 s24)
	(link s24 s7)
	(link s8 s11)
	(link s11 s8)
	(link s8 s17)
	(link s17 s8)
	(link s8 s25)
	(link s25 s8)
	(link s9 s12)
	(link s12 s9)
	(link s9 s14)
	(link s14 s9)
	(link s10 s4)
	(link s4 s10)
	(link s10 s25)
	(link s25 s10)
	(link s11 s6)
	(link s6 s11)
	(link s11 s14)
	(link s14 s11)
	(link s11 s18)
	(link s18 s11)
	(link s11 s27)
	(link s27 s11)
	(link s12 s6)
	(link s6 s12)
	(link s12 s19)
	(link s19 s12)
	(link s13 s0)
	(link s0 s13)
	(link s13 s8)
	(link s8 s13)
	(link s13 s16)
	(link s16 s13)
	(link s13 s17)
	(link s17 s13)
	(link s13 s20)
	(link s20 s13)
	(link s14 s6)
	(link s6 s14)
	(link s14 s19)
	(link s19 s14)
	(link s15 s0)
	(link s0 s15)
	(link s15 s9)
	(link s9 s15)
	(link s15 s18)
	(link s18 s15)
	(link s15 s21)
	(link s21 s15)
	(link s15 s28)
	(link s28 s15)
	(link s16 s5)
	(link s5 s16)
	(link s16 s10)
	(link s10 s16)
	(link s17 s2)
	(link s2 s17)
	(link s17 s18)
	(link s18 s17)
	(link s17 s28)
	(link s28 s17)
	(link s18 s2)
	(link s2 s18)
	(link s18 s10)
	(link s10 s18)
	(link s18 s25)
	(link s25 s18)
	(link s18 s27)
	(link s27 s18)
	(link s18 s29)
	(link s29 s18)
	(link s19 s3)
	(link s3 s19)
	(link s19 s9)
	(link s9 s19)
	(link s19 s17)
	(link s17 s19)
	(link s19 s27)
	(link s27 s19)
	(link s19 s28)
	(link s28 s19)
	(link s20 s24)
	(link s24 s20)
	(link s21 s6)
	(link s6 s21)
	(link s21 s11)
	(link s11 s21)
	(link s21 s16)
	(link s16 s21)
	(link s21 s29)
	(link s29 s21)
	(link s22 s8)
	(link s8 s22)
	(link s22 s14)
	(link s14 s22)
	(link s22 s15)
	(link s15 s22)
	(link s22 s18)
	(link s18 s22)
	(link s23 s0)
	(link s0 s23)
	(link s23 s8)
	(link s8 s23)
	(link s23 s19)
	(link s19 s23)
	(link s24 s0)
	(link s0 s24)
	(link s24 s8)
	(link s8 s24)
	(link s24 s23)
	(link s23 s24)
	(link s25 s15)
	(link s15 s25)
	(link s25 s16)
	(link s16 s25)
	(link s25 s24)
	(link s24 s25)
	(link s25 s29)
	(link s29 s25)
	(link s26 s1)
	(link s1 s26)
	(link s26 s21)
	(link s21 s26)
	(link s26 s29)
	(link s29 s26)
	(link s27 s15)
	(link s15 s27)
	(link s27 s20)
	(link s20 s27)
	(link s27 s22)
	(link s22 s27)
	(link s28 s0)
	(link s0 s28)
	(link s28 s13)
	(link s13 s28)
	(link s28 s14)
	(link s14 s28)
	(link s29 s1)
	(link s1 s29)
	(link s29 s11)
	(link s11 s29)
	(link s29 s15)
	(link s15 s29)
)
	(:goal (and
	(at driver1 s10)
	(at driver2 s0)
	(at driver3 s14)
	(at driver4 s29)
	(at driver6 s20)
	(at driver7 s14)
	(at driver9 s3)
	(at driver11 s22)
	(at driver12 s21)
	(at driver16 s7)
	(at driver17 s13)
	(at driver18 s22)
	(at driver19 s2)
	(at driver20 s11)
	(at truck1 s21)
	(at truck5 s19)
	(at truck6 s8)
	(at truck8 s29)
	(at truck9 s25)
	(at truck11 s22)
	(at truck12 s10)
	(at truck13 s13)
	(at truck15 s19)
	(at truck16 s27)
	(at truck17 s0)
	(at truck18 s12)
	(at truck20 s1)
	(at package1 s15)
	(at package3 s28)
	(at package4 s16)
	(at package5 s12)
	(at package6 s18)
	(at package7 s11)
	(at package8 s4)
	(at package9 s20)
	(at package10 s2)
	(at package11 s21)
	(at package12 s8)
	(at package13 s21)
	(at package15 s16)
	(at package16 s18)
	(at package17 s19)
	(at package18 s0)
	(at package19 s21)
	(at package20 s17)
	))

(:metric minimize (total-time))

)
