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

;-| Special Motions |------------------------------------------------------
[Command]
name = "PunchPunchPunch"
command = ~D, DF, F, x

[Command]
name = "MicStretch"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[command]
name = "super jump"
command = D,$U
time = 70

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

[State -1, AI TRIGGER]
type = varset
triggerall = RoundState != 9
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu05"
trigger6 = command = "cpu06"
trigger7 = command = "cpu07"
trigger8 = command = "cpu08"
trigger9 = command = "cpu01"
trigger10 = command = "cpu02"
trigger11 = command = "cpu03"
trigger12 = command = "cpu04"
trigger13 = command = "cpu5"
trigger14 = command = "cpu6"
trigger15 = command = "cpu7"
trigger16 = command = "cpu8"
trigger17 = command = "cpu0a"
v = 59
value = 1

;===========================================================================
;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;---------------------------------------------------------------------------
;PunchPunchPunch
[State -1, PunchPunchPunch]
type = ChangeState
value = 1000
triggerall = command = "PunchPunchPunch"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 410
trigger5 = movecontact = 1

;MPunchPunchPunch
[State -1, PunchPunchPunch]
type = ChangeState
value = 1000
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 0 && P2BodyDist X >= 30
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;And Chop!
[State -1, And Chop!]
type = ChangeState
value = 1001
triggerall = command = "PunchPunchPunch"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 1000
trigger2 = AnimElemTime(3) > 0

;MPunchPunchPunch
[State -1, PunchPunchPunch]
type = ChangeState
value = 1001
triggerall = var(59) >= 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno = 1000
trigger1 = AnimElemTime(3) > 0

;---------------------------------------------------------------------------
;MicStretch
[State -1, MicStretch]
type = ChangeState
value = 1010
triggerall = command = "MicStretch"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 410
trigger5 = movecontact = 1

;MicStretch
[State -1, MicStretch]
type = ChangeState
value = 1010
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 0 && P2BodyDist X >= 50
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = C
trigger1 = ctrl
trigger1 = random <= 900
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 410
trigger5 = movecontact = 1

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 20
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 20
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

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
;Stand_X
[State -1, Stand_X]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Stand_X
[State -1, Stand_X]
type = ChangeState
value = 200
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 5
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand_Y
[State -1, Stand_Y]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact

;Stand_Y
[State -1, Stand_Y]
type = ChangeState
value = 210
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 10
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && animelemtime(3) >= 0 && MoveHit

;---------------------------------------------------------------------------
;Stand_Z
[State -1, Stand_Z]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && Movecontact

;Stand_Y
[State -1, Stand_Y]
type = ChangeState
value = 220
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 10
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && animelemtime(4) >= 0 && MoveHit

;---------------------------------------------------------------------------
;Stand_A
[State -1, Stand_A]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact
trigger3 = stateno = 220 && Movecontact

;Stand_Y
[State -1, Stand_Y]
type = ChangeState
value = 230
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 10
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230 && animelemtime(4) >= 0 && MoveHit


;---------------------------------------------------------------------------
; Stand_B
[State -1, Stand_B]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && Movecontact
trigger3 = stateno = 230 && Movecontact

;Stand_Y
[State -1, Stand_Y]
type = ChangeState
value = 240
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 10
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230 && animelemtime(2) >= 0 && MoveHit

;---------------------------------------------------------------------------
; Stand_C
[State -1, Stand_C]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220 && Movecontact
trigger3 = stateno = 240 && Movecontact

;Stand_Y
[State -1, Stand_Y]
type = ChangeState
value = 250
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 10
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240 && animelemtime(2) >= 0 && MoveHit

;---------------------------------------------------------------------------
;Crouch_X
[State -1, Crouch_X]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 250 && Movecontact
trigger3 = stateno = 200 && Movecontact

;Stand_Y
[State -1, Stand_Y]
type = ChangeState
value = 400
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 10
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 250 && animelemtime(3) >= 0 && MoveHit


;---------------------------------------------------------------------------
;Crouch_Y
[State -1, Crouch_Y]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && Movecontact

;Stand_Y
[State -1, Stand_Y]
type = ChangeState
value = 410
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 10
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && animelemtime(2) >= 0 && MoveHit

;---------------------------------------------------------------------------
;Crouch_Z
[State -1, Crouch_Z]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410 && Movecontact

;Stand_Y
[State -1, Stand_Y]
type = ChangeState
value = 420
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 10
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410 && animelemtime(3) >= 0 && MoveHit
trigger2 = random <= 700

;---------------------------------------------------------------------------
;Crouch_A
[State -1, Crouch_A]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && Movecontact
trigger3 = stateno = 410 && Movecontact

;Stand_Y
[State -1, Stand_Y]
type = ChangeState
value = 430
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 10
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410 && animelemtime(3) >= 0 && MoveHit
trigger2 = random <= 700
 
;---------------------------------------------------------------------------
;Crouch_B
[State -1, Crouch_B]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && Movecontact
trigger3 = stateno = 430 && Movecontact

;Stand_Y
[State -1, Stand_Y]
type = ChangeState
value = 440
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 10
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && animelemtime(3) >= 0 && MoveHit

