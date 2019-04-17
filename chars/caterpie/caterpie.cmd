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
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
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
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
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
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.

[Command]
name = "hyper1"
command = ~D, B, D, B, a
time = 40

[Command]
name = "hyper2"
command = ~D, B, D, B, b
time = 40

[Command]
name = "hyper3"
command = ~D, B, D, B, c
time = 40

 [Command]
 name = "metapod"
 command = ~D, F, D, F, z
 time = 40
 


;-| Special Motions |------------------------------------------------------
[Command]
name = "powerup"
command = x + a

[Command]
name = "powerup"
command = y + b

[Command]
name = "powerup"
command = z + c

[Command]
name = "ssreacha"
command = ~D, B, a

[Command]
name = "ssreachb"
command = ~D, B, b

[Command]
name = "ssreachc"
command = ~D, B, c

[Command]
name = "stringshotA"
command = ~D, F, b

[Command]
name = "stringshotB"
command = ~D, F, c

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

[Command]
name="holda"
command=/a
time=1
[Command]
name="holdb"
command=/b
time=1
[Command]
name="holdc"
command=/c
time=1
[Command]
name="holdx"
command=/x
time=1
[Command]
name="holdy"
command=/y
time=1
[Command]
name="holdz"
command=/z
time=1
[Command]
name="holdstart"
command=/s
time=1

