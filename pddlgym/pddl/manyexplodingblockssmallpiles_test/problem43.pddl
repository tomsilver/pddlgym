
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
	b140 - block
	b141 - block
	b142 - block
	b143 - block
	b144 - block
	b145 - block
	b146 - block
	b147 - block
	b148 - block
	b149 - block
	b15 - block
	b150 - block
	b151 - block
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
	(clear b107)
	(clear b109)
	(clear b10)
	(clear b111)
	(clear b113)
	(clear b115)
	(clear b117)
	(clear b118)
	(clear b11)
	(clear b120)
	(clear b122)
	(clear b123)
	(clear b124)
	(clear b125)
	(clear b126)
	(clear b128)
	(clear b129)
	(clear b12)
	(clear b130)
	(clear b131)
	(clear b133)
	(clear b135)
	(clear b137)
	(clear b138)
	(clear b140)
	(clear b142)
	(clear b143)
	(clear b144)
	(clear b145)
	(clear b146)
	(clear b147)
	(clear b148)
	(clear b149)
	(clear b14)
	(clear b150)
	(clear b15)
	(clear b17)
	(clear b19)
	(clear b1)
	(clear b21)
	(clear b23)
	(clear b25)
	(clear b27)
	(clear b29)
	(clear b2)
	(clear b31)
	(clear b32)
	(clear b33)
	(clear b35)
	(clear b36)
	(clear b37)
	(clear b38)
	(clear b40)
	(clear b41)
	(clear b43)
	(clear b44)
	(clear b46)
	(clear b48)
	(clear b4)
	(clear b50)
	(clear b51)
	(clear b53)
	(clear b54)
	(clear b55)
	(clear b57)
	(clear b59)
	(clear b5)
	(clear b61)
	(clear b62)
	(clear b63)
	(clear b64)
	(clear b66)
	(clear b68)
	(clear b6)
	(clear b70)
	(clear b71)
	(clear b73)
	(clear b74)
	(clear b76)
	(clear b77)
	(clear b79)
	(clear b81)
	(clear b82)
	(clear b84)
	(clear b86)
	(clear b87)
	(clear b88)
	(clear b89)
	(clear b8)
	(clear b90)
	(clear b92)
	(clear b94)
	(clear b96)
	(clear b98)
	(clear b99)
	(handempty )
	(on b100 b101)
	(on b103 b104)
	(on b105 b106)
	(on b107 b108)
	(on b109 b110)
	(on b111 b112)
	(on b113 b114)
	(on b115 b116)
	(on b118 b119)
	(on b120 b121)
	(on b126 b127)
	(on b12 b13)
	(on b131 b132)
	(on b133 b134)
	(on b135 b136)
	(on b138 b139)
	(on b140 b141)
	(on b150 b151)
	(on b15 b16)
	(on b17 b18)
	(on b19 b20)
	(on b21 b22)
	(on b23 b24)
	(on b25 b26)
	(on b27 b28)
	(on b29 b30)
	(on b2 b3)
	(on b33 b34)
	(on b38 b39)
	(on b41 b42)
	(on b44 b45)
	(on b46 b47)
	(on b48 b49)
	(on b51 b52)
	(on b55 b56)
	(on b57 b58)
	(on b59 b60)
	(on b64 b65)
	(on b66 b67)
	(on b68 b69)
	(on b6 b7)
	(on b71 b72)
	(on b74 b75)
	(on b77 b78)
	(on b79 b80)
	(on b82 b83)
	(on b84 b85)
	(on b8 b9)
	(on b90 b91)
	(on b92 b93)
	(on b94 b95)
	(on b96 b97)
	(ontable b0)
	(ontable b101)
	(ontable b102)
	(ontable b104)
	(ontable b106)
	(ontable b108)
	(ontable b10)
	(ontable b110)
	(ontable b112)
	(ontable b114)
	(ontable b116)
	(ontable b117)
	(ontable b119)
	(ontable b11)
	(ontable b121)
	(ontable b122)
	(ontable b123)
	(ontable b124)
	(ontable b125)
	(ontable b127)
	(ontable b128)
	(ontable b129)
	(ontable b130)
	(ontable b132)
	(ontable b134)
	(ontable b136)
	(ontable b137)
	(ontable b139)
	(ontable b13)
	(ontable b141)
	(ontable b142)
	(ontable b143)
	(ontable b144)
	(ontable b145)
	(ontable b146)
	(ontable b147)
	(ontable b148)
	(ontable b149)
	(ontable b14)
	(ontable b151)
	(ontable b16)
	(ontable b18)
	(ontable b1)
	(ontable b20)
	(ontable b22)
	(ontable b24)
	(ontable b26)
	(ontable b28)
	(ontable b30)
	(ontable b31)
	(ontable b32)
	(ontable b34)
	(ontable b35)
	(ontable b36)
	(ontable b37)
	(ontable b39)
	(ontable b3)
	(ontable b40)
	(ontable b42)
	(ontable b43)
	(ontable b45)
	(ontable b47)
	(ontable b49)
	(ontable b4)
	(ontable b50)
	(ontable b52)
	(ontable b53)
	(ontable b54)
	(ontable b56)
	(ontable b58)
	(ontable b5)
	(ontable b60)
	(ontable b61)
	(ontable b62)
	(ontable b63)
	(ontable b65)
	(ontable b67)
	(ontable b69)
	(ontable b70)
	(ontable b72)
	(ontable b73)
	(ontable b75)
	(ontable b76)
	(ontable b78)
	(ontable b7)
	(ontable b80)
	(ontable b81)
	(ontable b83)
	(ontable b85)
	(ontable b86)
	(ontable b87)
	(ontable b88)
	(ontable b89)
	(ontable b91)
	(ontable b93)
	(ontable b95)
	(ontable b97)
	(ontable b98)
	(ontable b99)
	(ontable b9)
  )
  (:goal (and
	(on b14 b145)
	(ontable b145)
	(on b111 b25)
	(ontable b25)
	(on b5 b78)
	(on b78 b6)
	(ontable b6)
	(on b7 b88)
	(ontable b88)
	(on b2 b45)
	(ontable b45)
	(on b54 b74)
	(ontable b74)
	(on b72 b142)
	(ontable b142)
	(on b28 b98)
	(on b98 b65)
	(ontable b65)
	(on b113 b16)
	(ontable b16)
	(on b61 b9)
	(on b9 b23)
	(ontable b23)))
)
