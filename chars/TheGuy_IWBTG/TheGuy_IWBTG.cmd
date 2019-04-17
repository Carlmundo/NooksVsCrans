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

;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

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
name = "start"
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

;-------Hyper Moves-------
[Command]
name = "Fruit Rain"
command = D, D, x
time = 20

[Command]
name = "Subterranean Spines"
command = D, D, y
time = 20

[Command]
name = "Colony Drop"
command = D, D, z
time = 20

;-------Super Moves-------
[Command]
name = "Bullet_Super"
command = B, B+F, F, a+b
time = 15

[Command]
name = "Bullet_Super"
command = B, F, a+b
time = 15

[Command]
name = "Bullet_Super"
command = B, B+F, F, b+c
time = 15

[Command]
name = "Bullet_Super"
command = B, F, b+c
time = 15

[Command]
name = "Bullet_Super"
command = B, B+F, F, a+c
time = 15

[Command]
name = "Bullet_Super"
command = B, F, a+c
time = 15

[Command]
name = "AirStomp_Super"
command = ~F,D,$F, a+b
time = 15
;SFIV/SSFIV shortcut
[Command]
name = "AirStomp_Super"
command = ~DF,DF,a+b
time = 15

[Command]
name = "AirStomp_Super"
command = ~F,D,$F, b+c
time = 15
;SFIV/SSFIV shortcut
[Command]
name = "AirStomp_Super"
command = ~DF,DF,b+c
time = 15

[Command]
name = "AirStomp_Super"
command = ~F,D,$F,a+c
time = 15
;SFIV/SSFIV shortcut
[Command]
name = "AirStomp_Super"
command = ~DF,DF,a+c
time = 15

[Command]
name = "Floor_Attack_Super"
command = D, D, a+b
time = 20

[Command]
name = "Floor_Attack_Super"
command = D, D, b+c
time = 20

[Command]
name = "Floor_Attack_Super"
command = D, D, a+c
time = 20

[Command]
name = "Grenade_Super"
command = B,DB,D,DF,F,a+b
time = 25
[Command]
name = "Grenade_Super"
command = B,$D,F,a+b
time = 25
[Command]
name = "Grenade_Super"
command = B,DB,D,DF,F,b+c
time = 25
[Command]
name = "Grenade_Super"
command = B,$D,F,b+c
time = 25
[Command]
name = "Grenade_Super"
command = B,DB,D,DF,F,a+c
time = 25
[Command]
name = "Grenade_Super"
command = B,$D,F,a+c
time = 25



;-------Special-------
[Command]
name = "Bullet_a"
command = B, B+F, F, a
time = 15

[Command]
name = "Bullet_a"
command = B, F, a
time = 15

[Command]
name = "Bullet_b"
command = B, B+F, F, b
time = 15

[Command]
name = "Bullet_b"
command = B, F, b
time = 15

[Command]
name = "Bullet_c"
command = B, B+F, F, c
time = 15

[Command]
name = "Bullet_c"
command = B, F, c
time = 15



[Command]
name = "AirStomp_a"
command = ~F,D,$F, a
time = 15
;SFIV/SSFIV shortcut
[Command]
name = "AirStomp_a"
command = ~DF,DF,a
time = 15

[Command]
name = "AirStomp_b"
command = ~F,D,$F, b
time = 15
;SFIV/SSFIV shortcut
[Command]
name = "AirStomp_b"
command = ~DF,DF,b
time = 15

[Command]
name = "AirStomp_c"
command = ~F,D,$F,c
time = 15
;SFIV/SSFIV shortcut
[Command]
name = "AirStomp_c"
command = ~DF,DF,c
time = 15


[Command]
name = "Floor_Attack_a"
command = D, D, a
time = 20

[Command]
name = "Floor_Attack_b"
command = D, D, b
time = 20

[Command]
name = "Floor_Attack_c"
command = D, D, c
time = 20


[Command]
name = "Grenade_a"
command = B,DB,D,DF,F,a
time = 25
[Command]
name = "Grenade_a"
command = B,$D,F,a
time = 25
[Command]
name = "Grenade_b"
command = B,DB,D,DF,F,b
time = 25
[Command]
name = "Grenade_b"
command = B,$D,F,b
time = 25
[Command]
name = "Grenade_c"
command = B,DB,D,DF,F,c
time = 25
[Command]
name = "Grenade_c"
command = B,$D,F,c
time = 25

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