;AI Start----------------------------------------------------------------------------
[Command]
name = "cpu1"
command = U, U, U, U
time = 0
[Command]
name = "cpu2"
command = U, D, U, F
time = 0
[Command]
name = "cpu3"
command = U, F, U, D
time = 0
[Command]
name = "cpu4"
command = U, B, D, F
time = 0
[Command]
name = "cpu5"
command = U, U, D, D
time = 0
[Command]
name = "cpu6"
command = U, D, D, B
time = 0
[Command]
name = "cpu7"
command = U, F, F, D
time = 0
[Command]
name = "cpu8"
command = U, B, F, B
time = 0
[Command]
name = "cpu9"
command = U, U, F, U
time = 0
[Command]
name = "cpu10"
command = U, D, B, B
time = 0
[Command]
name = "cpu11"
command = U, F, B, U
time = 0
[Command]
name = "cpu12"
command = U, B, B, F
time = 0
[Command]
name = "cpu13"
command = U, U, U, U
time = 0
[Command]
name = "cpu14"
command = U, D, U, F
time = 0
[Command]
name = "cpu15"
command = U, F, U, D
time = 0
[Command]
name = "cpu16"
command = U, B, D, F
time = 0
[Command]
name = "cpu17"
command = U, U, D, D
time = 0
[Command]
name = "cpu18"
command = U, D, D, B
time = 0
[Command]
name = "cpu19"
command = U, F, F, D
time = 0
[Command]
name = "cpu20"
command = D, B, F, B
time = 0
[Command]
name = "cpu21"
command = D, U, F, U
time = 0
[Command]
name = "cpu22"
command = D, D, B, B
time = 0
[Command]
name = "cpu23"
command = D, F, B, U
time = 0
[Command]
name = "cpu24"
command = D, B, B, F
time = 0
[Command]
name = "cpu25"
command = D, U, U, U
time = 0
[Command]
name = "cpu26"
command = D, D, U, F
time = 0
[Command]
name = "cpu27"
command = D, F, U, D
time = 0
[Command]
name = "cpu28"
command = D, B, D, F
time = 0
[Command]
name = "cpu29"
command = D, U, D, D
time = 0
[Command]
name = "cpu30"
command = D, D, D, B
time = 0
[Command]
name = "cpu31"
command = D, F, F, D
time = 0
[Command]
name = "cpu32"
command = D, B, F, B
time = 0
[Command]
name = "cpu33"
command = D, U, F, U
time = 0
[Command]
name = "cpu34"
command = D, D, B, B
time = 0
[Command]
name = "cpu35"
command = D, F, B, U
time = 0
[Command]
name = "cpu36"
command = D, B, B, F
time = 0
[Command]
name = "cpu37"
command = D, U, U, U
time = 0
[Command]
name = "cpu38"
command = D, D, U, F
time = 0
[Command]
name = "cpu39"
command = D, F, U, D
time = 0
[Command]
name = "cpu40"
command = D, B, D, F
time = 0
[Command]
name = "cpu41"
command = F, U, D, D
time = 0
[Command]
name = "cpu42"
command = F, D, D, B
time = 0
[Command]
name = "cpu43"
command = F, F, F, D
time = 0
[Command]
name = "cpu44"
command = F, B, F, B
time = 0
[Command]
name = "cpu45"
command = F, U, F, U
time = 0
[Command]
name = "cpu46"
command = F, D, B, B
time = 0
[Command]
name = "cpu47"
command = F, F, B, U
time = 0
[Command]
name = "cpu48"
command = F, B, B, F
time = 0
[Command]
name = "cpu49"
command = F, U, U, U
time = 0
[Command]
name = "cpu50"
command = F, D, U, F
time = 0
[Command]
name = "cpu51"
command = F, F, U, D
time = 0
[Command]
name = "cpu52"
command = F, B, D, F
time = 0
[Command]
name = "cpu53"
command = F, U, D, D
time = 0
[Command]
name = "cpu54"
command = F, D, D, B
time = 0
[Command]
name = "cpu55"
command = F, F, F, D
time = 0
[Command]
name = "cpu56"
command = F, B, F, B
time = 0
[Command]
name = "cpu57"
command = F, U, F, U
time = 0
[Command]
name = "cpu58"
command = F, D, B, B
time = 0
[Command]
name = "cpu59"
command = F, F, B, U
time = 0
[Command]
name = "cpu60"
command = F, B, B, F
time = 0
[Command]
name = "cpu61"
command = B, U, U, U
time = 0
[Command]
name = "cpu62"
command = B, D, U, F
time = 0
[Command]
name = "cpu63"
command = B, F, U, D
time = 0
[Command]
name = "cpu64"
command = B, B, D, F
time = 0
[Command]
name = "cpu65"
command = B, U, D, D
time = 0
[Command]
name = "cpu66"
command = B, D, D, B
time = 0
[Command]
name = "cpu67"
command = B, F, F, D
time = 0
[Command]
name = "cpu68"
command = B, B, F, B
time = 0
[Command]
name = "cpu69"
command = B, U, F, U
time = 0
[Command]
name = "cpu70"
command = B, D, B, B
time = 0
[Command]
name = "cpu71"
command = B, F, B, U
time = 0
[Command]
name = "cpu72"
command = B, B, B, F
time = 0
[Command]
name = "cpu73"
command = B, U, U, U
time = 0
[Command]
name = "cpu74"
command = B, D, U, F
time = 0
[Command]
name = "cpu75"
command = B, F, U, D
time = 0
[Command]
name = "cpu76"
command = B, B, D, F
time = 0
[Command]
name = "cpu77"
command = B, U, D, D
time = 0
[Command]
name = "cpu78"
command = B, D, D, B
time = 0
[Command]
name = "cpu79"
command = B, F, F, D
time = 0
[Command]
name = "cpu80"
command = B, B, F, B
time = 0
[Command]
name = "cpu81"
command = B, U, F, U
time = 0
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


[State -1, SetAI]
type = VarSet
triggerall = Alive && RoundState = 2
triggerall = IsHomeTeam
trigger1 = TeamSide = 2
trigger2 = MatchNo > 1
var(7) = 1

