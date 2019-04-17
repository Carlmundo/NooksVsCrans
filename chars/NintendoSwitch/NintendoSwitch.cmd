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
;-| Taunt Motion |--------------------------------------------------------
[Command]
name = "Bang_Gun"
command = F, s
time = 7
;-| Special Motions |--------------------------------------------------------
[Command]
name = "FIRE!"
command = ~D, DF, F, a
time = 20

[Command]
name = "Cappy_Throw"
command = ~D, DF, F, b
time = 20

[Command]
name = "Drop_Dash"
command = ~D, DB, B, c
time = 20

[Command]
name = "Controller_Throw"
command = ~D, DB, B, a
time = 20


[Command]
name = "Switching_Spinning"
command = ~D, DB, B, b
time = 20


;[Command]
;name = "Hammer_Smash"
;command = a, b, F
;time = 20

[Command]
name = "Bomb_Throw"
command = ~D, DF, F, c
time = 20

[Command]
name = "Assist_Mario"
command = B, F, a
time = 20

[Command]
name = "Assist_Link"
command = B, F, b
time = 20

[Command]
name = "Assist_Spring_Man"
command = B, F, c
time = 20
;-| Super Motions |------------------------------------------------------

[Command]
name = "Controller_Craziness"
command = D, D, a  ; 1000 power
time = 20

[Command]
name = "fast_spinning_controller_wait_why_am_i_talking_like_this"
command = c,a,B ; 1000 power
time = 20

[Command]
name = "Brick_Weapon"
command = D, D, b ; 1000 power
time = 20

[Command]
name = "Splashdown"
command = a+c, B ; 1000 power
time = 20

[Command]
name = "Labo_Robot"
command = D, D, c ; 1000 power
time = 20

[Command]
name = "The_Ability_Combination_Slam"
command = a+b, B ; 1000 power
time = 20

[Command]
name = "For_Shovelry!"
command = a,b,c,B  ; 2000 power
time = 20

[Command]
name = "Rocket_Controller"
command = D, a, a,  ; 2000 power
time = 20

[Command]
name = "Garbage_Puyos_and_Blocks"
command = b,a,c,D   ; 2000 power
time = 20

[Command]
name = "Guardian"
command = D, b, b  ; 2000 power
time = 20

[Command]
name = "The_Phantom_Ruby"
command = D, c, c  ; 2000 power
time = 20

[Command]
name = "Special_Shot"
command = F, B, a+b ; 2000 power
time = 20

[Command]
name = "Nintendo_Switch_Stampede"
command = a,b,c,F; 2000 power
time = 20

[Command]
name = "TV"
command = a,b,c,D; 3000 power
time = 20


[Command]
name = "'Cap'ture"
command = D, a+b ; 3000 power
time = 20

[Command]
name = "Electricity_Sphere"
command = D, a+c  ; 3000 power
time = 20

[Command]
name = "Giant_Console"
command = D, c+b  ; 3000 power
time = 20

[Command]
name = "Hedlok_Punching_Overdrive"
command = c+b, F; 3000 power
time = 20

[Command]
name = "Glitchy_Lands" ;...
command = c,b,a,D; 3000 power and 250 life
time = 20

[Command]
name = "Launching_Controllers"
command = a+c, F; 3000 power and 250 life
time = 20

[Command]
name = "Banhammer"
command = c+b, B; 3000 power and 500 life
time = 20

