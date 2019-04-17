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

[Command]
name = "AI0"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI2"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI3"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI4"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI5"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI6"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI7"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI8"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI9"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI10"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI11"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI14"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI16"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0
[Command]
name = "AI18"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI19"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI20"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI21"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI22"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI23"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI24"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI25"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI26"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI27"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI28"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI29"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI30"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI31"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI32"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI33"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI34"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI35"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI36"
command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI37"
command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time = 0
[Command]
name = "AI38"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0
[Command]
name = "AI39"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI40"
command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI41"
command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
time = 0
[Command]
name = "AI42"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI43"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
time = 0
[Command]
name = "AI44"
command = z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
time = 0

;-| Super Motions |--------------------------------------------------------
[command]
name = "DustKnuckles"
command = D, DF, F, a+b
time = 15

[command]
name = "StrikeEarth"
command = D, DF, F, x+y
time = 15

[command]
name = "WarHorn"
command = D, DF, F, c+z
time = 15

[command]
name = "Enchantress"
command = D, DB, B, a+b
time = 15

[command]
name = "Gunvolt"
command = D, DB, B, x+y
time = 15

[command]
name = "SpecialGuest"
command = D, DB, B, c+z
time = 15

[command]
name = "ShovelRage"
command = D, DB, B, D, DB, B, x+y+z
time = 25

[command]
name = "ShovelRage"
command = D, DB, B, D, DB, B, c
time = 25

;-| Special Motions |------------------------------------------------------
[Command]
name = "DodgeFwd"
command = /F, a+b
time = 10

[Command]
name = "DodgeBack"
command = /B, a+b
time = 10

[Command]
name = "SuperJump"
command = ~D, U
time = 10

[Command]
name = "EXJumpSlash"
command = c+z
time = 10

[Command]
name = "FishingRod"
command = /F,c+z
time = 10

[Command]
name = "PropellerDagger"
command = F, F, a
time = 10

[command]
name = "ShovelDrop"
command = /D, a

[command]
name = "RisingShovel"
command = D, DF, F, a
time = 15

[command]
name = "ShovelCounter"
command = D, DF, F, b
time = 15

[command]
name = "Aether"
command = D, DF, F, c
time = 15

[command]
name = "DigIn"
command = D, DF, F, x
time = 15

[command]
name = "FlareWand"
command = D, DF, F, y
time = 15

[command]
name = "RockinRelic"
command = D, DF, F, z
time = 15

;-| Assists |------------------------------------------------------
[command]
name = "Plague"
command = D, DB, B, a
time = 15

[command]
name = "King"
command = D, DB, B, b
time = 15

[command]
name = "Specter"
command = D, DB, B, c
time = 15

[command]
name = "Propeller"
command = D, DB, B, x
time = 15

[command]
name = "Mole"
command = D, DB, B, y
time = 15

[command]
name = "Polar"
command = D, DB, B, z
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
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = Command = "AI0"
trigger2 = Command = "AI1"
trigger3 = Command = "AI2"
trigger4 = Command = "AI3"
trigger5 = Command = "AI4"
trigger6 = Command = "AI5"
trigger7 = Command = "AI6"
trigger8 = Command = "AI7"
trigger9 = Command = "AI8"
trigger10 = Command = "AI9"
trigger11 = Command = "AI10"
trigger12 = Command = "AI11"
trigger13 = Command = "AI12"
trigger14 = Command = "AI13"
trigger15 = Command = "AI14"
trigger16 = Command = "AI15"
trigger17 = Command = "AI16"
trigger18 = Command = "AI17"
trigger19 = Command = "AI18"
trigger20 = Command = "AI19"
trigger21 = Command = "AI20"
trigger22 = Command = "AI21"
trigger23 = Command = "AI22"
trigger24 = Command = "AI23"
trigger25 = Command = "AI24"
trigger26 = Command = "AI25"
trigger27 = Command = "AI26"
trigger28 = Command = "AI27"
trigger29 = Command = "AI28"
trigger30 = Command = "AI29"
trigger31 = Command = "AI30"
trigger32 = Command = "AI31"
trigger33 = Command = "AI32"
trigger34 = Command = "AI33"
trigger35 = Command = "AI34"
trigger36 = Command = "AI35"
trigger37 = Command = "AI36"
trigger38 = Command = "AI37"
trigger39 = Command = "AI38"
trigger40 = Command = "AI39"
trigger41 = Command = "AI40"
trigger42 = Command = "AI41"
trigger43 = Command = "AI42"
trigger44 = Command = "AI43"
trigger45 = Command = "AI44"
v = 59
value = 1

[State -1, AI Deactivation]
type = VarSet
trigger1 = var(59) = 1
trigger1 = roundstate != 2
v = 59
value = 0

;--|-AI Combos-|------------------------------------------------------------
;Start Standing Chain Combo
[State -1, Standing Chain Combo]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 200) && movecontact
value = 230

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 230) && movecontact
value = 210

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 210) && movecontact
value = 240

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 240) && movecontact
value = 220

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = numhelper(532) = 0
trigger1 = (stateno = 220) && (power > 600) && (movecontact)
value = 7520

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
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
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 400) && movecontact
value = 430

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 430) && movecontact
value = 410

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 410) && movecontact
value = 440

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall =(roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 440) && movecontact
value = 420

[State -1, Ready to Launch]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 420) && movecontact
value = 7500

[State -1, Alternate start for Easy AI]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 400) && movecontact
trigger2 = p2stateno != 7600
trigger2 = (Ctrl) && (statetype = S)
trigger2 = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger2 = (p2bodydist x <= 40) && (random < 50)
value = 430

