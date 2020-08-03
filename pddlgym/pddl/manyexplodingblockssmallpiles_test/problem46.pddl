
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
	b138 - block
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
	(clear b107)
	(clear b108)
	(clear b10)
	(clear b110)
	(clear b111)
	(clear b113)
	(clear b115)
	(clear b116)
	(clear b117)
	(clear b119)
	(clear b121)
	(clear b122)
	(clear b123)
	(clear b124)
	(clear b125)
	(clear b127)
	(clear b128)
	(clear b129)
	(clear b12)
	(clear b131)
	(clear b133)
	(clear b135)
	(clear b136)
	(clear b138)
	(clear b13)
	(clear b15)
	(clear b16)
	(clear b18)
	(clear b19)
	(clear b1)
	(clear b21)
	(clear b23)
	(clear b24)
	(clear b25)
	(clear b26)
	(clear b28)
	(clear b29)
	(clear b30)
	(clear b32)
	(clear b34)
	(clear b35)
	(clear b37)
	(clear b38)
	(clear b39)
	(clear b3)
	(clear b41)
	(clear b43)
	(clear b45)
	(clear b46)
	(clear b47)
	(clear b49)
	(clear b4)
	(clear b51)
	(clear b53)
	(clear b55)
	(clear b57)
	(clear b59)
	(clear b60)
	(clear b62)
	(clear b64)
	(clear b66)
	(clear b67)
	(clear b69)
	(clear b6)
	(clear b71)
	(clear b72)
	(clear b74)
	(clear b76)
	(clear b78)
	(clear b79)
	(clear b7)
	(clear b81)
	(clear b83)
	(clear b85)
	(clear b86)
	(clear b87)
	(clear b89)
	(clear b91)
	(clear b93)
	(clear b95)
	(clear b96)
	(clear b98)
	(clear b99)
	(clear b9)
	(handempty )
	(on b101 b102)
	(on b103 b104)
	(on b105 b106)
	(on b108 b109)
	(on b10 b11)
	(on b111 b112)
	(on b113 b114)
	(on b117 b118)
	(on b119 b120)
	(on b125 b126)
	(on b129 b130)
	(on b131 b132)
	(on b133 b134)
	(on b136 b137)
	(on b13 b14)
	(on b16 b17)
	(on b19 b20)
	(on b1 b2)
	(on b21 b22)
	(on b26 b27)
	(on b30 b31)
	(on b32 b33)
	(on b35 b36)
	(on b39 b40)
	(on b41 b42)
	(on b43 b44)
	(on b47 b48)
	(on b49 b50)
	(on b4 b5)
	(on b51 b52)
	(on b53 b54)
	(on b55 b56)
	(on b57 b58)
	(on b60 b61)
	(on b62 b63)
	(on b64 b65)
	(on b67 b68)
	(on b69 b70)
	(on b72 b73)
	(on b74 b75)
	(on b76 b77)
	(on b79 b80)
	(on b7 b8)
	(on b81 b82)
	(on b83 b84)
	(on b87 b88)
	(on b89 b90)
	(on b91 b92)
	(on b93 b94)
	(on b96 b97)
	(on b99 b100)
	(ontable b0)
	(ontable b100)
	(ontable b102)
	(ontable b104)
	(ontable b106)
	(ontable b107)
	(ontable b109)
	(ontable b110)
	(ontable b112)
	(ontable b114)
	(ontable b115)
	(ontable b116)
	(ontable b118)
	(ontable b11)
	(ontable b120)
	(ontable b121)
	(ontable b122)
	(ontable b123)
	(ontable b124)
	(ontable b126)
	(ontable b127)
	(ontable b128)
	(ontable b12)
	(ontable b130)
	(ontable b132)
	(ontable b134)
	(ontable b135)
	(ontable b137)
	(ontable b138)
	(ontable b14)
	(ontable b15)
	(ontable b17)
	(ontable b18)
	(ontable b20)
	(ontable b22)
	(ontable b23)
	(ontable b24)
	(ontable b25)
	(ontable b27)
	(ontable b28)
	(ontable b29)
	(ontable b2)
	(ontable b31)
	(ontable b33)
	(ontable b34)
	(ontable b36)
	(ontable b37)
	(ontable b38)
	(ontable b3)
	(ontable b40)
	(ontable b42)
	(ontable b44)
	(ontable b45)
	(ontable b46)
	(ontable b48)
	(ontable b50)
	(ontable b52)
	(ontable b54)
	(ontable b56)
	(ontable b58)
	(ontable b59)
	(ontable b5)
	(ontable b61)
	(ontable b63)
	(ontable b65)
	(ontable b66)
	(ontable b68)
	(ontable b6)
	(ontable b70)
	(ontable b71)
	(ontable b73)
	(ontable b75)
	(ontable b77)
	(ontable b78)
	(ontable b80)
	(ontable b82)
	(ontable b84)
	(ontable b85)
	(ontable b86)
	(ontable b88)
	(ontable b8)
	(ontable b90)
	(ontable b92)
	(ontable b94)
	(ontable b95)
	(ontable b97)
	(ontable b98)
	(ontable b9)
  )
  (:goal (and
	(on b118 b122)
	(ontable b122)
	(on b121 b126)
	(ontable b126)
	(on b92 b23)
	(on b23 b55)
	(ontable b55)
	(on b129 b65)
	(ontable b65)
	(on b10 b107)
	(ontable b107)
	(on b58 b59)
	(on b59 b108)
	(ontable b108)
	(on b28 b93)
	(on b93 b60)
	(ontable b60)
	(on b2 b74)
	(on b74 b6)
	(ontable b6)
	(on b57 b11)
	(ontable b11)
	(on b66 b119)
	(on b119 b137)
	(ontable b137)))
)