[State -1]
type = VarSet
var(7) = 1
triggerall = Alive && RoundState = 2
triggerall = var(7) != 1
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
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"
trigger31 = command = "cpu31"
trigger32 = command = "cpu32"
trigger33 = command = "cpu33"
trigger34 = command = "cpu34"
trigger35 = command = "cpu35"
trigger36 = command = "cpu36"
trigger37 = command = "cpu37"
trigger38 = command = "cpu38"
trigger39 = command = "cpu39"
trigger40 = command = "cpu40"
trigger41 = command = "cpu41"
trigger42 = command = "cpu42"
trigger43 = command = "cpu43"
trigger44 = command = "cpu44"
trigger45 = command = "cpu45"
trigger46 = command = "cpu46"
trigger47 = command = "cpu47"
trigger48 = command = "cpu48"
trigger49 = command = "cpu49"
trigger50 = command = "cpu50"
trigger51 = command = "cpu51"
trigger52 = command = "cpu52"
trigger53 = command = "cpu53"
trigger54 = command = "cpu54"
trigger55 = command = "cpu55"
trigger56 = command = "cpu56"
trigger57 = command = "cpu57"
trigger58 = command = "cpu58"
trigger59 = command = "cpu59"
trigger60 = command = "cpu60"
trigger61 = command = "cpu61"
trigger62 = command = "cpu62"
trigger63 = command = "cpu63"
trigger64 = command = "cpu64"
trigger65 = command = "cpu65"
trigger66 = command = "cpu66"
trigger67 = command = "cpu67"
trigger68 = command = "cpu68"
trigger69 = command = "cpu69"
trigger70 = command = "cpu70"
trigger71 = command = "cpu71"
trigger72 = command = "cpu72"
trigger73 = command = "cpu73"
trigger74 = command = "cpu74"
trigger75 = command = "cpu75"
trigger76 = command = "cpu76"
trigger77 = command = "cpu77"
trigger78 = command = "cpu78"
trigger79 = command = "cpu79"
trigger80 = command = "cpu80"
trigger81 = command = "cpu81"

;Stop code by Big Eli King
[State -1]
type = ChangeState
value = 0
triggerall = Var(7) = 1
triggerall = Win = 1
trigger1 = statetype != A
trigger1 = ctrl

;Thanks to BBH for guard AI
[State -1, Stand guard]
type = ChangeState
triggerall = var(7) = 1
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = p2bodydist x < 50 && p2bodydist x > 15
trigger1 = ctrl
trigger1 = (enemy, NumProj = 0)
trigger2 = InGuardDist
trigger2 = ctrl
trigger2 = (stateno = 130) && (animtime < 45)
trigger3 = InGuardDist
trigger3 = ctrl
trigger3 = (stateno = 131) && (animtime < 45)
trigger4 = (enemy, NumProj > 0)
trigger4 = random < 750
trigger4 = ctrl
value = 130

[State -1, S-to-C guard]
type = ChangeState
triggerall = var(7) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = stateno = 130
value = 132

[State -1, Crouch guard]
type = ChangeState
triggerall = var(7) = 1
triggerall = StateType != A
triggerall = P2statetype != A
triggerall = P2Movetype = A
trigger1 = p2bodydist x < 50 && p2bodydist x > 15
trigger1 = ctrl
trigger1 = (enemy, NumProj = 0)
trigger2 = InGuardDist
trigger2 = ctrl
trigger2 = (stateno = 131) && (animtime < 45)
trigger3 = InGuardDist
trigger3 = ctrl
trigger3 = (stateno = 130) && (animtime < 45)
trigger4 = (enemy, NumProj > 0)
trigger4 = random < 750
trigger4 = ctrl
value = 131

[State -1, C-to-S guard]
type = ChangeState
triggerall = var(7) = 1
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = stateno = 132
value = 130

[State -1, Air guard]
type = ChangeState
triggerall = var(7) = 1
triggerall = StateType = A
triggerall = P2Movetype = A
trigger1 = p2bodydist x < 50 && p2bodydist x > 15
trigger1 = ctrl
trigger1 = (enemy, NumProj = 0)
trigger2 = InGuardDist
trigger2 = ctrl
trigger2 = (stateno = 132) && (animtime < 45)
trigger3 = (enemy, NumProj > 0)
trigger3 = random < 750
trigger3 = ctrl
value = 132


[State -1, AI Jump]
type = ChangeState
value = 40
triggerall = var(7) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = P2BodyDist X <= 30
trigger1 = p2bodydist Y <= -30
trigger1 = p2statetype = A
trigger2 = (stateno = 450) && movecontact

[State -1, AI Weak Reach]
type = ChangeState
value = 1500
triggerall = var(7) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x > 70 && p2bodydist x < 73
trigger1 = random < 400

