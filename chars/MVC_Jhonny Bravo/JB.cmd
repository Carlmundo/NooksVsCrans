;-------------------------------------------------------------------
;-| Hypers |-----------------------------------------------------------
[Command]
name = "qcf_2p"
command = ~D, DF, F, x+y

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+z

[Command]
name = "qcf_2p"
command = ~D, DF, F, y+z

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+y

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+z

[Command]
name = "qcb_2p"
command = ~D, DB, B, y+z

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+b

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+c

[Command]
name = "qcf_2k"
command = ~D, DF, F, b+c

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+b

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+c

[Command]
name = "qcb_2k"
command = ~D, DB, B, b+c

[Command] ;Charge back, then forward + x+y
name = "HyperPinhead"
command = ~30$B, F, x+y
time = 10

[Command] ;Charge back, then forward + x+z
name = "HyperPinhead"
command = ~30$B, F, x+z
time = 10

[Command] ;Charge back, then forward + y+z
name = "HyperPinhead"
command = ~D, DB, B, y+z
time = 10


;-| Specials |-----------------------------------------------------------
[Command] ;Charge back, then forward + x
name = "Pinhead1"
command = ~30$B, F, x
time = 10

[Command] ;Charge back, then forward + y
name = "Pinhead2"
command = ~35$B, F, y
time = 10

[Command] ;Charge back, then forward + z
name = "Pinhead3"
command = ~40$B, F, z
time = 10

[Command]
name = "qcf_x"
command = ~D, DF, F, x

[Command]
name = "qcf_y"
command = ~D, DF, F, y

[Command]
name = "qcf_z"
command = ~D, DF, F, z

[Command]
name = "anti_x"
command = ~F, D, F, x

[Command]
name = "anti_y"
command = ~F, D, F, y

[Command]
name = "anti_z"
command = ~F, D, F, z

[Command]
name = "qcf_a"
command = ~D, DF, F, a

[Command]
name = "qcf_b"
command = ~D, DF, F, b

[Command]
name = "qcf_c"
command = ~D, DF, F, c

[Command]
name = "qcb_a"
command = ~D, DB, B, a

[Command]
name = "qcb_b"
command = ~D, DB, B, b

[Command]
name = "qcb_c"
command = ~D, DB, B, c

[Command]
name = "qcb_x"
command = ~D, DB, B, x

[Command]
name = "qcb_y"
command = ~D, DB, B, y

[Command]
name = "qcb_z"
command = ~D, DB, B, z


;-| Counterattack |--------------------------------------------------------
[Command]
name = "counter"
command = F, x+a

[Command]
name = "counter"
command = F, y+b

[Command]
name = "counter"
command = F, z+c


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

[Command]
name = "throw_xyz"
command = x+y
time = 5

[Command]
name = "throw_xyz"
command = x+z
time = 5

[Command]
name = "throw_xyz"
command = y+z
time = 5

[Command]
name = "3P"
command = x+y+z
time = 1

[Command]
name = "3K"
command = a+b+c
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

[Command]
name = "hold-start"
command = /s
time = 1

[Command]
name = "release-start"
command = ~s
time = 1


;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "super_jump_up"
command = $D, $U
time = 8

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
; --------------
; Don't remove the following line. It's required by the CMD standard.

[Statedef -1]

;===========================================================================
;**************************************************************
; Hypers:
;   Touchdown
;   Hyper Pinhead
;   Mega Mass
;   Hyper Blanka Envy 
;**************************************************************

; Hyper Blanka Envy 
[State -1, HyperBlankaEnvy]
type = ChangeState
value = 3300
triggerall = !WinKO
triggerall = (statetype != A) && (ctrl = 1) && (power >= 1000)
trigger1 = command = "qcb_2k"
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact
trigger14 = stateno = 1000 && movecontact
trigger15 = stateno = 1001 && movecontact
trigger16 = stateno = 1002 && movecontact
trigger14 = stateno = 1100 && movecontact
trigger15 = stateno = 1101 && movecontact
trigger16 = stateno = 1102 && movecontact
trigger17 = stateno = 1200 && movecontact
trigger18 = stateno = 1201 && movecontact
trigger19 = stateno = 1202 && movecontact
trigger20 = stateno = 3002 && movecontact
trigger21 = stateno = 3100 && movecontact


