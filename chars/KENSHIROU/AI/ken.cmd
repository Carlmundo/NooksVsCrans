
;---------

[Command]
name = "teikuu"
command = F, F, $U
;time = 15

[Command]
name = "holds"
command = /s
time = 1


[Command]
name = "22_x"
command = D, D, x
;time = 15

;;;;↓簡略化コマンド
[Command]
name = "632146_a"
command = B,F,a
[Command]
name = "641236_a"
command = ~F,B,F,a
[Command]
name = "412364_a"
command = ~B,F,B,a

[Command]
name = "632146_a"
command = ~F, DF, D, DB, B, F, a
[Command]
name = "41236_a"
command = ~B, DB, D, DF, F, a
[Command]
name = "641236_a"
command = ~F, B, DB, D, DF, F, a
[Command]
name = "63214_a"
command = ~F, DF, D, DB, B, a
[Command]
name = "63214_b"
command = ~F, DF, D, DB, B, b
[Command]
name = "63214xy"
command = ~F, DF, D, DB, B, x+y
[Command]
name = "214xy"
command = ~D, DB, B, x+y
[Command]
name = "236xy"
command = ~D, DF, F, x+y
[Command]
name = "421xy"
command = ~B, D, DB, x+y

[Command]
name = "236236_a"
command = ~D, DF, F, D, DF, F, a
time = 40
[Command]
name = "236236_x"
command = ~D, DF, F, D, DF, F, x
time = 40
[Command]
name = "236236_y"
command = ~D, DF, F, D, DF, F, y
time = 40
[Command]
name = "236236_cy"
command = ~D, DF, F, D, DF, F, c+y
time = 40
[Command]
name = "214214_x"
command = ~D, DB, B, D, DB, B, x
time = 40
[Command]
name = "214214_y"
command = ~D, DB, B, D, DB, B, y
time = 40
[Command]
name = "214214_a"
command = ~D, DB, B, D, DB, B, a
time = 40
[Command]
name = "214214_b"
command = ~D, DB, B, D, DB, B, b
time = 40


[Command]
name = "high"
command = DB, UF
time = 8
[Command]
name = "high"
command = D, UF
time = 8
[Command]
name = "high2"
command = D, $U
time = 8

[Command]
name = "AD"
command = ~B, DB, D, DF, F, z

[Command]
name = "DA"
command = ~F, DF, D, DB, B, z

[Command]
name = "bloodheat"
command = x+y+z
time = 2

[Command]
name = "bloodheat"
command = x+z

[Command]
name = "bloodheat"
command = y+z

[Command]
name = "hokuto"
command = ~D, DF, F, b+y

[Command]
name = "tuika"
command = ~D, DF, F, s

[Command]
name = "22_x"
command = ~D, D, x
[Command]
name = "22_y"
command = ~D, D, y
[Command]
name = "22_z"
command = ~D, D, z

[Command]
name = "22_a"
command = ~D, D, a
[Command]
name = "22_b"
command = ~D, D, b

[Command]
name = "421_a"
command = ~B, D, DB, a
[Command]
name = "214_a"
command = ~D, DB, B, a
[Command]
name = "214_b"
command = ~D, DB, B, b
[Command]
name = "214_x"
command = ~D, DB, B, x
[Command]
name = "214_y"
command = ~D, DB, B, y
[Command]
name = "214_z"
command = ~D, DB, B, z

[Command]
name = "421_x"
command = ~B, D, DB, x
[Command]
name = "421_y"
command = ~B, D, DB, y
[Command]
name = "421_z"
command = ~B, D, DB, z
[Command]
name = "421_b"
command = ~B, D, DB, b


[Command]
name = "236_a"
command = ~D, DF, F, a
[Command]
name = "236_b"
command = ~D, DF, F, b
[Command]
name = "623_x"
command = ~F, D, DF, x
[Command]
name = "623_y"
command = ~F, D, DF, y
[Command]
name = "623_z"
command = ~F, D, DF, z
[Command]
name = "623_a"
command = ~F, D, DF, a
[Command]
name = "623_b"
command = ~F, D, DF, b

[Command]
name = "236_x"
command = ~D, DF, F, x
[Command]
name = "236_y"
command = ~D, DF, F, y
[Command]
name = "236_z"
command = ~D, DF, F, z



[Command]
name = "AI"
command = a, U, a, c, s, B
time = 1
[Command]
name = "AI"
command = B, B, U, a, a, y
time = 1
[Command]
name = "AI"
command = D, y, x, U, y
time = 1
[Command]
name = "AI"
command = F, s, B, c, z
time = 1
[Command]
name = "AI"
command = x, z, DB, s, s
time = 1

[Command]
name = "AI1"
command = F, F, c, a, b, a, c
time = 1
[Command]
name = "AI1"
command = c, F, a, y, y
time = 1
[Command]
name = "AI1"
command = D, F, U, F, b, c
time = 1
[Command]
name = "AI1"
command = F, s, z, s, c
time = 1
[Command]
name = "AI1"
command = a, a, b, c, D
time = 1

[Command]
name = "AI2"
command = y, U, y, DB, x
time = 1
[Command]
name = "AI2"
command = b, b, a, DF, y
time = 1
[Command]
name = "AI2"
command = B, D, B, F, F
time = 1
[Command]
name = "AI2"
command = D, U, U, U, x, s
time = 1
[Command]
name = "AI2"
command = D, y, D, U, y
time = 1

[Command]
name = "AI3"
command = c, c, F, B, b
time = 1
[Command]
name = "AI3"
command = x, z, y, c, b
time = 1
[Command]
name = "AI3"
command = a, b, c, x, b, b
time = 1
[Command]
name = "AI3"
command = B, D, D, D, a
time = 1
[Command]
name = "AI3"
command = F, D, F, U, y, D
time = 1

[Command]
name = "AI4"
command = B, B, z, s, U
time = 1

[Command]
name = "AI4"
command = z, B, x, a, s
time = 1
[Command]
name = "AI4"
command = F, D, b, a, a, a
time = 1
[Command]
name = "AI4"
command = s, y, b, U, a
time = 1

[Command]
name = "AI5"
command = a, b, U, c, D
time = 1
[Command]
name = "AI5"
command = s, U, y, x, s
time = 1
[Command]
name = "AI5"
command = b, U, D, D, F, U
time = 1
[Command]
name = "AI5"
command = B, y, B, s, B
time = 1
[Command]
name = "AI5"
command = x, x, a, F, x
time = 1

[Command]
name = "AI6"
command = b, y, U, a, y, s
time = 1
[Command]
name = "AI6"
command = a, c, F, c, b, U, a
time = 1
[Command]
name = "AI6"
command = x, z, c, c, b
time = 1
[Command]
name = "AI6"
command = a, b, c, z, b
time = 1

[Command]
name = "AI7"
command = B, D, F, B, a
time = 1
[Command]
name = "AI7"
command = F, D, F, c, y
time = 1
[Command]
name = "AI7"
command = F, B, z, U, U, F
time = 1
[Command]
name = "AI7"
command = z, z, x, s, s
time = 1
[Command]
name = "AI7"
command = F, B, b, s, a, a
time = 1

[Command]
name = "AI8"
command = B, F, F, B, a
time = 1
[Command]
name = "AI8"
command = F, D, D, c, y
time = 1
[Command]
name = "AI8"
command = F, B, z, y, U, F
time = 1
[Command]
name = "AI9"
command = z, B, x, s, F
time = 1
[Command]
name = "AI9"
command = F, a, b, s, U, a
time = 1

;-| AI |----------------------------
[Command]
name = "AI_20"
command = a,c,a,b
time = 0

[Command]
name = "AI_21"
command = a,c,a,c
time = 0

[Command]
name = "AI_22"
command = a,c,b,a
time = 0

[Command]
name = "AI_23"
command = a,c,b,b
time = 0

[Command]
name = "AI_24"
command = a,b,b,c
time = 0

[Command]
name = "AI_25"
command = a,c,c,a
time = 0

[Command]
name = "AI_26"
command = a,c,c,b
time = 0

[Command]
name = "AI_27"
command = a,c,c,c
time = 0

[Command]
name = "AI_28"
command = b,a,a,a
time = 0

[Command]
name = "AI_29"
command = b,a,a,b
time = 0

[Command]
name = "AI_30"
command = b,a,a,c
time = 0

[Command]
name = "AI_31"
command = b,a,b,a
time = 0

[Command]
name = "AI_32"
command = b,a,b,b
time = 0

[Command]
name = "AI_33"
command = b,a,b,c
time = 0

[Command]
name = "AI_34"
command = b,a,c,a
time = 0

[Command]
name = "AI_35"
command = b,a,c,b
time = 0

[Command]
name = "AI_36"
command = b,a,c,c
time = 0

[Command]
name = "AI_37"
command = b,b,a,a
time = 0

[Command]
name = "AI_38"
command = b,b,a,b
time = 0

[Command]
name = "AI_39"
command = b,b,a,c
time = 0

[Command]
name = "AI_40"
command = b,b,b,a
time = 0

[Command]
name = "AI_41"
command = b,b,b,b
time = 0

[Command]
name = "AI_42"
command = b,b,b,c
time = 0

[Command]
name = "AI_43"
command = b,b,c,a
time = 0

[Command]
name = "AI_44"
command = b,b,c,b
time = 0

[Command]
name = "AI_45"
command = b,b,c,c
time = 0

[Command]
name = "AI_46"
command = b,c,a,a
time = 0

[Command]
name = "AI_47"
command = b,c,a,b
time = 0

[Command]
name = "AI_48"
command = b,c,a,c
time = 0

[Command]
name = "AI_49"
command = b,c,b,a
time = 0

[Command]
name = "AI_50"
command = b,c,b,b
time = 0
























;-| Super Motions |--------------------------------------------------------


;-------------------------------

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10



;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery";Required (do not remove)
command = x
time = 1
[Command]
name = "recovery";Required (do not remove)
command = y
time = 1
[Command]
name = "recovery";Required (do not remove)
command = z
time = 1




;-| Dir + Button |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "fwd_b"        ;Alternative button command
command = /$B,b
time = 1

[Command]
name = "fwd_c"        ;Alternative button command
command = /$B,c
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1


[Command]
name = "jump"
command = $U
time = 1


