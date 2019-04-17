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

;--------------------------------------------------------------------------
;AI
; AI Activation
 [Command]
name = "cpu1"
command = U, U, U, U, F, B, B, F
time = 0
[Command]
name = "cpu2"
command = U, U, U, D, F, B, B, F
time = 0
[Command]
name = "cpu3"
command = U, U, D, D, F, B, B, F
time = 0
[Command]
name = "cpu4"
command = U, D, D, D, F, B, B, F
time = 0
[Command]
name = "cpu5"
command = D, D, D, D, F, B, B, F
time = 0
[Command]
name = "cpu6"
command = D, D, D, U, F, B, B, F
time = 0
[Command]
name = "cpu7"
command = D, D, U, U, F, B, B, F
time = 0
[Command]
name = "cpu8"
command = D, U, U, U, F, B, B, F
time = 0
[Command]
name = "cpu9"
command = U, D, U, U, F, B, B, F
time = 0
[Command]
name = "cpu10"
command = U, U, D, U, F, B, B, F
time = 0

[Command]
name = "cpu11"
command = D, U, U, D, F, B, B, F
time = 0

;-| Super Motions |--------------------------------------------------------
[command]
name = "Cyrnold"
command = ~D, DF, F, D, DF, F, b
time = 20

[command]
name = "Arnold Kart"
command = D,B,x+y
time = 18

[command]
name = "Bus Summon"
command = D,B,a+c
time = 16

[command]
name = "Hyper Combo"
command = ~D, DF, F, x+y
time = 15

;-| Special Motions |------------------------------------------------------

[command]
name = "Light Shoulder Assault"
command = D, F, c
time = 15

[command]
name = "Medium Shoulder Assault"
command = D, F, b
time = 15

[command]
name = "Strong Shoulder Assault"
command = D, F, a
time = 15

[command]
name = "Assist Gerald"
command = ~F,D,B,c
time = 15

[command]
name = "Camera Shot"
command = B,F,b
time = 15

[command]
name = "Light Water Gun"
command = D,B,a
time = 15

[command]
name = "Medium Water Gun"
command = D,B,b
time = 15

[command]
name = "Strong Water Gun"
command = D,B,c
time = 15

[command]
name = "Light Baseball Bat"
command = B,F,x
time = 15

[command]
name = "Medium Baseball Bat"
command = B,F,y
time = 15

[command]
name = "Strong Baseball Bat"
command = B,F,z
time = 15

[command]
name = "Light Football Ball Throw"
command = D,B,x
time = 15

[command]
name = "Medium Football Ball Throw"
command = D,B,y
time = 15

[command]
name = "Strong Football Ball Throw"
command = D,B,z
time = 15

[command]
name = "Yo-Yo Fail"
command = F,B,a
time = 15

[command]
name = "Light Tomato Throw"
command = F,B,x
time = 15

[command]
name = "Medium Tomato Throw"
command = F,B,y
time = 15

[command]
name = "Strong Tomato Throw"
command = F,B,z
time = 15

[command]
name = "Gum Throw"
command = D,F,x
time = 15

[Command]
name = "xx"
command = ~10x

;-|Super Jumps |-----------------------------------------------------------
[Command]
name = "superjump"     ;Required (do not remove)
command = ~D, U
time = 10

[Command]
name = "superjumpforward"     ;Required (do not remove)
command = ~D, UF
time = 10

[Command]
name = "superjumpbackward"     ;Required (do not remove)
command = ~D, UB
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

[Command]
name = "ab"
command = a+b
time = 1

[Command]
Name= "fab"
command = /$F,a+b
time = 1

[Command]
Name= "bab"
command = /$B,a+b
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
; Roll

[Command]
name = "roll_n"
command = ~B, D, DB, x

[Command]
name = "roll_m"
command = ~B, D, DB,  y

[Command]
name = "roll_f"
command = ~B, D, DB, z

;---------------------------------------------------------------------------
; Forward Recovery Roll or Alpha Counter1

[Command]
name = "ac_f_roll_n"
command = ~B, DB, D, x

[Command]
name = "ac_f_roll_m"
command = ~B, DB, D, y

[Command]
name = "ac_f_roll_f"
command = ~B, DB, D, z

;---------------------------------------------------------------------------
; Backward Recovery Roll or Alpha Counter2

[Command]
name = "ac_sweep_b_roll_n"
command = ~B, DB, D, a