[Command]
name = "Final Smash"
command = c,b,a,F; 3000 power and 250 life
time = 20
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
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = command != "Bang_Gun"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Bang Gun Taunt
[State -1, Bang Gun Taunt]
type = ChangeState
value = 198
triggerall = command = "Bang_Gun"
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
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = hitcount >= 3
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
trigger2 = stateno = 400
trigger2 = movehit
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = hitcount >= 2
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
; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 4000
triggerall = power < powermax
triggerall = command = "hold_s"
triggerall = command = "hold_a"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; FIRE!
[State -1, FIRE!]
type = ChangeState
value = 1000
triggerall = command = "FIRE!"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; FIRE! (air)
[State -1, FIRE! (air)]
type = ChangeState
value = 1050
triggerall = command = "FIRE!"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Cappy Throw
[State -1, Cappy Throw]
type = ChangeState
value = 1100
triggerall = command = "Cappy_Throw"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Cappy Throw (air)
[State -1, Cappy Throw (air) ]
type = ChangeState
value = 1150
triggerall = command = "Cappy_Throw"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Controller Throw
[State -1, Controller Throw]
type = ChangeState
value = 1400
triggerall = command = "Controller_Throw"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Controller Throw
[State -1, Controller Throw]
type = ChangeState
value = 1450
triggerall = command = "Controller_Throw"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Drop Dash
[State -1, Drop Dash]
type = ChangeState
value = 1500
triggerall = command = "Drop_Dash"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Hammer Smash
[State -1, Hammer Smash]
type = ChangeState
value = 1600
triggerall = command = "Drop_Dash"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Switching Spinning
[State -1, Switching Spinning]
type = ChangeState
value = 1200
triggerall = command = "Switching_Spinning"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Switching Spinning air
[State -1, Switching Spinning airaiariariai]
type = ChangeState
value = 1211
triggerall = command = "Switching_Spinning"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Bomb Throw
[State -1, Bomb Throw]
type = ChangeState
value = 1300
triggerall = command = "Bomb_Throw"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Bomb Throw (air)
[State -1, Bomb Throw (air)]
type = ChangeState
value = 1350
triggerall = command = "Bomb_Throw"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Mario Assist
[State -1, Mario Assist]
type = ChangeState
value = 3000
triggerall = power >=200
triggerall = command = "Assist_Mario"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Link Assist
[State -1,Link Assist]
type = ChangeState
value = 3100
triggerall = power >=300
triggerall = command = "Assist_Link"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Spring Man Assist
[State -1, Spring Man Assist]
type = ChangeState
value = 3200
triggerall = power >=200
triggerall = command = "Assist_Spring_Man"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Controller Craziness
[State -1, Controller Craziness]
type = ChangeState
value = 2000
triggerall = command = "Controller_Craziness"
triggerall = power >=1000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Controller Craziness (air)
[State -1, Controller Craziness (air)]
type = ChangeState
value = 2050
triggerall = command = "Controller_Craziness"
triggerall = power >=1000
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Guardian
[State -1, Guardian]
type = ChangeState
value = 2100
triggerall = command = "Guardian"
triggerall = power >=2000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; For Shovelry!
[State -1, For Shovelry!]
type = ChangeState
value = 2400
triggerall = command = "For_Shovelry!"
triggerall = power >=2000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Labo Robot
[State -1, Labo Robot]
type = ChangeState
value = 2500
triggerall = command = "Labo_Robot"
triggerall = power >=1000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Special Shot
[State -1, Special Shot]
type = ChangeState
value = 6465
triggerall = command = "Special_Shot"
triggerall = power >=2000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Special Shot
[State -1, Special Shot]
type = ChangeState
value = 26465
triggerall = command = "Special_Shot"
triggerall = power >=2000
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; The Phantom Ruby
[State -1, The Phantom Ruby]
type = ChangeState
value = 2300
triggerall = command = "The_Phantom_Ruby"
triggerall = power >=2000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Splashdown
[State -1, Splashdown]
type = ChangeState
value = 2520
triggerall = command = "Splashdown"
triggerall = power >=1000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Splashdown (air)
[State -1, Splashdown (air)]
type = ChangeState
value = 2525
triggerall = command = "Splashdown"
triggerall = power >=1000
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Brick Weapon
[State -1, Brick Weapon]
type = ChangeState
value = 2530
triggerall = command = "Brick_Weapon"
triggerall = power >=1000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Electricity Sphere
[State -1, Electricity Sphere]
type = ChangeState
value = 2600
triggerall = command = "Electricity_Sphere"
triggerall = power >=3000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Electricity Sphere (air)
[State -1, Electricity Sphere (air)]
type = ChangeState
value = 2603
triggerall = command = "Electricity_Sphere"
triggerall = power >=3000
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; The Fast Spinning Controller
[State -1, The Fast Spinning Controller]
type = ChangeState
value = 2850
triggerall = command = "fast_spinning_controller_wait_why_am_i_talking_like_this"
triggerall = power >=1000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; The Fast Spinning Controller air
[State -1, The Fast Spinning Controller air]
type = ChangeState
value = 2860
triggerall = command = "fast_spinning_controller_wait_why_am_i_talking_like_this"
triggerall = power >=1000
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; The Ability Combination Slam
[State -1, The Ability Combination Slam]
type = ChangeState
value = 2900
triggerall = command = "The_Ability_Combination_Slam"
triggerall = power >=1000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Hedlok Punching Overdrive
[State -1, Hedlok Punching Overdrive]
type = ChangeState
value = 6575
triggerall = command = "Hedlok_Punching_Overdrive"
triggerall = power >=3000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Glitchy Lands (Finisher)
[State -1, Glitchy Lands (Finisher)]
type = ChangeState
value = 2700
triggerall = command = "Glitchy_Lands"
triggerall = power >=3000
trigger1 = life<lifemax/4
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Launching Controllers (Finisher)
[State -1, Launching Controllers (Finisher)]
type = ChangeState
value = 6565
triggerall = command = "Launching_Controllers"
triggerall = power >=3000
trigger1 = life<lifemax/4
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Final Smash (Finisher)
[State -1, Final Smash (Finisher)]
type = ChangeState
value = 6165
triggerall = command = "Final Smash"
triggerall = power >=3000
trigger1 = life<lifemax/4
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Banhammer (Mini Finisher)
[State -1, Banhammer (Mini Finisher)]
type = ChangeState
value = 6365
triggerall = command = "Banhammer"
triggerall = power >=3000
trigger1 = life<lifemax/2
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Rocket Controller
[State -1, Rocket Controller]
type = ChangeState
value = 2510
triggerall = command = "Rocket_Controller"
triggerall = power >=2000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; TV Laser
[State -1, TV Laser]
type = ChangeState
value = 6877
triggerall = command = "TV"
triggerall = power >=3000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Nintendo Switch Stampete
[State -1, Nintendo Switch Stampete]
type = ChangeState
value = 6920
triggerall = command = "Nintendo_Switch_Stampede"
triggerall = power >=2000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; 'Cap'ture
[State -1, 'Cap'ture]
type = ChangeState
value = 2200
triggerall = command = "'Cap'ture"
triggerall = power >=3000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; 'Cap'ture (air)
[State -1, 'Cap'ture (air)]
type = ChangeState
value = 2250
triggerall = command = "'Cap'ture"
triggerall = power >=3000
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Giant Console
[State -1, Giant Console]
type = ChangeState
value = 2760
triggerall = command = "Giant_Console"
triggerall = power >=3000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Giant Console (air)
[State -1, Giant Console (air)]
type = ChangeState
value = 2770
triggerall = command = "Giant_Console"
triggerall = power >=3000
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Garbage Puyos and Blocks
[State -1, Garbage Puyos and Blocks]
type = ChangeState
value = 2800
triggerall = command = "Garbage_Puyos_and_Blocks"
triggerall = power >=2000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Garbage Puyos and Blocks (air)
[State -1, Garbage Puyos and Blocks (air)]
type = ChangeState
value = 2810
triggerall = command = "Garbage_Puyos_and_Blocks"
triggerall = power >=2000
trigger1 = statetype = A
trigger1 = ctrl
