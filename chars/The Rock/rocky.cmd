; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = "some_name"
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /F, a    ;hold fwd while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;               command = ~30
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their engine.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands are given below. Delete, add, or modify as you wish.

-|-AI-|--------------------------------------------------------------------
[Command]
name = "AI_1"
command = a, x, F, D, a, a, D
time = 1

[Command]
name = "AI_2"
command = a, a, a, a, a, a, b
time = 1

[Command]
name = "AI_3"
command = a, a, b, D, F, b, x
time = 1

[Command]
name = "AI_4"
command = y, a, F, b, B, y, a
time = 1

[Command]
name = "AI_5"
command = a, b, x, y, y, b, b
time = 1

[Command]
name = "AI_6"
command = b, y, y, F, b, B, B
time = 1

[Command]
name = "AI_7"
command = a, y, F, a, x, a, F, b
time = 1

[Command]
name = "AI_8"
command = a, a, b, y, x, B, x
time = 1

[Command]
name = "AI_9"
command = x, x, a, F, F, b, D
time = 1

[Command]
name = "AI_10"
command = x, x, a, F, y, a, a, F
time = 1

[Command]
name = "AI_11"
command = a, b, a, x, a, y, a
time = 1

[Command]
name = "AI_12"
command = b, y, a, F, y, a, x
time = 1

[Command]
name = "AI_13"
command = x, a, y, y, x, B, B
time = 1

[Command]
name = "AI_14"
command = a, F, F, x, B, F, x
time = 1

[Command]
name = "AI_15"
command = y, x, b, b, a, x, y
time = 1

;-| Super Motions |--------------------------------------------------------
;-| Double Quarter Circle |--------------------------------------------------------
[Command]
name = "qcfqcfr_rel_x"
command = ~D, DF, F, D, DF, F, ~x
time = 45

[Command]
name = "qcfqcfr_rel_y"
command = ~D, DF, F, D, DF, F, ~y
time = 45

[Command]
name = "qcfqcfr_rel_z"
command = ~D, DF, F, D, DF, F, ~z
time = 45

[Command]
name = "qcfqcfr_x"
command = ~D, DF, F, D, DF, F, x
time = 45

[Command]
name = "qcfqcfr_y"
command = ~D, DF, F, D, DF, F, y
time = 45

[Command]
name = "qcfqcfr_z"
command = ~D, DF, F, D, DF, F, z
time = 45

[Command]
name = "qcbqcb_rel_x"
command = ~D, DB, B, D, DB, B, ~x
time = 45

[Command]
name = "qcbqcb_rel_y"
command = ~D, DB, B, D, DB, B, ~y
time = 45

[Command]
name = "qcbqcb_rel_z"
command = ~D, DB, B, D, DB, B, ~z
time = 45

[Command]
name = "qcbqcb_x"
command = ~D, DB, B, D, DB, B, x
time = 45

[Command]
name = "qcbqcb_y"
command = ~D, DB, B, D, DB, B, y
time = 45

[Command]
name = "qcbqcb_z"
command = ~D, DB, B, D, DB, B, z
time = 45

