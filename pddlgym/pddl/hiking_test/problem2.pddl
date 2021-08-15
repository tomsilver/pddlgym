
(define (problem hiking) (:domain hiking)
  (:objects
        r0_c0 - loc
	r0_c1 - loc
	r0_c2 - loc
	r0_c3 - loc
	r0_c4 - loc
	r1_c0 - loc
	r1_c1 - loc
	r1_c2 - loc
	r1_c3 - loc
	r1_c4 - loc
	r2_c0 - loc
	r2_c1 - loc
	r2_c2 - loc
	r2_c3 - loc
	r2_c4 - loc
	r3_c0 - loc
	r3_c1 - loc
	r3_c2 - loc
	r3_c3 - loc
	r3_c4 - loc
	r4_c0 - loc
	r4_c1 - loc
	r4_c2 - loc
	r4_c3 - loc
	r4_c4 - loc
	r5_c0 - loc
	r5_c1 - loc
	r5_c2 - loc
	r5_c3 - loc
	r5_c4 - loc
	r6_c0 - loc
	r6_c1 - loc
	r6_c2 - loc
	r6_c3 - loc
	r6_c4 - loc
  )
  (:init 
	(adjacent r0_c0 r0_c1)
	(adjacent r0_c0 r1_c0)
	(adjacent r0_c1 r0_c0)
	(adjacent r0_c1 r0_c2)
	(adjacent r0_c1 r1_c1)
	(adjacent r0_c2 r0_c1)
	(adjacent r0_c2 r0_c3)
	(adjacent r0_c2 r1_c2)
	(adjacent r0_c3 r0_c2)
	(adjacent r0_c3 r0_c4)
	(adjacent r0_c3 r1_c3)
	(adjacent r0_c4 r0_c3)
	(adjacent r0_c4 r1_c4)
	(adjacent r1_c0 r0_c0)
	(adjacent r1_c0 r1_c1)
	(adjacent r1_c0 r2_c0)
	(adjacent r1_c1 r0_c1)
	(adjacent r1_c1 r1_c0)
	(adjacent r1_c1 r1_c2)
	(adjacent r1_c1 r2_c1)
	(adjacent r1_c2 r0_c2)
	(adjacent r1_c2 r1_c1)
	(adjacent r1_c2 r1_c3)
	(adjacent r1_c2 r2_c2)
	(adjacent r1_c3 r0_c3)
	(adjacent r1_c3 r1_c2)
	(adjacent r1_c3 r1_c4)
	(adjacent r1_c3 r2_c3)
	(adjacent r1_c4 r0_c4)
	(adjacent r1_c4 r1_c3)
	(adjacent r1_c4 r2_c4)
	(adjacent r2_c0 r1_c0)
	(adjacent r2_c0 r2_c1)
	(adjacent r2_c0 r3_c0)
	(adjacent r2_c1 r1_c1)
	(adjacent r2_c1 r2_c0)
	(adjacent r2_c1 r2_c2)
	(adjacent r2_c1 r3_c1)
	(adjacent r2_c2 r1_c2)
	(adjacent r2_c2 r2_c1)
	(adjacent r2_c2 r2_c3)
	(adjacent r2_c2 r3_c2)
	(adjacent r2_c3 r1_c3)
	(adjacent r2_c3 r2_c2)
	(adjacent r2_c3 r2_c4)
	(adjacent r2_c3 r3_c3)
	(adjacent r2_c4 r1_c4)
	(adjacent r2_c4 r2_c3)
	(adjacent r2_c4 r3_c4)
	(adjacent r3_c0 r2_c0)
	(adjacent r3_c0 r3_c1)
	(adjacent r3_c0 r4_c0)
	(adjacent r3_c1 r2_c1)
	(adjacent r3_c1 r3_c0)
	(adjacent r3_c1 r3_c2)
	(adjacent r3_c1 r4_c1)
	(adjacent r3_c2 r2_c2)
	(adjacent r3_c2 r3_c1)
	(adjacent r3_c2 r3_c3)
	(adjacent r3_c2 r4_c2)
	(adjacent r3_c3 r2_c3)
	(adjacent r3_c3 r3_c2)
	(adjacent r3_c3 r3_c4)
	(adjacent r3_c3 r4_c3)
	(adjacent r3_c4 r2_c4)
	(adjacent r3_c4 r3_c3)
	(adjacent r3_c4 r4_c4)
	(adjacent r4_c0 r3_c0)
	(adjacent r4_c0 r4_c1)
	(adjacent r4_c0 r5_c0)
	(adjacent r4_c1 r3_c1)
	(adjacent r4_c1 r4_c0)
	(adjacent r4_c1 r4_c2)
	(adjacent r4_c1 r5_c1)
	(adjacent r4_c2 r3_c2)
	(adjacent r4_c2 r4_c1)
	(adjacent r4_c2 r4_c3)
	(adjacent r4_c2 r5_c2)
	(adjacent r4_c3 r3_c3)
	(adjacent r4_c3 r4_c2)
	(adjacent r4_c3 r4_c4)
	(adjacent r4_c3 r5_c3)
	(adjacent r4_c4 r3_c4)
	(adjacent r4_c4 r4_c3)
	(adjacent r4_c4 r5_c4)
	(adjacent r5_c0 r4_c0)
	(adjacent r5_c0 r5_c1)
	(adjacent r5_c0 r6_c0)
	(adjacent r5_c1 r4_c1)
	(adjacent r5_c1 r5_c0)
	(adjacent r5_c1 r5_c2)
	(adjacent r5_c1 r6_c1)
	(adjacent r5_c2 r4_c2)
	(adjacent r5_c2 r5_c1)
	(adjacent r5_c2 r5_c3)
	(adjacent r5_c2 r6_c2)
	(adjacent r5_c3 r4_c3)
	(adjacent r5_c3 r5_c2)
	(adjacent r5_c3 r5_c4)
	(adjacent r5_c3 r6_c3)
	(adjacent r5_c4 r4_c4)
	(adjacent r5_c4 r5_c3)
	(adjacent r5_c4 r6_c4)
	(adjacent r6_c0 r5_c0)
	(adjacent r6_c0 r6_c1)
	(adjacent r6_c1 r5_c1)
	(adjacent r6_c1 r6_c0)
	(adjacent r6_c1 r6_c2)
	(adjacent r6_c2 r5_c2)
	(adjacent r6_c2 r6_c1)
	(adjacent r6_c2 r6_c3)
	(adjacent r6_c3 r5_c3)
	(adjacent r6_c3 r6_c2)
	(adjacent r6_c3 r6_c4)
	(adjacent r6_c4 r5_c4)
	(adjacent r6_c4 r6_c3)
	(at r0_c0)
	(isgoal r6_c0)
	(ishill r2_c4)
	(ishill r6_c3)
	(iswater r1_c0)
	(iswater r1_c2)
	(iswater r1_c3)
	(iswater r2_c3)
	(iswater r3_c1)
	(iswater r3_c3)
	(iswater r4_c0)
	(iswater r4_c3)
	(iswater r5_c0)
	(iswater r5_c2)
	(iswater r5_c3)
	(ontrail r0_c0 r0_c1)
	(ontrail r0_c1 r0_c2)
	(ontrail r0_c2 r0_c3)
	(ontrail r0_c3 r0_c4)
	(ontrail r0_c4 r1_c4)
	(ontrail r1_c4 r2_c4)
	(ontrail r2_c4 r3_c4)
	(ontrail r3_c4 r4_c4)
	(ontrail r4_c4 r5_c4)
	(ontrail r5_c4 r6_c4)
	(ontrail r6_c1 r6_c0)
	(ontrail r6_c2 r6_c1)
	(ontrail r6_c3 r6_c2)
	(ontrail r6_c4 r6_c3)
  )
  (:goal (and
	(at r6_c0)))
)
