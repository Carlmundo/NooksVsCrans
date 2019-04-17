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
;   name = some_name
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
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
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
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

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

;-| Super Motions |--------------------------------------------------------
[command]
name = "BreakTheInternet"
command = D, DF, F, a+b
time = 15

[command]
name = "BreakTheInternet"
command = D, DB, B, a+b
time = 15

[command]
name = "WreckItCombo"
command = D, DF, F, x+y
time = 15

[command]
name = "WreckItCombo"
command = D, DB, B, x+y
time = 15

[command]
name = "ImGonnaWreckIt"
command = D, DF, F, c+z
time = 15

[command]
name = "8BitBlast"
command = D, DB, B, c+z
time = 15

[command]
name = "DownYouGo"
command = D, DB, B, D, DB, B, x+y+z
time = 25

[command]
name = "DownYouGo"
command = D, DB, B, D, DB, B, c
time = 25

;-| Ability Motions |------------------------------------------------------
[Command]
name = "ComboExtender"
command = /F,c+z
time = 10

[Command]
name = "AirComboExtender"
command = /U,c+z
time = 10

[Command]
name = "SuperJump"
command = ~D, U
time = 10

;-| Special Motions |------------------------------------------------------
[command]
name = "WreckItPunch1"
command = D, DF, F, x
time = 15

[command]
name = "WreckItPunch1"
command = D, DB, B, x
time = 15

[command]
name = "WreckItPunch2"
command = D, DF, F, y
time = 15

[command]
name = "WreckItPunch2"
command = D, DB, B, y
time = 15

[command]
name = "WreckItPunch3"
command = D, DF, F, z
time = 15

[command]
name = "WreckItPunch3"
command = D, DB, B, z
time = 15

[command]
name = "LostandFound"
command = D, DF, F, a
time = 15

[command]
name = "LostandFound"
command = D, DB, B, a
time = 15

[command]
name = "CherryBomb"
command = D, DF, F, b
time = 15

[command]
name = "CherryBomb"
command = D, DB, B, b
time = 15

[command]
name = "8BitBricks"
command = D, DF, F, c
time = 15

[command]
name = "8BitBricks"
command = D, DB, B, c
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

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
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


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;-|-AI-|--------------------------------------------------------------------
[State -1, AI Activation]
type = VarSet
triggerall = AILevel > 2
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = Random <= ((AILevel-2)*100)
v = 59
value = 1

[State -1, AI Deactivation]
type = VarSet
triggerall = AIlevel < 7
triggerall = var(59) = 1
trigger1 = Random > ((AILevel-2)*100)
trigger2 = roundstate != 2
v = 59
value = 0

;--|-AI Combos-|------------------------------------------------------------
;Start Standing Chain Combo
[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 200) && movecontact
value = 230

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 230) && movecontact
value = 210

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 210) && movecontact
value = 240

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 240) && movecontact
value = 220

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = power >= 600
triggerall = numhelper(263) = 0
trigger1 = (stateno = 220) && movecontact
value = 6260

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 220) && movecontact && (random = [0,500])
value = 1200

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
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 262) && time = 10
value = 400

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 400) && movecontact
value = 430

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 430) && movecontact
value = 410

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 410) && movecontact
value = 440

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall =(roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 440) && movecontact
value = 420

[State -1, Ready to Launch]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 420) && movecontact
value = 67000

[State -1, Alternate start for Easy AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 400) && movecontact
trigger2 = p2stateno != 7600
trigger2 = (Ctrl) && (statetype = S)
trigger2 = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger2 = (p2bodydist x <= 40) && (random < 50)
value = 410

[State -1, Combo start for Med/Hard AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random < 100)
value = 400
;End Crouching Chain

;---------------------------------------------------------------------------
;Start Air Chain
[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 600) &&  movecontact
value = 630

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 630) && movecontact
value = 610

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 610) && movecontact
value = 640

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = power >= 600
triggerall = numhelper(661) = 0
trigger1 = (stateno = 640) && movecontact
value = 6660

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = numhelper(661) = 1
trigger1 = (stateno = 6660) && movecontact
value = 600

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 640) && movecontact
value = 6620

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

