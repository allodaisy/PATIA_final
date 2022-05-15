;;
;; PDDL file for the AIPS2000 Planning Competition
;; based on the data generated by the airport simulator Astras.
;;

;; Author: Sebastian Trueg thisshouldbethecurrentdateandtime :(
;; Created with AdlDomainExporter 0.1 by Sebastian Trueg <trueg@informatik.uni-freiburg.de>
;;


(define (domain airport_durative)

(:requirements :durative-actions :adl :numeric-fluents)

(:types airplane segment direction airplanetype)

(:constants
      ;; the segments (40)
      seg_09Thresh_0_100
      seg_09Help_0_100
      seg_09_0_150
      seg_A_09_0_100
      seg_Rwy_0_1300
      seg_27Thresh_0_100
      seg_27Help_0_100
      seg_27_0_150
      seg_B_27_0_100
      seg_N1_N2_0_100
      seg_N1_A_0_100
      seg_N2_N3_1_0_86
      seg_N2_N3_0_85
      seg_N3_N_0_100
      seg_N_N4_0_100
      seg_N_C_0_100
      seg_N4_N5_1_0_85
      seg_N4_N5_0_86
      seg_N5_N6_0_100
      seg_N6_B_0_100
      seg_C_C2_1_0_83
      seg_C_C2_0_84
      seg_C4_C5_0_50
      seg_C5_C6_0_50
      seg_C5_C_A02_0_100
      seg_C5_C_B02_0_100
      seg_C6_C7_0_100
      seg_A02_0_100
      seg_B02_0_100
      seg_N2_N3_2_0_86
      seg_N2_N3_3_0_86
      seg_N2_N3_4_0_85
      seg_N2_N3_5_0_86
      seg_N2_N3_6_0_86
      seg_N4_N5_2_0_86
      seg_N4_N5_3_0_86
      seg_N4_N5_4_0_85
      seg_N4_N5_5_0_86
      seg_N4_N5_6_0_86
      seg_C_C2_2_0_83 - segment

)

(:predicates
                (can-move ?s1 ?s2 - segment ?d - direction)
                (can-pushback ?s1 ?s2 - segment ?d - direction)
                (move-dir ?s1 ?s2 - segment ?d - direction)
                (move-back-dir ?s1 ?s2 - segment ?d - direction)
                (is-blocked ?s1  - segment ?t - airplanetype ?s2 - segment ?d - direction)
                (has-type ?a - airplane ?t - airplanetype)
                (at-segment ?a - airplane ?s - segment)
                (facing ?a - airplane ?d - direction)
                (occupied ?s - segment)
                (blocked ?s - segment ?a - airplane)
                (is-start-runway ?s - segment ?d - direction)
                (airborne ?a - airplane ?s - segment)
                (is-moving ?a - airplane)
                (is-pushing ?a - airplane)
                (is-parked ?a - airplane ?s - segment)
                (idled_0)
                (landing_global)
                (landing_started)
                (start_landing)
                (landed_last)
                (idled_1)
)


(:functions
                ;; the length of a segment
                (length ?s - segment)

                ;; the number of engines of an airplane
                (engines ?a - airplane)
)
(:durative-action move
 :parameters
     (?a - airplane ?t - airplanetype ?d1 - direction ?s1 ?s2  - segment ?d2 - direction)
 :duration
     (= ?duration (/ (length ?s1) 30))
 :condition
     (and
                (over all (has-type ?a ?t))
                (over all (is-moving ?a))
                (over all (not (= ?s1 ?s2)))
                (at start (facing ?a ?d1))
                (over all (can-move ?s1 ?s2 ?d1))
                (over all (move-dir ?s1 ?s2 ?d2))
                (at start (at-segment ?a ?s1))
                (over all (not 	(exists	(?a1 - airplane)	(and 	(not (= ?a1 ?a))
                							(blocked ?s2 ?a1))))
                )
                (over all	(forall (?s - segment)	(imply 	(and 	(is-blocked ?s ?t ?s2 ?d2)
                							(not (= ?s ?s1)))
                						(not (occupied ?s))
                					)
                		)
                )
                (at start (landing_started))
     )
 :effect
     (and
                (at start (occupied ?s2))
                (at start (blocked ?s2 ?a))
                (at end (not (occupied ?s1)))
                (at end (when 	(not (is-blocked ?s1 ?t ?s2 ?d2))
                		(not (blocked ?s1 ?a)))
                )
                (at end (when 	(not (= ?d1 ?d2))
                		(not (facing ?a ?d1)))
                )
                (at end (not (at-segment ?a ?s1)))
                (at end 	(forall (?s - segment)	(when 	(is-blocked ?s ?t ?s2 ?d2)
                						(blocked ?s ?a)
                					)
                		)
                )
                (at end 	(forall (?s - segment)	(when 	(and	(is-blocked ?s ?t ?s1 ?d1)
                							(not (= ?s ?s2))
                							(not (is-blocked ?s ?t ?s2 ?d2))
                						)
                						(not (blocked ?s ?a))
                					)
                		)
                )
                (at end (at-segment ?a ?s2))
                (at end (when 	(not (= ?d1 ?d2))
                                      (facing ?a ?d2))
                )
     )
)
(:durative-action pushback
 :parameters
     (?a - airplane ?t - airplanetype ?d1 - direction ?s1 ?s2  - segment ?d2 - direction)
 :duration
     (= ?duration (/ (length ?s1) 5))
 :condition
     (and
                (over all (has-type ?a ?t))
                (over all (is-pushing ?a))
                (over all (not (= ?s1 ?s2)))
                (at start (facing ?a ?d1))
                (over all (can-pushback ?s1 ?s2 ?d1))
                (over all (move-back-dir ?s1 ?s2 ?d2))
                (at start (at-segment ?a ?s1))
                (over all	(not 	(exists	(?a1 - airplane)	(and 	(not (= ?a1 ?a))
                							(blocked ?s2 ?a1)))
                		)
                )
                (over all 	(forall (?s - segment)	(imply 	(and 	(is-blocked ?s ?t ?s2 ?d2)
                							(not (= ?s ?s1)))
                						(not (occupied ?s))
                					)
                		)
                )
                (at start (landing_started))
     )
 :effect
     (and
                (at start (occupied ?s2))
                (at start (blocked ?s2 ?a))
                (at end	(forall (?s - segment)	(when 	(is-blocked ?s ?t ?s2 ?d2)
                					(blocked ?s ?a)
                				)
                	)
                )
                (at end	(forall (?s - segment)	(when 	(and	(is-blocked ?s ?t ?s1 ?d1)
                						(not (= ?s ?s2))
                						(not (is-blocked ?s ?t ?s2 ?d2))
                                				)
                					        (not (blocked ?s ?a))
                				        )
                	        )
                )
                (at end (at-segment ?a ?s2))
                (at end (when 	(not (= ?d1 ?d2))
                		        (facing ?a ?d2))
                )
                (at end (not (occupied ?s1)))
                (at end (when 	(not (is-blocked ?s1 ?t ?s2 ?d2))
                		(not (blocked ?s1 ?a)))
                )
                (at end (when 	(not (= ?d1 ?d2))
                		(not (facing ?a ?d1)))
                )
                (at end (not (at-segment ?a ?s1)))
     )
)
(:durative-action takeoff
 :parameters (?a - airplane ?s - segment ?d - direction)
 :duration   (= ?duration 30)
 :condition
     (and
                (at start (at-segment ?a ?s))
                (at start (facing ?a ?d))
                (over all (is-start-runway ?s ?d))
                (at start (landing_started))
     )
 :effect
     (and
                (at end (not (blocked ?s ?a)))
	          (at end (not (occupied ?s)))
	          (at end (not (at-segment ?a ?s)))
	          (at end (airborne ?a ?s))
	          (at end (forall (?s1 - segment)	(when   (blocked ?s1 ?a)
                               		                (not (blocked ?s1 ?a))
                             	                        )
		          )
                )
     )
)
(:durative-action park
 :parameters (?a - airplane ?t - airplanetype ?s - segment ?d - direction)
 :duration (= ?duration 40)
 :condition (and    (over all (at-segment ?a ?s))
                    (over all (facing ?a ?d))
                    (at start (is-moving ?a))
            )
 :effect (and (at end (is-parked ?a ?s))
              (at end (not (is-moving ?a)))
		(at end (forall (?ss - segment)	(when 	(and	(is-blocked ?ss ?t ?s ?d)
						        (not (= ?s ?ss))
					                )
					        (not (blocked ?ss ?a))
				                )
              ))
         )
)
(:durative-action startup
 :parameters (?a - airplane)
 :duration  (= ?duration (* 60 (engines ?a) ) )
 :condition
     (and
                (at start (is-pushing ?a))
                (at start (landing_started))
     )
 :effect
     (and
                (at end (not (is-pushing ?a)))
	          (at end (is-moving ?a))
     )
)

(:durative-action idle_1
 :parameters ()
 :duration (= ?duration 146)
 :condition (and
                 (over all (idled_0))
                 (over all (landing_global))
            )
 :effect    (and
                 (at end (idled_1))
                 (at end (not (idled_0)))
            )
)
(:durative-action land_1
 :parameters ()
 :duration (= ?duration 30)
 :condition (and
                 (over all (idled_1))
                 (over all (landing_global))
            )
 :effect    (and
                (at end (landed_last))
                (at end (not (idled_1)))
                (at start (occupied seg_27Thresh_0_100))
                (at end (not (occupied seg_27Thresh_0_100)))
                (at start (occupied seg_27Help_0_100))
                (at end (not (occupied seg_27Help_0_100)))
                (at start (occupied seg_27_0_150))
                (at end (not (occupied seg_27_0_150)))
                (at start (occupied seg_Rwy_0_1300))
                (at end (not (occupied seg_Rwy_0_1300)))
                (at start (occupied seg_09_0_150))
                (at end (not (occupied seg_09_0_150)))
                (at start (occupied seg_09Help_0_100))
                (at end (not (occupied seg_09Help_0_100)))
                (at start (occupied seg_09Thresh_0_100))
                (at end (not (occupied seg_09Thresh_0_100)))
            )
)
(:durative-action landing_wrapper
 :parameters ()
 :duration (= ?duration 176)
 :condition (and
               (at start (start_landing))
            )
 :effect    (and
                 (at start (not (start_landing)))
                 (at start (landing_started))
                 (at start (idled_0))
                 (at start (landing_global))
                 (at end (not (landing_global)))
            )
)

)