[State -1, Combo start for Med/Hard AI]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
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
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 660) &&  movecontact
value = 600

[State -1, Air Chain Combo]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 600) && movecontact
value = 630

[State -1, Air Chain Combo]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 630) && movecontact
value = 610

[State -1, Air Chain Combo]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 610) && movecontact
value = 640

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = numhelper(661) = 0
trigger1 = (stateno = 640) && (statetype = A) && (power > 600) && movecontact
value = 7660

[State -1, Air Chain Combo]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 640) && movecontact
value = 620

[State -1, Air Chain Combo]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = prevstateno != 600
trigger1 = (p2bodydist x <= 25) && (random <= 150)
trigger2 = (p2bodydist x <= 25) && (random <= 750) && (stateno = [7000,7100])
value = 600
;End Air Chain

;--|-Toad Gear AI Combos-|------------------------------------------------------------
;Start Standing Chain Combo
[State -1, TG Standing Chain Combo]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 8200) && movecontact
value = 8230

[State -1, TG Standing Chain Combo]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 8230) && movecontact
value = 8210

[State -1, TG Standing Chain Combo]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 8210) && movecontact
value = 8240

[State -1, TG Standing Chain Combo]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 8240) && movecontact
value = 8220

[State -1, TG Standing Chain Combo]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 8240) && movecontact && (random = [0,100])
value = 8250

[State -1, TG Standing Chain Combo]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random > 900)
value = 8200
;End Standing Chain

;---------------------------------------------------------------------------
;Start Crouching Chain
[State -1, TG Crouching Chain Combo]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 8400) && movecontact
value = 8430

[State -1, TG Crouching Chain Combo]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 8430) && movecontact
value = 8410

[State -1, TG Crouching Chain Combo]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 8410) && movecontact
value = 8440

[State -1, TG Crouching Chain Combo]
type = ChangeState
triggerall = palno = 12
triggerall =(roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 8440) && movecontact
value = 8420

[State -1, TG Crouching Chain Combo]
type = ChangeState
triggerall = palno = 12
triggerall =(roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 8420) && movecontact
value = 7500

[State -1, TG Alternate start for Easy AI]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 8400) && movecontact
trigger2 = (Ctrl) && (statetype = S)
trigger2 = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger2 = (p2bodydist x <= 40) && (random < 50)
value = 8430

[State -1, TG Combo start for Med/Hard AI]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random < 100)
value = 8400
;End Crouching Chain

;---------------------------------------------------------------------------
;Start Air Chain
[State -1, TG Air Chain Combo]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = numhelper(661) = 0
trigger1 = (stateno = 8610) && (power > 600) && movecontact && (random = [0,200])
value = 8660

[State -1, TG Air Chain Combo]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 7500) &&  movecontact
value = 8600

[State -1, TG Air Chain Combo]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 8600) && movecontact
value = 8630

[State -1, TG Air Chain Combo]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 8630) && movecontact
value = 8610

[State -1, TG Air Chain Combo]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 8610) && movecontact
value = 8640

[State -1, TG Air Chain Combo]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 8640) && movecontact && (random = [0,500])
value = 8650

[State -1, TG Air Chain Combo]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 8640) && movecontact && (random = [0,500])
value = 8620

[State -1, TG Air Chain Combo]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = prevstateno != 8600
trigger1 = (p2bodydist x <= 25) && (random <= 150)
trigger2 = (p2bodydist x <= 25) && (random <= 750) && (stateno = [7000,7100])
value = 8600
;End Air Chain

;-|-AI TG Special Attempt-|---------------------------------------------
[State -1, TG Artificial Intelligence]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 8720) && (time = 15)
value = 8600

[State -1, TG Artificial Intelligence]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = A) && (random = [0,500])
trigger1 = (p2bodydist X <= 105) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 8700

[State -1, TG Artificial Intelligence]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype != A) && (random = [0,300])
trigger1 = (p2bodydist X <= 280) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 8750

[State -1, TG Artificial Intelligence]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist X <= 105) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 8720

[State -1, TG Artificial Intelligence]
type = ChangeState
triggerall = palno = 12
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype != A) && (random = [0,500])
trigger1 = (p2bodydist X <= 275) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 8740

;--|Armor of Chaos AI Combos-|------------------------------------------------------------
;Start Standing Chain Combo
[State -1, AoC Standing Chain Combo]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 6200) && movecontact
value = 6230

[State -1, AoC Standing Chain Combo]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 6230) && movecontact
value = 6210

[State -1, AoC Standing Chain Combo]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 6210) && movecontact
value = 6240

[State -1, AoC Standing Chain Combo]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 6240) && movecontact
value = 6220

[State -1, AoC Standing Chain Combo]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random > 900)
value = 6200
;End Standing Chain

;---------------------------------------------------------------------------
;Start Crouching Chain
[State -1, AoC Crouching Chain Combo]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 6400) && movecontact
value = 6430

[State -1, AoC Crouching Chain Combo]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 6430) && movecontact
value = 6410

[State -1, AoC Crouching Chain Combo]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 6410) && movecontact
value = 6440

[State -1, AoC Crouching Chain Combo]
type = ChangeState
triggerall = palno = 11
triggerall =(roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 6440) && movecontact
value = 6420

[State -1, AoC Ready to Launch]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 6420) && movecontact
value = 7500

[State -1, AoC Alternate start for Easy AI]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 6400) && movecontact
trigger2 = (Ctrl) && (statetype = S)
trigger2 = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger2 = (p2bodydist x <= 40) && (random < 50)
value = 6430

[State -1, AoC Combo start for Med/Hard AI]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random < 100)
value = 6400
;End Crouching Chain

