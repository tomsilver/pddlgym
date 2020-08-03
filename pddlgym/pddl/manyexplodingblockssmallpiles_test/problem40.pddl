
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
	b13 - block
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
	(clear b107)
	(clear b108)
	(clear b110)
	(clear b112)
	(clear b113)
	(clear b115)
	(clear b117)
	(clear b119)
	(clear b11)
	(clear b120)
	(clear b122)
	(clear b124)
	(clear b12)
	(clear b13)
	(clear b14)
	(clear b16)
	(clear b17)
	(clear b19)
	(clear b1)
	(clear b21)
	(clear b22)
	(clear b23)
	(clear b24)
	(clear b26)
	(clear b28)
	(clear b29)
	(clear b2)
	(clear b30)
	(clear b31)
	(clear b33)
	(clear b35)
	(clear b36)
	(clear b37)
	(clear b38)
	(clear b3)
	(clear b40)
	(clear b42)
	(clear b44)
	(clear b45)
	(clear b47)
	(clear b48)
	(clear b4)
	(clear b50)
	(clear b51)
	(clear b53)
	(clear b55)
	(clear b56)
	(clear b58)
	(clear b59)
	(clear b5)
	(clear b61)
	(clear b62)
	(clear b63)
	(clear b65)
	(clear b67)
	(clear b69)
	(clear b6)
	(clear b70)
	(clear b71)
	(clear b73)
	(clear b74)
	(clear b76)
	(clear b77)
	(clear b78)
	(clear b80)
	(clear b81)
	(clear b82)
	(clear b83)
	(clear b85)
	(clear b86)
	(clear b87)
	(clear b89)
	(clear b8)
	(clear b90)
	(clear b92)
	(clear b94)
	(clear b95)
	(clear b97)
	(clear b99)
	(clear b9)
	(handempty )
	(on b101 b102)
	(on b103 b104)
	(on b108 b109)
	(on b110 b111)
	(on b113 b114)
	(on b115 b116)
	(on b117 b118)
	(on b120 b121)
	(on b122 b123)
	(on b124 b125)
	(on b14 b15)
	(on b17 b18)
	(on b19 b20)
	(on b24 b25)
	(on b26 b27)
	(on b31 b32)
	(on b33 b34)
	(on b38 b39)
	(on b40 b41)
	(on b42 b43)
	(on b45 b46)
	(on b48 b49)
	(on b51 b52)
	(on b53 b54)
	(on b56 b57)
	(on b59 b60)
	(on b63 b64)
	(on b65 b66)
	(on b67 b68)
	(on b6 b7)
	(on b71 b72)
	(on b74 b75)
	(on b78 b79)
	(on b83 b84)
	(on b87 b88)
	(on b90 b91)
	(on b92 b93)
	(on b95 b96)
	(on b97 b98)
	(on b99 b100)
	(on b9 b10)
	(ontable b0)
	(ontable b100)
	(ontable b102)
	(ontable b104)
	(ontable b105)
	(ontable b106)
	(ontable b107)
	(ontable b109)
	(ontable b10)
	(ontable b111)
	(ontable b112)
	(ontable b114)
	(ontable b116)
	(ontable b118)
	(ontable b119)
	(ontable b11)
	(ontable b121)
	(ontable b123)
	(ontable b125)
	(ontable b12)
	(ontable b13)
	(ontable b15)
	(ontable b16)
	(ontable b18)
	(ontable b1)
	(ontable b20)
	(ontable b21)
	(ontable b22)
	(ontable b23)
	(ontable b25)
	(ontable b27)
	(ontable b28)
	(ontable b29)
	(ontable b2)
	(ontable b30)
	(ontable b32)
	(ontable b34)
	(ontable b35)
	(ontable b36)
	(ontable b37)
	(ontable b39)
	(ontable b3)
	(ontable b41)
	(ontable b43)
	(ontable b44)
	(ontable b46)
	(ontable b47)
	(ontable b49)
	(ontable b4)
	(ontable b50)
	(ontable b52)
	(ontable b54)
	(ontable b55)
	(ontable b57)
	(ontable b58)
	(ontable b5)
	(ontable b60)
	(ontable b61)
	(ontable b62)
	(ontable b64)
	(ontable b66)
	(ontable b68)
	(ontable b69)
	(ontable b70)
	(ontable b72)
	(ontable b73)
	(ontable b75)
	(ontable b76)
	(ontable b77)
	(ontable b79)
	(ontable b7)
	(ontable b80)
	(ontable b81)
	(ontable b82)
	(ontable b84)
	(ontable b85)
	(ontable b86)
	(ontable b88)
	(ontable b89)
	(ontable b8)
	(ontable b91)
	(ontable b93)
	(ontable b94)
	(ontable b96)
	(ontable b98)
  )
  (:goal (and
	(on b22 b12)
	(on b12 b51)
	(ontable b51)
	(on b116 b115)
	(on b115 b86)
	(ontable b86)
	(on b11 b19)
	(on b19 b79)
	(ontable b79)
	(on b87 b50)
	(on b50 b30)
	(ontable b30)
	(on b67 b75)
	(ontable b75)
	(on b83 b80)
	(on b80 b42)
	(ontable b42)))
)
