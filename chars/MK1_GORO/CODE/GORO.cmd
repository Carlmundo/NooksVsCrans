;-| Button Remapping |----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------


[Command]
name = "Fatality1"
command = ~B,B,F,D,B+x
time = 40

[Command]
name = "Fatality1"
command = ~B,B,F,D,B,x
time = 40

[Command]
name = "Fatality2"
command = ~F,F,B,D,F+y
time = 40

[Command]
name = "Fatality2"
command = ~F,F,B,D,F,y
time = 40

[Command]
name = "Grab&Pound"
command = ~F,F,+y
time = 20

[Command]
name = "Grab&Pound"
command = ~F,F,y
time = 20

[Command]
name = "FireBall"
command = ~B,B,B+x
time = 30

[Command]
name = "FireBall"
command = ~B,B,B,x
time = 30

[Command]
name = "Stomp"
command = ~B,F,D+b
time = 30

[Command]
name = "Stomp"
command = ~B,F,D,b
time = 30

[Command]
name = "RunFWD"
command = ~F,F, a
time = 20

[Command]
name = "Guarding"
command = /z
time = 1

[Command]
name = "Taunt1"
command = D, D, a
time = 20

[Command]
name = "Taunt2"
command = D, D, b
time = 20

[Command]
name = "Teleport"
command = ~F,F,B+b
time = 30
[Command]
name = "Teleport"
command = ~F,F,B,b
time = 30

[Command]
name = "Spin"
command = ~B,B,F+b
time = 30

[Command]
name = "Spin"
command = ~B,B,F,b
time = 30


;-| Special Motions |------------------------------------------------------


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
command = x+y
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

;-| Single Button |---------------------------------------------------------
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

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
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

[StateDef -1]

;AI
[State -1, AI]
type = VarSet
triggerall = var(50) = 0
triggerall = RoundState = 2
triggerall = AIlevel != 0
trigger1 = 1
var(50) = 1

;===========================================================================
[State -2, NO-FATALITY]
type = Varset
triggerall = 1
trigger1 = p2name = "MOTARO" || enemy,name = "MOTARO" 
trigger2 = p2name = "KINTARO-BOSS" || enemy,name = "KINTARO-BOSS" 
trigger3 = p2name = "SHAO KAHN-BOSS" || enemy,name = "SHAO KAHN-BOSS"
trigger4 = enemy,AuthorName = "OMEGAPSYCHO-BOSS"
trigger5 = enemy,AuthorName = "OMEGAPSYCHO-MKSecret"
trigger6 = enemy,AuthorName = "OMEGAPSYCHO-MKBoss"
v = 58
value = 0

;FATALITY TIME
[State 10000, 1]
type = Helper
triggerall = 1
triggerall = NumHelper(7000) = 0
triggerall = RoundState = 2
triggerall = p2statetype != A
triggerall = P2Life <= 1
triggerall = P2StateNo != 49999
triggerall = RoundNo >1
triggerall = var(58) >= 1
triggerall = var(55) = 0
trigger1 = NumEnemy = 1
trigger1 = NumPartner = 0
ID = 7000 
stateno = 7000
pos = 160, -140
postype = left
helpertype = normal
name = "FINISH_HIM_MODE" 
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1
;FATALITY TIME (BACKUP)
[State 10000, 2]
type = Helper
triggerall = 1
triggerall = NumHelper(7001) = 0
triggerall = RoundState = 2
triggerall = p2statetype != A
triggerall = P2Life <= 1
triggerall = P2StateNo != 49999
triggerall = RoundNo >1
triggerall = var(58) >= 1
triggerall = var(55) = 0
trigger1 = NumEnemy = 1
trigger1 = NumPartner = 0
ID = 7001 
stateno = 7001
pos = 160, -140
postype = left
helpertype = normal
name = "FINISH_HIM_MODE_BACKUP" 
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1

