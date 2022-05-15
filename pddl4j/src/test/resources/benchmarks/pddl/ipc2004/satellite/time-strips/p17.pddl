(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	satellite2 - satellite
	instrument3 - instrument
	instrument4 - instrument
	instrument5 - instrument
	satellite3 - satellite
	instrument6 - instrument
	instrument7 - instrument
	instrument8 - instrument
	satellite4 - satellite
	instrument9 - instrument
	instrument10 - instrument
	satellite5 - satellite
	instrument11 - instrument
	satellite6 - satellite
	instrument12 - instrument
	instrument13 - instrument
	instrument14 - instrument
	satellite7 - satellite
	instrument15 - instrument
	satellite8 - satellite
	instrument16 - instrument
	instrument17 - instrument
	satellite9 - satellite
	instrument18 - instrument
	instrument19 - instrument
	satellite10 - satellite
	instrument20 - instrument
	instrument21 - instrument
	instrument22 - instrument
	satellite11 - satellite
	instrument23 - instrument
	infrared3 - mode
	image0 - mode
	thermograph1 - mode
	image4 - mode
	infrared2 - mode
	GroundStation2 - direction
	GroundStation4 - direction
	Star1 - direction
	GroundStation0 - direction
	Star3 - direction
	Planet5 - direction
	Planet6 - direction
	Planet7 - direction
	Star8 - direction
	Phenomenon9 - direction
	Star10 - direction
	Planet11 - direction
	Planet12 - direction
	Planet13 - direction
	Phenomenon14 - direction
	Phenomenon15 - direction
	Planet16 - direction
	Phenomenon17 - direction
	Star18 - direction
	Phenomenon19 - direction
	Phenomenon20 - direction
	Star21 - direction
	Star22 - direction
	Phenomenon23 - direction
	Phenomenon24 - direction
)
(:init
	(supports instrument0 infrared3)
	(calibration_target instrument0 GroundStation0)
	(= (calibration_time instrument0 GroundStation0) 23.8)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet5)
	(supports instrument1 image0)
	(supports instrument1 infrared2)
	(calibration_target instrument1 Star3)
	(= (calibration_time instrument1 Star3) 68.8)
	(supports instrument2 thermograph1)
	(supports instrument2 image0)
	(calibration_target instrument2 GroundStation0)
	(= (calibration_time instrument2 GroundStation0) 1.2)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet5)
	(supports instrument3 infrared3)
	(supports instrument3 infrared2)
	(calibration_target instrument3 GroundStation4)
	(= (calibration_time instrument3 GroundStation4) 88.6)
	(supports instrument4 infrared3)
	(supports instrument4 infrared2)
	(supports instrument4 thermograph1)
	(calibration_target instrument4 GroundStation2)
	(= (calibration_time instrument4 GroundStation2) 36.5)
	(supports instrument5 thermograph1)
	(calibration_target instrument5 GroundStation4)
	(= (calibration_time instrument5 GroundStation4) 13)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star21)
	(supports instrument6 image0)
	(supports instrument6 infrared2)
	(calibration_target instrument6 GroundStation2)
	(= (calibration_time instrument6 GroundStation2) 8.83)
	(supports instrument7 image0)
	(supports instrument7 infrared3)
	(calibration_target instrument7 GroundStation0)
	(= (calibration_time instrument7 GroundStation0) 32.2)
	(supports instrument8 infrared2)
	(supports instrument8 image4)
	(supports instrument8 image0)
	(calibration_target instrument8 GroundStation4)
	(= (calibration_time instrument8 GroundStation4) 27)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star21)
	(supports instrument9 infrared3)
	(calibration_target instrument9 Star1)
	(= (calibration_time instrument9 Star1) 7.51)
	(supports instrument10 image4)
	(supports instrument10 image0)
	(calibration_target instrument10 Star3)
	(= (calibration_time instrument10 Star3) 49.3)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star22)
	(supports instrument11 infrared2)
	(calibration_target instrument11 Star1)
	(= (calibration_time instrument11 Star1) 79)
	(on_board instrument11 satellite5)
	(power_avail satellite5)
	(pointing satellite5 GroundStation2)
	(supports instrument12 image4)
	(calibration_target instrument12 GroundStation0)
	(= (calibration_time instrument12 GroundStation0) 82.8)
	(supports instrument13 image4)
	(calibration_target instrument13 Star1)
	(= (calibration_time instrument13 Star1) 53.9)
	(supports instrument14 thermograph1)
	(supports instrument14 infrared2)
	(calibration_target instrument14 GroundStation2)
	(= (calibration_time instrument14 GroundStation2) 78.8)
	(on_board instrument12 satellite6)
	(on_board instrument13 satellite6)
	(on_board instrument14 satellite6)
	(power_avail satellite6)
	(pointing satellite6 Phenomenon20)
	(supports instrument15 image0)
	(supports instrument15 thermograph1)
	(calibration_target instrument15 GroundStation4)
	(= (calibration_time instrument15 GroundStation4) 44.2)
	(on_board instrument15 satellite7)
	(power_avail satellite7)
	(pointing satellite7 Planet12)
	(supports instrument16 image0)
	(supports instrument16 infrared2)
	(calibration_target instrument16 Star1)
	(= (calibration_time instrument16 Star1) 13.1)
	(supports instrument17 infrared3)
	(calibration_target instrument17 GroundStation0)
	(= (calibration_time instrument17 GroundStation0) 79.8)
	(on_board instrument16 satellite8)
	(on_board instrument17 satellite8)
	(power_avail satellite8)
	(pointing satellite8 Phenomenon23)
	(supports instrument18 thermograph1)
	(supports instrument18 infrared2)
	(supports instrument18 image4)
	(calibration_target instrument18 Star1)
	(= (calibration_time instrument18 Star1) 97.6)
	(supports instrument19 infrared3)
	(calibration_target instrument19 GroundStation4)
	(= (calibration_time instrument19 GroundStation4) 23.4)
	(on_board instrument18 satellite9)
	(on_board instrument19 satellite9)
	(power_avail satellite9)
	(pointing satellite9 Phenomenon20)
	(supports instrument20 infrared2)
	(calibration_target instrument20 Star1)
	(= (calibration_time instrument20 Star1) 39.6)
	(supports instrument21 thermograph1)
	(supports instrument21 image0)
	(calibration_target instrument21 Star1)
	(= (calibration_time instrument21 Star1) 97)
	(supports instrument22 thermograph1)
	(calibration_target instrument22 GroundStation0)
	(= (calibration_time instrument22 GroundStation0) 96)
	(on_board instrument20 satellite10)
	(on_board instrument21 satellite10)
	(on_board instrument22 satellite10)
	(power_avail satellite10)
	(pointing satellite10 Star22)
	(supports instrument23 infrared2)
	(supports instrument23 image4)
	(supports instrument23 thermograph1)
	(calibration_target instrument23 Star3)
	(= (calibration_time instrument23 Star3) 43.6)
	(on_board instrument23 satellite11)
	(power_avail satellite11)
	(pointing satellite11 Star8)
	(= (slew_time GroundStation2 GroundStation0) 2.441)
	(= (slew_time GroundStation0 GroundStation2) 2.441)
	(= (slew_time GroundStation2 Star1) 15.49)
	(= (slew_time Star1 GroundStation2) 15.49)
	(= (slew_time GroundStation4 GroundStation0) 0.04536)
	(= (slew_time GroundStation0 GroundStation4) 0.04536)
	(= (slew_time GroundStation4 Star1) 52.53)
	(= (slew_time Star1 GroundStation4) 52.53)
	(= (slew_time GroundStation4 GroundStation2) 39.09)
	(= (slew_time GroundStation2 GroundStation4) 39.09)
	(= (slew_time GroundStation4 Star3) 15.64)
	(= (slew_time Star3 GroundStation4) 15.64)
	(= (slew_time Star1 GroundStation0) 9.894)
	(= (slew_time GroundStation0 Star1) 9.894)
	(= (slew_time Star3 GroundStation0) 30.75)
	(= (slew_time GroundStation0 Star3) 30.75)
	(= (slew_time Star3 Star1) 6.934)
	(= (slew_time Star1 Star3) 6.934)
	(= (slew_time Star3 GroundStation2) 51.44)
	(= (slew_time GroundStation2 Star3) 51.44)
	(= (slew_time Planet5 GroundStation0) 0.1987)
	(= (slew_time GroundStation0 Planet5) 0.1987)
	(= (slew_time Planet5 Star1) 4.724)
	(= (slew_time Star1 Planet5) 4.724)
	(= (slew_time Planet5 GroundStation2) 79.9)
	(= (slew_time GroundStation2 Planet5) 79.9)
	(= (slew_time Planet5 Star3) 9.704)
	(= (slew_time Star3 Planet5) 9.704)
	(= (slew_time Planet5 GroundStation4) 7.568)
	(= (slew_time GroundStation4 Planet5) 7.568)
	(= (slew_time Planet6 GroundStation0) 62.59)
	(= (slew_time GroundStation0 Planet6) 62.59)
	(= (slew_time Planet6 Star1) 25.39)
	(= (slew_time Star1 Planet6) 25.39)
	(= (slew_time Planet6 GroundStation2) 45.76)
	(= (slew_time GroundStation2 Planet6) 45.76)
	(= (slew_time Planet6 Star3) 87.65)
	(= (slew_time Star3 Planet6) 87.65)
	(= (slew_time Planet6 GroundStation4) 7.29)
	(= (slew_time GroundStation4 Planet6) 7.29)
	(= (slew_time Planet6 Planet5) 36.07)
	(= (slew_time Planet5 Planet6) 36.07)
	(= (slew_time Planet7 GroundStation0) 33.41)
	(= (slew_time GroundStation0 Planet7) 33.41)
	(= (slew_time Planet7 Star1) 36.4)
	(= (slew_time Star1 Planet7) 36.4)
	(= (slew_time Planet7 GroundStation2) 39)
	(= (slew_time GroundStation2 Planet7) 39)
	(= (slew_time Planet7 Star3) 46.98)
	(= (slew_time Star3 Planet7) 46.98)
	(= (slew_time Planet7 GroundStation4) 2.877)
	(= (slew_time GroundStation4 Planet7) 2.877)
	(= (slew_time Planet7 Planet5) 37.62)
	(= (slew_time Planet5 Planet7) 37.62)
	(= (slew_time Planet7 Planet6) 74.97)
	(= (slew_time Planet6 Planet7) 74.97)
	(= (slew_time Star8 GroundStation0) 24.77)
	(= (slew_time GroundStation0 Star8) 24.77)
	(= (slew_time Star8 Star1) 3.96)
	(= (slew_time Star1 Star8) 3.96)
	(= (slew_time Star8 GroundStation2) 28)
	(= (slew_time GroundStation2 Star8) 28)
	(= (slew_time Star8 Star3) 4.74)
	(= (slew_time Star3 Star8) 4.74)
	(= (slew_time Star8 GroundStation4) 3.181)
	(= (slew_time GroundStation4 Star8) 3.181)
	(= (slew_time Star8 Planet5) 10.63)
	(= (slew_time Planet5 Star8) 10.63)
	(= (slew_time Star8 Planet6) 8.291)
	(= (slew_time Planet6 Star8) 8.291)
	(= (slew_time Star8 Planet7) 64.79)
	(= (slew_time Planet7 Star8) 64.79)
	(= (slew_time Phenomenon9 GroundStation0) 31.59)
	(= (slew_time GroundStation0 Phenomenon9) 31.59)
	(= (slew_time Phenomenon9 Star1) 31.26)
	(= (slew_time Star1 Phenomenon9) 31.26)
	(= (slew_time Phenomenon9 GroundStation2) 11.89)
	(= (slew_time GroundStation2 Phenomenon9) 11.89)
	(= (slew_time Phenomenon9 Star3) 7.12)
	(= (slew_time Star3 Phenomenon9) 7.12)
	(= (slew_time Phenomenon9 GroundStation4) 3.206)
	(= (slew_time GroundStation4 Phenomenon9) 3.206)
	(= (slew_time Phenomenon9 Planet5) 37.44)
	(= (slew_time Planet5 Phenomenon9) 37.44)
	(= (slew_time Phenomenon9 Planet6) 27.37)
	(= (slew_time Planet6 Phenomenon9) 27.37)
	(= (slew_time Phenomenon9 Planet7) 30.26)
	(= (slew_time Planet7 Phenomenon9) 30.26)
	(= (slew_time Phenomenon9 Star8) 22.3)
	(= (slew_time Star8 Phenomenon9) 22.3)
	(= (slew_time Star10 GroundStation0) 8.336)
	(= (slew_time GroundStation0 Star10) 8.336)
	(= (slew_time Star10 Star1) 10.92)
	(= (slew_time Star1 Star10) 10.92)
	(= (slew_time Star10 GroundStation2) 13.67)
	(= (slew_time GroundStation2 Star10) 13.67)
	(= (slew_time Star10 Star3) 14)
	(= (slew_time Star3 Star10) 14)
	(= (slew_time Star10 GroundStation4) 4.352)
	(= (slew_time GroundStation4 Star10) 4.352)
	(= (slew_time Star10 Planet5) 25.35)
	(= (slew_time Planet5 Star10) 25.35)
	(= (slew_time Star10 Planet6) 16.46)
	(= (slew_time Planet6 Star10) 16.46)
	(= (slew_time Star10 Planet7) 7.227)
	(= (slew_time Planet7 Star10) 7.227)
	(= (slew_time Star10 Star8) 24.66)
	(= (slew_time Star8 Star10) 24.66)
	(= (slew_time Star10 Phenomenon9) 19.85)
	(= (slew_time Phenomenon9 Star10) 19.85)
	(= (slew_time Planet11 GroundStation0) 30.35)
	(= (slew_time GroundStation0 Planet11) 30.35)
	(= (slew_time Planet11 Star1) 55.88)
	(= (slew_time Star1 Planet11) 55.88)
	(= (slew_time Planet11 GroundStation2) 0.01475)
	(= (slew_time GroundStation2 Planet11) 0.01475)
	(= (slew_time Planet11 Star3) 10.73)
	(= (slew_time Star3 Planet11) 10.73)
	(= (slew_time Planet11 GroundStation4) 47.38)
	(= (slew_time GroundStation4 Planet11) 47.38)
	(= (slew_time Planet11 Planet5) 20.58)
	(= (slew_time Planet5 Planet11) 20.58)
	(= (slew_time Planet11 Planet6) 45.7)
	(= (slew_time Planet6 Planet11) 45.7)
	(= (slew_time Planet11 Planet7) 17.67)
	(= (slew_time Planet7 Planet11) 17.67)
	(= (slew_time Planet11 Star8) 2.4)
	(= (slew_time Star8 Planet11) 2.4)
	(= (slew_time Planet11 Phenomenon9) 32.35)
	(= (slew_time Phenomenon9 Planet11) 32.35)
	(= (slew_time Planet11 Star10) 12.37)
	(= (slew_time Star10 Planet11) 12.37)
	(= (slew_time Planet12 GroundStation0) 24.87)
	(= (slew_time GroundStation0 Planet12) 24.87)
	(= (slew_time Planet12 Star1) 22.27)
	(= (slew_time Star1 Planet12) 22.27)
	(= (slew_time Planet12 GroundStation2) 43.29)
	(= (slew_time GroundStation2 Planet12) 43.29)
	(= (slew_time Planet12 Star3) 59.99)
	(= (slew_time Star3 Planet12) 59.99)
	(= (slew_time Planet12 GroundStation4) 86.49)
	(= (slew_time GroundStation4 Planet12) 86.49)
	(= (slew_time Planet12 Planet5) 93.52)
	(= (slew_time Planet5 Planet12) 93.52)
	(= (slew_time Planet12 Planet6) 56.76)
	(= (slew_time Planet6 Planet12) 56.76)
	(= (slew_time Planet12 Planet7) 38.29)
	(= (slew_time Planet7 Planet12) 38.29)
	(= (slew_time Planet12 Star8) 18.5)
	(= (slew_time Star8 Planet12) 18.5)
	(= (slew_time Planet12 Phenomenon9) 32.61)
	(= (slew_time Phenomenon9 Planet12) 32.61)
	(= (slew_time Planet12 Star10) 6.302)
	(= (slew_time Star10 Planet12) 6.302)
	(= (slew_time Planet12 Planet11) 44.33)
	(= (slew_time Planet11 Planet12) 44.33)
	(= (slew_time Planet13 GroundStation0) 7.217)
	(= (slew_time GroundStation0 Planet13) 7.217)
	(= (slew_time Planet13 Star1) 21.41)
	(= (slew_time Star1 Planet13) 21.41)
	(= (slew_time Planet13 GroundStation2) 78.76)
	(= (slew_time GroundStation2 Planet13) 78.76)
	(= (slew_time Planet13 Star3) 18.38)
	(= (slew_time Star3 Planet13) 18.38)
	(= (slew_time Planet13 GroundStation4) 45.05)
	(= (slew_time GroundStation4 Planet13) 45.05)
	(= (slew_time Planet13 Planet5) 10.94)
	(= (slew_time Planet5 Planet13) 10.94)
	(= (slew_time Planet13 Planet6) 77.3)
	(= (slew_time Planet6 Planet13) 77.3)
	(= (slew_time Planet13 Planet7) 10.44)
	(= (slew_time Planet7 Planet13) 10.44)
	(= (slew_time Planet13 Star8) 43.81)
	(= (slew_time Star8 Planet13) 43.81)
	(= (slew_time Planet13 Phenomenon9) 22.93)
	(= (slew_time Phenomenon9 Planet13) 22.93)
	(= (slew_time Planet13 Star10) 35.89)
	(= (slew_time Star10 Planet13) 35.89)
	(= (slew_time Planet13 Planet11) 74.19)
	(= (slew_time Planet11 Planet13) 74.19)
	(= (slew_time Planet13 Planet12) 20.91)
	(= (slew_time Planet12 Planet13) 20.91)
	(= (slew_time Phenomenon14 GroundStation0) 63.04)
	(= (slew_time GroundStation0 Phenomenon14) 63.04)
	(= (slew_time Phenomenon14 Star1) 13.76)
	(= (slew_time Star1 Phenomenon14) 13.76)
	(= (slew_time Phenomenon14 GroundStation2) 58.73)
	(= (slew_time GroundStation2 Phenomenon14) 58.73)
	(= (slew_time Phenomenon14 Star3) 15.61)
	(= (slew_time Star3 Phenomenon14) 15.61)
	(= (slew_time Phenomenon14 GroundStation4) 30.06)
	(= (slew_time GroundStation4 Phenomenon14) 30.06)
	(= (slew_time Phenomenon14 Planet5) 19.34)
	(= (slew_time Planet5 Phenomenon14) 19.34)
	(= (slew_time Phenomenon14 Planet6) 29.39)
	(= (slew_time Planet6 Phenomenon14) 29.39)
	(= (slew_time Phenomenon14 Planet7) 9.507)
	(= (slew_time Planet7 Phenomenon14) 9.507)
	(= (slew_time Phenomenon14 Star8) 46.8)
	(= (slew_time Star8 Phenomenon14) 46.8)
	(= (slew_time Phenomenon14 Phenomenon9) 5.854)
	(= (slew_time Phenomenon9 Phenomenon14) 5.854)
	(= (slew_time Phenomenon14 Star10) 70.67)
	(= (slew_time Star10 Phenomenon14) 70.67)
	(= (slew_time Phenomenon14 Planet11) 42.05)
	(= (slew_time Planet11 Phenomenon14) 42.05)
	(= (slew_time Phenomenon14 Planet12) 20.48)
	(= (slew_time Planet12 Phenomenon14) 20.48)
	(= (slew_time Phenomenon14 Planet13) 39.68)
	(= (slew_time Planet13 Phenomenon14) 39.68)
	(= (slew_time Phenomenon15 GroundStation0) 3.058)
	(= (slew_time GroundStation0 Phenomenon15) 3.058)
	(= (slew_time Phenomenon15 Star1) 24.1)
	(= (slew_time Star1 Phenomenon15) 24.1)
	(= (slew_time Phenomenon15 GroundStation2) 72.76)
	(= (slew_time GroundStation2 Phenomenon15) 72.76)
	(= (slew_time Phenomenon15 Star3) 5.638)
	(= (slew_time Star3 Phenomenon15) 5.638)
	(= (slew_time Phenomenon15 GroundStation4) 20.18)
	(= (slew_time GroundStation4 Phenomenon15) 20.18)
	(= (slew_time Phenomenon15 Planet5) 15.05)
	(= (slew_time Planet5 Phenomenon15) 15.05)
	(= (slew_time Phenomenon15 Planet6) 19.74)
	(= (slew_time Planet6 Phenomenon15) 19.74)
	(= (slew_time Phenomenon15 Planet7) 40.61)
	(= (slew_time Planet7 Phenomenon15) 40.61)
	(= (slew_time Phenomenon15 Star8) 0.8964)
	(= (slew_time Star8 Phenomenon15) 0.8964)
	(= (slew_time Phenomenon15 Phenomenon9) 9.995)
	(= (slew_time Phenomenon9 Phenomenon15) 9.995)
	(= (slew_time Phenomenon15 Star10) 27.36)
	(= (slew_time Star10 Phenomenon15) 27.36)
	(= (slew_time Phenomenon15 Planet11) 20.3)
	(= (slew_time Planet11 Phenomenon15) 20.3)
	(= (slew_time Phenomenon15 Planet12) 53.29)
	(= (slew_time Planet12 Phenomenon15) 53.29)
	(= (slew_time Phenomenon15 Planet13) 62.38)
	(= (slew_time Planet13 Phenomenon15) 62.38)
	(= (slew_time Phenomenon15 Phenomenon14) 21.69)
	(= (slew_time Phenomenon14 Phenomenon15) 21.69)
	(= (slew_time Planet16 GroundStation0) 37.26)
	(= (slew_time GroundStation0 Planet16) 37.26)
	(= (slew_time Planet16 Star1) 1.258)
	(= (slew_time Star1 Planet16) 1.258)
	(= (slew_time Planet16 GroundStation2) 48.03)
	(= (slew_time GroundStation2 Planet16) 48.03)
	(= (slew_time Planet16 Star3) 73.29)
	(= (slew_time Star3 Planet16) 73.29)
	(= (slew_time Planet16 GroundStation4) 45.1)
	(= (slew_time GroundStation4 Planet16) 45.1)
	(= (slew_time Planet16 Planet5) 11.5)
	(= (slew_time Planet5 Planet16) 11.5)
	(= (slew_time Planet16 Planet6) 32.32)
	(= (slew_time Planet6 Planet16) 32.32)
	(= (slew_time Planet16 Planet7) 44.2)
	(= (slew_time Planet7 Planet16) 44.2)
	(= (slew_time Planet16 Star8) 61.25)
	(= (slew_time Star8 Planet16) 61.25)
	(= (slew_time Planet16 Phenomenon9) 26.96)
	(= (slew_time Phenomenon9 Planet16) 26.96)
	(= (slew_time Planet16 Star10) 31.08)
	(= (slew_time Star10 Planet16) 31.08)
	(= (slew_time Planet16 Planet11) 77.35)
	(= (slew_time Planet11 Planet16) 77.35)
	(= (slew_time Planet16 Planet12) 61.94)
	(= (slew_time Planet12 Planet16) 61.94)
	(= (slew_time Planet16 Planet13) 5.334)
	(= (slew_time Planet13 Planet16) 5.334)
	(= (slew_time Planet16 Phenomenon14) 2.903)
	(= (slew_time Phenomenon14 Planet16) 2.903)
	(= (slew_time Planet16 Phenomenon15) 48.61)
	(= (slew_time Phenomenon15 Planet16) 48.61)
	(= (slew_time Phenomenon17 GroundStation0) 18.49)
	(= (slew_time GroundStation0 Phenomenon17) 18.49)
	(= (slew_time Phenomenon17 Star1) 73.81)
	(= (slew_time Star1 Phenomenon17) 73.81)
	(= (slew_time Phenomenon17 GroundStation2) 47.88)
	(= (slew_time GroundStation2 Phenomenon17) 47.88)
	(= (slew_time Phenomenon17 Star3) 57.3)
	(= (slew_time Star3 Phenomenon17) 57.3)
	(= (slew_time Phenomenon17 GroundStation4) 42.49)
	(= (slew_time GroundStation4 Phenomenon17) 42.49)
	(= (slew_time Phenomenon17 Planet5) 35.98)
	(= (slew_time Planet5 Phenomenon17) 35.98)
	(= (slew_time Phenomenon17 Planet6) 5.169)
	(= (slew_time Planet6 Phenomenon17) 5.169)
	(= (slew_time Phenomenon17 Planet7) 32.98)
	(= (slew_time Planet7 Phenomenon17) 32.98)
	(= (slew_time Phenomenon17 Star8) 47.65)
	(= (slew_time Star8 Phenomenon17) 47.65)
	(= (slew_time Phenomenon17 Phenomenon9) 46.47)
	(= (slew_time Phenomenon9 Phenomenon17) 46.47)
	(= (slew_time Phenomenon17 Star10) 21.96)
	(= (slew_time Star10 Phenomenon17) 21.96)
	(= (slew_time Phenomenon17 Planet11) 12.81)
	(= (slew_time Planet11 Phenomenon17) 12.81)
	(= (slew_time Phenomenon17 Planet12) 1.176)
	(= (slew_time Planet12 Phenomenon17) 1.176)
	(= (slew_time Phenomenon17 Planet13) 21.99)
	(= (slew_time Planet13 Phenomenon17) 21.99)
	(= (slew_time Phenomenon17 Phenomenon14) 20.31)
	(= (slew_time Phenomenon14 Phenomenon17) 20.31)
	(= (slew_time Phenomenon17 Phenomenon15) 29.24)
	(= (slew_time Phenomenon15 Phenomenon17) 29.24)
	(= (slew_time Phenomenon17 Planet16) 35.14)
	(= (slew_time Planet16 Phenomenon17) 35.14)
	(= (slew_time Star18 GroundStation0) 77.81)
	(= (slew_time GroundStation0 Star18) 77.81)
	(= (slew_time Star18 Star1) 9.431)
	(= (slew_time Star1 Star18) 9.431)
	(= (slew_time Star18 GroundStation2) 18.1)
	(= (slew_time GroundStation2 Star18) 18.1)
	(= (slew_time Star18 Star3) 18.03)
	(= (slew_time Star3 Star18) 18.03)
	(= (slew_time Star18 GroundStation4) 83.1)
	(= (slew_time GroundStation4 Star18) 83.1)
	(= (slew_time Star18 Planet5) 77.25)
	(= (slew_time Planet5 Star18) 77.25)
	(= (slew_time Star18 Planet6) 23.15)
	(= (slew_time Planet6 Star18) 23.15)
	(= (slew_time Star18 Planet7) 66.81)
	(= (slew_time Planet7 Star18) 66.81)
	(= (slew_time Star18 Star8) 24.87)
	(= (slew_time Star8 Star18) 24.87)
	(= (slew_time Star18 Phenomenon9) 58.54)
	(= (slew_time Phenomenon9 Star18) 58.54)
	(= (slew_time Star18 Star10) 7.155)
	(= (slew_time Star10 Star18) 7.155)
	(= (slew_time Star18 Planet11) 75.42)
	(= (slew_time Planet11 Star18) 75.42)
	(= (slew_time Star18 Planet12) 32.14)
	(= (slew_time Planet12 Star18) 32.14)
	(= (slew_time Star18 Planet13) 13.42)
	(= (slew_time Planet13 Star18) 13.42)
	(= (slew_time Star18 Phenomenon14) 7.117)
	(= (slew_time Phenomenon14 Star18) 7.117)
	(= (slew_time Star18 Phenomenon15) 23.73)
	(= (slew_time Phenomenon15 Star18) 23.73)
	(= (slew_time Star18 Planet16) 14.84)
	(= (slew_time Planet16 Star18) 14.84)
	(= (slew_time Star18 Phenomenon17) 0.8667)
	(= (slew_time Phenomenon17 Star18) 0.8667)
	(= (slew_time Phenomenon19 GroundStation0) 0.5532)
	(= (slew_time GroundStation0 Phenomenon19) 0.5532)
	(= (slew_time Phenomenon19 Star1) 25.62)
	(= (slew_time Star1 Phenomenon19) 25.62)
	(= (slew_time Phenomenon19 GroundStation2) 12.7)
	(= (slew_time GroundStation2 Phenomenon19) 12.7)
	(= (slew_time Phenomenon19 Star3) 21.39)
	(= (slew_time Star3 Phenomenon19) 21.39)
	(= (slew_time Phenomenon19 GroundStation4) 25.65)
	(= (slew_time GroundStation4 Phenomenon19) 25.65)
	(= (slew_time Phenomenon19 Planet5) 47.95)
	(= (slew_time Planet5 Phenomenon19) 47.95)
	(= (slew_time Phenomenon19 Planet6) 40.39)
	(= (slew_time Planet6 Phenomenon19) 40.39)
	(= (slew_time Phenomenon19 Planet7) 87.47)
	(= (slew_time Planet7 Phenomenon19) 87.47)
	(= (slew_time Phenomenon19 Star8) 57.09)
	(= (slew_time Star8 Phenomenon19) 57.09)
	(= (slew_time Phenomenon19 Phenomenon9) 40.52)
	(= (slew_time Phenomenon9 Phenomenon19) 40.52)
	(= (slew_time Phenomenon19 Star10) 42.7)
	(= (slew_time Star10 Phenomenon19) 42.7)
	(= (slew_time Phenomenon19 Planet11) 37.74)
	(= (slew_time Planet11 Phenomenon19) 37.74)
	(= (slew_time Phenomenon19 Planet12) 30.45)
	(= (slew_time Planet12 Phenomenon19) 30.45)
	(= (slew_time Phenomenon19 Planet13) 4.819)
	(= (slew_time Planet13 Phenomenon19) 4.819)
	(= (slew_time Phenomenon19 Phenomenon14) 15.08)
	(= (slew_time Phenomenon14 Phenomenon19) 15.08)
	(= (slew_time Phenomenon19 Phenomenon15) 75.08)
	(= (slew_time Phenomenon15 Phenomenon19) 75.08)
	(= (slew_time Phenomenon19 Planet16) 25.36)
	(= (slew_time Planet16 Phenomenon19) 25.36)
	(= (slew_time Phenomenon19 Phenomenon17) 14.02)
	(= (slew_time Phenomenon17 Phenomenon19) 14.02)
	(= (slew_time Phenomenon19 Star18) 0.3781)
	(= (slew_time Star18 Phenomenon19) 0.3781)
	(= (slew_time Phenomenon20 GroundStation0) 11.35)
	(= (slew_time GroundStation0 Phenomenon20) 11.35)
	(= (slew_time Phenomenon20 Star1) 68.96)
	(= (slew_time Star1 Phenomenon20) 68.96)
	(= (slew_time Phenomenon20 GroundStation2) 28.51)
	(= (slew_time GroundStation2 Phenomenon20) 28.51)
	(= (slew_time Phenomenon20 Star3) 41.16)
	(= (slew_time Star3 Phenomenon20) 41.16)
	(= (slew_time Phenomenon20 GroundStation4) 75.76)
	(= (slew_time GroundStation4 Phenomenon20) 75.76)
	(= (slew_time Phenomenon20 Planet5) 5.074)
	(= (slew_time Planet5 Phenomenon20) 5.074)
	(= (slew_time Phenomenon20 Planet6) 22.73)
	(= (slew_time Planet6 Phenomenon20) 22.73)
	(= (slew_time Phenomenon20 Planet7) 24.57)
	(= (slew_time Planet7 Phenomenon20) 24.57)
	(= (slew_time Phenomenon20 Star8) 8.518)
	(= (slew_time Star8 Phenomenon20) 8.518)
	(= (slew_time Phenomenon20 Phenomenon9) 76.76)
	(= (slew_time Phenomenon9 Phenomenon20) 76.76)
	(= (slew_time Phenomenon20 Star10) 24.24)
	(= (slew_time Star10 Phenomenon20) 24.24)
	(= (slew_time Phenomenon20 Planet11) 16.6)
	(= (slew_time Planet11 Phenomenon20) 16.6)
	(= (slew_time Phenomenon20 Planet12) 74.54)
	(= (slew_time Planet12 Phenomenon20) 74.54)
	(= (slew_time Phenomenon20 Planet13) 18.28)
	(= (slew_time Planet13 Phenomenon20) 18.28)
	(= (slew_time Phenomenon20 Phenomenon14) 53.66)
	(= (slew_time Phenomenon14 Phenomenon20) 53.66)
	(= (slew_time Phenomenon20 Phenomenon15) 5.753)
	(= (slew_time Phenomenon15 Phenomenon20) 5.753)
	(= (slew_time Phenomenon20 Planet16) 11.5)
	(= (slew_time Planet16 Phenomenon20) 11.5)
	(= (slew_time Phenomenon20 Phenomenon17) 13.88)
	(= (slew_time Phenomenon17 Phenomenon20) 13.88)
	(= (slew_time Phenomenon20 Star18) 19.07)
	(= (slew_time Star18 Phenomenon20) 19.07)
	(= (slew_time Phenomenon20 Phenomenon19) 30.12)
	(= (slew_time Phenomenon19 Phenomenon20) 30.12)
	(= (slew_time Star21 GroundStation0) 64.16)
	(= (slew_time GroundStation0 Star21) 64.16)
	(= (slew_time Star21 Star1) 15.64)
	(= (slew_time Star1 Star21) 15.64)
	(= (slew_time Star21 GroundStation2) 4.404)
	(= (slew_time GroundStation2 Star21) 4.404)
	(= (slew_time Star21 Star3) 49.13)
	(= (slew_time Star3 Star21) 49.13)
	(= (slew_time Star21 GroundStation4) 52.37)
	(= (slew_time GroundStation4 Star21) 52.37)
	(= (slew_time Star21 Planet5) 65.53)
	(= (slew_time Planet5 Star21) 65.53)
	(= (slew_time Star21 Planet6) 33.93)
	(= (slew_time Planet6 Star21) 33.93)
	(= (slew_time Star21 Planet7) 15.17)
	(= (slew_time Planet7 Star21) 15.17)
	(= (slew_time Star21 Star8) 14.4)
	(= (slew_time Star8 Star21) 14.4)
	(= (slew_time Star21 Phenomenon9) 10.43)
	(= (slew_time Phenomenon9 Star21) 10.43)
	(= (slew_time Star21 Star10) 45.04)
	(= (slew_time Star10 Star21) 45.04)
	(= (slew_time Star21 Planet11) 16.84)
	(= (slew_time Planet11 Star21) 16.84)
	(= (slew_time Star21 Planet12) 3.302)
	(= (slew_time Planet12 Star21) 3.302)
	(= (slew_time Star21 Planet13) 71.17)
	(= (slew_time Planet13 Star21) 71.17)
	(= (slew_time Star21 Phenomenon14) 28.9)
	(= (slew_time Phenomenon14 Star21) 28.9)
	(= (slew_time Star21 Phenomenon15) 44.39)
	(= (slew_time Phenomenon15 Star21) 44.39)
	(= (slew_time Star21 Planet16) 66.02)
	(= (slew_time Planet16 Star21) 66.02)
	(= (slew_time Star21 Phenomenon17) 30.6)
	(= (slew_time Phenomenon17 Star21) 30.6)
	(= (slew_time Star21 Star18) 37.16)
	(= (slew_time Star18 Star21) 37.16)
	(= (slew_time Star21 Phenomenon19) 57.57)
	(= (slew_time Phenomenon19 Star21) 57.57)
	(= (slew_time Star21 Phenomenon20) 51.55)
	(= (slew_time Phenomenon20 Star21) 51.55)
	(= (slew_time Star22 GroundStation0) 77.25)
	(= (slew_time GroundStation0 Star22) 77.25)
	(= (slew_time Star22 Star1) 24.31)
	(= (slew_time Star1 Star22) 24.31)
	(= (slew_time Star22 GroundStation2) 30.16)
	(= (slew_time GroundStation2 Star22) 30.16)
	(= (slew_time Star22 Star3) 26.08)
	(= (slew_time Star3 Star22) 26.08)
	(= (slew_time Star22 GroundStation4) 5.291)
	(= (slew_time GroundStation4 Star22) 5.291)
	(= (slew_time Star22 Planet5) 10.32)
	(= (slew_time Planet5 Star22) 10.32)
	(= (slew_time Star22 Planet6) 6.229)
	(= (slew_time Planet6 Star22) 6.229)
	(= (slew_time Star22 Planet7) 42.83)
	(= (slew_time Planet7 Star22) 42.83)
	(= (slew_time Star22 Star8) 1.908)
	(= (slew_time Star8 Star22) 1.908)
	(= (slew_time Star22 Phenomenon9) 2.188)
	(= (slew_time Phenomenon9 Star22) 2.188)
	(= (slew_time Star22 Star10) 25.88)
	(= (slew_time Star10 Star22) 25.88)
	(= (slew_time Star22 Planet11) 41.01)
	(= (slew_time Planet11 Star22) 41.01)
	(= (slew_time Star22 Planet12) 51.08)
	(= (slew_time Planet12 Star22) 51.08)
	(= (slew_time Star22 Planet13) 0.7146)
	(= (slew_time Planet13 Star22) 0.7146)
	(= (slew_time Star22 Phenomenon14) 48.26)
	(= (slew_time Phenomenon14 Star22) 48.26)
	(= (slew_time Star22 Phenomenon15) 5.579)
	(= (slew_time Phenomenon15 Star22) 5.579)
	(= (slew_time Star22 Planet16) 6.74)
	(= (slew_time Planet16 Star22) 6.74)
	(= (slew_time Star22 Phenomenon17) 77.24)
	(= (slew_time Phenomenon17 Star22) 77.24)
	(= (slew_time Star22 Star18) 15.46)
	(= (slew_time Star18 Star22) 15.46)
	(= (slew_time Star22 Phenomenon19) 2.837)
	(= (slew_time Phenomenon19 Star22) 2.837)
	(= (slew_time Star22 Phenomenon20) 21.09)
	(= (slew_time Phenomenon20 Star22) 21.09)
	(= (slew_time Star22 Star21) 32.97)
	(= (slew_time Star21 Star22) 32.97)
	(= (slew_time Phenomenon23 GroundStation0) 69.76)
	(= (slew_time GroundStation0 Phenomenon23) 69.76)
	(= (slew_time Phenomenon23 Star1) 48.33)
	(= (slew_time Star1 Phenomenon23) 48.33)
	(= (slew_time Phenomenon23 GroundStation2) 35.06)
	(= (slew_time GroundStation2 Phenomenon23) 35.06)
	(= (slew_time Phenomenon23 Star3) 94.55)
	(= (slew_time Star3 Phenomenon23) 94.55)
	(= (slew_time Phenomenon23 GroundStation4) 29.69)
	(= (slew_time GroundStation4 Phenomenon23) 29.69)
	(= (slew_time Phenomenon23 Planet5) 21.68)
	(= (slew_time Planet5 Phenomenon23) 21.68)
	(= (slew_time Phenomenon23 Planet6) 42.82)
	(= (slew_time Planet6 Phenomenon23) 42.82)
	(= (slew_time Phenomenon23 Planet7) 32.97)
	(= (slew_time Planet7 Phenomenon23) 32.97)
	(= (slew_time Phenomenon23 Star8) 38.58)
	(= (slew_time Star8 Phenomenon23) 38.58)
	(= (slew_time Phenomenon23 Phenomenon9) 12.75)
	(= (slew_time Phenomenon9 Phenomenon23) 12.75)
	(= (slew_time Phenomenon23 Star10) 79.25)
	(= (slew_time Star10 Phenomenon23) 79.25)
	(= (slew_time Phenomenon23 Planet11) 26.81)
	(= (slew_time Planet11 Phenomenon23) 26.81)
	(= (slew_time Phenomenon23 Planet12) 11.99)
	(= (slew_time Planet12 Phenomenon23) 11.99)
	(= (slew_time Phenomenon23 Planet13) 5.078)
	(= (slew_time Planet13 Phenomenon23) 5.078)
	(= (slew_time Phenomenon23 Phenomenon14) 47.8)
	(= (slew_time Phenomenon14 Phenomenon23) 47.8)
	(= (slew_time Phenomenon23 Phenomenon15) 14.49)
	(= (slew_time Phenomenon15 Phenomenon23) 14.49)
	(= (slew_time Phenomenon23 Planet16) 68.37)
	(= (slew_time Planet16 Phenomenon23) 68.37)
	(= (slew_time Phenomenon23 Phenomenon17) 28.73)
	(= (slew_time Phenomenon17 Phenomenon23) 28.73)
	(= (slew_time Phenomenon23 Star18) 30.89)
	(= (slew_time Star18 Phenomenon23) 30.89)
	(= (slew_time Phenomenon23 Phenomenon19) 18.37)
	(= (slew_time Phenomenon19 Phenomenon23) 18.37)
	(= (slew_time Phenomenon23 Phenomenon20) 43.33)
	(= (slew_time Phenomenon20 Phenomenon23) 43.33)
	(= (slew_time Phenomenon23 Star21) 47.23)
	(= (slew_time Star21 Phenomenon23) 47.23)
	(= (slew_time Phenomenon23 Star22) 1.362)
	(= (slew_time Star22 Phenomenon23) 1.362)
	(= (slew_time Phenomenon24 GroundStation0) 42.61)
	(= (slew_time GroundStation0 Phenomenon24) 42.61)
	(= (slew_time Phenomenon24 Star1) 19.8)
	(= (slew_time Star1 Phenomenon24) 19.8)
	(= (slew_time Phenomenon24 GroundStation2) 5.412)
	(= (slew_time GroundStation2 Phenomenon24) 5.412)
	(= (slew_time Phenomenon24 Star3) 14.22)
	(= (slew_time Star3 Phenomenon24) 14.22)
	(= (slew_time Phenomenon24 GroundStation4) 18.84)
	(= (slew_time GroundStation4 Phenomenon24) 18.84)
	(= (slew_time Phenomenon24 Planet5) 5.755)
	(= (slew_time Planet5 Phenomenon24) 5.755)
	(= (slew_time Phenomenon24 Planet6) 17.17)
	(= (slew_time Planet6 Phenomenon24) 17.17)
	(= (slew_time Phenomenon24 Planet7) 2.96)
	(= (slew_time Planet7 Phenomenon24) 2.96)
	(= (slew_time Phenomenon24 Star8) 72.36)
	(= (slew_time Star8 Phenomenon24) 72.36)
	(= (slew_time Phenomenon24 Phenomenon9) 63.21)
	(= (slew_time Phenomenon9 Phenomenon24) 63.21)
	(= (slew_time Phenomenon24 Star10) 41.65)
	(= (slew_time Star10 Phenomenon24) 41.65)
	(= (slew_time Phenomenon24 Planet11) 36.32)
	(= (slew_time Planet11 Phenomenon24) 36.32)
	(= (slew_time Phenomenon24 Planet12) 64.17)
	(= (slew_time Planet12 Phenomenon24) 64.17)
	(= (slew_time Phenomenon24 Planet13) 36.35)
	(= (slew_time Planet13 Phenomenon24) 36.35)
	(= (slew_time Phenomenon24 Phenomenon14) 42.51)
	(= (slew_time Phenomenon14 Phenomenon24) 42.51)
	(= (slew_time Phenomenon24 Phenomenon15) 17.37)
	(= (slew_time Phenomenon15 Phenomenon24) 17.37)
	(= (slew_time Phenomenon24 Planet16) 40.18)
	(= (slew_time Planet16 Phenomenon24) 40.18)
	(= (slew_time Phenomenon24 Phenomenon17) 28.81)
	(= (slew_time Phenomenon17 Phenomenon24) 28.81)
	(= (slew_time Phenomenon24 Star18) 24.38)
	(= (slew_time Star18 Phenomenon24) 24.38)
	(= (slew_time Phenomenon24 Phenomenon19) 11.79)
	(= (slew_time Phenomenon19 Phenomenon24) 11.79)
	(= (slew_time Phenomenon24 Phenomenon20) 8.903)
	(= (slew_time Phenomenon20 Phenomenon24) 8.903)
	(= (slew_time Phenomenon24 Star21) 58.63)
	(= (slew_time Star21 Phenomenon24) 58.63)
	(= (slew_time Phenomenon24 Star22) 46.58)
	(= (slew_time Star22 Phenomenon24) 46.58)
	(= (slew_time Phenomenon24 Phenomenon23) 24.25)
	(= (slew_time Phenomenon23 Phenomenon24) 24.25)
)
(:goal (and
	(pointing satellite1 Star22)
	(pointing satellite4 Phenomenon20)
	(pointing satellite8 Planet16)
	(have_image Planet5 image0)
	(have_image Planet6 image4)
	(have_image Planet7 image4)
	(have_image Phenomenon9 image4)
	(have_image Star10 thermograph1)
	(have_image Planet11 image4)
	(have_image Planet12 thermograph1)
	(have_image Planet13 infrared3)
	(have_image Phenomenon14 infrared2)
	(have_image Phenomenon15 infrared2)
	(have_image Planet16 infrared2)
	(have_image Phenomenon17 thermograph1)
	(have_image Star18 image4)
	(have_image Star21 thermograph1)
	(have_image Star22 image4)
	(have_image Phenomenon23 infrared3)
	(have_image Phenomenon24 infrared3)
))
(:metric minimize (total-time))

)
