;===============================================================================
;-------------------------------------------------------------------------------
;http://megamugenbrasil.ucoz.com/             Fabricado no Brasil/Made in Brazil
;-------------------------------------------------------------------------------
;===============================================================================
;-| Button Remapping |----------------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |------------------------------------------------------------
[Defaults]
command.time = 30
command.buffer.time = 1

;===============================================================================
; Alex. D. X4                                 Fabricado no Brasil/Made in Brazil
;===============================================================================
;-| HYPERs Motions |------------------------------------------------------------
[Command]
name = "HyperDrive-236"
command = D, DF, F , x+y
time = 15

[Command]
name = "HyperDrive-236"
command = D, DF, F, y+b
time = 15

[Command]
name = "HyperDrive-236"
command = D, DF, F, x+b
time = 15

[Command]
name = "HyperDrive-214"
command = D, DB, B , x+y
time = 15

[Command]
name = "HyperDrive-214"
command = D, DB, B, y+b
time = 15

[Command]
name = "HyperDrive-214"
command = D, DB, B, x+b
time = 15

[Command]
name = "OverDrive"
command = z
time = 15

;-| Drive Motions |---------------------------------------------------------
[Command]
name = "DRIVE"
command = ~a

[Command]
name = "236-DRIVE"
command = D, DF, F , a
time = 15

[Command]
name = "214-DRIVE"
command = D, DB, B, a
time = 15

[Command]
name = "DRIVE-Blast"
command = a
time = 1

;-| ESPECIALs Motions |------------------------------------------------------------
[Command]
name = "236-Light ATK"
command = D, DF, F , x
time = 15

[Command]
name = "214-Light ATK"
command = D, DB, B, x
time = 15

[Command]
name = "236-Medium ATK"
command = D, DF, F , y
time = 15

[Command]
name = "214-Medium ATK"
command = D, DB, B, y
time = 15

[Command]
name = "236-Heavy ATK"
command = D, DF, F , b
time = 15

[Command]
name = "214-Heavy ATK"
command = D, DB, B, b
time = 15

;-| Double Tap |----------------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "Super Jump"
Command = $D, $U

;-| Recovery Buttons |----------------------------------------------------
[Command]
name = "recovery"
command = x
time = 1

[Command]
name = "recovery"
command = y
time = 1

[Command]
name = "recovery"
command = b
time = 1

;-| Dir + Button |--------------------------------------------------------------
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

;-| Single Button |-------------------------------------------------------------
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

;-| Single Dir |----------------------------------------------------------------
[Command]
name = "fwd"
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down"
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back"
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up"
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |---------------------------------------------------------------
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

;-| Hold Dir |------------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;===============================================================================
;-------------------------------------------------------------------------------
;http://megamugenbrasil.ucoz.com/             Fabricado no Brasil/Made in Brazil
;-------------------------------------------------------------------------------
;===============================================================================

[Statedef -1]

