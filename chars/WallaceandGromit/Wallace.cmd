;---------------------------------------------------------------------------
;Artificial Intelligence
;---------------------------------------------------------------------------

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
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
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1
;-|-AI-|--------------------------------------------------------------------

[Command]
name = "AI_1"
command = D,D,D,F,F,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_2"
command = D,D,D,F,F,U,a+b+c+x+y+z
time = 1

[Command]
name = "AI_3"
command = D,D,D,F,F,UF,a+b+c+x+y+z
time = 1

[Command]
name = "AI_4"
command = D,D,D,F,F,D,a+b+c+x+y+z
time = 1

[Command]
name = "AI_5"
command = D,D,D,F,F,DF,a+b+c+x+y+z
time = 1

[Command]
name = "AI_6"
command = D,D,D,F,F,B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_7"
command = D,D,D,F,F,DB,a+b+c+x+y+z
time = 1

[Command]
name = "AI_8"
command = D,D,D,F,F,UB,a+b+c+x+y+z
time = 1

[Command]
name = "AI_9"
command = D,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_10"
command = D,D,D,F,UF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_11"
command = D,D,D,F,DF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_12"
command = D,D,D,F,D,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_13"
command = D,D,D,F,DB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_14"
command = D,D,D,F,B,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_15"
command = D,D,D,F,UB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_16"
command = D,D,D,F,F,F,a+b+c+x+y,z
time = 1

[Command]
name = "AI_17"
command = D,D,D,F,F,F,a+b+c+x,y,z
time = 1

[Command]
name = "AI_18"
command = D,D,D,F,F,F,a+b+c,x,y,z
time = 1

[Command]
name = "AI_19"
command = D,D,D,F,F,F,a+b,c,x,y,z
time = 1
;-| Super Motions |--------------------------------------------------------
[Command]
name = "Turnip Gun"
command = ~D, DB, B, a+b
time = 30

[Command]
name = "Porridge"
command = ~D, DF, F, x+y
time = 30

[Command]
name = "Rabbit Rampage"
command = ~D, DF, F, z+c
time = 30

[command]
name = "Were-Rabbit Transform"
command = ~D, DB, B, b+c
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "FF_XY"
command = F, F, x+y
time = 15

[Command]
name = "FF_X"
command = F, F, x
time = 15

[Command]
name = "FF_Y"
command = F, F, y
time = 20

[command]
name = "Techno Trousers"
command = ~D, DB, B, x
time = 15

[command]
name = "Techno Trousers2"
command = ~D, DB, B, y
time = 15

[command]
name = "Techno Trousers3"
command = ~D, DB, B, z
time = 20

[command]
name = "Anvil"
command = ~D, F, x
time = 15

[command]
name = "Cheese"
command = ~D, DF, F, a
time = 20

[command]
name = "Gromit"
command = ~D, DB, B, x
time = 10

[command]
name = "Penguin"
command = ~D, DB, B, a
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

[Command]
name = "DU"
command = D, $U
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
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
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1


[Statedef -1]
;-|-AI-|--------------------------------------------------------------------
[State -1]
type = VarSet
trigger1 = command = "AI_1"
trigger2 = command = "AI_2"
trigger3 = command = "AI_3"
trigger4 = command = "AI_4"
trigger5 = command = "AI_5"
trigger6 = command = "AI_6"
trigger7 = command = "AI_7"
trigger8 = command = "AI_8"
trigger9 = command = "AI_9"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
trigger13 = command = "AI_13"
trigger14 = command = "AI_14"
trigger15 = command = "AI_15"
trigger16 = command = "AI_16"
trigger17 = command = "AI_17"
trigger18 = command = "AI_18"
trigger19 = command = "AI_19"
v = 59
value = 1