;---------------------------------------------------------------------------
;Crouch_B
[State -1, Crouch_B]
type = ChangeState
value = 441
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && Movecontact
trigger3 = stateno = 430 && Movecontact
trigger4 = stateno = 440 && Movecontact
trigger5 = Anim = 440 && AnimElemTime(3) > 0

;Stand_Y
[State -1, Stand_Y]
type = ChangeState
value = 441
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 10
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 440 && animelemtime(3) >= 0 && MoveHit

;---------------------------------------------------------------------------
;Crouch_C
[State -1, Crouch_C]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 420 && Movecontact
trigger3 = stateno = 440 && Movecontact
trigger4 = stateno = 441 && Movecontact

;Stand_Y
[State -1, Stand_Y]
type = ChangeState
value = 450
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 10
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 441 && animelemtime(3) >= 0 && MoveHit


;---------------------------------------------------------------------------
;Air_X
[State -1, Air_X]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;Stand_X
[State -1, Stand_X]
type = ChangeState
value = 600
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 5
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Air_Y
[State -1, Air_Y]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && Movecontact

;Stand_X
[State -1, Stand_X]
type = ChangeState
value = 610
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 5
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && animelemtime(2) >= 0 && MoveHit

;---------------------------------------------------------------------------
;Air_Z
[State -1, Air_Z]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && Movecontact

;Stand_X
[State -1, Stand_X]
type = ChangeState
value = 620
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 5
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && animelemtime(2) >= 0 && MoveHit

;---------------------------------------------------------------------------
;Air_A
[State -1, Air_A]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && Movecontact
trigger3 = stateno = 610 && Movecontact

;Stand_X
[State -1, Stand_X]
type = ChangeState
value = 630
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 5
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && animelemtime(2) >= 0 && MoveHit

;---------------------------------------------------------------------------
;Air_B
[State -1, Air_B]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && Movecontact
trigger3 = stateno = 630 && Movecontact

;Stand_X
[State -1, Stand_X]
type = ChangeState
value = 640
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 5
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630 && animelemtime(3) >= 0 && MoveHit

;---------------------------------------------------------------------------
;Air_C
[State -1, Air_C]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 620 && Movecontact
trigger3 = stateno = 640 && Movecontact

;Stand_X
[State -1, Stand_X]
type = ChangeState
value = 650
triggerall = var(59) >= 1
triggerall = P2BodyDist X <= 5
triggerall = P2BodyDist Y >= -10
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640 && animelemtime(3) >= 0 && MoveHit


;---------------------------------------------------------------------------
; Super Jump
[State -1, Super Jump]
type = ChangeState
value = 70
trigger1 = command = "super jump"
trigger1 = Statetype = S || Statetype = C
trigger1 = ctrl
trigger2 = command = "holdup"
trigger2 = stateno = 420 || stateno = 450
trigger2 = movecontact

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 70
triggerall = (StateType != A) && Var(59)
trigger1 = (StateNo = 420) && (MoveHit = 1)
trigger2 = (StateNo = 450) && (MoveHit = 1)
trigger3 = (enemynear, Vel X >= 4) && ctrl
trigger4 = stateno = 420 && animelemtime(4) >= 0 && MoveHit
trigger5 = stateno = 450 && animelemtime(5) >= 0 && MoveHit

;----------------------------------------------------------------------
; Air combo
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,610,620)

;=============================
;AI
;=============================


;-| AI |--------------------------------------------------------------------
[Command]
name = "cpu1"
command = U,D,U,F
time = 1

[Command]
name = "cpu2"
command = D,U,D,F
time = 1

[Command]
name = "cpu3"
command = U,D,D,F
time = 1

[Command]
name = "cpu4"
command = U,D,U,F
time = 1

[Command]
name = "cpu0a"
command = ~U+a+b+c+x+y+z+s,DF, F, D,DF, F,x,x,x,x,x
time = 1

[Command]
name = "cpu05"
command = ~U+a+b+c+x+y+z+s,DF, F, D,DF, F,y,y,y,x,x
time = 1

[Command]
name = "cpu06"
command = ~U+a+b+c+x+y+z+s,DF, F, D,DF, F,z,z,z,x,x
time = 1

[Command]
name = "cpu07"
command = ~U+a+b+c+x+y+z+s,DF, F, D,DF, F,a,a,a,x,x
time = 1

[Command]
name = "cpu08"
command = ~U+a+b+c+x+y+z+s,DF, F, D,DF, F,b,b,b,x,x
time = 1

[Command]
name = "cpu01"
command = U,D,U,F,a+s
time = 1

[Command]
name = "cpu02"
command = D,U,D,F,a+s
time = 1

[Command]
name = "cpu03"
command = U,D,D,F,a+s
time = 1

[Command]
name = "cpu04"
command = U,D,U,F,a+s
time = 1

[Command]
name = "cpu5"
command = ~U+a+b+c+x+y+z+s,DF, F, D,DF, F,y,y,y,x,x,a+s
time = 1

[Command]
name = "cpu6"
command = ~U+a+b+c+x+y+z+s,DF, F, D,DF, F,z,z,z,x,x,a+s
time = 1

[Command]
name = "cpu7"
command = ~U+a+b+c+x+y+z+s,DF, F, D,DF, F,a,a,a,x,x,a+s
time = 1

[Command]
name = "cpu8"
command = ~U+a+b+c+x+y+z+s,DF, F, D,DF, F,b,b,b,x,x,a+s
time = 1
