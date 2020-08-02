
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
	(clear b10)
	(clear b110)
	(clear b111)
	(clear b112)
	(clear b114)
	(clear b116)
	(clear b118)
	(clear b119)
	(clear b11)
	(clear b120)
	(clear b121)
	(clear b123)
	(clear b124)
	(clear b125)
	(clear b126)
	(clear b128)
	(clear b12)
	(clear b130)
	(clear b13)
	(clear b15)
	(clear b17)
	(clear b19)
	(clear b21)
	(clear b23)
	(clear b24)
	(clear b26)
	(clear b28)
	(clear b29)
	(clear b2)
	(clear b30)
	(clear b32)
	(clear b34)
	(clear b36)
	(clear b38)
	(clear b40)
	(clear b41)
	(clear b42)
	(clear b43)
	(clear b45)
	(clear b47)
	(clear b49)
	(clear b4)
	(clear b51)
	(clear b52)
	(clear b54)
	(clear b56)
	(clear b58)
	(clear b59)
	(clear b61)
	(clear b62)
	(clear b63)
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
	(clear b81)
	(clear b83)
	(clear b84)
	(clear b86)
	(clear b87)
	(clear b89)
	(clear b8)
	(clear b91)
	(clear b92)
	(clear b93)
	(clear b95)
	(clear b97)
	(clear b98)
	(handempty )
	(on b0 b1)
	(on b102 b103)
	(on b104 b105)
	(on b112 b113)
	(on b114 b115)
	(on b116 b117)
	(on b121 b122)
	(on b126 b127)
	(on b128 b129)
	(on b13 b14)
	(on b15 b16)
	(on b17 b18)
	(on b19 b20)
	(on b21 b22)
	(on b24 b25)
	(on b26 b27)
	(on b2 b3)
	(on b30 b31)
	(on b32 b33)
	(on b34 b35)
	(on b36 b37)
	(on b38 b39)
	(on b43 b44)
	(on b45 b46)
	(on b47 b48)
	(on b49 b50)
	(on b4 b5)
	(on b52 b53)
	(on b54 b55)
	(on b56 b57)
	(on b59 b60)
	(on b63 b64)
	(on b65 b66)
	(on b6 b7)
	(on b71 b72)
	(on b73 b74)
	(on b75 b76)
	(on b77 b78)
	(on b79 b80)
	(on b81 b82)
	(on b84 b85)
	(on b87 b88)
	(on b89 b90)
	(on b8 b9)
	(on b93 b94)
	(on b95 b96)
	(on b98 b99)
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
	(ontable b111)
	(ontable b113)
	(ontable b115)
	(ontable b117)
	(ontable b118)
	(ontable b119)
	(ontable b11)
	(ontable b120)
	(ontable b122)
	(ontable b123)
	(ontable b124)
	(ontable b125)
	(ontable b127)
	(ontable b129)
	(ontable b12)
	(ontable b130)
	(ontable b14)
	(ontable b16)
	(ontable b18)
	(ontable b1)
	(ontable b20)
	(ontable b22)
	(ontable b23)
	(ontable b25)
	(ontable b27)
	(ontable b28)
	(ontable b29)
	(ontable b31)
	(ontable b33)
	(ontable b35)
	(ontable b37)
	(ontable b39)
	(ontable b3)
	(ontable b40)
	(ontable b41)
	(ontable b42)
	(ontable b44)
	(ontable b46)
	(ontable b48)
	(ontable b50)
	(ontable b51)
	(ontable b53)
	(ontable b55)
	(ontable b57)
	(ontable b58)
	(ontable b5)
	(ontable b60)
	(ontable b61)
	(ontable b62)
	(ontable b64)
	(ontable b66)
	(ontable b67)
	(ontable b68)
	(ontable b69)
	(ontable b70)
	(ontable b72)
	(ontable b74)
	(ontable b76)
	(ontable b78)
	(ontable b7)
	(ontable b80)
	(ontable b82)
	(ontable b83)
	(ontable b85)
	(ontable b86)
	(ontable b88)
	(ontable b90)
	(ontable b91)
	(ontable b92)
	(ontable b94)
	(ontable b96)
	(ontable b97)
	(ontable b99)
	(ontable b9)
  )
  (:goal (and
	(on b90 b80)
	(on b80 b37)
	(ontable b37)
	(on b97 b62)
	(ontable b62)
	(on b69 b34)
	(on b34 b51)
	(ontable b51)
	(on b46 b89)
	(ontable b89)
	(on b0 b67)
	(on b67 b99)
	(ontable b99)
	(on b117 b65)
	(on b65 b107)
	(ontable b107)
	(on b64 b100)
	(on b100 b130)
	(ontable b130)
	(on b35 b24)
	(on b24 b85)
	(ontable b85)))
)
