;-| Super Motions |--------------------------------------------------------

; Code stuff - p1
[Command]
name = "konami1"
command = U, U, D, D, B, F, B, F, s
time = 90
; Code stuff - p2
[Command]
name = "konami2"
command = U, U, D, D, F, B, F, B, s
time = 90

; Code stuff - p1
[Command]
name = "reversekonami1"
command = s, F, B, F, B, D, D, U, U
time = 90
; Code stuff - p2
[Command]
name = "reversekonami2"
command = s, B, F, B, F, D, D, U, U
time = 90

; Code stuff - p1
[Command]
name = "draculax1"
command = B, B, F, F, s, s
time = 90
; Code stuff - p2
[Command]
name = "draculax2"
command = F, F, B, B, s, s
time = 90

;-| Special Motions |------------------------------------------------------
;-----------------

[Command]
name = "rdp"
command = ~B, D, DB, a

[Command]
name = "rdp"
command = ~B, D, DB, b

[Command]
name = "rdp"
command = ~B, D, DB, c
time = 20

[Command]
name = "rdp_x"
command = ~B, D, DB, x

[Command]
name = "rdp_y"
command = ~B, D, DB, y

[Command]
name = "rdp_z"
command = ~B, D, DB, z


[Command]
name = "dp_a"
command = ~F, D, DF, a

[Command]
name = "dp_b"
command = ~F, D, DF, b

[Command]
name = "dp_c"
command = ~F, D, DF, c
time = 20

[Command]
name = "dp_x"
command = ~F, D, DF, x

[Command]
name = "dp_y"
command = ~F, D, DF, y

[Command]
name = "dp_z"
command = ~F, D, DF, z

;-----------------

; QCF
[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

;-----------------

; QCB
[Command]
name = "QCB"
command = ~D, DB, B, a

[Command]
name = "QCB"
command = ~D, DB, B, b

[Command]
name = "QCB"
command = ~D, DB, B, c

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

;-----------------


;--------------------
;Charge_Down_up
[Command]
name = "chargedownup_a"
command = ~60$D, U, a
time = 10

[Command]
name = "chargedownup_b"
command = ~60$D, U, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10

;--------------------
;Charge_Back_fwd
[Command]
name = "backfwd_a"
command = ~30$B, F, a
time = 14

[Command]
name = "backfwd_b"
command = ~30$B, F, b
time = 14

[Command]
name = "backfwd_c"
command = ~30$D, U, c
time = 14

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "ax"
command = a+x
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1

;-| Single Button |---------------------------------------------------------

[Command]
name = "downup"
command = D, U, b
time = 10

[Command]
name = "taunt"
command = s
time = 1

[Command]
name = "abc"
command = a
time = 1

[Command]
name = "abc"
command = b
time = 1

[Command]
name = "abc"
command = c
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "hold_a";Required (do not remove)
command = /a
time = 1

[Command]
name = "hold_b";Required (do not remove)
command = /$b
time = 1

[Command]
name = "hold_c";Required (do not remove)
command = /$c
time = 1

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "upright"
command = UB
time = 1

[Command]
name = "upleft"
command = UF
time = 1

;---------------------------------------------------------------------------
[Statedef -1]

;===========================================================================

;---------------------------------------------------------------------------

; Cancel Jump
[State -1]
type = ChangeState
value = 201
trigger1 = command = "holdup"
trigger1 = statetype != A
trigger1 = ctrl = 1

; Lightning Shield
[State -1]
type = ChangeState
value = 1100
triggerall = NumHelper(510) = 0 && NumHelper(520) = 0
trigger1 = command = "x"
trigger1 = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1

; Water Shield
[State -1]
type = ChangeState
value = 1120
triggerall = NumHelper(510) = 0 && NumHelper(520) = 0
trigger1 = command = "y"
trigger1 = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1

;===========================================================================

; From Kyo
[State -1, 1]
type = Helper
trigger1 = Var(10) = 1
trigger1 = NumHelper(340) = 0
trigger1 = GameTime%4
helpertype = normal
name = "Heart Counter"
ID = 340
pos = 100, -0
postype = left
stateno = 340
keyctrl = 0
ownpal = 1

; From Kyo
[State -1, 1]
type = Helper
trigger1 = Var(10) = 2
trigger1 = NumHelper(341) = 0
trigger1 = GameTime%4
helpertype = normal
name = "Heart Counter"
ID = 341
pos = 100, -0
postype = left
stateno = 341
keyctrl = 0
ownpal = 1

; From Kyo
[State -1, 1]
type = Helper
trigger1 = Var(10) = 2
trigger1 = NumHelper(341) = 0
trigger1 = GameTime%4
helpertype = normal
name = "Heart Counter"
ID = 341
pos = 100, -0
postype = left
stateno = 341
keyctrl = 0
ownpal = 1

; Crouch B
[State -1]
type = ChangeState
value = 410
triggerall = statetype = C
triggerall = ctrl = 1
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"

; Stand_B
[State -1]
type = ChangeState
value = 40
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"

;---------------------------------------------------------------------------


