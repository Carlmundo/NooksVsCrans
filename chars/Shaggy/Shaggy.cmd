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

[command]
name = "ultimatespincycle"
command = ~D, DF, F, x+y
time = 30

[command]
name = "Fire!"
command = ~D, DF, F, a+b
time = 30

[command]
name = "mysteryincmachine"
command = ~D, DB, B, a+b
time = 30

;-| Special Motions |------------------------------------------------------

[command]
name = "spincycle"
command = ~D, DF, F, x
time = 20

[command]
name = "ringthrow"
command = ~D, DB, B, x
time = 20

[command]
name = "ringthrow2"
command = ~D, DB, B, y
time = 20

[command]
name = "ringthrow3"
command = ~D, DB, B, z
time = 20

[command]
name = "Soap"
command = ~D, DF, F, a
time = 20

[command]
name = "Soap2"
command = ~D, DF, F, b
time = 20

[command]
name = "Soap3"
command = ~D, DF, F, c
time = 25

[command]
name = "Tree"
command = ~F, DF, F, a
time = 20

[command]
name = "Tree2"
command = ~F, DF, F, b
time = 20

[command]
name = "Tree3"
command = ~F, DF, F, c
time = 20

[command]
name = "Pound"
command = ~F, F, a
time = 15

[command]
name = "EXPound"
command = ~F, F, b
time = 20

[command]
name = "Fart"
command = ~D, B, x
time = 9

[command]
name = "shaggy"
command = ~D, DB, B, a
time = 10

[command]
name = "scrappy"
command = ~D, DB, B, b
time = 10

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

;-|-AI Attempt Hyper-|---------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 150) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0) && (random = [0,300])
triggerall = NumHelper(3001) = 0
value = 3000
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 150) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 2000) && (numproj = 0) && (random = [0,300])
triggerall = NumHelper(3201) = 0 && NumHelper(3202) = 0 && NumHelper(3203) = 0 && NumHelper(3204) = 0
value = 3200
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 150) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 3000) && (numproj = 0) && (random = [0,300])
triggerall = NumHelper(3101) = 0
value = 3100
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 800
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Random <= 400
trigger1 = Ctrl && P2MoveType = A && StateType = S
trigger1 = P2BodyDist X <= 70
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1000
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && statetype = S
trigger1 = P2BodyDist X >= 140 && Random <= 600
trigger1 = p2statetype != C
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1100
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && statetype = S
trigger1 = P2BodyDist X >= 100 && Random <= 600
trigger1 = p2statetype != C
triggerall = NumHelper(1101) = 0 && NumHelper(1103) = 0 && NumHelper(1105) = 0
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1010
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && statetype = S
trigger1 = P2BodyDist X >= 100 && Random <= 600
trigger1 = p2statetype != C
triggerall = NumHelper(1011) = 0 && NumHelper(1013) = 0 && NumHelper(1015) = 0
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1020
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && statetype = S
trigger1 = P2BodyDist X >= 100 && Random <= 700
trigger1 = p2statetype != C
triggerall = NumHelper(1021) = 0 && NumHelper(1023) = 0 && NumHelper(1029) = 0
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1200
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && statetype = S
trigger1 = P2BodyDist X >= 60 && Random <= 600
trigger1 = p2statetype != C
triggerall = NumHelper(1201) = 0
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1150
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && statetype = S
trigger1 = P2BodyDist X >= 20 && Random <= 600
trigger1 = p2statetype != C
;--------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 6000
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 150
Triggerall = Numhelper(6001) = 0 && Numhelper(6101) = 0
triggerall = p2name != "Shaggy Rogers"
triggerall = p3name != "Shaggy Rogers"
triggerall = p4name != "Shaggy Rogers"
;--------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 6100
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 150
Triggerall = Numhelper(6001) = 0 && Numhelper(6101) = 0
;- | AI Dashes | ----------------------------------------------------------

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
;Ultimate Spin Cycle

[State -1, Ultimate Spin Cycle]
type = ChangeState
value = 3000
triggerall = command = "ultimatespincycle"
triggerall = NumHelper(3001) = 0
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050]
trigger2 = movecontact
trigger3 = (stateno = 200) && (movecontact) && time > 2
trigger4 = (stateno = 210) && (movecontact) && time > 2
trigger5 = (stateno = 230) && (movecontact) && time > 2
trigger6 = (stateno = 240) && (movecontact) && time > 2
trigger7 = (stateno = 400) && (movecontact) && time > 2
trigger8 = (stateno = 410) && (movecontact) && time > 2
trigger9 = (stateno = 430) && (movecontact) && time > 2
trigger10 = (stateno = 440) && (movecontact) && time > 2