; Mega Mass
[State -1, MegaMass]
type = ChangeState
value = 3200
triggerall = !WinKO
triggerall = (statetype != A) && (ctrl = 1) && (Var(1) >= 60) && (power >= 1000)
trigger1 = command = "qcb_2p"
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact
trigger14 = stateno = 1000 && movecontact
trigger15 = stateno = 1001 && movecontact
trigger16 = stateno = 1002 && movecontact
trigger14 = stateno = 1100 && movecontact
trigger15 = stateno = 1101 && movecontact
trigger16 = stateno = 1102 && movecontact
trigger17 = stateno = 1200 && movecontact
trigger18 = stateno = 1201 && movecontact
trigger19 = stateno = 1202 && movecontact


; Hyper Pinhead
[State -1, HyperPinhead]
type = ChangeState
value = 3100
triggerall = !WinKO
triggerall = (statetype != A) && (ctrl = 1) && (power >= 1000)
trigger1 = command = "qcf_2k" ;"HyperPinhead"
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact
trigger14 = stateno = 1000 && movecontact
trigger15 = stateno = 1001 && movecontact
trigger16 = stateno = 1002 && movecontact
trigger14 = stateno = 1100 && movecontact
trigger15 = stateno = 1101 && movecontact
trigger16 = stateno = 1102 && movecontact
trigger17 = stateno = 1200 && movecontact
trigger18 = stateno = 1201 && movecontact
trigger19 = stateno = 1202 && movecontact
trigger20 = stateno = 3002 && movecontact
trigger21 = stateno = 3302 && movecontact


; Touchdown
[State -1, Touchdown]
type = ChangeState
value = 3000
triggerall = !WinKO
triggerall = (statetype != A) && (ctrl = 1) && (power >= 1000)
trigger1 = command = "qcf_2p"
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact
trigger14 = stateno = 1000 && movecontact
trigger15 = stateno = 1001 && movecontact
trigger16 = stateno = 1002 && movecontact
trigger14 = stateno = 1100 && movecontact
trigger15 = stateno = 1101 && movecontact
trigger16 = stateno = 1102 && movecontact
trigger17 = stateno = 1200 && movecontact
trigger18 = stateno = 1201 && movecontact
trigger19 = stateno = 1202 && movecontact
;trigger20 = stateno = 3100 && movecontact
;trigger21 = stateno = 3302 && movecontact

; touchdown intro should be treated as a jump
[State -1: StateTypeSet]
type = StateTypeSet
trigger1 = (StateNo = 3000) && (Pos Y < 0)
statetype = A


;**************************************************************
; Specials:
;   Pinhead: (sliding dash with his head)- anim 920
;   Blanka Envy
;   Run Deep
;**************************************************************

;---------------------------------------------------------------------------
; Run Deep Weak (football fireball)
[State -1, RunDeep]
type = ChangeState
value = 1200
triggerall = (statetype = S) && (ctrl = 1)
trigger1 = command = "qcf_x"
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact

;---------------------------------------------------------------------------
; Run Deep Medium (football fireball)
[State -1, RunDeep]
type = ChangeState
value = 1201
triggerall = (statetype = S) && (ctrl = 1)
trigger1 = command = "qcf_y"
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact

;---------------------------------------------------------------------------
; Run Deep Strong (football fireball)
[State -1, RunDeep]
type = ChangeState
value = 1202
triggerall = (statetype = S) && (ctrl = 1)
trigger1 = command = "qcf_z"
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact


;---------------------------------------------------------------------------
; Blanka Envy (weak)
[State -1, BlankaEnvy1]
type = ChangeState
value = 1100
triggerall = (statetype != A) && (ctrl = 1)
trigger1 = command = "qcb_a"
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact

;---------------------------------------------------------------------------
; Blanka Envy (medium)
[State -1, BlankaEnvy2]
type = ChangeState
value = 1101
triggerall = (statetype != A) && (ctrl = 1)
trigger1 = command = "qcb_b"
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact

