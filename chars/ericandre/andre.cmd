;===========================================================================
;Super Marvel vs. Capcom - Eternity of Heroes - Commands Template
;===========================================================================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

;---------------------------------------------------------------------------
;Hyper1

[Command]
name = "Hyper1"
command = D, D

[Command]
name = "Hyper1"
command = x+y+z

[Command]
name = "Hyper1"
command = ~D, DF, F, y+z

;---------------------------------------------------------------------------
;Hyper2

[Command]
name = "Hyper2"
command = ~D, DB, B, x+y

[Command]
name = "Hyper2"
command = x+c

[Command]
name = "Hyper2"
command = a+b

;---------------------------------------------------------------------------
;Hyper3

[Command]
name = "Hyper3"
command = ~D, DF, F, a+b

[Command]
name = "Hyper3"
command = ~D, DF, F, a+c

[Command]
name = "Hyper3"
command = ~D, DF, F, b+c

;---------------------------------------------------------------------------
;Hyper4

[Command]
name = "Hyper4"
command = ~D, DB, B, a+b

[Command]
name = "Hyper4"
command = ~D, DB, B, a+c

[Command]
name = "Hyper4"
command = ~D, DB, B, b+c

;---------------------------------------------------------------------------
;Specail1

[Command]
name = "Special1x"
command = ~D,DF,F, x

[Command]
name = "Special1y"
command = ~D,DF,F, y

[Command]
name = "Special1z"
command = ~D,DF,F, z

;-------------------------------------------------------------------------
;Special2

[Command]
name = "Special2x"
command = ~D,DB,B, x

[Command]
name = "Special2y"
command = ~D,DB,B,y

[Command]
name = "Special2z"
command = ~D,DB,B,z

;-------------------------------------------------------------------------
;Special3

[Command]
name = "Special3a"
command = ~D,DF,F, a

[Command]
name = "Special3b"
command = ~D,DF,F, b

[Command]
name = "Special3c"
command = ~D,DF,F, c

;---------------------------------------------------------------------------
;Specail4

[Command]
name = "Special4a"
command = ~D,DB,B, a

[Command]
name = "Special4b"
command = ~D,DB,B, b

[Command]
name = "Special4c"
command = ~D,DB,B, c

;---------------------------------------------------------------------------
;Double_Tap

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;---------------------------------------------------------------------------
;2/3 button combination

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5

;---------------------------------------------------------------------------
;Dir + button

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
name = "fwd_a"
command = /$F,a
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
name = "back_b"        ;Alternative button command
command = /$B,b
time = 1

[Command]
name = "back_c"        ;Alternative button command
command = /$B,c
time = 1

;---------------------------------------------------------------------------
;One button

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
name = "s"
command = s
time = 1

;---------------------------------------------------------------------------
;Hold button

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
name = "holdc"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
time = 1

;---------------------------------------------------------------------------
;Hold dir

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

[Command]
name = "SJ"
command = $D, $U

[Statedef -1]
;===========================================================================
;Artificial Intelligence
;===========================================================================

[State -1, AI Activation]
type = varset
triggerall = AILevel > 2
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = Random <= ((AILevel-2)*100)
v = 59
value = 1

[State -1, AI Deactivation]
type = varset
triggerall = AIlevel < 7
triggerall = var(59) = 1
trigger1 = Random > ((AILevel-2)*100)
trigger2 = roundstate != 2
v = 59
value = 0

[State -1, AI Forward Recovery Roll]
type = ChangeState
value = 890
triggerall = Var(59) = 1
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
triggerall = random <= 100
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, AI Backward Recovery Roll]
type = ChangeState
value = 895
triggerall =  Var(59) = 1
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
triggerall = random <= 100
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, AI Guard Push]
type = ChangeState
value = 890
triggerall = Var(59) = 1
triggerall = (StateType = S) && (StateType != L)
triggerall = P2life != 0
triggerall = random <= 100
trigger1 = StateNo = [150,153]
trigger1 = P2BodyDist X >= 71
trigger1 = Time >= 5

;--|-AI Defense-|-----------------------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 130

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 131

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 132

;--|-AI Combos-|------------------------------------------------------------
[State -1, Standing Chain End 1 (Finish Combo)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 220) && movecontact && random = [501,550]
value = 250

[State -1, Standing Chain End 1 (Finish Combo)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 240) && movecontact && random = [551,600]
value = 220

