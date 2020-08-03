
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
	b12 - block
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
	(clear b109)
	(clear b10)
	(clear b110)
	(clear b11)
	(clear b13)
	(clear b14)
	(clear b15)
	(clear b16)
	(clear b17)
	(clear b19)
	(clear b20)
	(clear b21)
	(clear b22)
	(clear b23)
	(clear b24)
	(clear b25)
	(clear b26)
	(clear b28)
	(clear b2)
	(clear b30)
	(clear b31)
	(clear b32)
	(clear b34)
	(clear b36)
	(clear b38)
	(clear b39)
	(clear b3)
	(clear b41)
	(clear b43)
	(clear b45)
	(clear b46)
	(clear b47)
	(clear b48)
	(clear b4)
	(clear b50)
	(clear b52)
	(clear b54)
	(clear b56)
	(clear b57)
	(clear b58)
	(clear b60)
	(clear b61)
	(clear b62)
	(clear b63)
	(clear b65)
	(clear b67)
	(clear b69)
	(clear b6)
	(clear b70)
	(clear b72)
	(clear b73)
	(clear b74)
	(clear b75)
	(clear b76)
	(clear b78)
	(clear b7)
	(clear b80)
	(clear b81)
	(clear b82)
	(clear b83)
	(clear b85)
	(clear b86)
	(clear b87)
	(clear b88)
	(clear b8)
	(clear b90)
	(clear b92)
	(clear b93)
	(clear b95)
	(clear b96)
	(clear b97)
	(clear b99)
	(clear b9)
	(handempty )
	(on b0 b1)
	(on b101 b102)
	(on b103 b104)
	(on b110 b111)
	(on b11 b12)
	(on b17 b18)
	(on b26 b27)
	(on b28 b29)
	(on b32 b33)
	(on b34 b35)
	(on b36 b37)
	(on b39 b40)
	(on b41 b42)
	(on b43 b44)
	(on b48 b49)
	(on b4 b5)
	(on b50 b51)
	(on b52 b53)
	(on b54 b55)
	(on b58 b59)
	(on b63 b64)
	(on b65 b66)
	(on b67 b68)
	(on b70 b71)
	(on b76 b77)
	(on b78 b79)
	(on b83 b84)
	(on b88 b89)
	(on b90 b91)
	(on b93 b94)
	(on b97 b98)
	(on b99 b100)
	(ontable b100)
	(ontable b102)
	(ontable b104)
	(ontable b105)
	(ontable b106)
	(ontable b107)
	(ontable b108)
	(ontable b109)
	(ontable b10)
	(ontable b111)
	(ontable b12)
	(ontable b13)
	(ontable b14)
	(ontable b15)
	(ontable b16)
	(ontable b18)
	(ontable b19)
	(ontable b1)
	(ontable b20)
	(ontable b21)
	(ontable b22)
	(ontable b23)
	(ontable b24)
	(ontable b25)
	(ontable b27)
	(ontable b29)
	(ontable b2)
	(ontable b30)
	(ontable b31)
	(ontable b33)
	(ontable b35)
	(ontable b37)
	(ontable b38)
	(ontable b3)
	(ontable b40)
	(ontable b42)
	(ontable b44)
	(ontable b45)
	(ontable b46)
	(ontable b47)
	(ontable b49)
	(ontable b51)
	(ontable b53)
	(ontable b55)
	(ontable b56)
	(ontable b57)
	(ontable b59)
	(ontable b5)
	(ontable b60)
	(ontable b61)
	(ontable b62)
	(ontable b64)
	(ontable b66)
	(ontable b68)
	(ontable b69)
	(ontable b6)
	(ontable b71)
	(ontable b72)
	(ontable b73)
	(ontable b74)
	(ontable b75)
	(ontable b77)
	(ontable b79)
	(ontable b7)
	(ontable b80)
	(ontable b81)
	(ontable b82)
	(ontable b84)
	(ontable b85)
	(ontable b86)
	(ontable b87)
	(ontable b89)
	(ontable b8)
	(ontable b91)
	(ontable b92)
	(ontable b94)
	(ontable b95)
	(ontable b96)
	(ontable b98)
	(ontable b9)
  )
  (:goal (and
	(on b42 b58)
	(ontable b58)
	(on b4 b108)
	(ontable b108)
	(on b95 b47)
	(on b47 b36)
	(ontable b36)
	(on b0 b79)
	(ontable b79)
	(on b101 b44)
	(ontable b44)))
)