;-| Hold Single Button |----------------------------------------------------
[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1



;---------------------------------------------------------------------------
; 2. State entry
;---------------------------------------------------------------------------
[Statedef -1]

;===========================================================================

;---------------------------------------------------------------------------
;Hyper Attacks
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;北斗　一撃
[State -1]
type = ChangeState
value = 8800
triggerall = !var(38)
triggerall = command = "hokuto"
triggerall = var(41) = 2
triggerall = var(24) = 7
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger2 = stateno != 8229


;無想転生
[State -1]
type = ChangeState
value = 2010
triggerall = !var(38)
triggerall = var(41) = 2
triggerall = power >= 1000
triggerall = command = "214214_a"
triggerall = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
;---------------------------------------------------------------------------
;ざんかいけん
[State -1]
type = ChangeState
value = 2020
triggerall = !var(38)
triggerall = var(41) = 2
triggerall = Numhelper(2024) = 0
triggerall = power >= 2000
triggerall = command = "214214_y"
triggerall = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
[State -1]
type = ChangeState
value = 2000
triggerall = !var(38)
triggerall = var(41) = 2
triggerall = power >= 1000
triggerall = command = "236236_x"
triggerall = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1




;---------------------------------------------------------------------------
; hieiken 236a
[State -1]
type = ChangeState
value = 1025
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "623_a"
;trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 9925  || stateno = 9926 || stateno = 9036
;trigger2 = statetype != A
trigger2 = hitdefattr = SCA, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
trigger4 = stateno = 1060
trigger4 = time >= 25
trigger5 = stateno = 1060
trigger5 = movecontact
trigger6 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger6 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
trigger7 = stateno = 1181
trigger7 = movecontact
trigger8 = stateno = 900
trigger8 = time >= 39
trigger9 = stateno = 1051 || stateno = 1053
trigger9 = movecontact

;  214a
[State -1]
type = ChangeState
value = 1026
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "214_x"
trigger1 = statetype = A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 9925  || stateno = 9926 || stateno = 9036
trigger2 = hitdefattr = A, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
trigger4 = stateno = 1060
trigger4 = time >= 25
trigger5 = stateno = 1060
trigger5 = movecontact
trigger6 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger6 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
trigger7 = stateno = 1181
trigger7 = movecontact
trigger8 = stateno = 900
trigger8 = time >= 39
trigger9 = stateno = 1051 || stateno = 1053
trigger9 = movecontact



[State -1]
type = ChangeState
value = 1000
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "236_b"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 9925  || stateno = 9926 || stateno = 9036
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
trigger4 = stateno = 1060
trigger4 = time >= 25
trigger5 = stateno = 1060
trigger5 = movecontact
trigger6 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger6 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
trigger7 = stateno = 1181
trigger7 = movecontact
trigger8 = stateno = 900
trigger8 = time >= 39
trigger9 = stateno = 1051 || stateno = 1053
trigger9 = movecontact

[State -1]
type = ChangeState
value = 1015
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "623_x"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 9925  || stateno = 9926 || stateno = 9036
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
trigger4 = stateno = 1060
trigger4 = time >= 25
trigger5 = stateno = 1060
trigger5 = movecontact
trigger6 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger6 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
trigger7 = stateno = 1181
trigger7 = movecontact
trigger8 = stateno = 900
trigger8 = time >= 39
trigger9 = stateno = 1051 || stateno = 1053
trigger9 = movecontact
[State -1]
type = ChangeState
value = 1014
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "623_x"
trigger1 = statetype = A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 9925  || stateno = 9926 || stateno = 9036
trigger2 = hitdefattr = A, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
trigger4 = stateno = 1060
trigger4 = time >= 25
trigger5 = stateno = 1060
trigger5 = movecontact
trigger6 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger6 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
trigger7 = stateno = 1181
trigger7 = movecontact
[State -1]
type = ChangeState
value = 1019
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "623_y"
trigger1 = statetype = A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 9925  || stateno = 9926 || stateno = 9036
trigger2 = hitdefattr = A, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
trigger4 = stateno = 1060
trigger4 = time >= 25
trigger5 = stateno = 1060
trigger5 = movecontact
trigger6 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger6 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
trigger7 = stateno = 1181
trigger7 = movecontact



[State -1]
type = ChangeState
value = 1017
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(8) != 1
triggerall = var(41) = 2
triggerall = command = "623_y"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 9925  || stateno = 9926 || stateno = 9036
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
trigger4 = stateno = 1060
trigger4 = time >= 25
trigger5 = stateno = 1060
trigger5 = movecontact
trigger6 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger6 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
trigger7 = stateno = 1181
trigger7 = movecontact
trigger8 = stateno = 900
trigger8 = time >= 39
trigger9 = stateno = 1051 || stateno = 1053
trigger9 = movecontact

[State -1]
type = ChangeState
value = 1013
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(8) = 1
triggerall = var(41) = 2
triggerall = command = "623_y"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 9925  || stateno = 9926 || stateno = 9036
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
trigger4 = stateno = 1060
trigger4 = time >= 25
trigger5 = stateno = 1060
trigger5 = movecontact
trigger6 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger6 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
trigger7 = stateno = 1181
trigger7 = movecontact
trigger8 = stateno = 900
trigger8 = time >= 39
trigger9 = stateno = 1051 || stateno = 1053
trigger9 = movecontact




; tenha
[State -1]
type = ChangeState
value = 1020
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "214_y"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 9925  || stateno = 9926 || stateno = 9036
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
trigger4 = stateno = 1060
trigger4 = time >= 25
trigger5 = stateno = 1060
trigger5 = movecontact
trigger6 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger6 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
trigger7 = stateno = 1181
trigger7 = movecontact
trigger8 = stateno = 900
trigger8 = time >= 25

; せーえーこー
[State -1]
type = ChangeState
value = 1010
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "236_y"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 9925  || stateno = 9926 || stateno = 9036
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
trigger4 = stateno = 1060
trigger4 = time >= 25
trigger5 = stateno = 1060
trigger5 = movecontact
trigger6 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger6 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
trigger7 = stateno = 1181
trigger7 = movecontact
trigger8 = stateno = 900
trigger8 = time >= 25

; 
[State -1]
type = ChangeState
value = 1030
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "236_x"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 9925  || stateno = 9926 || stateno = 9036
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
trigger4 = stateno = 1060
trigger4 = time >= 25
trigger5 = stateno = 1060
trigger5 = movecontact
trigger6 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger6 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
trigger7 = stateno = 1181
trigger7 = movecontact
trigger8 = stateno = 900
trigger8 = time >= 25



;当て身
[State -1]
type = ChangeState
value = 1050
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = command = "214_x"
triggerall = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 9925  || stateno = 9926 || stateno = 9036
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = [1000,1003]
trigger3 = time >= 11
trigger4 = stateno = 1115
trigger4 = movecontact








;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;;空中で空中ジャンプキャンセル
[State -1, Jump]
type = ChangeState
value = 45
triggerall = var(59) = 0 || var(27) = 0
triggerall = var(41) = 0
;triggerall = var(41) = 1
triggerall = var(32) = 0
triggerall = command = "holdup"
trigger1 = statetype = A
trigger1 = hitdefattr = A,NA,SA
trigger1 = movecontact
trigger1 = stateno != 605
ignorehitpause = 1
;空中ジャンプ
[State -1, Jump]
type = ChangeState
value = 45
triggerall = !var(38)
;triggerall = var(41) != 3
triggerall = var(32) = 0
triggerall = var(2) = 1
;triggerall = command = "up"
triggerall = statetype = A
trigger1 = stateno = [50,51]
trigger1 = time >= 5
trigger2 = ctrl = 1
trigger2 = stateno != [9000,9030]
trigger3 = stateno = 4042
trigger3 = time >= 5
;;空中で空中ダッシュキャンセル
[State -1, Jump]
type = ChangeState
value = 234
triggerall = var(41) = 0
triggerall = command = "FF"
trigger1 = statetype = A
trigger1 = movecontact
trigger1 = hitdefattr = A,NA,SA
trigger1 = stateno != 1011
trigger1 = var(5) = 0
trigger1 = stateno != 605




;;空中で空中ジャンプキャンセル風アルカナ
[State -1, Jump]
type = ChangeState
value = 45
triggerall = var(41) = 3
triggerall = var(33) = 2
triggerall = var(32) <= ifelse(fvar(12)=0.1,2,1)
;triggerall = var(2) = 1
triggerall = command = "holdup"
trigger1 = statetype = A
trigger1 = hitdefattr = A,NA,SA
trigger1 = movecontact
trigger1 = stateno = [9600,9610]
ignorehitpause = 1
;空中ジャンプ 風の谷の
[State -1, Jump]
type = ChangeState
value = 45
triggerall = var(2) = 1
triggerall = var(41) = 3
triggerall = var(33) = 2
triggerall = var(32) <= ifelse(fvar(12)=0.1,2,1)
;triggerall = command = "up"
triggerall = statetype = A
trigger1 = stateno = [50,51]
trigger1 = time >= 5
trigger2 = ctrl = 1
trigger2 = stateno != [9000,9030]
trigger3 = stateno = 4042
trigger3 = time >= 5

;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ Dash Fwd
;
[State -1, Dash Fwd]
type = ChangeState
value = 100
triggerall = Var(41) = 0
triggerall = Var(59) != 1 ;AI doesn't do this move
triggerall = stateno != 101
triggerall = stateno != [10000,13000]
triggerall = numhelper(2990) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
[State -1, Dash Fwd]
type = ChangeState
value = 102
triggerall = !var(38)
triggerall = Var(41) != 0
triggerall = Var(59) != 1 ;AI doesn't do this move
triggerall = stateno != [10000,13000]
triggerall = numhelper(2990) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
[State -1, Dash Air]
type = ChangeState
value = 234
triggerall = !var(38)
;triggerall = Var(20) = 0
triggerall = Var(59) != 1 ;AI doesn't do this move
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 224
trigger1 = var(5) = 0
trigger1 = var(32) = 0

[State -1, Dash Fwd]
type = ChangeState
value = 100
triggerall = Var(41) = 0
triggerall = Var(59) != 1 ;AI doesn't do this move
triggerall = stateno != 101
triggerall = stateno != [10000,13000]
trigger1 = command = "holdfwd"
trigger1 = command = "x"
trigger1 = command = "y"
trigger1 = statetype = S
trigger1 = ctrl



;---------------------------------------------------------------------------
;回避　Dash Back
[State -1, Dash Back]
type = ChangeState
value = 105
ctrl = 0
triggerall = Var(41) = 0
triggerall = Var(59) != 1 ;AI doesn't do this move
triggerall = stateno != [3,9]
triggerall = stateno != [10000,13000]
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;回避　Dash Back
[State -1, Dash Back]
type = ChangeState
value = 105
ctrl = 0
triggerall = !var(38)
triggerall = Var(41) != 0
triggerall = Var(59) != 1 ;AI doesn't do this move
triggerall = stateno != [3,9]
triggerall = stateno != [10000,13000]
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


;;回避　AIR Dash Back
[State -1, Dash Back]
type = ChangeState
value = 235
ctrl = 0
triggerall = !var(38)
triggerall = Var(59) != 1
triggerall = var(41) != 3
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = var(5) = 0
trigger1 = var(32) = 0



;-------------------
;[State 1, airj]
;type = ChangeState
;triggerall = Var(4) = 0
;triggerall = Vel Y >= 0 
;trigger1 = command = "up";
;trigger1 = statetype = A
;trigger1 = ctrl
;trigger1 = time >= 10
;value = 500

;避け
[State -1, Stand A]
type = ChangeState
value = 9930
triggerall = var(41) = 0
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;jump
[State -1, Dash Back]
type = ChangeState
value = 4040
ctrl = 0
triggerall = Var(41) = 0
triggerall = Var(59) != 1 ;AI doesn't do this move
triggerall = stateno != [10000,13000]
trigger1 = command = "high"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;jump
[State -1, Dash Back]
type = ChangeState
value = 4041
ctrl = 0
triggerall = !var(38)
triggerall = Var(41) != 0
triggerall = Var(59) != 1 ;AI doesn't do this move
triggerall = stateno != [10000,13000]
trigger1 = command = "high2"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;投げ
;
[State -1, 0]
type = ChangeState
value = 980
triggerall = var(41) = 0
triggerall = Numhelper(2990) = 0
triggerall = command = "a"
triggerall = command = "x"
;triggerall = command = "holdfwd" || command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, 0]
type = ChangeState
value = 945
triggerall = var(41) = 3
;triggerall = Numhelper(2990) = 0
triggerall = command = "a"
triggerall = command = "x"
triggerall = command = "holdfwd" || command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
[State -1, 0]
type = ChangeState
value = 940
triggerall = var(41) = 3
;triggerall = Numhelper(2990) = 0
triggerall = command = "a"
triggerall = command = "x"
triggerall = command != "holdfwd" && command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 0]
type = ChangeState
value = 960
triggerall = var(41) = 3
triggerall = command = "a"
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl


[State -1, 0]
type = ChangeState
value = 981
triggerall = !var(38)
triggerall = var(41) = 2
;triggerall = Numhelper(2990) = 0
triggerall = command = "a"
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
[State -1, 0]
type = ChangeState
value = 980
triggerall = !var(38)
triggerall = var(41) = 2
triggerall = Numhelper(2990) = 0
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2statetype != A
trigger1 = p2bodydist x = [-15,15]


;===========================================================================



[State -1, Stand X];パンチ
type = ChangeState
value = 200
triggerall = var(41) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 8
trigger3 = var(45) % 10 = 0
trigger3 = movecontact
trigger3 = stateno=[210,223]
trigger4 = var(45) % 10 = 0
trigger4 = stateno=400 || stateno=410 || stateno=420 || stateno=450
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movehit
trigger5 = var(45) % 10 = 0
trigger6 = stateno = 240
trigger6 = movehit
trigger6 = var(45) % 10 = 0
trigger7 = stateno = 250
trigger7 = movehit
trigger7 = var(45) % 10 = 0
trigger8 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger8 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

[State -1, Stand Y];裏拳
type = ChangeState
value = 210
triggerall = var(41) = 0
;triggerall = command != "holdfwd"
;triggerall = command != "holdback"
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = var(45) % 100 < 10
trigger2 = stateno=200 || stateno=210  || stateno=220  || stateno=240  || stateno=230  || stateno=250 
trigger3 = var(45) % 100 < 10
trigger3 = stateno=400 || stateno=410 || stateno=420 || stateno=450
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movehit
trigger4 = var(45) % 100 < 10
trigger5 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger5 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

[State -1, Stand Z];3段強制屈み
type = ChangeState
value = 220
triggerall = var(41) = 0
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = var(45) % 1000 < 100
trigger2 = stateno=200 || stateno=210 || stateno=240  || stateno=230  || stateno=250 || stateno=222 || stateno=223
trigger3 = var(45) % 1000 < 100
trigger3 = stateno=400 || stateno=410 || stateno=420 || stateno=450
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movehit
trigger4 = var(45) % 1000 < 100
trigger5 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger5 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)



[State -1, Stand Z]
type = ChangeState
value = 240
;triggerall = var(59) = 0
triggerall = var(41) = 0
triggerall = command = "z"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = var(45) % 100000 < 10000
trigger2 = stateno=200 || stateno=210  || stateno=220  || stateno=225  || stateno=230  || stateno=250  || stateno=222 || stateno=223
trigger3 = var(45) % 100000 < 10000
trigger3 = stateno=400 || stateno=410 || stateno=420 || stateno=450
trigger3 = movecontact
trigger4 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger4 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)



[State -1, crouch X];いとしゃがみぱんｒち
type = ChangeState
value = 400
triggerall = var(41) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno=200 || stateno=210 || stateno=240  || stateno=222 || stateno=223
trigger2 = movecontact
trigger2 = time >= 5
trigger2 = var(46) % 10 = 0
trigger3 = stateno=400 || stateno=410 || stateno=420 || stateno=450
trigger3 = movecontact
trigger3 = time >= 5
trigger3 = var(46) % 10 = 0
trigger4 = stateno=222 || stateno=223 || stateno=234
trigger4 = movecontact
trigger4 = var(46) % 10 = 0
trigger5 = stateno = 400
trigger5 = time >= 4
trigger6 = stateno = 230
trigger6 = movehit
trigger6 = var(45) % 1000 < 100
trigger7 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger7 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

[State -1, crouch Y];しゃがみ下へぱんちっち
type = ChangeState
value = 410
triggerall = var(41) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = var(46) % 100 < 10
trigger2 = stateno=200 || stateno=210 || stateno=240  || stateno=222 || stateno=223
trigger3 = var(46) % 100 < 10
trigger3 = stateno=400 || stateno=420 || stateno=450
trigger3 = movecontact
trigger4 = stateno=222 || stateno=223 || stateno=234
trigger4 = movecontact
trigger4 = var(46) % 100 < 10
trigger5 = stateno = 400
trigger5 = time >= 6
trigger5 = var(46) % 100 < 10
trigger6 = stateno = 230
trigger6 = movehit
trigger6 = var(45) % 1000 < 100
trigger7 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger7 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

[State -1, crouch Z];足払い
type = ChangeState
value = 420
triggerall = var(41) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = var(46) % 1000 < 100
trigger2 = stateno=200 || stateno=210 || stateno=240  || stateno=222 || stateno=223
trigger3 = var(46) % 1000 < 100
trigger3 = stateno=400 || stateno=410 || stateno=420
trigger3 = movecontact
trigger4 = stateno=220 || stateno=223 || stateno=234
trigger4 = movecontact
trigger4 = var(46) % 1000 < 100
trigger5 = stateno = 400
trigger5 = time >= 10
trigger5 = var(46) % 1000 < 100
trigger6 = stateno = 230
trigger6 = movehit
trigger6 = var(45) % 1000 < 100
trigger7 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger7 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)


[State -1, Air X];空中パンチ
type = ChangeState
value = 600
triggerall = var(41) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(47) % 10 = 0
trigger2 = stateno=600 || stateno=610 || stateno=620
trigger2 = movecontact
trigger3 = stateno = 600
trigger3 = time >= 8

[State -1, Air Y];
type = ChangeState
value = 610
triggerall = var(41) = 0
triggerall = command = "y"
;triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(47) % 100 < 10
trigger2 = stateno=600 || stateno=620 || stateno=650
trigger2 = movecontact

[State -1, Air Z]
type = ChangeState
value = 620
triggerall = var(41) = 0
triggerall = command != "holddown"
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(47) % 1000 < 100
trigger2 = stateno=600 || stateno=610
trigger2 = movecontact

[State -1, Air Z]
type = ChangeState
value = 630
triggerall = var(41) = 0
triggerall = command = "holddown"
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(47) % 10000 < 1000
trigger2 = stateno=600 || stateno=610 || stateno=620
trigger2 = movecontact



;=========================================================
;=========================================================
;=========================================================
;北斗の拳=================================================
;=========================================================
;=========================================================
;--------------------------------
[State -1, crouch X];ダスト…じゃなくてグレイブ
type = ChangeState
value = 8250
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "x"
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = stateno != 8411
trigger2 = stateno != 8430
trigger3 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger3 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

[State -1, crouch X];ヘヴィ
type = ChangeState
value = 8700
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "x"
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = hitdefattr = SC, NA
trigger2 = stateno != 8411
trigger2 = stateno != 8430
trigger3 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger3 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

[State -1, crouch X];バニ
type = ChangeState
value = 8710
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "y"
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = hitdefattr = SC, NA
trigger2 = stateno != 8411
trigger2 = stateno != 8430
trigger3 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger3 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

[State -1, Stand X];中断
type = ChangeState
value = 8201
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger2 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
[State -1, Stand X];パンチ
type = ChangeState
value = 8200
triggerall = !var(38)
triggerall = p2bodydist x < 35
triggerall = var(41) = 2
triggerall = command = "x"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 8200
trigger2 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
trigger3 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger3 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
trigger3 = var(59) = 0
[State -1, Stand X];パンチ
type = ChangeState
value = 8202
triggerall = !var(38)
triggerall = p2bodydist x >= 35
triggerall = var(41) = 2
triggerall = command = "x"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 8200
trigger2 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
trigger3 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger3 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
trigger3 = var(59) = 0
trigger4 = movecontact && var(59) = 0
trigger4 = stateno=8200

[State -1, Stand Y];近
type = ChangeState
value = 8211
triggerall = !var(38)
triggerall = p2bodydist x < 40
triggerall = var(41) = 2
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && var(59) = 0
trigger2 = stateno=8200 || stateno=8225 || stateno=8202 || stateno=8203
trigger3 =stateno=8400 || stateno=8420
trigger3 = movecontact && var(59) = 0
trigger4 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger4 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
trigger4= var(59) = 0

[State -1, Stand Y];遠
type = ChangeState
value = 8210
triggerall = !var(38)
triggerall = p2bodydist x >= 40
triggerall = var(41) = 2
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && var(59) = 0
trigger2 = stateno=8200 || stateno=8225 || stateno=8211 || stateno=8202 || stateno=8203
trigger3 =stateno=8400 || stateno=8420
trigger3 = movecontact && var(59) = 0
trigger4 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger4 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