;Start Standing Chain Combo
[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = [210,211]) && movecontact
value = 240

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 230) && movecontact
value = IfElse(P2BodyDist X > 15,210,211)

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 200) && movecontact
value = 230

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random > 900)
value = 200
;End Standing Chain

;---------------------------------------------------------------------------
;Start Crouching Chain
[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype !=A)
trigger1 = AILevel < 3
trigger1 = (stateno = 440) && movecontact
value = 450

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype !=A)
trigger1 = AILevel >= 4
trigger1 = (stateno = 440) && movecontact
trigger2 = (stateno = 240) && (var(15)>0 || var(14) >0) && movecontact
trigger3 = (AILevel >= 6) && (var(13) = 1)
trigger3 = (stateno = 440) && (p2bodydist x <= 59)
value = 420

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype !=A)
trigger1 = AILevel >= 4
trigger1 = (stateno = 410) && movecontact
trigger2 = AILevel < 3
trigger2 = (stateno = 430) && movecontact
trigger3 = (AILevel >= 6) && (var(13) = 1) && (stateno != 440)
trigger3 = p2stateno = 5110 && (p2bodydist x <= 85)
value = 440

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype !=A)
trigger1 = AILevel >= 4
trigger1 = (stateno = 430) && movecontact
value = 410

[State -1, Alternate start for Easy AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = AILevel >= 4
trigger1 = (stateno = 400) && movecontact
trigger2 = p2stateno != 7600
trigger2 = (Ctrl) && (statetype = S)
trigger2 = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger2 = (p2bodydist x <= 40) && (random < 50)
trigger2 = AILevel < 3
value = 430

[State -1, Combo start for Med/Hard AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random < 100)
value = 400
;End Crouching Chain

[State -1,  Always superjump on launch]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = (random <= 900)
trigger1 = numexplod (6003) > 0
value = 7500

;---------------------------------------------------------------------------
;Start Air Chain
[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 5
trigger1 = (stateno = 640) && movecontact && (random = [0,500])
value = 650

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 5
trigger1 = (stateno = 640) && movecontact && (random = [501,999])
value = 620

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 5
trigger1 = (stateno = 610) && movecontact
value = 640

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 600) && movecontact
value = 610

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 600) && movecontact
value = 630

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = prevstateno != 600
trigger1 = (p2bodydist x <= 25) && (random <= 150)
trigger2 = (p2bodydist x <= 25) && (random <= 750) && (stateno = [7000,7100])
value = 600
;End Air Chain

[State -1, Followup jump attack with crouch hard kick]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = H) ;opponent has been hit
triggerall = AILevel >= 4
trigger1 = (p2bodydist X <= 25) ;close to opponent
trigger1 = Prevstateno = 50 ;falling from attack (which means the previous hit must have been an air attack)
trigger1 = (random <= 750) ;This will happen 75% of the time that the other triggers are true
value = 450

;-|-AI Special Attempt-|---------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [70,100])
trigger1 = (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
value = 1000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [170,200])
trigger1 = (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
value = 1010

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 45) && (prevstateno != 5120) && (p2statetype = A) && (statetype != A)
value = 1020

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 30) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 30) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1110

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger1 = stateno > 1200
value = 1200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger1 = stateno > 1200
value = 1210

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger1 = stateno > 1200
value = 1220

;-|-AI Hyper Attempt|---------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (power > 1500) && (numproj = 0) && (random = [0,300]) && (statetype != A)
value = 3300

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (power > 1500) && (numproj = 0) && (random = [0,300]) && (statetype != A)
value = 3200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (power > 1500) && (numproj = 0) && (random = [0,300]) && (statetype != A)
value = 3100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1500) && (numproj = 0) && (random = [0,300])
value = 3000

;===========================================================================
;Commands
;===========================================================================

[State -1, Dash Forward]
type = ChangeState
value = 100
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "FF"

[State -1, Jump Back]
type = ChangeState
value = 105
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "BB"

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = Command = "s"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