;---------------------------------------------------------------------------
; Blanka Envy (Strong)
[State -1, BlankaEnvy3]
type = ChangeState
value = 1102
triggerall = (statetype != A) && (ctrl = 1)
trigger1 = command = "qcb_c"
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact


;-------------------------------------------------
; Alpha Counter - Pinhead
[State -1, counter]
type = ChangeState
value = 1050
triggerall = (statetype != A) && (ctrl = 1)
triggerall = (command = "counter") && (stateno = [120,155]) && (power >= 500)
trigger1 = 1


;---------------------------------------------------------------------------
; Pinhead (weak)
[State -1, Pinhead1]
type = ChangeState
value = 1000
triggerall = (statetype != A) && (ctrl = 1)
trigger1 = command = "qcf_a" ;"Pinhead1"
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact

;---------------------------------------------------------------------------
; Pinhead (medium)
[State -1, Pinhead2]
type = ChangeState
value = 1001
triggerall = (statetype != A) && (ctrl = 1)
trigger1 = command = "qcf_b" ;"Pinhead2"
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact

;---------------------------------------------------------------------------
; Pinhead (strong)
[State -1, Pinhead3]
type = ChangeState
value = 1002
triggerall = (statetype != A) && (ctrl = 1)
trigger1 = command = "qcf_c" ;"Pinhead3"
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact


;---------------------------------------------------------------------------
;Guard Push (Standing) ;by Soldats 
[State -1, Guard Push]
type = ChangeState
value = 1400
triggerall = command = "throw_xyz"
triggerall = statetype = S
triggerall = PalNo <= 6
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------
;Guard Push (Crouching) ;by Soldats 
[State -1, Guard Push]
type = ChangeState
value = 1410
triggerall = command = "throw_xyz"
triggerall = statetype = C
triggerall = PalNo <= 6
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------
;Guard Push (Air) ;by Soldats 
[State -1, Guard Push]
type = ChangeState
value = 1420
triggerall = command = "throw_xyz"
triggerall = statetype = A
triggerall = PalNo <= 6
trigger1 = stateno = [154,155]


;-------------------------------------------------
; Throw - Neck Choke (close-range Standing Hard Punch)
[State -1, NeckChoke]
type = ChangeState
value = 800
triggerall = (command = "z") && (command = "holdfwd") && (statetype = S) && (P2BodyDist X < 10)
trigger1 = (statetype != A) && (ctrl = 1)


;---------------------------------------------------------------------------
;Super Jump Up
[State -1, Super Jump Up]
type = ChangeState
value = 60
triggerall = command = "super_jump_up" && ctrl
trigger1 = statetype = S && statetype != A 
trigger2 = stateno = 10  
;-----------------------------
;Launcher
[State -1, Launcher] ;by GGN
type = ChangeState
value = 60
triggerall = Command = "holdup"
trigger1 = stateno = 420 && movehit

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
; Taunt (Energy Clock Charge / Gorilla)
[State -1, Gorilla On]
type = ChangeState
value = 195;802
trigger1 = statetype = S
trigger1 = stateno != 195
trigger1 = ctrl
trigger1 = command = "hold-start" 
trigger1 = !ifelse(vel x > 0, command = "holdfwd", command = "holdback") 

[State -1, Gorilla Off]
type = ChangeState
value = 0
triggerall = stateno = 195
trigger1 = command = "release-start"

;-----------------------------------------------------------------
; NORMAL ATTACKS:
;  200: light punch
;  210: medium punch
;  220: hard punch
;  230: light kick
;  240: medium kick
;  250: hard kick

;-------------------------------------------------
; Standing Light Punch
[State -1, LightPunch]
type = ChangeState
value = 200
triggerall = (command = "x") && (statetype = S)
trigger1 = ctrl = 1

;-------------------------------------------------
; Standing Medium Punch
[State -1, MedPunch]
type = ChangeState
value = 210
triggerall = (command = "y") && (statetype = S)
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact 
trigger3 = stateno = 230 && movecontact 
trigger4 = stateno = 400 && movecontact 
trigger5 = stateno = 430 && movecontact

;-------------------------------------------------
; Standing Hard Punch
[State -1, HardPunch]
type = ChangeState
value = 220
triggerall = (command = "z") && (statetype = S)
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