;AI Check
[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

;Armor stuff lol
[State -1, Hide]
type = AssertSpecial
trigger1 = IsHelper(44304)
flag = invisible
flag2 = NoShadow
IgnoreHitPause = 1

[State -1, Reset]
type = SelfState
trigger1 = IsHelper(44304)
trigger1 = StateNo != [44304,44305]
value = 44304
IgnoreHitPause = 1




;===========================================================================
;---------------------------------------------------------------------------

;CPU

;===========================================================================
;---------------------------------------------------------------------------



;Phase 1

;-----------------Special Moves--------------------
[State -1, Grenade AI Phase 1]
type = ChangeState
value = 1300+(var(10)=4)
triggerall = var(59)*var(55)*!var(0)
triggerall = ctrl
triggerall = !(numhelper(1310)+numhelper(1311)+numhelper(1312))
triggerall = statetype != A
trigger1 = ((var(55)%900)=121)||((var(55)%900)=721)
trigger1 = var(10):=2

[State -1, Floor Attack AI Phase 1]
type = ChangeState
value = 1200
triggerall = var(59)*var(55)*!var(0)
triggerall = ctrl+(movecontact*(stateno=[200,320]))
triggerall = statetype != A
trigger1 = ((var(55)%900)=300)||((var(55)%900)=840)
trigger1 = var(10):=2
trigger2 = !var(50) || var(50)*(enemy,var(10)!=[0,4])
trigger2 = !numhelper(3000)
trigger2 = (var(55)%900)>400
trigger2 = !(random%800)
trigger2 = power>=1000
trigger2 = var(10):=4

[State -1, Air Stomp AI Phase 1]
type = ChangeState
value = 1100+(statetype=A)*(var(10)=4)
triggerall = var(59)*var(55)*!var(0)
triggerall = ctrl+(movecontact*(stateno=[200,320]))
triggerall = (statetype!=A)+(pos y < -5)
triggerall = (stateno!=[100,109])
trigger1 = ((var(55)%900)=120)||((var(55)%900)=720)
trigger1 = var(10):=3
trigger2 = !var(50) || var(50)*(enemy,var(10)!=[0,4])
trigger2 = !numhelper(3000)
trigger2 = (var(55)%900)>400
trigger2 = !(random%800)
trigger2 = power>=1000
trigger2 = var(10):=4

[State -1, Bullet AI Phase 1]
type = ChangeState
value = 1000+(statetype=A)
triggerall = var(59)*var(55)*!var(0)
triggerall = !(numhelper(1010)+numhelper(1011)+numhelper(1012)+numhelper(1013))
triggerall = ctrl+(movecontact*(stateno=[200,320]))
trigger1 = ((var(55)%900)=60)||((var(55)%900)=420)
trigger1 = var(10):=2
trigger2 = !var(50) || var(50)*(enemy,var(10)!=[0,4])
trigger2 = !numhelper(3000)
trigger2 = (var(55)%900)>400
trigger2 = !(random%800)
trigger2 = power>=1000
trigger2 = var(10):=4

[State -1, FruitAbove (Phase 1)]
type = Helper
triggerall = power>=125
triggerall = ctrl
triggerall = !var(31)
trigger1 = ((var(55)%900)=299)||((var(55)%900)=839)
trigger1 = var(59)*var(50)*var(55)*!var(0)
helpertype = normal
name = "Fruit"
ID = 3000
stateno = 3000
pos = 0,-300
postype = p2
facing = -1
ownpal = 1

[State -1, FruitBelow (Phase 1)]
type = Helper
triggerall = power>=125
triggerall = ctrl
triggerall = var(31)=1
trigger1 = ((var(55)%900)=299)||((var(55)%900)=839)
trigger1 = var(59)*var(50)*var(55)*!var(0)
helpertype = normal
name = "Fruit"
ID = 3001
stateno = 3000
pos = 0,300
postype = p2
facing = -1
ownpal = 1

[State -1, FruitFromBehind (Phase 1)]
type = Helper
triggerall = power>=125
triggerall = ctrl
triggerall = var(31)=2
trigger1 = ((var(55)%900)=299)||((var(55)%900)=839)
trigger1 = var(59)*var(50)*var(55)*!var(0)
helpertype = normal
name = "Fruit"
ID = 3002
stateno = 3000
pos = -30,floor((pos y)+(const(size.mid.pos.y)))
postype = back
facing = 1
ownpal = 1


[State -1, Fruit Rain (Phase 1)]
type = ChangeState
value = 2000
triggerall = ctrl
triggerall = statetype = S
triggerall = var(50)*var(55)*!var(0)*var(59)
trigger1 = ((var(55)%900)=899)||((var(55)%900)=451)
trigger1 = power >= 2000
trigger1 = var(10):=1



;Phase 2

;-----------------Special Moves--------------------

[State -1, Bullet AI (Phase 2)]
type = ChangeState
value = 1050+(statetype=A)
triggerall = var(59)*var(55)*(var(0)=1)
triggerall = !(numhelper(1010)+numhelper(1011)+numhelper(1012)+numhelper(1013))
triggerall = ctrl+(movecontact*(stateno=[200,320]))
trigger1 = (var(55)%900)=180
trigger2 = (var(55)%900)=360
trigger3 = (var(55)%900)=540
trigger4 = (var(55)%900)=720
trigger5 = (var(55)%900)=270
trigger5 = var(50)
trigger6 = (var(55)%900)=450
trigger6 = var(50)
trigger7 = (var(55)%900)=630
trigger7 = var(50)
trigger8 = (var(55)%900)=810
trigger8 = var(50)


[State -1, Air Stomp AI (Phase 2)]
type = ChangeState
value = 1100;+(statetype=A)
triggerall = var(59)*var(55)*(var(0)=1)
triggerall = ctrl+(movecontact*(stateno=[200,320]))
triggerall = (statetype!=A)+(pos y < -5)
triggerall = (stateno!=[100,109])
trigger1 = !(var(55)%900)


[State -1, Subterranean Spines (Phase 2)]
type = ChangeState
value = 2000
triggerall = ctrl
triggerall = statetype = S
triggerall = var(50)*var(55)*(var(0)=1)*var(59)
trigger1 = ((var(55)%900)=899)||((var(55)%900)=451)
trigger1 = power >= 2500
trigger1 = var(10):=2



[State -1, SpikeAbove (Phase 2)]
type = Helper
triggerall = power>=250
triggerall = ctrl
triggerall = !var(32)
triggerall = var(50)*var(55)*(var(0)=1)*var(59)
trigger1 = (var(55)%900)=200
trigger2 = (var(55)%900)=380
trigger3 = (var(55)%900)=560
trigger4 = (var(55)%900)=740
trigger5 = (var(55)%900)=290
trigger6 = (var(55)%900)=470
trigger7 = (var(55)%900)=650
trigger8 = (var(55)%900)=830
helpertype = normal
name = "Spike"
ID = 3100
stateno = 3100
pos = 0,-300
postype = p2
facing = 1
ownpal = 1

[State -1, SpikeBelow (Phase 2)]
type = Helper
triggerall = power>=250
triggerall = ctrl
triggerall = var(32)=1
triggerall = var(50)*var(55)*(var(0)=1)*var(59)
trigger1 = (var(55)%900)=200
trigger2 = (var(55)%900)=380
trigger3 = (var(55)%900)=560
trigger4 = (var(55)%900)=740
trigger5 = (var(55)%900)=290
trigger6 = (var(55)%900)=470
trigger7 = (var(55)%900)=650
trigger8 = (var(55)%900)=830
helpertype = normal
name = "Spike"
ID = 3101
stateno = 3100
pos = 0,300
postype = p2
facing = 1
ownpal = 1

[State -1, SpikeFromBehind (Phase 2)]
type = Helper
triggerall = power>=250
triggerall = ctrl
triggerall = var(32)=2
triggerall = var(50)*var(55)*(var(0)=1)*var(59)
trigger1 = (var(55)%900)=200
trigger2 = (var(55)%900)=380
trigger3 = (var(55)%900)=560
trigger4 = (var(55)%900)=740
trigger5 = (var(55)%900)=290
trigger6 = (var(55)%900)=470
trigger7 = (var(55)%900)=650
trigger8 = (var(55)%900)=830
helpertype = normal
name = "Spike"
ID = 3102
stateno = 3100
pos = -30,floor((pos y)+(const(size.mid.pos.y)))
postype = back
facing = 1
ownpal = 1




;---------------------------------------------------------------------------
; Light Punch
[State -1, Light Punch AI]
type = ChangeState
value = 200
triggerall = var(59)
triggerall = random<200||movecontact*(stateno=200)
triggerall = abs(p2bodydist x < 6)
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact>=2
trigger2 = p2movetype = H

;---------------------------------------------------------------------------
; Heavy Punch
[State -1, Heavy Punch AI]
type = ChangeState
value = 210
triggerall = var(59)
triggerall = random<100||movecontact*(stateno=200)
triggerall = abs(p2bodydist x < 20)
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact>=2
trigger2 = p2movetype = H

;---------------------------------------------------------------------------
; Kick
[State -1, Kick AI]
type = ChangeState
value = 220
triggerall = var(59)
triggerall = random<50||movecontact*(stateno=210)
triggerall = abs(p2bodydist x < 40)
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact>=2
trigger2 = p2movetype = H

;---------------------------------------------------------------------------
; Poke
[State -1, Poke AI]
type = ChangeState
value = 300
triggerall = var(59)
triggerall = random<200||movecontact*(stateno=300)
triggerall = abs(p2bodydist x < 6)
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 300
trigger2 = movecontact>=2
trigger2 = p2movetype = H

;---------------------------------------------------------------------------
; Low Punch
[State -1, Low Punch AI]
type = ChangeState
value = 310
triggerall = var(59)
triggerall = random<100||movecontact*(stateno=300)
triggerall = abs(p2bodydist x < 20)
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 300
trigger2 = movecontact>=2
trigger2 = p2movetype = H

;---------------------------------------------------------------------------
; Trip
[State -1, Trip AI]
type = ChangeState
value = 320
triggerall = var(59)
triggerall = random<50||movecontact*(stateno=310)
triggerall = abs(p2bodydist x < 40)
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 310
trigger2 = movecontact>=2
trigger2 = p2movetype = H

;---------------------------------------------------------------------------
; Double Kick
[State -1, Double Kick AI]
type = ChangeState
value = 400
triggerall = var(59)
triggerall = ctrl
triggerall = statetype = A
trigger1 = random%2
trigger1 = abs(p2bodydist x < 20)
trigger1 = p2dist y = [0,40]





;===========================================================================
;---------------------------------------------------------------------------

;HUMAN

;===========================================================================
;---------------------------------------------------------------------------

;-----------------Hypers--------------------
[State -1, Hyper]
type = ChangeState
value = 2000
triggerall = ctrl
triggerall = statetype = S
triggerall = !var(59)
trigger1 = command = "Fruit Rain"
trigger1 = !(numhelper(3000)+numhelper(3001)+numhelper(3002))
trigger1 = power >= 2000
trigger1 = var(10):=1
trigger2 = command = "Subterranean Spines"
trigger2 = !(numhelper(3100)+numhelper(3101)+numhelper(3102))
trigger2 = power >= 2500
trigger2 = var(10):=2
trigger3 = command = "Colony Drop"
trigger3 = !numhelper(3200)
trigger3 = power >= 3000
trigger3 = var(10):=3

;----------------Regulars-------------------
[State -1, FruitAbove]
type = Helper
triggerall = power>=125
triggerall = !(numHelper(3000)+numHelper(3001)+numHelper(3002))
triggerall = alive
triggerall = ctrl
triggerall = !var(31)
trigger1 = command = "x"
trigger1 = !var(59)
helpertype = normal
name = "Fruit"
ID = 3000
stateno = 3000
pos = 0,-300
postype = p2
facing = -1
ownpal = 1

[State -1, FruitBelow]
type = Helper
triggerall = power>=125
triggerall = !(numHelper(3000)+numHelper(3001)+numHelper(3002))
triggerall = alive
triggerall = ctrl
triggerall = var(31)=1
trigger1 = command = "x"
trigger1 = !var(59)
helpertype = normal
name = "Fruit"
ID = 3001
stateno = 3000
pos = 0,300
postype = p2
facing = -1
ownpal = 1

[State -1, FruitFromBehind]
type = Helper
triggerall = power>=125
triggerall = !(numHelper(3000)+numHelper(3001)+numHelper(3002))
triggerall = alive
triggerall = ctrl
triggerall = var(31)=2
trigger1 = command = "x"
trigger1 = !var(59)
helpertype = normal
name = "Fruit"
ID = 3002
stateno = 3000
pos = -30,floor((pos y)+(const(size.mid.pos.y)))
postype = back
facing = 1
ownpal = 1


[State -1, SpikeAbove]
type = Helper
triggerall = power>=250
triggerall = !(numHelper(3100)+numHelper(3101)+numHelper(3102))
triggerall = alive
triggerall = ctrl
triggerall = !var(32)
trigger1 = command = "y"
trigger1 = !var(59)
helpertype = normal
name = "Spike"
ID = 3100
stateno = 3100
pos = 0,-300
postype = p2
facing = 1
ownpal = 1

[State -1, SpikeBelow]
type = Helper
triggerall = power>=250
triggerall = !(numHelper(3100)+numHelper(3101)+numHelper(3102))
triggerall = alive
triggerall = ctrl
triggerall = var(32)=1
trigger1 = command = "y"
trigger1 = !var(59)
helpertype = normal
name = "Spike"
ID = 3101
stateno = 3100
pos = 0,300
postype = p2
facing = 1
ownpal = 1

[State -1, SpikeFromBehind]
type = Helper
triggerall = power>=250
triggerall = !(numHelper(3100)+numHelper(3101)+numHelper(3102))
triggerall = alive
triggerall = ctrl
triggerall = var(32)=2
trigger1 = command = "y"
trigger1 = !var(59)
helpertype = normal
name = "Spike"
ID = 3102
stateno = 3100
pos = -30,floor((pos y)+(const(size.mid.pos.y)))
postype = back
facing = 1
ownpal = 1


[State -1, Moon]
type = Helper
triggerall = power >= 1500
triggerall = !(numHelper(3200))
triggerall = alive
triggerall = ctrl
trigger1 = command = "z"
trigger1 = !var(59)
helpertype = normal
name = "Moon"
ID = 3200
stateno = 3200
pos = 50,-500
postype = p2
facing = -1
ownpal = 1


;-----------------Special Moves--------------------
[State -1, Grenade]
type = ChangeState
value = 1300+(var(10)=4)
triggerall = !var(59)
triggerall = ctrl
triggerall = !(numhelper(1310)+numhelper(1311)+numhelper(1312))
triggerall = statetype != A
trigger1 = command = "Grenade_Super"
trigger1 = power>=1000
trigger1 = var(10):=4
trigger2 = command = "Grenade_a"
trigger2 = var(10):=1
trigger3 = command = "Grenade_b"
trigger3 = var(10):=2
trigger4 = command = "Grenade_c"
trigger4 = var(10):=3

[State -1, Floor Attack]
type = ChangeState
value = 1200
triggerall = !var(59)
triggerall = ctrl+(movecontact*(stateno=[200,320]))
triggerall = statetype != A
trigger1 = command = "Floor_Attack_Super"
trigger1 = power>=1000
trigger1 = var(10):=4
trigger2 = command = "Floor_Attack_a"
trigger2 = var(10):=1
trigger3 = command = "Floor_Attack_b"
trigger3 = var(10):=2
trigger4 = command = "Floor_Attack_c"
trigger4 = var(10):=3

[State -1, Air Stomp]
type = ChangeState
value = 1100+(statetype=A)
triggerall = !var(59)
triggerall = ctrl+(movecontact*(stateno=[200,320]))
triggerall = (statetype!=A)+(pos y < -5)
triggerall = (stateno!=[100,109])
trigger1 = command = "AirStomp_Super"
trigger1 = power>=1000
trigger1 = var(10):=4
trigger2 = command = "AirStomp_a"
trigger2 = var(10):=1
trigger3 = command = "AirStomp_b"
trigger3 = var(10):=2
trigger4 = command = "AirStomp_c"
trigger4 = var(10):=3

[State -1, Bullet]
type = ChangeState
value = 1000+(statetype=A)
triggerall = !var(59)
triggerall = !(numhelper(1010)+numhelper(1011)+numhelper(1012)+numhelper(1013))
triggerall = ctrl+(movecontact*(stateno=[200,320]))
trigger1 = command = "Bullet_Super"
trigger1 = power>=1000
trigger1 = var(10):=4
trigger2 = command = "Bullet_a"
trigger2 = var(10):=1
trigger3 = command = "Bullet_b"
trigger3 = var(10):=2
trigger4 = command = "Bullet_c"
trigger4 = var(10):=3



;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = !var(50)+!var(59)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = !var(50)+!var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Light Punch
[State -1, Light Punch]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "a"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
; Heavy Punch
[State -1, Heavy Punch]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command = "b"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
; Kick
[State -1, Kick]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = command = "c"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact

;---------------------------------------------------------------------------
; Poke
[State -1, Poke]
type = ChangeState
value = 300
triggerall = !var(59)
triggerall = command = "a"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 300
trigger2 = movecontact

;---------------------------------------------------------------------------
; Low Punch
[State -1, Low Punch]
type = ChangeState
value = 310
triggerall = !var(59)
triggerall = command = "b"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 300
trigger2 = movecontact

;---------------------------------------------------------------------------
; Trip
[State -1, Trip]
type = ChangeState
value = 320
triggerall = !var(59)
triggerall = command = "c"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 310
trigger2 = movecontact

;---------------------------------------------------------------------------
; Double Kick
[State -1, Double Kick]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = ctrl
triggerall = statetype = A
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
