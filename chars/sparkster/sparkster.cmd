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
name = "Super_Y"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "Super_Z"
command = ~D, DF, F, D, DF, F, z
time = 20

[Command]
name = "BackSuper_Y"
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "BackSuper_Z"
command = ~D, DB, B, D, DB, B, z;~F, D, DF, F, D, DF, y
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
name = "QCF_z"
command = ~D, DF, F, z

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
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "HCF_z"
command = ~B, DB, D, DF, F, z
time = 30

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "F_a"
command = /$F, a

[Command]
name = "F_b"
command = /$F, b

[Command]
name = "F_c"
command = /$F, c

[Command]
name = "F_x"
command = /$F, x

[Command]
name = "F_y"
command = /$F, y

[Command]
name = "F_z"
command = /$F, z

[Command]
name = "back_a"
command = /$B, a

[Command]
name = "back_b"
command = /$B, b

[Command]
name = "back_c"
command = /$B, c

[Command]
name = "back_x"
command = /$B, x

[Command]
name = "back_y"
command = /$B, y

[Command]
name = "back_z"
command = /$B, z

[Command]
name = "22x"
command = ~D, D, x
time = 20

[Command]
name = "22y"
command = ~D, D, y
time = 20

[Command]
name = "22z"
command = ~D, D, z
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 15

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "ab";Required (do not remove)
command = a+b
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

[Command]
name = "down_c"
command = /$D,c
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

    [State -1, Refuse to Fight Nazrin]
    type = Varset
    trigger1 = Enemy(0), Name = "Nazrin"
    trigger2 = Enemy(0), Name = "nazrin"
    trigger3 = Enemy(0), Name = "Nazrin Deluxe"
    trigger4 = Enemy(0), Name = "Chibi Nazrin"
    trigger5 = Enemy(1), Name = "Nazrin"
    trigger6 = Enemy(1), Name = "nazrin"
    trigger7 = Enemy(1), Name = "Chibi Nazrin"
    trigger8 = Enemy(1), Name = "Nazrin Deluxe"
    v = 55
    value = 1

    [State -1, Imagine Breaker Special AI]
    type = Varset
    trigger1 = Enemy(0), Name = "Imagine Breaker"
    trigger2 = Enemy(1), Name = "Imagine Breaker"
    v = 56
    value = 1


    [State -1, Enemy is Gedol]
    type = Varset
    trigger1 = Enemy(0), Name = "Gedol"
    trigger2 = Enemy(1), Name = "Gedol"
    v = 33
    value = 1


    ; AI switch -> ON
    [State -1, Activate AI]
    type = Varset
    triggerall = RoundState = [1,2]
    triggerall = AILevel
    triggerall = var(55) != 1
    trigger1 = var(59) != 1
    v = 59
    value = 1
        [State -1, Activate AI 2]
    type = Varset
    triggerall = RoundState = [1,2]
    triggerall = AILevel
    triggerall = var(55) != 1
    trigger1 = time = 1
    v = 40
    value = 0

    ; AI switch -> OFF
    [State -1, Deactivate AI]
    type = Varset
    trigger1 = RoundState != [1,2]
    v = 59
    value = 0


;-----------------------------------
; AI ROUTINES
;-----------------------------------

; block stuff
[State -1,AI Guard]
type = ChangeState
triggerall = var(59) && Numenemy && (stateno != [120,155])
Triggerall = !var(55)
triggerall =!(enemynear,hitdefattr=SCA,AT)
triggerall = statetype != A
triggerall = inguarddist
trigger1 = ctrl
value = 120

; block stuff
[State -1,AI Guard]
type = ChangeState
triggerall = var(59) && Numenemy && (stateno != [120,155])
Triggerall = !var(55)
triggerall =!(enemynear,hitdefattr=SCA,AT)
triggerall = statetype = A
triggerall = inguarddist
trigger1 = ctrl
value = 132

