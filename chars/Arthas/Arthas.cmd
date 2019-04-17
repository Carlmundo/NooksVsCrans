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

;-| Super Motions |--------------------------------------------------------
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
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1
;-| Hold Button |--------------------------------
[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
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

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "upfwd"
command = $UF
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


;-| Special Motions |------------------------------------------------------
[command]
name = "QCF X"
command = D,F,x
time = 15

[command]
name = "QCB X"
command = D,B,x
time = 15

[command]
name = "QCF Z"
command = D,F,z
time = 15

[command]
name = "fQCF X"
command = F,D,DF,F,x
time = 30

[command]
name = "QCF Y"
command = D,F,y
time = 15

[command]
name = "QCB Y"
command = D,B,y
time = 15

[command]
name = "DD Z"
command = D,D,z
time = 15




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
;---------------------------------------------------------------------------
;===========================================================================
;-------Ultimate Attacks----------------------------------------------------
;===========================================================================
;Freezing Tornado------------------
[State -1, Tornado]
type = ChangeState
value = 5999
triggerall = Var(58) = -1 && Var(50) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl

;Freezing Tornado AI------------------
[State -1, Tornado AI]
type = ChangeState
value = 5999
triggerall = Var(58) = 1 && Var(50) = 0
triggerall = Var(4) = 0
trigger1 = statetype = S && life <= 750
trigger1 = ctrl

;Army of the Dead------------------
[State -1, Army]
type = ChangeState
value = 3200
triggerall = Var(58) = -1 && Var(50) = 0
triggerall = command = "b"
trigger1 = statetype = S 
trigger1 = ctrl

[State -1, Army AI]
type = ChangeState
value = 3200
triggerall = Var(4) = 1
triggerall = Var(58) = 1 && Var(50) = 0
trigger1 = statetype = S && life <= 500
trigger1 = ctrl

; Final Kill----------------------------
[State -1, Final Kill]
type = ChangeState
value = 230
triggerall = command = "c" && var(58) = -1 && Var(50) = 0
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Final Kill AI]
type = ChangeState
value = 230
triggerall =Var(4) = 2
triggerall = Var(58) = 1 && Var(50) = 0
trigger1 = statetype = S && life <= 250
trigger1 = ctrl

;===========================================================================
;-------Special Attacks-----------------------------------------------------
;===========================================================================
;Regular
;Deep Freeze--------------------------
[State -1, Deep Freeze]
type = ChangeState
value = 350
triggerall = command = "DD Z" && Var(50) = 0
trigger1 = (statetype = s) && ctrl

;Chilling Path--------
[State -1, Chilling Path]
type = ChangeState
value = 206
triggerall = command = "QCF Z" && Var(50) = 0
trigger1 = (statetype = s) && ctrl             
trigger2 = stateno = 204                        
trigger2 = animelemtime(23) >= 1
trigger3 = stateno = 210 && animelemtime(12) >= 0
trigger4 = stateno = 208 && animelemtime(22) >= 0
trigger5 = stateno = 209 && animelemtime(8) >= 0
trigger6 = stateno = 225 && animelemtime(6) >= 0
trigger7 = stateno = 200 && animelemtime(14) >= 0
trigger8 = stateno = 202 && animelemtime(17) >= 0
trigger9 = stateno = 204 && animelemtime(24) >= 0
trigger10 = stateno = 7340 && animelemtime(24) >= 0
trigger11 = stateno = 7300 && animelemtime(17) >= 0
trigger12 = stateno = 7320 && animelemtime(17) >= 0
trigger13 = stateno = 206 && animelemtime(23) >= 0

; Iceshatter
[State -1, Iceshatter]
type = ChangeState
value = 220
triggerall = command = "z" && Var(50) = 0
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && animelemtime(12) >= 0
trigger3 = stateno = 208 && animelemtime(22) >= 0
trigger4 = stateno = 209 && animelemtime(8) >= 0
trigger5 = stateno = 225 && animelemtime(6) >= 0
trigger6 = stateno = 200 && animelemtime(14) >= 0
trigger7 = stateno = 202 && animelemtime(17) >= 0
trigger8 = stateno = 204 && animelemtime(24) >= 0
trigger9 = stateno = 7340 && animelemtime(24) >= 0
trigger10 = stateno = 7300 && animelemtime(17) >= 0
trigger11 = stateno = 7320 && animelemtime(17) >= 0
trigger12 = stateno = 206 && animelemtime(23) >= 0