;---------------------------------------------------------------------------
;Start Air Chain
[State -1, AoC Air Chain Combo]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = numhelper(661) = 0
trigger1 = (stateno = 6610) && (power > 600) && movecontact && (random = [0,200])
value = 6660

[State -1, AoC Air Chain Combo]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 7500) &&  movecontact
value = 6600

[State -1, AoC Air Chain Combo]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 6600) && movecontact
value = 6630

[State -1, AoC Air Chain Combo]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 6630) && movecontact
value = 6610

[State -1, AoC Air Chain Combo]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 6610) && movecontact
value = 6640

[State -1, AoC Air Chain Combo]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 6640) && movecontact
value = 6650

[State -1, AoC Air Chain Combo]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 6650) && (time = 35)
value = 6620

[State -1, AoC Air Chain Combo]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = prevstateno != 6600
trigger1 = (p2bodydist x <= 25) && (random <= 150)
trigger2 = (p2bodydist x <= 25) && (random <= 750) && (stateno = [7000,7100])
value = 6600
;End Air Chain

;-|-AI AoC Special Attempt-|---------------------------------------------
[State -1, AoC Artificial Intelligence]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 6220) && (time = 15)
value = 1000

[State -1, AoC Artificial Intelligence]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 6710) && (time = 15)
value = 6600

[State -1, AoC Artificial Intelligence]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = A) && (random = [0,500])
trigger1 = (p2bodydist X <= 105) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 6700

[State -1, A0C Artificial Intelligence]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 6650) && (time = 15) && (random = [0,500])
value = 1210

[State -1, A0C Artificial Intelligence]
type = ChangeState
triggerall = palno = 11
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist X <= 265) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 6730

;-|-AI Special Combo Attempt-|---------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 52) && (time = 5)
value = 400

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 521) && (time = 31)
value = 200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 1001) && (time = 15)
value = 600

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 220) && (statetype = S) && movecontact && (random = [0,500])
value = 1200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 220) && (statetype = S) && (power > 2000) && movecontact && (random = [0,500])
value = 3200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 1203) && (power > 2000) && (time = 20)
value = 3200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 1203) && (power > 1000) && (time = 20) && (random = [0,500])
value = 3000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 1203) && (power > 1000) && (time = 20) && (random = [0,500])
value = 3100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 1203) && (power > 1000) && (time = 20) && (random = [0,500])
value = 3300

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 1203) && (power > 1000) && (time = 20) && (random = [0,500])
value = 3400

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 220) && (power > 1000) && movecontact && (random = [0,500])
value = 3000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 220) && (power > 1000) && movecontact && (random = [0,500])
value = 3100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 220) && (power > 1000) && movecontact && (random = [0,500])
value = 3300

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 220) && (power > 1000) && movecontact && (random = [0,500])
value = 3400

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

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 0) && (random <= 799)
value = 830

;-|-AI Special Attempt-|---------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,250])
triggerall = numhelper(532) = 0
trigger1 = (power > 600) && (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
value = 520

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,100])
trigger1 = (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
value = 710

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,100])
trigger1 = (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
value = 720

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,500])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 900

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype != A) && (random = [0,300])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 910

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,500])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 1010

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,500])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 1110

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = palno != 11
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = palno != 12
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,500])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 1210

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(1301) = 0
triggerall = numhelper(1302) = 0
value = 1300

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,500])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
triggerall = numhelper(1301) = 0
triggerall = numhelper(1302) = 0
value = 1310

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1400

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,500])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 1410

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(1501) = 0
value = 1500

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,500])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
triggerall = numhelper(1501) = 0
value = 1540

;-|-AI Assist Attempt|---------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
triggerall = numhelper(2001) = 0
triggerall = p3name != "Plague Knight by FourthRhyme"
triggerall = enemy,name != "Plague Knight by FourthRhyme"
trigger1 = (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
value = 2000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
triggerall = numhelper(2001) = 0
trigger1 = (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
value = 2100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
triggerall = numhelper(2001) = 0
trigger1 = (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
value = 2200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
triggerall = numhelper(2001) = 0
trigger1 = (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
value = 2300

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
triggerall = numhelper(2001) = 0
trigger1 = (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
value = 2400

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
triggerall = numhelper(2001) = 0
trigger1 = (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
value = 2500

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
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power > 1000) && (random = [0,300]) && (statetype != A)
triggerall = numhelper(3301) = 0
value = 3300

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power > 1000) && (random = [0,300]) && (statetype != A)
triggerall = numhelper(3401) = 0
value = 3400

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power > 2000) && (random = [0,300]) && (statetype != A)
triggerall = numhelper(3510) = 0
triggerall = numhelper(3520) = 0
triggerall = numhelper(3521) = 0
triggerall = numhelper(3522) = 0
value = 3500

;===========================================================================
;---------------------------------------------------------------------------
;Dust Knuckles
[State -1, Dust Knuckles]
type = ChangeState
value = 3000
triggerall = Power >= 1000
triggerall = command = "DustKnuckles"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3999)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Strike the Earth
[State -1, Strike the Earth]
type = ChangeState
value = 3100
triggerall = Power >= 1000
triggerall = command = "StrikeEarth"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3999)
trigger2 = movecontact

;---------------------------------------------------------------------------
;War Horn
[State -1, War Horn]
type = ChangeState
value = 3200
triggerall = Power >= 2000
triggerall = command = "WarHorn"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3999)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Enchantress
[State -1, Enchantress]
type = ChangeState
value = 3300
triggerall = numhelper(3301) = 0
triggerall = Power >= 1000
triggerall = command = "Enchantress"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3999)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Azure Striker Gunvolt
[State -1, Azure Striker Gunvolt]
type = ChangeState
value = 3400
triggerall = numhelper(3401) = 0
triggerall = Power >= 1000
triggerall = command = "Gunvolt"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3999)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Special Guest Bonanza
[State -1, Special Guest Bonanza]
type = ChangeState
value = 3500
triggerall = numhelper(3510) = 0
triggerall = numhelper(3520) = 0
triggerall = numhelper(3521) = 0
triggerall = numhelper(3522) = 0
triggerall = Power >= 2000
triggerall = command = "SpecialGuest"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3999)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Shovel Rage
[State -1, Shovel Rage]
type = ChangeState
value = 3600
triggerall = numhelper(3601) = 0
triggerall = Power >= 3000
triggerall = command = "ShovelRage"
triggerall = statetype != A
trigger1 = ctrl

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
triggerall = palno = 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [8200,8299]) || (stateno = [8400,6819]) || (stateno = [8430,8499])
trigger2 = movecontact
var(1) = 1

