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
name = "time"
command = ~D,DF,F,D,DB,B,x
time = 30

[Command]
name = "time"
command = ~D,DF,F,D,DB,B,y
time = 30

[Command]
name = "time"
command = ~D,DF,F,D,DB,B,z
time = 30

[Command]
name = "time"
command = ~D,DF,F,D,DB,B,~x
time = 30

[Command]
name = "time"
command = ~D,DF,F,D,DB,B,~y
time = 30

[Command]
name = "time"
command = ~D,DF,F,D,DB,B,~z
time = 30

[Command]
name = "coffe"
command = ~D,D,D,a
time = 30

[Command]
name = "coffe"
command = ~D,D,D,~a
time = 30

[Command]
name = "FIRE"
command = ~D,DB,B,D,DB,B,x
time = 30

[Command]
name = "FIRE"
command = ~D,DB,B,D,DB,B,y
time = 30

[Command]
name = "FIRE"
command = ~D,DB,B,D,DB,B,z
time = 30

[Command]
name = "FIRE"
command = ~D,DB,B,D,DB,B,~x
time = 30

[Command]
name = "FIRE"
command = ~D,DB,B,D,DB,B,~y
time = 30

[Command]
name = "FIRE"
command = ~D,DB,B,D,DB,B,~z
time = 30

[Command]
name = "control"
command = ~D,DF,F,D,DF,F,x
time = 30

[Command]
name = "control"
command = ~D,DF,F,D,DF,F,y
time = 30

[Command]
name = "control"
command = ~D,DF,F,D,DF,F,z
time = 30

[Command]
name = "control"
command = ~D,DF,F,D,DF,F,~x
time = 30

[Command]
name = "control"
command = ~D,DF,F,D,DF,F,~y
time = 30

[Command]
name = "control"
command = ~D,DF,F,D,DF,F,~z
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "rampage"
command = ~F,DF,D,DB,B,x
time = 15

[Command]
name = "rampage"
command = ~F,DF,D,DB,B,y
time = 15

[Command]
name = "rampage"
command = ~F,DF,D,DB,B,z
time = 15

[Command]
name = "rampage"
command = ~F,DF,D,DB,B,~x
time = 15

[Command]
name = "rampage"
command = ~F,DF,D,DB,B,~y
time = 15

[Command]
name = "rampage"
command = ~F,DF,D,DB,B,~z
time = 15

[Command]
name = "taunt"
command = ~B,D,DB,x
time = 15

[Command]
name = "taunt"
command = ~B,D,DB,~x
time = 15

[Command]
name = "fear"
command = ~B,D,DB,y
time = 15

[Command]
name = "fear"
command = ~B,D,DB,~y
time = 15

[Command]
name = "rage"
command = ~B,D,DB,z
time = 15

[Command]
name = "rage"
command = ~B,D,DB,~z
time = 15

[Command]
name = "Odie"
command = ~D,DB,B,x
time = 15

[Command]
name = "Odie"
command = ~D,DB,B,y
time = 15

[Command]
name = "Odie"
command = ~D,DB,B,z
time = 15

[Command]
name = "Odie"
command = ~D,DB,B,~x
time = 15

[Command]
name = "Odie"
command = ~D,DB,B,~y
time = 15

[Command]
name = "Odie"
command = ~D,DB,B,~z
time = 15

[Command]
name = "sofa"
command = ~D,DF,F,x
time = 15

[Command]
name = "sofa"
command = ~D,DF,F,y
time = 15

[Command]
name = "sofa"
command = ~D,DF,F,z
time = 15

[Command]
name = "sofa"
command = ~D,DF,F,~x
time = 15

[Command]
name = "sofa"
command = ~D,DF,F,~y
time = 15

[Command]
name = "sofa"
command = ~D,DF,F,~z
time = 15

[Command]
name = "item"
command = ~D,D,x
time = 15

[Command]
name = "item"
command = ~D,D,y
time = 15

[Command]
name = "item"
command = ~D,D,z
time = 15

[Command]
name = "item"
command = ~D,D,~x
time = 15

[Command]
name = "item"
command = ~D,D,~y
time = 15

[Command]
name = "item"
command = ~D,D,~z
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
name = "holda";Required (do not remove)
command = /a
time = 1

[Command]
name = "holdb";Required (do not remove)
command = /b
time = 1

[Command]
name = "holdc";Required (do not remove)
command = /c
time = 1