;Roll
[State -1, Roll]
type = ChangeState
value = 1230
Triggerall = var(59)
Triggerall = !var(55)
triggerall = alive
triggerall = statetype = S
trigger1 = stateno = [150,155]
trigger1 = random < 60
trigger2 = stateno = [5000,5210]
trigger2 = random < 60
trigger3 = stateno = 120
trigger3 = random < 40

;bomb
[State -1, AI: Bomb]
type = ChangeState
value = 9000
Triggerall = var(59)
Triggerall = !var(55)
triggerall = alive
triggerall = NumHelper(9000) = 0
triggerall = fvar(13) < 20
triggerall = fvar(14) <= 0 ; if they're not below
trigger1 = stateno = [150,155]
trigger1 = random < 10
trigger2 = stateno = [5000,5210]
trigger2 = random < 10
trigger3 = stateno = 120
trigger3 = random < 10

[State -1, AutoRoll]
type = hitoverride
triggerall = var(59) && roundstate = 2 && statetype = S
Triggerall = !var(55)
triggerall = alive
trigger1 = random < 100
attr = SAC, NA, SA, HA, NP, HP, SP, AA, AT, AP, NT,ST,HT
stateno = 1230
slot = 0
time = 6

;7000: Finale
[State -1, AI: 7000: Finale]
type = ChangeState
value = 7000
Triggerall = var(59)
Triggerall = !var(55)
triggerall = NumHelper(9001) != 1
TriggerAll = StateType != A
triggerall = fvar(39) >= var(42)
triggerall = fvar(13) >= 50
triggerall = fvar(14) <= 50
triggerall = !inguarddist
trigger1 = ctrl
trigger1 = random<200

;2200: Axl Double Dash
[State -1, AI: 2200: Axl Double Dash]
type = ChangeState
value = 2200
Triggerall = var(59)
Triggerall = !var(55)
triggerall = var(33) != 1
triggerall = NumHelper(9001) != 1
triggerall = fvar(39) >= var(20)
triggerall = NumHelper(2000) = 0
triggerall = fvar(39) < var(42)
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random<15

;2000: Gedol
[State -1, AI: 2000: Gedol]
type = ChangeState
value = 2000
Triggerall = var(59)
Triggerall = !var(55)
triggerall = NumHelper(9001) != 1
triggerall = fvar(39) >= var(30)
triggerall = var(33) != 1
triggerall = fvar(39) < var(42)
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random<10

;2300: Bounce
[State -1, AI: 2300: Bounce]
type = ChangeState
value = 2300
Triggerall = var(59)
Triggerall = !var(55)
triggerall = NumHelper(9001) != 1
triggerall = fvar(39) >= var(10)
triggerall = fvar(39) < var(42)
trigger1 = ctrl
trigger1 = random<5

;2110: Axl Assist Spin
[State -1, AI: 2110: Axl Assist Spin]
type = ChangeState
value = 2110
Triggerall = var(59)
Triggerall = !var(55)
triggerall = NumHelper(2000) = 0
triggerall = fvar(13) <= 100
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = random<15

;2120: Axl Assist Spin Back
[State -1, AI: 2120: Axl Assist Spin Back]
type = ChangeState
value = 2120
Triggerall = var(59)
Triggerall = !var(55)
triggerall = NumHelper(2000) = 0
triggerall = fvar(13) >= 100
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = random<15

;830: Air Grab
[State -1, AI: 830: Air Grab]
type = ChangeState
value = 830
Triggerall = var(59)
Triggerall = !var(55)
triggerall = fvar(13) <= 40
triggerall = fvar(14) = [-20,20]
trigger1 = p2statetype != C && p2statetype != L
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random<100
trigger2 = (stateno = 1180) && time > 28
trigger2 = random<400

;1130: Spin Grab
[State -1, AI: 1130: Spin Grab]
type = ChangeState
value = 1130
Triggerall = var(59)
Triggerall = !var(55)
triggerall = fvar(13) <= 30
triggerall = fvar(14) = [-5,5]
trigger1 = statetype != A
trigger1 = p2statetype != A && p2statetype != L
trigger1 = ctrl
trigger1 = random<100