[Command]
name = "ac_sweep_b_roll_m"
command = ~B, DB, D, b

[Command]
name = "ac_sweep_b_roll_f"
command = ~B, DB, D, c

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
;AI Crap
; AI Activation
[State -1, AI]
type = VarSet
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
var(1) = 1

;---------------------------------------------------------------------------
;AI Crap
; AI: Stand Light Punch
[State -1, AI: Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%5) < 1

; AI: Stand Medium Punch
[State -1, AI: Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%10) < 1

; AI: Stand Light Kick
[State -1, AI: Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%10) < 1

; AI: Stand Med Kick
[State -1, AI: Stand Med Kick]
type = ChangeState
value = 240
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%10) < 1

[State -1, AI: Gum Throw]
type = ChangeState
value = 999
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%20) < 1

[State -1, AI: Tomato Throw]
type = ChangeState
value = 1003
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%25) < 1

[State -1, AI: Baseball Bat]
type = ChangeState
value = 1001
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%20) < 1

; AI: Foot-ball Ball Throw
[State -1, AI: Foot-ball Ball Throw]
type = ChangeState
value = 1005
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%20) < 1

; AI: Stand Med Kick
[State -1, AI: Hyper Combo]
type = ChangeState
value = 3100
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%30) < 1
triggerall = power >= 1000

; AI: Stand Med Kick
[State -1, AI: Arnold Kart]
type = ChangeState
value = 1015
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%30) < 1
triggerall = power >= 2000

; AI: Stand Med Kick
[State -1, AI: Cyrnold]
type = ChangeState
value = 6015
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%20) < 1
triggerall = power >= 2000

; AI: Stand Crouch Punch
[State -1, AI: Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = C
trigger1 = ctrl
trigger1 = (random%7) < 1

; AI: Stand Medium Punch
[State -1, AI: Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%8) < 1

; AI: Stand Crouch Light Kick
[State -1, AI: Crouch Light Kick]
type = ChangeState
value = 430
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%10) < 1


; AI: Stand Med Kick
[State -1, AI: Crouch Med Kick]
type = ChangeState
value = 440
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%10) < 1

; AI: Air Punch
[State -1, AI: Air Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = (random%7) < 1

; AI: Stand Medium Punch
[State -1, AI: Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = (random%8) < 1

; AI: Bus Summon
[State -1, AI: Bus Summon]
type = ChangeState
value = 2000
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = (random%20) < 1

; AI: Assist Gerald
[State -1, AI: Assist Gerald]
type = ChangeState
value = 6000
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = (random%20) < 1

; AI: Shoulder Assault
[State -1, AI: Shoulder Assault]
type = ChangeState
value = 1020
triggerall = var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = (random%8) < 1

[State -2, Stand Parry]
type = HitOverride
trigger1 = command = "fwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Statetype = S
trigger1 = ctrl
attr = SA,AA,AP
stateno = 7015
time = 8+(6*var(27))

[State -2, Air Parry]
type = HitOverride
trigger1 = command = "fwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Statetype = A
trigger1 = ctrl
attr = SA,AA,AP
stateno = 7016
time = 8+(6*var(27))

[State -2, Crouch Parry]
type = HitOverride
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command = "down"
trigger1 = Statetype = S || Statetype = C
trigger1 = ctrl
attr = C,AA,AP
stateno = 7017
time = 8+(6*var(27))

;Cyrnold
[State -1, Cyrnold]
type = ChangeState
value = 6015
triggerall = command = "Cyrnold"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;Arnold Kart
[State -1, Arnold Kart]
type = ChangeState
value = 1015
triggerall = command = "Arnold Kart"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;Bus Summon
[State -1, Bus Summon]
type = ChangeState
value = 2000
triggerall = numhelper(2000) = 0
triggerall = power >= 1500
triggerall = command = "Bus Summon"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
;Light Shoulder Assault
[State -1, Light Shoulder Assault]
type = ChangeState
value = 1020
triggerall = ctrl
triggerall = statetype = S
trigger1 = command = "Light Shoulder Assault"
trigger2 = var(7) = 1

;---------------------------------------------------------------------------
;Medium Shoulder Assault
[State -1, Medium Shoulder Assault]
type = ChangeState
value = 1021
triggerall = ctrl
triggerall = statetype = S
trigger1 = command = "Medium Shoulder Assault"
trigger2 = var(7) = 1

;---------------------------------------------------------------------------
;Strong Shoulder Assault
[State -1, Strong Shoulder Assault]
type = ChangeState
value = 1022
triggerall = ctrl
triggerall = statetype = S
trigger1 = command = "Strong Shoulder Assault"
trigger2 = var(7) = 1

;---------------------------------------------------------------------------
;Light Baseball Bat
[State -1, Light Baseball Bat]
type = ChangeState
value = 1009
triggerall = command = "Light Baseball Bat"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Medium Baseball Bat
[State -1, Medium Baseball Bat]
type = ChangeState
value = 1010
triggerall = command = "Medium Baseball Bat"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Strong Baseball Bat
[State -1, Strong Baseball Bat]
type = ChangeState
value = 1011
triggerall = command = "Strong Baseball Bat"
trigger1 = (statetype = s) && ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Helpers

[State -1, Assist Gerald]
type = ChangeState
value = 6000
trigger1 = command = "Assist Gerald"
triggerall = var(59) != 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = var(7) = 1
trigger2 = random > 989
triggerall = NumHelper(6001) = 0

;-----------------------------------------------------------------------------
;Hyper Combo
[State -1, Hyper Combo]
type = ChangeState
value = 3500
triggerall = command = "Hyper Combo"
triggerall = power> 1000
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StAteNo = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 220) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 240) && movecontact
trigger7 = (stateno = 250) && movecontact