[State -1, AI Med Reach]
type = ChangeState
value = 1501
triggerall = var(7) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x > 120 && p2bodydist x < 122
trigger1 = random < 330
trigger2 = stateno = 1500
trigger2 = movehit && time > 15

[State -1, AI Strong Reach]
type = ChangeState
value = 1502
triggerall = var(7) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x > 245 && p2bodydist x < 247
trigger1 = random < 250
trigger2 = stateno = 1501
trigger2 = movehit && time > 18

[State -1, AI Medium Stand Punch]
type = ChangeState
value = 210
triggerall = var(7) = 1
trigger1 = (stateno = 200)
trigger1 = (movecontact)
trigger2 = ctrl
trigger2 = random < 70
trigger2 = P2BodyDist X <= 20
trigger2 = p2bodydist y <= 20
trigger2 = statetype = S


[State -1, AI Medium Stand Kick]
type = ChangeState
value = 240
triggerall = var(7) = 1
triggerall = P2BodyDist X >= 75
trigger1 = statetype = S
trigger1 =  NumProjID(241) = 0
trigger1 = ctrl
trigger1 = random < 35
trigger2 = (stateno = 220) && movehit
trigger3 = (stateno = 420) && movehit
trigger4 = (stateno = 255) && movehit


[State -1, AI Medium Crouch Punch]
type = ChangeState
value = 410
triggerall = var(7) = 1
triggerall = StateType = S
trigger1 = (stateno = 400) 
trigger1 = (movehit)
trigger2 = ctrl
trigger2 = statetype !=A
trigger2 = P2BodyDist X <= 45 && p2bodydist x >= 15
trigger2 = random <  150

[State -1, AI Fierce Stand Punch]
type = ChangeState
value = 220
triggerall = var(7) = 1
trigger1 = random < 250
trigger1 = P2BodyDist X <= 40 && p2bodydist x > 25
trigger1 = P2BodyDist Y <= 40
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) 
trigger2 = (movehit)
trigger2 = random < 300


[State -1, AI Fierce Stand Kick]
type = ChangeState
value = 250
triggerall = var(7) = 1
triggerall = statetype = S
triggerall = P2BodyDist X >= 75
trigger1 =  NumProjID(241) = 0
trigger1 = ctrl
trigger1 = random < 30
trigger2 = (stateno = 220) && movehit
trigger3 = (stateno = 255) && movehit


[State -1, AI Standing Medium Kick]
type = ChangeState
value = 245
triggerall = var(7) = 1
triggerall = random < 400
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (p2bodydist x <= 35) && (p2bodydist x > 5)
trigger1 = random > 700
trigger2 = (stateno = 200) && movehit
trigger3 = (stateno = 400) && movehit
trigger4 = (stateno = 210) && movehit
trigger5 = (stateno = 410) && movehit

[State -1, AI Standing Medium Kick]
type = ChangeState
value = 255
triggerall = var(7) = 1
triggerall = random < 200
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (p2bodydist x <= 60)&& (p2bodydist x > 5)
trigger1 = random < 300
trigger2 = (stateno = 245) && movehit
trigger3 = (stateno = 410) && movehit
trigger4 = (stateno = 210) && movehit
trigger5 = (stateno = 420) && movehit
trigger6 = (stateno = 220) && movehit

[State -1, AI Medium Crouch Kick]
type = ChangeState
value = 440
triggerall = var(7) = 1
triggerall = var(7) = 1
trigger1 = statetype = S
trigger1 = P2BodyDist X >= 125
trigger1 =  NumProjID(441) = 0
trigger1 = ctrl
trigger1 = random < 75




[State -1, AI Fierce Crouch Kick]
type = ChangeState
value = 450
triggerall = var(7) = 1
triggerall = p2bodydist x < 30 && p2bodydist x > 5
trigger1 = random < 600
trigger1 = ctrl
trigger1 = StateType != A
trigger1 = p2statetype = S
trigger2 = (stateno = 410) && movehit
trigger3 = (stateno = 210) && movehit
trigger4 = (stateno = 245) && movehit
trigger5 = (stateno = 410) && moveguarded
trigger6 = (stateno = 210) && moveguarded
trigger7 = (stateno = 245) && moveguarded


