; {character name}'s CMD file

;-| AI Commands |----------------------------------------------------------

;-| AI |-------------------------------------------------------------
[Command]
name = "CPU1"
command = U, D, F
time = 1

[Command]
name = "CPU2"
command = U, B, F
time = 1

[Command]
name = "CPU3"
command = U, D, D
time = 1

[Command]
name = "CPU4"
command = F, B, U
time = 1

[Command]
name = "CPU5"
command = U, F, U, B
time = 1

[Command]
name = "CPU6"
command = U, D, B
time = 1

[Command]
name = "CPU7"
command = F, F, B
time = 1

[Command]
name = "CPU8"
command = U, D, U
time = 1

[Command]
name = "CPU9"
command = F, B, B
time = 1

[Command]
name = "CPU10"
command = F, F, B, B
time = 1

[Command]
name = "CPU11"
command = U, U, F
time = 1

[Command]
name = "CPU12"
command = U, B, B
time = 1

[Command]
name = "CPU13"
command = U, B, F, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, U
time = 1

[Command]
name = "CPU15"
command = U, B, F, U
time = 1

[Command]
name = "CPU16"
command = U, B, B, B
time = 1

[Command]
name = "CPU17"
command = U, D, B, F
time = 1

[Command]
name = "CPU18"
command = U, D, B, D
time = 1

[Command]
name = "CPU19"
command = U, D, F, U
time = 1

[Command]
name = "CPU20"
command = U, D, U, B
time = 1

[Command]
name = "CPU21"
command = U, D, F, F
time = 1

[Command]
name = "CPU22"
command = F, F, F, F
time = 1

[Command]
name = "CPU23"
command = U, U, U, D
time = 1

[Command]
name = "CPU24"
command = B, B, B
time = 1

[Command]
name = "CPU25"
command = D, D, D, D
time = 1

[Command]
name = "CPU26"
command = D, D, D
time = 1

[Command]
name = "CPU27"
command = F, F, F
time = 1

[Command]
name = "CPU28"
command = U, U, U
time = 1

[Command]
name = "CPU29"
command = U, U, B, B
time = 1

[Command]
name = "CPU30"
command = D, D, F, F
time = 1


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
command = D, U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "3P"
command = x+y+z
time = 1

[Command]
name = "3K"
command = a+b+c
time = 1

[Command]
name = "recovery roll"
command = a+b
time = 1

[Command]
name = "recovery roll"
command = b+c
time = 1

[Command]
name = "recovery roll"
command = a+c
time = 1

[Command]
name = "pushblock"
command = x+y
time = 5

[Command]
name = "pushblock"
command = x+z
time = 5

[Command]
name = "pushblock"
command = y+z
time = 5

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


;-| Hypers |-----------------------------------------------------------
[Command] ; Amalgam (Quarter circle forward + hard punch & hard kick)
name = "fdf_kk"
command = ~D, DF, F, a+b
time = 15

[Command] ; Amalgam (Quarter circle forward + hard punch & hard kick)
name = "fdf_kk"
command = ~D, DF, F, b+c
time = 15

[Command] ; Amalgam (Quarter circle forward + hard punch & hard kick)
name = "fdf_kk"
command = ~D, DF, F, a+c
time = 15

[Command] ; Amalgam (Quarter circle forward + hard punch & hard kick)
name = "Amalgam"
command = ~D, DF, F, z+c
time = 15

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

