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
; maximum 30


command.buffer.time = 1

;-| AI Activate |-----------------------------------------------------------

[Command]
name = "CPU1"
command = a,a,a,a,a,a,a
time = 0

[Command]
name = "CPU2"
command = a,b,a,a,a,a,a
time = 0

[Command]
name = "CPU3"
command = a,a,b,a,a,a,a
time = 0

[Command]
name = "CPU4"
command = a,a,a,b,a,a,a
time = 0

[Command]
name = "CPU5"
command = a,a,a,a,b,a,a
time = 0

[Command]
name = "CPU6"
command = a,a,a,a,a,b,a
time = 0

[Command]
name = "CPU7"
command = a,a,a,a,a,a,b
time = 0

[Command]
name = "CPU8"
command = b,b,a,a,a,a,a
time = 0

[Command]
name = "CPU9"
command = b,a,b,a,a,a,a
time = 0

[Command]
name = "CPU10"
command = b,a,a,b,a,a,a
time = 0

[Command]
name = "CPU11"
command = b,a,a,a,b,a,a
time = 0

[Command]
name = "CPU12"
command = b,a,a,a,a,b,a
time = 0

[Command]
name = "CPU13"
command = b,a,a,a,a,a,b
time = 0

[Command]
name = "CPU14"
command = b,b,b,a,a,a,a
time = 0

[Command]
name = "CPU15"
command = b,b,a,b,a,a,a
time = 0

[Command]
name = "CPU16"
command = b,b,a,a,b,a,a
time = 0

[Command]
name = "CPU17"
command = b,b,a,a,a,b,a
time = 0

[Command]
name = "CPU18"
command = b,b,a,a,a,a,b
time = 0

[Command]
name = "CPU19"
command = b,b,b,b,a,a,a
time = 0

[Command]
name = "CPU20"
command = b,b,b,a,b,a,a
time = 0

[Command]
name = "CPU21"
command = b,b,b,a,a,b,a
time = 0
[Command]
name = "CPU22"
command = b,b,b,a,a,a,b
time = 0
[Command]
name = "CPU23"
command = b,b,b,b,b,a,a
time = 0
[Command]
name = "CPU24"
command = b,b,b,b,a,b,a
time = 0
[Command]
name = "CPU25"
command = b,b,b,b,a,a,b
time = 0
[Command]
name = "CPU26"
command = b,b,b,b,b,b,a
time = 0
[Command]
name = "CPU27"
command = b,b,b,b,b,a,b
time = 0
[Command]
name = "CPU28"
command = b,b,b,b,b,b,b
time = 0
[Command]
name = "CPU29"
command = c,b,b,b,b,b,b
time = 0
[Command]
name = "CPU30"
command = b,c,b,b,b,b,b
time = 0

;-| Super Motions |--------------------------------------------------------

[Command]
name = "lazor"
command = ~D, DF, F, D, DF, F, b
time = 25

[command]
name = "Flamethrower"
command = ~D, DF, F, D, DF, F, x
time = 25

[command]
name = "beatdown"
command = ~D, DB, B, D, DB, B, y
time = 25

[command]
name = "bazooka"
command = ~D, DB, B, D, DB, B, x
time = 25

[command]
name = "power"
command = ~D, DB, B, D, DB, B, z
time = 25
;-| Special Motions |------------------------------------------------------
[command]
name = "bomb"
command = D,B,x
time = 15

[command]
name = "needler"
command = D,F,c
time = 15

[command]
name = "alien gun"
command = D,F,b
time = 15

[command]
name = "sniper"
command = D,F,z
time = 15

[command]
name = "shotgun"
command = D,F,y
time = 15

[command]
name = "231"
command = D,F,a
time = 15

[command]
name = "201"
command = D,F,x
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



;Flamethrower
[State -1, Flamethrower]
type = ChangeState
value = 703
triggerall = command = "Flamethrower"
trigger1 = (command = "Flamethrower") && (power >= 3000)

;lazor
[State -1, lazor]
type = ChangeState
value = 270
trigger1 = (command = "lazor") && (power >= 2000)

;beatdown
[State -1, beatdown]
type = ChangeState
value = 260
trigger1 = (command = "beatdown") && (power >= 1000)


;bazooka
[State -1, bazooka]
type = ChangeState
value = 700
triggerall = command = "bazooka"
trigger1 = (command = "bazooka") && (power >= 1000)

;power rangers
[State -1, power]
type = ChangeState
value = 900
triggerall = command = "power"
trigger1 = (command = "power") && (power >= 2000)



;needler
[State -1, needler]
type = ChangeState
value = 251
triggerall = command = "needler"
trigger1 = (statetype = s) && ctrl