[State -1, AI Crouching Fierce Punch]
type = ChangeState
value = 420
triggerall = var(7) = 1
trigger1 = random < 250
trigger1 = P2BodyDist X <= 40 && p2bodydist x > 25
trigger1 = P2BodyDist Y <= 40
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 410) 
trigger2 = (movecontact)

[State -1, AI Weak Stand Punch]
type = ChangeState
value = 200
triggerall = var(7) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x <=20
trigger1 = random < 370


[State -1, AI Weak Stand Kick]
type = ChangeState
value = 230
triggerall = var(7) = 1
triggerall = P2Movetype != A
triggerall = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x >= 1250
trigger1 = random < 50


[State -1, AI Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(7) = 1
triggerall = StateType = S
trigger1 = (stateno = 200) && movehit
trigger2 = ctrl
trigger2 = p2bodydist x <=20
trigger2 = random < 350

[State -1, AI Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(7) = 1
triggerall = StateType = S
trigger1 = ctrl
trigger1 = p2bodydist x >= 125
trigger1 = random < 50


[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(7) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger1 = P2BodyDist X <= 10
trigger1 = random < 200
trigger2 = stateno = 40
trigger2 = P2BodyDist X <= 10

[State -1, AI Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(7) = 1
triggerall = statetype = A
trigger1 = (stateno = 600) && movehit
trigger2 = (stateno = 645) && movehit
trigger2 = random < 300

[State -1, AI Air Medium Kick]
type = ChangeState
value = 645
triggerall = var(7) = 1
triggerall = statetype = A
trigger1 = (stateno = 600) && movehit
trigger2 = (stateno = 610) && movehit
trigger2 = p2bodydist x < 35
trigger2 = random < 300


[State -1, AI Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(7) = 1
triggerall = statetype = A
trigger1 = (stateno = 610) && movehit
trigger1 = p2bodydist x < 35
trigger1 = random > 500
trigger2 = (stateno = 645) && movehit
trigger2 = random > 500

[State -1, AI Air Strong Kick]
type = ChangeState
value = 655
triggerall = var(7) = 1
triggerall = statetype = A
triggerall = (p2bodydist x < 65) && (p2bodydist x > 10)
trigger1 = (stateno = 645) && movehit
trigger2 = (stateno = 610) && movehit

[State -1, AI Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(7) = 1
triggerall = statetype = A
trigger1 = p2bodydist x > 75
trigger1 = random < 70
trigger1 = ctrl

[State -1, AI Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(7) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger1 = random < 125
trigger1 = p2statetype = A
trigger1 = P2BodyDist X >= 70

[State -1, AI Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(7) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger1 = P2BodyDist X >= 125
trigger1 = random < 50

[State -1, AI Metapod]
type = changestate
value = 3000
triggerall = var(7) = 1
triggerall = power >= 1000
triggerall = random < 200
trigger1 = NumProjID(3001) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x > 25
trigger1 = random < 50
trigger2 = (stateno = 220) && movehit
trigger3 = (stateno = 420) && movehit

[State -1, AI Hyperbeam]
type = changestate
value = 3010
triggerall = var(7) = 1
triggerall = power >= 3000
trigger1 = statetype = S  || StateType = C
trigger1 = ctrl
trigger1 = random > 300
trigger1 = p2bodydist x > 50
trigger1 = p2movetype ! = A

;AI Charge-up
[State -1, chargeup]
type = ChangeState
value = 1000
triggerall = var(7) = 1
triggerall = power < powermax
triggerall = statetype = s
triggerall = random < 50
trigger1 = (P2BodyDist X >= 250) && (P2bodydist x > 50)
trigger1 = P2Movetype != A
trigger1 = ctrl

;AI Charge-up
[State -1, chargeupb]
type = ChangeState
value = 1001
triggerall = var(7) = 1
triggerall = power < powermax
triggerall = statetype = s
triggerall = random < 50
trigger1 = (P2BodyDist X >= 250) && (P2bodydist x > 50)
trigger1 = P2Movetype != A
trigger1 = ctrl

;AI Charge-up
[State -1, chargeupc]
type = ChangeState
value = 1002
triggerall = var(7) = 1
triggerall = power < powermax
triggerall = statetype = s
triggerall = random < 50
trigger1 = (P2BodyDist X >= 250) && (P2bodydist x > 50)
trigger1 = P2Movetype != A
trigger1 = ctrl


;End AI

;===========================================================================
;---------------------------------------------------------------------------


[State -1, Metapod]
type = changestate
value = 3000
triggerall = command = "metapod" 
triggerall = Power >= 1000
trigger1 = statetype = S  || StateType = C
trigger1 = NumProjID(3001) = 0
trigger1 = ctrl
trigger2 = (stateno = 420) && movecontact
trigger3 = (stateno = 220) && movecontact

[State -1, Hyperbeam]
type = changestate
value = 3010
triggerall = command = "hyper1" || command = "hyper2" || command = "hyper3"
triggerall = Power >= 3000
trigger1 = statetype = S  || StateType = C
trigger1 = ctrl


[State -1, powerup]
type = ChangeState
value = 1000
triggerall = power < powermax
trigger1 = command = "holdy"
trigger1 = command = "holdb"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, powerup]
type = ChangeState
value = 1001
triggerall = power < powermax
trigger1 = command = "holdx"
trigger1 = command = "holda"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, powerup]
type = ChangeState
value = 1002
triggerall = power < powermax
trigger1 = command = "holdz"
trigger1 = command = "holdc"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, Weak Reach]
type = ChangeState
value = 1500
triggerall = command = "ssreacha"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Med Reach]
type = ChangeState
value = 1501
triggerall = command = "ssreachb"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 1500)
trigger2 = movecontact && time > 15

[State -1, Strong Reach]
type = ChangeState
value = 1502
triggerall = command = "ssreachc"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 1501)
trigger2 = movecontact && time > 15

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl




;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
trigger3 = stateno = 400
trigger3 = movecontact


;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact
trigger4 = (stateno = 410) && movecontact




[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && movecontact
trigger3 = (stateno = 410) && movecontact
trigger4 = (stateno = 420) && movecontact
trigger5 = (stateno = 245) && movecontact



;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl





;---------------------------------------------------------------------------
;Standing Medium Kick
;立ち強キック
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "stringshotA"
trigger1 =  NumProjId(241) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 220) && movecontact
trigger3 = (stateno = 420) && movecontact
trigger4 = (stateno = 255) && movecontact
trigger5 = (stateno = 245) && movecontact

[State -1, Standing Medium Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 410) && movecontact

;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "stringshotB"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 =  NumProjId(241) = 0
trigger2 = (stateno = 220) && movecontact
trigger3 = (stateno = 420) && movecontact
trigger4 = (stateno = 255) && movecontact
trigger5 = (stateno = 245) && movecontact

[State -1, Standing Medium Kick]
type = ChangeState
value = 255
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 245) && movecontact
trigger3 = (stateno = 410) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 420) && movecontact
trigger6 = (stateno = 220) && movecontact

;---------------------------------------------------------------------------
;Taunt
;挑発
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6



;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)
trigger2 = (movecontact)
trigger3= (stateno = 210) && movecontact

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 220) && movecontact
trigger3 = (stateno = 410)
trigger3 = (movecontact && time > 10)
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 245) && movecontact


;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 420)
trigger2 = (movecontact)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger1 = NumProjId(441) = 0






[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 245) && movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time > 6
trigger3 = stateno = 630
trigger3 = p2bodydist x < 10



;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 645) && movehit


[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 610) && movecontact
trigger3 = (stateno = 600) && movecontact
trigger4 = (stateno = 645) && movecontact



;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 620) && movecontact


;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "stringshotA"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact

[State -1, Jump Medium Kick]
type = ChangeState
value = 645
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact


[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "stringshotB"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact

[State -1, Jump Medium Kick]
type = ChangeState
value = 655
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 645) && movecontact
trigger3 = (stateno = 610) && movecontact

[State -1, Jump]
type = changestate
value = 40
triggerall = command = "holdup"
trigger1 = (stateno = 450) && movecontact