[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, a+x

[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, b+y

[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, c+z

;Hyper 30 hourse of pain
[Command]
name = "30 hourse of pain"
command = ~D, DB, B, a+b
time = 15
[Command]
name = "30 hourse of pain"
command = ~D, DB, B, b+c
time = 15
[Command]
name = "30 hourse of pain"
command = ~D, DB, B, a+c
time = 15

[Command]
name = "Hyper 3"
command = ~D, DB, B, x+y
time = 20
[Command]
name = "Hyper 3"
command = ~D, DB, B, y+z
time = 20
[Command]
name = "Hyper 3"
command = ~D, DB, B, x+z
time = 20

;-| Specials |-----------------------------------------------------------
[command]
name = "heal"
command = ~D,DB,B,a
time = 15



[Command]
name = "hcb_x"
command = ~F, D, B, x

[Command]
name = "hcb_x"
command = ~F, DF, D, DB, B, x

[Command]
name = "hcb_y"
command = ~F, D, B, y

[Command]
name = "hcb_y"
command = ~F, DF, D, DB, B, y

[Command]
name = "hcb_z"
command = ~F, D, B, z

[Command]
name = "hcb_z"
command = ~F, DF, D, DB, B, z

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

[Command] ;Charge back, then forward + kick (a/b/c)
name = "charge_B_F_K"
command = ~30$B, F, a
time = 10

[Command] ;Charge back, then forward + kick (a/b/c)
name = "charge_B_F_K"
command = ~30$B, F, b
time = 10

[Command] ;Charge back, then forward + kick (a/b/c)
name = "charge_B_F_K"
command = ~30$B, F, c
time = 10



;---------------------------------------------------------------------------
; 2. State entry
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
[State -1, AIActivate]
type = VarSet
triggerall = var(59) != 1
triggerall = RoundState != 3
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
trigger10  = command = "CPU10"
trigger11  = command = "CPU11"
trigger12  = command = "CPU12"
trigger13  = command = "CPU13"
trigger14  = command = "CPU14"
trigger15  = command = "CPU15"
trigger16  = command = "CPU16"
trigger17  = command = "CPU17"
trigger18  = command = "CPU18"
trigger19  = command = "CPU19"
trigger20  = command = "CPU20"
trigger21  = command = "CPU21"
trigger22  = command = "CPU22"
trigger23  = command = "CPU23"
trigger24  = command = "CPU24"
trigger25  = command = "CPU25"
trigger26  = command = "CPU26"
trigger27  = command = "CPU27"
trigger28  = command = "CPU28"
trigger29  = command = "CPU29"
trigger30  = command = "CPU30"
var(59) = 1

;======================================================================
;User Input Attacks

;----------------------------------------------------------------------

;---------------------------------------------------------------------------
;Double Hand Gun Assault
[State -1, Double Hand Gun Assault]
type = ChangeState
value = 3000
triggerall = (!IsHelper) && !Var(59)
triggerall = command = "qcf_2p"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [200,450]) && (movecontact = 1)

;---------------------------------------------------------------------------
;Hyper Pompgun
[State -1, Hyper Pompgun]
type = ChangeState
value = 3100
triggerall = (!IsHelper) && !Var(59)
triggerall = command = "fdf_kk" ;|| command = "start"
triggerall = power >= 2500
triggerall = statetype != A
triggerall = NumProjID(3101) = 0
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [200,450]) && (movecontact = 1)

;30 Hourse of Pain
[State -1, 30 Hourse of Pain]
type = ChangeState
value = 3300
triggerall = (!IsHelper) && !Var(59)
triggerall = command = "30 hourse of pain"
triggerall = power >= 1500
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [200,450]) && (movecontact = 1)


;Crow Hell
[State -1, Crow Hell]
type = ChangeState
value = 3002
triggerall = (!IsHelper) && !Var(59)
triggerall = command = "Hyper 3"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [200,450]) && (movecontact = 1)

;---------------------------------------------------------------------------
; Special1
[State -1, Special1]
type = ChangeState
value = 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall =  (command = "qcf_x") || (command = "qcf_y")
triggerall = NumProjID(1010) = 0
trigger1 = (ctrl = 1) || stateno = 100
trigger2 = (stateno = [200,450]) && (movecontact = 1)

; Special2 - Handgun Assault
[State -1, Special2]
type = ChangeState
value = 1200
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall =  (!IsHelper)
triggerall =   (command = "qcf_z")
trigger1 = (ctrl = 1)  || stateno = 100
trigger2 = (stateno = [200,450]) && (movecontact = 1)


[State -1, Sniper (B)]
type = ChangeState
value = 1110
triggerall = var(59) !=1
triggerall = command = "qcb_b"
triggerall = statetype != A
triggerall = power >= 250
trigger1 = (ctrl = 1)
trigger1 = statetype = S && ctrl || stateno = 100
trigger2 = (stateno = [200,520]) && movecontact

; heal
[State -1, Iryo Ninjutsu]
type = ChangeState
Triggerall = life < lifemax /1
Triggerall = var(5) < 3
Triggerall = power >= 350
value = 1100
triggerall = command = "heal"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = numhelper(700) > 0

;---------------------------------------------------------------------------
; Standing Push Block (AKA advancing guard)
;[State -1, SPushBlock]
;type = ChangeState
;value = 750
;triggerall = command = "pushblock" && StateType = S && !Var(59)
;trigger1 = StateNo = 130
;trigger2 = StateNo = [150, 151]
;
;;---------------------------------------------------------------------------
;; Crouching Push Block
;[State -1, CPushBlock]
;type = ChangeState
;value = 752
;triggerall = command = "pushblock" && StateType = C && !Var(59)
;trigger1 = StateNo = 131
;trigger2 = StateNo = [152, 153]
;
;;---------------------------------------------------------------------------
;; Air Push Block
;[State -1, APushBlock]
;type = ChangeState
;value = 754
;triggerall = command = "pushblock" && StateType = A && !Var(59)
;trigger1 = StateNo = 132
;trigger2 = StateNo = [154, 155]