;alien gun
[State -1, alien gun]
type = ChangeState
value = 241
triggerall = command = "alien gun"
trigger1 = (statetype = s) && ctrl


;sniper
[State -1, sniper]
type = ChangeState
value = 221
triggerall = command = "sniper"
trigger1 = (statetype = s) && ctrl


;shotgun
[State -1, shotgun]
type = ChangeState
value = 211
triggerall = command = "shotgun"
trigger1 = (statetype = s) && ctrl
trigger2 = StateNo = 201
trigger2 = movecontact

;231
[State -1, 231]
type = ChangeState
value = 231
triggerall = command = "231"
trigger1 = (statetype = s) && ctrl



;201
[State -1, normal gun]
type = ChangeState
value = 201
triggerall = command = "201"
trigger1 = statetype = s
trigger2 = StateNo = 210
trigger2 = movecontact
trigger3 = StateNo = 211
trigger3 = movecontact

;bomb
[State -1, bomb]
type = ChangeState
value = 706
triggerall = command = "bomb"
trigger1 = (statetype = s) && ctrl
;===========================================================================
;---------------------------------------------------------------------------

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
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 210
trigger2 = movecontact

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = movecontact
trigger3 = StateNo = 201
trigger3 = movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 420
trigger2 = movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 240
trigger2 = movecontact

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 230
trigger2 = movecontact
trigger3 = StateNo = 250
trigger3 = movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 240
trigger2 = movecontact

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
trigger2 = StateNo = 420
trigger2 = movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 220
trigger2 = movecontact
trigger3 = StateNo = 251
trigger3 = movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 450
trigger2 = movecontact
trigger3 = StateNo = 430
trigger3 = movecontact


;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 440
trigger2 = movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 640
trigger2 = movecontact

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 650
trigger2 = movecontact

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 640
trigger2 = movecontact

;---------------------------------------------------------------------------

[State -2, Activate AI]
type = VarSet
triggerall = var(59) != 1
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
trigger21 = command = "CPU21"
trigger22 = command = "CPU22"
trigger23 = command = "CPU23"
trigger24 = command = "CPU24"
trigger25 = command = "CPU25"
trigger26 = command = "CPU26"
trigger27 = command = "CPU27"
trigger28 = command = "CPU28"
trigger29 = command = "CPU29"
trigger30 = command = "CPU30"
v = 59
value = 1

[state -2]
type = changestate
triggerall = var(59)
triggerall = p2movetype != A
triggerall = statetype != A
triggerall = p2bodydist x > 3
trigger1 = ctrl = 1
value = 200

[state -2]
type = changestate
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2bodydist x > 10
trigger1 = StateNo = 200
trigger1 = movecontact
value = 210

[state -2]
type = changestate
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2bodydist x > 10
trigger1 = stateno = 210
trigger1 = movecontact
value = 201

[state -2]
type = changestate
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2bodydist x > 10
trigger1 = StateNo = 201
trigger1 = movecontact
value = 211

[state -2]
type = changestate
triggerall = var(59) = 1
triggerall = p2bodydist x > 10
trigger1 = moveguarded
trigger1 = stateno = 200
trigger2 = prevstateno = 200 && moveguarded
value = 430

[state -2]
type = changestate
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2bodydist x > 10
trigger1 = stateno = 430
trigger1 = movecontact
value = 440

[state -2]
type = changestate
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2bodydist x > 10
trigger1 = stateno = 440
trigger1 = movecontact
value = 450

[state -2]
type = changestate
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2bodydist x > 100
triggerall = enemy,NumProj = 1
trigger1 = random >= 5000
value = 221

[state -2]
type = varset
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2bodydist x > 30
trigger1 = StateNo = 221
trigger1 = movecontact
sysvar(1) = 1
value = 20

[state -2]
type = changestate
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = random <= 5000
value = 700

[state -2]
type = changestate
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = random <= 5000
value = 260

[state -2]
type = changestate
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = random <= 5000
value = 900

[state -2]
type = changestate
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = random <= 5000
value = 270

[state -2]
type = changestate
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = random <= 5000
value = 703

[state -2]
type = changestate
triggerall = var(59) = 1
triggerall = statetype = A
trigger1 = ctrl = 1
value = 630

[state -2]
type = changestate
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = Stateno = 630
trigger1 = movecontact
value = 640

[state -2]
type = changestate
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = Stateno = 640
trigger1 = movecontact
value = 650

[state -2]
type = varset
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2bodydist x > 30
trigger1 = ctrl = 1
sysvar(1) = 1
value = 20

[state -2]
type = varset
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2bodydist x > 30
trigger1 = ctrl = 1
sysvar(1) = 1
value = 40

[state -2]
type = varset
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2bodydist x > 30
trigger1 = ctrl = 1
sysvar(1) = 1
value = 100
