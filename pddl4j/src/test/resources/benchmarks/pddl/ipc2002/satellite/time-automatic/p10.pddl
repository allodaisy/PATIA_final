(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	instrument5 - instrument
	satellite3 - satellite
	instrument6 - instrument
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	instrument10 - instrument
	infrared0 - mode
	spectrograph1 - mode
	infrared3 - mode
	image4 - mode
	image2 - mode
	Star1 - direction
	GroundStation3 - direction
	Star4 - direction
	Star2 - direction
	Star0 - direction
	Planet5 - direction
	Star6 - direction
	Star7 - direction
	Phenomenon8 - direction
	Planet9 - direction
	Planet10 - direction
	Star11 - direction
	Star12 - direction
	Phenomenon13 - direction
	Phenomenon14 - direction
	Star15 - direction
	Star16 - direction
)
(:init
	(supports instrument0 image4)
	(calibration_target instrument0 Star1)
	(= (calibration_time instrument0 Star1) 7.65)
	(supports instrument1 infrared0)
	(supports instrument1 spectrograph1)
	(calibration_target instrument1 GroundStation3)
	(= (calibration_time instrument1 GroundStation3) 99.2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star0)
	(supports instrument2 infrared0)
	(supports instrument2 image2)
	(calibration_target instrument2 GroundStation3)
	(= (calibration_time instrument2 GroundStation3) 48.6)
	(supports instrument3 infrared3)
	(supports instrument3 infrared0)
	(calibration_target instrument3 Star4)
	(= (calibration_time instrument3 Star4) 14)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star4)
	(supports instrument4 spectrograph1)
	(supports instrument4 image4)
	(supports instrument4 infrared0)
	(calibration_target instrument4 Star2)
	(= (calibration_time instrument4 Star2) 94.3)
	(supports instrument5 image2)
	(supports instrument5 infrared0)
	(supports instrument5 infrared3)
	(calibration_target instrument5 Star0)
	(= (calibration_time instrument5 Star0) 96.2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star1)
	(supports instrument6 infrared0)
	(supports instrument6 infrared3)
	(calibration_target instrument6 GroundStation3)
	(= (calibration_time instrument6 GroundStation3) 23.9)
	(supports instrument7 image4)
	(supports instrument7 spectrograph1)
	(supports instrument7 infrared3)
	(calibration_target instrument7 Star4)
	(= (calibration_time instrument7 Star4) 52.7)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 GroundStation3)
	(supports instrument8 spectrograph1)
	(supports instrument8 image4)
	(calibration_target instrument8 Star4)
	(= (calibration_time instrument8 Star4) 26.8)
	(supports instrument9 infrared3)
	(calibration_target instrument9 Star2)
	(= (calibration_time instrument9 Star2) 89.3)
	(supports instrument10 image2)
	(supports instrument10 image4)
	(calibration_target instrument10 Star0)
	(= (calibration_time instrument10 Star0) 67.8)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet10)
	(= (slew_time Star1 Star0) 26.89)
	(= (slew_time Star0 Star1) 26.89)
	(= (slew_time GroundStation3 Star0) 29.36)
	(= (slew_time Star0 GroundStation3) 29.36)
	(= (slew_time GroundStation3 Star1) 36.95)
	(= (slew_time Star1 GroundStation3) 36.95)
	(= (slew_time GroundStation3 Star2) 77.51)
	(= (slew_time Star2 GroundStation3) 77.51)
	(= (slew_time Star4 Star0) 18.03)
	(= (slew_time Star0 Star4) 18.03)
	(= (slew_time Star4 Star1) 9.079)
	(= (slew_time Star1 Star4) 9.079)
	(= (slew_time Star4 Star2) 88.82)
	(= (slew_time Star2 Star4) 88.82)
	(= (slew_time Star4 GroundStation3) 84.12)
	(= (slew_time GroundStation3 Star4) 84.12)
	(= (slew_time Star2 Star0) 27.05)
	(= (slew_time Star0 Star2) 27.05)
	(= (slew_time Star2 Star1) 47.91)
	(= (slew_time Star1 Star2) 47.91)
	(= (slew_time Planet5 Star0) 7.066)
	(= (slew_time Star0 Planet5) 7.066)
	(= (slew_time Planet5 Star1) 42.51)
	(= (slew_time Star1 Planet5) 42.51)
	(= (slew_time Planet5 Star2) 11.01)
	(= (slew_time Star2 Planet5) 11.01)
	(= (slew_time Planet5 GroundStation3) 54.93)
	(= (slew_time GroundStation3 Planet5) 54.93)
	(= (slew_time Planet5 Star4) 87.61)
	(= (slew_time Star4 Planet5) 87.61)
	(= (slew_time Star6 Star0) 29.71)
	(= (slew_time Star0 Star6) 29.71)
	(= (slew_time Star6 Star1) 36.47)
	(= (slew_time Star1 Star6) 36.47)
	(= (slew_time Star6 Star2) 20.78)
	(= (slew_time Star2 Star6) 20.78)
	(= (slew_time Star6 GroundStation3) 24.73)
	(= (slew_time GroundStation3 Star6) 24.73)
	(= (slew_time Star6 Star4) 64.85)
	(= (slew_time Star4 Star6) 64.85)
	(= (slew_time Star6 Planet5) 13.49)
	(= (slew_time Planet5 Star6) 13.49)
	(= (slew_time Star7 Star0) 43.09)
	(= (slew_time Star0 Star7) 43.09)
	(= (slew_time Star7 Star1) 33.75)
	(= (slew_time Star1 Star7) 33.75)
	(= (slew_time Star7 Star2) 67.68)
	(= (slew_time Star2 Star7) 67.68)
	(= (slew_time Star7 GroundStation3) 34.4)
	(= (slew_time GroundStation3 Star7) 34.4)
	(= (slew_time Star7 Star4) 25.71)
	(= (slew_time Star4 Star7) 25.71)
	(= (slew_time Star7 Planet5) 49.59)
	(= (slew_time Planet5 Star7) 49.59)
	(= (slew_time Star7 Star6) 26.26)
	(= (slew_time Star6 Star7) 26.26)
	(= (slew_time Phenomenon8 Star0) 78.94)
	(= (slew_time Star0 Phenomenon8) 78.94)
	(= (slew_time Phenomenon8 Star1) 49.88)
	(= (slew_time Star1 Phenomenon8) 49.88)
	(= (slew_time Phenomenon8 Star2) 43.82)
	(= (slew_time Star2 Phenomenon8) 43.82)
	(= (slew_time Phenomenon8 GroundStation3) 52.41)
	(= (slew_time GroundStation3 Phenomenon8) 52.41)
	(= (slew_time Phenomenon8 Star4) 62.21)
	(= (slew_time Star4 Phenomenon8) 62.21)
	(= (slew_time Phenomenon8 Planet5) 52.74)
	(= (slew_time Planet5 Phenomenon8) 52.74)
	(= (slew_time Phenomenon8 Star6) 57.7)
	(= (slew_time Star6 Phenomenon8) 57.7)
	(= (slew_time Phenomenon8 Star7) 3.16)
	(= (slew_time Star7 Phenomenon8) 3.16)
	(= (slew_time Planet9 Star0) 14.25)
	(= (slew_time Star0 Planet9) 14.25)
	(= (slew_time Planet9 Star1) 1.046)
	(= (slew_time Star1 Planet9) 1.046)
	(= (slew_time Planet9 Star2) 41.58)
	(= (slew_time Star2 Planet9) 41.58)
	(= (slew_time Planet9 GroundStation3) 53.84)
	(= (slew_time GroundStation3 Planet9) 53.84)
	(= (slew_time Planet9 Star4) 25.45)
	(= (slew_time Star4 Planet9) 25.45)
	(= (slew_time Planet9 Planet5) 4.421)
	(= (slew_time Planet5 Planet9) 4.421)
	(= (slew_time Planet9 Star6) 36.02)
	(= (slew_time Star6 Planet9) 36.02)
	(= (slew_time Planet9 Star7) 44.12)
	(= (slew_time Star7 Planet9) 44.12)
	(= (slew_time Planet9 Phenomenon8) 32.7)
	(= (slew_time Phenomenon8 Planet9) 32.7)
	(= (slew_time Planet10 Star0) 4.863)
	(= (slew_time Star0 Planet10) 4.863)
	(= (slew_time Planet10 Star1) 46.96)
	(= (slew_time Star1 Planet10) 46.96)
	(= (slew_time Planet10 Star2) 0.5146)
	(= (slew_time Star2 Planet10) 0.5146)
	(= (slew_time Planet10 GroundStation3) 19.66)
	(= (slew_time GroundStation3 Planet10) 19.66)
	(= (slew_time Planet10 Star4) 5.885)
	(= (slew_time Star4 Planet10) 5.885)
	(= (slew_time Planet10 Planet5) 71.78)
	(= (slew_time Planet5 Planet10) 71.78)
	(= (slew_time Planet10 Star6) 18.87)
	(= (slew_time Star6 Planet10) 18.87)
	(= (slew_time Planet10 Star7) 70.9)
	(= (slew_time Star7 Planet10) 70.9)
	(= (slew_time Planet10 Phenomenon8) 3.776)
	(= (slew_time Phenomenon8 Planet10) 3.776)
	(= (slew_time Planet10 Planet9) 31.58)
	(= (slew_time Planet9 Planet10) 31.58)
	(= (slew_time Star11 Star0) 15.29)
	(= (slew_time Star0 Star11) 15.29)
	(= (slew_time Star11 Star1) 19.97)
	(= (slew_time Star1 Star11) 19.97)
	(= (slew_time Star11 Star2) 36.53)
	(= (slew_time Star2 Star11) 36.53)
	(= (slew_time Star11 GroundStation3) 28.51)
	(= (slew_time GroundStation3 Star11) 28.51)
	(= (slew_time Star11 Star4) 39.67)
	(= (slew_time Star4 Star11) 39.67)
	(= (slew_time Star11 Planet5) 6.72)
	(= (slew_time Planet5 Star11) 6.72)
	(= (slew_time Star11 Star6) 31.12)
	(= (slew_time Star6 Star11) 31.12)
	(= (slew_time Star11 Star7) 76.47)
	(= (slew_time Star7 Star11) 76.47)
	(= (slew_time Star11 Phenomenon8) 44.11)
	(= (slew_time Phenomenon8 Star11) 44.11)
	(= (slew_time Star11 Planet9) 25.31)
	(= (slew_time Planet9 Star11) 25.31)
	(= (slew_time Star11 Planet10) 4.485)
	(= (slew_time Planet10 Star11) 4.485)
	(= (slew_time Star12 Star0) 77.02)
	(= (slew_time Star0 Star12) 77.02)
	(= (slew_time Star12 Star1) 15.86)
	(= (slew_time Star1 Star12) 15.86)
	(= (slew_time Star12 Star2) 77.12)
	(= (slew_time Star2 Star12) 77.12)
	(= (slew_time Star12 GroundStation3) 65.44)
	(= (slew_time GroundStation3 Star12) 65.44)
	(= (slew_time Star12 Star4) 14.85)
	(= (slew_time Star4 Star12) 14.85)
	(= (slew_time Star12 Planet5) 84.68)
	(= (slew_time Planet5 Star12) 84.68)
	(= (slew_time Star12 Star6) 68.57)
	(= (slew_time Star6 Star12) 68.57)
	(= (slew_time Star12 Star7) 13.33)
	(= (slew_time Star7 Star12) 13.33)
	(= (slew_time Star12 Phenomenon8) 1.989)
	(= (slew_time Phenomenon8 Star12) 1.989)
	(= (slew_time Star12 Planet9) 85.83)
	(= (slew_time Planet9 Star12) 85.83)
	(= (slew_time Star12 Planet10) 46.12)
	(= (slew_time Planet10 Star12) 46.12)
	(= (slew_time Star12 Star11) 8.066)
	(= (slew_time Star11 Star12) 8.066)
	(= (slew_time Phenomenon13 Star0) 39.11)
	(= (slew_time Star0 Phenomenon13) 39.11)
	(= (slew_time Phenomenon13 Star1) 11.75)
	(= (slew_time Star1 Phenomenon13) 11.75)
	(= (slew_time Phenomenon13 Star2) 35.54)
	(= (slew_time Star2 Phenomenon13) 35.54)
	(= (slew_time Phenomenon13 GroundStation3) 49.07)
	(= (slew_time GroundStation3 Phenomenon13) 49.07)
	(= (slew_time Phenomenon13 Star4) 49.12)
	(= (slew_time Star4 Phenomenon13) 49.12)
	(= (slew_time Phenomenon13 Planet5) 29.52)
	(= (slew_time Planet5 Phenomenon13) 29.52)
	(= (slew_time Phenomenon13 Star6) 47.78)
	(= (slew_time Star6 Phenomenon13) 47.78)
	(= (slew_time Phenomenon13 Star7) 10.75)
	(= (slew_time Star7 Phenomenon13) 10.75)
	(= (slew_time Phenomenon13 Phenomenon8) 24.13)
	(= (slew_time Phenomenon8 Phenomenon13) 24.13)
	(= (slew_time Phenomenon13 Planet9) 55.49)
	(= (slew_time Planet9 Phenomenon13) 55.49)
	(= (slew_time Phenomenon13 Planet10) 5.121)
	(= (slew_time Planet10 Phenomenon13) 5.121)
	(= (slew_time Phenomenon13 Star11) 19.3)
	(= (slew_time Star11 Phenomenon13) 19.3)
	(= (slew_time Phenomenon13 Star12) 17.16)
	(= (slew_time Star12 Phenomenon13) 17.16)
	(= (slew_time Phenomenon14 Star0) 45.05)
	(= (slew_time Star0 Phenomenon14) 45.05)
	(= (slew_time Phenomenon14 Star1) 21.44)
	(= (slew_time Star1 Phenomenon14) 21.44)
	(= (slew_time Phenomenon14 Star2) 30.18)
	(= (slew_time Star2 Phenomenon14) 30.18)
	(= (slew_time Phenomenon14 GroundStation3) 17.45)
	(= (slew_time GroundStation3 Phenomenon14) 17.45)
	(= (slew_time Phenomenon14 Star4) 69.66)
	(= (slew_time Star4 Phenomenon14) 69.66)
	(= (slew_time Phenomenon14 Planet5) 10.68)
	(= (slew_time Planet5 Phenomenon14) 10.68)
	(= (slew_time Phenomenon14 Star6) 48.47)
	(= (slew_time Star6 Phenomenon14) 48.47)
	(= (slew_time Phenomenon14 Star7) 73.24)
	(= (slew_time Star7 Phenomenon14) 73.24)
	(= (slew_time Phenomenon14 Phenomenon8) 7.631)
	(= (slew_time Phenomenon8 Phenomenon14) 7.631)
	(= (slew_time Phenomenon14 Planet9) 41.58)
	(= (slew_time Planet9 Phenomenon14) 41.58)
	(= (slew_time Phenomenon14 Planet10) 21)
	(= (slew_time Planet10 Phenomenon14) 21)
	(= (slew_time Phenomenon14 Star11) 0.8216)
	(= (slew_time Star11 Phenomenon14) 0.8216)
	(= (slew_time Phenomenon14 Star12) 56.36)
	(= (slew_time Star12 Phenomenon14) 56.36)
	(= (slew_time Phenomenon14 Phenomenon13) 3.122)
	(= (slew_time Phenomenon13 Phenomenon14) 3.122)
	(= (slew_time Star15 Star0) 39.91)
	(= (slew_time Star0 Star15) 39.91)
	(= (slew_time Star15 Star1) 17.06)
	(= (slew_time Star1 Star15) 17.06)
	(= (slew_time Star15 Star2) 6.295)
	(= (slew_time Star2 Star15) 6.295)
	(= (slew_time Star15 GroundStation3) 81.14)
	(= (slew_time GroundStation3 Star15) 81.14)
	(= (slew_time Star15 Star4) 15.09)
	(= (slew_time Star4 Star15) 15.09)
	(= (slew_time Star15 Planet5) 16.44)
	(= (slew_time Planet5 Star15) 16.44)
	(= (slew_time Star15 Star6) 17.28)
	(= (slew_time Star6 Star15) 17.28)
	(= (slew_time Star15 Star7) 9.744)
	(= (slew_time Star7 Star15) 9.744)
	(= (slew_time Star15 Phenomenon8) 44.9)
	(= (slew_time Phenomenon8 Star15) 44.9)
	(= (slew_time Star15 Planet9) 3.542)
	(= (slew_time Planet9 Star15) 3.542)
	(= (slew_time Star15 Planet10) 19.51)
	(= (slew_time Planet10 Star15) 19.51)
	(= (slew_time Star15 Star11) 64.6)
	(= (slew_time Star11 Star15) 64.6)
	(= (slew_time Star15 Star12) 23.14)
	(= (slew_time Star12 Star15) 23.14)
	(= (slew_time Star15 Phenomenon13) 37.7)
	(= (slew_time Phenomenon13 Star15) 37.7)
	(= (slew_time Star15 Phenomenon14) 33.37)
	(= (slew_time Phenomenon14 Star15) 33.37)
	(= (slew_time Star16 Star0) 74.69)
	(= (slew_time Star0 Star16) 74.69)
	(= (slew_time Star16 Star1) 75.4)
	(= (slew_time Star1 Star16) 75.4)
	(= (slew_time Star16 Star2) 16.68)
	(= (slew_time Star2 Star16) 16.68)
	(= (slew_time Star16 GroundStation3) 23.81)
	(= (slew_time GroundStation3 Star16) 23.81)
	(= (slew_time Star16 Star4) 13.59)
	(= (slew_time Star4 Star16) 13.59)
	(= (slew_time Star16 Planet5) 32.6)
	(= (slew_time Planet5 Star16) 32.6)
	(= (slew_time Star16 Star6) 18.34)
	(= (slew_time Star6 Star16) 18.34)
	(= (slew_time Star16 Star7) 26.77)
	(= (slew_time Star7 Star16) 26.77)
	(= (slew_time Star16 Phenomenon8) 30.27)
	(= (slew_time Phenomenon8 Star16) 30.27)
	(= (slew_time Star16 Planet9) 25.18)
	(= (slew_time Planet9 Star16) 25.18)
	(= (slew_time Star16 Planet10) 28.96)
	(= (slew_time Planet10 Star16) 28.96)
	(= (slew_time Star16 Star11) 30.77)
	(= (slew_time Star11 Star16) 30.77)
	(= (slew_time Star16 Star12) 5.658)
	(= (slew_time Star12 Star16) 5.658)
	(= (slew_time Star16 Phenomenon13) 15.08)
	(= (slew_time Phenomenon13 Star16) 15.08)
	(= (slew_time Star16 Phenomenon14) 38.36)
	(= (slew_time Phenomenon14 Star16) 38.36)
	(= (slew_time Star16 Star15) 1.868)
	(= (slew_time Star15 Star16) 1.868)
)
(:goal (and
	(pointing satellite4 Planet9)
	(have_image Planet5 image4)
	(have_image Star6 infrared3)
	(have_image Star7 image4)
	(have_image Phenomenon8 image4)
	(have_image Planet9 infrared0)
	(have_image Planet10 infrared3)
	(have_image Star12 image4)
	(have_image Phenomenon13 image4)
	(have_image Phenomenon14 spectrograph1)
	(have_image Star15 spectrograph1)
	(have_image Star16 image2)
))
(:metric minimize (total-time))

)