;===============================================================================
;-| X's AI System DX |----------------------------------------------------------
;===============================================================================
[State -1, X's AI System DX]
Type = VarSet
Triggerall = Var(59) < 1
Triggerall = RoundState = 2
Trigger1 = AILevel > 0
trigger2 = IsHomeTeam = 1
trigger2 = TeamSide = 2
trigger3 = IsHomeTeam = 1
trigger3 = MatchNo > 1
v = 59
value = 1
Ignorehitpause = 1

;===============================================================================
[State -1, IA - Dash FWD]
type = ChangeState
triggerall = var(59)
triggerall = !Win
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = Random <= 100
trigger1 = P2BodyDist X >= 30 && P2BodyDist X <= 1280
trigger1 = StateType != A
trigger1 = P2MoveType != A
value = 100

[State -1, IA - Back Step]
type = ChangeState
triggerall = var(59)
triggerall = !Win
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = Random <= 100
trigger1 = P2BodyDist X <= 45 && P2BodyDist Y = 0
trigger1 = StateType = S
trigger1 = (P2Movetype = A) || (enemy, NumProj > 0)
value = 105

;===============================================================================
[State -1, IA - Combo 1-1 S-LA1]
type = ChangeState
triggerall = var(59)
triggerall = !Win
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = Random <= 100
trigger1 = P2BodyDist X <= 25
trigger1 = StateType = S
trigger1 = P2MoveType != A
value = 200
ignorehitpause = 1

[State -1, IA - Combo 1-2 S-LA2]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = numtarget && movehit || moveguarded
triggerall = statetype = S
trigger1 = StateNo = 200
trigger1 = Anim = 200
trigger1 = AnimElem = 3, >= 0
value = 201
ignorehitpause = 1

[State -1, IA - Combo 1-3 S-HA]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = numtarget && movehit
triggerall = statetype = S
trigger1 = StateNo = 201
trigger1 = Anim = 201
trigger1 = AnimElem = 3, >= 0
value = 203
ignorehitpause = 1

[State -1, IA - Combo 1-3 C-MA]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = numtarget && moveguarded
trigger1 = StateNo = 201
trigger1 = Anim = 201
trigger1 = AnimElem = 3, >= 0
value = 212
ignorehitpause = 1

;===============================================================================
[State -1, IA - S-Tornado Fang]
type = ChangeState
triggerall = var(59)
triggerall = !Win
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = numhelper(430) = 0
trigger1 = Random <= 50
trigger1 = P2BodyDist X <= 150
trigger1 = StateType = S
trigger2 = numtarget && movehit || moveguarded
trigger2 = StateNo = 203
trigger2 = Anim = 203
trigger2 = AnimElem = 5, >= 0
value = 430
ignorehitpause = 1

;===============================================================================
[State -1, IA - Combo 2-1 J-LA1]
type = ChangeState
triggerall = var(59)
triggerall = !Win
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = Random <= 100
trigger1 = P2BodyDist X <= 25 && P2BodyDist Y <= 5
trigger1 = StateType = A
trigger1 = P2MoveType != A
trigger2 = numtarget && movehit || moveguarded
trigger2 = StateNo = 412
trigger2 = Anim = 412
trigger2 = AnimElem = 3, >= 0
value = 220
ignorehitpause = 1

[State -1, IA - Combo 2-2 J-LA2]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = numtarget && movehit || moveguarded
triggerall = statetype = A
trigger1 = StateNo = 220
trigger1 = Anim = 220
trigger1 = AnimElem = 4, >= 0
value = 221
ignorehitpause = 1

[State -1, IA - Combo 2-3 J-MA1]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = numtarget && movehit || moveguarded
triggerall = statetype = A
trigger1 = StateNo = 221
trigger1 = Anim = 221
trigger1 = AnimElem = 4, >= 0
trigger2 = StateNo = 432
trigger2 = Anim = 431
trigger2 = AnimElem >= 4, >= 0
value = 222
ignorehitpause = 1

[State -1, IA - Combo 2-4 J-MA2]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = numtarget && movehit || moveguarded
triggerall = statetype = A
trigger1 = StateNo = 222
trigger1 = Anim = 202
trigger1 = AnimElem = 3, >= 0
value = 223
ignorehitpause = 1

[State -1, IA - Combo 2-5 J-HA]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = numtarget && movehit || moveguarded
triggerall = statetype = A
trigger1 = StateNo = 223
trigger1 = Anim = 223
trigger1 = AnimElem = 3, >= 0
value = 224
ignorehitpause = 1

;===============================================================================
[State -1, IA - Basic Jump]
type = ChangeState
triggerall = var(59)
triggerall = !Win
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = Random <= 70
trigger1 = P2BodyDist Y >= 10
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 80
ignorehitpause = 1

;===============================================================================
[State -1, IA - S-Guard]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = ctrl = 1
value = 130

[State -1, IA - S-to-C-Guard]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = stateno = 150
value = 152

[State -1, IA - C-Guard]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = ctrl = 1
value = 131

[State -1, IA - C-to-S-Guard]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = stateno = 152
value = 150

;===============================================================================
[State -1, IA - Basic Dash]
type = ChangeState
triggerall = var(59)
triggerall = !Win
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = (P2BodyDist X >= 90 && P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = StateType != A
value = 110
ignorehitpause = 1

;===============================================================================
[State -1, IA - S-Shoryuken-X]
type = ChangeState
triggerall = var(59)
triggerall = !Win
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = Random <= 120
trigger1 = P2BodyDist X <= 30 && P2BodyDist Y <= 0
trigger1 = StateType = S
value = 410
ignorehitpause = 1

[State -1, IA - J-Uppercut]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = numtarget && movehit || moveguarded
trigger1 = StateNo = 411
trigger1 = Anim = 411
trigger1 = AnimElem = 2, >= 0
value = 412
ignorehitpause = 1

[State -1, IA - J-Rushing Burner]
type = ChangeState
triggerall = var(59)
triggerall = !Win
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = Random <= 80
trigger1 = P2BodyDist X >= 30
trigger1 = P2BodyDist Y >= -10 && P2BodyDist Y <= 40
trigger1 = StateType = A
value = 420
ignorehitpause = 1

;===============================================================================
[State -1, IA - A-Spining Blade]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = enemy, authorname != "Alex. D. X4" && enemy, authorname != "Alex. D. X4 & Mega Man X Mugen Brasil Team"
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = numhelper(450) = 0
trigger1 = Random <= 50
trigger1 = P2BodyDist X >= 30
trigger1 = P2BodyDist Y >= -5
trigger1 = StateType = A
value = 450
ignorehitpause = 1

;===============================================================================
[State -1, IA - S-Bug Hole]
type = ChangeState
triggerall = var(59)
triggerall = !Win
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = numhelper(440) = 0
trigger1 = Random <= 50
trigger1 = P2BodyDist X >= 60 && P2BodyDist X <= 120
trigger1 = StateType = S
value = 440
ignorehitpause = 1

[State -1, IA - A-Homing Torpedo]
type = ChangeState
triggerall = var(59)
triggerall = !Win
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = numhelper(480) = 0
trigger1 = Random <= 50
trigger1 = P2BodyDist X >= 60
trigger1 = StateType = A
trigger2 = StateNo = 105
trigger2 = Anim = 105
trigger2 = AnimElem = 6, >= 0
value = 480
ignorehitpause = 1

;===============================================================================
[State -1, IA - S-Sonic Slicer]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = enemy, authorname != "Alex. D. X4" || enemy, authorname != "Alex. D. X4 & Mega Man X Mugen Brasil Team"
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = numhelper(460) = 0
trigger1 = Random <= 100
trigger1 = P2BodyDist X <= 120
trigger1 = P2BodyDist Y >= 1
trigger1 = StateType = S
value = 460
ignorehitpause = 1

[State -1, IA - A-Triad Thunder Spark]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = P2MoveType = A
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = numhelper(461) = 0
trigger1 = Random <= 50
trigger1 = P2BodyDist X <= 50
trigger1 = P2BodyDist Y >= -20 && P2BodyDist Y <= 10
trigger1 = StateType = A
trigger2 = Power >= 2000
trigger2 = numtarget && movehit
trigger2 = StateNo = 223
trigger2 = Anim = 223
trigger2 = AnimElem = 3, >= 0
value = 461
ignorehitpause = 1

;===============================================================================
[State -1, IA - S-Crystal Hunter]
type = ChangeState
triggerall = var(59)
triggerall = !Win
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = numhelper(490) = 0
trigger1 = Random <= 50
trigger1 = P2BodyDist X >= 20 && P2BodyDist X <= 180
trigger1 = StateType = S
value = 490
ignorehitpause = 1

[State -1, IA - A-Shotgun Ice]
type = ChangeState
triggerall = var(59)
triggerall = !Win
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = Random <= 50
trigger1 = numhelper(470) = 0
trigger1 = P2BodyDist X >= 150
trigger1 = P2BodyDist Y >= -5 && P2BodyDist Y <= 0
trigger1 = StateType = A
value = 470
ignorehitpause = 1

;===============================================================================
[State -1, IA - S-HYPER-DRIVE]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = Var(58)= 0
triggerall = power >= 2000 && power <= 3999
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = Random >= 40
trigger1 = P2BodyDist X >= 80
trigger1 = StateType = S
trigger2 = StateNo = 224
trigger2 = Anim = 224
trigger2 = AnimElem = 5, >= 0
value = 600
ignorehitpause = 1

[State -1, IA - A-HYPER-DRIVE]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = Var(58)= 0
triggerall = power >= 2000 && power <= 3999
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = Random >= 40
trigger1 = P2BodyDist X >= 80 && P2BodyDist Y <= 0
trigger1 = StateType = A
trigger2 = StateNo = 224
trigger2 = Anim = 224
trigger2 = AnimElem = 5, >= 0
trigger3 = StateNo = 461
trigger3 = Anim = 461
trigger3 = AnimElem = 5, >= 0
value = 601
ignorehitpause = 1

;===============================================================================
[State -1, IA - S-HYPER-MAX]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = Power >= 4000
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = Random >= 50
trigger1 = P2BodyDist X >= 100
trigger1 = StateType = S
trigger2 = StateNo = 203
trigger2 = Anim = 203
trigger2 = AnimElem = 5, >= 0
value = 610
ignorehitpause = 1

[State -1, IA - A-HYPER-UltiMAX]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = Power >= 4000
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = Random >= 50
trigger1 = P2BodyDist X >= 80 && P2BodyDist Y <= 0
trigger1 = StateType = A
trigger2 = StateNo = 224
trigger2 = Anim = 224
trigger2 = AnimElem = 5, >= 0
trigger3 = StateNo = 461
trigger3 = Anim = 461
trigger3 = AnimElem = 5, >= 0
value = 612
ignorehitpause = 1

;===============================================================================
[State -1, IA - S-X-Buster LV2]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = Var(29) >= 30 && Var(29) <= 99
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = Random <= 70
trigger1 = P2BodyDist X >= 40 && P2BodyDist Y >= -5
trigger1 = StateType = S
value = 301
ignorehitpause = 1

[State -1, IA - A-X-Buster LV2]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = Var(29) >= 30 && Var(29) <= 99
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = Random <= 70
trigger1 = P2BodyDist X >= 40 && P2BodyDist Y >= -5
trigger1 = StateType = A
value = 321
ignorehitpause = 1

;-------------------------------------------------------------------------------
[State -1, IA - S-X-Buster LV3]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = Var(29) >= 100
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = Random <= 100
trigger1 = P2BodyDist X >= 35 && P2BodyDist Y >= -5
trigger1 = StateType = S
value = 302
ignorehitpause = 1

[State -1, IA - A-X-Buster LV3]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = Var(29) >= 100
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = Random <= 100
trigger1 = P2BodyDist X >= 35 && P2BodyDist Y >= -5
trigger1 = StateType = A
value = 322
ignorehitpause = 1

;===============================================================================
[State -1, IA - Active OverClock]
type = ChangeState
triggerall = var(59)
triggerall = !Win
triggerall = Ctrl
triggerall = Var(58)= 0
triggerall = FVar(0) >= 135
trigger1 = RoundState = 2
trigger1 = Life <= 500
trigger1 = StateType = S
value = 700
ignorehitpause = 1

;===============================================================================
; Alex. D. X4                                 Fabricado no Brasil/Made in Brazil
;===============================================================================
;===============================================================================
;-| X's Hypers Moves |----------------------------------------------------------
;===============================================================================
[State -1, S - Hyper-Drive-Max]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = command = "HyperDrive-214"
triggerall = power >= 4000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = time >= 4 && time <= 12
trigger3 = stateno = 210 || stateno = 211
trigger3 = time >= 4 && time <= 12
trigger4 = stateno = 213
trigger4 = time >= 14 && time <= 28
trigger5 = stateno = 203
trigger5 = time >= 10 && time <= 45
trigger6 = stateno = 300
trigger6 = time >= 30 && time <= 45
trigger7 = stateno = 490
trigger7 = time >= 25 && time <= 45
trigger8 = stateno = 440
trigger8 = time >= 24 && time <= 34
trigger9 = stateno = 460
trigger9 = time >= 10 && time <= 42

;-------------------------------------------------------------------------------
[State -1, S - Hyper-Drive]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "HyperDrive-236"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = time >= 4 && time <= 12
trigger3 = stateno = 210 || stateno = 211
trigger3 = time >= 4 && time <= 12
trigger4 = stateno = 213
trigger4 = time >= 14 && time <= 28
trigger5 = stateno = 203
trigger5 = time >= 10 && time <= 45
trigger6 = stateno = 300
trigger6 = time >= 30 && time <= 45
trigger7 = stateno = 490
trigger7 = time >= 25 && time <= 45
trigger8 = stateno = 440
trigger8 = time >= 24 && time <= 34
trigger9 = stateno = 460
trigger9 = time >= 10 && time <= 42

;===============================================================================
[State -1, J - Hyper-Drive-Max]
type = ChangeState
value = 612
triggerall = !var(59)
triggerall = command = "HyperDrive-214"
triggerall = power >= 4000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 220 || stateno = 221
trigger2 = time >= 6 && time <= 16
trigger3 = stateno = 202 || stateno = 222 || stateno = 223
trigger3 = time >= 6 && time <= 28
trigger4 = stateno = 224
trigger4 = time >= 9 && time <= 41
trigger5 = stateno = 320
trigger5 = time >= 30 && time <= 45
trigger6 = stateno = 432
trigger6 = time >= 5 && time <= 20
trigger7 = stateno = 412
trigger7 = time >= 6 && time <= 15
trigger8 = stateno = 461
trigger8 = time >= 12 && time <= 57
trigger9 = stateno = 470
trigger9 = time >= 12 && time <= 40
trigger10 = stateno = 431|| stateno = 432
trigger10 = time >= 1 && time <= 32

;-------------------------------------------------------------------------------
[State -1, J - Hyper-Drive]
type = ChangeState
value = 601
triggerall = !var(59)
triggerall = command = "HyperDrive-236"
triggerall = power >= 2000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 220 || stateno = 221
trigger2 = time >= 6 && time <= 16
trigger3 = stateno = 202 || stateno = 222 || stateno = 223
trigger3 = time >= 6 && time <= 28
trigger4 = stateno = 224
trigger4 = time >= 9 && time <= 41
trigger5 = stateno = 320
trigger5 = time >= 30 && time <= 45
trigger6 = stateno = 432
trigger6 = time >= 5 && time <= 20
trigger7 = stateno = 412
trigger7 = time >= 6 && time <= 15
trigger8 = stateno = 461
trigger8 = time >= 12 && time <= 57
trigger9 = stateno = 470
trigger9 = time >= 12 && time <= 40
trigger10 = stateno = 431|| stateno = 432
trigger10 = time >= 1 && time <= 32
trigger11 = stateno = 423
trigger11 = time >= 0 && time <= 15

;-------------------------------------------------------------------------------
[State -1, S - Active OverClock]
type = ChangeState
value = 700
triggerall = !var(59)
triggerall = command = "OverDrive"
triggerall = Var(58)= 0
triggerall = FVar(0) >= 135
trigger1 = statetype = S
trigger1 = ctrl

;===============================================================================
;-| Ultimate's Hypers Moves |---------------------------------------------------
;===============================================================================
[State -1, S - OverDrive]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = command = "OverDrive"
triggerall = Var(58) = 10000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = time >= 4 && time <= 12
trigger3 = stateno = 210 || stateno = 211
trigger3 = time >= 4 && time <= 12
trigger4 = stateno = 213
trigger4 = time >= 14 && time <= 28
trigger5 = stateno = 203
trigger5 = time >= 10 && time <= 45
trigger6 = stateno = 300
trigger6 = time >= 30 && time <= 45
trigger7 = stateno = 490
trigger7 = time >= 25 && time <= 45
trigger8 = stateno = 440
trigger8 = time >= 24 && time <= 34
trigger9 = stateno = 431|| stateno = 432
trigger9 = time >= 1 && time <= 32
trigger10 = stateno = 460
trigger10 = time >= 10 && time <= 42

;-------------------------------------------------------------------------------
[State -1, J - OverDrive]
type = ChangeState
value = 624
triggerall = !var(59)
triggerall = command = "OverDrive"
triggerall = Var(58) = 10000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 220 || stateno = 221
trigger2 = time >= 6 && time <= 16
trigger3 = stateno = 202 || stateno = 222 || stateno = 223
trigger3 = time >= 6 && time <= 28
trigger4 = stateno = 224
trigger4 = time >= 9 && time <= 41
trigger5 = stateno = 320
trigger5 = time >= 30 && time <= 45
trigger6 = stateno = 432
trigger6 = time >= 5 && time <= 20
trigger7 = stateno = 412
trigger7 = time >= 6 && time <= 15
trigger8 = stateno = 461
trigger8 = time >= 12 && time <= 57
trigger9 = stateno = 470
trigger9 = time >= 12 && time <= 40
trigger10 = stateno = 423
trigger10 = time >= 0 && time <= 15

;===============================================================================
;-| X's Variable Weapon System |------------------------------------------------
;===============================================================================
[State -1, S - Tornado Fang]
type = ChangeState
value = 430
triggerall = !var(59)
triggerall = command = "236-Heavy ATK"
triggerall = numhelper(430) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = time >= 4 && time <= 12
trigger3 = stateno = 210 || stateno = 211
trigger3 = time >= 4 && time <= 12
trigger4 = stateno = 213
trigger4 = time >= 14 && time <= 28
trigger5 = stateno = 203
trigger5 = time >= 10 && time <= 45
trigger6 = stateno = 300
trigger6 = time >= 30 && time <= 45
trigger7 = stateno = 490
trigger7 = time >= 25 && time <= 45
trigger8 = stateno = 440
trigger8 = time >= 24 && time <= 34

;-------------------------------------------------------------------------------
[State -1, S - Bug Hole]
type = ChangeState
value = 440
triggerall = !var(59)
triggerall = command = "214-Heavy ATK"
triggerall = numhelper(440) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = time >= 4 && time <= 12
trigger3 = stateno = 210 || stateno = 211
trigger3 = time >= 4 && time <= 12
trigger4 = stateno = 213
trigger4 = time >= 14 && time <= 28
trigger5 = stateno = 203
trigger5 = time >= 10 && time <= 45
trigger6 = stateno = 300
trigger6 = time >= 30 && time <= 45
trigger7 = stateno = 490
trigger7 = time >= 25 && time <= 45

;-------------------------------------------------------------------------------
[State -1, S - Sonic Slicer]
type = ChangeState
value = 460
triggerall = enemy, authorname != "Alex. D. X4"
triggerall = enemy, authorname != "Alex. D. X4 & Mega Man X Mugen Brasil Team"
triggerall = !var(59)
triggerall = command = "236-Medium ATK"
triggerall = numhelper(460) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = time >= 4 && time <= 12
trigger3 = stateno = 210 || stateno = 211
trigger3 = time >= 4 && time <= 12
trigger4 = stateno = 213
trigger4 = time >= 14 && time <= 28
trigger5 = stateno = 203
trigger5 = time >= 10 && time <= 45
trigger6 = stateno = 300
trigger6 = time >= 30 && time <= 45

;-------------------------------------------------------------------------------
[State -1, S - Shoryuken-X]
type = ChangeState
value = 410
triggerall = enemy, authorname = "Alex. D. X4" || enemy, authorname = "Alex. D. X4 & Mega Man X Mugen Brasil Team"
triggerall = !var(59)
triggerall = command = "236-Medium ATK"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = time >= 4 && time <= 12
trigger3 = stateno = 203
trigger3 = time >= 9 && time <= 45
trigger4 = stateno = 213
trigger4 = time >= 14 && time <= 28
trigger5 = stateno = 431|| stateno = 432
trigger5 = time >= 1 && time <= 32
trigger6 = stateno = 460
trigger6 = time >= 10 && time <= 42

;-------------------------------------------------------------------------------
[State -1, S - Crystal Hunter]
type = ChangeState
value = 490
triggerall = !var(59)
triggerall = command = "214-Medium ATK"
triggerall = numhelper(490) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = time >= 4 && time <= 12
trigger3 = stateno = 210 || stateno = 211
trigger3 = time >= 4 && time <= 12
trigger4 = stateno = 213
trigger4 = time >= 14 && time <= 28
trigger5 = stateno = 203
trigger5 = time >= 10 && time <= 45
trigger6 = stateno = 300
trigger6 = time >= 30 && time <= 45

;===============================================================================
[State -1, J - Shotgun Ice]
type = ChangeState
value = 470
triggerall = !var(59)
triggerall = command = "236-Heavy ATK"
triggerall = numhelper(470) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 220 || stateno = 221
trigger2 = time >= 6 && time <= 16
trigger3 = stateno = 202 || stateno = 222 || stateno = 223
trigger3 = time >= 6 && time <= 28
trigger4 = stateno = 224
trigger4 = time >= 9 && time <= 41
trigger5 = stateno = 432
trigger5 = time >= 5 && time <= 20
trigger6 = stateno = 412
trigger6 = time >= 6 && time <= 15

;-------------------------------------------------------------------------------
[State -1, J - Triad Thunder Spark]
type = ChangeState
value = 461
triggerall = !var(59)
triggerall = command = "214-Heavy ATK"
triggerall = Var(12)= 0
triggerall = numhelper(461) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 220 || stateno = 221
trigger2 = time >= 6 && time <= 16
trigger3 = stateno = 202 || stateno = 222 || stateno = 223
trigger3 = time >= 6 && time <= 28
trigger4 = stateno = 224
trigger4 = time >= 9 && time <= 41
trigger5 = stateno = 432
trigger5 = time >= 5 && time <= 20
trigger6 = stateno = 412
trigger6 = time >= 6 && time <= 15
trigger7 = stateno = 470
trigger7 = time >= 12 && time <= 40

;-------------------------------------------------------------------------------
[State -1, J - Spining Blade]
type = ChangeState
value = 450
triggerall = enemy, authorname != "Alex. D. X4"
triggerall = enemy, authorname != "Alex. D. X4 & Mega Man X Mugen Brasil Team"
triggerall = !var(59)
triggerall = command = "214-Medium ATK"
triggerall = numhelper(450) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 220 || stateno = 221
trigger2 = time >= 6 && time <= 16
trigger3 = stateno = 202 || stateno = 222 || stateno = 223
trigger3 = time >= 6 && time <= 28
trigger4 = stateno = 224
trigger4 = time >= 9 && time <= 41
trigger5 = stateno = 432
trigger5 = time >= 5 && time <= 20
trigger6 = stateno = 412
trigger6 = time >= 6 && time <= 15
trigger7 = stateno = 461
trigger7 = time >= 12 && time <= 57

;-------------------------------------------------------------------------------
[State -1, J - Rushing Burner]
type = ChangeState
value = 420
triggerall = enemy, authorname = "Alex. D. X4" || enemy, authorname = "Alex. D. X4 & Mega Man X Mugen Brasil Team"
triggerall = !var(59)
triggerall = command = "214-Medium ATK"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 224
trigger2 = time >= 10 && time <= 20
trigger3 = stateno = 220 || stateno = 221
trigger3 = time >= 6 && time <= 16
trigger4 = stateno = 202 || stateno = 222 || stateno = 223
trigger4 = time >= 6 && time <= 28
trigger5 = stateno = 432
trigger5 = time >= 5 && time <= 20
trigger6 = stateno = 412
trigger6 = time >= 6 && time <= 15
trigger7 = stateno = 461
trigger7 = time >= 12 && time <= 57

;-------------------------------------------------------------------------------
[State -1, J - Uppercut-X]
type = ChangeState
value = 412
triggerall = !var(59)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = stateno = 411
trigger1 = time >= 10 && time <= 21

;-------------------------------------------------------------------------------
[State -1, J - Homing Torpedo]
type = ChangeState
value = 480
triggerall = !var(59)
triggerall = command = "236-Medium ATK"
triggerall = numhelper(480) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 220 || stateno = 221
trigger2 = time >= 6 && time <= 16
trigger3 = stateno = 202 || stateno = 222 || stateno = 223
trigger3 = time >= 6 && time <= 28
trigger4 = stateno = 224
trigger4 = time >= 9 && time <= 41
trigger5 = stateno = 432
trigger5 = time >= 5 && time <= 20
trigger6 = stateno = 412
trigger6 = time >= 6 && time <= 15
trigger7 = stateno = 461
trigger7 = time >= 12 && time <= 57

;===============================================================================
;-| X's Fighting Techniques |---------------------------------------------------
;===============================================================================
[State -1, S - Medium Run ATK]
type = ChangeState
value = 213
triggerall = !var(59)
triggerall = command = "y"
triggerall = statetype != A
triggerall = stateno = 100
trigger1 = time >= 5 && time <= 40

;===============================================================================
[State -1, S - Light ATK]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 213
trigger2 = time >= 14 && time <= 28

;-------------------------------------------------------------------------------
[State -1, S - Light ATK]
type = ChangeState
value = 201
triggerall = !var(59)
triggerall = command = "x"
triggerall = statetype = S
trigger1 = stateno = 200
trigger1 = time >= 4 && time <= 12

;-------------------------------------------------------------------------------
[State -1, S - Medium ATK]
type = ChangeState
value = 202
triggerall = !var(59)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 201
trigger2 = time >= 4 && time <= 12

;-------------------------------------------------------------------------------
[State -1, S - Heavy ATK]
type = ChangeState
value = 203
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 201
trigger2 = time >= 4 && time <= 12
trigger3 = stateno = 210 || stateno = 211
trigger3 = time >= 4 && time <= 12

;===============================================================================
[State -1, S - DRIVE ATK-LV1]
type = ChangeState
value = 300
triggerall = !var(59)
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 201
trigger2 = time >= 4 && time <= 12
trigger3 = stateno = 210 || stateno = 211
trigger3 = time >= 4 && time <= 12

[State -1, S - DRIVE ATK-LV2]
type = ChangeState
value = 301
triggerall = !var(59)
triggerall = command = "DRIVE"
triggerall = Var(29)>= 30 && Var(29)<= 100
triggerall = stateno != [40,199]
triggerall = stateno != [320,5210]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [120,155]
trigger2 = statetype != A
trigger3 = stateno = 200 || stateno = 201
trigger3 = time >= 4 && time <= 12
trigger4 = stateno = 210 || stateno = 211
trigger4 = time >= 4 && time <= 12
trigger5 = stateno = 300
trigger5 = time >= 30 && time <= 45

[State -1, S - DRIVE ATK-LV3]
type = ChangeState
value = 302
triggerall = !var(59)
triggerall = command = "DRIVE"
triggerall = Var(29)>= 100
triggerall = stateno != [40,199]
triggerall = stateno != [320,5210]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [120,155]
trigger2 = statetype != A
trigger3 = stateno = 200 || stateno = 201
trigger3 = time >= 4 && time <= 12
trigger4 = stateno = 210 || stateno = 211
trigger4 = time >= 4 && time <= 12

;===============================================================================
[State -1, C - Light ATK]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl = 1

;-------------------------------------------------------------------------------
[State -1, C - Light ATK]
type = ChangeState
value = 211
triggerall = !var(59)
triggerall = command = "x"
triggerall = statetype = C
trigger1 = stateno = 210
trigger1 = time >= 4 && time <= 12

;-------------------------------------------------------------------------------
[State -1, C - Medium ATK]
type = ChangeState
value = 212
triggerall = !var(59)
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = time >= 4 && time <= 12
trigger3 = stateno = 210 || stateno = 211
trigger3 = time >= 4 && time <= 12

;-------------------------------------------------------------------------------
[State -1, C - Heavy ATK]
type = ChangeState
value = 214
triggerall = !var(59)
triggerall = command = "holddown" && command = "b"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 210 || stateno = 211
trigger2 = time >= 4 && time <= 12
trigger3 = stateno = 200 || stateno = 201
trigger3 = time >= 4 && time <= 12
trigger4 = stateno = 212
trigger4 = time >= 12 && time <= 16
trigger5 = stateno = 213
trigger5 = time >= 20 && time <= 28

;===============================================================================
[State -1, J - Light ATK-1]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 432
trigger2 = time >= 5 && time <= 20
trigger3 = stateno = 412
trigger3 = time >= 6 && time <= 15

;-------------------------------------------------------------------------------
[State -1, J - Light ATK-2]
type = ChangeState
value = 221
triggerall = !var(59)
triggerall = command = "x"
triggerall = statetype = A
triggerall = stateno = 220
trigger1 = time >= 6 && time <= 16

;-------------------------------------------------------------------------------
[State -1, J - Medium ATK-1]
type = ChangeState
value = 222
triggerall = !var(59)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 220 || stateno = 221
trigger2 = time >= 6 && time <= 32
trigger3 = stateno = 432
trigger3 = time >= 5 && time <= 20
trigger4 = stateno = 412
trigger4 = time >= 6 && time <= 15

;-------------------------------------------------------------------------------
[State -1, J - Medium ATK-2]
type = ChangeState
value = 223
triggerall = !var(59)
triggerall = command = "y"
triggerall = statetype = A
triggerall = stateno = 202 || stateno = 222
trigger1 = time >= 6
trigger1 = time <= 28

;-------------------------------------------------------------------------------
[State -1, J - Heavy ATK]
type = ChangeState
value = 224
triggerall = !var(59)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 220 || stateno = 221
trigger2 = time >= 6 && time <= 16
trigger3 = stateno = 202 || stateno = 222 || stateno = 223
trigger3 = time >= 6 && time <= 28
trigger4 = stateno = 432
trigger4 = time >= 5 && time <= 20
trigger5 = stateno = 412
trigger5 = time >= 6 && time <= 15

;===============================================================================
[State -1, J - DRIVE ATK-LV1]
type = ChangeState
value = 320
triggerall = !var(59)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 220 || stateno = 221
trigger2 = time >= 6 && time <= 16
trigger3 = stateno = 202 || stateno = 222 || stateno = 223
trigger3 = time >= 6 && time <= 28
trigger4 = stateno = 432
trigger4 = time >= 5 && time <= 20
trigger5 = stateno = 412
trigger5 = time >= 6 && time <= 15

[State -1, J - DRIVE ATK-LV2]
type = ChangeState
value = 321
triggerall = !var(59)
triggerall = command = "DRIVE"
triggerall = Var(29)>= 30 && Var(29) <= 100
triggerall = stateno != [0,20]
triggerall = stateno != [100,219]
triggerall = stateno != [300,5210]
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = ctrl = 0
trigger3 = stateno = [120,155]
trigger3 = statetype = A
trigger4 = stateno = 220 || stateno = 221
trigger4 = time >= 6 && time <= 16
trigger5 = stateno = 202 || stateno = 222 || stateno = 223
trigger5 = time >= 6 && time <= 28
trigger6 = stateno = 432
trigger6 = time >= 5 && time <= 20
trigger7 = stateno = 412
trigger7 = time >= 6 && time <= 15

[State -1, J - DRIVE ATK-LV3]
type = ChangeState
value = 322
triggerall = !var(59)
triggerall = command = "DRIVE"
triggerall = Var(29)>= 100
triggerall = stateno != [0,20]
triggerall = stateno != [100,219]
triggerall = stateno != [300,5210]
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = ctrl = 0
trigger3 = stateno = [120,155]
trigger3 = statetype = A
trigger4 = stateno = 220 || stateno = 221
trigger4 = time >= 6 && time <= 16
trigger5 = stateno = 202 || stateno = 222 || stateno = 223
trigger5 = time >= 6 && time <= 28
trigger6 = stateno = 432
trigger6 = time >= 5 && time <= 20
trigger7 = stateno = 412
trigger7 = time >= 6 && time <= 15

;===============================================================================
;-| X's Support Movements |-----------------------------------------------------
;===============================================================================
[State -1, S - Phantom Dash]
type = ChangeState
value = 110
triggerall = !var(59)
trigger1 = command = "c"
trigger1 = statetype != A
trigger1 = ctrl = 1

;-------------------------------------------------------------------------------
[State -1, S - Super Jump]
type = ChangeState
value = 80
triggerall = !var(59)
triggerall = command = "Super Jump"
trigger1 = statetype != A
trigger1 = ctrl

;-------------------------------------------------------------------------------
[State -1, S - Dash Fwd]
type = ChangeState
value = 100
triggerall = !var(59)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------------------------
[State -1, S - Dash Back]
type = ChangeState
value = 105
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------------------------
[State -1, J - Ultimate Dash Fwd]
type = ChangeState
value = 102
triggerall = !var(59)
triggerall = Var(58) = 10000
triggerall = Var(10)= 0
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;-------------------------------------------------------------------------------
[State -1, J - Ultimate Dash Back]
type = ChangeState
value = 107
triggerall = !var(59)
triggerall = Var(58) = 10000
triggerall = Var(10)= 0
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

;-------------------------------------------------------------------------------
[State -1, J - Ultimate Legs-Jets]
type = ChangeState
value = 160
triggerall = !var(59)
triggerall = command = "up"
triggerall = Var(58) = 10000
triggerall = Var(10)= 0
trigger1 = statetype = A
trigger1 = ctrl

;===============================================================================
;-------------------------------------------------------------------------------
;http://megamugenbrasil.ucoz.com/             Fabricado no Brasil/Made in Brazil
;-------------------------------------------------------------------------------
;===============================================================================
