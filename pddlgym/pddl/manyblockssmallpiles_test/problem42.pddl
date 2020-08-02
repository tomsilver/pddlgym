
(define (problem manyblockssmallpiles) (:domain blocks)
  (:objects
        b0 - block
	b1 - block
	b10 - block
	b100 - block
	b101 - block
	b102 - block
	b103 - block
	b104 - block
	b105 - block
	b106 - block
	b107 - block
	b108 - block
	b109 - block
	b11 - block
	b110 - block
	b111 - block
	b112 - block
	b113 - block
	b114 - block
	b115 - block
	b116 - block
	b117 - block
	b118 - block
	b119 - block
	b12 - block
	b120 - block
	b121 - block
	b122 - block
	b123 - block
	b124 - block
	b125 - block
	b126 - block
	b127 - block
	b128 - block
	b129 - block
	b13 - block
	b130 - block
	b131 - block
	b132 - block
	b133 - block
	b134 - block
	b135 - block
	b136 - block
	b137 - block
	b14 - block
	b15 - block
	b16 - block
	b17 - block
	b18 - block
	b19 - block
	b2 - block
	b20 - block
	b21 - block
	b22 - block
	b23 - block
	b24 - block
	b25 - block
	b26 - block
	b27 - block
	b28 - block
	b29 - block
	b3 - block
	b30 - block
	b31 - block
	b32 - block
	b33 - block
	b34 - block
	b35 - block
	b36 - block
	b37 - block
	b38 - block
	b39 - block
	b4 - block
	b40 - block
	b41 - block
	b42 - block
	b43 - block
	b44 - block
	b45 - block
	b46 - block
	b47 - block
	b48 - block
	b49 - block
	b5 - block
	b50 - block
	b51 - block
	b52 - block
	b53 - block
	b54 - block
	b55 - block
	b56 - block
	b57 - block
	b58 - block
	b59 - block
	b6 - block
	b60 - block
	b61 - block
	b62 - block
	b63 - block
	b64 - block
	b65 - block
	b66 - block
	b67 - block
	b68 - block
	b69 - block
	b7 - block
	b70 - block
	b71 - block
	b72 - block
	b73 - block
	b74 - block
	b75 - block
	b76 - block
	b77 - block
	b78 - block
	b79 - block
	b8 - block
	b80 - block
	b81 - block
	b82 - block
	b83 - block
	b84 - block
	b85 - block
	b86 - block
	b87 - block
	b88 - block
	b89 - block
	b9 - block
	b90 - block
	b91 - block
	b92 - block
	b93 - block
	b94 - block
	b95 - block
	b96 - block
	b97 - block
	b98 - block
	b99 - block
  )
  (:init 
	(clear b0)
	(clear b101)
	(clear b103)
	(clear b105)
	(clear b106)
	(clear b108)
	(clear b110)
	(clear b111)
	(clear b112)
	(clear b114)
	(clear b115)
	(clear b116)
	(clear b118)
	(clear b119)
	(clear b11)
	(clear b120)
	(clear b122)
	(clear b123)
	(clear b125)
	(clear b127)
	(clear b129)
	(clear b12)
	(clear b131)
	(clear b133)
	(clear b135)
	(clear b137)
	(clear b13)
	(clear b14)
	(clear b15)
	(clear b17)
	(clear b19)
	(clear b20)
	(clear b21)
	(clear b23)
	(clear b24)
	(clear b25)
	(clear b27)
	(clear b29)
	(clear b2)
	(clear b30)
	(clear b31)
	(clear b33)
	(clear b34)
	(clear b36)
	(clear b38)
	(clear b39)
	(clear b41)
	(clear b43)
	(clear b44)
	(clear b46)
	(clear b47)
	(clear b48)
	(clear b4)
	(clear b50)
	(clear b51)
	(clear b53)
	(clear b54)
	(clear b56)
	(clear b58)
	(clear b59)
	(clear b60)
	(clear b61)
	(clear b62)
	(clear b64)
	(clear b66)
	(clear b67)
	(clear b69)
	(clear b6)
	(clear b71)
	(clear b73)
	(clear b74)
	(clear b76)
	(clear b78)
	(clear b7)
	(clear b80)
	(clear b81)
	(clear b82)
	(clear b83)
	(clear b84)
	(clear b86)
	(clear b87)
	(clear b89)
	(clear b91)
	(clear b92)
	(clear b94)
	(clear b95)
	(clear b96)
	(clear b97)
	(clear b99)
	(clear b9)
	(handempty )
	(on b0 b1)
	(on b101 b102)
	(on b103 b104)
	(on b106 b107)
	(on b108 b109)
	(on b112 b113)
	(on b116 b117)
	(on b120 b121)
	(on b123 b124)
	(on b125 b126)
	(on b127 b128)
	(on b129 b130)
	(on b131 b132)
	(on b133 b134)
	(on b135 b136)
	(on b15 b16)
	(on b17 b18)
	(on b21 b22)
	(on b25 b26)
	(on b27 b28)
	(on b2 b3)
	(on b31 b32)
	(on b34 b35)
	(on b36 b37)
	(on b39 b40)
	(on b41 b42)
	(on b44 b45)
	(on b48 b49)
	(on b4 b5)
	(on b51 b52)
	(on b54 b55)
	(on b56 b57)
	(on b62 b63)
	(on b64 b65)
	(on b67 b68)
	(on b69 b70)
	(on b71 b72)
	(on b74 b75)
	(on b76 b77)
	(on b78 b79)
	(on b7 b8)
	(on b84 b85)
	(on b87 b88)
	(on b89 b90)
	(on b92 b93)
	(on b97 b98)
	(on b99 b100)
	(on b9 b10)
	(ontable b100)
	(ontable b102)
	(ontable b104)
	(ontable b105)
	(ontable b107)
	(ontable b109)
	(ontable b10)
	(ontable b110)
	(ontable b111)
	(ontable b113)
	(ontable b114)
	(ontable b115)
	(ontable b117)
	(ontable b118)
	(ontable b119)
	(ontable b11)
	(ontable b121)
	(ontable b122)
	(ontable b124)
	(ontable b126)
	(ontable b128)
	(ontable b12)
	(ontable b130)
	(ontable b132)
	(ontable b134)
	(ontable b136)
	(ontable b137)
	(ontable b13)
	(ontable b14)
	(ontable b16)
	(ontable b18)
	(ontable b19)
	(ontable b1)
	(ontable b20)
	(ontable b22)
	(ontable b23)
	(ontable b24)
	(ontable b26)
	(ontable b28)
	(ontable b29)
	(ontable b30)
	(ontable b32)
	(ontable b33)
	(ontable b35)
	(ontable b37)
	(ontable b38)
	(ontable b3)
	(ontable b40)
	(ontable b42)
	(ontable b43)
	(ontable b45)
	(ontable b46)
	(ontable b47)
	(ontable b49)
	(ontable b50)
	(ontable b52)
	(ontable b53)
	(ontable b55)
	(ontable b57)
	(ontable b58)
	(ontable b59)
	(ontable b5)
	(ontable b60)
	(ontable b61)
	(ontable b63)
	(ontable b65)
	(ontable b66)
	(ontable b68)
	(ontable b6)
	(ontable b70)
	(ontable b72)
	(ontable b73)
	(ontable b75)
	(ontable b77)
	(ontable b79)
	(ontable b80)
	(ontable b81)
	(ontable b82)
	(ontable b83)
	(ontable b85)
	(ontable b86)
	(ontable b88)
	(ontable b8)
	(ontable b90)
	(ontable b91)
	(ontable b93)
	(ontable b94)
	(ontable b95)
	(ontable b96)
	(ontable b98)
  )
  (:goal (and
	(on b134 b63)
	(on b63 b84)
	(ontable b84)
	(on b103 b71)
	(ontable b71)
	(on b16 b59)
	(ontable b59)
	(on b70 b0)
	(on b0 b48)
	(ontable b48)
	(on b111 b92)
	(on b92 b26)
	(ontable b26)
	(on b126 b105)
	(ontable b105)))
)