[State -1, Combo condition Check]
type = VarSet
triggerall = palno = 11
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [6200,6299]) || (stateno = [6400,6419]) || (stateno = [6430,6499])
trigger2 = movecontact
var(1) = 1

[State -1, Combo condition Check]
type = VarSet
triggerall = palno != 11
triggerall = palno != 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,419]) || (stateno = [430,499])
trigger2 = movecontact
var(1) = 1

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(2) = 0

[State -1, Combo condition Check]
type = VarSet
triggerall = palno = 12
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [8600,8619]) || (stateno = [8630,8649])
trigger2 = movecontact
var(2) = 1

[State -1, Combo condition Check]
type = VarSet
triggerall = palno = 11
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [6600,6619]) || (stateno = [6630,6699])
trigger2 = movecontact
var(2) = 1

[State -1, Combo condition Check]
type = VarSet
triggerall = palno != 11
triggerall = palno != 12
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,619]) || (stateno = [630,699])
trigger2 = movecontact
var(2) = 1

;--------------------------------------------------------------------------------------------
[State -1, Standing Parry]
type = HitOverride
triggerall = var(59) <= 0 && roundstate = 2 && statetype = S
triggerall = command = "fwd" && command != "back" && command != "up" && command != "down"
trigger1 = ctrl || stateno = 700 || stateno = 701
trigger1 = var(21):= 1
trigger2 = (stateno = [150,153])
trigger2 = var(21):= -1
attr = SA,AA,AP
stateno = 700
slot = 0
time = 8

[State -1, Crouching Parry]
type = HitOverride
triggerall = var(59) <= 0 && roundstate = 2 && statetype != A
triggerall = (statetype = S && command = "down")|| (statetype = C && command = "fwd") && command != "back" && command != "up"
trigger1 = ctrl || stateno = 700 || stateno = 701
trigger1 = var(21):= 2
trigger2 = (stateno = [150,153])
trigger2 = var(21):= -2
attr = C,AA,AP
stateno = 701
slot = 0
time = 8

[State -1, Air Parry]
type = HitOverride
triggerall = var(59) <= 0 && roundstate = 2 && statetype = A
triggerall = (statetype= A && command = "fwd") && command != "back" && command != "up" && command != "down"
trigger1 = ctrl || stateno = 702
trigger1 = var(21):= 3
trigger2 = (stateno = [154,155])
trigger2 = var(21):= -3
attr = SA,AA,AP
stateno = 702
forceair = 1
slot = 0
time = 7

[State -1, Reset Parry]
type = HitOverride
trigger1 = (statetype = S || statetype = C) && var(21) != 1 && var(21) != -1 && var(21) != 2 && var(21) != -2
trigger2 = statetype = A && var(21) != 3 && var(21) != -3
trigger3 = movetype = A || (movetype = H && (stateno != [120,155]))
trigger4 = !ctrl
slot = 0
time = 0

;---------------------------------------------------------------------------
;Fishing Rod
[State -1, Fishing Rod]
type = ChangeState
value = 520
triggerall = Power >= 600
triggerall = numhelper(532) = 0
triggerall = command = "FishingRod"
trigger1 = (statetype = s) && ctrl
trigger1 = statetype != A
trigger2 = var(1)

;---------------------------------------------------------------------------
;EX Jump Slash
[State -1, EX Jump Slash]
type = ChangeState
value = 660
triggerall = numhelper(661) = 0
triggerall = palno != 11
triggerall = palno != 12
triggerall = Power >= 600
triggerall = command = "holdup"
triggerall = command = "EXJumpSlash"
trigger1 = (statetype = a) && ctrl
trigger2 = var(2)

;---------------------------------------------------------------------------
;Shovel Drop
[State -1, Shovel Drop]
type = ChangeState
value = 900
triggerall = palno != 11
triggerall = palno != 12
triggerall = command = "ShovelDrop"
trigger1 = (statetype = a) && ctrl
trigger2 = var(2)

;---------------------------------------------------------------------------
;Propeller Dagger
[State -1, Propeller Dagger]
type = ChangeState
value = 910
triggerall = palno != 12
triggerall = (stateno = 100) && command = "a"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Propeller Dagger
[State -1, Propeller Dagger Air]
type = ChangeState
value = 910
triggerall = command = "FF"
trigger1 = (statetype = a) && ctrl
trigger2 = var(2)

;---------------------------------------------------------------------------
;Rising Shovel
[State -1, Rising Shovel]
type = ChangeState
value = 1000
triggerall = palno != 12
triggerall = command = "RisingShovel"
trigger1 = (statetype = s) && ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;Slam Jam
[State -1, Slam Jam]
type = ChangeState
value = 1010
triggerall = command = "RisingShovel"
trigger1 = (statetype = a) && ctrl
trigger2 = var(2)