;--------------------------------------------------------------------------
[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = !Var(59)
triggerall = command = "Hyper1"
triggerall = power >= 1000 
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact
trigger3 = stateno = 3100

[State -1, Hyper1]
type = ChangeState
value = 3100
triggerall = !Var(59)
triggerall = command = "Hyper2"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact
trigger3 = stateno = 3100

[State -1, Hyper1]
type = ChangeState
triggerall = !Var(59)
value = 3200
triggerall = !Var(59)
triggerall = command = "Hyper3"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact
trigger3 = stateno = 3100

[State -1, Hyper1]
type = ChangeState
value = 3300
triggerall = !Var(59)
triggerall = command = "Hyper4"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact
trigger3 = stateno = 3100

;--------------------------------------------------------------------------
[State -1, Special1]
type = ChangeState
value = 1000
triggerall = !Var(59)
triggerall = command = "Special1x"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact

[State -1, Special1]
type = ChangeState
value = 1010
triggerall = !Var(59)
triggerall = command = "Special1y"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact

[State -1, Special1]
type = ChangeState
value = 1020
triggerall = !Var(59)
triggerall = command = "Special1z"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact

;--------------------------------------------------------------------------
[State -1, Special2]
type = ChangeState
value = 1100
triggerall = !Var(59)
triggerall = stateno < 3000
triggerall = command = "Special2x"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact

[State -1, Special2]
type = ChangeState
value = 1110
triggerall = !Var(59)
triggerall = stateno < 3000
triggerall = command = "Special2y"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact

[State -1, Special2]
type = ChangeState
value = 1120
triggerall = !Var(59)
triggerall = stateno < 3000
triggerall = command = "Special2z"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact

;--------------------------------------------------------------------------
[State -1, Special3]
type = ChangeState
value = 1200
triggerall = !Var(59)
triggerall = stateno < 3000
triggerall = command = "Special3a"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact

[State -1, Special3]
type = ChangeState
value = 1210
triggerall = !Var(59)
triggerall = stateno < 3000
triggerall = command = "Special3b"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact

[State -1, Special3]
type = ChangeState
value = 1220
triggerall = !Var(59)
triggerall = stateno < 3000
triggerall = command = "Special3c"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact

;--------------------------------------------------------------------------
[State -1, Special4]
type = ChangeState
value = 1300
triggerall = !Var(59)
triggerall = stateno < 3000
triggerall = command = "Special4a"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact

[State -1, Special4]
type = ChangeState
value = 1310
triggerall = !Var(59)
triggerall = stateno < 3000
triggerall = command = "Special4b"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact

[State -1, Special4]
type = ChangeState
value = 1320
triggerall = !Var(59)
triggerall = stateno < 3000
triggerall = command = "Special4c"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact

;--------------------------------------------------------------------------
[State -1, Light Kick]
type = ChangeState
value = 200
triggerall = !Var(59)
triggerall = Command = "x"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)

[State -1, Medium Kick]
type = ChangeState
value = IfElse(P2BodyDist X > 28,210,211)
triggerall = !Var(59)
triggerall = Command = "y"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && Movecontact
trigger3 = (StateNo = 230) && Movecontact

[State -1, Hard Kick]
type = ChangeState
value = IfElse(P2BodyDist X > 28,220,221)
triggerall = !Var(59)
triggerall = Command = "z"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && Movecontact
trigger3 = (StateNo = 230) && Movecontact
trigger4 = (StateNo = 210) && Movecontact
trigger5 = (StateNo = 211) && Movecontact
trigger6 = (StateNo = 240) && Movecontact
trigger7 = (StateNo = 241) && Movecontact

[State -1, Light Kick]
type = ChangeState
value = 230
triggerall = !Var(59)
triggerall = Command = "a"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (Stateno = 200) && Movecontact

[State -1, Medium Kick]
type = ChangeState
value = IfElse(P2BodyDist X > 28,240,241)
triggerall = !Var(59)
triggerall = Command = "b"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && Movecontact
trigger3 = (StateNo = 230) && Movecontact
trigger4 = (StateNo = 210) && Movecontact
trigger5 = (StateNo = 211) && Movecontact

[State -1, Hard Kick]
type = ChangeState
value = IfElse(P2BodyDist X > 28,250,251)
triggerall = !Var(59)
triggerall = Command = "c"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && Movecontact
trigger3 = (StateNo = 230) && Movecontact
trigger4 = (StateNo = 210) && Movecontact
trigger5 = (StateNo = 211) && Movecontact
trigger6 = (StateNo = 240) && Movecontact
trigger7 = (StateNo = 241) && Movecontact
trigger8 = (StateNo = 221) && Movecontact
trigger9 = (StateNo = 220) && Movecontact

;--------------------------------------------------------------------------
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = !Var(59)
triggerall = Command = "x"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && Movecontact
trigger3 = (StateNo = 230) && Movecontact

