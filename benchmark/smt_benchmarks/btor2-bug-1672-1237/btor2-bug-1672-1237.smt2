(set-logic QF_AUFBV)
(declare-fun bvlambda_1_ () (_ BitVec 1))
(declare-fun bvlambda_2_ () (_ BitVec 9))
(declare-fun bvlambda_3_ () (_ BitVec 3))
(declare-fun bvlambda_4_ () (_ BitVec 1))
(declare-fun bvlambda_5_ () (_ BitVec 1))
(declare-fun bvlambda_6_ () (_ BitVec 13))
(declare-fun a30 () (Array (_ BitVec 16) (_ BitVec 16)))
(declare-fun a31 () (Array (_ BitVec 1) (_ BitVec 3)))
(declare-fun a32 () (Array (_ BitVec 8) (_ BitVec 4)))
(assert
(let (($e1 (_ bv0 1)))
(let (($e2 (_ bv6910 15)))
(let (($e3 (_ bv19684 15)))
(let (($e4 (_ bv12 4)))
(let (($e5 (_ bv0 14)))
(let (($e6 (_ bv4 3)))
(let (($e7 (_ bv6 8)))
(let (($e8 (_ bv0 13)))
(let (($e9 (_ bv0 16)))
(let (($e10 (_ bv0 2)))
(let (($e11 (_ bv0 11)))
(let (($e12 (_ bv65534 16)))
(let (($e13 (_ bv0 3)))
(let (($e14 (_ bv102 8)))
(let (($e15 (_ bv0 12)))
(let (($e16 (_ bv14 4)))
(let (($e17 (_ bv4 4)))
(let (($e18 (_ bv32766 15)))
(let (($e19 (_ bv0 15)))
(let (($e20 (_ bv0 4)))
(let (($e21 (_ bv6910 14)))
(let (($e22 (_ bv198 15)))
(let (($e23 (_ bv0 9)))
(let (($e33 (concat $e10 bvlambda_5_)))
(let (($e34 (concat $e33 bvlambda_6_)))
(let (($e35 (concat (bvnot $e10) bvlambda_5_)))
(let (($e36 (concat $e35 bvlambda_6_)))
(let (($e37 (ite (= #b1 bvlambda_5_) $e36 $e34)))
(let (($e38 (select a31 $e1)))
(let (($e39 (concat $e8 $e38)))
(let (($e40 (store a30 $e39 $e9)))
(let (($e41 (select $e40 $e37)))
(let (($e42 (bvand (bvnot $e12) $e41)))
(let (($e43 (concat $e1 bvlambda_5_)))
(let (($e44 (concat $e43 bvlambda_6_)))
(let (($e45 (bvudiv $e44 $e2)))
(let (($e46 ((_ extract 11 11) $e45)))
(let (($e47 (store a31 $e46 bvlambda_3_)))
(let (($e48 (select $e47 (bvnot $e1))))
(let (($e49 (concat $e8 $e48)))
(let (($e50 (select $e40 $e49)))
(let (($e51 (ite (bvult $e50 (bvnot $e42)) #b1 #b0)))
(let (($e52 (ite (bvult (bvnot $e12) $e41) #b1 #b0)))
(let (($e53 (bvand $e52 $e51)))
(let (($e54 (select a32 $e7)))
(let (($e55 ((_ extract 2 2) $e54)))
(let (($e56 (select $e47 $e55)))
(let (($e57 ((_ extract 0 0) $e38)))
(let (($e58 (store a31 (bvnot $e1) $e6)))
(let (($e59 (store $e58 $e57 $e56)))
(let (($e60 (select $e59 (bvnot $e1))))
(let (($e61 ((_ extract 2 2) $e60)))
(let (($e62 ((_ extract 1 1) $e38)))
(let (($e63 (select $e47 $e62)))
(let (($e64 ((_ extract 0 0) $e63)))
(let (($e65 (select $e47 $e64)))
(let (($e66 ((_ extract 2 2) $e65)))
(let (($e67 (ite (= $e66 $e61) #b1 #b0)))
(let (($e68 ((_ extract 1 0) $e60)))
(let (($e69 ((_ extract 1 0) $e65)))
(let (($e70 (ite (bvult $e69 $e68) #b1 #b0)))
(let (($e71 (bvand $e70 $e67)))
(let (($e72 (bvand $e66 (bvnot $e61))))
(let (($e73 (bvand (bvnot $e72) (bvnot $e71))))
(let (($e74 (bvand (bvnot $e73) $e53)))
(let (($e75 (concat bvlambda_5_ bvlambda_6_)))
(let (($e76 (concat $e11 $e63)))
(let (($e77 (ite (bvult $e76 $e75) #b1 #b0)))
(let (($e78 (concat $e13 $e77)))
(let (($e79 (bvudiv $e78 $e17)))
(let (($e80 (bvadd (bvnot $e16) (bvnot $e79))))
(let (($e81 (concat $e20 $e80)))
(let (($e82 (ite (bvult $e81 $e14) #b1 #b0)))
(let (($e83 (bvand (bvnot $e82) (bvnot $e74))))
(let (($e84 (ite (= $e17 $e79) #b1 #b0)))
(let (($e85 (bvand $e82 (bvnot $e84))))
(let (($e86 (bvand (bvnot $e85) (bvnot $e83))))
(let (($e87 (bvand (bvnot $e18) $e45)))
(let (($e88 (ite (bvult (bvnot $e87) $e22) #b1 #b0)))
(let (($e89 (concat $e15 $e48)))
(let (($e90 (concat (bvnot $e15) $e48)))
(let (($e91 ((_ extract 2 2) $e48)))
(let (($e92 (ite (= #b1 $e91) $e90 $e89)))
(let (($e93 ((_ extract 13 0) $e92)))
(let (($e94 (ite (bvult $e93 $e21) #b1 #b0)))
(let (($e95 ((_ extract 14 14) $e92)))
(let (($e96 (bvand (bvnot $e95) (bvnot $e94))))
(let (($e97 (ite (= (bvnot $e96) $e88) #b1 #b0)))
(let (($e98 ((_ extract 2 2) $e56)))
(let (($e99 (concat $e98 $e56)))
(let (($e100 (ite (bvult $e99 $e4) #b1 #b0)))
(let (($e101 (concat (bvnot $e5) (bvnot $e100))))
(let (($e102 (concat $e5 (bvnot $e100))))
(let (($e103 (ite (= #b1 $e100) $e102 $e101)))
(let (($e104 (ite (bvult $e3 $e103) #b1 #b0)))
(let (($e105 (concat $e1 (bvnot $e104))))
(let (($e106 (store $e47 (bvnot $e1) (bvnot $e6))))
(let (($e107 (store $e106 $e1 (bvnot $e6))))
(let (($e108 (select $e107 bvlambda_1_)))
(let (($e109 ((_ extract 1 0) $e108)))
(let (($e110 (ite (bvult $e109 $e105) #b1 #b0)))
(let (($e111 ((_ extract 2 2) $e108)))
(let (($e112 (bvand (bvnot $e111) (bvnot $e110))))
(let (($e113 (ite (= (bvnot $e112) $e97) #b1 #b0)))
(let (($e114 (concat $e15 $e60)))
(let (($e115 (concat (bvnot $e15) $e60)))
(let (($e116 (ite (= #b1 $e61) $e115 $e114)))
(let (($e117 (ite (bvult $e116 $e2) #b1 #b0)))
(let (($e118 (bvand (bvnot $e117) (bvnot $e73))))
(let (($e119 (bvand (bvnot $e118) (bvnot $e113))))
(let (($e120 (concat $e13 $e66)))
(let (($e121 (concat (bvnot $e13) $e66)))
(let (($e122 (ite (= #b1 $e66) $e121 $e120)))
(let (($e123 ((_ extract 1 0) $e54)))
(let (($e124 (concat $e66 $e65)))
(let (($e125 (bvlshr $e124  ((_ zero_extend 2) $e123))))
(let (($e126 (bvlshr (bvnot $e124)  ((_ zero_extend 2) $e123))))
(let (($e127 (ite (= #b1 $e66) (bvnot $e126) $e125)))
(let (($e128 ((_ extract 3 2) $e54)))
(let (($e129 (ite (= $e10 $e128) #b1 #b0)))
(let (($e130 (ite (= #b1 $e129) $e127 $e122)))
(let (($e131 (ite (= (bvnot $e20) $e130) #b1 #b0)))
(let (($e132 (concat $e11 $e60)))
(let (($e133 (concat bvlambda_1_ bvlambda_2_)))
(let (($e134 (concat $e133 bvlambda_3_)))
(let (($e135 (concat $e134 bvlambda_4_)))
(let (($e136 (ite (bvult $e135 $e132) #b1 #b0)))
(let (($e137 (concat $e19 $e136)))
(let (($e138 (concat (bvnot $e19) $e136)))
(let (($e139 (ite (= #b1 $e136) $e138 $e137)))
(let (($e140 (ite (bvult $e139 $e41) #b1 #b0)))
(let (($e141 (ite (= $e140 $e131) #b1 #b0)))
(let (($e142 (ite (= $e54 $e20) #b1 #b0)))
(let (($e143 (ite (= $e142 $e141) #b1 #b0)))
(let (($e144 (bvand (bvnot $e143) (bvnot $e119))))
(let (($e145 (ite (= $e144 $e86) #b1 #b0)))
(let (($e146 (ite (= $e13 $e56) #b1 #b0)))
(let (($e147 (select $e59 $e64)))
(let (($e148 (ite (= $e13 $e147) #b1 #b0)))
(let (($e149 (bvand $e148 $e146)))
(let (($e150 (ite (= $e19 $e87) #b1 #b0)))
(let (($e151 (ite (= $e9 $e42) #b1 #b0)))
(let (($e152 (ite (= $e13 bvlambda_3_) #b1 #b0)))
(let (($e153 (ite (= bvlambda_2_ $e23) #b1 #b0)))
(let (($e154 (bvand (bvnot bvlambda_1_) $e153)))
(let (($e155 (bvand $e154 $e152)))
(let (($e156 (bvand (bvnot bvlambda_4_) $e155)))
(let (($e157 (ite (= (bvnot $e13) bvlambda_3_) #b1 #b0)))
(let (($e158 (ite (= bvlambda_2_ (bvnot $e23)) #b1 #b0)))
(let (($e159 (bvand bvlambda_1_ $e158)))
(let (($e160 (bvand $e159 $e157)))
(let (($e161 (bvand bvlambda_4_ $e160)))
(let (($e162 (bvand (bvnot $e161) (bvnot $e156))))
(let (($e163 (bvand $e162 (bvnot $e151))))
(let (($e164 (bvand $e163 (bvnot $e150))))
(let (($e165 (bvand $e164 (bvnot $e149))))
(let (($e166 (bvand $e165 (bvnot $e145))))
 (not (= $e166 #b0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
(exit)