;---------------------------------------------------------------------------
;Shovel Counter
[State -1, Shovel Counter]
type = ChangeState
value = 1100
triggerall = command = "ShovelCounter"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Shovel Copter
[State -1, Shovel Copter]
type = ChangeState
value = 1110
triggerall = command = "ShovelCounter"
trigger1 = (statetype = a) && ctrl
trigger2 = var(2)

;---------------------------------------------------------------------------
;Shovel Aether
[State -1, Shovel Aether]
type = ChangeState
value = 1200
triggerall = palno != 11
triggerall = palno != 12
triggerall = command = "Aether"
trigger1 = (statetype = s) && ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;Shovel Aether Air
[State -1, Shovel Aether Air]
type = ChangeState
value = 1210
triggerall = palno != 12
triggerall = command = "Aether"
trigger1 = (statetype = a) && ctrl
trigger2 = var(2)

;---------------------------------------------------------------------------
;Dig In
[State -1, Dig In]
type = ChangeState
value = 1300
triggerall = numhelper(1301) = 0
triggerall = numhelper(1302) = 0
triggerall = command = "DigIn"
trigger1 = (statetype = s) && ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;Dig In Air
[State -1, Dig In Air]
type = ChangeState
value = 1310
triggerall = numhelper(1301) = 0
triggerall = numhelper(1302) = 0
triggerall = command = "DigIn"
trigger1 = (statetype = a) && ctrl

;---------------------------------------------------------------------------
;Flare Wand
[State -1, Flare Wand]
type = ChangeState
value = 1400
triggerall = command = "FlareWand"
trigger1 = (statetype = s) && ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;Flare Wand Air
[State -1, Flare Wand Air]
type = ChangeState
value = 1410
triggerall = command = "FlareWand"
trigger1 = (statetype = a) && ctrl

;---------------------------------------------------------------------------
;Rockin' Relic
[State -1, Rockin' Relic]
type = ChangeState
value = 1500
triggerall = numhelper(1501) = 0
triggerall = command = "RockinRelic"
trigger1 = (statetype = s) && ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;Rockin' Relic Air
[State -1, Rockin' Relic Air]
type = ChangeState
value = 1540
triggerall = numhelper(1501) = 0
triggerall = command = "RockinRelic"
trigger1 = (statetype = a) && ctrl

;---------------------------------------------------------------------------
;Plague Knight
[State -1, Plague Knight]
type = ChangeState
value = 2000
triggerall = p3name != "Plague Knight by FourthRhyme"
triggerall = enemy,name != "Plague Knight by FourthRhyme"
triggerall = numhelper(2001) = 0
triggerall = command = "Plague"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;King Knight
[State -1, King Knight]
type = ChangeState
value = 2100
triggerall = numhelper(2001) = 0
triggerall = command = "King"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Specter Knight
[State -1, Specter Knight]
type = ChangeState
value = 2200
triggerall = numhelper(2001) = 0
triggerall = command = "Specter"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Propeller Knight
[State -1, Propeller Knight]
type = ChangeState
value = 2300
triggerall = numhelper(2001) = 0
triggerall = command = "Propeller"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Mole Knight
[State -1, Mole Knight]
type = ChangeState
value = 2400
triggerall = numhelper(2001) = 0
triggerall = command = "Mole"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Polar Knight
[State -1, Polar Knight]
type = ChangeState
value = 2500
triggerall = numhelper(2001) = 0
triggerall = command = "Polar"
trigger1 = (statetype = s) && ctrl
trigger2 = var(1)

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
triggerall = command = "a" || command = "b"
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

;---------------------------------------------------------------------------
; Throw 2
[State -1, Throw 2]
type = ChangeState
value = 830
triggerall = command = "x" || command = "y"
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
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Text Taunt 1
[State -1, Text Taunt 1]
type = ChangeState
value = 196
triggerall = winko = 0
triggerall = command = "holdfwd"
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Text Taunt 2
[State -1, Text Taunt 2]
type = ChangeState
value = 196
triggerall = winko = 0
triggerall = command = "holdback"
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Text Taunt 3
[State -1, Text Taunt 3]
type = ChangeState
value = 196
triggerall = winko = 0
triggerall = command = "holddown"
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
trigger3 = stateno = 6420
trigger3 = (movecontact) && (command = "holdup")
trigger4 = stateno = 8420
trigger4 = (movecontact) && (command = "holdup")

;---------------------------------------------------------------------------
;Dodge Forward
[State -1, Dodge Forward]
type = ChangeState
value = 710
triggerall = command = "DodgeFwd"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Dodge Backward
[State -1, Dodge Backward]
type = ChangeState
value = 720
triggerall = command = "DodgeBack"
trigger1 = (statetype = s) && ctrl

;===========================================================================
;----------------------[Toad Gear Attacks]----------------------------

;---------------------------------------------------------------------------
;TG EX Jump Punch
[State -1, TG EX Jump Punch]
type = ChangeState
value = 8660
triggerall = numhelper(661) = 0
triggerall = palno = 12
triggerall = Power >= 600
triggerall = command = "holdup"
triggerall = command = "EXJumpSlash"
trigger1 = (statetype = a) && ctrl
trigger2 = var(2)

;---------------------------------------------------------------------------
;TG Shovel Drop
[State -1, TG Shovel Drop]
type = ChangeState
value = 8700
triggerall = palno = 12
triggerall = command = "ShovelDrop"
trigger1 = (statetype = a) && ctrl
trigger2 = var(2)

;---------------------------------------------------------------------------
;TG Battering Ram
[State -1, TG Battering Ram]
type = ChangeState
value = 8710
triggerall = palno = 12
triggerall = (stateno = 100) && command = "a"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;TG Rising Punch
[State -1, TG Rising Punch]
type = ChangeState
value = 8720
triggerall = palno = 12
triggerall = command = "RisingShovel"
trigger1 = (statetype = s) && ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;TG Wrecking Ball
[State -1, TG Wrecking Ball]
type = ChangeState
value = 8740
triggerall = palno = 12
triggerall = command = "Aether"
trigger1 = (statetype = s) && ctrl
trigger2 = (statetype = a) && ctrl

;---------------------------------------------------------------------------
; TG Stand Punch 1
[State -1, TG Stand Punch 1]
type = ChangeState
value = 8200
triggerall = palno = 12
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; TG Stand Punch 2
[State -1, TG Stand Punch 2]
type = ChangeState
value = 8210
triggerall = palno = 12
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 8200) && movecontact
trigger3 = (stateno = 8230) && movecontact
trigger4 = (stateno = 8400) && movecontact
trigger5 = (stateno = 8430) && movecontact

;---------------------------------------------------------------------------
; TG Stand Strong Punch
[State -1, TG Stand Strong Punch]
type = ChangeState
value = 8220
triggerall = palno = 12
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 8200) && movecontact
trigger3 = (stateno = 8210) && movecontact
trigger4 = (stateno = 8230) && movecontact
trigger5 = (stateno = 8240) && movecontact
trigger6 = (stateno = 8400) && movecontact
trigger7 = (stateno = 8410) && movecontact
trigger8 = (stateno = 8430) && movecontact
trigger9 = (stateno = 8440) && movecontact