; Guarding
[State -1, Guarding]
type = ChangeState
triggerall = var(40) = 0
triggerall = RoundState = 2
triggerall = stateno != 120
triggerall = stateno != 140
triggerall = ctrl
triggerall = statetype = S || statetype = C
trigger1 = command = "Guarding"
value = 120

;---------------------------------------------------------------------------
;Taunt 1
[State -1]
type = ChangeState
triggerall = var(40) = 0
triggerall = roundstate = 2
triggerall = command = "Taunt1"  
triggerall = statetype = S 
trigger1 = ctrl
value = 195

;Taunt 2
[State -1]
type = ChangeState
triggerall = var(40) = 0
triggerall = roundstate = 2
triggerall = command != "Stomp"
triggerall = command = "Taunt2"  
triggerall = statetype = S 
trigger1 = ctrl
value = 196

;STRONG PUNCH
[State -1,STRONG PUNCH]
type = ChangeState
triggerall = var(40) = 0
triggerall = RoundState = 2
triggerall = command = "y"
triggerall = command != "Grab&Pound"
triggerall = command != "Fatality2"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = Ctrl 
ignorehitpause = 1
value = 200
[State -1,STRONG PUNCH]
type = ChangeState
triggerall = var(40) = 0
triggerall = RoundState = 2
triggerall = command = "x"
triggerall = command != "FireBall"
triggerall = command != "Fatality1"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = p2bodydist x >= 20
trigger1 = Ctrl 
ignorehitpause = 1
value = 200

;STRONG KICK
[State -1,STRONG KICK]
type = ChangeState
triggerall = var(40) = 0
triggerall = RoundState = 2
triggerall = command = "a" || command = "b" 
triggerall = command != "Stomp"
triggerall = command != "Teleport"
triggerall = command != "Spin"
triggerall = command != "RunFWD"
triggerall = statetype != A
trigger1 = Ctrl 
ignorehitpause = 1
value = 250

;UPPERCUT
[State -1,UPPERCUT]
type = ChangeState
triggerall = var(40) = 0
triggerall = RoundState = 2
triggerall = command = "x" || command = "y" 
triggerall = command = "holddown"
triggerall = command != "Fatality2"
triggerall = command != "Grab&Pound"
triggerall = statetype != A
trigger1 = Ctrl 
ignorehitpause = 1
value = 300

;TELEPORT
[State -1,TELEPORT]
type = ChangeState
triggerall = var(40) = 0
triggerall = RoundState = 2
triggerall = command = "Teleport"
triggerall = command != "Spin"
triggerall = command != "Stomp"
triggerall = Vel Y = 0
triggerall = statetype != A
trigger1 = Ctrl 
ignorehitpause = 1
value = 350

;STOMP
[State -1,STOMP]
type = ChangeState
triggerall = var(40) = 0
triggerall = RoundState = 2
triggerall = command = "Stomp"
triggerall = statetype != A
trigger1 = Ctrl 
ignorehitpause = 1
value = 370

;RUN JUMP FWD
[State -1,RUN JUMP FWD]
type = ChangeState
triggerall = var(40) = 0
triggerall = RoundState = 2
triggerall = command = "RunFWD"
triggerall = statetype != A
trigger1 = Ctrl 
trigger2 = stateno = 200
trigger2 = movehit
trigger3 = stateno = 250
trigger3 = movehit
trigger4 = stateno = 300
trigger4 = movehit &&  time > 25
ignorehitpause = 1
value = 390

;FIREBALL
[State -1,FIREBALL]
type = ChangeState
triggerall = var(40) = 0
triggerall = RoundState = 2
triggerall = command = "FireBall"
triggerall = command != "Grab&Pound"
triggerall = command != "Fatality1"
triggerall = statetype != A
trigger1 = Ctrl 
ignorehitpause = 1
value = 500

;GRAB & POUND
[State -1,GRAB & POUND]
type = ChangeState
triggerall = var(40) = 0
triggerall = RoundState = 2
triggerall = command = "Grab&Pound"
triggerall = command != "Fatality2"
triggerall = statetype != A
trigger1 = Ctrl 
ignorehitpause = 1
value = 600

