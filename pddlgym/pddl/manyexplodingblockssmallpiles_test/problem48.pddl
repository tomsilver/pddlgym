
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
	b139 - block
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
	(clear b100)
	(clear b102)
	(clear b103)
	(clear b105)
	(clear b106)
	(clear b108)
	(clear b109)
	(clear b10)
	(clear b111)
	(clear b113)
	(clear b115)
	(clear b116)
	(clear b118)
	(clear b119)
	(clear b120)
	(clear b122)
	(clear b124)
	(clear b126)
	(clear b127)
	(clear b129)
	(clear b12)
	(clear b131)
	(clear b133)
	(clear b134)
	(clear b136)
	(clear b137)
	(clear b138)
	(clear b13)
	(clear b14)
	(clear b15)
	(clear b17)
	(clear b19)
	(clear b1)
	(clear b21)
	(clear b23)
	(clear b25)
	(clear b26)
	(clear b27)
	(clear b28)
	(clear b2)
	(clear b30)
	(clear b32)
	(clear b33)
	(clear b34)
	(clear b36)
	(clear b37)
	(clear b39)
	(clear b3)
	(clear b41)
	(clear b42)
	(clear b44)
	(clear b45)
	(clear b47)
	(clear b48)
	(clear b49)
	(clear b51)
	(clear b53)
	(clear b54)
	(clear b55)
	(clear b56)
	(clear b57)
	(clear b59)
	(clear b5)
	(clear b60)
	(clear b61)
	(clear b62)
	(clear b64)
	(clear b65)
	(clear b67)
	(clear b68)
	(clear b69)
	(clear b6)
	(clear b70)
	(clear b71)
	(clear b73)
	(clear b75)
	(clear b77)
	(clear b79)
	(clear b7)
	(clear b81)
	(clear b82)
	(clear b83)
	(clear b84)
	(clear b85)
	(clear b86)
	(clear b88)
	(clear b89)
	(clear b8)
	(clear b90)
	(clear b92)
	(clear b94)
	(clear b96)
	(clear b98)
	(handempty )
	(on b100 b101)
	(on b103 b104)
	(on b106 b107)
	(on b109 b110)
	(on b10 b11)
	(on b111 b112)
	(on b113 b114)
	(on b116 b117)
	(on b120 b121)
	(on b122 b123)
	(on b124 b125)
	(on b127 b128)
	(on b129 b130)
	(on b131 b132)
	(on b134 b135)
	(on b138 b139)
	(on b15 b16)
	(on b17 b18)
	(on b19 b20)
	(on b21 b22)
	(on b23 b24)
	(on b28 b29)
	(on b30 b31)
	(on b34 b35)
	(on b37 b38)
	(on b39 b40)
	(on b3 b4)
	(on b42 b43)
	(on b45 b46)
	(on b49 b50)
	(on b51 b52)
	(on b57 b58)
	(on b62 b63)
	(on b65 b66)
	(on b71 b72)
	(on b73 b74)
	(on b75 b76)
	(on b77 b78)
	(on b79 b80)
	(on b86 b87)
	(on b8 b9)
	(on b90 b91)
	(on b92 b93)
	(on b94 b95)
	(on b96 b97)
	(on b98 b99)
	(ontable b0)
	(ontable b101)
	(ontable b102)
	(ontable b104)
	(ontable b105)
	(ontable b107)
	(ontable b108)
	(ontable b110)
	(ontable b112)
	(ontable b114)
	(ontable b115)
	(ontable b117)
	(ontable b118)
	(ontable b119)
	(ontable b11)
	(ontable b121)
	(ontable b123)
	(ontable b125)
	(ontable b126)
	(ontable b128)
	(ontable b12)
	(ontable b130)
	(ontable b132)
	(ontable b133)
	(ontable b135)
	(ontable b136)
	(ontable b137)
	(ontable b139)
	(ontable b13)
	(ontable b14)
	(ontable b16)
	(ontable b18)
	(ontable b1)
	(ontable b20)
	(ontable b22)
	(ontable b24)
	(ontable b25)
	(ontable b26)
	(ontable b27)
	(ontable b29)
	(ontable b2)
	(ontable b31)
	(ontable b32)
	(ontable b33)
	(ontable b35)
	(ontable b36)
	(ontable b38)
	(ontable b40)
	(ontable b41)
	(ontable b43)
	(ontable b44)
	(ontable b46)
	(ontable b47)
	(ontable b48)
	(ontable b4)
	(ontable b50)
	(ontable b52)
	(ontable b53)
	(ontable b54)
	(ontable b55)
	(ontable b56)
	(ontable b58)
	(ontable b59)
	(ontable b5)
	(ontable b60)
	(ontable b61)
	(ontable b63)
	(ontable b64)
	(ontable b66)
	(ontable b67)
	(ontable b68)
	(ontable b69)
	(ontable b6)
	(ontable b70)
	(ontable b72)
	(ontable b74)
	(ontable b76)
	(ontable b78)
	(ontable b7)
	(ontable b80)
	(ontable b81)
	(ontable b82)
	(ontable b83)
	(ontable b84)
	(ontable b85)
	(ontable b87)
	(ontable b88)
	(ontable b89)
	(ontable b91)
	(ontable b93)
	(ontable b95)
	(ontable b97)
	(ontable b99)
	(ontable b9)
  )
  (:goal (and
	(on b80 b21)
	(ontable b21)
	(on b54 b88)
	(on b88 b57)
	(ontable b57)
	(on b104 b106)
	(on b106 b107)
	(ontable b107)
	(on b8 b51)
	(ontable b51)
	(on b0 b112)
	(ontable b112)))
)