;---------------------------------------------------------------------------
; TG Stand Kick 1
[State -1, TG Stand Kick 1]
type = ChangeState
value = 8230
triggerall = palno = 12
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 8200) && movecontact

;---------------------------------------------------------------------------
; TG Standing Kick 2
[State -1, TG Standing Kick 2]
type = ChangeState
value = 8240
triggerall = palno = 12
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 8200) && movecontact
trigger3 = (stateno = 8210) && movecontact
trigger4 = (stateno = 8230) && movecontact
trigger5 = (stateno = 8400) && movecontact
trigger6 = (stateno = 8410) && movecontact
trigger7 = (stateno = 8430) && movecontact

;---------------------------------------------------------------------------
; AOC Standing Strong Kick
[State -1, TG Standing Strong Kick]
type = ChangeState
value = 8250
triggerall = palno = 12
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 8200) && movecontact
trigger3 = (stateno = 8210) && movecontact
trigger4 = (stateno = 8230) && movecontact
trigger5 = (stateno = 8240) && movecontact
trigger6 = (stateno = 8400) && movecontact
trigger7 = (stateno = 8410) && movecontact
trigger8 = (stateno = 8430) && movecontact
trigger9 = (stateno = 8440) && movecontact

;---------------------------------------------------------------------------
; TG Crouching Punch 1
[State -1, TG Crouching Punch 1]
type = ChangeState
value = 8400
triggerall = palno = 12
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 8200) && movecontact
trigger3 = (stateno = 8230) && movecontact

;---------------------------------------------------------------------------
; TG Crouching Punch 2
[State -1, TG Crouching Punch 2]
type = ChangeState
value = 8410
triggerall = palno = 12
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 8200) && movecontact
trigger3 = (stateno = 8210) && movecontact
trigger4 = (stateno = 8230) && movecontact
trigger5 = (stateno = 8400) && movecontact
trigger6 = (stateno = 8430) && movecontact

;---------------------------------------------------------------------------
; TG Crouching Strong Punch
[State -1, TG Crouching Strong Punch]
type = ChangeState
value = 8420
triggerall = palno = 12
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 8200) && movecontact
trigger3 = (stateno = 8210) && movecontact
trigger4 = (stateno = 8230) && movecontact
trigger5 = (stateno = 8240) && movecontact
trigger6 = (stateno = 8400) && movecontact
trigger7 = (stateno = 8410) && movecontact
trigger8 = (stateno = 8430) && movecontact
trigger9 = (stateno = 8440) && movecontact

;---------------------------------------------------------------------------
; AOC Crouching Kick 1
[State -1, TG Crouching Kick 1]
type = ChangeState
value = 8430
triggerall = palno = 12
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 8200) && movecontact
trigger3 = (stateno = 8230) && movecontact
trigger4 = (stateno = 8400) && movecontact

;---------------------------------------------------------------------------
; TG Crouching Kick 2
[State -1, TG Crouching Kick 2]
type = ChangeState
value = 8440
triggerall = palno = 12
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 8200) && movecontact
trigger3 = (stateno = 8210) && movecontact
trigger4 = (stateno = 8230) && movecontact
trigger5 = (stateno = 8240) && movecontact
trigger6 = (stateno = 8400) && movecontact
trigger7 = (stateno = 8410) && movecontact
trigger8 = (stateno = 8430) && movecontact

;---------------------------------------------------------------------------
; TG Crouching Strong Kick
[State -1, TG Crouching Strong Kick]
type = ChangeState
value = 8450
triggerall = palno = 12
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 8200) && movecontact
trigger3 = (stateno = 8210) && movecontact
trigger4 = (stateno = 8230) && movecontact
trigger5 = (stateno = 8240) && movecontact
trigger6 = (stateno = 8400) && movecontact
trigger7 = (stateno = 8410) && movecontact
trigger8 = (stateno = 8430) && movecontact
trigger9 = (stateno = 8440) && movecontact