;---------------------------------------------------------------------------
;Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = command != "holdback" && !Var(59)
triggerall = statetype = S ;|| statetype = A
triggerall = ctrl = 1
trigger1 = command = "FF"
trigger2 = command = "3P"

;---------------------------------------------------------------------------
;Back Dash
[State -1, BackDash]
type = ChangeState
value = 105
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = command = "3P"

;---------------------------------------------------------------------------
;Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;trigger2 = command = "holdback"
;trigger2 = p2bodydist X < 5
;trigger2 = (p2statetype = S) || (p2statetype = C)
;trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Superjump
[State -1, Superjump]
type = ChangeState
value = 700
triggerall = (StateType != A) && (Var(0) = 0) && !Var(59)
trigger1 = (command = "DU") && (Ctrl)
trigger2 = (command = "3K") && (Ctrl)
trigger3 = stateno = 420 && movehit && command="holdup"

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = (!IsHelper) && !Var(59)
triggerall = command = "start"
triggerall = power >= 2500
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [200,450]) && (movecontact = 1)


;---------------------------------------------------------------------------
; Throws
;
; (none yet)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = Command = "x"
triggerall = Command != "holddown"
triggerall = StateType != A && !Var(59)
trigger1 = Ctrl = 1 || StateNo = 100

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = Command = "y"
triggerall = Command != "holddown"
triggerall = StateType != A && !Var(59)
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = (StateNo = 200 || StateNo = 230 || StateNo = 400 || StateNo = 430) && (MoveContact)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = Command = "z"
triggerall = Command != "holddown"
triggerall = StateType != A && !Var(59)
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = (StateNo = 200 || StateNo = 230 || StateNo = 400 || StateNo = 430 || StateNo = 210 || StateNo = 410 || StateNo = 240 || StateNo = 440) && (MoveContact)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = Command = "a"
triggerall = Command != "holddown"
triggerall = StateType != A && !Var(59)
trigger1 = Ctrl = 1 || StateNo = 100

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = Command = "b"
triggerall = Command != "holddown"
triggerall = StateType != A && !Var(59)
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = (StateNo = 200 || StateNo = 230 || StateNo = 400 || StateNo = 430) && (MoveContact)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = Command = "c"
triggerall = Command != "holddown"
triggerall = StateType != A && !Var(59)
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = (StateNo = 200 || StateNo = 230 || StateNo = 400 || StateNo = 430 || StateNo = 210 || StateNo = 410 || StateNo = 240 || StateNo = 440) && (MoveContact)

;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = Command = "x"
triggerall = Command = "holddown"
triggerall = StateType != A && !Var(59)
trigger1 = Ctrl = 1 || StateNo = 100

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = Command = "y"
triggerall = Command = "holddown"
triggerall = StateType != A && !Var(59)
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = (StateNo = 200 || StateNo = 230 || StateNo = 400 || StateNo = 430) && (MoveContact)

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = Command = "z"
triggerall = Command = "holddown"
triggerall = StateType != A && !Var(59)
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = (StateNo = 200 || StateNo = 230 || StateNo = 400 || StateNo = 430 || StateNo = 210 || StateNo = 410 || StateNo = 240 || StateNo = 440) && (MoveContact)

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = Command = "a"
triggerall = Command = "holddown"
triggerall = StateType != A && !Var(59)
trigger1 = Ctrl = 1 || StateNo = 100

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = Command = "b"
triggerall = Command = "holddown"
triggerall = StateType != A && !Var(59)
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = (StateNo = 200 || StateNo = 230 || StateNo = 400 || StateNo = 430) && (MoveContact)

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = Command = "c"
triggerall = Command = "holddown"
triggerall = StateType != A && !Var(59)
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = (StateNo = 200 || StateNo = 230 || StateNo = 400 || StateNo = 430 || StateNo = 210 || StateNo = 410 || StateNo = 240 || StateNo = 440) && (MoveContact)

;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = (command = "y") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 630)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = (command = "z") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (stateno = 600) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 630)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = (command = "c") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640)) && (movecontact = 1)

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