;1000: Sword Slash Light
[State -1, AI: 1000: Sword Slash Light]
type = ChangeState
value = 1000
Triggerall = var(59)
Triggerall = !var(55)
triggerall = fvar(13) <= 50
triggerall = fvar(14) = [-5,5]
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random<80
trigger2 = (stateno = 1005) && time > 10
;trigger2 = random<40

;1005: Crouch Sword Slash
[State -1, AI: 1005: Crouch Sword Slash]
type = ChangeState
value = 1005
Triggerall = var(59)
Triggerall = !var(55)
triggerall = fvar(13) <= 50
triggerall = fvar(14) = [-5,5]
trigger1 = statetype = C
trigger1 = ctrl
trigger1 = random<90
trigger2 = (stateno = 1000) && time > 10
trigger2 = random<400

;1010: Fire Sword
[State -1, AI: 1010: Fire Sword]
type = ChangeState
value = 1010
Triggerall = var(59)
Triggerall = !var(55)
triggerall = fvar(13) <= 50
triggerall = fvar(14) = [-5,5]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = random<70
trigger2 = (stateno = 1000) && time > 10
trigger2 = random<400
trigger3 = (stateno = 1005) && time > 10
trigger3 = random<400

;1050: Air Sword Light
[State -1, AI: 1050: Sword Air Slash]
type = ChangeState
value = 1050
Triggerall = var(59)
Triggerall = !var(55)
triggerall = fvar(13) <= 50
triggerall = fvar(14) = [-20,20]
trigger1 = statetype = A
trigger1 = p2statetype != L
trigger1 = ctrl
trigger1 = random<70

;1055: Air Sword Slam
[State -1, AI: 1055: Air Sword Slam]
type = ChangeState
value = 1055
Triggerall = var(59)
Triggerall = !var(55)
triggerall = fvar(13) <= 60
triggerall = fvar(14) = [-20,40]
trigger1 = statetype = A
trigger1 = p2statetype = A
trigger1 = ctrl
trigger1 = random<100
trigger2 = (stateno = 1180) && time > 29


;1060: Air Fire Sword
[State -1, AI: 1060: Air Fire Sword]
type = ChangeState
value = 1060
Triggerall = var(59)
Triggerall = !var(55)
triggerall = fvar(13) <= 60
triggerall = fvar(14) = [-20,20]
trigger1 = statetype = A
trigger1 = p2statetype != L
trigger1 = ctrl
trigger1 = random<70

;1070: Fire Air Spin
[State -1, AI: 1070: Fire Air Spin]
type = ChangeState
value = 1070
Triggerall = var(59)
Triggerall = !var(55)
triggerall = fvar(13) <= 40
triggerall = fvar(14) = [-20,20]
trigger1 = statetype = A
trigger1 = p2statetype != L
trigger1 = ctrl
trigger1 = random<90

;1180: Light Rocket Up
[State -1, AI: 1180: Light Rocket Up]
type = ChangeState
Value = 1180
Triggerall = var(59)
Triggerall = !var(55)
triggerall = fvar(13) <= 50
triggerall = fvar(14) <= 0 ; above or even
TriggerAll = StateType != A
triggerall = p2statetype != L
triggerall = power >= 1000
Trigger1 = Ctrl
trigger1 = random<90

;1190: Heavy Rocket Up
[State -1, AI: 1190: Heavy Rocket Up]
type = ChangeState
Value = 1190
Triggerall = var(59)
Triggerall = !var(55)
triggerall = fvar(13) <= 50
triggerall = fvar(14) <= 0 ; above or even
TriggerAll = StateType != A
triggerall = p2statetype != L
triggerall = power >= 2000
Trigger1 = Ctrl
trigger1 = random<90