[State -1, Ultimate Spin Cycle (air)]
type = ChangeState
value = 3000
triggerall = command = "ultimatespincycle"
triggerall = NumHelper(3001) = 0
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = statetype != S
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050]
trigger2 = movecontact
trigger3 = (stateno = 600) && (movecontact) && time > 2
trigger4 = (stateno = 610) && (movecontact) && time > 2
trigger5 = (stateno = 630) && (movecontact) && time > 2
trigger6 = (stateno = 640) && (movecontact) && time > 2

;---------------------------------------------------------------------------
;Flame Breather

[State -1, Flame Breather]
type = ChangeState
value = 3200
triggerall = command = "Fire!"
triggerall = NumHelper(3201) = 0
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050]
trigger2 = movecontact
trigger3 = (stateno = 200) && (movecontact) && time > 2
trigger4 = (stateno = 210) && (movecontact) && time > 2
trigger5 = (stateno = 230) && (movecontact) && time > 2
trigger6 = (stateno = 240) && (movecontact) && time > 2
trigger7 = (stateno = 400) && (movecontact) && time > 2
trigger8 = (stateno = 410) && (movecontact) && time > 2
trigger9 = (stateno = 430) && (movecontact) && time > 2
trigger10 = (stateno = 440) && (movecontact) && time > 2

;---------------------------------------------------------------------------
;Mystery Inc. Machine

[State -1, Mystery Inc. Machine]
type = ChangeState
value = 3100
triggerall = command = "mysteryincmachine"
triggerall = NumHelper(3101) = 0
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050]
trigger2 = movecontact
trigger3 = (stateno = 200) && (movecontact) && time > 2
trigger4 = (stateno = 210) && (movecontact) && time > 2
trigger5 = (stateno = 230) && (movecontact) && time > 2
trigger6 = (stateno = 240) && (movecontact) && time > 2
trigger7 = (stateno = 400) && (movecontact) && time > 2
trigger8 = (stateno = 410) && (movecontact) && time > 2
trigger9 = (stateno = 430) && (movecontact) && time > 2
trigger10 = (stateno = 440) && (movecontact) && time > 2

;-------------------------------------------------------------------------------
;Spin Cycle

[State -1, Spin Cycle]
type = ChangeState
value = 1000
triggerall = command = "spincycle"
triggerall = command != "holddown"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2

[State -1, Spin Cycle (air)]
type = ChangeState
value = 1000
triggerall = command = "spincycle"
triggerall = command != "holddown"
trigger1 = (statetype = a) && ctrl
trigger2 = (stateno = 600) && (movecontact) && time > 2
trigger3 = (stateno = 610) && (movecontact) && time > 2
trigger4 = (stateno = 630) && (movecontact) && time > 2
trigger5 = (stateno = 640) && (movecontact) && time > 2

;-------------------------------------------------------------------------------
;Ring Throw

[State -1, Ring Throw 1]
type = ChangeState
value = 1100
triggerall = command = "ringthrow"
triggerall = command != "holddown"
triggerall = NumHelper(1101) = 0
triggerall = NumHelper(1103) = 0
triggerall = NumHelper(1105) = 0
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2

[State -1, Ring Throw 2]
type = ChangeState
value = 1102
triggerall = command = "ringthrow2"
triggerall = command != "holddown"
triggerall = NumHelper(1101) = 0
triggerall = NumHelper(1103) = 0
triggerall = NumHelper(1105) = 0
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2

[State -1, Ring Throw 3]
type = ChangeState
value = 1104
triggerall = command = "ringthrow3"
triggerall = command != "holddown"
triggerall = power >= 500
triggerall = NumHelper(1101) = 0
triggerall = NumHelper(1103) = 0
triggerall = NumHelper(1105) = 0
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
;-------------------------------------------------------------------------------
;Tree Throw

[State -1, Tree Throw 1]
type = ChangeState
value = 1010
triggerall = command = "Tree"
triggerall = command != "holddown"
triggerall = NumHelper(1011) = 0
triggerall = NumHelper(1013) = 0
triggerall = NumHelper(1015) = 0
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2