;Death Strike-------------------------
[State -1, Death Strike]
type = ChangeState
value = 7340
triggerall = command = "fQCF X" && Var(50) = 0
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 210 && animelemtime(12) >= 0
trigger3 = stateno = 208 && animelemtime(22) >= 0
trigger4 = stateno = 209 && animelemtime(8) >= 0
trigger5 = stateno = 225 && animelemtime(6) >= 0
trigger6 = stateno = 200 && animelemtime(14) >= 0
trigger7 = stateno = 202 && animelemtime(17) >= 0
trigger8 = stateno = 204 && animelemtime(24) >= 0
trigger9 = stateno = 7340 && animelemtime(24) >= 0
trigger10 = stateno = 7300 && animelemtime(17) >= 0
trigger11 = stateno = 7320 && animelemtime(17) >= 0
trigger12 = stateno = 206 && animelemtime(23) >= 0

;Plague Strike-------------------------
[State -1, Plague Strike]
type = ChangeState
value = 7300
triggerall = command = "QCB X" && Var(50) = 0
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 210 && animelemtime(12) >= 0
trigger3 = stateno = 208 && animelemtime(22) >= 0
trigger4 = stateno = 209 && animelemtime(8) >= 0
trigger5 = stateno = 225 && animelemtime(6) >= 0
trigger6 = stateno = 200 && animelemtime(14) >= 0
trigger7 = stateno = 202 && animelemtime(17) >= 0
trigger8 = stateno = 204 && animelemtime(24) >= 0
trigger9 = stateno = 7340 && animelemtime(24) >= 0
trigger10 = stateno = 7300 && animelemtime(17) >= 0
trigger11 = stateno = 7320 && animelemtime(17) >= 0
trigger12 = stateno = 206 && animelemtime(23) >= 0

;Icy Touch-------------------------
[State -1, Icy Touch]
type = ChangeState
value = 7320
triggerall = command = "QCF X" && Var(50) = 0
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 210 && animelemtime(12) >= 0
trigger3 = stateno = 208 && animelemtime(22) >= 0
trigger4 = stateno = 209 && animelemtime(8) >= 0
trigger5 = stateno = 225 && animelemtime(6) >= 0
trigger6 = stateno = 200 && animelemtime(14) >= 0
trigger7 = stateno = 202 && animelemtime(17) >= 0
trigger8 = stateno = 204 && animelemtime(24) >= 0
trigger9 = stateno = 7340 && animelemtime(24) >= 0
trigger10 = stateno = 7300 && animelemtime(17) >= 0
trigger11 = stateno = 7320 && animelemtime(17) >= 0
trigger12 = stateno = 206 && animelemtime(23) >= 0

;===========================================================================
;-------Combos--------------------------------------------------------------
;===========================================================================
;Combo 2
[State -1, Punch]
type = ChangeState
value = 210
triggerall = command = "back_x" && Var(50) = 0
trigger1 = (statetype = s) && ctrl

[State -1, Attack 4]
type = ChangeState
value = 208
triggerall = command = "x" && Var(50) = 0
trigger1 = stateno = 210 && animelemtime(12) >= 0

[State -1, Attack 4 AI Temp]
type = ChangeState
value = 208
triggerall = stateno = 210 && Var(50) = 0
trigger1 = roundstate = 2 && var(58) = 1 && animelemtime(12) >= 0

[State -1, Kick]
type = ChangeState
value = 209
triggerall = command = "x" && Var(50) = 0
trigger1 = stateno = 208 && animelemtime(22) >= 0

[State -1, Kick AI Temp]
type = ChangeState
value = 209
triggerall = stateno = 208 && Var(50) = 0
trigger1 = roundstate = 2 && var(58) = 1 && animelemtime(22) >= 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Combo 1
[State -1, Attack 1]
type = ChangeState
value = 200
triggerall = command = "x"  && Var(50) = 0
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Attack 2
[State -1, Attack 2]
type = ChangeState
value = 202
triggerall = command = "x" && Var(50) = 0
trigger1 = stateno = 200 && animelemtime(14) >= 1

