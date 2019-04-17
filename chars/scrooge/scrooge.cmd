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
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

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

[Command]
name = "hold_a";Required (do not remove)
command = /$a
time = 1

[Command]
name = "hold_x";Required (do not remove)
command = /$x
time = 1

[Command]
name = "hold_z";Required (do not remove)
command = /$z
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

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = changeState
value = 200
triggerall = var(58) = 0
triggerall = life > 0
triggerall = roundstate = 2
triggerall = command = "holdfwd"
triggerall = stateno = 20
trigger1 = p2bodydist x <= 4
trigger1 = p2bodydist x >= -4
trigger1 = p2bodydist y >= -8

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(58) = 0
triggerall = roundstate = 2
triggerall = life > 0
triggerall = command = "x"
triggerall = stateno != 3050
trigger1 = statetype = A
trigger1 = stateno != 202

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = null;Turn
trigger1 = command = "z"

[State -1, Jump Strong Kick]
type = AssertSpecial
trigger1 = var(58) != 0
flag = nowalk

[State -1, Jump Strong Kick]
type = AssertSpecial
trigger1 = roundstate != 4
flag = noautoturn

[State -1, Jump Strong Kick]
type = Turn
triggerall = var(58) = 0
triggerall = life > 0
triggerall = roundstate = 2
triggerall = command != "holdfwd"
triggerall = command = "holdback"
trigger1 = ctrl = 1
trigger2 = stateno = 20
trigger3 = stateno = 11
trigger4 = stateno = 600
trigger5 = stateno = 601

[State -1, Jump Strong Kick]
type = changestate
triggerall = var(58) = 0
triggerall = life > 0
triggerall = roundstate = 2
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 20
value = 41

[State 600, 3]
type = null;changestate
triggerall = pos y >= 0
triggerall = command = "hold_x"
trigger1 = prevstateno = 600
trigger2 = prevstateno = 601
value = 601

[State -1, Jump Strong Kick]
type = varset
trigger1 = 1
var(22) = ceil(pos x - var(3))

[State -1, Jump Strong Kick]
type = varset
trigger1 = 1
var(23) = ceil(pos y - var(4))

[State -3, Display Guard Points]
type = displaytoclipboard
trigger1 = 1
text = "p2bodydist x = %f p2dist x = %f var(40)= %d numhelper(605) = %d var(58)= %d"
params = p2bodydist x, p2dist x, var(40), numhelper(605), var(58)

[State -1, Jump Strong Kick]
type = changestate
triggerall = var(58) = 0
triggerall = life > 0
triggerall = stateno != 4500
triggerall = stateno != 3050
triggerall = command = "holdup"
trigger2 = time > 2
trigger2 = stateno = 3051 || stateno = 3052
trigger1 = stateno != 3051 && stateno != 3052
triggerall = (pos y - var(4)) < 20
triggerall = (pos y - var(4)) > -25
triggerall = (pos x - var(3)) > -20
triggerall = (pos x - var(3)) < 15
triggerall = helper(4000), facing = -1
triggerall = stateno != 3100
value = 3050

[State -1, Jump Strong Kick]
type = changestate
triggerall = var(58) = 0
triggerall = life > 0
triggerall = stateno != 4500
triggerall = stateno != 3050
triggerall = command = "holdup"
trigger2 = time > 2
trigger2 = stateno = 3051 || stateno = 3052
trigger1 = stateno != 3051 && stateno != 3052
triggerall = (pos y - var(4)) < 20
triggerall = (pos y - var(4)) > -25
triggerall = (pos x - var(3)) > -15
triggerall = (pos x - var(3)) < 20
triggerall = helper(4000), facing != -1
triggerall = stateno != 3100
value = 3050


[State -1, Jump Strong Kick]
type = varset
trigger1 = 1
var(8) = ceil(var(7)-var(3))

[State -1, Jump Strong Kick]
type = varset
trigger1 = stateno != 3050
var(9) = ceil(var(7)-var(3))

[State -1, Jump Strong Kick]
type = varset
trigger1 = stateno != 3050 && stateno != 3100
var(7) = ceil(pos x)

[State 3051, 1]
type = varset
trigger1 = facing = 1
var(11) = 1

[State 3051, 1]
type = varset
trigger1 = facing = -1
var(11) = 2

[State 3051, 1]
type = varset
trigger1 = 1
var(12) = ceil(var(10)-var(11))

[State -1, Jump Strong Kick]
type = helper
triggerall = roundno = 1
trigger1 = numhelper(4000) = 0
trigger1 = stateno = 5900
id = 4000
stateno = 4190
postype = p1
pos = -110,-57
;helpertype = player
name = "Heli"
ownpal = 1

[State -1, Jump Strong Kick]
type = helper
trigger1 = numhelper(192) = 0
trigger1 = stateno = 5900
trigger1 = roundno = 1
id = 192
stateno = 192
postype = p1
pos = -110,-57
;helpertype = player
name = "Intro"

[State -1, Jump Strong Kick]
type = helper
triggerall = numhelper(4000) = 0
trigger1 = stateno != 5900
trigger2 = roundno != 1
id = 4000
stateno = 4000
postype = p1
pos = 0,-57
;helpertype = player
name = "Heli"
ownpal = 1

[State -1, Jump Strong Kick]
type = helper
triggerall = numhelper(4000) != 0
triggerall = numhelper(3070) = 0
trigger1 = helper(4000), stateno != 4190
id = 3070
stateno = 3070
postype = p1
pos = 0,-57
;helpertype = player
name = "Heli"
ownpal = 1

[State -1, Jump Strong Kick]
type = helper
triggerall = var(58) = 0
triggerall = life > 0
trigger1 = helper(4000), stateno = 4000
trigger1 = roundstate = 2
trigger1 = numhelper(2000) = 0
trigger1 = numhelper(2005) = 0
trigger1 = command = "y"
trigger1 = power >= 1000
id = 2000
stateno = 2000
postype = p1
pos = -50000,-50000
;helpertype = player
name = "Icecream"
ownpal = 1

[State -1, Jump Strong Kick]
type = helper
triggerall = var(58) = 0
triggerall = life > 0
trigger1 = helper(4000), stateno = 4000
trigger1 = roundstate = 2
trigger1 = numhelper(2000) = 0
trigger1 = numhelper(2005) = 0
trigger1 = command = "b"
trigger1 = power >= 3000
id = 2005
stateno = 2005
postype = p1
pos = -50000,-50000
;helpertype = player
name = "Invince"
ownpal = 1


[State 192, 4]
type = PlaySnd
trigger1 = numhelper(2001) = 1
trigger2 = numhelper(2006) = 1
value = 2000, 0
channel = 5

[State 192, 4]
type = PlaySnd
trigger1 = numhelper(2006) = 1
value = 2050, 0
channel = 9
loop = 1

[State 192, 4]
type = varset
trigger1 = command = "z"
trigger1 = var(58) = 0
v = 58
value = 1

[State 192, 4]
type = varset
trigger1 = command = "c"
trigger1 = var(58) = 1
v = 58
value = 0