;---------------------------------------------------------------------------
;TG Jump Punch 1
[State -1, TG Jump Punch 1]
type = ChangeState
value = 8600
triggerall = palno = 12
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;TG Jump Punch 2
[State -1, TG Jump Punch 2]
type = ChangeState
value = 8610
triggerall = palno = 12
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 8600) && movecontact
trigger3 = (stateno = 8630) && movecontact
trigger4 = (stateno = 8660) && movecontact

;---------------------------------------------------------------------------
;TG Jump Strong Punch
[State -1, TG Jump Strong Punch]
type = ChangeState
value = 8620
triggerall = palno = 12
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 8600) && movecontact
trigger3 = (stateno = 8610) && movecontact
trigger4 = (stateno = 8630) && movecontact
trigger5 = (stateno = 8640) && movecontact

;---------------------------------------------------------------------------
;TG Jump Kick 1
[State -1, TG Jump Kick 1]
type = ChangeState
value = 8630
triggerall = palno = 12
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 8600) && movecontact

;---------------------------------------------------------------------------
;TG Jump Kick 2
[State -1, TG Jump Kick 2]
type = ChangeState
value = 8640
triggerall = palno = 12
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 8600) && movecontact
trigger3 = (stateno = 8610) && movecontact
trigger4 = (stateno = 8630) && movecontact
trigger5 = (stateno = 8660) && movecontact

;---------------------------------------------------------------------------
[State -1, TG Jump Strong Kick]
type = ChangeState
value = 8650
triggerall = palno = 12
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 8600) && movecontact
trigger3 = (stateno = 8610) && movecontact
trigger4 = (stateno = 8630) && movecontact
trigger5 = (stateno = 8640) && movecontact

;===========================================================================
;----------------------[Armor of Chaos Attacks]----------------------------

;---------------------------------------------------------------------------
;AOC EX Jump Slash
[State -1, AOC EX Jump Slash]
type = ChangeState
value = 6660
triggerall = palno = 11
triggerall = numhelper(661) = 0
triggerall = Power >= 600
triggerall = command = "holdup"
triggerall = command = "EXJumpSlash"
trigger1 = (statetype = a) && ctrl
trigger2 = var(2)

;---------------------------------------------------------------------------
;AOC Shovel Drop
[State -1, AOC Shovel Drop]
type = ChangeState
value = 6700
triggerall = palno = 11
triggerall = command = "ShovelDrop"
trigger1 = (statetype = a) && ctrl
trigger2 = var(2)

;---------------------------------------------------------------------------
;AOC Shovel Aether
[State -1, AOC Shovel Aether]
type = ChangeState
value = 6730
triggerall = palno = 11
triggerall = command = "Aether"
trigger1 = (statetype = s) && ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
; AOC Stand Punch 1
[State -1, AOC Stand Punch 1]
type = ChangeState
value = 6200
triggerall = palno = 11
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; AOC Stand Punch 2
[State -1, AOC Stand Punch 2]
type = ChangeState
value = 6210
triggerall = palno = 11
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 6200) && movecontact
trigger3 = (stateno = 6230) && movecontact
trigger4 = (stateno = 6400) && movecontact
trigger5 = (stateno = 6430) && movecontact

;---------------------------------------------------------------------------
; AOC Stand Strong Punch
[State -1, AOC Stand Strong Punch]
type = ChangeState
value = 6220
triggerall = palno = 11
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 6200) && movecontact
trigger3 = (stateno = 6210) && movecontact
trigger4 = (stateno = 6230) && movecontact
trigger5 = (stateno = 6240) && movecontact
trigger6 = (stateno = 6400) && movecontact
trigger7 = (stateno = 6410) && movecontact
trigger8 = (stateno = 6430) && movecontact
trigger9 = (stateno = 6440) && movecontact

;---------------------------------------------------------------------------
; AOC Stand Kick 1
[State -1, AOC Stand Kick 1]
type = ChangeState
value = 6230
triggerall = palno = 11
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 6200) && movecontact

;---------------------------------------------------------------------------
; AOC Standing Kick 2
[State -1, AOC Standing Kick 2]
type = ChangeState
value = 6240
triggerall = palno = 11
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 6200) && movecontact
trigger3 = (stateno = 6210) && movecontact
trigger4 = (stateno = 6230) && movecontact
trigger5 = (stateno = 6400) && movecontact
trigger6 = (stateno = 6410) && movecontact
trigger7 = (stateno = 6430) && movecontact

;---------------------------------------------------------------------------
; AOC Standing Strong Kick
[State -1, AOC Standing Strong Kick]
type = ChangeState
value = 6250
triggerall = palno = 11
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 6200) && movecontact
trigger3 = (stateno = 6210) && movecontact
trigger4 = (stateno = 6230) && movecontact
trigger5 = (stateno = 6240) && movecontact
trigger6 = (stateno = 6400) && movecontact
trigger7 = (stateno = 6410) && movecontact
trigger8 = (stateno = 6430) && movecontact
trigger9 = (stateno = 6440) && movecontact

;---------------------------------------------------------------------------
; AOC Crouching Punch 1
[State -1, AOC Crouching Punch 1]
type = ChangeState
value = 6400
triggerall = palno = 11
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 6200) && movecontact
trigger3 = (stateno = 6230) && movecontact

;---------------------------------------------------------------------------
; AOC Crouching Punch 2
[State -1, AOC Crouching Punch 2]
type = ChangeState
value = 6410
triggerall = palno = 11
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 6200) && movecontact
trigger3 = (stateno = 6210) && movecontact
trigger4 = (stateno = 6230) && movecontact
trigger5 = (stateno = 6400) && movecontact
trigger6 = (stateno = 6430) && movecontact