;-------------------------------------------------
; Standing Light Kick
[State -1, LightKick]
type = ChangeState
value = 230
triggerall = (command = "a") && (statetype = S)
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact

;-------------------------------------------------
; Standing Medium Kick
[State -1, MedKick]
type = ChangeState
value = 240
triggerall = (command = "b") && (statetype = S)
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact 
trigger3 = stateno = 210 && movecontact 
trigger4 = stateno = 230 && movecontact 
trigger5 = stateno = 400 && movecontact 
trigger6 = stateno = 410 && movecontact 
trigger7 = stateno = 430 && movecontact

;-------------------------------------------------
; Standing Hard Kick
[State -1, HardKick]
type = ChangeState
value = 250
triggerall = (command = "c") && (statetype = S)
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 420 && movecontact
trigger10 = stateno = 430 && movecontact
trigger11 = stateno = 440 && movecontact

;-----------------------------------------------------------------
; CROUCHING ATTACKS
;  400: light punch
;  410: medium punch
;  420: hard punch
;  430: light kick
;  440: medium kick
;  450: hard kick
;-----------------------------------------------------------------

;-------------------------------------------------
; Crouching Light Punch
[State -1, CrouchLitePunch]
type = ChangeState
value = 400
triggerall = (command = "x") && (statetype = C)
trigger1 = ctrl = 1

;-------------------------------------------------
; Crouching Medium Punch
[State -1, CrouchMedPunch]
type = ChangeState
value = 410
triggerall = (command = "y") && (statetype = C)
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact 
trigger3 = stateno = 230 && movecontact 
trigger4 = stateno = 400 && movecontact 
trigger5 = stateno = 430 && movecontact

;-------------------------------------------------
; Crouching Hard Punch
[State -1, CrouchHardPunch]
type = ChangeState
value = 420
triggerall = (command = "z") && (statetype = C)
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

;-------------------------------------------------
; Crouching Light Kick
[State -1, CrouchLiteKick]
type = ChangeState
value = 430
triggerall = (command = "a") && (statetype = C)
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact

;-------------------------------------------------
; Crouching Medium Kick
[State -1, CrouchMedKick]
type = ChangeState
value = 440
triggerall = (command = "b") && (statetype = C)
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact 
trigger3 = stateno = 210 && movecontact 
trigger4 = stateno = 230 && movecontact 
trigger5 = stateno = 400 && movecontact 
trigger6 = stateno = 410 && movecontact 
trigger7 = stateno = 430 && movecontact

;-------------------------------------------------
; Crouching Hard Kick
[State -1, CrouchHardKick]
type = ChangeState
value = 450
triggerall = (command = "c") && (statetype = C)
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 420 && movecontact
trigger10 = stateno = 430 && movecontact
trigger11 = stateno = 440 && movecontact

;-----------------------------------------------------------------
; AIRIAL ATTACKS
;  600: light punch
;  610: medium punch
;  620: hard punch
;  630: light kick
;  640: medium kick
;  650: hard kick
;-----------------------------------------------------------------

;-------------------------------------------------
; air light punch
[State -1, AirLightPunch]
type = ChangeState
value = 600
triggerall = (command = "x") && (statetype = A)
trigger1 = ctrl = 1

;-------------------------------------------------
; air medium punch
[State -1, AirMedPunch]
type = ChangeState
value = 610
triggerall = (command = "y") && (statetype = A)
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 630 && movecontact

;-------------------------------------------------
; air hard punch
[State -1, AirHardPunch]
type = ChangeState
value = 620
triggerall = (command = "z") && (statetype = A)
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;-------------------------------------------------
; air light kick
[State -1, AirLiteKick]
type = ChangeState
value = 630
triggerall = (command = "a") && (statetype = A)
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact

;-------------------------------------------------
; air medium kick
[State -1, AirMedKick]
type = ChangeState
value = 640
triggerall = (command = "b") && (statetype = A)
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 610 && movecontact 
trigger4 = stateno = 630 && movecontact

;-------------------------------------------------
; air hard kick
[State -1, AirHardKick]
type = ChangeState
value = 650
triggerall = (command = "c") && (statetype = A)
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact


;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------