;1100: Light Rocket Diag Up
[State -1, AI: 1100: Light Rocket Diag Up]
type = ChangeState
value = 1100
Triggerall = var(59)
Triggerall = !var(55)
triggerall = power >= 1000
triggerall = fvar(14) <= 0 ; above or even
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = ctrl
trigger1 = fvar(13) <= 20
trigger1 = fvar(14) = [-30,10]
trigger1 = random<40
trigger2 = p2statetype = A
trigger2 = -pi/3 <= fvar(16) <= -pi/6 ;diagonal
trigger2 = random<90

;1200: Heavy Rocket Diag Up
[State -1, AI: 1200: Heavy Rocket Diag Up]
type = ChangeState
value = 1200
Triggerall = var(59)
Triggerall = !var(55)
triggerall = power >= 2000
triggerall = fvar(14) <= 0 ; above or even
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = ctrl
trigger1 = fvar(13) <= 20
trigger1 = fvar(14) = [-30,10]
trigger1 = random<50
trigger2 = p2statetype = A
trigger2 = -pi/3 <= fvar(16) <= -pi/6 ;diagonal
trigger2 = random<100

;1110: Light Rocket Forward
[State -1, AI: 1110: Light Rocket Forward]
type = ChangeState
value = 1110
Triggerall = var(59)
Triggerall = !var(55)
triggerall = fvar(14) = [-20,20] ; same level
triggerall = power >= 1000
triggerall = statetype = S
triggerall = p2statetype != L
trigger1 = ctrl
trigger1 = fvar(13) <= 80
trigger1 = random<70

;1310: Air Light Rocket Forward
[State -1, AI: 1310: Air Light Rocket Forward]
type = ChangeState
value = 1310
Triggerall = var(59)
Triggerall = !var(55)
triggerall = fvar(14) = [-20,20] ; same level
triggerall = power >= 1000
triggerall = statetype = A
triggerall = p2statetype != L
trigger1 = ctrl
trigger1 = fvar(13) <= 80
trigger1 = random<100

;1315: Air Light Rocket Down
[State -1, AI: 1315: Air Light Rocket Down]
type = ChangeState
value = 1315
Triggerall = var(59)
Triggerall = !var(55)
triggerall = fvar(14) >= 0 ; below or even
triggerall = power >= 1000
triggerall = p2statetype != L
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = pi/12 <= fvar(16) <= pi/4 ;diagonal down
trigger1 = fvar(15) <= 80 ; diagonal range is <= 80
trigger1 = random<100

;1210: Heavy Rocket Forward
[State -1, AI: 1210: Heavy Rocket Forward]
type = ChangeState
value = 1210
Triggerall = var(59)
Triggerall = !var(55)
triggerall = fvar(14) = [-20,20] ; same level
triggerall = power >= 2000
triggerall = p2statetype != L
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = fvar(13) >= 40
trigger1 = random<70

;1410: Air Heavy Rocket Forward
[State -1, AI: 1410: Air Heavy Rocket Forward]
type = ChangeState
value = 1410
Triggerall = var(59)
Triggerall = !var(55)
triggerall = fvar(14) = [-20,20] ; same level
triggerall = power >= 2000
triggerall = p2statetype != L
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = fvar(13) >= 40
trigger1 = random<100

;1415: Air Heavy Rocket Down
[State -1, AI: 1415: Air Heavy Rocket Down]
type = ChangeState
value = 1415
Triggerall = var(59)
Triggerall = !var(55)
triggerall = fvar(14) >= 0 ; below or even
triggerall = power >= 2000
triggerall = p2statetype != L
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = pi/3 <= fvar(16) <= pi/6 ;diagonal down
trigger1 = random<100

;195: Taunt
[State -1, AI: 195: Taunt]
type = ChangeState
value = 195
Triggerall = var(59)
triggerall = fvar(13) >= 100
triggerall = !inguarddist
triggerall = statetype != A
triggerall = fvar(39) < var(42)
triggerall = ctrl
trigger1 = random<50
trigger2 = p2statetype = L
trigger2 = random<300

