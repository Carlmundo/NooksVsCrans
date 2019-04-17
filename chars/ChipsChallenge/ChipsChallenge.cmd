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
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "blocking"
command = $F,x
time = 3

[Command]
name = "blocking" ;Same name as above (buttons in opposite order)
command = x,$F
time = 3

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

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

; AI switch -> ON
[State -1, Activate AI]
type = Varset
triggerall = AILevel > 2
triggerall = (roundstate = 2) && (var(59) = 0)
triggerall = ctrl
triggerall = var(1) > 2 ; wait for at least 2 seconds
trigger1 = Random <= ((AILevel-2)*100)
v = 59
value = 1

; AI switch -> OFF
[State -1, Dectivate AI]
type = Varset
trigger1 = roundstate != 2
trigger2 = Random <= ((12-AILevel)*10)
v = 59
value = 0

[State -1, Refuse to Fight Nazrin]
type = Varset
trigger1 = Enemy(0), Name = "Nazrin"
trigger2 = Enemy(0), Name = "nazrin"
trigger3 = Enemy(0), Name = "Chibi Nazrin"
v = 55
value = 1

[State -1, Refuse to Fight Nazrin]
type = Varset
triggerall = numenemy > 1
trigger1 = Enemy(1), Name = "Nazrin"
trigger2 = Enemy(1), Name = "nazrin"
trigger3 = Enemy(1), Name = "Chibi Nazrin"
v = 55
value = 1


[State -1, AI Deactivation]
type = varset
triggerall = AIlevel < 7
triggerall = var(59) = 1
trigger1 = Random > ((AILevel-2)*100)
trigger2 = roundstate != 2
v = 59
value = 0

[State -1, Adjust UI]
type = Varset
trigger1 = numpartner > 0
trigger1 = Partner, Name = "Chip"
trigger1 = Partner, AuthorName = "SpaceMouse"
trigger1 = Partner, ID < ID ; if the partner ID is lower, they're p1
fv = 37
value = 32

; ----------------------------------------
; AI ROUTINES
; ----------------------------------------
[State -1,AI Guard]
type = ChangeState
triggerall = var(59) && Numenemy && (stateno != [120,155])
triggerall = !var(55)
triggerall =!(enemynear,hitdefattr=SCA,AT)
;triggerall = statetype != A
triggerall = inguarddist
trigger1 = ctrl
trigger1 = random < (AILevel*10)
value = 120

;AI: Super Spy
[State -1, AI: Super Spy]
type = hitoverride
triggerall = !var(55)
triggerall = var(59) && roundstate = 2 && statetype = S
trigger1 = random < (AILevel*2)
attr = SAC, NA, SA, HA, NP, HP, SP, AA, AT, AP, NT,ST,HT
stateno = 1030
slot = 0
time = 8

;AI: Level Up
[State -1, AI: Level Up]
type = ChangeState
value = 1800
Triggerall = var(59)
Triggerall = !var(55)
triggerall = ctrl
triggerall = var(57) < 5
triggerall = power >= 1000
triggerall = statetype = S || statetype = C
trigger1 = random < (200 / var(57)) ; chance goes down as levels up

;AI: FIRE
[State -1, AI: Fire]
type = ChangeState
value = 1500
Triggerall = var(59)
Triggerall = !var(55)
triggerall = ctrl
triggerall = power >= 1000
triggerall = statetype = S || statetype = C
trigger1 = random < 15


;AI: WATER
[State -1, AI: Water]
type = ChangeState
value = 1600
Triggerall = var(59)
Triggerall = !var(55)
triggerall = ctrl
triggerall = power >= 1000
triggerall = statetype = S || statetype = C
trigger1 = random < 25
trigger1 = P2BodyDist X > 150

;AI: FORCE
[State -1, AI: Force]
type = ChangeState
value = 1700
Triggerall = var(59)
Triggerall = !var(55)
triggerall = ctrl
triggerall = power >= 1000
triggerall = statetype = S || statetype = C
trigger1 = random < 25
trigger1 = P2BodyDist X < 100

;AI: Switch Grab
[State -1, AI: Switch Grab]
type = ChangeState
value = 1140
Triggerall = var(59)
Triggerall = !var(55)
triggerall = numhelper(1140) = 0
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = random < 30
trigger1 = P2BodyDist X < 100

;AI: Key Slam
[State -1, AI: Key Slam]
type = ChangeState
value = 1000
Triggerall = var(59)
Triggerall = !var(55)
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = random < 35
trigger1 = P2BodyDist X < 100

;AI: Block Fall
[State -1, AI: Block Fall]
type = ChangeState
value = 1100
Triggerall = var(59)
Triggerall = !var(55)
triggerall = numhelper(1100) = 0
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = random < 30
trigger1 = P2BodyDist X < 120

;AI: Throw Shoes
[State -1, AI: Throw Shoes]
type = ChangeState
value = 1050
Triggerall = var(59)
Triggerall = !var(55)
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random < 40

;AI: Throw Bombs
[State -1, AI: Throw Bombs]
type = ChangeState
value = 1150
Triggerall = var(59)
Triggerall = !var(55)
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random < 20

;AI: Ice Panic
[State -1, AI: Ice Panic]
type = ChangeState
value = 1130
Triggerall = var(59)
Triggerall = !var(55)
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = random < 5
trigger1 = P2BodyDist X > 120

;AI: Light Enemy Toss
[State -1, AI: Light Enemy Toss]
type = ChangeState
value = 1010
Triggerall = var(59)
Triggerall = !var(55)
triggerall = numhelper(1010) = 0
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = random < 10
trigger1 = P2BodyDist X > 80

