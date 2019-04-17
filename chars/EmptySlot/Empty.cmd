
;-| Button Remapping |-----------------------------------------------------
[Remap]
a = a   ;»≠π•ª˜(«·)		Punch (Light)
b = b   ;Ω≈π•ª˜(«·)		Kick (Light)
c = c   ;Ãÿ ‚ƒ£ Ω		Special Mode action
x = x   ;»≠π•ª˜(÷ÿ)		Punch (Hard)
y = y   ;Ω≈π•ª˜(÷ÿ)		Kick (Hard)
z = z   ;Ãÿ ‚ƒ£ Ω«–ªª		Special Mode Change
s = s   ;ÃÙ–∆			Taunt

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 5

;-| AI TRIGGER |-----------------------------------------------------------
[Command]
name = "zzz"
command = z,z,z,z,z,z,z,z,z,z

;-| Omega Motions |--------------------------------------------------------
[Command]
name = "DFDB_b"
command = ~D, F, D, B, b
time = 30

;-| Potential Motions |--------------------------------------------------------
[Command]
name = "FDBF_a"
command = ~F, D, B, F, a
time = 30

[Command]
name = "DFDF_x"
command = ~D, F, D, F, x
time = 30

[Command]
name = "DFDF_y"
command = ~D, F, D, F, y
time = 30

;-| Super Motions |--------------------------------------------------------
[Command]
name = "DFDF_a"
command = ~D, F, D, F, a
time = 30

[Command]
name = "DFDF_b"
command = ~D, F, D, F, b
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "DF_a"
command = ~D, F, a

[Command]
name = "DF_b"
command = ~D, F, b

[Command]
name = "DF_c"
command = ~D, F, c

[Command]
name = "DF_x"
command = ~D, F, x

[Command]
name = "DF_y"
command = ~D, F, y

[Command]
name = "DB_a"
command = ~D, B, a

[Command]
name = "DB_b"
command = ~D, B, b

[Command]
name = "DB_x"
command = ~D, B, x

[Command]
name = "DB_y"
command = ~D, B, y

[Command]
name = "FDF_b"
command = ~F, D, F, b

[Command]
name = "FDF_y"
command = ~F, D, F, y

[Command]
name = "DU_a"
command = ~20$D, U, a

[Command]
name = "DU_x"
command = ~20$D, U, x

[Command]
name = "Circle_x"
command = ~B, D, F, U, x
time = 70

[Command]
name = "Circle_x"
command = ~D, F, U, B, x
time = 70

[Command]
name = "Circle_c"
command = ~F, U, B, D, x
time = 70

[Command]
name = "Circle_x"
command = ~U, B, D, F, x
time = 70

[Command]
name = "Circle_x"
command = ~F, D, B, U, x
time = 70

[Command]
name = "Circle_x"
command = ~D, B, U, F, x
time = 70

[Command]
name = "Circle_x"
command = ~B, U, F, D, x
time = 70

[Command]
name = "Circle_x"
command = ~U, F, D, B, x
time = 70

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "bx"
command = b+x
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "down"
command = /$D
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
name = "s"
command = s
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
name = "hold_ab"
command = /a+b
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