;-----------------------------------------------------------------------------
;Light Football Ball Throw
[State -1, Light Football Ball Throw]
type = ChangeState
value = 1005
triggerall = command = "Light Football Ball Throw"
trigger1 = (statetype = s) && ctrl
;-----------------------------------------------------------------------------
;Medium Football Ball Throw
[State -1, Medium Football Ball Throw]
type = ChangeState
value = 1006
triggerall = command = "Medium Football Ball Throw"
trigger1 = (statetype = s) && ctrl
;-----------------------------------------------------------------------------
;Strong Football Ball Throw
[State -1, Strong Football Ball Throw]
type = ChangeState
value = 1007
triggerall = command = "Strong Football Ball Throw"
trigger1 = (statetype = s) && ctrl
;-----------------------------------------------------------------------------
;Yo-Yo Fail
[State -1, Yo-Yo Fail]
type = ChangeState
value = 458
triggerall = command = "Yo-Yo Fail"
trigger1 = (statetype = s) && ctrl

;-------------------------------------------------------------------------
;Light Tomato Throw
[State -1, Light Tomato Throw]
type = ChangeState
value = 1002
triggerall = command = "Light Tomato Throw"
trigger1 = (statetype = s) && ctrl

;-------------------------------------------------------------------------
;Medium Tomato Throw
[State -1, Medium Tomato Throw]
type = ChangeState
value = 1003
triggerall = command = "Medium Tomato Throw"
trigger1 = (statetype = s) && ctrl

;-------------------------------------------------------------------------
;Strong Tomato Throw
[State -1, Strong Tomato Throw]
type = ChangeState
value = 1004
triggerall = command = "Strong Tomato Throw"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Light Air Tomato Throw
[State -1, Air Tomato Throw]
type = ChangeState
value = 1004
triggerall = ctrl
triggerall = statetype = A
trigger1 = command = "Light Tomato Throw"
trigger2 = var(7) = 1
trigger2 = random > 979

;--------------------------------------------------------------------------
;Gum Throw
[State -1, Gum Throw]
type = ChangeState
value = 997
triggerall = command = "Gum Throw"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Light Water Gun
[State -1, Light Water Gun]
type = ChangeState
value = 1030
triggerall = command = "Light Water Gun"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Medium Water Gun
[State -1, Medium Water Gun]
type = ChangeState
value = 1031
triggerall = command = "Medium Water Gun"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Strong Water Gun
[State -1, Strong Water Gun]
type = ChangeState
value = 1032
triggerall = command = "Strong Water Gun"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Light Air Water Gun
[State -1, Light Air Water Gun]
type = ChangeState
value = 1018
triggerall = ctrl
triggerall = statetype = A
trigger1 = command = "Light Water Gun"
trigger2 = var(7) = 1
trigger2 = random > 979

;--------------------------------------------------------------------------
;Camera Shot
[State -1, Camera Shot]
type = ChangeState
value = 9993
triggerall = command = "Camera Shot"
trigger1 = (statetype = s) && ctrl

