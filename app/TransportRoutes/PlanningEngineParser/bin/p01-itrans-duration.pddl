(define(problem ruteo8)
	(:domain iTransport)
    (:objects
        ;;Passengers declaration
        pas1 - passenger

        ;;Declaration of locations (bus stops) in the network
        c1 c2  c3 c4 c5 c6 c7 c8 c9 c10
        c11 c12 c13 c14 c15 c16 c17 c18 c19 c20
        c21 c22 c23 c24 c25 - location

        ;;Driving directions for buses
        north south east west - direction

        ;;Buses in the network
        b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 - bus

        ;;Routes in the network
        r1 r2 r3 r4 r5 - route

    )

    (:init
        ;;Bus fleet of each route in the transportation network
        (bus-fleet b1 r1)
        (bus-fleet b2 r1)
        (bus-fleet b3 r1)
        (bus-fleet b4 r2)
        (bus-fleet b5 r2)
        (bus-fleet b6 r2)
        (bus-fleet b7 r3)
        (bus-fleet b8 r3)
        (bus-fleet b9 r3)
        (bus-fleet b10 r4)
        (bus-fleet b11 r4)
        (bus-fleet b12 r4)
        (bus-fleet b13 r4)
        (bus-fleet b14 r5)
        (bus-fleet b15 r5)
        (bus-fleet b16 r5)

        ;;Driving direction for each bus in the route network
        (bus-direction b1 east)
        (bus-direction b2 east)
        (bus-direction b3 west)
        (bus-direction b4 east)
        (bus-direction b5 east)
        (bus-direction b6 west)
        (bus-direction b7 east)
        (bus-direction b8 east)
        (bus-direction b9 west)
        (bus-direction b10 south)
        (bus-direction b11 south)
        (bus-direction b12 north)
        (bus-direction b13 north)
        (bus-direction b14 south)
        (bus-direction b15 south)
        (bus-direction b16 north)

        ;;Network topology (bidireccional)
        (road c1 c2)
        (road c1 c6)
        (road c2 c1)
        (road c2 c3)
        (road c2 c7)
        (road c3 c2)
        (road c3 c4)
        (road c3 c8)
        (road c4 c3)
        (road c4 c5)
        (road c4 c9)
        (road c5 c4)
        (road c5 c10)
        (road c6 c1)
        (road c6 c7)
        (road c6 c11)
        (road c7 c6)
        (road c7 c8)
        (road c7 c2)
        (road c7 c12)
        (road c8 c7)
        (road c8 c9)
        (road c8 c3)
        (road c8 c13)
        (road c9 c8)
        (road c9 c10)
        (road c9 c4)
        (road c9 c14)
        (road c10 c9)
        (road c10 c5)
        (road c10 c15)
        (road c11 c12)
        (road c11 c6)
        (road c11 c16)
        (road c12 c11)
        (road c12 c13)
        (road c12 c7)
        (road c12 c17)
        (road c13 c12)
        (road c13 c14)
        (road c13 c8)
        (road c13 c18)
        (road c14 c13)
        (road c14 c15)
        (road c14 c9)
        (road c14 c19)
        (road c15 c14)
        (road c15 c10)
        (road c15 c20)
        (road c16 c17)
        (road c16 c11)
        (road c16 c21)
        (road c17 c16)
        (road c17 c18)
        (road c17 c12)
        (road c17 c22)
        (road c18 c17)
        (road c18 c19)
        (road c18 c13)
        (road c18 c23)
        (road c19 c18)
        (road c19 c20)
        (road c19 c14)
        (road c19 c24)
        (road c20 c19)
        (road c20 c15)
        (road c20 c25)
        (road c21 c22)
        (road c21 c16)
        (road c22 c21)
        (road c22 c23)
        (road c22 c17)
        (road c23 c22)
        (road c23 c24)
        (road c23 c18)
        (road c24 c23)
        (road c24 c25)
        (road c24 c19)
        (road c25 c20)
        (road c25 c24)

        ;;Network traversability for buses
        (available-road c1 c2 r1 east)
        (available-road c2 c3 r1 east)
        (available-road c2 c1 r1 west)
        (available-road c2 c7 r4 south)
        (available-road c3 c4 r1 east)
        (available-road c3 c2 r1 west)
        (available-road c4 c5 r1 east)
        (available-road c4 c3 r1 west)
        (available-road c4 c9 r5 south)
        (available-road c5 c4 r1 west)
        (available-road c7 c2 r4 north)
        (available-road c7 c12 r4 south)
        (available-road c9 c4 r4 north)
        (available-road c9 c14 r4 south)
        (available-road c11 c12 r2 east)
        (available-road c12 c11 r2 west)
        (available-road c12 c13 r2 east)
        (available-road c12 c7 r4 north)
        (available-road c12 c17 r4 south)
        (available-road c13 c12 r2 west)
        (available-road c13 c14 r2 east)
        (available-road c14 c13 r2 west)
        (available-road c14 c15 r2 east)
        (available-road c14 c9 r5 north)
        (available-road c14 c19 r5 south)
        (available-road c15 c14 r2 west)
        (available-road c17 c12 r4 north)
        (available-road c17 c22 r4 south)
        (available-road c19 c14 r5 north)
        (available-road c19 c24 r5 south)
        (available-road c21 c22 r3 east)
        (available-road c22 c21 r3 west)
        (available-road c22 c23 r3 east)
        (available-road c22 c17 r4 north)
        (available-road c23 c22 r3 west)
        (available-road c23 c24 r3 east)
        (available-road c24 c23 r3 west)
        (available-road c24 c25 r3 east)
        (available-road c24 c19 r5 north)



        ;;Bus locations in the network
        (at c1 b1)
        (at c3 b2)
        (at c4 b3)
        (at c11 b4)
        (at c14 b5)
        (at c13 b6)
        (at c21 b7)
        (at c23 b8)
        (at c23 b9)
        (at c2 b10)
        (at c17 b11)
        (at c22 b12)
        (at c12 b13)
        (at c4 b14)
        (at c19 b15)
        (at c24 b16)

        ;;Duration for ascending to buses
        (= (ascending-duration) 2)

        ;;Duration for descending from buses
        (= (descending-duration) 2)

        ;;Bus driving durations for traversing road segments
        (= (driving-duration c1 c2) 2)
        (= (driving-duration c2 c1) 2)
        (= (driving-duration c2 c3) 3)
        (= (driving-duration c2 c7) 3)
        (= (driving-duration c3 c2) 3)
        (= (driving-duration c3 c4) 2)
        (= (driving-duration c4 c3) 2)
        (= (driving-duration c4 c5) 2)
        (= (driving-duration c4 c9) 3)
        (= (driving-duration c7 c2) 3)
        (= (driving-duration c7 c12) 3)
        (= (driving-duration c9 c4) 3)
        (= (driving-duration c9 c14) 3)
        (= (driving-duration c11 c12) 2)
        (= (driving-duration c12 c11) 2)
        (= (driving-duration c12 c7) 3)
        (= (driving-duration c12 c17) 2)
        (= (driving-duration c12 c13) 3)
        (= (driving-duration c13 c12) 3)
        (= (driving-duration c13 c14) 2)
        (= (driving-duration c14 c13) 2)
        (= (driving-duration c14 c15) 2)
        (= (driving-duration c14 c9) 3)
        (= (driving-duration c14 c19) 2)
        (= (driving-duration c15 c14) 2)
        (= (driving-duration c17 c12) 2)
        (= (driving-duration c17 c22) 2)
        (= (driving-duration c19 c14) 2)
        (= (driving-duration c19 c24) 2)
        (= (driving-duration c21 c22) 2)
        (= (driving-duration c22 c21) 2)
        (= (driving-duration c22 c23) 3)
        (= (driving-duration c22 c17) 2)
        (= (driving-duration c23 c22) 3)
        (= (driving-duration c23 c24) 2)
        (= (driving-duration c24 c23) 2)
        (= (driving-duration c24 c25) 2)
        (= (driving-duration c24 c19) 2)
        (= (driving-duration c25 c24) 2)

        ;;Walking durations for traversing road segments
        (= (walking-duration c1 c2) 10)
        (= (walking-duration c1 c6) 15)
        (= (walking-duration c2 c1) 10)
        (= (walking-duration c2 c3) 15)
        (= (walking-duration c2 c7) 15)
        (= (walking-duration c3 c2) 15)
        (= (walking-duration c3 c4) 10)
        (= (walking-duration c3 c8) 15)
        (= (walking-duration c4 c3) 10)
        (= (walking-duration c4 c5) 10)
        (= (walking-duration c4 c9) 15)
        (= (walking-duration c5 c4) 10)
        (= (walking-duration c5 c10) 15)
        (= (walking-duration c6 c1) 15)
        (= (walking-duration c6 c7) 10)
        (= (walking-duration c6 c11) 15)
        (= (walking-duration c7 c6) 10)
        (= (walking-duration c7 c8) 15)
        (= (walking-duration c7 c2) 15)
        (= (walking-duration c7 c12) 15)
        (= (walking-duration c8 c7) 15)
        (= (walking-duration c8 c9) 10)
        (= (walking-duration c8 c3) 15)
        (= (walking-duration c8 c13) 15)
        (= (walking-duration c9 c8) 10)
        (= (walking-duration c9 c10) 10)
        (= (walking-duration c9 c4) 15)
        (= (walking-duration c9 c14) 15)
        (= (walking-duration c10 c9) 10)
        (= (walking-duration c10 c5) 15)
        (= (walking-duration c10 c15) 15)
        (= (walking-duration c11 c12) 10)
        (= (walking-duration c11 c6) 15)
        (= (walking-duration c11 c16) 10)
        (= (walking-duration c12 c11) 10)
        (= (walking-duration c12 c13) 15)
        (= (walking-duration c12 c7) 15)
        (= (walking-duration c12 c17) 10)
        (= (walking-duration c13 c12) 15)
        (= (walking-duration c13 c14) 10)
        (= (walking-duration c13 c8) 15)
        (= (walking-duration c13 c18) 10)
        (= (walking-duration c14 c13) 10)
        (= (walking-duration c14 c15) 10)
        (= (walking-duration c14 c9) 15)
        (= (walking-duration c14 c19) 10)
        (= (walking-duration c15 c14) 10)
        (= (walking-duration c15 c10) 15)
        (= (walking-duration c15 c20) 10)
        (= (walking-duration c16 c17) 10)
        (= (walking-duration c16 c11) 10)
        (= (walking-duration c16 c21) 10)
        (= (walking-duration c17 c16) 10)
        (= (walking-duration c17 c18) 15)
        (= (walking-duration c17 c12) 10)
        (= (walking-duration c17 c22) 15)
        (= (walking-duration c18 c17) 15)
        (= (walking-duration c18 c19) 10)
        (= (walking-duration c18 c13) 10)
        (= (walking-duration c18 c23) 10)
        (= (walking-duration c19 c18) 10)
        (= (walking-duration c19 c20) 10)
        (= (walking-duration c19 c14) 10)
        (= (walking-duration c19 c24) 10)
        (= (walking-duration c20 c19) 10)
        (= (walking-duration c20 c15) 10)
        (= (walking-duration c20 c25) 10)
        (= (walking-duration c21 c22) 10)
        (= (walking-duration c21 c16) 10)
        (= (walking-duration c22 c21) 10)
        (= (walking-duration c22 c23) 15)
        (= (walking-duration c22 c17) 10)
        (= (walking-duration c23 c22) 15)
        (= (walking-duration c23 c24) 10)
        (= (walking-duration c23 c18) 10)
        (= (walking-duration c24 c23) 10)
        (= (walking-duration c24 c25) 10)
        (= (walking-duration c24 c19) 10)
        (= (walking-duration c25 c20) 10)
        (= (walking-duration c25 c24) 10)

        ;;Passenger location in the network
        (at c24 pas1)
    )

    (:goal (and (at c2 pas1)))
    (:metric minimize (total-time))
)
