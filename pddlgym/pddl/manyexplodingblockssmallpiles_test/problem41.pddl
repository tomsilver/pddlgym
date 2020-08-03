
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
	(clear b101)
	(clear b102)
	(clear b104)
	(clear b106)
	(clear b107)
	(clear b108)
	(clear b109)
	(clear b110)
	(clear b111)
	(clear b113)
	(clear b115)
	(clear b116)
	(clear b118)
	(clear b119)
	(clear b11)
	(clear b121)
	(clear b123)
	(clear b124)
	(clear b126)
	(clear b128)
	(clear b130)
	(clear b132)
	(clear b133)
	(clear b135)
	(clear b13)
	(clear b14)
	(clear b16)
	(clear b18)
	(clear b19)
	(clear b21)
	(clear b22)
	(clear b24)
	(clear b25)
	(clear b26)
	(clear b27)
	(clear b28)
	(clear b29)
	(clear b2)
	(clear b30)
	(clear b32)
	(clear b33)
	(clear b34)
	(clear b36)
	(clear b38)
	(clear b3)
	(clear b40)
	(clear b42)
	(clear b44)
	(clear b45)
	(clear b47)
	(clear b48)
	(clear b49)
	(clear b4)
	(clear b51)
	(clear b52)
	(clear b53)
	(clear b55)
	(clear b56)
	(clear b58)
	(clear b5)
	(clear b60)
	(clear b62)
	(clear b64)
	(clear b65)
	(clear b66)
	(clear b68)
	(clear b69)
	(clear b71)
	(clear b72)
	(clear b73)
	(clear b75)
	(clear b77)
	(clear b78)
	(clear b79)
	(clear b7)
	(clear b80)
	(clear b81)
	(clear b83)
	(clear b84)
	(clear b85)
	(clear b86)
	(clear b88)
	(clear b90)
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
	(on b102 b103)
	(on b104 b105)
	(on b111 b112)
	(on b113 b114)
	(on b116 b117)
	(on b119 b120)
	(on b11 b12)
	(on b121 b122)
	(on b124 b125)
	(on b126 b127)
	(on b128 b129)
	(on b130 b131)
	(on b133 b134)
	(on b14 b15)
	(on b16 b17)
	(on b19 b20)
	(on b22 b23)
	(on b30 b31)
	(on b34 b35)
	(on b36 b37)
	(on b38 b39)
	(on b40 b41)
	(on b42 b43)
	(on b45 b46)
	(on b49 b50)
	(on b53 b54)
	(on b56 b57)
	(on b58 b59)
	(on b5 b6)
	(on b60 b61)
	(on b62 b63)
	(on b66 b67)
	(on b69 b70)
	(on b73 b74)
	(on b75 b76)
	(on b7 b8)
	(on b81 b82)
	(on b86 b87)
	(on b88 b89)
	(on b92 b93)
	(on b97 b98)
	(on b9 b10)
	(ontable b100)
	(ontable b101)
	(ontable b103)
	(ontable b105)
	(ontable b106)
	(ontable b107)
	(ontable b108)
	(ontable b109)
	(ontable b10)
	(ontable b110)
	(ontable b112)
	(ontable b114)
	(ontable b115)
	(ontable b117)
	(ontable b118)
	(ontable b120)
	(ontable b122)
	(ontable b123)
	(ontable b125)
	(ontable b127)
	(ontable b129)
	(ontable b12)
	(ontable b131)
	(ontable b132)
	(ontable b134)
	(ontable b135)
	(ontable b13)
	(ontable b15)
	(ontable b17)
	(ontable b18)
	(ontable b1)
	(ontable b20)
	(ontable b21)
	(ontable b23)
	(ontable b24)
	(ontable b25)
	(ontable b26)
	(ontable b27)
	(ontable b28)
	(ontable b29)
	(ontable b2)
	(ontable b31)
	(ontable b32)
	(ontable b33)
	(ontable b35)
	(ontable b37)
	(ontable b39)
	(ontable b3)
	(ontable b41)
	(ontable b43)
	(ontable b44)
	(ontable b46)
	(ontable b47)
	(ontable b48)
	(ontable b4)
	(ontable b50)
	(ontable b51)
	(ontable b52)
	(ontable b54)
	(ontable b55)
	(ontable b57)
	(ontable b59)
	(ontable b61)
	(ontable b63)
	(ontable b64)
	(ontable b65)
	(ontable b67)
	(ontable b68)
	(ontable b6)
	(ontable b70)
	(ontable b71)
	(ontable b72)
	(ontable b74)
	(ontable b76)
	(ontable b77)
	(ontable b78)
	(ontable b79)
	(ontable b80)
	(ontable b82)
	(ontable b83)
	(ontable b84)
	(ontable b85)
	(ontable b87)
	(ontable b89)
	(ontable b8)
	(ontable b90)
	(ontable b91)
	(ontable b93)
	(ontable b94)
	(ontable b95)
	(ontable b96)
	(ontable b98)
	(ontable b99)
  )
  (:goal (and
	(on b51 b36)
	(ontable b36)
	(on b56 b47)
	(ontable b47)
	(on b16 b11)
	(ontable b11)
	(on b65 b86)
	(ontable b86)
	(on b61 b3)
	(ontable b3)
	(on b92 b1)
	(on b1 b27)
	(ontable b27)))
)