[Command]
name = "holdx";Required (do not remove)
command = /x
time = 1

[Command]
name = "holdy";Required (do not remove)
command = /y
time = 1

[Command]
name = "holdz";Required (do not remove)
command = /z
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
;AI HERE
;---------------------------------------------------------------------------
[State -1]
Type=Changestate
triggerall = roundstate = 2
Triggerall=Inguarddist ; Guard when in guard distance
triggerall = Random < (900 * (AILevel ** 2 / 64.0)) || AILevel >= 8
triggerall = stateno!=[120,160]
triggerall = !var(11)
Trigger1=ctrl ; and we have control
value=120
;---------------------------------------------------------------------------
[State -1, AI Jump]
type = ChangeState
value = 40
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 40
trigger1 = enemynear,stateno = 800
trigger1 = AILevel >= 4
trigger1 = Random < (500 * (AILevel ** 2 / 64.0))
trigger2 = p2bodydist x <= 30
trigger2 = Random < (12 * (AILevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, AI Stop time]
type = ChangeState
value = 3100
triggerall = AILevel >= 6
triggerall = roundstate = 2
triggerall = power >= 3000
triggerall = !var(11)
triggerall = !var(20)
triggerall = !var(21)
triggerall = !var(22)
triggerall = !var(23)
triggerall = !var(24)
triggerall = !var(25)
triggerall = statetype != A
triggerall = ctrl
trigger1 = Random < (900 * (AILevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, AI Drink coffe]
type = ChangeState
value = 3050
triggerall = AILevel
triggerall = !inguarddist
triggerall = roundstate = 2
triggerall = power >= 2000
triggerall = statetype != A
triggerall = ctrl
triggerall = var(10) != 3
triggerall = !numhelper(1010)
trigger1 = enemynear,movetype != A
trigger1 = enemynear,statetype != A
trigger1 = p2bodydist x >= 200
trigger1 = Random < (36 * (AILevel ** 2 / 64.0))
trigger2 = enemynear,anim = 5300
trigger2 = Random < (500 * (AILevel ** 2 / 64.0))
trigger3 = p2bodydist x >= 300
trigger3 = numpartner && teammode = Simul
trigger3 = Random < (500 * (AILevel ** 2 / 64.0))
trigger4 = enemynear,stateno = [1220,1222]
trigger4 = Random < (900 * (AILevel ** 2 / 64.0))
trigger5 = enemynear,stateno = 1232
trigger5 = enemynear,anim = 20
trigger5 = enemynear,movetype = I
trigger5 = enemynear,statetype = S
trigger5 = Random < (900 * (AILevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, FIRE!!!! AI]
type = ChangeState
value = 3200
triggerall = roundstate = 2
triggerall = AILevel
triggerall = statetype != A
triggerall = enemynear,stateno != [1210,1212]
triggerall = enemynear,stateno != [1220,1222]
triggerall = p2stateno != 1232
triggerall = p2bodydist x <= 45
triggerall = p2bodydist y >= -60
triggerall = power >= 1000
trigger1 = ctrl
trigger1 = Random < (10 * (AILevel ** 2 / 64.0))
trigger2 = enemynear,movetype = A
trigger2 = Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = ctrl
trigger2 = AILevel >= 6
trigger3 = stateno = 210 || stateno = 220 || stateno = 410 || stateno = 420
trigger3 = var(0) || AILevel = [1,4]
trigger3 = Random < (200 * (AILevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Mind control AI]
type = Changestate
value = 3000
triggerall = roundstate = 2
triggerall = AILevel
triggerall = statetype != A
triggerall = ctrl
triggerall = enemynear,stateno != [1210,1212]
triggerall = enemynear,stateno != [1220,1222]
triggerall = p2stateno != 1232
triggerall = power >= 1000
triggerall = !var(12)
triggerall = enemynear,movetype != H
triggerall = enemynear,statetype != A
triggerall = enemynear,stateno != 40
triggerall = p2bodydist x >= 100
triggerall = enemynear,statetype != L
trigger1 = Random < (10 * (AILevel ** 2 / 64.0))
trigger2 = enemynear,movetype = A
trigger2 = Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = AILevel >= 6
;---------------------------------------------------------------------------
[State -1, AI rampage]
type = ChangeState
value = 1250
triggerall = !inguarddist
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != A
triggerall = enemynear,prevstateno != 5120
triggerall = enemynear,stateno != 1350
trigger1 = ctrl
trigger1 = p2bodydist x <= 20 && p2statetype != A
trigger1 = Random < (250 * (AILevel ** 2 / 64.0))
trigger1 = !var(0)
trigger2 = ctrl
trigger2 = enemynear, anim >= 120 && enemynear, anim <= 152 && p2bodydist x <= 20
trigger2 = p2statetype != A
trigger2 = Random < (750 * (AILevel ** 2 / 64.0)) && AILevel >= 6
trigger3 = stateno = 210 || stateno = 211 || stateno = 220 || stateno = 410
trigger3 = movecontact
trigger3 = Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = !var(0)
trigger4 = stateno = 420
trigger4 = movecontact
trigger4 = Random < (57 * (AILevel ** 2 / 64.0))
trigger5 = stateno = 200 || stateno = 210 || stateno = 211 || stateno = 220 || stateno = 400 || stateno = 410 || stateno = 420
trigger5 = moveguarded
trigger5 = Random < (500 * (AILevel ** 2 / 64.0))
trigger5 = AILevel >= 6
;---------------------------------------------------------------------------
[State -1, Rageanator AI]
type = Changestate
value = 1230
triggerall = roundstate = 2
triggerall = AILevel
triggerall = statetype != A
triggerall = ctrl
triggerall = enemynear,stateno != [1210,1212]
triggerall = enemynear,stateno != [1220,1222]
triggerall = p2stateno != 1232
triggerall = enemynear,movetype != H
triggerall = enemynear,statetype != A
triggerall = p2bodydist x >= 100
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = enemynear,movetype = A
trigger2 = Random < (900 * (AILevel ** 2 / 64.0))
trigger2 = AILevel >= 8
;---------------------------------------------------------------------------
[State -1, Make them run! AI]
type = Changestate
value = 1215
triggerall = roundstate = 2
triggerall = AILevel
triggerall = statetype != A
triggerall = ctrl
triggerall = enemynear,stateno != [1210,1212]
triggerall = enemynear,stateno != [1220,1222]
triggerall = p2stateno != 1232
triggerall = enemynear,movetype != H
triggerall = enemynear,statetype != A
triggerall = !var(11)
triggerall = p2bodydist x <= 45
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = enemynear,movetype = A
trigger2 = Random < (900 * (AILevel ** 2 / 64.0))
trigger2 = AILevel >= 6
;---------------------------------------------------------------------------
[State -1, Make them sucide lol AI]
type = Changestate
value = 1200
triggerall = roundstate = 2
triggerall = AILevel
triggerall = statetype != A
triggerall = ctrl
triggerall = enemynear,stateno != [1210,1212]
triggerall = enemynear,stateno != [1220,1222]
triggerall = p2stateno != 1232
triggerall = enemynear,movetype != H
triggerall = enemynear,statetype != A
triggerall = p2bodydist x >= 100
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = enemynear,movetype = A
trigger2 = enemynear,time <= 6
trigger2 = Random < (900 * (AILevel ** 2 / 64.0))
trigger2 = AILevel >= 6
;---------------------------------------------------------------------------
;Summon Odie
[State -1, Summon Odie AI]
type = Changestate
value = 1150
triggerall = roundstate = 2
triggerall = AILevel
triggerall = statetype != A
triggerall = !inguarddist
triggerall = ctrl
triggerall = !numhelper(1160)
triggerall = enemynear,movetype != A
triggerall = p2bodydist x >= 100
trigger1 = Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = numhelper(1110)
trigger2 = Random < (750 * (AILevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, AI Air Sofa]
type = ChangeState
value = 1120
triggerall = AILevel
triggerall = !inguarddist
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = time >= 18
triggerall = !var(11)
trigger1 = Random < (200 * (AILevel ** 2 / 64.0))
trigger1 = !numhelper(1110)
trigger1 = p2bodydist x > 0
trigger2 = Random < (180 * (AILevel ** 2 / 64.0))
trigger2 = numhelper(1110)
trigger2 = p2bodydist x <= 220
;---------------------------------------------------------------------------
[State -1, AI Sofa]
type = ChangeState
value = 1100
triggerall = AILevel
triggerall = !inguarddist
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = p2bodydist x >= 50
triggerall = !var(11)
trigger1 = Random < (200 * (AILevel ** 2 / 64.0))
trigger1 = !numhelper(1110)
trigger1 = enemynear,movetype != A
trigger2 = Random < (180 * (AILevel ** 2 / 64.0))
trigger2 = numhelper(1110)
trigger2 = p2bodydist x <= 180
trigger2 = p2statetype != L
trigger3 = stateno = 221
trigger3 = movehit
trigger3 = frontedgedist <= 50
trigger3 = Random < (750 * (AILevel ** 2 / 64.0))
trigger3 = AILevel >= 6
;---------------------------------------------------------------------------
[State -1, AI Sleep]
type = ChangeState
value = 1050
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = life != lifemax && power != powermax
triggerall = enemynear,stateno != [1210,1212]
triggerall = ctrl
trigger1 = !inguarddist
trigger1 = p2movetype != A
trigger1 = p2statetype != A
trigger1 = p2bodydist x >= 200
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = enemynear,stateno = [1220,1222]
trigger2 = enemynear,movetype = I
trigger2 = Random < (500 * (AILevel ** 2 / 64.0))
trigger3 = var(11)
trigger3 = Random < (500 * (AILevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, AI spawn item]
type = ChangeState
value = 1000
triggerall = AILevel
triggerall = !inguarddist
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2movetype != A
triggerall = !numhelper(1010)
triggerall = power < 2000
triggerall = ctrl
trigger1 = p2bodydist x >= 150
trigger1 = Random < (500 * (AILevel ** 2 / 64.0))
trigger2 = enemynear,stateno = [1220,1222]
trigger2 = enemynear,movetype = I
trigger2 = Random < (990 * (AILevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, AI Digest Food]
type = ChangeState
value = 910
triggerall = AILevel >= 3
triggerall = roundstate = 2
triggerall = var(15) >= 1
triggerall = !var(11)
triggerall = !var(20)
triggerall = !var(21)
triggerall = !var(22)
triggerall = !var(23)
triggerall = !var(24)
triggerall = !var(25)
triggerall = statetype != A
triggerall = ctrl
trigger1 = AILevel = [3,5]
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = AILevel >= 6
trigger2 = Random <= 0+var(15)*50
;---------------------------------------------------------------------------
;AI Throw
[State -1, AI Throw]
type = ChangeState
value = 800
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = p2statetype != L
triggerall = p2movetype != A
triggerall = p2movetype != H
triggerall = enemynear, stateno != 1320
trigger1 = p2bodydist x <= 25 && p2statetype != A
trigger1 = Random < (64 * (AILevel ** 2 / 64.0))
trigger2 = enemynear, anim >= 120 && enemynear, anim <= 152 && p2bodydist x <= 25
trigger2 = p2statetype != A
trigger2 = AILevel >= 6
;---------------------------------------------------------------------------
[State -1, AI Stand Heavy Command]
type = ChangeState
value = 221
triggerall = !inguarddist || var(11)
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist x <= 30
triggerall = p2bodydist y >= -60
triggerall = p2statetype != L
trigger1 = Random < (48 * (AILevel ** 2 / 64.0))
trigger1 = ctrl
trigger2 = stateno = 210 || stateno = 211 || stateno = 410 || stateno = 220
trigger2 = movecontact
trigger2 = Random < (625 * (AILevel ** 2 / 64.0))
trigger3 = stateno = 420
trigger3 = movecontact
trigger3 = Random < (62 * (AILevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, AI Stand Heavy Attack]
type = ChangeState
value = 220
triggerall = !inguarddist || var(11)
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist x <= 29
triggerall = p2bodydist y >= -40
triggerall = p2statetype != L
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))
trigger1 = ctrl
trigger2 = stateno = 210 || stateno = 211 || stateno = 410
trigger2 = movecontact
trigger2 = Random < (750 * (AILevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, AI Stand Medium Command]
type = ChangeState
value = 211
triggerall = !inguarddist || var(11)
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist x <= 43
triggerall = p2bodydist y >= -40
triggerall = p2statetype != L
triggerall = ctrl
trigger1 = Random < (42 * (AILevel ** 2 / 64.0))
trigger2 = enemynear,statetype = C
trigger2 = AILevel >= 6
trigger2 = Random < (500 * (AILevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, AI Stand Medium Attack]
type = ChangeState
value = 210
triggerall = !inguarddist || var(11)
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist x <= 29
triggerall = p2bodydist y >= -40
triggerall = p2statetype != L
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact
trigger2 = Random < (750 * (AILevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, AI Stand Light Attack]
type = ChangeState
value = 200
triggerall = !inguarddist || var(11)
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist x <= 20
triggerall = p2bodydist y >= -40
triggerall = p2statetype != L
triggerall = Random < (500 * (AILevel ** 2 / 64.0))
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, AI Crouching Heavy Attack]
type = ChangeState
value = 420
triggerall = !inguarddist || var(11)
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist x <= 30
triggerall = p2bodydist y >= -20
triggerall = p2statetype != L
trigger1 = Random < (72 * (AILevel ** 2 / 64.0))
trigger1 = ctrl
trigger2 = stateno = 210 || stateno = 211 || stateno = 410
trigger2 = movecontact
trigger2 = Random < (750 * (AILevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, AI Crouching Medium Attack]
type = ChangeState
value = 410
triggerall = !inguarddist || var(11)
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist x <= 33
triggerall = p2bodydist y >= -40
trigger1 = ctrl
trigger1 = Random < (91 * (AILevel ** 2 / 64.0))
trigger2 = enemynear,statetype = S
trigger2 = ctrl
trigger2 = Random < (311 * (AILevel ** 2 / 64.0))
trigger2 = AIlevel >= 6
trigger3 = stateno = 200 || stateno = 400
trigger3 = movecontact
trigger3 = Random < (750 * (AILevel ** 2 / 64.0))
trigger4 = ctrl
trigger4 = p2statetype = L
trigger4 = Random < (250 * (AILevel ** 2 / 64.0))
trigger4 = AILevel >= 4
;---------------------------------------------------------------------------
[State -1, AI Crouching Light Attack]
type = ChangeState
value = 400
triggerall = !inguarddist || var(11)
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist x <= 31
triggerall = p2bodydist y >= -40
triggerall = p2statetype != L
triggerall = ctrl
trigger1 = Random < (200 * (AILevel ** 2 / 64.0))
trigger2 = enemynear,statetype = S
trigger2 = Random < (750 * (AILevel ** 2 / 64.0))
trigger2 = AIlevel >= 6
;---------------------------------------------------------------------------
[State -1, AI Jump Strong Attack]
type = ChangeState
value = 620
triggerall = AILevel
triggerall = roundstate = 2
triggerall = p2bodydist x = [0,20]
triggerall = p2bodydist y >= -40
triggerall = p2statetype != L
triggerall = statetype = A
trigger1 = !inguarddist || var(11)
trigger1 = ctrl
trigger1 = time >= 18 || p2statetype = A
trigger1 = Random < (750 * (AILevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, AI Jump Medium Attack]
type = ChangeState
value = 610
triggerall = AILevel
triggerall = roundstate = 2
triggerall = p2bodydist x = [0,40]
triggerall = p2bodydist y >= -40
triggerall = p2statetype != L
triggerall = statetype = A
trigger1 = !inguarddist || var(11)
trigger1 = ctrl
trigger1 = time >= 18 || p2statetype = A
trigger1 = Random < (500 * (AILevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, AI Jump Light Attack]
type = ChangeState
value = 600
triggerall = AILevel
triggerall = roundstate = 2
triggerall = p2bodydist x = [0,40]
triggerall = p2bodydist y >= -31
triggerall = p2statetype != L
triggerall = statetype = A
trigger1 = ctrl
trigger1 = Random < (250 * (AILevel ** 2 / 64.0))
trigger1 = time >= 18 || p2statetype = A
;===========================================================================
;HUMAN BELOW HERE
;---------------------------------------------------------------------------
[State -1, Stop time]
type = ChangeState
value = 3100
triggerall = !AILevel
triggerall = command = "time"
triggerall = statetype != A
triggerall = !var(11)
triggerall = !var(20)
triggerall = !var(21)
triggerall = !var(22)
triggerall = !var(23)
triggerall = !var(24)
triggerall = !var(25)
triggerall = power >= 3000
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Coffe]
type = ChangeState
value = 3050
triggerall = !AILevel
triggerall = command = "coffe"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, FIRE!!!!]
type = ChangeState
value = 3200
triggerall = !AILevel
triggerall = command = "FIRE"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = [200,420]
;---------------------------------------------------------------------------
[State -1, Mind control]
type = ChangeState
value = 3001
triggerall = !AILevel
triggerall = command = "control" || command = "start"
triggerall = statetype != A
triggerall = var(12)
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Mind control]
type = ChangeState
value = 3000
triggerall = !AILevel
triggerall = command = "control"
triggerall = statetype != A
triggerall = !var(12)
triggerall = power >= 1000
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Rampage]
type = ChangeState
value = 1250
triggerall = !AILevel
triggerall = command = "rampage"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,420]
trigger2 = movecontact
;---------------------------------------------------------------------------
[State -1, Rageanator]
type = ChangeState
value = 1230
triggerall = !AILevel
triggerall = command = "rage"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Make them run!]
type = ChangeState
value = 1215
triggerall = !AILevel
triggerall = command = "fear"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,420]
trigger2 = movecontact
;---------------------------------------------------------------------------
[State -1, Break the fouth wall]
type = ChangeState
value = 1200
triggerall = !AILevel
triggerall = command = "taunt"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Odie]
type = ChangeState
value = 1150
triggerall = !AILevel
triggerall = command = "Odie"
triggerall = !numhelper(1160)
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Air Sofa]
type = ChangeState
value = 1120
triggerall = !AILevel
triggerall = command = "sofa"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,620]
trigger2 = movecontact
;---------------------------------------------------------------------------
[State -1, Sofa]
type = ChangeState
value = 1100
triggerall = !AILevel
triggerall = command = "sofa"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,420]
trigger2 = movecontact
;---------------------------------------------------------------------------
[State -1, spawn item]
type = ChangeState
value = 1000
triggerall = !AILevel
triggerall = command = "item"
triggerall = statetype != A
triggerall = !numhelper(1010)
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Lazy cat]
type = ChangeState
value = 1050
triggerall = !AILevel
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Healthy Diet
[State -1, Healthy Diet]
type = ChangeState
value = 903
triggerall = !AILevel
triggerall = command = "a"
triggerall = command = "holdup"
triggerall = var(15) >= 1
triggerall = !var(11)
triggerall = !var(20)
triggerall = !var(21)
triggerall = !var(22)
triggerall = !var(23)
triggerall = !var(24)
triggerall = !var(25)
trigger1 = statetype != A
trigger1 = ctrl || stateno = 40
;---------------------------------------------------------------------------
;Rapid Enengy
[State -1, Rapid Enengy]
type = ChangeState
value = 902
triggerall = !AILevel
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(15) >= 1
triggerall = !var(11)
triggerall = !var(20)
triggerall = !var(21)
triggerall = !var(22)
triggerall = !var(23)
triggerall = !var(24)
triggerall = !var(25)
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Ture Power
[State -1, True Power]
type = ChangeState
value = 901
triggerall = !AILevel
triggerall = command = "a"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = var(15) >= 1
triggerall = !var(11)
triggerall = !var(20)
triggerall = !var(21)
triggerall = !var(22)
triggerall = !var(23)
triggerall = !var(24)
triggerall = !var(25)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Unwakable
[State -1, UnWakable]
type = ChangeState
value = 900
triggerall = !AILevel
triggerall = command = "a"
triggerall = var(15) >= 1
triggerall = !var(11)
triggerall = !var(20)
triggerall = !var(21)
triggerall = !var(22)
triggerall = !var(23)
triggerall = !var(24)
triggerall = !var(25)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = !AILevel
triggerall = command = "x" && command = "y" || command = "x" && command = "z" || command = "y" && command = "z" || command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !AILevel
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
;Stand Light Punch
[State -1, Stand Light Attack]
type = ChangeState
value = 200
triggerall = !AILevel
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Medium Command]
type = ChangeState
value = 211
triggerall = !AILevel
triggerall = command = "y" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Medium Attack]
type = ChangeState
value = 210
triggerall = !AILevel
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Command]
type = ChangeState
value = 221
triggerall = !AILevel
triggerall = command = "z" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 211 || stateno = 220 || stateno = 400 || stateno = 410 || stateno = 420
trigger2 = movecontact
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Attack]
type = ChangeState
value = 220
triggerall = !AILevel
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 211 || stateno = 400 || stateno = 410
trigger2 = movecontact
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = null;ChangeState
value = 195
triggerall = !AILevel
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Attack]
type = ChangeState
value = 400
triggerall = !AILevel
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Medium Attack]
type = ChangeState
value = 410
triggerall = !AILevel
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Crouching Strong Attack]
type = ChangeState
value = 420
triggerall = !AILevel
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 211 || stateno = 400 || stateno = 410
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Attack]
type = ChangeState
value = 600
triggerall = !AILevel
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Medium Attack]
type = ChangeState
value = 610
triggerall = !AILevel
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Attack]
type = ChangeState
value = 620
triggerall = !AILevel
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