;-|-AI Throw Attempt-|---------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 0) && (random <= 799)
value = 800

;-|-AI Ability Attempt-|---------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist X <= 275) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 6100

;-|-AI Special Attempt-|---------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist X <= 150) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist X <= 185) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist X <= 200) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist X <= 280) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 67100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
triggerall = numhelper(1301) = 0
trigger1 = (p2bodydist X <= 225) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1300

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,500])
triggerall = numhelper(1301) = 0
trigger1 = (p2bodydist X <= 225) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 1340

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
triggerall = numhelper(1401) = 0
trigger1 = (p2bodydist X <= 260) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1400

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,500])
triggerall = numhelper(1401) = 0
trigger1 = (p2bodydist X <= 260) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 1410

;[State -1, Artificial Intelligence]
;type = ChangeState
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
;triggerall = numhelper(1501) = 0
;trigger1 = (p2bodydist X <= 275) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
;value = 1500

;[State -1, Artificial Intelligence]
;type = ChangeState
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (Ctrl) && (Statetype = A) && (random = [0,500])
;triggerall = numhelper(1501) <= 4
;triggerall = numhelper(3510) = 0
;trigger1 = (p2bodydist X <= 275) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
;value = 1510

;-|-AI Hyper Attempt|---------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power > 1000) && (random = [0,300]) && (statetype != A)
value = 3000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
triggerall = numhelper(3101) = 0
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power > 1000) && (random = [0,300]) && (statetype != A)
value = 3100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power > 2000) && (random = [0,300]) && (statetype != A)
value = 3200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
triggerall = numhelper(1501) >= 1
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power > 2000) && (random = [0,300]) && (statetype != A)
value = 3300

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power > 3000) && (random = [0,300]) && (statetype != A)
value = 3400

;===========================================================================
;---------------------------------------------------------------------------
;Wreck-It Combo
[State -1, Wreck-It Combo]
type = ChangeState
value = 3000
triggerall = Power >= 1000
triggerall = command = "WreckItCombo"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3999)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Break the Internet
[State -1, Break the Internet]
type = ChangeState
value = 3100
triggerall = numhelper(3101) = 0
triggerall = Power >= 1000
triggerall = command = "BreakTheInternet"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3999)
trigger2 = movecontact

;---------------------------------------------------------------------------
;I'm Gonna Wreck It!
[State -1, I'm Gonna Wreck It]
type = ChangeState
value = 3200
triggerall = Power >= 2000
triggerall = command = "ImGonnaWreckIt"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3999)
trigger2 = movecontact

;---------------------------------------------------------------------------
;8-Bit Blast
[State -1, 8-Bit Blast]
type = ChangeState
value = 3300
triggerall = numhelper(1501) >= 1
triggerall = Power >= 2000
triggerall = command = "8BitBlast"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3999)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Down You Go
[State -1, Down You Go]
type = ChangeState
value = 3400
triggerall = Power >= 3000
triggerall = command = "DownYouGo"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3999)
trigger2 = movecontact

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,259]) || (stateno = [400,450])
trigger2 = movecontact
var(1) = 1

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(2) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699]) || (stateno = 2700)
trigger2 = movecontact
var(2) = 1

;===========================================================================
;---------------------------------------------------------------------------
;Combo Extender
[State -1, Combo Extender]
type = ChangeState
value = 260
triggerall = Power >= 600
triggerall = numhelper(263) = 0
triggerall = command = "ComboExtender"
trigger1 = (statetype = s) && ctrl
trigger1 = statetype != A
trigger2 = var(1)

;---------------------------------------------------------------------------
;Air Combo Extender
[State -1, Air Combo Extender]
type = ChangeState
value = 660
triggerall = Power >= 600
triggerall = numhelper(661) = 0
triggerall = command = "AirComboExtender"
trigger1 = (statetype = a) && ctrl
trigger2 = var(2)

;---------------------------------------------------------------------------
[State -1, Standing Parry]
type = HitOverride
trigger1 = var(59) <= 0
trigger1 = roundstate = 2 && (statetype = S || stateno = 5120)
trigger1 = command = "fwd" && command != "back" && command != "up" && command != "down"
trigger1 = ctrl || (stateno = [700,701]) || stateno = 5120
trigger1 = var(21) := 1
attr = SA,AA,AP
stateno = 700
slot = 0
time = 8