[State -1,Tree Throw 2]
type = ChangeState
value = 1012
triggerall = command = "Tree2"
triggerall = command != "holddown"
triggerall = NumHelper(1011) = 0
triggerall = NumHelper(1013) = 0
triggerall = NumHelper(1015) = 0
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2

[State -1, Tree Throw 3]
type = ChangeState
value = 1014
triggerall = command = "Tree3"
triggerall = command != "holddown"
triggerall = NumHelper(1011) = 0
triggerall = NumHelper(1013) = 0
triggerall = NumHelper(1015) = 0
triggerall = power >= 500
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
;-------------------------------------------------------------------------------
;Soap Throw

[State -1, Soap Throw 1]
type = ChangeState
value = 1020
triggerall = command = "Soap"
triggerall = command != "holddown"
triggerall = NumHelper(1021) = 0
triggerall = NumHelper(1023) = 0
triggerall = NumHelper(1025) = 0
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2

[State -1, Soap Throw 2]
type = ChangeState
value = 1022
triggerall = command = "Soap2"
triggerall = command != "holddown"
triggerall = NumHelper(1021) = 0
triggerall = NumHelper(1023) = 0
triggerall = NumHelper(1025) = 0
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2

[State -1, Soap Throw 3]
type = ChangeState
value = 1024
triggerall = command = "Soap3"
triggerall = command != "holddown"
triggerall = NumHelper(1021) = 0
triggerall = NumHelper(1023) = 0
triggerall = NumHelper(1025) = 0
triggerall = power >= 500
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
;-------------------------------------------------------------------------------
;Pound

[State -1, Pound]
type = ChangeState
value = 1200
triggerall = command = "Pound"
triggerall = command != "holddown"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
;-------------------------------------------------------------------------------
;EX Pound

[State -1, EX Pound]
type = ChangeState
value = 1210
triggerall = command = "EXPound"
triggerall = command != "holddown"
triggerall = power >= 500
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
;-------------------------------------------------------------------------------
;Fart

[State -1, Fart]
type = ChangeState
value = 1150
triggerall = command = "Fart"
triggerall = command != "holddown"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
;-------------------------------------------------------------------------------
;Helpers

[State -1, Shaggy]
type = ChangeState
value = 6000
triggerall = p2name != "Shaggy Rogers"
triggerall = p3name != "Shaggy Rogers"
triggerall = p4name != "Shaggy Rogers"
triggerall = command = "shaggy"
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1, Scrappy Doo]
type = ChangeState
value = 6100
triggerall = command = "scrappy"
trigger1 = statetype != A
trigger1 = ctrl = 1

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
; Power Charge
[State -1, Charge]
type = ChangeState
value = 730
triggerall = var(58) && RoundState = 2
triggerall = power < powermax
triggerall = ctrl && !inguarddist && statetype != A && random < 10
trigger1 = P2bodydist X > -100
;---------------------------------------------------------------------------------------------
; Power Charge

[State -1, Power Charge]
type = ChangeState
value = 730
triggerall = power < powermax
triggerall = command = "hold_y"
triggerall = command = "hold_b"
trigger1 = ctrl && statetype != A
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
trigger1 = stateno = 240 && movehit
trigger2 = stateno = 440 && movehit
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
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
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
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2

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
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2

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
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact) && time > 2
trigger3 = (stateno = 610) && (movecontact) && time > 2
trigger4 = (stateno = 630) && (movecontact) && time > 2
trigger5 = (stateno = 640) && (movecontact) && time > 2
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact) && time > 2
trigger3 = (stateno = 610) && (movecontact) && time > 2
trigger4 = (stateno = 630) && (movecontact) && time > 2
trigger5 = (stateno = 640) && (movecontact) && time > 2
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact) && time > 2
trigger3 = (stateno = 610) && (movecontact) && time > 2
trigger4 = (stateno = 630) && (movecontact) && time > 2
trigger5 = (stateno = 640) && (movecontact) && time > 2
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact) && time > 2
trigger3 = (stateno = 610) && (movecontact) && time > 2
trigger4 = (stateno = 630) && (movecontact) && time > 2
trigger5 = (stateno = 640) && (movecontact) && time > 2
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