[State -1, Attack 2 AI Temp]
type = ChangeState
value = 202
triggerall = stateno = 200 && Var(50) = 0
trigger1 = roundstate = 2 && var(58) = 1 && animelemtime(14) >= 1



;-------------------------------------------------------------------------------
;Attack 3
[State -1, Attack 3]
type = ChangeState
value = 204
triggerall = command = "x" && Var(50) = 0
trigger1 = stateno = 202 && animelemtime(17) >= 1

[State -1, Attack 3 AI Temp]
type = ChangeState
value = 204
triggerall = stateno = 202 && Var(50) = 0
trigger1 = roundstate = 2 && var(58) = 1 && animelemtime(17) >= 1


;===========================================================================
;-------Summons-------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------

;Summon Lich-------------------------
[State -1, Summon Lich]
type = ChangeState
value = 1999
triggerall = command = "QCB Y" && Var(50) = 0
trigger1 = !numhelper(2000)
trigger1 = (statetype = s) && ctrl
trigger2 = !numhelper(2030)
trigger2 = (statetype = s) && ctrl

;Summon Geist-------------------------
[State -1, Summon Geist]
type = ChangeState
value = 7997
triggerall = command = "QCF Y" && numhelper(8000) < 3 && Var(50) = 0
trigger1 = (statetype = s) && ctrl

; Summon Ghoul-------------------------
[State -1, Summon Ghoul]
type = ChangeState
value = 3998
triggerall = command = "y" && Var(50) = 0
trigger1 = numhelper(666) <= 1
trigger1 = (statetype = s) && ctrl
;===========================================================================
;-------AI Programming------------------------------------------------------
;===========================================================================
;AI for this release is not finished yet, please keep all statectrls at this
;point and below to "Null" and change any below this point that I may have
;missed, or else it will lead to problems with the AI. Do NOT change sctrls
;to null if they are below Insane Boss Mode AI Programming.

;------------Special Moves--------------------------------------------------
;Chilling Path--------
[State -1, Chilling Path AI]
type = Null
value = 206
triggerall = var(58) = 1 && roundstate = 2 && stateno != 206 && Var(50) = 0
trigger1 = p2bodydist X <= 200 && ctrl = 1 && var(20) = 0 && var(21) = 0 && random = [901,999] ;--------------------------------
trigger2 = p2bodydist X <= 100 && ctrl = 1 && var(20) = 1 && var(21) = 0 && random = [926,999]
; Iceshatter-------------------------
[State -1, Iceshatter AI]
type = Null
value = 220
triggerall = var(58) = 1 && roundstate = 2 && stateno != 220 && Var(50) = 0
trigger1 = p2bodydist X <= 100 && ctrl = 1 && var(20) = 0 && var(21) = 0 && random = [801,900]
trigger2 = p2bodydist X <= 100 && ctrl = 1 && var(20) = 1 && var(21) = 0 && random = [851,925]
;Death Strike-------------------------
[State -1, Death Strike AI]
type = Null
value = 7340
triggerall = var(58) = 1 && roundstate = 2 && stateno != 7340 && Var(50) = 0
trigger1 = p2bodydist X <= 100 && ctrl = 1 && var(20) = 0 && var(21) = 0 && random = [701,800]
trigger2 = p2bodydist X <= 100 && ctrl = 1 && var(20) = 1 && var(21) = 0 && random = [701,850]
;Plague Strike-------------------------
[State -1, Plague Strike AI]
type = Null
value = 7300
triggerall = var(58) = 1 && roundstate = 2 && stateno != 7300 && Var(50) = 0
trigger1 = p2bodydist X <= 100 && ctrl = 1 && var(20) = 0 && var(21) = 0 && random = [501,700]
trigger2 = p2bodydist X <= 100 && ctrl = 1 && var(20) = 1 && var(21) = 0 && random = [651,700]
;Icy Touch-------------------------
[State -1, Icy Touch AI]
type = Null
value = 7320
triggerall = var(58) = 1 && roundstate = 2 && stateno != 7320 && Var(50) = 0
trigger1 = p2bodydist X <= 100 && ctrl = 1 && var(20) = 0 && var(21) = 0 && random = [301,500]
trigger2 = p2bodydist X <= 100 && ctrl = 1 && var(20) = 1 && var(21) = 0 && random = [401,650]