;-------------------------------------
;[State -1, Stand AutoBlock]
;type = hitoverride
;triggerall = var(59) && roundstate = 2 && statetype = S
;trigger1 = random < 900
;attr = SAC, NA, SA, HA, NP, HP, SP, AA, AT, AP, NT,ST,HT
;stateno = 120
;slot = 0
;time = ifelse((stateno=[150,153]),6,8)

;-------------------------------------
;[State -1, Crouch AutoBlock]
;type = hitoverride
;triggerall = var(59) && roundstate = 2 && statetype = C
;trigger1 = random < 900
;attr = C,NA, SA, HA, NP, HP, SP, AA, AT, AP,NT,ST,HT
;stateno = 131
;slot = 0
;time = ifelse((stateno=[150,153]),6,8)

;-------------------------------------
;[State -1, Air AutoBlock]
;type = hitoverride
;triggerall = var(59) && roundstate = 2 && (statetype = A || Pos Y < 0)
;trigger1 = random < 900
;attr = SA,NA, SA, HA, NP, HP, SP, AA, AT, AP
;stateno = 132
;slot = 0
;time = ifelse((stateno=[154,155]),6,8)

; Dash Forward
[State -1, AI: Dash In]
type = ChangeState
value = 100
triggerall = var(59)
triggerall = StateType = S
triggerall = StateNo != 100
trigger1 = ctrl
trigger1 = fvar(13) >= 100
trigger1 = Random <= 150



;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0



;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


;===========================================================================

;---------------------------------------------------------------------------
;Super: Axl Double Dash
[State -1, Super: Axl Double Dash]
type = ChangeState
value = 2200
Triggerall = !var(59)
triggerall = command = "QCF_z"
triggerall = command != "holddown"
triggerall = var(33) != 1
triggerall = NumHelper(9001) != 1
triggerall = fvar(39) >= var(20)
triggerall = NumHelper(2000) = 0
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Super: Gedol
[State -1, Super: Gedol]
type = ChangeState
value = 2000
Triggerall = !var(59)
triggerall = command = "QCB_z"
triggerall = command != "holddown"
triggerall = NumHelper(9001) != 1
triggerall = fvar(39) >= var(30)
triggerall = var(33) != 1
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Super: Bounce
[State -1, Super: Bounce]
type = ChangeState
value = 2300
Triggerall = !var(59)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = NumHelper(9001) != 1
triggerall = fvar(39) >= var(10)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = ctrl

;---------------------------------------------------------------------------

;Finale
[State -1, Finale]
type = ChangeState
Value = 7000
Triggerall = !var(59)
TriggerAll = Command = "22z"
triggerall = NumHelper(9001) != 1
TriggerAll = StateType != A
triggerall = fvar(39) >= var(42)
Trigger1 = Ctrl

;---------------------------------------------------------------------------
;Assist: Axl Spin Rocket
[State -1, Assist:Axl Spin Rocket]
type = ChangeState
value = 2110
Triggerall = !var(59)
triggerall = command = "QCF_c"
triggerall = command != "holddown"
triggerall = NumHelper(2000) = 0
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Assist: Axl Spin Rocket Back
[State -1, Assist:Axl Spin Rocket Back]
type = ChangeState
value = 2120
Triggerall = !var(59)
triggerall = command = "QCB_c"
triggerall = command != "holddown"
triggerall = NumHelper(2000) = 0
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Spin Grab
[State -1, Air Grab]
type = ChangeState
value = 830
Triggerall = !var(59)
triggerall = command = "QCF_b"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Spin Grab
[State -1, Spin Grab]
type = ChangeState
value = 1130
Triggerall = !var(59)
triggerall = command = "QCF_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Assist: Axl Rocket
[State -1, Assist:Axl Rocket]
type = ChangeState
value = 2100
Triggerall = !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = NumHelper(2000) = 0
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Sword Slash
[State -1, Sword Slash]
type = ChangeState
value = 1000
Triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "ab"
triggerall = command != "QCF_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 1000) && time > 10