[State -1, Stand back Y2];蹴り
type = ChangeState
value = 8225
triggerall = !var(38)
triggerall = p2bodydist x < 45
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "a"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && var(59) = 0
trigger2 = stateno=8200
trigger3 = stateno=8400
trigger3 = movecontact && var(59) = 0
trigger4 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger4 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
[State -1, Stand back Y2];蹴り
type = ChangeState
value = 8203
triggerall = !var(38)
triggerall = p2bodydist x >= 45
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "a"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && var(59) = 0
trigger2 = stateno=8200 || stateno=8225
trigger3 = stateno=8400
trigger3 = movecontact && var(59) = 0
trigger4 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger4 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

[State -1, Stand back Y2];蹴り
type = ChangeState
value = 8227
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && var(59) = 0
trigger2 = stateno=8200 || stateno=8202 || stateno=8203
trigger3 = stateno=8400
trigger3 = movecontact && var(59) = 0
trigger4 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger4 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

[State -1, Stand back Y2];近蹴り
type = ChangeState
value = 8226
triggerall = !var(38)
triggerall = p2bodydist x < 26
triggerall = var(41) = 2
triggerall = command = "b"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && var(59) = 0
trigger2 = stateno=8200 || stateno=8225 || stateno=8221 || stateno=8211 || stateno=8202 || stateno=8203
trigger3 = stateno=8400 || stateno=8410 || stateno=8420
trigger3 = movecontact && var(59) = 0
trigger4 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger4 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

[State -1, Stand back Y2];遠蹴り
type = ChangeState
value = 8228
triggerall = !var(38)
triggerall = p2bodydist x >= 26
triggerall = var(41) = 2
triggerall = command != "holdfwd"
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && var(59) = 0
trigger2 = stateno=8200 || stateno=8210|| stateno=8225 || stateno=8221 || stateno=8211 || stateno=8202 || stateno=8203
trigger3 = stateno=8400 || stateno=8410 || stateno=8420
trigger3 = movecontact && var(59) = 0
trigger4 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger4 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

;--------------------------------
[State -1, crouch X];しゃがみパンチ
type = ChangeState
value = 8400
triggerall = !var(38)
triggerall = var(41) = 2
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 8400
trigger2 = time >= 7
trigger3 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger3 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
trigger4 = movecontact && var(59) = 0
trigger4 = stateno=8400 || stateno=8420

[State -1, crouch Y];しゃがみぱんち
type = ChangeState
value = 8410
triggerall = !var(38)
triggerall = var(41) = 2
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && var(59) = 0
trigger2 = stateno=8200 || stateno=8225 || stateno=8211 || stateno=8202 || stateno=8203
trigger3 = stateno=8400 || stateno=8420
trigger3 = movecontact && var(59) = 0
trigger4 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger4 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

[State -1, crouch Y];しゃがみkeri
type = ChangeState
value = 8420
triggerall = !var(38)
triggerall = var(41) = 2
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && var(59) = 0
trigger2 = stateno=8200
trigger3 = stateno=8400
trigger3 = movecontact && var(59) = 0
trigger4 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger4 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
trigger5 = stateno = 8420
trigger5 = time >= 6


[State -1, crouch Y];カンチョー
type = ChangeState
value = 8430
triggerall = !var(38)
triggerall = var(41) = 2
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && var(59) = 0
trigger2 = stateno=8200 || stateno=8210 || stateno=8225 || stateno=8211 || stateno=8202 || stateno=8203
trigger3 = stateno=8400 || stateno=8410 || stateno=8411 || stateno=8420
trigger3 = movecontact && var(59) = 0
trigger4 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger4 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

;---------------------------------
[State -1, Air X];空中パンチ
type = ChangeState
value = 8600
triggerall = !var(38)
triggerall = var(41) = 2
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno=8600
trigger2 = time >= 12
trigger3 = movecontact
trigger3 = stateno=8620
trigger3 = var(57) = 1


[State -1, Air y];空中パンチ2
type = ChangeState
value = 8610
triggerall = !var(38)
triggerall = var(41) = 2
triggerall = command = "y"
;triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno=8600 || stateno=8620


[State -1, Air y];空中kiｃk2
type = ChangeState
value = 8620
triggerall = !var(38)
triggerall = var(41) = 2
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno=8600
;trigger2 = var(57) = 1
trigger3 = stateno=8620
trigger3 = time >= 12

[State -1, Air y];空中機kk2
type = ChangeState
value = 8630
triggerall = !var(38)
triggerall = var(41) = 2
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno=8600 || stateno=8610 || stateno=8620
















;=========================================================
;=========================================================
;=========================================================
;アルカナ=================================================
;=========================================================
;=========================================================
;--------------------------------


[State -1, Stand X];パンチ
type = ChangeState
value = 9200
triggerall = var(41) = 3
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 9200 || stateno = 9400
trigger2 = time >= 5
trigger3 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger3 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

[State -1, Stand Y];５Y
type = ChangeState
value = 9210
triggerall = var(41) = 3
triggerall = command = "y"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno=9200 || stateno=9201
trigger3 =stateno=9400
trigger3 = movecontact
trigger4 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger4 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
ignorehitpause = 0
[State -1, Stand Y];6Y
type = ChangeState
value = 9212
triggerall = var(41) = 3
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno=9200 || stateno=9210
trigger3 =stateno=9400
trigger3 = movecontact
trigger4 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger4 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
ignorehitpause = 0


[State -1, 4Z];DEBUG
type = ChangeState
value = 9425
triggerall = var(41) = 3
triggerall = command = "z"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno=9200 || stateno=9201 || stateno=9210  || stateno=9211 || stateno=9212
trigger3 = stateno=9400 || stateno=9410 || stateno=9420
trigger3 = movecontact
trigger4 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger4 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

[State -1, 3Z]
type = ChangeState
value = 9425
triggerall = var(41) = 3
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno=9200 || stateno=9201 || stateno=9210  || stateno=9211 || stateno=9212
trigger3 = stateno=9400 || stateno=9410 || stateno=9420
trigger3 = movecontact
trigger4 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger4 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

[State -1, 6Z];DEBUG
type = ChangeState
value = 9230
triggerall = var(41) = 3
triggerall = command = "z"
triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno=9200 || stateno=9201 || stateno=9210  || stateno=9211 || stateno=9212
trigger3 = stateno=9400 || stateno=9410 || stateno=9420
trigger3 = movecontact
trigger4 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger4 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

[State -1, Stand Z];５Z
type = ChangeState
value = 9211
triggerall = var(41) = 3
triggerall = command = "z"
triggerall = command != "holdfwd"
triggerall = command != "holdback";DEBUG
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno=9200 || stateno=9201 || stateno=9210 || stateno=9212
trigger3 =stateno=9400 || stateno=9410
trigger3 = movecontact
trigger4 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger4 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)
ignorehitpause = 0

;--------------------------------
[State -1, crouch X];しゃがみパンチ
type = ChangeState
value = 9400
triggerall = var(41) = 3
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 9400 || stateno = 9200
trigger2 = time >= 5
trigger3 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger3 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

[State -1, crouch Y];しゃがみぱんち
type = ChangeState
value = 9410
triggerall = var(41) = 3
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno=9200 || stateno=9210
trigger3 = stateno=9400
trigger3 = movecontact
trigger4 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger4 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

[State -1, crouch Y];しゃがみkeri
type = ChangeState
value = 9420
triggerall = var(41) = 3
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno=9200 || stateno=9212 || stateno=9210
trigger3 = stateno=9400 || stateno=9410
trigger3 = movecontact
trigger4 = stateno = 1001 || stateno = 1003;[1000,1005]
trigger4 = ifelse(stateno=1001,time >= 9, time>= 12); && enemy,movetype != H)

;---------------------------------
[State -1, Air X];空中パンチ
type = ChangeState
value = 9600
triggerall = var(41) = 3
triggerall = command = "x"
triggerall = stateno != 9036
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Air y];空中パンチ2
type = ChangeState
value = 9610
triggerall = var(41) = 3
triggerall = command = "y"
;triggerall = command != "holddown"
triggerall = stateno != 9036
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno=9600


[State -1, Air y];空中z
type = ChangeState
value = 9620
triggerall = var(41) = 3
triggerall = stateno != 9036
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno=9600 || stateno = 9610











;---------------------------------------------------------------------------
;シールド
[State -1, Stand A]
type = ChangeState
value = 9900
triggerall = var(41) = 3
triggerall = var(33) = 11
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = stateno != 9905
triggerall = stateno != 9906
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;シールド
[State -1, Stand A]
type = ChangeState
value = 9910
triggerall = var(41) = 3
triggerall = var(33) = 11
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = stateno != 9915
triggerall = stateno != 9916
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;シールド
[State -1, Stand A]
type = ChangeState
value = 9920
triggerall = var(41) = 3
triggerall = var(33) = 11
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = stateno != 9925
triggerall = stateno != 9926
trigger1 = statetype = A
trigger1 = ctrl


;-------------便利ボタン--------------------------------------------------------------
;避け
[State -1, Stand A]
type = ChangeState
value = 9930
triggerall = var(41) = 0
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;投げ
;air
[State -1, 0]
type = ChangeState
value = 970
triggerall = var(41) = 0
triggerall = Var(59) =0
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movehit
trigger2 = stateno = 600
trigger3 = movehit
trigger3 = stateno = 610
trigger4 = movehit
trigger4 = stateno = 620


;---------------------------------------------------------------------------
;Taunt
;
[State -1, Taunt]
type = ChangeState
value = 197
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = command = "tuika";"start"
;triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
;
[State -1, Taunt]
type = ChangeState
value = 199
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl





;アルカナ　2Dホーミング
[State -1, arcana]
type = ChangeState
value = 9012
triggerall = var(41) = 3
triggerall = command = "holddown"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = stateno != 8201
triggerall = stateno != 8430
;triggerall = stateno != [1030,1040]
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = hitdefattr = A, NA,SA,HA
trigger2 = movecontact
trigger3 = stateno = 2040
trigger3 = moveguarded
;アルカナ　8Dホーミング
[State -1, arcana]
type = ChangeState
value = 9017
triggerall = var(41) = 3
triggerall = command = "holdup"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = stateno != 8201
triggerall = stateno != 8430
;triggerall = stateno != [1030,1040]
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = hitdefattr = A, NA,SA,HA
trigger2 = movecontact
;アルカナ　NDホーミング
[State -1, arcana]
type = ChangeState
value = 9010
triggerall = var(41) = 3
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = stateno != 8201
triggerall = stateno != 8430
;triggerall = stateno != [1030,1040]
trigger1 = ctrl = 1
trigger1 = var(59) = 0
trigger2 = hitdefattr = SCA, NA,SA,HA
trigger2 = movecontact
trigger3 = stateno = 2040
trigger3 = moveguarded
;アルカナ　6Dホーミング　空中
[State -1, arcana]
type = ChangeState
value = 9011
triggerall = var(41) = 3
triggerall = command = "holdfwd"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = stateno != 8201
triggerall = stateno != 8430
;triggerall = stateno != [1030,1040]
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = hitdefattr = A, NA,SA,HA
trigger2 = movecontact
;アルカナ　6Dホーミング 地上
[State -1, arcana]
type = ChangeState
value = 9014
triggerall = var(41) = 3
triggerall = command = "holdfwd"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = stateno != 8201
triggerall = stateno != 8430
;triggerall = stateno != [1030,1040]
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA,SA,HA
trigger2 = movecontact
trigger3 = stateno = 2040
trigger3 = moveguarded
;アルカナ　4Dホーミング 地上
[State -1, arcana]
type = ChangeState
value = 9015
triggerall = var(41) = 3
triggerall = command = "holdback"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = stateno != 8201
triggerall = stateno != 8430
;triggerall = stateno != [1030,1040]
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA,SA,HA
trigger2 = movecontact
trigger3 = stateno = 2040
trigger3 = moveguarded
;アルカナ　4Dホーミング 空中
[State -1, arcana]
type = ChangeState
value = 9018
triggerall = var(41) = 3
triggerall = command = "holdback"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = stateno != 8201
triggerall = stateno != 8430
;triggerall = stateno != [1030,1040]
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = hitdefattr = A, NA,SA,HA
trigger2 = movecontact


























;斬鉄閃をキャンセル
;アルカナ　2Dホーミング
[State -1, arcana]
type = ChangeState
value = 9012
triggerall = var(41) = 3
triggerall = command = "holddown"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = Numhelper(1061) >= 1
triggerall = movetype != H
triggerall = statetype = A
trigger1 = stateno = [1060,1069]
trigger1 = helper(1061),movecontact
;アルカナ　8Dホーミング
[State -1, arcana]
type = ChangeState
value = 9017
triggerall = var(41) = 3
triggerall = command = "holdup"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = Numhelper(1061) >= 1
triggerall = movetype != H
triggerall = statetype = A
trigger1 = stateno = [1060,1069]
trigger1 = helper(1061),movecontact
;アルカナ　NDホーミング
[State -1, arcana]
type = ChangeState
value = 9010
triggerall = var(41) = 3
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = Numhelper(1061) >= 1
triggerall = movetype != H
trigger1 = stateno = [1060,1069]
trigger1 = helper(1061),movecontact
;アルカナ　6Dホーミング　空中
[State -1, arcana]
type = ChangeState
value = 9011
triggerall = var(41) = 3
triggerall = command = "holdfwd"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = Numhelper(1061) >= 1
triggerall = movetype != H
triggerall = statetype = A
trigger1 = stateno = [1060,1069]
trigger1 = helper(1061),movecontact
;アルカナ　6Dホーミング 地上
[State -1, arcana]
type = ChangeState
value = 9014
triggerall = var(41) = 3
triggerall = command = "holdfwd"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = Numhelper(1061) >= 1
triggerall = movetype != H
triggerall = statetype != A
trigger1 = stateno = [1060,1069]
trigger1 = helper(1061),movecontact
;アルカナ　4Dホーミング 地上
[State -1, arcana]
type = ChangeState
value = 9015
triggerall = var(41) = 3
triggerall = command = "holdback"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = Numhelper(1061) >= 1
triggerall = movetype != H
triggerall = statetype != A
trigger1 = stateno = [1060,1069]
trigger1 = helper(1061),movecontact

;アルカナ　4Dホーミング 空中
[State -1, arcana]
type = ChangeState
value = 9018
triggerall = var(41) = 3
triggerall = command = "holdback"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = Numhelper(1061) >= 1
triggerall = movetype != H
triggerall = statetype = A
trigger1 = stateno = [1060,1069]
trigger1 = helper(1061),movecontact


;逝斬をキャンセル
;アルカナ　2Dホーミング
[State -1, arcana]
type = ChangeState
value = 9012
triggerall = var(41) = 3
triggerall = command = "holddown"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = Numhelper(1201) >= 1
triggerall = movetype != H
triggerall = statetype = A
trigger1 = stateno = [1200,1203]
trigger1 = helper(1201),movecontact
;アルカナ　8Dホーミング
[State -1, arcana]
type = ChangeState
value = 9017
triggerall = var(41) = 3
triggerall = command = "holdup"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = Numhelper(1201) >= 1
triggerall = movetype != H
triggerall = statetype = A
trigger1 = stateno = [1200,1203]
trigger1 = helper(1201),movecontact
;アルカナ　NDホーミング
[State -1, arcana]
type = ChangeState
value = 9010
triggerall = var(41) = 3
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = Numhelper(1201) >= 1
triggerall = movetype != H
trigger1 = stateno = [1200,1203]
trigger1 = helper(1201),movecontact
;アルカナ　6Dホーミング　空中
[State -1, arcana]
type = ChangeState
value = 9011
triggerall = var(41) = 3
triggerall = command = "holdfwd"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = Numhelper(1201) >= 1
triggerall = movetype != H
triggerall = statetype = A
trigger1 = stateno = [1200,1203]
trigger1 = helper(1201),movecontact
;アルカナ　6Dホーミング 地上
[State -1, arcana]
type = ChangeState
value = 9014
triggerall = var(41) = 3
triggerall = command = "holdfwd"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = Numhelper(1201) >= 1
triggerall = movetype != H
triggerall = statetype != A
trigger1 = stateno = [1200,1203]
trigger1 = helper(1201),movecontact
;アルカナ　4Dホーミング 地上
[State -1, arcana]
type = ChangeState
value = 9015
triggerall = var(41) = 3
triggerall = command = "holdback"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = Numhelper(1201) >= 1
triggerall = movetype != H
triggerall = statetype != A
trigger1 = stateno = [1200,1203]
trigger1 = helper(1201),movecontact

;アルカナ　4Dホーミング 空中
[State -1, arcana]
type = ChangeState
value = 9018
triggerall = var(41) = 3
triggerall = command = "holdback"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = Numhelper(1201) >= 1
triggerall = movetype != H
triggerall = statetype = A
trigger1 = stateno = [1200,1203]
trigger1 = helper(1201),movecontact









;アルカナ　2Dホーミング
[State -1, arcana]
type = ChangeState
value = 9012
triggerall = var(41) = 3
triggerall = command = "holddown"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = Numhelper(1201) >= 1
triggerall = movetype != H
triggerall = statetype = A
trigger1 = stateno = 1204
trigger1 = time >= 65
trigger1 = helper(1201),movecontact
;アルカナ　8Dホーミング
[State -1, arcana]
type = ChangeState
value = 9017
triggerall = var(41) = 3
triggerall = command = "holdup"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = Numhelper(1201) >= 1
triggerall = movetype != H
triggerall = statetype = A
trigger1 = stateno = 1204
trigger1 = time >= 65
trigger1 = helper(1201),movecontact
;アルカナ　NDホーミング
[State -1, arcana]
type = ChangeState
value = 9010
triggerall = var(41) = 3
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = Numhelper(1201) >= 1
triggerall = movetype != H
trigger1 = stateno = 1204
trigger1 = time >= 65
trigger1 = helper(1201),movecontact
;アルカナ　6Dホーミング　空中
[State -1, arcana]
type = ChangeState
value = 9011
triggerall = var(41) = 3
triggerall = command = "holdfwd"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = Numhelper(1201) >= 1
triggerall = movetype != H
triggerall = statetype = A
trigger1 = stateno = 1204
trigger1 = time >= 65
trigger1 = helper(1201),movecontact
;アルカナ　4Dホーミング 空中
[State -1, arcana]
type = ChangeState
value = 9018
triggerall = var(41) = 3
triggerall = command = "holdback"
triggerall = command = "a"
triggerall = var(16) >= 1
triggerall = Numhelper(1201) >= 1
triggerall = movetype != H
triggerall = statetype = A
trigger1 = time >= 65
trigger1 = stateno = 1204
trigger1 = helper(1201),movecontact




























;メルティブラッド------------------------------------------
[State -1, BOOST CANCEL];バニ
type = ChangeState
value = 8710
triggerall = var(41) = 3
triggerall = command = "y"
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = Numhelper(2990) >= 1
trigger1 = statetype = S
trigger2 = hitdefattr = SC, NA, SA

[State -1, BOOST CANCEL]
type = ChangeState
value = 8200
triggerall = var(41) = 3
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = Numhelper(2990) >= 1
trigger1 = statetype = S
trigger2 = hitdefattr = SC, NA, SA

[State -1, BOOST CANCEL]
type = ChangeState
value = 225
triggerall = var(41) = 3
triggerall = command = "holdback"
triggerall = command = "y"
triggerall = Numhelper(2990) >= 1
trigger1 = statetype = S
trigger2 = hitdefattr = SC, NA, SA
[State -1, BOOST CANCEL]
type = ChangeState
value = 210
triggerall = var(41) = 3
triggerall = command != "holdback"
triggerall = command = "y"
triggerall = Numhelper(2990) >= 1
trigger1 = statetype = S
trigger2 = hitdefattr = SC, NA, SA

[State -1, BOOST CANCEL]
type = ChangeState
value = 230
triggerall = var(41) = 3
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = Numhelper(2990) >= 1
trigger1 = statetype = S
trigger2 = hitdefattr = SC, NA, SA
[State -1, BOOST CANCEL]
type = ChangeState
value = 250
triggerall = var(41) = 3
triggerall = command = "z"
triggerall = command = "holdback"
triggerall = Numhelper(2990) >= 1
trigger1 = statetype = S
trigger2 = hitdefattr = SC, NA, SA
[State -1, BOOST CANCEL]
type = ChangeState
value = 220
triggerall = var(41) = 3
triggerall = command = "z"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = Numhelper(2990) >= 1
trigger1 = statetype = S
trigger2 = hitdefattr = SC, NA, SA

;屈み
[State -1, BOOST CANCEL]
type = ChangeState
value = 400
triggerall = var(41) = 3
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = Numhelper(2990) >= 1
trigger1 = statetype != A
trigger2 = hitdefattr = SC, NA, SA