;===========================================================================
;-------Combos--------------------------------------------------------------
;===========================================================================
;Combo 2
[State -1, Punch AI]
type = Null
value = 210
triggerall = var(58) = 1 && roundstate = 2 && stateno != 210 && Var(50) = 0
trigger1 = p2bodydist X <= 100 && ctrl = 1 && var(20) = 0 && var(21) = 0 && random = [151,300]
trigger2 = p2bodydist X <= 100 && ctrl = 1 && var(20) = 1 && var(21) = 0 && random = [201,400]
;Combo 2
[State -1, Attack 4 AI]
type = Null
value = 208
triggerall = var(58) = 1 && roundstate = 2 && stateno != 208 && Var(50) = 0
trigger1 = p2bodydist X <= 100

[State -1, Kick AI]
type = Null
value = 209
triggerall = var(58) = 1 && roundstate = 2 && stateno != 209 && Var(50) = 0
trigger1 = p2bodydist X <= 100
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Combo 1
[State -1, Attack 1 AI]
type = Null
value = 200
triggerall = var(58) = 1 && roundstate = 2 && stateno != 200 && Var(50) = 0
trigger1 = p2bodydist X <= 100 && ctrl = 1 && random <= 150 && var(20) = 0 && var(21) = 0
trigger2 = p2bodydist X <= 100 && ctrl = 1 && Var(20) = 1 && Var(21) = 0 && random <= 200

;-------------------------------------------------------------------------------
;Attack 2
[State -1, Attack 2 AI]
type = Null
value = 202
triggerall = var(58) = 1 && roundstate = 2 && stateno != 202 && Var(50) = 0
trigger1 = p2bodydist X <= 100

;-------------------------------------------------------------------------------
;Attack 3
[State -1, Attack 3 AI]
type = Null
value = 204
triggerall = var(58) = 1 && roundstate = 2 && stateno != 204 && Var(50) = 0
trigger1 = p2bodydist X <= 100 && ctrl = 1 && random <= 150
;-------------------------------------------------------------------------------
;===============================================================================
;---------------------Insane Boss Mode AI Programming---------------------------
;Do NOT change the sctrls below here to "Null"
;===============================================================================
;Plague Waves
[State -1, Plague Waves AI]
type = Changestate
value = 20010
triggerall = roundstate = 2 && stateno != 20010 &&  Var(50) = 1 && life > 250
trigger1 = random <= 10 && ctrl = 1

;Duo Ghouls
[State -1, Duo Ghouls AI]
type = Changestate
value = 20500
triggerall = roundstate = 2 && stateno != 20500 && Var(50) = 1 && numhelper(24666) < 2&& life > 250
trigger1 = ctrl = 1 && random = [11, 20]

;Improved Iceshatter
[State -1, Improved Iceshatter AI]
type = Changestate
value = 20200
triggerall = roundstate = 2 && stateno != 20200 && Var(50) = 1 && life > 250
trigger1 = ctrl = 1 && random = [21, 40]

;Combo 1
[State -1, IBM Combo 1 AI]
type = Changestate
value = 20020
triggerall = roundstate = 2 && stateno != 20020 && Var(50) = 1&& life > 250
trigger1 = ctrl = 1 && random = [41, 60]

;Icebreaker
[State -1, Icebreaker AI]
type = Changestate
value = 20035
triggerall = roundstate = 2 && stateno != 20020 && Var(50) = 1 && life > 250
trigger1 = ctrl = 1 && random = [61, 80]

;Final Attack
[State -1, IBM Final AI]
type = Changestate
value = 20900
triggerall = roundstate = 2 && stateno != 20900 && Var(50) = 1 && life <= 250
trigger1 = ctrl = 1 && Var(40) = 0

;Tests
[State -1, Test]
type = Null
triggerall = roundstate = 2
trigger1 = command = "s" && ctrl = 1




