;-| Special Motions |------------------------------------------------------
;-----------------
; QCF
[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 20

[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 20

[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 20

[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 20

[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 20

[Command]
name = "QCF_z"
command = ~D, DF, F, z
time = 20

[Command]
name = "Super restore's health Taunt"
command = a+b
time = 20
;-----------------
; QCB
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

; Half Circles
[command]
name = "HCF_x"
command = ~B, DB, D, DF, F, x
time = 20

[command]
name = "HCF_y"
command = ~B, DB, D, DF, F, y
time = 20

[command]
name = "HCB_x"
command = ~F, DF, D, DB, B, x
time = 20

[command]
name = "HCB_y"
command = ~F, DF, D, DB, B, y
time = 20

[command]
name = "HCB_a"
command = ~F, DF, D, DB, B, a
time = 20

[command]
name = "HCB_b"
command = ~F, DF, D, DB, B, b
time = 20


; Half Circle ShortCut
[command]
name = "HCB_short_x"
command = ~F, D, B, x
time = 20

[command]
name = "HCB_short_y"
command = ~F, D, B, y
time = 20

[command]
name = "HCB_short_a"
command = ~F, D, B, a
time = 20

[command]
name = "HCB_short_b"
command = ~F, D, B, b
time = 20

;-----------------
; Reverse Uppercut
[Command]
name = "back_uppercut_x"
command = ~B, D, DB, x

;-----------------
; Uppercut
[Command]
name = "uppercut_a"
command = ~F, D, DF, a

[Command]
name = "uppercut_b"
command = ~F, D, DF, b

[Command]
name = "uppercut_c"
command = ~F, D, DF, c

[Command]
name = "uppercut_x"
command = ~F, D, DF, x

[Command]
name = "uppercut_y"
command = ~F, D, DF, y

[Command]
name = "uppercut_z"
command = ~F, D, DF, z


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
name = "chargebackfwd_a"
command = ~60$B, F, a
time = 10

[Command]
name = "chargebackfwd_b"
command = ~60$B, F, b
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

;-| Two Direction + Button |----------------------------------------------

[Command]
name = "shortcharge_backfwd_x"
command = ~B, F, x

[Command]
name = "shortcharge_backfwd_y"
command = ~B, F, y

;-| Double Tap + Button |--------------------------------------------------
[Command]
name = "FF_x"
command = ~F, F, x
time = 6

[Command]
name = "DD_x"
command = ~D, D, x
time = 10

[Command]
name = "DD_y"
command = ~D, D, y
time = 10

[Command]
name = "DD_a"
command = ~D, D, a
time = 10

[Command]
name = "DD_b"
command = ~D, D, b
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

[Command]
name = "DD"
command = D, D
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
name = "xy"
command = x+y
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
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
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
name = "down_y"
command = /$D,y
time = 10

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
name = "start"
command = s
time = 1


;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in. 


;AI Activation
[State -1, AI Deactivation]
type = VarSet
trigger1 = roundstate = 1
trigger2 = roundstate = 3
trigger3 = roundstate = 4
;trigger4 = var(59) = 1
;trigger4 = random > 970
v = 59
value = 0

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;-|-AI-|--------------------------------------------------------------------
[State -1, AI]
type = VarSet
triggerall = roundstate = 2
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
v = 59
value = 1


;--|-AI Defense-|-----------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist x <= 250) && (random = [200,899]) && (vel x < 0)
trigger2 = (p2bodydist x <= 250) && (random = [800,899]) && (vel x > 0)
trigger2 = (p2bodydist x <= 250) && (random = [400,899]) && (vel x = 0)
trigger3 = (anim = 21)
trigger4 = (prevstateno > 5000) && (random < 200)
value = 130

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist x <= 250) && (random = [500,899])
trigger2 = (prevstateno > 5000) && (random < 200)
value = 131

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist x <= 250) && (random = [700,899])
trigger2 = (anim = 43) || (anim = 46)
trigger3 = (prevstateno > 5000) && (random < 200)
value = 132

;-|-AI Combo Attempt-|----------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 20) && (random <= 750)
value = 200

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 20) && (random <= 750)
value = 210


[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 7) && (random <= 750)
value = 230

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 7) && (random <= 750)
value = 240