;===========================================================================
[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------
;Omega Burst (potential power)
[State -1]
type = ChangeState
value = 4500
triggerall = command = "DFDB_b"
triggerall = power >= 2000
triggerall = statetype = A
triggerall = life <= 30
trigger1 = ctrl
trigger2 = ( StateNo = [600, 699] ) && MoveHit		;Normal Attack Cancel
trigger3 = (StateNo = 161)				;Just Defence Cancel
trigger4 = var(7) = 1 && var(8) != 0			;Kof Burst Mode
trigger4 = StateNo = [1000,2999)			;Super Attack Cancel

;---------------------------------------------------------------------------
;Raging Storm (potential power)
[State -1]
type = ChangeState
value = 4000
triggerall = command = "DFDF_x"
triggerall = power >= 2000
triggerAll = statetype = S
trigger1 = ctrl
trigger2 = ( StateNo = [200, 499] ) && MoveHit		;Normal Attack Cancel
trigger2 = StateNo != 430				;Except a trip move
trigger3 = (StateNo = 160) || (StateNo = 162)		;Just Defence Cancel
trigger4 = (StateNo = 2000) || (StateNo = 2001)		;Special Attack Cancel
trigger5 = var(7) = 1 && var(8) != 0			;Kof Burst Mode
trigger5 = StateNo = [1000,2999)			;Super Attack Cancel

;Shinning Knuckle (potential power)
[State -1]
type = ChangeState
value = 4100
triggerall = command = "DFDF_y"
triggerall = power >= 2000
triggerAll = statetype = S
trigger1 = ctrl
trigger2 = ( StateNo = [200, 499] ) && MoveHit		;Normal Attack Cancel
trigger2 = StateNo != 430				;Except a trip move
trigger3 = (StateNo = 160) || (StateNo = 162)		;Just Defence Cancel
trigger4 = (StateNo = 2000) || (StateNo = 2001)		;Special Attack Cancel
trigger5 = var(7) = 1 && var(8) != 0			;Kof Burst Mode
trigger5 = StateNo = [1000,2999)			;Super Attack Cancel

;Neo Deadly Wave (potential power)
[State -1]
type = ChangeState
value = 4200
triggerall = command = "FDBF_a"
triggerall = power >= 2000
triggerAll = statetype = S
trigger1 = ctrl
trigger2 = ( StateNo = [200, 499] ) && MoveHit		;Normal Attack Cancel
trigger2 = StateNo != 430				;Except a trip move
trigger3 = (StateNo = 160) || (StateNo = 162)		;Just Defence Cancel
trigger4 = (StateNo = 2000) || (StateNo = 2001)		;Special Attack Cancel
trigger5 = var(7) = 1 && var(8) != 0			;Kof Burst Mode
trigger5 = StateNo = [1000,2999)			;Super Attack Cancel

;---------------------------------------------------------------------------
;Raging Storm (super power)
[State -1]
type = ChangeState
value = 3000
triggerall = command = "DFDF_a"
triggerall = power >= 1000
triggerAll = statetype = S
trigger1 = ctrl
trigger2 = ( StateNo = [200, 499] ) && MoveHit		;Normal Attack Cancel
trigger2 = StateNo != 430				;Except a trip move
trigger3 = (StateNo = 160) || (StateNo = 162)		;Just Defence Cancel
trigger4 = (StateNo = 2000) || (StateNo = 2001)		;Special Attack Cancel
trigger5 = var(7) = 1 && var(8) != 0			;Kof Burst Mode
trigger5 = StateNo = [1000,2999)			;Super Attack Cancel

;---------------------------------------------------------------------------
;Shinning Knuckle (super power)
[State -1]
type = ChangeState
value = 3100
triggerall = command = "DFDF_b"
triggerall = power >= 1000
triggerAll = statetype = S
trigger1 = ctrl
trigger2 = ( StateNo = [200, 499] ) && MoveHit		;Normal Attack Cancel
trigger2 = StateNo != 430				;Except a trip move
trigger3 = (StateNo = 160) || (StateNo = 162)		;Just Defence Cancel
trigger4 = (StateNo = 2000) || (StateNo = 2001)		;Special Attack Cancel
trigger5 = var(7) = 1 && var(8) != 0			;Kof Burst Mode
trigger5 = StateNo = [1000,2999)			;Super Attack Cancel

;===========================================================================
;---------------------------------------------------------------------------
;’Êø’Õ∂
[State -1]
type = ChangeState
value = 1090
triggerall = command = "Circle_x"
trigger1 = statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 47
trigger2 = ( StateNo = [200, 499] ) && MoveHit
trigger2 = StateNo != 430
trigger3 = (StateNo = 160) || (StateNo = 162)
trigger4 = (StateNo = 2000) || (StateNo = 2001)

;---------------------------------------------------------------------------
;Over Head Kick
[State -1]
type = ChangeState
value = 1080
triggerall = command = "xy" 
triggerall = var(2) = 2
trigger1 = statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 47
trigger2 = ( StateNo = [200, 499] ) && MoveHit
trigger2 = StateNo != 430
trigger3 = (StateNo = 160) || (StateNo = 162)
trigger4 = (StateNo = 2000) || (StateNo = 2001)

;---------------------------------------------------------------------------
;Rising Tackle(«ø)
[State -1]
type = ChangeState
value = 1071
triggerall = command = "DU_x"
trigger1 = StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 47
trigger2 = ( StateNo = [200, 499] ) && MoveHit
trigger2 = StateNo != 430
trigger3 = (StateNo = 160) || (StateNo = 162)
trigger4 = (StateNo = 2000) || (StateNo = 2001)

;---------------------------------------------------------------------------
;Rising Tackle(»ı)
[State -1]
type = ChangeState
value = 1070
triggerall = command = "DU_a"
trigger1 = statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 47
trigger2 = ( StateNo = [200, 499] ) && MoveHit
trigger2 = StateNo != 430
trigger3 = (StateNo = 160) || (StateNo = 162)
trigger4 = (StateNo = 2000) || (StateNo = 2001)

;---------------------------------------------------------------------------
;Crack Counter(œ¬∂Œ)
[State -1]
type = ChangeState
value = 1060
triggerall = command = "DF_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ( StateNo = [200, 499] ) && MoveHit
trigger2 = StateNo != 430
trigger3 = (StateNo = 160) || (StateNo = 162)
trigger4 = (StateNo = 2000) || (StateNo = 2001)

;---------------------------------------------------------------------------
;Crack Counter(…œ∂Œ)
[State -1]
type = ChangeState
value = 1050
triggerall = command = "DF_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ( StateNo = [200, 499] ) && MoveHit
trigger2 = StateNo != 430
trigger3 = (StateNo = 160) || (StateNo = 162)
trigger4 = (StateNo = 2000) || (StateNo = 2001)

;---------------------------------------------------------------------------
;Hard Edge(«ø)
[State -1]
type = ChangeState
value = 1040
triggerall = command = "DB_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ( StateNo = [200, 499] ) && MoveHit
trigger2 = StateNo != 430
trigger3 = (StateNo = 160) || (StateNo = 162)
trigger4 = (StateNo = 2000) || (StateNo = 2001)

;---------------------------------------------------------------------------
;Lazy Run (dodge)
[State -1]
type = ChangeState
value = 1034
triggerall = command = "DB_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ( StateNo = [200, 499] ) && MoveHit
trigger2 = StateNo != 430
trigger3 = (StateNo = 160) || (StateNo = 162)
trigger4 = (StateNo = 2000) || (StateNo = 2001)

;---------------------------------------------------------------------------
;Lazy Run (hit)
[State -1]
type = ChangeState
value = 1030
triggerall = command = "DB_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ( StateNo = [200, 499] ) && MoveHit
trigger2 = StateNo != 430
trigger3 = (StateNo = 160) || (StateNo = 162)
trigger4 = (StateNo = 2000) || (StateNo = 2001)

;---------------------------------------------------------------------------
;Hard Edge(»ı)
[State -1]
type = ChangeState
value = 1020
triggerall = command = "DB_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ( StateNo = [200, 499] ) && MoveHit
trigger2 = StateNo != 430
trigger3 = (StateNo = 160) || (StateNo = 162)
trigger4 = (StateNo = 2000) || (StateNo = 2001)

;---------------------------------------------------------------------------
;¡“∑Á»≠(«ø)
[State -1]
type = ChangeState
value = 1010
triggerall = command = "DF_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ( StateNo = [200, 499] ) && MoveHit
trigger2 = StateNo != 430
trigger3 = (StateNo = 160) || (StateNo = 162)
trigger4 = (StateNo = 2000) || (StateNo = 2001)

;---------------------------------------------------------------------------
;¡“∑Á»≠(»ı)
[State -1]
type = ChangeState
value = 1000
triggerall = command = "DF_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ( StateNo = [200, 499] ) && MoveHit
trigger2 = StateNo != 430
trigger3 = (StateNo = 160) || (StateNo = 162)
trigger4 = (StateNo = 2000) || (StateNo = 2001)

;===========================================================================
;---------------------------------------------------------------------------
;Special Attack 1
[State -1]
type = ChangeState
value = 2001
triggerall = command = "holddown"
triggerall = command = "ab" 
triggerall = var(2) = 2
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Special Attack 2
[State -1]
type = ChangeState
value = 2000
triggerall = command = "ab" 
triggerall = var(2) = 2
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Run Foward
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Step Back
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt (Normal)
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = Win = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt (GameOver 1)
[State -1]
type = ChangeState
value = 196
triggerall = command = "s"
triggerall = command = "holdfwd"
triggerall = Win = 1
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt (GameOver 2)
[State -1]
type = ChangeState
value = 197
triggerall = command = "s"
triggerall = command = "holdback"
triggerall = Win = 1
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Throw 1
[State -1]
type = ChangeState
value = 800
triggerall = p2bodydist X < 5
triggerall = statetype = S
triggerall = ctrl
triggerall = StateNo != 100
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
trigger1 = command = "holdfwd" && command = "x"

;Throw 2
[State -1]
type = ChangeState
value = 801
triggerall = p2bodydist X < 5
triggerall = statetype = S
triggerall = ctrl
triggerall = StateNo != 100
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
trigger1 = command = "holdfwd" && command = "y"
trigger1 = var(2) = 1
trigger2 = command = "holdback" && command = "x"
trigger2 = var(2) = 2

;---------------------------------------------------------------------------
;Dodge -Foward-
[State -1]
type = ChangeState
value = 900
triggerall = command = "ab" && command != "holdback"
triggerall = var(2) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 100

;---------------------------------------------------------------------------
;Dodge -Back-
[State -1]
type = ChangeState
value = 901
triggerall = command = "ab" && command = "holdback"
triggerall = var(2) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 100

;---------------------------------------------------------------------------
;Fade Action 1
[State -1]
type = ChangeState
value = 910
triggerall = command = "down_c"
triggerall = var(2) = 2
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Fade Action 2
[State -1]
type = ChangeState
value = 911
triggerall = command = "c"
triggerall = var(2) = 2
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = S
trigger2 = StateNo = [220,221]
trigger3 = var(5) = 1
trigger3 = statetype = S
trigger3 = StateNo = [220,221]
trigger3 = P2MoveType = H

;---------------------------------------------------------------------------
;Gather Power
[State -1]
type = ChangeState
value = 920
triggerall = command = "hold_c"
triggerall = movetype != H
triggerall = power < 3000
triggerall = var(2) = 1
triggerall = var(5) != 1
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Hyper Attack
[State -1]
type = ChangeState
value = 930
triggerall = command = "xy"
triggerall = var(2) = 1
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jumping Hyper Attack
[State -1]
type = ChangeState
value = 931
triggerall = command = "xy"
triggerall = var(2) = 1
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;KOF MODE Power Burst
[State -1]
type = ChangeState
value = 950
triggerall = command = "bx"
triggerall = movetype != H
triggerall = power >= 1000
triggerall = var(2) = 1
triggerall = var(7) = 0
triggerall = var(5) != 1
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;MOW MODE Power Burst
[State -1]
type = ChangeState
value = 951
triggerall = command = "bx"
triggerall = movetype != H
triggerall = power >= 1000
triggerall = var(2) = 2
triggerall = var(7) = 0
triggerall = var(5) != 1
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X >= 5
trigger1 = statetype = S
trigger1 = ctrl

;Stand Light Punch (Close)
[State -1]
type = ChangeState
value = 201
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X < 5
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = p2bodydist X >= 5
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = [200, 201]

;Stand Light Kick (Close)
[State -1]
type = ChangeState
value = 211
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist X < 5
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist X >= 5
trigger1 = statetype = S
trigger1 = ctrl

;Stand Strong Punch (Close)
[State -1]
type = ChangeState
value = 221
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist X < 5
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong Kick
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X >= 5
trigger1 = statetype = S
trigger1 = ctrl

;Stand Strong Kick (Close)
[State -1]
type = ChangeState
value = 231
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X < 5
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1]
type = ChangeState
value = 420
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = [200, 211]

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = [200, 211]

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 620 && MoveContact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1]
type = ChangeState
value = 620
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