;--|-AI Defense-|-----------------------------------------------------------
;Thanks to BBH for guard AI
[State -1, Stand guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = ctrl
value = 130

[State -1, S-to-C guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = stateno = 150
value = 152

[State -1, Crouch guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = ctrl
trigger2 = random > 979
value = 131

[State -1]
type = ChangeState
value = 0
triggerall = Var(7) = 1
triggerall = Win = 1
trigger1 = statetype != A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 200
trigger1 = RoundState = 2 && Var(59) != 0
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl

[State -1]
type = ChangeState
value = 210
trigger1 = RoundState = 2 && Var(59) != 0
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl

[State -1]
type = ChangeState
value = 230
trigger1 = RoundState = 2 && Var(59) != 0
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl

[State -1]
type = ChangeState
value = 240
trigger1 = RoundState = 2 && Var(59) != 0
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl

[State -1]
type = ChangeState
value = 400
trigger1 = RoundState = 2 && Var(59) != 0
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl

[State -1]
type = ChangeState
value = 410
trigger1 = RoundState = 2 && Var(59) != 0
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl

[State -1]
type = ChangeState
value = 430
trigger1 = RoundState = 2 && Var(59) != 0
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl

[State -1]
type = ChangeState
value = 440
trigger1 = RoundState = 2 && Var(59) != 0
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl

[State -1]
type = ChangeState
value = 600
trigger1 = RoundState = 2 && Var(59) != 0
triggerall = (StateType = A) && (MoveType != H)
triggerall = (P2StateType = A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl

[State -1]
type = ChangeState
value = 610
trigger1 = RoundState = 2 && Var(59) != 0
triggerall = (StateType = S) && (MoveType != H)
triggerall = (P2StateType = S) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl

[State -1]
type = ChangeState
value = 630
trigger1 = RoundState = 2 && Var(59) != 0
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != S) && (MoveType != H)
triggerall = (P2StateType != S) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl

[State -1]
type = ChangeState
value = 640
trigger1 = RoundState = 2 && Var(59) != 0
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != S) && (MoveType != H)
triggerall = (P2StateType != S) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl

[State -1]
type = ChangeState
value = 20
trigger1 = RoundState = 2 && Var(59) != 0
triggerall = P2stateno = [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1000
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && statetype = S
trigger1 = P2BodyDist X >= 50 && Random <= 200
trigger1 = p2statetype != C
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1010
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && statetype = C
trigger1 = P2BodyDist X >= 40 && Random <= 200
trigger1 = p2statetype != S
trigger1 = (power >= 330)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1050
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && statetype = A
trigger1 = P2BodyDist X >= 60 && Random <= 200
trigger1 = p2statetype != S
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1100
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && statetype = S
trigger1 = P2BodyDist X >= 30 && Random <= 50
trigger1 = p2statetype != C
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1130
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && statetype = S
trigger1 = P2BodyDist X >= 30 && Random <= 55
trigger1 = p2statetype != C
;-|-AI Attempt Hyper-|---------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x >= 20) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0) && (random = [0,300])
triggerall = NumHelper(6011) = 0
value = 6010
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (p2statetype != L)
trigger1 = (p2bodydist x >= 20) && (prevstateno != 5120) && (numproj = 0) && (statetype != S)
trigger1 = (power >= 2000) && (numproj = 0) && (random = [0,300])
value = 3052
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x >= 30) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 2000) && (random = [0,300])
triggerall = NumHelper(3201) = 0
value = 3200
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x >= 20) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 3000) && (random = [0,300])
triggerall = NumHelper(3251) = 0
value = 3250
;--------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 6007
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 30
triggerall = NumHelper(6008) = 0
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 800
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Random <= 400
trigger1 = Ctrl && P2MoveType = A && StateType = S
trigger1 = P2BodyDist X <= 70
;- | AI Rolls | ----------------------------------------------------------

[State -1]
type = ChangeState
value = 7050
triggerall = var(59)
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
triggerall = (stateno != 100) && (prevstateno != 100)
trigger1 = P2BodyDist X >= 20
trigger1 = ctrl

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;===========================================================================
;---------------------------------------------------------------------------
; Were-Rabbit Transform
[State -1, Were-Rabbit Transform]
type = ChangeState
value = 3200
triggerall = command = "Were-Rabbit Transform"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
;---------------------------------------------------------------------------
; Porridge
[State -1, Porridge]
type = ChangeState
value = 3052
triggerall = command = "Porridge"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3051)
trigger2 = movecontact
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
;---------------------------------------------------------------------------
[State -1, Turnip Gun]
type = ChangeState
value = 6010
triggerall = command = "Turnip Gun"
triggerall = power >= 1000
triggerall = NumHelper(6011) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
;---------------------------------------------------------------------------
; Rabbit Rampage