;THROW
[State -1,THROW]
type = ChangeState
triggerall = var(40) = 0
triggerall = RoundState = 2
triggerall = command = "holdfwd"
triggerall = command = "x"
triggerall = command != "FireBall"
triggerall = command != "Fatality1"
triggerall = statetype != A
triggerall = p2bodydist x < 20
trigger1 = Ctrl 
ignorehitpause = 1
value = 700

;TWIRL SPIN
[State -1,TWIRL SPIN]
type = ChangeState
triggerall = var(40) = 0
triggerall = RoundState = 2
triggerall = command != "Teleport"
triggerall = command = "Spin"
triggerall = statetype != A
trigger1 = Ctrl 
ignorehitpause = 1
value = 650

;===========================================================================
;FATALITY # 1
[State -1, FATALITY # 1]
type = ChangeState
triggerall = var(40) = 0
triggerall = P2Dist X < 250
triggerall = var(55) >= 1
triggerall = RoundState = 2
triggerall = p2stateno = 49999
triggerall = command = "Fatality1"
triggerall = statetype != A
trigger1 = Ctrl 
trigger2 = stateno = 130
trigger3 = stateno = 131
ignorehitpause = 1
value = 1000

;FATALITY # 2
[State -1, FATALITY # 2]
type = ChangeState
triggerall = var(40) = 0
triggerall = P2Dist X < 250
triggerall = var(55) >= 1
triggerall = RoundState = 2
triggerall = p2stateno = 49999
triggerall = command = "Fatality2"
triggerall = statetype != A
trigger1 = Ctrl 
trigger2 = stateno = 130
trigger3 = stateno = 131
ignorehitpause = 1
value = 2000








































;****************************************************************************
;****************************************************************************
;***************************A.I.*********************************************
;****************************************************************************
;****************************************************************************
; Guarding
[State -1, Guarding]
type = ChangeState
triggerall = var(40) = 1
triggerall = RoundState = 2
triggerall = life>1
triggerall = stateno != [5100,5150]
triggerall = NumHelper(7000) = 0
triggeral = P2StateNo != 49999
triggerall = Movetype = I
triggerall = p2Movetype != I || enemynear,movetype != I
triggerall = p2Movetype = A || enemynear,movetype = A
triggerall = p2Statetype != C
triggerall = stateno != 120
triggerall = stateno != 131
triggerall = stateno != 140
triggerall = stateno != 25
triggerall = ctrl
triggerall = statetype != A
trigger1 = P2Dist X <200
trigger1 = p2movetype = A
trigger1 = p2statetype = S
trigger2 = enemy, NumProj >= 1
trigger2 = P2Dist X <=120
trigger2 = statetype = S
trigger3 = P2Dist X <20
trigger3 = p2movetype = A
trigger3 = p2statetype = S
trigger4 = enemy, NumProj >= 1
trigger4 = Random <=500
trigger4 = P2Dist X >=100
trigger4 = statetype = S
ignorehitpause = 1
value = 120

; Crouch Guarding
[State -1, Guarding]
type = ChangeState
triggerall = var(40) = 1
triggerall = RoundState = 2
triggerall = life>1
triggerall = stateno != [5100,5150]
triggerall = NumHelper(7000) = 0
triggeral = P2StateNo != 49999
triggerall = p2Movetype != I || enemynear,movetype != I
triggerall = p2Movetype = A || enemynear,movetype = A
triggerall = p2Statetype != S
triggerall = stateno != 120
triggerall = stateno != 130
triggerall = stateno != 140
triggerall = stateno != 25
triggerall = ctrl
triggerall = statetype != A
trigger1 = P2Dist X <200
trigger1 = p2movetype = A
trigger1 = p2statetype = C
trigger2 = enemy, NumProj >= 1
trigger2 = P2Dist X <=120
trigger2 = statetype = C
trigger3 = P2Dist X <20
trigger3 = p2movetype = A
trigger3 = p2statetype = C
trigger4 = enemy, NumProj >= 1
trigger4 = Random <=500
trigger4 = P2Dist X >=100
trigger4 = statetype = C
ignorehitpause = 1
value = 131

;THROW AI
[State -1,THROW]
type = ChangeState
triggerall = var(40) = 1
triggerall = RoundState = 2
triggerall = Random < AILevel*12
triggerall = p2bodydist x < 20
triggerall = life>1
triggerall = stateno != [5100,5150]
triggerall = movetype = I
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = p2statetype != A
triggerall = p2movetype != H
trigger1 = Ctrl || stateno = [120,140]
ignorehitpause = 1
value = ifelse(random<620,700,600)

;UPPERCUT
[State -1,UPPERCUT]
type = ChangeState
triggerall = var(40) = 1
triggerall = RoundState = 2
triggerall = Random < AILevel*12
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = Ctrl || stateno = [120,140]
triggerall = life>1
triggerall = stateno != [5100,5150]
triggerall = p2stateno != [5100,5150]
trigger1 = p2bodydist x = [0,30]
trigger1 = p2statetype != C
trigger1 = p2movetype = A
trigger1 = statetype = C
trigger2= p2statetype = A
trigger2 = p2bodydist X <40
trigger2 = p2bodydist Y >-120
trigger2 = enemynear,Vel X >0
trigger3 = p2statetype = A
trigger3 = p2bodydist X <40
trigger3 = p2bodydist Y >-140
trigger3 = enemynear,Vel X >0
trigger4 = p2statetype = A
trigger4 = p2bodydist X <40
trigger4 = enemynear,Vel X <=0
trigger5 = P2Dist X <20
trigger5 = p2stateno = 345
ignorehitpause = 1
value = 300

;KICK
[State -1,KICK ]
type = ChangeState
triggerall = var(40) = 1
triggerall = life>1
triggerall = RoundState = 2
triggerall = Random < AILevel*12
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2statetype = S
triggerall = p2life>1
triggerall = p2statetype != L
triggerall = stateno != [5100,5150]
triggerall = P2stateno != [5100,5150]
triggerall = p2bodydist x <= 40
trigger1= Ctrl
trigger1 = P2stateno = [120,140]
trigger2 = Ctrl
trigger2 = enemynear,Vel X = 0
trigger2 = p2movetype != A
trigger3 = Ctrl
trigger3 = enemynear,Vel X < 0
trigger3 = p2movetype = I
trigger4 = Ctrl
trigger4 = p2movetype = A
trigger4 = enemynear,hitdefattr = SCA,SA,SP,HA,HP
trigger5 = stateno = [120,140]
trigger5 = p2movetype = I
ignorehitpause = 1
value = 250

;PUNCH
[State -1,PUNCH]
type = ChangeState
triggerall = var(40) = 1
triggerall = Random < AILevel*12
triggerall = life>1
triggerall = RoundState = 2
triggerall = statetype = S
triggerall = p2bodydist x >= 10
triggerall = Ctrl || stateno = [120,140]
triggerall = p2statetype != L
triggerall = p2bodydist x = [0,60]
triggerall = movetype = I
trigger1 = p2movetype = I
trigger1 = p2statetype != A
trigger1 = Random <300
trigger2 = enemynear, Stateno = [5030,5050]
trigger2 = enemynear, Pos y >-120
trigger3 = p2statetype = A
trigger3 = p2movetype != A
trigger3 = enemynear, Vel x = 0
trigger3 = enemynear, Pos y >-120
ignorehitpause = 1
value = 200
;PUNCH
[State -1,PUNCH]
type = ChangeState
triggerall = var(40) = 1
triggerall = life>1
triggerall = Random < AILevel*12
triggerall = RoundState = 2
triggerall = statetype = S
triggerall = p2bodydist x >= 10
triggerall = Ctrl || stateno = [120,140]
triggerall = p2statetype != L
triggerall = p2statetype != A
triggerall = p2bodydist x = [0,70]
triggerall = movetype = I
trigger1 = p2movetype = I
trigger1 = p2statetype != A
trigger2 = enemynear, Stateno = [5030,5050]
trigger2 = enemynear, Pos y <=-120
trigger3 = p2statetype = A
trigger3 = p2movetype = A
trigger3 = enemynear, Vel x = 0
trigger3 = enemynear, Pos y <=-120
ignorehitpause = 1
value = 200

;RUN JUMP FWD
[State -1,RUN JUMP FWD]
type = ChangeState
triggerall = var(40) = 1
triggerall = life>1
triggerall = Random < AILevel*10
triggerall = RoundState = 2
triggerall = stateno != [600,602]
triggerall = stateno != [700,702]
triggerall = statetype != A
triggerall = Ctrl || stateno = 130 || stateno = 131 || stateno = 140
trigger1 = P2Dist X >150
trigger1 = P2statetype = A
trigger1 = enemynear, Vel x <0
trigger2 = enemy, NumProj >= 1
trigger2 = P2Dist X >100
ignorehitpause = 1
value = 390

;FIREBALL
[State -1,FIREBALL]
type = ChangeState
triggerall = var(40) = 1
triggerall = NumHelper(396)= 0
triggerall = NumProjID(397)= 0
triggerall = stateno !=500
triggerall = RoundState = 2
triggerall = Random < AILevel*12
triggerall = p2name != "MOTARO"
triggerall = p2name != "JADE MK2"
triggerall = life>1
triggerall = statetype != A
triggerall = statetype != L
trigger1       = Ctrl
trigger1       = p2movetype = A
trigger1       = p2statetype = A
trigger1       = enemynear,vel x <=0
trigger1       = p2bodydist X > 80
trigger1       = p2bodydist Y >-120
trigger2       = Ctrl
trigger2       = enemynear, Stateno = 50
trigger2       = enemynear, anim = 43 || enemynear, anim = 41
trigger2       = p2bodydist X > 180
trigger2       = p2bodydist Y >-120
trigger3       = Ctrl
trigger3       = enemynear,vel x = 0
trigger3       = p2bodydist X > 190
trigger3       = p2movetype = A
trigger3       = p2statetype != A
trigger3       = enemy, NumProj =0
trigger3       = random <= 400 
trigger4       = Ctrl
trigger4       = enemynear,vel x <0
trigger4       = enemynear, Stateno = [5030,5050]
trigger4       = p2bodydist X > 100
trigger4      = random <=400 
trigger5       = Ctrl || stateno = [120,140]
trigger5       = p2movetype = A
trigger5       = p2bodydist X > 100
trigger6       = Ctrl
trigger6       = enemynear,vel x = 0
trigger6       = p2bodydist X > 250
trigger6       = enemy, NumProj >=1
trigger6       = random <= 200 
trigger7       = Ctrl
trigger7       = P2stateno = [123456,123458]
ignorehitpause = 1
value = 500


;TELEPORT
[State -1,TELEPORT]
type = ChangeState
triggerall = var(40) = 1
triggerall = life>1
triggerall = Random < AILevel *8
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = Ctrl || stateno = [120,140]
triggerall = stateno != 40
triggerall = stateno != 45
triggerall = stateno != 50
triggerall = stateno != 51
triggerall = stateno != 52
trigger1 = enemynear,stateno = 40
trigger2 = enemynear,stateno = 45
trigger3 = enemynear,stateno = 50
trigger4 = enemynear,stateno = 51
trigger5 = enemynear,stateno = 52
trigger6 = P2Dist X >100
trigger6 = P2statetype = A
trigger6 = P2movetype = A
trigger7 = enemy, NumProj >= 1
trigger7 = P2Dist X >100
ignorehitpause = 1
value = 350

;TWIRL SPIN
[State -1,TWIRL SPIN]
type = ChangeState
triggerall = var(40) = 1
triggerall = stateno !=210
triggerall = RoundState = 2
triggerall = Random < AILevel*11
triggerall = life>1
triggerall = statetype != A
triggerall = statetype != L
triggerall = p2statetype != L
triggerall = enemy, NumProj = 0
trigger1       = Ctrl
trigger1       = enemynear,pos y <-120
trigger1       = p2bodydist X > 40
trigger1       = p2bodydist X < 100
trigger1       = p2statetype = A
trigger2       = P2Dist X <100
trigger2       = BackEdgeDist < 40
trigger2       = Ctrl || stateno = 130 || stateno = 131 || stateno = 140
trigger3       = Ctrl
trigger3       = p2bodydist Y <-130 
trigger3       = p2stateno = [5020,5045]
ignorehitpause = 1
value = 650

;GRAB & POUND
[State -1,GRAB & POUND ]
type = ChangeState
triggerall = var(40) = 1
triggerall = RoundState = 2
triggerall = Random < AILevel*12
triggerall = life>1
triggerall = statetype != A
triggerall = statetype != L
triggerall = p2statetype != L
triggerall = enemy, NumProj = 0
trigger1       = p2movetype = A
trigger1       = p2statetype = C
trigger1       = enemynear,vel x = 0
trigger1       = p2bodydist X < 100
trigger1      = random <= 400 
trigger2       = enemynear, Stateno = 11
trigger2       = enemynear, anim = 11
trigger2      = random <= 400 
trigger2       = p2bodydist X < 100
trigger3       = enemynear,vel x <0
trigger3       = p2bodydist X < 100
trigger3       = p2movetype = H
trigger3       = p2statetype != A
trigger3       = random <= 400 
ignorehitpause = 1
value = 600
;GRAB & POUND
[State -1,GRAB & POUND ]
type = ChangeState
triggerall = var(40) = 1
triggerall = stateno !=210
triggerall = RoundState = 2
triggerall = Random < AILevel *11
triggerall = statetype != A
triggerall = Ctrl || stateno = [120,140]
triggerall = p2bodydist x = [0,100]
trigger1 = p2statetype = S
trigger1 = p2movetype = H
trigger2 = p2statetype =S
trigger2 = p2stateno = [120,140]
trigger3 = p2statetype = S
trigger3 = p2movetype = A
trigger3 = enemynear,hitdefattr = SCA,NP,SP
trigger4 = p2statetype = S
trigger4= enemynear,Vel X <0
trigger4 = p2movetype = I
trigger5 = p2statetype = S
trigger5 = p2movetype = I
trigger5 = movetype = I
trigger5 = Random >800
ignorehitpause = 1
value = 600

;STOMP
[State -1,STOMP]
type = ChangeState
triggerall = var(40) = 1
triggerall = Random < AILevel*10
triggerall = life>1
triggerall = stateno != [600,602]
triggerall = stateno != [700,702]
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = Ctrl || stateno = 130 || stateno = 131 || stateno = 140
triggerall = p2bodydist X > 100
trigger1 = enemy, NumProj >= 1
trigger2 = p2movetype = A
trigger2 = p2statetype = A
trigger3 = P2Dist X >100
trigger3 = P2statetype = C
trigger3 = P2movetype != A
ignorehitpause = 1
value = ifelse(random<=800,370,ifelse(random>800,500,390))

;FATALITY GORO
[State -1, FATALITY]
type = ChangeState
triggerall = P2Dist X < 240
triggerall = var(40) = 1
triggerall = var(55) >= 1
triggerall = stateno !=210
triggerall = RoundState = 2
triggerall = Random < AILevel*10
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = movetype = I
triggerall = enemynear,stateno = 49999 || p2stateno = 49999 
trigger1 = Ctrl
value = ifelse(random<=500,1000,2000)