;---------------------------------------------------------------------------
; AOC Crouching Strong Punch
[State -1, AOC Crouching Strong Punch]
type = ChangeState
value = 6420
triggerall = palno = 11
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 6200) && movecontact
trigger3 = (stateno = 6210) && movecontact
trigger4 = (stateno = 6230) && movecontact
trigger5 = (stateno = 6240) && movecontact
trigger6 = (stateno = 6400) && movecontact
trigger7 = (stateno = 6410) && movecontact
trigger8 = (stateno = 6430) && movecontact
trigger9 = (stateno = 6440) && movecontact

;---------------------------------------------------------------------------
; AOC Crouching Kick 1
[State -1, AOC Crouching Kick 1]
type = ChangeState
value = 6430
triggerall = palno = 11
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 6200) && movecontact
trigger3 = (stateno = 6230) && movecontact
trigger4 = (stateno = 6400) && movecontact

;---------------------------------------------------------------------------
; AOC Crouching Kick 2
[State -1, AOC Crouching Kick 2]
type = ChangeState
value = 6440
triggerall = palno = 11
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 6200) && movecontact
trigger3 = (stateno = 6210) && movecontact
trigger4 = (stateno = 6230) && movecontact
trigger5 = (stateno = 6240) && movecontact
trigger6 = (stateno = 6400) && movecontact
trigger7 = (stateno = 6410) && movecontact
trigger8 = (stateno = 6430) && movecontact

;---------------------------------------------------------------------------
; AOC Crouching Strong Kick
[State -1, AOC Crouching Strong Kick]
type = ChangeState
value = 6450
triggerall = palno = 11
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 6200) && movecontact
trigger3 = (stateno = 6210) && movecontact
trigger4 = (stateno = 6230) && movecontact
trigger5 = (stateno = 6240) && movecontact
trigger6 = (stateno = 6400) && movecontact
trigger7 = (stateno = 6410) && movecontact
trigger8 = (stateno = 6430) && movecontact
trigger9 = (stateno = 6440) && movecontact

;---------------------------------------------------------------------------
;AOC Jump Punch 1
[State -1, AOC Jump Punch 1]
type = ChangeState
value = 6600
triggerall = palno = 11
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;AOC Jump Punch 2
[State -1, AOC Jump Punch 2]
type = ChangeState
value = 6610
triggerall = palno = 11
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 6600) && movecontact
trigger3 = (stateno = 6630) && movecontact
trigger4 = (stateno = 6660) && movecontact

;---------------------------------------------------------------------------
;AOC Jump Strong Punch
[State -1, AOC Jump Strong Punch]
type = ChangeState
value = 6620
triggerall = palno = 11
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 6600) && movecontact
trigger3 = (stateno = 6610) && movecontact
trigger4 = (stateno = 6630) && movecontact
trigger5 = (stateno = 6640) && movecontact
trigger6 = (stateno = 6650) && movecontact

;---------------------------------------------------------------------------
;AOC Jump Kick 1
[State -1, AOC Jump Kick 1]
type = ChangeState
value = 6630
triggerall = palno = 11
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 6600) && movecontact

;---------------------------------------------------------------------------
;AOC Jump Kick 2
[State -1, AOC Jump Kick 2]
type = ChangeState
value = 6640
triggerall = palno = 11
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 6600) && movecontact
trigger3 = (stateno = 6610) && movecontact
trigger4 = (stateno = 6630) && movecontact
trigger5 = (stateno = 6660) && movecontact

;---------------------------------------------------------------------------
[State -1, AOC Jump Strong Kick]
type = ChangeState
value = 6650
triggerall = palno = 11
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 6600) && movecontact
trigger3 = (stateno = 6610) && movecontact
trigger4 = (stateno = 6630) && movecontact
trigger5 = (stateno = 6640) && movecontact

;===========================================================================
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = palno != 11
triggerall = palno != 12
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = palno != 11
triggerall = palno != 12
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
triggerall = palno != 11
triggerall = palno != 12
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
triggerall = palno != 11
triggerall = palno != 12
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
triggerall = palno != 11
triggerall = palno != 12
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
triggerall = palno != 11
triggerall = palno != 12
triggerall = command = "c"
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
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = palno != 11
triggerall = palno != 12
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
triggerall = palno != 11
triggerall = palno != 12
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
triggerall = palno != 11
triggerall = palno != 12
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
triggerall = palno != 11
triggerall = palno != 12
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
triggerall = palno != 11
triggerall = palno != 12
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
triggerall = palno != 11
triggerall = palno != 12
triggerall = command = "c"
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
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = palno != 11
triggerall = palno != 12
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = palno != 11
triggerall = palno != 12
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
triggerall = palno != 11
triggerall = palno != 12
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 650) && movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = palno != 11
triggerall = palno != 12
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = palno != 11
triggerall = palno != 12
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
triggerall = palno != 11
triggerall = palno != 12
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact

;----------------------[ LIE DOWN RECOVERY ROLL]----------------------------
[State -1, Lie Down Forward Recovery Roll]
type = ChangeState
value = 730
triggerall = Var(59) != 2
triggerall = command = "holdfwd"
triggerall = time = 1
trigger1 = stateno = 5120
trigger1 = alive = 1

;---------------------------------------------------------------------------
[State -1, Lie Down Backward Recovery Roll]
type = ChangeState
value = 740
triggerall = Var(59) != 2
triggerall = command = "holdback"
triggerall = time = 1
trigger1 = stateno = 5120
trigger1 = alive = 1