[State -1, Crouching Parry]
type = HitOverride
trigger1 = var(59) <= 0
trigger1 = roundstate = 2 && statetype != A
trigger1 = command = "down" && command != "fwd" && command != "back" && command != "up"
trigger1 = ctrl || (stateno = [700,701]) || stateno = 5120
trigger1 = var(21) := 2
attr = C,AA,AP
stateno = 701
slot = 0
time = 8

[State -1, Air Parry]
type = HitOverride
trigger1 = var(59) <= 0
trigger1 = roundstate = 2 && statetype = A
trigger1 = command = "fwd" && command != "back" && command != "up" && command != "down"
trigger1 = ctrl || stateno = 702
trigger1 = var(21) := 3
attr = SA,AA,AP
stateno = 702
forceair = 1
slot = 0
time = 7

;---------------------------------------------------------------------------
;Wreck-It Punch 1
[State -1, Wreck-It Punch 1]
type = ChangeState
value = 1000
triggerall = command = "WreckItPunch1"
trigger1 = (statetype = s) && ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;Wreck-It Punch 2
[State -1, Wreck-It Punch 2]
type = ChangeState
value = 1100
triggerall = command = "WreckItPunch2"
trigger1 = (statetype = s) && ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;Wreck-It Punch 3
[State -1, Wreck-It Punch 3]
type = ChangeState
value = 1200
triggerall = command = "WreckItPunch3"
trigger1 = (statetype = s) && ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;Tapper's Lost and Found
[State -1, Tapper's Lost and Found]
type = ChangeState
value = 1300
triggerall = numhelper(1301) = 0
triggerall = command = "LostandFound"
trigger1 = (statetype = s) && ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;Tapper's Lost and Found Air
[State -1, Tapper's Lost and Found Air]
type = ChangeState
value = 1340
triggerall = numhelper(1301) = 0
triggerall = command = "LostandFound"
trigger1 = (statetype = a) && ctrl

;---------------------------------------------------------------------------
;Cherry Bomb
[State -1, Cherry Bomb]
type = ChangeState
value = 1400
triggerall = numhelper(1401) = 0
triggerall = command = "CherryBomb"
trigger1 = (statetype = s) && ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;Cherry Bomb Air
[State -1, Cherry Bomb Air]
type = ChangeState
value = 1410
triggerall = numhelper(1401) = 0
triggerall = command = "CherryBomb"
trigger1 = (statetype = a) && ctrl

;---------------------------------------------------------------------------
;8-Bit Bricks
[State -1, 8-Bit Bricks]
type = ChangeState
value = 1500
triggerall = numhelper(1501) <= 4
triggerall = numhelper(3510) = 0
triggerall = command = "8BitBricks"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;8-Bit Bricks Air
[State -1, 8-Bit Bricks Air]
type = ChangeState
value = 1510
triggerall = numhelper(1501) <= 4
triggerall = numhelper(3510) = 0
triggerall = command = "8BitBricks"
trigger1 = (statetype = a) && ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 196
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
trigger1 = Command = "SuperJump"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 420
trigger2 = (movecontact) && (command = "holdup")

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
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 430) && movecontact
trigger9 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger7 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 220) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 240) && movecontact
trigger7 = (stateno = 400) && movecontact
trigger8 = (stateno = 410) && movecontact
trigger9 = (stateno = 430) && movecontact
trigger10 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 430) && movecontact
trigger9 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 220) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 240) && movecontact
trigger7 = (stateno = 400) && movecontact
trigger8 = (stateno = 410) && movecontact
trigger9 = (stateno = 420) && movecontact
trigger10 = (stateno = 430) && movecontact
trigger11 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
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
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 630) && movecontact
trigger4 = (stateno = 660) && movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 660) && movecontact

;---------------------------------------------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 620) && movecontact
trigger5 = (stateno = 630) && movecontact
trigger6 = (stateno = 640) && movecontact