[State -1, Rabbit Rampage]
type = ChangeState
value = 3250
triggerall = power >= 2000
triggerall = NumHelper(3251) = 0
triggerall = command = "Rabbit Rampage"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0
[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1
;---------------------------------------------------------------------------
;Fast Pogo Stick‚Rj
[State -1, Fast Pogo Stick]
type = ChangeState
value = 1070
triggerall = command = "FF_XY"
triggerall = power >= 330
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 220) && (movecontact) && time > 2
trigger5 = (stateno = 230) && (movecontact) && time > 2
trigger6 = (stateno = 240) && (movecontact) && time > 2
trigger7 = (stateno = 250) && (movecontact) && time > 2
trigger8 = (stateno = 400) && (movecontact) && time > 2
trigger9 = (stateno = 410) && (movecontact) && time > 2
trigger10 = (stateno = 430) && (movecontact) && time > 2
trigger11 = (stateno = 440) && (movecontact) && time > 2
;---------------------------------------------------------------------------
;Light Pogo Stick
[State -1, Light Pogo Stick]
type = ChangeState
value = 1050
triggerall = command = "FF_X"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 220) && (movecontact) && time > 2
trigger5 = (stateno = 230) && (movecontact) && time > 2
trigger6 = (stateno = 240) && (movecontact) && time > 2
trigger7 = (stateno = 250) && (movecontact) && time > 2
trigger8 = (stateno = 400) && (movecontact) && time > 2
trigger9 = (stateno = 410) && (movecontact) && time > 2
trigger10 = (stateno = 430) && (movecontact) && time > 2
trigger11 = (stateno = 440) && (movecontact) && time > 2
;---------------------------------------------------------------------------
;Strong Pogo Stick
[State -1, Strong Pogo Stick]
type = ChangeState
value = 1060
triggerall = command = "FF_Y"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 220) && (movecontact) && time > 2
trigger5 = (stateno = 230) && (movecontact) && time > 2
trigger6 = (stateno = 240) && (movecontact) && time > 2
trigger7 = (stateno = 250) && (movecontact) && time > 2
trigger8 = (stateno = 400) && (movecontact) && time > 2
trigger9 = (stateno = 410) && (movecontact) && time > 2
trigger10 = (stateno = 430) && (movecontact) && time > 2
trigger11 = (stateno = 440) && (movecontact) && time > 2
;-------------------------------------------------------------------------------
;Techno Trousers

[State -1, Techno Trousers]
type = ChangeState
value = 1200
triggerall = command = "Techno Trousers"
triggerall = command != "holddown"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 220) && (movecontact) && time > 2
trigger5 = (stateno = 230) && (movecontact) && time > 2
trigger6 = (stateno = 240) && (movecontact) && time > 2
trigger7 = (stateno = 250) && (movecontact) && time > 2
trigger8 = (stateno = 400) && (movecontact) && time > 2
trigger9 = (stateno = 410) && (movecontact) && time > 2
trigger10 = (stateno = 430) && (movecontact) && time > 2
trigger11 = (stateno = 440) && (movecontact) && time > 2

[State -1, Strong Techno Trousers]
type = ChangeState
value = 1201
triggerall = command = "Techno Trousers2"
triggerall = command != "holddown"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 220) && (movecontact) && time > 2
trigger5 = (stateno = 230) && (movecontact) && time > 2
trigger6 = (stateno = 240) && (movecontact) && time > 2
trigger7 = (stateno = 250) && (movecontact) && time > 2
trigger8 = (stateno = 400) && (movecontact) && time > 2
trigger9 = (stateno = 410) && (movecontact) && time > 2
trigger10 = (stateno = 430) && (movecontact) && time > 2
trigger11 = (stateno = 440) && (movecontact) && time > 2