;--------------------------------------------------------------------------
;Camera Shot
[State -1, Camera Shot]
type = ChangeState
value = 9994
triggerall = command = "Camera Shot"
trigger1 = (statetype = s) && ctrl

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Forward Roll/Dodge
[State -1, Foward Roll/Dodge]
type = ChangeState
value = 720
triggerall = stateno != 720
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "fwd_c"

;---------------------------------------------------------------------------
;Backward Dodge
[State -1, Backward Dodge]
type = ChangeState
value = 721
triggerall = stateno != 721
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "back_c"

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

;---------------------------------------------------------------------------
;2nd Stand Light Punch
;—§‚¿Žãƒpƒ“ƒ`
[State -1, 2nd Stand Light Punch]
type = ChangeState
value = 202
triggerall = command = "xx"
;triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 202) && MoveContact
trigger4 = (stateno = 230) && MoveContact
trigger5 = (stateno = 400) && MoveContact
trigger6 = (stateno = 430) && MoveContact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 202) && MoveContact
trigger4 = (stateno = 230) && MoveContact
trigger5 = (stateno = 210) && MoveContact
trigger6 = (stateno = 240) && MoveContact
trigger7 = (stateno = 400) && MoveContact
trigger8 = (stateno = 430) && MoveContact
trigger9 = (stateno = 410) && MoveContact
trigger10 = (stateno = 440) && MoveContact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno= 400 && movecontact
trigger4 = stateno= 410 && movecontact

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact

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
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 430 && movecontact
trigger11 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno=610&&movecontact
trigger4 = stateno=630&&movecontact
trigger5 = stateno=640&&movecontact
trigger6 = stateno=650&&movecontact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact

;----------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 730
triggerall = power < powermax
triggerall = command = "hold_y"
triggerall = command = "hold_b"
trigger1 = ctrl && statetype != A

; Superjump
[State -1, Superjump]
type = ChangeState
value = 55
trigger1 = command = "superjump"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Forward Dodge
[State -1, Foward Dodge]
type = ChangeState
value = 720
triggerall = stateno != 720
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "fab"
trigger2 = command = "fwd_c"

;---------------------------------------------------------------------------
;Backward Dodge
[State -1, Backward Dodge]
type = ChangeState
value = 721
triggerall = stateno != 721
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "bab"
trigger2 = command = "back_c"

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;----------------------------- Recovery Roll -------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Near Foward Recovery Roll
[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_f_roll_n"
triggerall = alive = 1
trigger1 = stateno = 5080
v = 30
value = 1

[State -1]
type = ChangeState
value = 831
triggerall = Var(59) != 2
triggerall = Var(30) = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
;Medium Foward Recovery Roll
[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_f_roll_m"
triggerall = alive = 1
trigger1 = stateno = 5080
v = 30
value = 2

[State -1]
type = ChangeState
value = 832
triggerall = Var(59) != 2
triggerall = Var(30) = 2
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
;Far Foward Recovery Roll
[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_f_roll_f"
triggerall = alive = 1
trigger1 = stateno = 5080
v = 30
value = 3

[State -1]
type = ChangeState
value = 840
triggerall = Var(59) != 2
triggerall = Var(30) = 3
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Near Backward Recovery Roll
[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_sweep_b_roll_n"
triggerall = alive = 1
trigger1 = stateno = 5080
v = 30
value = 4

[State -1]
type = ChangeState
value = 850
triggerall = Var(59) != 2
triggerall = Var(30) = 4
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Medium Backward Recovery Roll
[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_sweep_b_roll_m"
triggerall = alive = 1
trigger1 = stateno = 5080
v = 30
value = 5

[State -1]
type = ChangeState
value = 855
triggerall = Var(59) != 2
triggerall = Var(30) = 5
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Far Backward Recovery Roll

[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_sweep_b_roll_f"
triggerall = alive = 1
trigger1 = stateno = 5080
v = 30
value = 6

[State -1]
type = ChangeState
value = 860
triggerall = Var(59) != 2
triggerall = Var(30) = 6
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
;------------------------ Lie Down Recovery Roll ---------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Lie Down Forward Recovery Roll
[State -1]
type = ChangeState
value = 832
triggerall = Var(59) != 2
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5080

;---------------------------------------------------------------------------
; Lie Down Backward Recovery Roll
[State -1]
type = ChangeState
value = 855
triggerall = Var(59) != 2
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5080