[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 400

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 410

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 420

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 430


[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 600

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 610


[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 630

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 640

;-|-AI Super Attempt-|----------------------------------------------

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 25)
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1000


;-|-AI Attempt Hyper-|---------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 25)
trigger1 = (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 3000) && (random = [0,100])
value = 3002

;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl

;Taunt
;’§”­
[State -1, Super Taunt restore's health ]
type = ChangeState
value = 196
triggerall = command = "Super restore's health Taunt"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Pickup Attempt
;[State -1]
;type = ChangeState
;value = 1220
;triggerall = P2StateType = L
;triggerall = ctrl = 1
;triggerall = statetype != A
;trigger1 = command = "DD_x"
;trigger2 = command = "DD_y"

;---------------------------------------------------------------------------
; Stomp
;[State -1]
;type = ChangeState
;value = 1230
;triggerall = P2StateType = L
;triggerall = ctrl = 1
;triggerall = statetype != A
;trigger1 = command = "DD_a"
;trigger2 = command = "DD_b"



;---------------------------------------------------------------------------
;Rock Bottom
[State -1]
type = ChangeState
value = 1000
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "HCB_a"
trigger2 = command = "HCB_b"
trigger3 = command = "HCB_short_a"
trigger4 = command = "HCB_short_b"
trigger5 = command = "c"

;---------------------------------------------------------------------------
;Rock Bottom (interrupt)
[State -1]
type = ChangeState
value = 1000
triggerall = movecontact = 1
triggerall = stateno != 210
triggerall = stateno != 400
triggerall = stateno < 600
trigger1 = command = "HCB_a"
trigger2 = command = "HCB_b"
trigger3 = command = "HCB_short_a"
trigger4 = command = "HCB_short_b"
trigger5 = command = "c"

;---------------------------------------------------------------------------
; Running Lariat
[State -1]
type = ChangeState
value = 1150
trigger1 = command = "QCF_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger2 = statetype = S
trigger2 = command = "x"
trigger2 = ctrl = 1
trigger3 = command = "QCF_y"
trigger3 = statetype = S
trigger3 = ctrl = 1
trigger4 = stateno = 100
trigger4 = statetype = S
trigger4 = command = "y"
trigger4 = ctrl = 1

;---------------------------------------------------------------------------
; Running Lariat, X version (interrupt)
[State -1]
type = ChangeState
value = 1150
triggerall = movecontact = 1
triggerall = stateno != 210
triggerall = stateno != 400
triggerall = stateno < 600
trigger1 = command = "QCF_x"
trigger2 = command = "QCF_y"

;---------------------------------------------------------------------------
;Stand_Throw (close dir+b)
; Complicated? Skip the throws and look at stand_a, etc, first.
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = null; ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5 ;Near P2
trigger1 = command = "fwd_y";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_y";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_y";p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_y";p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H

;---------------------------------------------------------------------------
;Air_Throw1 (close dir+b)
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = null; ChangeState
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"

;---------------------------------------------------------------------------
;Layin' the Smackdown Counter
;[State -1]
;type = ChangeState
;value = 1120
;triggerall = command = "QCB_y"
;trigger1 = statetype != A
;trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Block Then Punch Counter
;[State -1]
;type = ChangeState
;value = 1100
;trigger1 = command = "QCB_x"
;trigger1 = statetype = S
;trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Spinning Back Elbow, X button
[State -1]
type = ChangeState
value = 1140
triggerall = command = "shortcharge_backfwd_x"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno != 210
trigger2 = stateno != 400
trigger2 = stateno < 600

;---------------------------------------------------------------------------
; Spinning Back Elbow, Y button
[State -1]
type = ChangeState
value = 1145
triggerall = command = "shortcharge_backfwd_y"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno != 210
trigger2 = stateno != 400
trigger2 = stateno < 600

;===========================================================================
;---------------------------------------------------------------------------
;Stand_A
[State -1]
type = ChangeState
value = 210
triggerall = command = "a";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
 ;The following is true if Player is in stand state, and has control
trigger1 = statetype = S
trigger1 = ctrl = 1
 ;Uncomment the following if you want to be able to do a Stand_A rapidly
;trigger2 = stateno = 210
;trigger2 = time >= 7

;---------------------------------------------------------------------------
;Stand_B Far
;[State -1]
;type = ChangeState
;value = 225
;triggerall = command = "b";Place name of command here
;triggerall = command != "holddown";Standing moves should have this line
 ;The following is true if Player is in stand state, and has control
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;trigger1 = P2BodyDist X > 35

;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 220
triggerall = command = "b";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
 ;The following is true if Player is in stand state, and has control
trigger1 = statetype = S
trigger1 = ctrl = 1
 ;Uncomment the following if you want to be able to do a Stand_A rapidly
;trigger2 = stateno = 220
;trigger2 = time >= 7


;---------------------------------------------------------------------------
;Stand_Y Far
;[State -1]
;type = ChangeState
;value = 255
;triggerall = command = "y"
;triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;trigger1 = P2BodyDist X > 35

;---------------------------------------------------------------------------
;Stand_Y
[State -1]
type = ChangeState
value = 250
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
 ;Uncomment the following if you want to be able to "chain" the attack
 ;from a Stand_X (state 240)
trigger2 = stateno = 240
trigger2 = movecontact = 1  ;If move hits, or is guarded by opponent

;---------------------------------------------------------------------------
;Stand_X
[State -1]
type = ChangeState
value = 240
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
 ;Uncomment the following if you want to be able to "chain" the attack
 ;from a Stand_X (state 240)
;trigger2 = stateno = 240
;trigger2 = movecontact = 1  ;If move hits, or is guarded by opponent

;---------------------------------------------------------------------------
;Stand_Z
;[State -1]
;type = ChangeState
;value = 270
;triggerall = command = "z"
;triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl = 1
 ;Uncomment the following if you want to be able to "chain" the attack
 ;from a Stand_X (state 270)
;trigger2 = stateno = 270
;trigger2 = movecontact = 1  ;If move hits, or is guarded by opponent


;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_X
[State -1]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_Y
[State -1]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Body Press
;[State -1]
;type = ChangeState
;value = 650
;trigger1 = command = "down_y"
;trigger1 = statetype = A
;trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 610
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_X
[State -1]
type = ChangeState
value = 630
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 640
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Smackdown Hotel Level 1
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "qcfqcfr_x"
trigger2 = command = "qcfqcfr_rel_x"

;---------------------------------------------------------------------------
; Smackdown Hotel Level 1, interrupt
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = movecontact = 1
triggerall = stateno != 210
triggerall = stateno != 400
triggerall = stateno < 600
trigger1 = command = "qcfqcfr_x"
trigger2 = command = "qcfqcfr_rel_x"

;---------------------------------------------------------------------------
; Smackdown Hotel Level 2
[State -1]
type = ChangeState
value = 3001
triggerall = power >= 2000
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "qcfqcfr_y"
trigger2 = command = "qcfqcfr_rel_y"

;---------------------------------------------------------------------------
; Smackdown Hotel Level 2, interrupt
[State -1]
type = ChangeState
value = 3001
triggerall = power >= 2000
triggerall = movecontact = 1
triggerall = stateno != 210
triggerall = stateno != 400
triggerall = stateno < 600
trigger1 = command = "qcfqcfr_y"
trigger2 = command = "qcfqcfr_rel_y"

;---------------------------------------------------------------------------
; Smackdown Hotel Level 3
[State -1]
type = ChangeState
value = 3002
triggerall = power >= 3000
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "qcfqcfr_z"
trigger2 = command = "qcfqcfr_rel_z"
trigger3 = command = "z"


;---------------------------------------------------------------------------
; Smackdown Hotel Level 3, interrupt
[State -1]
type = ChangeState
value = 3002
triggerall = power >= 3000
triggerall = movecontact = 1
triggerall = stateno != 210
triggerall = stateno != 400
triggerall = stateno < 600
trigger1 = command = "qcfqcfr_z"
trigger2 = command = "qcfqcfr_rel_z"
trigger3 = command = "z"

;---------------------------------------------------------------------------
; Second Wind Level 1
[State -1]
type = ChangeState
value = 3300
triggerall = power >= 1000
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "qcbqcb_x"
trigger2 = command = "qcbqcb_rel_x"

;---------------------------------------------------------------------------
; Second Wind Level 2
[State -1]
type = ChangeState
value = 3301
triggerall = power >= 2000
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "qcbqcb_y"
trigger2 = command = "qcbqcb_rel_y"

;---------------------------------------------------------------------------
; Second Wind Level 3
[State -1]
type = ChangeState
value = 3302
triggerall = power >= 1000
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "qcbqcb_z"
trigger2 = command = "qcbqcb_rel_z"