[State -1, EX Techno Trousers]
type = ChangeState
value = 1202
triggerall = command = "Techno Trousers3"
triggerall = command != "holddown"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 220) && (movecontact) && time > 2
trigger5 = (stateno = 230) && (movecontact) && time > 2
trigger6 = (stateno = 240) && (movecontact) && time > 2
trigger7 = (stateno = 250) && (movecontact) && time > 2
trigger8 = (stateno = 400) && (movecontact) && time > 2
trigger9 = (stateno = 410) && (movecontact) && time > 2
trigger10 = (stateno = 430) && (movecontact) && time > 2
trigger11 = (stateno = 440) && (movecontact) && time > 2
;-------------------------------------------------------------------------------
;Anvil

[State -1, Anvil]
type = ChangeState
value = 1650
triggerall = command = "Anvil"
triggerall = command != "holddown"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 220) && (movecontact) && time > 2
trigger5 = (stateno = 230) && (movecontact) && time > 2
trigger6 = (stateno = 240) && (movecontact) && time > 2
trigger7 = (stateno = 250) && (movecontact) && time > 2
trigger8 = (stateno = 400) && (movecontact) && time > 2
trigger9 = (stateno = 410) && (movecontact) && time > 2
trigger10 = (stateno = 430) && (movecontact) && time > 2
trigger11 = (stateno = 440) && (movecontact) && time > 2
;-------------------------------------------------------------------------------
;Cheese

[State -1, Cheese]
type = ChangeState
value = 1250
triggerall = command = "Cheese"
triggerall = command != "holddown"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 220) && (movecontact) && time > 2
trigger5 = (stateno = 230) && (movecontact) && time > 2
trigger6 = (stateno = 240) && (movecontact) && time > 2
trigger7 = (stateno = 250) && (movecontact) && time > 2
trigger8 = (stateno = 400) && (movecontact) && time > 2
trigger9 = (stateno = 410) && (movecontact) && time > 2
trigger10 = (stateno = 430) && (movecontact) && time > 2
trigger11 = (stateno = 440) && (movecontact) && time > 2
;-----------------------------------------------------------------------------
[State -1, Stand Parry]
type = HitOverride
trigger1 = command = "fwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Statetype = S
trigger1 = ctrl
attr = SA,AA,AP
stateno = 1300
time = 8+(6*var(27))

[State -1, Air Parry]
type = HitOverride
trigger1 = command = "fwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Statetype = A
trigger1 = ctrl
attr = SA,AA,AP
stateno = 1340
time = 8+(6*var(27))

[State -1, Crouch Parry]
type = HitOverride
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command = "down"
trigger1 = Statetype = S || Statetype = C
trigger1 = ctrl
attr = C,AA,AP
stateno = 1320
time = 8+(6*var(27))
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
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

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 7000
trigger1 = command = "DU"
trigger1 = statetype = S
trigger1 = ctrl
;-----------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "holdup"
trigger1 = stateno = 410 && movehit

;===========================================================================
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2

;---------------------------------------------------------------------------
;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Helpers

[State -1, Gromit]
type = ChangeState
value = 6007
triggerall = command = "Gromit"
trigger1 = statetype != A
trigger1 = ctrl
triggerall = NumHelper(6009) = 0

[State -1, Penguin]
type = ChangeState
value = 1221
triggerall = command = "Penguin"
trigger1 = statetype != A
trigger1 = ctrl
triggerall = NumHelper(1220) = 0

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact) && time > 2

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 440
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact) && time > 2
trigger3 = (stateno = 610) && (movecontact) && time > 2

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact) && time > 2
trigger3 = (stateno = 410) && (movecontact) && time > 2
trigger4 = (stateno = 430) && (movecontact) && time > 2

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact) && time > 2
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact) && time > 2
trigger2 = (stateno = 610) && (movecontact) && time > 2

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact) && time > 2
trigger3 = (stateno = 610) && (movecontact) && time > 2
trigger4 = (stateno = 630) && (movecontact) && time > 2
;---------------------------------------------------------------------------
;Dodge FWD
[State -1, Dodge FWD]
type = ChangeState
value = 7050
triggerall = command != "holdback"
triggerall = command = "z" || command = "c"
trigger1 = statetype = S
trigger1 = ctrl
; ;------------------------------------------------------------------------------
;Dodge BWD
[State -1, Dodge BWD]
type = ChangeState
value = 7100
triggerall = command = "z" || command = "c"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