;AI: Heavy Enemy Toss
[State -1, AI: Heavy Enemy Toss]
type = ChangeState
value = 1110
Triggerall = var(59)
Triggerall = !var(55)
triggerall = numhelper(1110) = 0
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = random < 10
trigger1 = P2BodyDist X > 80

;AI: Ball Bounce Close
[State -1, AI: Ball Bounce Close]
type = ChangeState
value = 1020
Triggerall = var(59)
Triggerall = !var(55)
triggerall = numhelper(1020) = 0
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = random < 10
trigger1 = P2BodyDist X > 40
trigger1 = P2BodyDist X < 100

;AI: Ball Bounce Far
[State -1, AI: Ball Bounce Far]
type = ChangeState
value = 1120
Triggerall = var(59)
Triggerall = !var(55)
triggerall = numhelper(1120) = 0
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = random < 10
trigger1 = P2BodyDist X > 180

;AI: Force Floor Down
[State -1, AI: Force Floor Down]
type = ChangeState
value = 1280
Triggerall = var(59)
Triggerall = !var(55)
triggerall = statetype = A
trigger1 = ctrl
trigger1 = random < 10
trigger1 = P2BodyDist Y > 10

;AI: Force Floor Up
[State -1, AI: Force Floor Up]
type = ChangeState
value = 1270
Triggerall = var(59)
Triggerall = !var(55)
trigger1 = ctrl
trigger1 = random < 10
trigger1 = P2BodyDist Y < 10
trigger1 = pos y < 250

;AI: Force Floor Back (Air)
[State -1, AI: Force Floor Back (Air)]
type = ChangeState
value = 1260
Triggerall = var(59)
Triggerall = !var(55)
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random < 10

;AI: Force Floor Back
[State -1, AI: Force Floor Back]
type = ChangeState
value = 1210
Triggerall = var(59)
Triggerall = !var(55)
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = random < 10

;AI: Force Floor Forward (Air)
[State -1, AI: Force Floor Forward (Air)]
type = ChangeState
value = 1250
Triggerall = var(59)
Triggerall = !var(55)
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random < 10

;AI: Force Floor Forward
[State -1, AI: Force Floor Forward]
type = ChangeState
value = 1200
Triggerall = var(59)
Triggerall = !var(55)
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = random < 10

; ----------------------------------------
; END AI ROUTINES
; ----------------------------------------

;---------------------------------------------------------------------------
;Level Up
[State -1, Level Up]
type = ChangeState
value = 1800
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = ctrl
triggerall = var(57) < 5
triggerall = power >= 1000
triggerall = statetype = S || statetype = C
trigger1 = command = "x" && command = "y"
trigger2 = command = "y" && command = "z"
trigger3 = command = "x" && command = "z"

;---------------------------------------------------------------------------
;FIRE
[State -1, Fire]
type = ChangeState
value = 1500
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = ctrl
triggerall = power >= 1000
triggerall = statetype = S || statetype = C
trigger1 = command = "x"

;---------------------------------------------------------------------------
;WATER
[State -1, Water]
type = ChangeState
value = 1600
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = ctrl
triggerall = power >= 1000
triggerall = statetype = S || statetype = C
trigger1 = command = "y"

;---------------------------------------------------------------------------
;FORCE
[State -1, Force]
type = ChangeState
value = 1700
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = ctrl
triggerall = power >= 1000
triggerall = statetype = S || statetype = C
trigger1 = command = "z"

;---------------------------------------------------------------------------
;Force Floor Down
[State -1, Force Floor Down]
type = ChangeState
value = 1280
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Force Floor Up
[State -1, Force Floor Up]
type = ChangeState
value = 1270
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = command = "c"
triggerall = command = "holdup"
trigger1 = ctrl

;---------------------------------------------------------------------------
;Force Floor Back (Air)
[State -1, Force Floor Back (Air)]
type = ChangeState
value = 1260
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = command = "c"
triggerall = command = "holdback"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Force Floor Back
[State -1, Force Floor Back]
type = ChangeState
value = 1210
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = command = "c"
triggerall = command = "holdback"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Force Floor Forward (Air)
[State -1, Force Floor Forward (Air)]
type = ChangeState
value = 1250
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Force Floor Forward
[State -1, Force Floor Forward]
type = ChangeState
value = 1200
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = command = "c"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Ball Bounce Close
[State -1, Ball Bounce Close]
type = ChangeState
value = 1020
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = command = "QCB_a"
triggerall = numhelper(1020) = 0
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Ball Bounce Far
[State -1, Ball Bounce Far]
type = ChangeState
value = 1120
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = command = "QCB_b"
triggerall = numhelper(1120) = 0
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Light Enemy Toss
[State -1, Light Enemy Toss]
type = ChangeState
value = 1010
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = command = "QCF_a"
triggerall = numhelper(1010) = 0
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Heavy Enemy Toss
[State -1, Heavy Enemy Toss]
type = ChangeState
value = 1110
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = command = "QCF_b"
triggerall = numhelper(1110) = 0
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Switch Grab
[State -1, Switch Grab]
type = ChangeState
value = 1140
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = numhelper(1140) = 0
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Throw Bombs
[State -1, Throw Bombs]
type = ChangeState
value = 1150
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Throw Shoes
[State -1, Throw Shoes]
type = ChangeState
value = 1050
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Super Spy
[State -1, Super Spy]
type = ChangeState
value = 1030
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Ice Panic
[State -1, Ice Panic]
type = ChangeState
value = 1130
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Block Fall
[State -1, Block Fall]
type = ChangeState
value = 1100
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = numhelper(1100) = 0
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Key Slam
[State -1, Key Slam]
type = ChangeState
value = 1000
Triggerall = !var(59)
Triggerall = !var(55)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