;---------------------------------------------------------------------------
;Sword Low Slash
[State -1, Sword Low Slash]
type = ChangeState
value = 1005
Triggerall = !var(59)
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command != "ab"
triggerall = command != "QCF_a"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Fire Sword Slash
[State -1, Fire Sword Slash]
type = ChangeState
value = 1010
Triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "ab"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 1000) && time > 10

;---------------------------------------------------------------------------
;Fire Sword Slash
[State -1, Fire Sword Slash]
type = ChangeState
value = 1010
Triggerall = !var(59)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 1000) && time > 10

;---------------------------------------------------------------------------
;Sword Slash
[State -1, Sword Air Slash]
type = ChangeState
value = 1050
Triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "ab"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Heavy Sword Air Slash
[State -1, Heavy Sword air Slash]
type = ChangeState
value = 1055
Triggerall = !var(59)
triggerall = command = "a" || command = "b"
triggerall = command = "down_a" || command = "down_b"
triggerall = command = "holddown"
triggerall = command != "ab"
triggerall = command != "QCF_b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Fire Sword Slash
[State -1, Fire Air Sword Slash]
type = ChangeState
value = 1060
Triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "ab"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Fire Air Spin
[State -1, Fire Air Spin]
type = ChangeState
value = 1070
Triggerall = !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Rocket Up
[State -1, Rocket Up]
type = ChangeState
Value = 1180
TriggerAll = Var(59) = 0
TriggerAll = Command = "22x"
TriggerAll = StateType != A
triggerall = power >= 1000
Trigger1 = Ctrl

;---------------------------------------------------------------------------
;Heavy Rocket Up
[State -1, Heavy Rocket Up]
type = ChangeState
Value = 1190
TriggerAll = Var(59) = 0
TriggerAll = Command = "22y"
TriggerAll = StateType != A
triggerall = power >= 2000
Trigger1 = Ctrl

;---------------------------------------------------------------------------
;Rocket Diag Up
[State -1, Rocket Diag Up]
type = ChangeState
value = 1100
Triggerall = !var(59)
triggerall = command = "QCF_x"
triggerall = command != "holddown"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Heavy Rocket Diag Up
[State -1, Heavy Rocket Diag Up]
type = ChangeState
value = 1200
Triggerall = !var(59)
triggerall = command = "QCF_y"
triggerall = command != "holddown"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Rocket Forward
[State -1, Rocket Forward]
type = ChangeState
value = 1110
Triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Air Rocket Forward
[State -1, Air Rocket Forward]
type = ChangeState
value = 1310
Triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "QCF_x"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Air Rocket Down
[State -1, Air Rocket Down]
type = ChangeState
value = 1315
Triggerall = !var(59)
triggerall = command = "QCF_x"
triggerall = command != "holddown"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Heavy Rocket Forward
[State -1, Heavy Rocket Forward]
type = ChangeState
value = 1210
Triggerall = !var(59)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Air Heavy Rocket Forward
[State -1, Air Heavy Rocket Forward]
type = ChangeState
value = 1410
Triggerall = !var(59)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "QCF_y"
triggerall = power >= 2000
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Air Heavy Rocket Down
[State -1, Air Heavy Rocket Down]
type = ChangeState
value = 1415
Triggerall = !var(59)
triggerall = command = "y"
triggerall = command = "QCF_y"
triggerall = command != "holddown"
triggerall = power >= 2000
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
Triggerall = !var(59)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;bomb
[State -1, Combo Bomb]
type = ChangeState
value = 9000
Triggerall = !var(59)
triggerall = command = "ab"
trigger1 = ctrl
triggerall = NumHelper(9000) = 0
trigger2 = stateno = [150,155]
trigger3 = stateno = [5000,5210]

;---------------------------------------------------------------------------
;Roll
[State -1, Roll]
type = ChangeState
value = 1230
Triggerall = !var(59)
triggerall = command = "a"
triggerall = command = "QCF_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