[State -1, BOOST CANCEL]
type = ChangeState
value = 410
triggerall = var(41) = 3
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = Numhelper(2990) >= 1
trigger1 = statetype != A
trigger2 = hitdefattr = SC, NA, SA

[State -1, BOOST CANCEL]
type = ChangeState
value = 420
triggerall = var(41) = 3
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = Numhelper(2990) >= 1
trigger1 = statetype != A
trigger2 = hitdefattr = SC, NA, SA

;空中
[State -1, BOOST CANCEL]
type = ChangeState
value = 600
triggerall = var(41) = 3
triggerall = command = "x"
triggerall = Numhelper(2990) >= 1
trigger1 = statetype = A
trigger2 = hitdefattr = A, NA, SA

[State -1, BOOST CANCEL]
type = ChangeState
value = 605
triggerall = var(41) = 3
triggerall = command = "holddown"
triggerall = command = "y"
triggerall = Numhelper(2990) >= 1
trigger1 = statetype = A
trigger2 = hitdefattr = A, NA, SA
[State -1, BOOST CANCEL]
type = ChangeState
value = 610
triggerall = var(41) = 3
triggerall = command != "holddown"
triggerall = command = "y"
triggerall = Numhelper(2990) >= 1
trigger1 = statetype = A
trigger2 = hitdefattr = A, NA, SA

[State -1, BOOST CANCEL]
type = ChangeState
value = 630
triggerall = var(41) = 3
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = Numhelper(2990) >= 1
trigger1 = statetype = A
trigger2 = hitdefattr = A, NA, SA

[State -1, BOOST CANCEL]
type = ChangeState
value = 620
triggerall = var(41) = 3
triggerall = command != "holddown"
triggerall = command = "z"
triggerall = Numhelper(2990) >= 1
trigger1 = statetype = A
trigger2 = hitdefattr = A, NA, SA







;北斗の拳--------------------------------------------------------
[State -1, BOOST CANCEL];グレイブ
type = ChangeState
value = 8250
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "y"
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = Numhelper(2990) >= 1
;triggerall = stateno != 8201
triggerall = stateno != 8430
triggerall = stateno != [1020,1040]
trigger1 = statetype = S
trigger2 = hitdefattr = SC, NA, SA
[State -1, BOOST CANCEL];ヘヴィ
type = ChangeState
value = 8700
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "a"
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = Numhelper(2990) >= 1
;triggerall = stateno != 8201
triggerall = stateno != 8430
triggerall = stateno != [1020,1040]
trigger1 = statetype = S
trigger2 = hitdefattr = SC, NA, SA
[State -1, BOOST CANCEL];バニ
type = ChangeState
value = 8710
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "y"
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = Numhelper(2990) >= 1
;triggerall = stateno != 8201
triggerall = stateno != 8430
triggerall = stateno != [1020,1040]
trigger1 = statetype = S
trigger2 = hitdefattr = SC, NA, SA

; むそうてんせー
[State -1]
type = ChangeState
value = 2010
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = power >= 1000
triggerall = command = "214214_a"
triggerall = Numhelper(2990) >= 1
;triggerall = stateno != 8201
triggerall = stateno != 8430
triggerall = stateno != [1020,1040]
trigger1 = statetype = S
trigger2 = hitdefattr = SC, NA, SA
; てんはかっさつ
[State -1]
type = ChangeState
value = 2000
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = power >= 1000
triggerall = command = "236236_x"
triggerall = Numhelper(2990) >= 1
;triggerall = stateno != 8201
triggerall = stateno != 8430
triggerall = stateno != [1020,1040]
trigger1 = statetype = S
trigger2 = hitdefattr = SC, NA, SA
; せーえーこー
[State -1]
type = ChangeState
value = 1010
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "236_y"
triggerall = Numhelper(2990) >= 1
;triggerall = stateno != 8201
triggerall = stateno != 8430
triggerall = stateno != [1020,1040]
trigger1 = statetype = S
trigger2 = hitdefattr = SC, NA, SA



[State -1, BOOST CANCEL]
type = ChangeState
value = 8200
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = Numhelper(2990) >= 1
;triggerall = stateno != 8201
triggerall = stateno != 8430
triggerall = stateno != [1020,1040]
trigger1 = statetype = S
trigger2 = hitdefattr = SC, NA, SA


[State -1, BOOST CANCEL]
type = ChangeState
value = 8210
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = p2bodydist x >= 30
triggerall = var(41) = 2
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = Numhelper(2990) >= 1
;triggerall = stateno != 8201
triggerall = stateno != 8430
triggerall = stateno != [1020,1040]
trigger1 = statetype = S
trigger2 = hitdefattr = SC, NA, SA
[State -1, BOOST CANCEL]
type = ChangeState
value = 8211
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = p2bodydist x < 30
triggerall = var(41) = 2
triggerall = command = "y"
triggerall = Numhelper(2990) >= 1
;triggerall = stateno != 8201
triggerall = command != "holddown"
triggerall = stateno != 8430
triggerall = stateno != [1020,1040]
trigger1 = statetype = S
trigger2 = hitdefattr = SC, NA, SA

[State -1, BOOST CANCEL]
type = ChangeState
value = 8225
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "a"
triggerall = Numhelper(2990) >= 1
;triggerall = stateno != 8201
triggerall = command != "holddown"
triggerall = stateno != 8430
triggerall = stateno != [1020,1040]
trigger1 = statetype = S
trigger2 = hitdefattr = SC, NA, SA

[State -1, BOOST CANCEL]
type = ChangeState
value = 8226
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "b"
triggerall = Numhelper(2990) >= 1
;triggerall = stateno != 8201
triggerall = command != "holddown"
triggerall = stateno != 8430
triggerall = stateno != [1020,1040]
trigger1 = statetype = S
trigger2 = hitdefattr = SC, NA, SA


;屈み
[State -1, BOOST CANCEL]
type = ChangeState
value = 8400
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = Numhelper(2990) >= 1
;triggerall = stateno != 8201
triggerall = stateno != 8430
triggerall = stateno != [1020,1040]
trigger1 = statetype != A
trigger2 = hitdefattr = SC, NA, SA

[State -1, BOOST CANCEL]
type = ChangeState
value = 8410
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = Numhelper(2990) >= 1
;triggerall = stateno != 8201
triggerall = stateno != 8430
triggerall = stateno != [1020,1040]
trigger1 = statetype != A
trigger2 = hitdefattr = SC, NA, SA

[State -1, BOOST CANCEL]
type = ChangeState
value = 8420
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = Numhelper(2990) >= 1
;triggerall = stateno != 8201
triggerall = stateno != 8430
triggerall = stateno != [1020,1040]
trigger1 = statetype != A
trigger2 = hitdefattr = SC, NA, SA

[State -1, BOOST CANCEL]
type = ChangeState
value = 8430
triggerall = !var(38)
triggerall = var(59) = 0
triggerall = var(41) = 2
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = Numhelper(2990) >= 1
;triggerall = stateno != 8201
triggerall = stateno != 8430
triggerall = stateno != [1020,1040]
trigger1 = statetype != A
trigger2 = hitdefattr = SC, NA, SA




;空中
[State -1, BOOST CANCEL]
type = ChangeState
value = 8600
triggerall = !var(38)
triggerall = var(41) = 2
triggerall = command = "x"
triggerall = Numhelper(2990) >= 1
;triggerall = stateno != 8201
triggerall = stateno != 8430
triggerall = stateno != [1020,1040]
trigger1 = statetype = A
trigger2 = hitdefattr = A, NA, SA

[State -1, BOOST CANCEL]
type = ChangeState
value = 8610
triggerall = !var(38)
triggerall = var(41) = 2
triggerall = command = "y"
triggerall = Numhelper(2990) >= 1
;triggerall = stateno != 8201
triggerall = stateno != 8430
triggerall = stateno != [1020,1040]
trigger1 = statetype = A
trigger2 = hitdefattr = A, NA, SA

[State -1, BOOST CANCEL]
type = ChangeState
value = 8620
triggerall = !var(38)
triggerall = var(41) = 2
triggerall = command = "a"
triggerall = Numhelper(2990) >= 1
;triggerall = stateno != 8201
triggerall = stateno != 8430
triggerall = stateno != [1020,1040]
trigger1 = statetype = A
trigger2 = hitdefattr = A, NA, SA

[State -1, BOOST CANCEL]
type = ChangeState
value = 8630
triggerall = !var(38)
triggerall = var(41) = 2
triggerall = command = "b"
triggerall = Numhelper(2990) >= 1
;triggerall = stateno != 8201
triggerall = stateno != 8430
triggerall = stateno != [1020,1040]
trigger1 = statetype = A
trigger2 = hitdefattr = A, NA, SA







[State -1, Blocking]
type = HitOverride
triggerall = var(41) = 2
triggerall = var(0) > 0
triggerall = var(29) = [22,30]
;triggerall = command != "holdback"
trigger1 = StateType = S
trigger1 = ctrl = 1 || stateno = 20
attr = SCA, NA, SA, HA, NP, SP, HP
stateno = 2012
time = 1


;---------------------------------------------------------------------------
;AI
;---------------------------------------------------------------------------

[State -1, AI]
type = VarSet
trigger1 = command = "AI"
trigger2 = command = "AI1"
trigger3 = command = "AI2"
trigger4 = command = "AI3"
trigger5 = command = "AI4"
trigger6 = command = "AI5"
trigger7 = command = "AI6"
trigger8 = command = "AI7"
trigger9 = command = "AI8"
trigger10 = command = "AI9"
v = 59
value = 1
ignorehitpause = 1

[State 190,1]
type = VarRandom
trigger1 = time = 0
v = 19
range = 0,100

[State -1, Random Var(3)]
type = VarRandom
trigger1 = 1
v = 3
ignorehitpause = 1

;AI Stand Guard
[State -1]
type = null;ChangeState
triggerall = Var(59) = 1
triggerall = P2statetype != C
triggerall = Statetype = S
triggerall = (P2Movetype = A) || (enemy, NumProj >= 1)
trigger1 = Ctrl = 1
trigger1 = Random >= 960
trigger1 = p2bodydist x = [-10,15]
value = 130

;AI Stand to Crouch Guard
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = (P2Movetype = A) || (enemy, NumProj >= 1)
trigger1 = StateNo = 150
trigger1 = 1
value = 152

;AI Crouching Guard
[State -1]
type = null;ChangeState
triggerall = Var(59) = 1
triggerall = StateType != A
triggerall = P2statetype != A
triggerall = (P2Movetype = A) || (enemy, NumProj >= 1)
trigger1 = Ctrl = 1
trigger1 = random >= 900
value = 131