[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = !Var(59)
triggerall = Command = "y"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && Movecontact
trigger3 = (StateNo = 230) && Movecontact
trigger4 = (StateNo = 400) && Movecontact
trigger5 = (StateNo = 430) && Movecontact
trigger6 = (StateNo = 210) && Movecontact
trigger7 = (StateNo = 211) && Movecontact

[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = !Var(59)
triggerall = Command = "z"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && Movecontact
trigger3 = (StateNo = 230) && Movecontact
trigger4 = (StateNo = 400) && Movecontact
trigger5 = (StateNo = 430) && Movecontact
trigger6 = (StateNo = 210) && Movecontact
trigger7 = (StateNo = 211) && Movecontact
trigger8 = (StateNo = 240) && Movecontact
trigger9 = (StateNo = 241) && Movecontact
trigger10 = (StateNo = 220) && Movecontact
trigger11 = (StateNo = 221) && Movecontact
trigger12 = (StateNo = 410) && Movecontact
trigger13 = (StateNo = 440) && Movecontact

[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = !Var(59)
triggerall = Command = "a"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (Stateno = 200) && Movecontact
trigger3 = (Stateno = 230) && Movecontact
trigger4 = (Stateno = 400) && Movecontact

[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = !Var(59)
triggerall = Command = "b"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && Movecontact
trigger3 = (StateNo = 230) && Movecontact
trigger4 = (StateNo = 410) && Movecontact
trigger5 = (StateNo = 430) && Movecontact
trigger6 = (StateNo = 210) && Movecontact
trigger7 = (StateNo = 211) && Movecontact
trigger8 = (StateNo = 240) && Movecontact
trigger9 = (StateNo = 241) && Movecontact
trigger10 = (StateNo = 220) && Movecontact
trigger11 = (StateNo = 221) && Movecontact

[State -1, C Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = !Var(59)
triggerall = Command = "c"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && Movecontact
trigger3 = (StateNo = 230) && Movecontact
trigger4 = (StateNo = 400) && Movecontact
trigger5 = (StateNo = 430) && Movecontact
trigger6 = (StateNo = 210) && Movecontact
trigger7 = (StateNo = 211) && Movecontact
trigger8 = (StateNo = 250) && Movecontact
trigger9 = (StateNo = 251) && Movecontact
trigger10 = (StateNo = 420) && Movecontact
trigger11 = (StateNo = 421) && Movecontact
trigger12 = (StateNo = 410) && Movecontact
trigger13 = (StateNo = 440) && Movecontact

;--------------------------------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !Var(59)
triggerall = command = "x"
trigger1 = Statetype = A && ctrl

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !Var(59)
triggerall = command = "y"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && Movecontact
trigger3 = (StateNo = 630) && Movecontact

[State -1, Jump Hard Punch]
type = ChangeState
value = 620
triggerall = !Var(59)
triggerall = command = "z"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && Movecontact
trigger3 = (StateNo = 630) && Movecontact
trigger4 = (StateNo = 610) && Movecontact
trigger5 = (StateNo = 640) && Movecontact

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !Var(59)
triggerall = command = "a"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && Movecontact

[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !Var(59)
triggerall = command = "b"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && Movecontact
trigger3 = (StateNo = 610) && Movecontact
trigger4 = (StateNo = 620) && Movecontact
trigger5 = (StateNo = 630) && Movecontact

[State -1, Jump Hard Kick]
type = ChangeState
value = 650
triggerall = !Var(59)
triggerall = command = "c"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && Movecontact
trigger3 = (StateNo = 610) && Movecontact
trigger4 = (StateNo = 620) && Movecontact
trigger5 = (StateNo = 630) && Movecontact
trigger6 = (StateNo = 640) && Movecontact

;--------------------------------------------------------------------------
[State -1, Guard Push Stand]
type = ChangeState
value = 880
triggerall = !Var(59)
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push Crouch]
type = ChangeState
value = 881
triggerall = !Var(59)
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push Jump]
type = ChangeState
value = 882
triggerall = !Var(59)
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]

[State -1, Forward Recovery Roll]
type = ChangeState
value = 890
triggerall = !Var(59)
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, Backward Recovery Roll]
type = ChangeState
value = 895
triggerall = !Var(59)
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = !Var(59)
trigger1 = Command = "SJ"
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = Command = "holdup"
trigger2 = stateno = 420 && movehit
