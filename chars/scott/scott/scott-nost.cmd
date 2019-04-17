;-| Super Motions |--------------------------------------------------------
;3 niveles
[Command]
name = "yeti"
command = ~D, DF, F, D, DF, F, z
time = 40

[Command]
name = "yeti"
command = ~D, DF, F, D, DF, F, c
time = 40

;2 niveles
[Command]
name = "double"
command = ~D, DF, F, c
time = 30

[Command]
name = "all"
command = ~D, DF, F, z
time = 30

;1 nivel
[Command]
name = "session"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "session"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "combo"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "combo"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "bomb"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "bomb"
command = ~D, DB, B, D, DB, B, y
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper1"
command = ~F, D, DF, x
time = 15

[Command]
name = "upper2"
command = ~F, D, DF, y
time = 15

[Command]
name = "punch1"
command = ~D, DF, F, x
time = 15

[Command]
name = "punch2"
command = ~D, DF, F, y
time = 15

[Command]
name = "bass1"
command = ~D, DF, F, a
time = 15

[Command]
name = "bass2"
command = ~D, DF, F, b
time = 15

[Command]
name = "rush1"
command = ~D, DB, B, x
time = 15

[Command]
name = "rush2"
command = ~D, DB, B, y
time = 15

[Command]
name = "tatsu1"
command = ~D, DB, B, a
time = 15

[Command]
name = "tatsu2"
command = ~D, DB, B, b
time = 15

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
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------

;-| Single Button |---------------------------------------------------------
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
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

;---------------------------------------------------------------------------

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;LEVEL 3
;We are Sex Bob-Omb!!
[State -1, YETI]
type = ChangeState
value = 2500
triggerall = command = "yeti"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;LEVEL 2
;Double Trouble
[State -1, DT]
type = ChangeState
value = 2300
triggerall = command = "double"
triggerall = power >= 2000
triggerall = p2name != "Nega Scott"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = movecontact

;Running Wild
[State -1, RW]
type = ChangeState
value = 2400
triggerall = command = "all"
triggerall = power >= 2000
triggerall = NumHelper(1200) = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;LEVEL 1
;Multicombo
[State -1, MC]
type = ChangeState
value = 2000
triggerall = command = "combo"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = movecontact

;Bass Session
[State -1, BS]
type = ChangeState
value = 2100
triggerall = command = "session"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = movecontact

;Bomb Uppercut
[State -1, BU]
type = ChangeState
value = 2200
triggerall = command = "bomb"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;Striker: Stephen Stills
[State -1, ST3]
type = null;ChangeState
value = 1220
triggerall = command = "holddown" && command = "c"
triggerall = power >= 500
triggerall = NumHelper(1200) = 0
trigger1 = statetype != A
trigger1 = ctrl

;Striker: Knives Chau
[State -1, ST4]
type = null;ChangeState
value = 1230
triggerall = command = "holddown" && command = "z"
triggerall = power >= 500
triggerall = NumHelper(1200) = 0
trigger1 = statetype != A
trigger1 = ctrl

;Striker: Nega Scott
[State -1, ST5]
type = null;ChangeState
value = 1240
triggerall = command = "holdfwd" && command = "c"
triggerall = power >= 500
triggerall = NumHelper(1200) = 0
triggerall = p2name != "Nega Scott"
trigger1 = statetype != A
trigger1 = ctrl

;Striker: Wallace Wells
[State -1, ST6]
type = null;ChangeState
value = 1250
triggerall = command = "holdfwd" && command = "z"
triggerall = power >= 500
triggerall = NumHelper(1200) = 0
trigger1 = statetype != A
trigger1 = ctrl

;Striker: Ramona Flowers
[State -1, ST1]
type = null;ChangeState
value = 1200
triggerall = command = "z"
triggerall = power >= 500
triggerall = NumHelper(1200) = 0
trigger1 = statetype != A
trigger1 = ctrl

;Striker: Kim Pine
[State -1, ST2]
type = null;ChangeState
value = 1210
triggerall = command = "c"
triggerall = power >= 500
triggerall = NumHelper(1200) = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Fire Uppercut Debil
[State -1, FU1]
type = ChangeState
value = 1400
triggerall = command = "upper1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = movecontact

;Fire Uppercut Medio
[State -1, FU2]
type = ChangeState
value = 1450
triggerall = command = "upper2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = movecontact

;---------------------------------------------------------------------------
;Rushing Fist Debil
[State -1, RF1]
type = ChangeState
value = 1300
triggerall = command = "rush1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = movecontact

;Rushing Fist Medio
[State -1, RF2]
type = ChangeState
value = 1350
triggerall = command = "rush2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = movecontact

;---------------------------------------------------------------------------
;Multipunches Debil
[State -1, MP1]
type = ChangeState
value = 1000
triggerall = command = "punch1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = movecontact

;Multipunches Medio
[State -1, MP2]
type = ChangeState
value = 1050
triggerall = command = "punch2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = movecontact

;---------------------------------------------------------------------------
;Bass Playing Debil
[State -1, BP1]
type = ChangeState
value = 1100
triggerall = command = "bass1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = movecontact

;Bass Playing Medio
[State -1, BP2]
type = ChangeState
value = 1150
triggerall = command = "bass2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = movecontact

;---------------------------------------------------------------------------
;Hurricane Kick Debil
[State -1, HK1]
type = ChangeState
value = 1500
triggerall = command = "tatsu1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = movecontact

;Hurricane Kick Medio
[State -1, HK2]
type = ChangeState
value = 1550
triggerall = command = "tatsu2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;Running Attack 1
[State -1, RA1]
type = ChangeState
value = 300
triggerall = command = "x" || command = "y" 
triggerall = ctrl
triggerall = stateno = 100
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;Running Attack 2
[State -1, RA2]
type = ChangeState
value = 350
triggerall = command = "a" || command = "b" 
triggerall = ctrl
triggerall = stateno = 100
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Back Elbow
[State -1, BE]
type = ChangeState
value = 500
triggerall = command = "x" 
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = movecontact

;---------------------------------------------------------------------------
;Stomp
[State -1, BE]
type = ChangeState
value = 700
triggerall = command = "b" 
triggerall = ctrl
trigger1 = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Agarres
[State -1, Punches]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;Agarre 2
[State -1, Throw]
type = ChangeState
value = 850
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = roundstate = 2 && statetype = S
trigger1 = ctrl

; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = roundstate = 2 && statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Burla
[State -1, Burla 2]
type = ChangeState
value = 197
triggerall = command = "start" && command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Burla 1]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Golpe Debil Parado
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && movecontact

;---------------------------------------------------------------------------
; Golpe Fuerte Parado
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact

;---------------------------------------------------------------------------
; Patada Debil Parado
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact

;---------------------------------------------------------------------------
; Patada Fuerte Parado
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,230]) && movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Golpe Debil Agachado
[State -1]
type = ChangeState
value = 420
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Golpe Fuerte Agachado (upper)
[State -1]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Patada Debil Agachado
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Patada Fuerte Agachada (barrida)
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Golpe Debil Saltando
[State -1]
type = ChangeState
value = 620
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Golpe Fuerte Saltando
[State -1]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger2 = (stateno = 620) && movecontact

;---------------------------------------------------------------------------
; Patada Debil Saltando
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Patada Fuerte Saltando
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger2 = (stateno = 620) && movecontact