;AI Crouch to Stand Guard
[State -1]
type = ChangeState
triggerall = Var(59) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = (P2Movetype = A) || (enemy, NumProj >= 1)
trigger1 = 1
trigger1 = StateNo = 152
value = 150

;AI Aerial Guard
[State -1]
type = ChangeState
triggerall = Var(59) = 1
triggerall = Statetype = A
triggerall = (P2Movetype = A) || (enemy, NumProj >= 1)
trigger1 = Ctrl = 1
trigger1 = random >= 900
value = 132


;AI Dash
[State -1, AI Dash Forward]
type = ChangeState
value = 201
triggerall = Var(59) =1
triggerall = Var(41) = 0
;triggerall = enemy,vel x != 0 || enemy,vel y != 0
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2MoveType != A)
triggerall = P2life != 0
trigger1 = Ctrl = 1
;trigger1 = P2BodyDist x = [120,400]
trigger1 = Random >= 950
trigger1 = gametime % 3 = 0
trigger1 = ctrl = 1
trigger1 = stateno != 201
trigger1 = stateno != 100
trigger1 = stateno != 204
trigger1 = stateno != 101
trigger1 = stateno != 10
trigger1 = enemy,stateno != [5100,5120]
ctrl = 0

;AI Dash hokuto
[State -1, AI Dash Forward]
type = ChangeState
value = 8235
triggerall = Var(59) =1
triggerall = Var(41) = 2
;triggerall = enemy,vel x != 0 || enemy,vel y != 0
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2MoveType != A)
triggerall = P2life != 0
trigger1 = Ctrl = 1
trigger1 = P2BodyDist x = [100,400]
trigger1 = Random >= 900
trigger1 = gametime % 7 = 0
trigger1 = ctrl = 1
trigger1 = stateno != 10
trigger1 = stateno != 8235
trigger1 = enemy,stateno != [5100,5120]
ctrl = 0

;AI Dash hokuto
[State -1, AI Dash Jump]
type = ChangeState
value = 8233
triggerall = Var(59) =1
triggerall = Var(41) = 2
;triggerall = enemy,vel x != 0 || enemy,vel y != 0
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2MoveType != A)
triggerall = P2life != 0
trigger1 = Ctrl = 1
trigger1 = P2BodyDist x = [80,150]
trigger1 = Random >= 900
trigger1 = gametime % 6 = 0
trigger1 = ctrl = 1
trigger1 = stateno != 10
trigger1 = stateno != 8235
trigger1 = enemy,stateno != [5100,5120]
ctrl = 0


[State -1, AI Jump Over Projectiles]
type = ChangeState
triggerall = Var(59) = 1
triggerall = (StateType != A) && (StateType != L)
triggerall = (P2MoveType = A) && (P2StateType != A) && (enemy, NumProj >= 1)
triggerall = StateNo != 40
trigger1 = Ctrl = 1
value = 40

[state -1,AI]
type = changestate
triggerall = var(8) = 0
triggerall = var(41) = 2
triggerall = var(59) = 1
trigger1 = movetype != H
trigger1 = gametime % 3 = 0
trigger1 = random >= 800
trigger1 = statetype = S
trigger1 = enemy,stateno = [5100,5101]
trigger1 = p2bodydist x >= 150
trigger1 = roundstate = 2
trigger1 = ctrl
value = 1020

[state -1,AI]
type = changestate
triggerall = var(0) = 0
triggerall = var(41) = 2
triggerall = var(59) = 1
trigger1 = movetype != H
trigger1 = gametime % 2 = 0
trigger1 = random >= 800
trigger1 = statetype = S
trigger1 = enemy,movetype != A
trigger1 = p2bodydist x >= 90
trigger1 = power >= 1100
trigger1 = ctrl
trigger1 = roundstate = 2
value = 2010

[state -1,AI]
type = changestate
triggerall = var(41) = 2
triggerall = var(59) = 1
trigger1 = movetype != H
trigger1 = gametime % 3 = 0
trigger1 = random >= 800
trigger1 = statetype = S
trigger1 = enemy,movetype != A
trigger1 = enemy,statetype != L
trigger1 = enemy,statetype != C
trigger1 = p2bodydist x = [36,69]
trigger1 = ctrl
trigger1 = roundstate = 2
value = 8228

;以下J・JAI

[State -3]
type = Varset;AIを元に戻すときはここを「type = null;Varset」と書き換えてください。
triggerall = !var(38)
trigger1 = var(59)
trigger2 = command = "AI_20" || command = "AI_21" || command = "AI_22" || command = "AI_23" || command = "AI_24" || command = "AI_25"
trigger3 = command = "AI_26" || command = "AI_27" || command = "AI_28" || command = "AI_29" || command = "AI_30"
trigger4 = command = "AI_31" || command = "AI_32" || command = "AI_33" || command = "AI_34" || command = "AI_35"
trigger5 = command = "AI_36" || command = "AI_37" || command = "AI_38" || command = "AI_39" || command = "AI_40"
trigger6 = command = "AI_41" || command = "AI_42" || command = "AI_43" || command = "AI_44" || command = "AI_45"
trigger7 = command = "AI_46" || command = "AI_47" || command = "AI_48" || command = "AI_49" || command = "AI_50"
var(38) = 10;ここの数字を1～10に変えてレベル設定

[State -3];AI判別
type = Varset
trigger1 = var(38) && var(59)
var(59) = 0

[State -3];デバック解除
type = Varset
trigger1 = var(38) && var(25)
var(25) = 0

[State -3];コンボ用
type = Varset
trigger1 = var(38) && var(54) != 1
trigger1 = stateno = 1000
var(54) = 1

[State -3]
type = Varset
trigger1 = var(38) && var(54) != 2
trigger1 = stateno = 2000
var(54) = 2

[State -3]
type = Varset
trigger1 = var(38) && var(54) != [2,4]
trigger1 = stateno = 1015
var(54) = 3

[State -3]
type = Varset
trigger1 = var(38) && var(54) = 2
trigger1 = stateno = 1015
var(54) = 4

[State -3]
type = Varset
trigger1 = var(38) && var(54)
trigger1 = stateno = 1010 && var(54) = 2 || stateno = 1020
var(54) = 5

[State -3]
type = Varset
trigger1 = var(38) && var(54)
trigger1 = p2movetype != H
var(54) = 0

;---------------------------------------------------------------------------
[State -1, 0];つかみ投げ
type = ChangeState
value = 981
triggerall = var(38) && roundstate = 2
triggerall = var(41) = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2statetype = S
trigger1 = p2movetype = I
trigger1 = p2bodydist X = [-5,50]
trigger1 = random < var(38)*10

[State -1, 0];投げ
type = ChangeState
value = 980
triggerall = var(38) && roundstate = 2
triggerall = var(41) = 2
triggerall = Numhelper(2990) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2statetype != A
trigger1 = p2bodydist x = [-15,15]
trigger1 = p2statetype != L
trigger1 = p2movetype != H
trigger1 = p2movetype != A || p2stateno < 2000
trigger1 = random < var(38)*10

;---------------------------------------------
;ジャンプ
[State -3]
type = ChangeState
value = 40
triggerall = var(59) && roundstate = 2
triggerall = statetype != A && ctrl
trigger1 = p2movetype != H
trigger1 = p2bodydist X > 70
trigger1 = random < var(38)*5

;---------------------------------------------
;立ちガード
[State -3]
type = ChangeState
value = 130
triggerall = var(38) && roundstate = 2
triggerall = p2statetype != C
triggerall = inguarddist
trigger1 = statetype != A && ctrl
trigger1 = random < var(38)*100

;---------------------------------------------
;屈みガード
[State -3]
type = ChangeState
value = 131
triggerall = var(38) && roundstate = 2
triggerall = p2statetype = C
triggerall = inguarddist
trigger1 = statetype != A && ctrl
trigger1 = random < var(38)*100

;---------------------------------------------
;空中ガード
[State -3]
type = ChangeState
value = 132
triggerall = var(38) && roundstate = 2
triggerall = inguarddist
trigger1 = statetype = A && ctrl
trigger1 = random < var(38)*100

;---------------------------------------------------------------------------
;北斗　一撃
[State -1]
type = ChangeState
value = 8800
triggerall = var(38) && roundstate = 2
triggerall = var(41) = 2
triggerall = var(24) = 7
triggerall = statetype != A
trigger1 = ctrl || Numhelper(2990) && (stateno = 1010 || stateno = 1015)
trigger1 = var(54) || p2stateno = 931 || p2stateno = 8716
trigger1 = p2statetype = A
trigger1 = p2movetype = H
trigger1 = p2bodydist X = [-5,50]
trigger1 = p2bodydist Y = [-80,0]
trigger1 = random < var(38)*100

;無想転生
[State -1]
type = ChangeState
value = 2010
triggerall = var(38) && roundstate = 2
triggerall = var(41) = 2
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = hitdefattr = SC, NA, SA
trigger1 = movehit
trigger1 = !var(54)
trigger1 = var(0) < 2
trigger1 = p2statetype = A
trigger1 = p2bodydist X = [-5,50]
trigger1 = stateno = 8430
trigger1 = random < var(38)*100

;---------------------------------------------------------------------------
[State -1];ビーム
type = ChangeState
value = 2000
triggerall = var(38) && roundstate = 2
triggerall = var(41) = 2
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(54) = 1
triggerall = random < var(38)*100
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(27) && enemy,gethitvar(hitcount) > 11
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movehit
trigger2 = var(7) > 5
trigger2 = stateno = 8228

;---------------------------------------------------------------------------
[State -1];北斗七死騎兵斬
type = ChangeState
value = 1026
triggerall = var(38) && roundstate = 2
triggerall = var(41) = 2
trigger1 = hitdefattr = A, NA
trigger1 = moveguarded
trigger1 = p2statetype != A
trigger1 = p2bodydist X = [-5,50]
trigger1 = stateno = 8610 || stateno = 8630
trigger1 = random < var(38)*100

[State -1];蛇
type = ChangeState
value = 1000
triggerall = var(38) && roundstate = 2
triggerall = var(41) = 2
triggerall = var(54) != [2,3]
triggerall = random < var(38)*100
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(27)
trigger1 = enemy,gethitvar(hitcount) < 12
trigger1 = p2bodydist Y < -40
trigger1 = p2stateno = 8716
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movehit
trigger2 = p2statetype = A
trigger2 = stateno = 8226 && var(27) || stateno = 8228 || stateno = 8430 && !var(54)

[State -1];弱昇竜
type = ChangeState
value = 1015
triggerall = var(38)
triggerall = var(41) = 2
trigger1 = statetype != A
trigger1 = ctrl || !var(27) && (stateno = 8226 && power < 1000 || stateno = 8228) && movehit
trigger1 = var(54) = [1,2]
trigger1 = var(27) || var(7) > 5 && p2bodydist Y > -50 && (var(54) != 1 || power < 1000)
trigger1 = p2statetype != L
trigger1 = p2bodydist X = [-5,35]
trigger1 = random < var(38)*100

[State -1];醒鋭孔
type = ChangeState
value = 1010
triggerall = var(38)
triggerall = var(41) = 2
trigger1 = statetype != A
trigger1 = ctrl || !var(27) && (stateno = 8226 && power < 1000 || stateno = 8228) && movehit
trigger1 = var(54) = [1,2]
trigger1 = var(27) || var(7) > 5 && p2bodydist Y > -50 && (var(54) != 1 || power < 1000)
trigger1 = p2statetype != L
trigger1 = p2bodydist X = [-5,40]
trigger1 = random < var(38)*100

; tenha
[State -1]
type = ChangeState
value = 1020
triggerall = var(38) && roundstate = [2,3]
triggerall = var(41) = 2
triggerall = statetype != A
triggerall = random < var(38)*100
trigger1 = ctrl
trigger1 = var(54) > 1
trigger1 = p2statetype = A
trigger1 = p2bodydist X > 70
trigger1 = roundstate = 2
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = roundstate = 3 || (stateno = 8430 || stateno = 8228) && var(54)

[State -1];波動拳
type = ChangeState
value = 1030
triggerall = var(38) && roundstate = 2
triggerall = var(41) = 2
trigger1 = statetype != A
trigger1 = hitdefattr = SC, NA
trigger1 = moveguarded = 1
trigger1 = stateno = 8228 || stateno = 8430
trigger1 = random < var(38)*100

[State -1, Dash Fwd];ダッシュ
type = ChangeState
value = 102
triggerall = var(38) && roundstate = 2
triggerall = Var(41) != 0
triggerall = stateno != [10000,13000]
triggerall = numhelper(2990) = 0
triggerall = statetype != A
triggerall = ctrl && stateno != 102
triggerall = p2statetype != L
triggerall = random < var(38)*100
trigger1 = !var(54)
trigger1 = p2bodydist X > 80
trigger1 = random < var(38)*5
trigger2 = var(48) < 33 && var(26) < 2
trigger2 = !Numhelper(2990) && !Numhelper(2996)
trigger2 = p2stateno = [8715,8716]
trigger3 = var(54) = 2
trigger3 = p2bodydist X > 40

[State -1, Dash Air];空中ダッシュ
type = ChangeState
value = 234
triggerall = var(38) && roundstate = 2
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 224
trigger1 = var(5) = 0
trigger1 = var(32) = 0
trigger1 = var(54) < 2 || p2bodydist X > 140
trigger1 = p2statetype != L
trigger1 = p2movetype != A
trigger1 = p2bodydist Y = [-10,60]
trigger1 = random < var(38)*100

[State -1, Dash Back];バックステップ
type = ChangeState
value = 105
triggerall = var(38) && roundstate = 2
triggerall = Var(41) != 0
triggerall = stateno != [3,9]
triggerall = stateno != [10000,13000]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2statetype = L
trigger1 = p2bodydist X < 40
trigger1 = backedgebodydist > 10
trigger1 = random < var(38)*100

;--------------------------------
[State -1, crouch X];バニ
type = ChangeState
value = 8710
triggerall = var(38) && roundstate = 2
triggerall = var(41) = 2
trigger1 = movehit
trigger1 = hitdefattr = SC, NA
trigger1 = p2statetype != A
trigger1 = stateno = 8228
trigger1 = random < var(38)*100

[State -1, crouch X];しゃがみ弱パンチ
type = ChangeState
value = 8400
triggerall = var(38) && roundstate = 2
triggerall = var(41) = 2
triggerall = p2statetype = A
triggerall = p2movetype != H && (p2bodydist X = [-5,40]) || p2bodydist X = [-5,20]
triggerall = p2bodydist Y = [-50,0]
triggerall = random < var(38)*100
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2movetype != H || p2stateno = [154,155]
trigger1 = p2stateno != 8715
trigger2 = moveguarded
trigger2 = stateno=8400

[State -1, Stand back Y2];近強蹴り
type = ChangeState
value = 8226
triggerall = var(38) && roundstate = 2
triggerall = p2bodydist x < 26
triggerall = var(41) = 2
triggerall = p2statetype != L
triggerall = p2statetype = A || var(48) >= 33 || var(26) >= 2
triggerall = p2movetype = H
triggerall = p2bodydist X = [-5,60]
triggerall = p2bodydist Y = [-80,0]
triggerall = random < var(38)*100
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(54) < 2
trigger1 = p2stateno != 8715
trigger2 = stateno=8400 || stateno=8420
trigger2 = movehit

[State -1, crouch Y];しゃがみ弱keri
type = ChangeState
value = 8420
triggerall = var(38) && roundstate = 2
triggerall = var(41) = 2
triggerall = p2statetype != A && p2statetype != L
triggerall = p2movetype != H && (p2bodydist X = [-5,50]) || p2bodydist X = [-5,40]
triggerall = p2stateno != [152,153]
triggerall = random < var(38)*100
trigger1 = statetype != A
trigger1 = ctrl || stateno = 8420 && time >= 6
trigger2 = movecontact
trigger2 = stateno=8400

[State -1, Stand back Y2];遠強蹴り
type = ChangeState
value = 8228
triggerall = var(38) && roundstate = 2
triggerall = var(41) = 2
triggerall = random < var(38)*100
trigger1 = p2bodydist x >= 26
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(54) < 2
trigger1 = p2statetype = A
trigger1 = p2bodydist X = [26,65]
trigger1 = p2bodydist Y = [-90,0]
trigger1 = prevstateno != 8228
trigger1 = p2stateno != 8715
trigger2 = stateno = 8226 || stateno=8420 && movehit
trigger2 = movecontact
trigger2 = p2statetype = A || var(48) >= 33 || var(26) >= 2

;--------------------------------
[State -1, crouch Y];しゃがみ強キック
type = ChangeState
value = 8430
triggerall = var(38) && roundstate = 2
triggerall = var(41) = 2
triggerall = p2bodydist X = [-5,60]
triggerall = p2movetype != H || p2bodydist X < 60
triggerall = random < var(38)*100
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2statetype != L
trigger1 = p2statetype != A || var(54) = 3
trigger1 = p2stateno != [152,153]
trigger2 = movehit
trigger2 = stateno=8420

;---------------------------------
[State -1, Air X];空中弱パンチ
type = ChangeState
value = 8600
triggerall = var(38) && roundstate = 2
triggerall = var(41) = 2
triggerall = (p2bodydist X = [-5,30]) || stateno = 234 && p2bodydist X = [-5,60]
triggerall = p2bodydist Y = [-70,50]
triggerall = random < var(38)*100
trigger1 = statetype = A
trigger1 = ctrl || stateno=8600 && time >= 12
trigger1 = p2statetype != L
trigger1 = p2statetype = A || vel Y > 0 || stateno = 234
trigger1 = !var(54)
trigger2 = movecontact
trigger2 = stateno=8620
trigger2 = var(57) = 1

[State -1, Air y];空中弱kiｃk
type = ChangeState
value = 8620
triggerall = var(38) && roundstate = 2
triggerall = var(41) = 2
triggerall = p2statetype != L
triggerall = p2bodydist X < 50 || stateno = 234 && p2bodydist X < 80
triggerall = p2bodydist Y = [-50,90]
triggerall = random < var(38)*100
trigger1 = statetype = A
trigger1 = ctrl || stateno=8620 && time >= 12
trigger1 = p2statetype != L
trigger1 = p2statetype = A || vel Y > 0 || stateno = 234
trigger1 = !var(54)
trigger2 = movecontact
trigger2 = stateno=8600

[State -1, Air y];空中強パンチ
type = ChangeState
value = 8610
triggerall = var(38) && roundstate = 2
triggerall = var(41) = 2
triggerall = p2statetype != L
triggerall = p2bodydist X = [-5,30]
triggerall = p2bodydist Y = [-60,40]
triggerall = random < var(38)*100
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = !var(54) || vel Y > 0 || stateno = 234 && time > 5
trigger1 = p2statetype != L
trigger1 = p2statetype = A || vel Y > 0 || stateno = 234
trigger2 = movecontact
trigger2 = stateno=8620

[State -1, Air y];空中強機kk
type = ChangeState
value = 8630
triggerall = var(38) && roundstate = 2
triggerall = var(41) = 2
triggerall = p2statetype != L
triggerall = (p2bodydist X = [-5,70]) || stateno = 234 && p2bodydist X = [-5,100]
triggerall = p2bodydist Y = [-80,50]
triggerall = random < var(38)*100
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2statetype != L
trigger1 = p2statetype = A || vel Y > 0 || stateno = 234
trigger1 = !var(54) || vel Y > 0 || stateno = 234 && time > 5
trigger2 = movecontact
trigger2 = stateno=8600 || stateno=8610 || stateno=8620

;---------------------------------------------------------------------------
[State -2, BOOST]
type = Helper
triggerall = var(38) && roundstate = 2
triggerall = var(41) = 2
triggerall = movetype != H
triggerall = !Numhelper(2990) && !Numhelper(2996)
triggerall = var(48) >= 33 || var(26) >= 2
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2movetype = H
triggerall = random < var(38)*100
trigger1 = ctrl
trigger1 = p2stateno = 8715
trigger2 = stateno = 8228
trigger2 = p2statetype != A && p2statetype != L
trigger2 = movehit
trigger3 = stateno = 1027 || stateno = 1051
trigger3 = movehit
trigger4 = var(24) = 7
trigger4 = stateno = 1010 || stateno = 1015
trigger4 = movehit
helpertype = normal
name = "boost"
pos = 0,0
stateno = 2990
ownpal = 1
id = 2990
keyctrl = 0

[State -3,AI用]
type = VarSet
trigger1 = var(38) && stateno = 40
trigger1 = prevstateno = 1000
trigger1 = random < var(38)*100
sysvar(1) = 1

[State -3,AI用]
type = changestate
trigger1 = var(38) && stateno = 40
trigger1 = p2statetype != L && p2movetype = H && p2stateno != [150,155]
trigger1 = prevstateno != 1000
trigger1 = random < var(38)*100
value = 0
ctrl = 1
