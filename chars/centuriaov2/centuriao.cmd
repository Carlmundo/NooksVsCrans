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


;-| Artificial Intelligence |--------------------------------------------------------

;-| AI |------------------------------------------------------
[Command]
name = "CPU1" 
command = U, D, F, U, D, F 
time = 0
 
[Command]
name = "CPU2"
command = U, B, F, U, D, F
time = 0
 
[Command]
name = "CPU3"
command = U, D, D, U, D, F
time = 0
 
[Command]
name = "CPU4"
command = U, F, U, B, U, D, F
time = 0
 
[Command]
name = "CPU5"
command = B, B, B, U, B, U, D, F
time = 0
 
[Command]
name = "CPU6"
command = U, D, B, U, B, U, D, F
time = 0
 
[Command]
name = "CPU7"
command = F, F, B, U, B, U, D, F
time = 0
 
[Command]
name = "CPU8"
command = U, D, U, U, B, U, D, F
time = 0
 
[Command]
name = "CPU9"
command = F, B, B, U, B, U, D, F
time = 0
 
[Command]
name = "CPU10"
command = F, F, B, B, U, B, U, D, F
time = 0

[Command]
name = "CPU11"
command = a, x, F, D, a, a, D
time = 0
   
[Command]
name = "CPU12"
command = a, a, D, a, a, a, b
time = 0
   
[Command]
name = "CPU13"
command = a, a, b, D, F, b, x
time = 0
   
[Command]
name = "CPU14"
command = y, a, F, b, B, y, a
time = 0
   
[Command]
name = "CPU15"
command = a, b, x, y, y, b, b
time = 0
   
[Command]
name = "CPU16"
command = b, y, y, F, b, B, B
time = 0
   
[Command]
name = "CPU17"
command = a, y, F, a, x, a, F, b
time = 0
   
[Command]
name = "CPU18"
command = a, a, b, y, x, B, x
time = 0
   
[Command]
name = "CPU19"
command = x, x, a, F, F, b, D
time = 0
   
[Command]
name = "CPU20"
command = x, x, a, F, y, a, a, F
time = 0
   
[Command]
name = "CPU21"
command = a, b, a, x, a, y, a
time = 0
   
[Command]
name = "CPU22"
command = b, y, a, F, y, a, x
time = 0
   
[Command]
name = "CPU23"
command = x, a, y, y, x, B, B
time = 0
   
[Command]
name = "CPU24"
command = a, F, F, x, B, F, x
time = 0
   
[Command]
name = "CPU25"
command = y, x, b, b, a, x, y
time = 0

[Command]
name = "CPU26"
command = ~D,UB, F, a, z, a, x, U,a+b
time = 0

[Command]
name = "CPU27"
command = ~D,UB, B, c, b, a, x, U,x+y
time = 0

[Command]
name = "CPU28"
command = ~D,UB, B, c, z, a, x, U,x+y
time = 0

[Command]
name = "CPU29"
command = ~D,DB, c, x, z,x+y+a
time = 0

[Command]
name = "CPU30"
command = ~D,DB, a, y, z,x+y
time = 0

[Command]
name = "CPU31"
command = ~D,DB, x, z, z,x+y+a
time = 0

[Command]
name = "CPU32"
command = ~D,DB, U, B, x ,x+y+z
time = 0

[Command]
name = "CPU33"
command = ~D,DB, U, B, y ,x+y+z
time = 0

[Command]
name = "CPU34"
command = ~D,DB, U, B, z ,x+y+z
time = 0

[Command]
name = "CPU35"
command = ~D,DF, F, x, U ,x+y+z
time = 0

[Command]
name = "CPU36"
command = ~D,DF, F, y, U ,x+y+z
time = 0

[Command]
name = "CPU37"
command = ~D,DF, F, z, U ,x+y+z
time = 0

[Command]
name = "CPU38"
command = ~D,DF, F, a, U ,x+y+z
time = 0

[Command]
name = "CPU39"
command = ~D,DF, F, b, U ,x+y+z
time = 0

[Command]
name = "CPU40"
command = ~D,DF, F, c, U ,x+y+z
time = 0

[Command]
name = "CPU41"
command = ~D,DB, B, a, U ,x+y+z
time = 0

[Command]
name = "CPU42"
command = ~D,DB, B, b, U ,x+y+z
time = 0

[Command]
name = "CPU43"
command = ~D,DB, B, c, U ,x+y+z
time = 0

[Command]
name = "CPU44"
command = ~D,DB, F, a, U ,x+y+z
time = 0

[Command]
name = "CPU45"
command = ~D,DB, F, b, U ,x+y+z
time = 0

[Command]
name = "CPU46"
command = ~D,DB, F, c, U ,x+y+z
time = 0

[Command]
name = "CPU47"
command = ~D,UB, F, a, U,x+y+z
time = 0

[Command]
name = "CPU48"
command = ~D,UB, F, b, U,x+y+z
time = 0

[Command]
name = "CPU49"
command = ~D,UB, F, x+c, b+a, U,x+y
time = 0








;-| Hyper Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "Triple Centurion Rolling Punch Attack"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "Triple Centurion Rolling Punch Attack"   ;Same name as above
command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "Sonic Tiger Wave"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "Sonic Tiger Wave"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "Raging Tiger"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "Raging Tiger"   ;Same name as above
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "Triple Centurion Rolling Kick Attack" 
command = ~D, DB, B, D, DB, B, a
time = 30

[Command]
name = "Triple Centurion Rolling Kick Attack"   ;Same name as above
command = ~D, DB, B, D, DB, B, b
time = 30

[Command] ;Charge back, then forward, back again, then forward + x
name = "Titan Fury"
command = ~50$B, F, B, F, x
time = 30

[Command] ;Charge back, then forward, back again, then forward + y
name = "Titan Fury" ; same name as above
command = ~50$B, F, B, F, y
time = 30

[Command]
name = "Rise graves"
command = ~D, DF, F, D, DF, F, z
time = 30

[Command]
name = "Golden Form"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "Golden Form"   ;Same name as above
command = ~D, DB, B, D, DB, B, y
time = 30



;-| Special Motions |------------------------------------------------------

[Command]
name = "digsupesq"
command = UF

[Command]
name = "digsupdir"
command = UB

[Command]
name = "diginfesq"
command = DF

[Command]
name = "diginfdir"
command = DB


[Command]
name = "5x"
command = x, x, x, x, x
time = 40

[Command]
name = "5y"
command = y, y, y, y, y
time = 40

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y


[Command]
name = "tras_z"
command = ~D, DB, B, z
time = 20

[Command]
name = "magia_z"
command = ~D, DF, F, z
time = 20

[Command]
name = "meialua_xouy"
command = ~B, DB, D, DF, F, x
time = 30

[Command]
name = "meialua_xouy"
command = ~B, DB, D, DF, F, y
time = 30


[Command]
name = "magia_fraca_x"
command = ~D, DF, F, x
time = 20

[Command]
name = "magia_forte_y"
command = ~D, DF, F, y
time = 20

[Command]
name = "magia_fraca_a"
command = ~D, DF, F, a
time = 20

[Command]
name = "magia_forte_b"
command = ~D, DF, F, b
time = 20

;[Command]
;name = "magia_fraca_ar"
;command = ~D, DF, F, x
;time = 20

;[Command]
;name = "magia_forte_ar"
;command = ~D, DF, F, y
;time = 20

[Command]
name = "fire kick"
command = ~D, DB, B, a
time = 20

[Command]
name = "strong fire kick"
command = ~D, DB, B, b
time = 20


[Command]
name = "tras_AouB"
command = ~D, DB, B, a
time = 20

[Command]
name = "tras_AouB"
command = ~D, DB, B, b
time = 20


[Command]
name = "Coice"
command = x+y
time = 20



[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+b


[Command] ;Charge back, then forward + x
name = "charge_B_F_x"
command = ~50$B, F, x
time = 10

[Command] ;Charge back, then forward + y
name = "charge_B_F_y"
command = ~50$B, F, y
time = 10


[Command] 
name = "Flash Kick"
command = ~F, D, DF, a ;~20$D, U, a
;time = 40

[Command] 
name = "Strong Flash Kick"
command = ~F, D, DF, b ;~20$D, U, b
;time = 40

[Command] 
name = "Jaw Breaker"
command = F, a
;time = 40

[Command] 
name = "Strong Jaw Breaker"
command = F, b
;time = 40

[Command] 
name = "Shoryuken"
command = ~F, D, DF, x 
;time = 40

[Command] 
name = "Strong Shoryuken"
command = ~F, D, DF, y 
;time = 40


[Command] 
name = "Claws"
command = F, y 



[Command] 
name = "Falling_Fireball"
command = ~D, DB, B, x 
;time = 40

[Command] 
name = "Strong_Falling_Fireball"
command = ~D, DB, B, y 
;time = 40

[Command] 
name = "magia_tras_chute_fraco"
command = ~D, DB, B, a 
;time = 40

[Command] 
name = "magia_tras_chute_forte"
command = ~D, DB, B, b 
;time = 40


[Command] 
name = "Slide Kick"
command = F, F, a ;D+F, a 

[Command] 
name = "Strong Slide Kick"
command = F, F, b ;D+F, b 
;time = 40

[Command] 
name = "Bear Heavy attack"
command = D, b 


;[Command] 
;name = "Throws"
;command = F+y



;-| Super Jump |--------------------------------------------------------------
[command]
name = "DU"
command = ~$D,U
time = 15
[command]
name = "DUF"
command = ~$D,UF
time = 15
[command]
name = "DUB"
command = ~$D,UB
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

[command]
name = "power_charge"
command = /x
time = 1

[Command]
name = "power_charge1"
command = /y
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

;===========================================================================


; Artificial Intelligence


; AI switch -> ON
[State -1, Activate AI]
type = Varset
triggerall = var(59) != 1
triggerall = var(11) != [12, 19]
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
trigger21 = command = "CPU21"
trigger22 = command = "CPU22"
trigger23 = command = "CPU23"
trigger24 = command = "CPU24"
trigger25 = command = "CPU25"
trigger26 = command = "CPU26"
trigger27 = command = "CPU27"
trigger28 = command = "CPU28"
trigger29 = command = "CPU29"
trigger30 = command = "CPU30"
trigger31 = command = "CPU31"
trigger32 = command = "CPU32"
trigger33 = command = "CPU33"
trigger34 = command = "CPU34"
trigger35 = command = "CPU35"
trigger36 = command = "CPU36"
trigger37 = command = "CPU37"
trigger38 = command = "CPU38"
trigger39 = command = "CPU39"
trigger40 = command = "CPU40"
trigger41 = command = "CPU41"
trigger42 = command = "CPU42"
trigger43 = command = "CPU43"
trigger44 = command = "CPU44"
trigger45 = command = "CPU45"
trigger46 = command = "CPU46"
trigger47 = command = "CPU47"
trigger48 = command = "CPU48"
trigger49 = command = "CPU49"
v = 59
value = 1


;[State -1, AI Activation]
;   type = varset
;   triggerall = AILevel > 2
;   triggerall = (roundstate = 2) && (var(59) = 0)
;   trigger1 = Random <= ((AILevel-2)*100)
;   v = 59
;   value = 1
   
   
;   [State -1, AI Deactivation]
;   type = varset
;   triggerall = AIlevel < 7
;   triggerall = var(59) = 1
;   trigger1 = Random > ((AILevel-2)*100)
;   trigger2 = roundstate != 2
;   v = 59
;   value = 0





[State -1, AI] ; Pets and ChickenLeg - bichinhos e montarias desabilita AI pra nao bugar
type = VarSet
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
;trigger1 = Var(11) = [12, 17]
trigger1 = Var(11) = [12, 19]
v = 59
value = 0




[State -1, AI] ; multi punch mixes part I
type = ChangeState
value = 1051 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11)<= 2 ;<------------ Valid for Human forms
triggerall = p2bodydist x = [31,60]
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != C
triggerall = p2movetype != A
triggerall = random = [0,200]
trigger1 = ctrl = 1



[State -1, AI] ; multi punch and Titan Fury mix
type = ChangeState
value = 3002 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11)< 3 ;<------------ Valid for Human forms
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = 1051 && movecontact && animtime = 0



[State -1, AI] ; multi punch and special punch mix
type = ChangeState
value = 1002 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11)<= 2 ;<------------ Valid for Human forms
triggerall = statetype != A
triggerall = power < 1000
trigger1 = stateno = 1051 && movecontact && animtime = 0




[State -1, AI] ; Joelhada
type = ChangeState
value = 630 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11) = 2 
triggerall = statetype = A
triggerall = statetype != S
triggerall = statetype != C
triggerall = random = [0,200]
triggerall = p2statetype != A
triggerall = p2bodydist y > 0
triggerall = p2bodydist x = [-20,20]
trigger1 = ctrl = 1



[State -1, AI] ; Tiger frontal sonic kick in the air
type = ChangeState
value = 30293 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11) = 4 
triggerall = statetype = A
triggerall = statetype != S
triggerall = statetype != C
triggerall = random = [0,200]
triggerall = p2statetype = A
triggerall = p2bodydist x <= 40
trigger1 = ctrl = 1




[State -1, AI] ; Choque dragao 
type = ChangeState
value = 60215 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11) = 6 
triggerall = statetype = A
triggerall = statetype != S
triggerall = statetype != C
triggerall = random = [0,200]
triggerall = p2bodydist x = [-20,20]
triggerall = PrevStateNo != 60215
triggerall = p2movetype != H
trigger1 = ctrl = 1



[State -1, AI] ; Eagle close attack 
type = ChangeState
value = 205 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11) = 9 
triggerall = statetype = A
triggerall = statetype != S
triggerall = statetype != C
triggerall = random = [0,200]
triggerall = p2bodydist x <= 30 
triggerall = PrevStateNo != 205
triggerall = p2movetype != H
trigger1 = ctrl = 1



[State -1, AI] ; Baforada petrificante perto Urso 
type = ChangeState
value = 31029 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11) = 5 
triggerall = statetype = S
triggerall = random = [0,200]
triggerall = p2bodydist x < 20
triggerall = PrevStateNo != 31029
triggerall = p2movetype != H
triggerall = p2statetype != A
triggerall = NumProj = 0
trigger1 = ctrl = 1



[State -1, AI] ; Baforada petrificante Crouch perto Urso 
type = ChangeState
value = 907 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11) = 5 
triggerall = statetype = C
triggerall = random = [0,200]
triggerall = p2bodydist x < 20
triggerall = PrevStateNo != 907
triggerall = p2movetype != H
triggerall = p2statetype != A
triggerall = NumProj = 0
trigger1 = ctrl = 1



[State -1, AI] ; Solta hyper no oponente petrificado ou se estiver proximo
type = ChangeState
value = 906 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11) = 5 
triggerall = statetype != A
triggerall = random = [0,500]
triggerall = power >= 1000
triggerall = ctrl = 1
triggerall = p2statetype != L
trigger1 = stateno = 31029 && movecontact && animtime = 0
trigger2 = stateno = 907 && movecontact && animtime = 0
trigger3 = p2bodydist x <= 30
trigger3 = p2statetype != A




[State -1, AI] ; Veneno Cobra de perto 
type = ChangeState
value = 273 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11) = 7 
triggerall = statetype = S
triggerall = random = [0,200]
triggerall = p2bodydist x < 20
triggerall = PrevStateNo != 273
triggerall = p2movetype != H
triggerall = p2statetype != A
triggerall = NumProj = 0
trigger1 = ctrl = 1



[State -1, AI] ; Veneno Cobra de perto abaixado
type = ChangeState
value = 274 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11) = 7 
triggerall = statetype = C
triggerall = random = [0,200]
triggerall = p2bodydist x < 20
triggerall = PrevStateNo != 274
triggerall = p2movetype != H
triggerall = p2statetype != A
triggerall = NumProj = 0
trigger1 = ctrl = 1
trigger2 = ctrl = 1
trigger2 = stateno = 273 && movecontact ;&& animtime = 0



[State -1, AI] ; Especial perto Escorpiao 
type = ChangeState
value = 100281 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11) = 10 
triggerall = statetype = S
triggerall = random = [0,200]
triggerall = p2bodydist x < 20
triggerall = PrevStateNo != 100281
triggerall = p2movetype != H
triggerall = p2statetype != A
triggerall = NumProj = 0
trigger1 = ctrl = 1








[State -1, AI] ; investida diagonal 3rd human form
type = ChangeState
value = 21060 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11) = 2 
triggerall = statetype = A
triggerall = statetype != S
triggerall = statetype != C
triggerall = random = [0,200]
triggerall = p2statetype != A
triggerall = p2bodydist y > 0
triggerall = p2bodydist x = [21,39]
trigger1 = ctrl = 1


[State -1, AI] ; investida diagonal aberta 3rd human form
type = ChangeState
value = 21061 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11) = 2 
triggerall = statetype = A
triggerall = statetype != S
triggerall = statetype != C
triggerall = random = [0,200]
triggerall = p2statetype != A
triggerall = p2bodydist y > 0
triggerall = p2bodydist x >= 40 
trigger1 = ctrl = 1



[State -1, AI] ; magia aerea lobo diagonal
type = ChangeState
value = 31000 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11) = 3 
triggerall = statetype = A
triggerall = statetype != S
triggerall = statetype != C
triggerall = random = [0,200]
triggerall = p2statetype != A
triggerall = p2movetype != H
triggerall = p2bodydist y > 0
triggerall = p2bodydist x = [20,40]
triggerall = PrevStateNo != 31000
triggerall = NumProj = 0
trigger1 = ctrl = 1



[State -1, AI] ; magia aerea lobo diagonal aberta
type = ChangeState
value = 31001 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11) = 3 
triggerall = statetype = A
triggerall = statetype != S
triggerall = statetype != C
triggerall = random = [0,200]
triggerall = p2statetype != A
triggerall = p2movetype != H
triggerall = p2bodydist y > 0
triggerall = p2bodydist x >= 41 
triggerall = PrevStateNo != 31000
triggerall = NumProj = 0
trigger1 = ctrl = 1



[State -1, Followup jump attack with crouch hard kick]
type = ChangeState
value = 440 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = (Ctrl) && (p2movetype = H)                      ;opponent has been hit
triggerall = (p2bodydist X <= 25)                              ;close to opponent
triggerall = Prevstateno = 50                                  ;falling from attack
triggerall = statetype != A
triggerall = random = [0,200]
trigger1 = Var(11) = 0
trigger2 = Var(11) = 1
trigger3 = Var(11) = 3
trigger4 = Var(11) = 4
trigger5 = Var(11) = 5
trigger6 = Var(11) = 7
trigger7 = Var(11) = 8
trigger8 = Var(11) = 10
   

[State -1, Followup jump attack with crouch light kick]
type = ChangeState
value = 430 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = (Ctrl) && (p2movetype = H)                      ;opponent has been hit
triggerall = (p2bodydist X <= 25)                              ;close to opponent
triggerall = Prevstateno = 50                                  ;falling from attack
triggerall = statetype != A
triggerall = random = [0,200]
trigger1 = Var(11) = 2




[State -1, AI] ; Pisada Rino
type = ChangeState
value = 640 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11) = 8 
triggerall = statetype = A
triggerall = statetype != S
triggerall = statetype != C
triggerall = random = [0,200]
triggerall = p2statetype != A
triggerall = p2bodydist y > 0
triggerall = p2bodydist x = [-20,20]
trigger1 = ctrl = 1



[State -1, AI] ; Bundada Urso
type = ChangeState
value = 50631 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11) = 5 
triggerall = statetype = A
triggerall = statetype != S
triggerall = statetype != C
triggerall = random = [0,200]
triggerall = p2statetype != A
triggerall = p2bodydist y > 0
triggerall = p2bodydist x = [-20,20]
trigger1 = ctrl = 1



;[State -1, AI] ; Voadora Sapo 
;type = ChangeState
;value = 640 ;<----------------------- State no. of the animation you want the CPU to perform
;triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
;triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = statetype = A
;triggerall = statetype != S
;triggerall = statetype != C
;;triggerall = random = [0,500]
;triggerall = p2bodydist x < 30
;triggerall = ctrl = 1
;trigger1 = Var(11) = 15 



;[State -1, AI] ; Voadora Chicken Leg 
;type = ChangeState
;value = 640 ;<----------------------- State no. of the animation you want the CPU to perform
;triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
;triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = statetype = A
;triggerall = statetype != S
;triggerall = statetype != C
;;triggerall = random = [0,500]
;triggerall = p2bodydist x = [-20, 20]
;triggerall = ctrl = 1
;trigger1 = Var(11) = 18 
;trigger2 = Var(11) = 19



[State -1, AI] ; Poseidon Trident when powered and far from enemy
type = ChangeState
value = 1003 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11)<= 1 
triggerall = power >= 2000
triggerall = random = [0,200]
triggerall = p2statetype != A
triggerall = p2statetype != C
triggerall = p2bodydist x >= 85
trigger1 = statetype = S
trigger1 = ctrl = 1



[State -1, AI] ; Titan Bomb when powered and far from enemy
type = ChangeState
value = 3006 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11) = 2 
triggerall = power >= 1000
triggerall = random = [0,200]
triggerall = p2statetype != A
triggerall = p2bodydist x >= 85
trigger1 = statetype = S
trigger1 = ctrl = 1



[State -1, AI] ; Strong fireball when enemy is very far magia varias formas
type = ChangeState
value = 273 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,200]
triggerall = p2statetype != A
triggerall = p2statetype != C
triggerall = p2bodydist x >= 100
triggerall = statetype = S
triggerall = PrevStateNo != 273
triggerall = NumProj = 0
triggerall = ctrl = 1
trigger1 = Var(11) = 3 
trigger2 = Var(11) = 4
trigger3 = Var(11) = 8
trigger4 = Var(11) = 10



[State -1, AI] ; Strong fireball when enemy is very far and crouch
type = ChangeState
value = 274 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,200]
triggerall = p2statetype != A
triggerall = p2statetype != S
triggerall = p2statetype = C
triggerall = p2bodydist x >= 100
triggerall = PrevStateNo != 274
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = NumProj = 0
trigger1 = Var(11) = 3 
trigger2 = Var(11) = 4
trigger3 = Var(11) = 8
trigger4 = Var(11) = 10


[State -1, AI] ; Strong fireball Dragon when enemy is very far
type = ChangeState
value = 277 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,150]
triggerall = p2bodydist x >= 100
triggerall = statetype = A
triggerall = p2movetype != H
trigger1 = PrevStateNo != 277
trigger1 = NumProj = 0
trigger1 = ctrl = 1
trigger1 = Var(11) = 6 


[State -1, AI] ; Dragon spit fire when enemy is very far
type = ChangeState
value = 285 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,150]
triggerall = p2bodydist x >= 100
triggerall = statetype = A
triggerall = p2movetype != H
trigger1 = PrevStateNo != 285
trigger1 = NumProj = 0
trigger1 = ctrl = 1
trigger1 = Var(11) = 6 



[State -1, AI] ; Strong fireball Eagle when enemy is far
type = ChangeState
value = 268 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,150]
triggerall = p2bodydist x >= 70
triggerall = statetype = A
triggerall = p2movetype != H
trigger1 = PrevStateNo != 268
trigger1 = PrevStateNo != 3007
trigger1 = NumProj = 0
trigger1 = ctrl = 1
trigger1 = Var(11) = 9 



[State -1, AI] ; Rino Earthquake when very far from enemy
type = ChangeState
value = 1019 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11) = 8 
triggerall = random = [0,150]
triggerall = p2statetype != A
triggerall = p2bodydist x >= 100
triggerall = PrevStateNo != 1019
trigger1 = statetype = S
trigger1 = ctrl = 1



[State -1, AI] ; when enemy is little bit far - Wolf Slash Attack
type = ChangeState
value = 31008 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,150]
triggerall = p2statetype != C
triggerall = p2bodydist x = [80,99]
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = Var(11) = 3


[State -1, AI] ; when enemy is little bit far - Tiger Slash Attack
type = ChangeState
value = 31005 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,150]
triggerall = p2statetype != C
triggerall = p2bodydist x = [80,99]
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = Var(11) = 4




[State -1, AI] ; Middle Range - Wolf
type = ChangeState
value = 282 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,200]
triggerall = p2statetype != A
triggerall = p2bodydist x = [50,79]
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = Var(11) = 3



[State -1, AI] ; Middle Range - Wolf second hit
type = ChangeState
value = 30279 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,200]
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = stateno = 282 && movecontact
trigger1 = Var(11) = 3





[State -1, AI] ; when enemy is far - Cobra
type = ChangeState
value = 30290 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,200]
triggerall = p2statetype != A
triggerall = p2bodydist x >= 50
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = Var(11) = 7 


[State -1, AI] ; when enemy is little bit far - Rino
type = ChangeState
value = 30291 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,150]
triggerall = p2statetype != A
triggerall = p2bodydist x = [60,100]
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = Var(11) = 8




[State -1, AI] ; when enemy is close and Rino is crouch
type = ChangeState
value = 410 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,150]
triggerall = p2statetype != A
triggerall = p2bodydist x <= 30
triggerall = statetype = C
triggerall = ctrl = 1
trigger1 = Var(11) = 8


[State -1, AI] ; when enemy is close and Rino is crouch - Mix combo
type = ChangeState
value = 31019 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,150]
triggerall = statetype != A
trigger1 = stateno = 410 && movecontact && animtime = 0
trigger1 = Var(11) = 8





[State -1, AI] ; when enemy is close - Rino
type = ChangeState
value = 1018 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,150]
triggerall = p2statetype != A
triggerall = p2statetype != C
triggerall = p2bodydist x <= 30
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = Var(11) = 8



[State -1, AI] ; when enemy is close - Rino - mix
type = ChangeState
value = 30291 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = p2statetype != A
triggerall = p2statetype != C
triggerall = statetype = S
trigger1 = stateno = 1018 && movecontact && animtime = 0
trigger1 = Var(11) = 8


[State -1, AI] ; when enemy is close - Rino - mix second part
type = ChangeState
value = 31019 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = p2statetype != C
triggerall = statetype = S
trigger1 = stateno = 30291 && movecontact && animtime = 0
;trigger1 = stateno = 31021 && movecontact && animtime = 0
trigger1 = Var(11) = 8






[State -1, AI] ; Use Rise Graves when powered
type = ChangeState
value = 286 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11)<= 2
triggerall = NumHelper = 0
triggerall = power >= 1000
triggerall = random = [0,100]
triggerall = movetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1




[State -1, AI] ; throw stone when opponent is far
type = ChangeState
value = 270 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11)<= 1 ;<------------ Valid for Human forms
triggerall = p2bodydist x = [70,99]
triggerall = random = [0,150]
triggerall = PrevStateNo != 270
triggerall = NumProj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1



[State -1, AI] ; rolling punch
type = ChangeState
value = 1010 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11) = 0 
triggerall = p2bodydist x = [70,90]
triggerall = random = [0,100]
triggerall = p2statetype != A
triggerall = PrevStateNo != 1010
trigger1 = statetype != A
trigger1 = ctrl = 1


[State -1, AI] ; Triple rolling punch when powered and far from enemy
type = ChangeState
value = 3000 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11) = 0 
triggerall = power >= 1000
triggerall = random = [0,100]
triggerall = p2statetype != A
triggerall = p2bodydist x = [70, 85]
trigger1 = statetype != A
trigger1 = ctrl = 1




[State -1, AI] ; throw stone when opponent is very far
type = ChangeState
value = 273 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11)<= 1 ;<------------ Valid for Human forms
triggerall = p2bodydist x >= 100
triggerall = random = [0,150]
triggerall = PrevStateNo != 273
triggerall = NumProj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1




[State -1, AI] ; skull crusher when opponent is very far
type = ChangeState
value = 21053 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11) = 2 
triggerall = p2bodydist x >= 150
triggerall = random = [0,150]
trigger1 = statetype = S
trigger1 = ctrl = 1




[State -1, AI] ; when enemy is close - 2nd form - Multiple Flash Kicks
type = ChangeState
value = 11001 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,150]
triggerall = power >= 1000
triggerall = p2bodydist x <= 30
triggerall = statetype = S
triggerall = PrevStateNo != 11001
triggerall = ctrl = 1
triggerall = Var(11) = 1
trigger1 = p2statetype = S
trigger2 = p2statetype = A



[State -1, AI] ; when enemy is close in the ground - Wolf when powered
type = ChangeState
value = 3023 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,500]
triggerall = power >= 1000
triggerall = p2bodydist x <= 40
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = PrevStateNo != 3023
triggerall = ctrl = 1
triggerall = Var(11) = 3
trigger1 = p2statetype != A


[State -1, AI] ; when enemy is close in the air - Wolf when powered
type = ChangeState
value = 3033 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,200]
triggerall = power >= 1000
triggerall = p2bodydist x <= 30
triggerall = statetype = S
triggerall = PrevStateNo != 3033
triggerall = ctrl = 1
triggerall = Var(11) = 3
trigger1 = p2statetype = A


[State -1, AI] ; when enemy is paralysed in the air - Wolf when powered
type = ChangeState
value = 3023 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,500]
triggerall = power >= 1000
triggerall = stateno = 3033 && movecontact && animtime = 0
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = Var(11) = 3


[State -1, AI] ; when enemy is paralysed in the air - Wolf not powered anymore
type = ChangeState
value = 31012 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,500]
triggerall = power < 1000
triggerall = stateno = 3033 && movecontact && animtime = 0
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = Var(11) = 3



[State -1, AI] ; when enemy is far - Dragon when powered
type = ChangeState
value = 291 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,500]
triggerall = power >= 1000
triggerall = statetype = A
triggerall = PrevStateNo != 291
triggerall = numproj = 0
triggerall = ctrl = 1
triggerall = Var(11) = 6
trigger1 = p2bodydist x >= 40


[State -1, AI] ; when enemy is close - Dragon when powered
type = ChangeState
value = 292 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,500]
triggerall = power >= 1500
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = Var(11) = 6
trigger1 = p2bodydist x < 40


[State -1, AI] ; when enemy is close - Tiger when powered
type = ChangeState
value = 3032 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,500]
triggerall = power >= 1000
triggerall = p2bodydist x <= 30
triggerall = statetype = S
triggerall = PrevStateNo != 3032
triggerall = p2movetype != A
triggerall = p2statetype != L
triggerall = ctrl = 1
trigger1 = Var(11) = 4



[State -1, AI] ; when enemy is close - Rino when powered
type = ChangeState
value = 3070 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,500]
triggerall = power >= 1000
triggerall = p2bodydist x <= 30
triggerall = statetype = S
triggerall = PrevStateNo != 3070
triggerall = p2statetype != L
triggerall = ctrl = 1
trigger1 = Var(11) = 8



[State -1, AI] ; Snake when powered
type = ChangeState
value = 3071 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,500]
triggerall = power >= 1000
triggerall = statetype = S
triggerall = PrevStateNo != 3071
triggerall = ctrl = 1
triggerall = Var(11) = 7
triggerall = p2statetype != A
triggerall = p2statetype != L
trigger1 = p2bodydist x <= 30
trigger2 = p2bodydist x > 80



[State -1, AI] ; when enemy is far - Tiger when powered
type = ChangeState
value = 3021 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,500]
triggerall = power >= 1000
triggerall = statetype = S
triggerall = PrevStateNo != 3021
triggerall = ctrl = 1
triggerall = Var(11) = 4
trigger1 = p2bodydist x >= 80
trigger2 = stateno = 3032 && movecontact && animtime = 0




[State -1, AI] ; when enemy is far - Bear when powered
type = ChangeState
value = 3079 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,500]
triggerall = power >= 1000
triggerall = statetype = S
triggerall = PrevStateNo != 3079
triggerall = ctrl = 1
triggerall = Var(11) = 5
trigger1 = p2bodydist x >= 90



[State -1, AI] ; when enemy is far - Bear not powered
type = ChangeState
value = 31035 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,200]
triggerall = power < 1000
triggerall = statetype = S
triggerall = PrevStateNo != 31035
triggerall = ctrl = 1
triggerall = Var(11) = 5
trigger1 = p2bodydist x >= 90



[State -1, AI] ; when enemy is far - Eagle when powered
type = ChangeState
value = 3007 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,500]
triggerall = power >= 1000
triggerall = p2bodydist x >= 70
triggerall = statetype = A
triggerall = PrevStateNo != 3007
triggerall = ctrl = 1
trigger1 = Var(11) = 9



[State -1, AI] ; when enemy is far - Scorpion when powered
type = ChangeState
value = 3055 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,500]
triggerall = power >= 1000
triggerall = p2bodydist x >= 70
triggerall = statetype = S
triggerall = PrevStateNo != 3055
triggerall = ctrl = 1
trigger1 = Var(11) = 10





[State -1, AI] ; Calls Chicken Leg 
type = ChangeState
value = 9100 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,500]
triggerall = power >= 2000
triggerall = p2bodydist x > 60
triggerall = statetype = S
triggerall = PrevStateNo != 9100
triggerall = ctrl = 1
trigger1 = Var(11) < 2



[State -1, AI] ; Calls Chicken Stinger 
type = ChangeState
value = 9600 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,500]
triggerall = power >= 2000
triggerall = p2bodydist x > 60
triggerall = statetype = S
triggerall = PrevStateNo != 9600
triggerall = ctrl = 1
trigger1 = Var(11) = 2



[State -1, AI] ; Golden Form 
type = ChangeState
value = 905 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,500]
triggerall = Var(11) >=3
triggerall = Var(11) <= 10
triggerall = p2bodydist x > 60
triggerall = statetype = S
triggerall = PrevStateNo != 905
triggerall = p2movetype != A
triggerall = ctrl = 1
trigger1 = power >= 2000



;[State -1, AI] ; when enemy is close - Chicken Leg when powered
;type = ChangeState
;value = 904 ;<----------------------- State no. of the animation you want the CPU to perform
;triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
;triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
;;triggerall = random = [0,500]
;triggerall = power >= 1000
;triggerall = p2bodydist x <= 30
;triggerall = statetype = S
;triggerall = PrevStateNo != 904
;triggerall = ctrl = 1
;trigger1 = Var(11) = 18
;trigger2 = Var(11) = 19


;[State -1, AI] ; when enemy is close - Chicken Leg not powered
;type = ChangeState
;value = 240 ;<----------------------- State no. of the animation you want the CPU to perform
;triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
;triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
;;triggerall = random = [0,200]
;triggerall = power < 1000
;triggerall = p2bodydist x <= 30
;triggerall = statetype = S
;triggerall = ctrl = 1
;trigger1 = Var(11) = 18
;trigger2 = Var(11) = 19




[State -1, AI] ; when you are running - Ombrada
type = ChangeState
value = 102 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = random = [0,200]
triggerall = p2bodydist x > 40
triggerall = p2statetype != A
triggerall = p2statetype != C
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = PrevStateNo = 100
trigger1 = Var(11) <= 1






;[State -1, AI] ; when enemy is far - Chicken Leg part I
;type = ChangeState
;value = 100 ;<----------------------- State no. of the animation you want the CPU to perform
;triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
;triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
;;triggerall = random = [0,200]
;triggerall = p2bodydist x > 30
;;triggerall = p2statetype != A
;triggerall = statetype = S
;triggerall = ctrl = 1
;trigger1 = Var(11) = 18
;trigger2 = Var(11) = 19




;[State -1, AI] ; when enemy is far - Chicken Leg 1st form
;type = ChangeState
;value = 181000 ;<----------------------- State no. of the animation you want the CPU to perform
;triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
;triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
;;triggerall = random = [0,200]
;;triggerall = p2bodydist x > 30
;;triggerall = p2statetype != A
;triggerall = statetype = S
;triggerall = ctrl = 1
;triggerall = StateNo = 100
;trigger1 = Var(11) = 18



;[State -1, AI] ; when enemy is far - Chicken Leg 2nd form
;type = ChangeState
;value = 191000 ;<----------------------- State no. of the animation you want the CPU to perform
;triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
;triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
;;triggerall = random = [0,200]
;;triggerall = p2bodydist x > 30
;;triggerall = p2statetype != A
;triggerall = statetype = S
;triggerall = ctrl = 1
;triggerall = StateNo = 100
;trigger1 = Var(11) = 19



[State -1, AI] ; backward kick to surprise enemy
type = ChangeState
value = 1016 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11) = 0 
triggerall = p2bodydist x = [3,20]
triggerall = p2statetype != A
triggerall = statetype != A
triggerall = random = [0,200]
trigger1 = ctrl = 1




[State -1, AI] ; throw enemy
type = ChangeState
value = 850 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11) <= 1 
triggerall = p2bodydist x < 3
triggerall = p2statetype != A
triggerall = p2statetype != C
triggerall = statetype = S
triggerall = p2movetype != H
triggerall = p2movetype != A
triggerall = p2statetype != L
triggerall = random = [0,200]
trigger1 = p2name != "Centurion"
trigger1 = ctrl = 1



[State -1, AI] ; throw enemy 3rd form
type = ChangeState
value = 851 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11) = 2 
triggerall = p2bodydist x < 3
triggerall = p2statetype != A
triggerall = p2statetype != C
triggerall = statetype = S
triggerall = p2movetype != H
triggerall = p2movetype != A
triggerall = p2statetype != L
triggerall = random = [0,200]
trigger1 = p2name != "Centurion"
trigger1 = ctrl = 1



[State -1, AI] ; Close range Colossal Punch
type = ChangeState
value = 21032 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11) = 2 
triggerall = p2bodydist x <= 30
triggerall = p2statetype != A
triggerall = p2statetype != C
triggerall = statetype = S
triggerall = p2movetype != A
triggerall = p2movetype != H
triggerall = random = [0,200]
trigger1 = ctrl = 1


[State -1, AI] ; Close range Colossal Punch - Flying Fist Mix
type = ChangeState
value = 21030 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11) = 2 
triggerall = statetype = S
triggerall = p2movetype != A
triggerall = random = [0,200]
trigger1 = stateno = 21032 && movecontact && animtime = 0




[State -1, AI] ; Close range Wolf and Tiger Punch
type = ChangeState
value = 210 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = p2bodydist x <= 20
triggerall = p2statetype != A
triggerall = p2statetype != C
triggerall = statetype = S
triggerall = p2movetype != A
triggerall = random = [0,200]
triggerall = ctrl = 1
trigger1 = var(11) = 3 
trigger2 = var(11) = 4
 

[State -1, AI] ; Claws Combo part 1
type = ChangeState
value = 296 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = statetype = S
triggerall = p2movetype != A
triggerall = stateno = 210 && movecontact && animtime = 0
trigger1 = var(11) = 3 
trigger2 = var(11) = 4


[State -1, AI] ; Shoryuken Combo part 2 Wolf
type = ChangeState
value = 31012 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = statetype = S
triggerall = p2movetype != A
triggerall = stateno = 296 && movecontact 
trigger1 = var(11) = 3 


[State -1, AI] ; Slash Combo part 2 Tiger
type = ChangeState
value = 31005 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = statetype = S
triggerall = p2movetype != A
triggerall = stateno = 296 && movecontact
trigger1 = var(11) = 4 




[State -1, AI] ; slide kick
type = ChangeState
value = 11012 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11) = 0 
triggerall = p2bodydist x = [61,69]
triggerall = p2statetype != A
triggerall = statetype != A
triggerall = p2movetype != A
trigger1 = ctrl = 1


[State -1, AI] ; Jaw Breaker and Flash Kick combo
type = ChangeState
value = 11015 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11) = 1 
triggerall = p2bodydist x <= 30
triggerall = statetype != A
triggerall = random = [0,200]
triggerall = ctrl = 1
triggerall = PrevStateNo != 11000
triggerall = PrevStateNo != 11015
triggerall = PrevStateNo != 100
trigger1 = p2statetype = S



[State -1, AI] ; Jaw Breaker and Flash Kick combo part 2
type = ChangeState
value = 11000 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11) = 1 
triggerall = p2bodydist x <= 30
triggerall = statetype != A
triggerall = random = [0,200]
triggerall = ctrl = 1
trigger1 = p2statetype != C
trigger1 = stateno = 11015 && movecontact && animtime = 0




[State -1, AI] ; Flash Kick
type = ChangeState
value = 11000 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11) = 1 
triggerall = p2bodydist x <= 30
triggerall = statetype != A
triggerall = random = [0,200]
triggerall = ctrl = 1
trigger1 = PrevStateNo != 11000
trigger1 = PrevStateNo != 52
trigger1 = p2statetype = A



[State -1, AI] ; 3rd human form Shoryuken
type = ChangeState
value = 21056 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11) = 2 
triggerall = p2bodydist x <= 30
triggerall = statetype != A
triggerall = random = [0,200]
triggerall = ctrl = 1
trigger1 = PrevStateNo != 21056
trigger1 = PrevStateNo != 52
trigger1 = p2statetype = A



[State -1, AI] ; Shoryuken
type = ChangeState
value = 31012 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11) = 3 
triggerall = p2bodydist x <= 30
triggerall = statetype != A
triggerall = random = [0,200]
triggerall = ctrl = 1
trigger1 = PrevStateNo != 31012
trigger1 = PrevStateNo != 52
trigger1 = p2statetype = A



[State -1, AI] ; Tiger Shoryuken
type = ChangeState
value = 31022 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11) = 4 
triggerall = p2bodydist x <= 30
triggerall = statetype != A
triggerall = random = [0,200]
triggerall = ctrl = 1
trigger1 = PrevStateNo != 31022
trigger1 = PrevStateNo != 52
trigger1 = p2statetype = A



[State -1, AI] ; Bear Vertical Attack
type = ChangeState
value = 31025 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11) = 5
triggerall = p2bodydist x <= 30
triggerall = statetype != A
triggerall = random = [0,200]
triggerall = ctrl = 1
trigger1 = PrevStateNo != 31025
trigger1 = PrevStateNo != 52
trigger1 = p2statetype = A



[State -1, AI] ; Rino Head Shoryuken
type = ChangeState
value = 31019 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(11) = 8 
triggerall = p2bodydist x <= 30
triggerall = statetype != A
triggerall = random = [0,200]
triggerall = ctrl = 1
trigger1 = PrevStateNo != 31019
trigger1 = PrevStateNo != 52
trigger1 = p2statetype = A






[State -1, AI] ; Tries to get blue pill 
type = ChangeState
value = 1002 ;<----------------------- State no. of the animation you want the CPU to perform: RUN
triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = Var(11)<= 2
trigger1 = statetype != A
trigger1 = PrevStateNo != 1002
trigger1 = ctrl = 1
trigger1 = Var(30) > 6 ;capsula azul
trigger1 = Var(40) >= 20 ;na sua frente
trigger1 = Var(41) < 70 ;nao muito alto





;-----CAPSULA NO ALTO

;[State -1, AI] ; Tries to get blue pill in the air case 1
;type = ChangeState
;value = 40 ;<----------------------- State no. of the animation you want the CPU to perform: Jump
;triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
;triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = Var(11)<= 2
;trigger1 = statetype != A
;trigger1 = ctrl = 1
;trigger1 = Var(30) > 6 ;capsula azul
;trigger1 = Var(40) < 20 ;bem proxima
;trigger1 = Var(41) > 70 ;no ar



;[State -1, AI] ; Tries to get blue pill in the air case 2
;type = VarSet
;triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
;triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = Var(11)<= 2
;trigger1 = statetype != A
;trigger1 = Var(30) > 6 ;capsula azul
;trigger1 = Var(40) >= 20 ;na sua frente
;trigger1 = Var(41) > 70 ;no ar
;sysvar(1) = 1


;[State -1, AI] ; Tries to get blue pill in the air case 2 Part2
;type = ChangeState
;value = 40 ;<----------------------- State no. of the animation you want the CPU to perform: Jump Forward
;triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
;triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = Var(11)<= 2
;trigger1 = statetype != A
;trigger1 = Var(30) > 6 ;capsula azul
;trigger1 = Var(40) >= 20 ;na sua frente
;trigger1 = Var(41) > 70 ;no ar
;trigger1 = sysvar(1) = 1



;[State -1, AI] ; Tries to get blue pill in the air case 3
;type = VarSet
;triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
;triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = Var(11)<= 2
;trigger1 = statetype != A
;trigger1 = Var(30) > 6 ;capsula azul
;trigger1 = Var(40) < 0 ;atras de voce
;trigger1 = Var(41) > 70 ;no ar
;sysvar(1) = -1


;[State -1, AI] ; Tries to get blue pill in the air case 3 Part2
;type = ChangeState
;value = 40 ;<----------------------- State no. of the animation you want the CPU to perform: Jump Backward
;triggerall = var(59) = 1 ;<------------ AI variable that must be used in every CPU command
;triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
;triggerall = Var(11)<= 2
;trigger1 = statetype != A
;trigger1 = Var(30) > 6 ;capsula azul
;trigger1 = Var(40) < 0 ;atras de voce
;trigger1 = Var(41) > 70 ;no ar
;trigger1 = sysvar(1) = -1







;DRAGAO VOAR
;[State -1]
;type = ChangeState
;value = 7000
;trigger1 = Var(11)= 6
;trigger1 = command = "holdback"
;trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;--------------------------HYPER-MOVES--------------------------------------
;---------------------------------------------------------------------------


;Triple Centurion Rolling Punch Attack (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）
[State -1, Triple Centurion Rolling Punch Attack]
type = ChangeState
value = 3000
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Triple Centurion Rolling Punch Attack"
triggerall = power >= 1000
triggerall = Var(11)= 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------

;Sonic Tiger Wave (uses one super bar)
[State -1, Sonic Tiger Wave]
type = ChangeState
value = 3021
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Sonic Tiger Wave"
triggerall = power >= 1000
triggerall = Var(11)= 4
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != [3000,3050)
;trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------


;Dragon Flame (uses one super bar)
[State -1, Dragon Flame]
type = ChangeState
value = 291
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Sonic Tiger Wave"
triggerall = power >= 1000
triggerall = Var(11)= 6
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = hitdefattr = SC, NA, SA, HA



;===========================================================================
;---------------------------------------------------------------------------


;Raging Tiger (uses one super bar)
[State -1, Raging Tiger]
type = ChangeState
value = 3032
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Raging Tiger"
triggerall = power >= 1000
triggerall = Var(11)= 4
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != [3000,3050)
;trigger2 = movecontact


;===========================================================================
;---------------------------------------------------------------------------


;Multiple Flash Kicks (uses one super bar)
[State -1, Multiple Flash Kicks]
type = ChangeState
value = 11001
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Raging Tiger"
triggerall = power >= 1000
triggerall = Var(11)= 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA



;===========================================================================
;---------------------------------------------------------------------------


;Howl of the Werewolf (uses one super bar)
[State -1, Howl of the Werewolf]
type = ChangeState
value = 3033
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Raging Tiger"
triggerall = power >= 1000
triggerall = Var(11)= 3
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699]) || (stateno = [31011,31012])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact



;===========================================================================
;---------------------------------------------------------------------------

;Wolf Hyper Burning Charge (uses one super bar)
[State -1, Wolf Hyper Burning Charge]
type = ChangeState
value = 3023
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Sonic Tiger Wave"
triggerall = power >= 1000
triggerall = Var(11)= 3
trigger1 = statetype = S
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------

;Titan Bomb (uses one super bar)
[State -1, Titan Bomb]
type = ChangeState
value = 3006
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Sonic Tiger Wave"
triggerall = power >= 1000
triggerall = Var(11)= 2
trigger1 = statetype = S
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------

;Bear Everywhere (uses one super bar)
[State -1, Bear Everywhere]
type = ChangeState
value = 3079
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Sonic Tiger Wave"
triggerall = power >= 1000
triggerall = Var(11)= 5
trigger1 = statetype = S
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------

;Bear Smash (uses one super bar)
[State -1, Bear Smash]
type = ChangeState
value = 906
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Raging Tiger"
triggerall = power >= 1000
triggerall = Var(11)= 5
trigger1 = statetype = S
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------

;Carnivorous Worms (uses one super bar)
[State -1, Carnivorous Worms]
type = ChangeState
value = 3071
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Sonic Tiger Wave"
triggerall = power >= 1000
triggerall = Var(11)= 7
trigger1 = statetype = S
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------

;Rino Vulcan Punch (uses one super bar)
[State -1, Rino Vulcan Punch]
type = ChangeState
value = 3070
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Sonic Tiger Wave"
triggerall = power >= 1000
triggerall = Var(11)= 8
trigger1 = statetype = S
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------

;Tornado (uses one super bar)
[State -1, Tornado]
type = ChangeState
value = 3007
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Sonic Tiger Wave"
triggerall = power >= 1000
triggerall = Var(11)= 9
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------

;Death Spin (uses one super bar)
[State -1, Death Spin]
type = ChangeState
value = 3055
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Sonic Tiger Wave"
triggerall = power >= 1000
triggerall = Var(11)= 10
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------

;Death Whip - Chicken Leg(uses one super bar)
[State -1, Death Whip]
type = ChangeState
value = 904
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Sonic Tiger Wave"
triggerall = power >= 1000
triggerall = Var(11)= 18 || Var(11)= 19 
trigger1 = statetype = S
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------
;Triple Centurion Rolling Kick Attack (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）
[State -1, Triple Centurion Rolling Kick Attack]
type = ChangeState
value = 3001
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Triple Centurion Rolling Kick Attack"
triggerall = power >= 1000
triggerall = Var(11)= 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;Titan Fury (uses one super bar)
[State -1, Titan Fury]
type = ChangeState
value = 3002
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Titan Fury"
triggerall = power >= 1000
triggerall = Var(11)< 3
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;Rise graves (uses one super bar)
[State -1, Rise graves]
type = ChangeState
value = 286
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Rise graves"
triggerall = Var(11)<= 2
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A

;===========================================================================
;---------------------------------------------------------------------------
;Golden Form (uses 2 super bars)
[State -1, Golden Form]
type = ChangeState
value = 905
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Golden Form"
triggerall = Var(11)>=3
triggerall = Var(11) <= 10
triggerall = power >= 2000
triggerall = ctrl
trigger1 = statetype = S
trigger2 = Var(11) = 6 || Var(11) = 9
 

;===========================================================================
;---------------------------------------------------------------------------
; Super Jump
;-------------------------
[state -1, superjump up, fwd and back]
type = changestate
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = (command = "DU" || command = "DUF" || command = "DUB")
triggerall = statetype!= A
triggerall = Var(11) != 6 ;dragao
triggerall = Var(11) != 9 ;aguia
triggerall = Var(11) < 11 ;pets/chicken leg
trigger1 = ctrl 
value = 900

;===========================================================================

;Slide Kick
[State -1, Slide Kick]
type = ChangeState
value = 11012
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = Var(11) <= 1
triggerall = command = "Slide Kick"
triggerall = PrevStateNo != 11012
;trigger1 = PrevStateNo = 10011
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = PrevStateNo = 10010
;trigger2 = movecontact
;trigger2 = (stateno = [200,210])


;Strong Slide Kick
[State -1, Strong Slide Kick]
type = ChangeState
value = 11013
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = Var(11) <= 1
triggerall = command = "Strong Slide Kick"
triggerall = PrevStateNo != 11013
;trigger1 = PrevStateNo = 10011
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = PrevStateNo = 10010
;trigger2 = movecontact
;trigger2 = (stateno = [200,210])


;---------------------------------------------------------------------------

;Fast Multi Punch
[State -1, Fast Multi Punch]
type = ChangeState
value = 1050
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "5x"
triggerall = Var(11)< 3
triggerall = PrevStateNo != 1050
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,210])
;trigger2 = movecontact


;---------------------------------------------------------------------------
;Strong Multi Punch 
[State -1, Strong Multi Punch]
type = ChangeState
value = 1050
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "5y"
triggerall = Var(11)< 3
triggerall = PrevStateNo != 1050
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,210])
;trigger2 = movecontact


;---------------------------------------------------------------------------
;Light Special Punch
[State -1, Light Special Punch]
type = ChangeState
value = 1001
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "charge_B_F_x"
triggerall = Var(11)< 3
triggerall = PrevStateNo != 1001
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210])
;trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Strong Special Punch 
[State -1, Strong Special Punch]
type = ChangeState
value = 1002
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "charge_B_F_y"
triggerall = Var(11)< 3
triggerall = PrevStateNo != 1002
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210])
;trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------

;Rolling Frontal Attack (Bear)
[State -1, Rolling Frontal Attack]
type = ChangeState
value = 31027
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "charge_B_F_x"
triggerall = Var(11) = 5 
triggerall = PrevStateNo != 31027
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210])
trigger2 = movecontact

;---------------------------------------------------------------------------

;Strong Rolling Frontal Attack (Bear)
[State -1, Strong Rolling Frontal Attack]
type = ChangeState
value = 31035
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "charge_B_F_y"
triggerall = Var(11) = 5
triggerall = PrevStateNo != 31029
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210])
trigger2 = movecontact

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;Ombrada Simples
[State -1, Ombrada Simples]
type = ChangeState
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
value = 103 ;var(11)*10000+103
triggerall = Var(11) <= 1
triggerall = command = "meialua_xouy"
;triggerall = command != "magia_fraca_x"
;triggerall = command != "magia_forte_y"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Fast Centurion Rolling Punch Attack (1/3 super bar)
;速いカンフー突き手（ゲージレベル１／３）
[State -1, Fast Centurion Rolling Punch Attack]
type = ChangeState
value = 1020
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "QCB_xy"
triggerall = power >= 330
triggerall = Var(11)= 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,410]) 
;trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Centurion Rolling Punch Attack
;カンフー突き手（弱）
[State -1, Centurion Rolling Punch Attack]
type = ChangeState
value = 1000
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Falling_Fireball"
triggerall = command != "meialua_xouy"
triggerall = Var(11)= 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,410]) 
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Strong Centurion Rolling Punch Attack
;カンフー突き手（強）
[State -1, Strong Centurion Rolling Punch Attack]
type = ChangeState
value = 1010
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Strong_Falling_Fireball"
triggerall = command != "meialua_xouy"
triggerall = Var(11)= 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,410])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Dragon Fire ball
;カンフー突き手（弱）
[State -1, Dragon Fire ball]
type = ChangeState
value = 280
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Falling_Fireball"
triggerall = command != "meialua_xouy"
triggerall = Var(11)= 6
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = (stateno = [200,210]) || (stateno = [400,410]) || (stateno = [600,610])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact


;---------------------------------------------------------------------------
;Strong Dragon Fire ball
;カンフー突き手（強）
[State -1, Strong Dragon Fire ball]
type = ChangeState
value = 285
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Strong_Falling_Fireball"
triggerall = command != "meialua_xouy"
triggerall = Var(11)= 6
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = (stateno = [200,210]) || (stateno = [400,410]) || (stateno = [600,610])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------


;Fire Dragons Hyper Move
[State -1, Fire Dragons]
type = ChangeState
value = 292
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = power >= 1500
triggerall = Var(11) = 6
triggerall = NumHelper(292) <= 1
trigger1 = command = "Raging Tiger"
trigger1 = statetype = A
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Flying Fist - 3rd Human Form
;カンフー突き手（弱）
[State -1, Flying Fist]
type = ChangeState
value = 21030
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Falling_Fireball"
triggerall = command != "meialua_xouy"
triggerall = Var(11)= 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410]) 
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Colossal Punch - 3rd Human Form
;カンフー突き手（強）
[State -1, Colossal Punch]
type = ChangeState
value = 21032
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Strong_Falling_Fireball"
triggerall = command != "meialua_xouy"
triggerall = Var(11)= 2
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Centurion Rolling Kick Attack
;カンフー突き手（弱）
[State -1, Centurion Rolling Kick Attack]
type = ChangeState
value = 1011
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_tras_chute_fraco"
triggerall = Var(11)= 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,410]) || stateno = 430
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Strong Centurion Rolling Kick Attack
;カンフー突き手（弱）
[State -1, Strong Centurion Rolling Kick Attack]
type = ChangeState
value = 1012
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_tras_chute_forte"
triggerall = Var(11)= 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,410]) || stateno = 430
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Naji Spike Roll Attack
;カンフー突き手（弱）
[State -1, Naji Spike Roll Attack]
type = ChangeState
value = 30286
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_tras_chute_fraco"
triggerall = Var(11)= 7
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Strong Naji Spike Roll Attack
;カンフー突き手（弱）
[State -1, Strong Naji Spike Roll Attack]
type = ChangeState
value = 30290
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_tras_chute_forte"
triggerall = Var(11)= 7
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------


[State -1, Quake Rino]
type = ChangeState
value = 1019
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Falling_Fireball" || command = "Strong_Falling_Fireball"
triggerall = Var(11)= 8
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Rino Head Attack
;カンフー突き手（弱）
[State -1, Rino Head Attack]
type = ChangeState
value = 30287
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_tras_chute_fraco"
triggerall = Var(11)= 8
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Strong Rino Head Attack
;カンフー突き手（弱）
[State -1, Strong Rino Head Attack]
type = ChangeState
value = 30291
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_tras_chute_forte"
triggerall = Var(11)= 8
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Lighting Bolt - Scorpion
;カンフー突き手（弱）
[State -1, Lighting Bolt]
type = ChangeState
value = 100281
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
trigger1 = command = "magia_tras_chute_forte"
trigger2 = command = "magia_tras_chute_fraco"
triggerall = Var(11)= 10
triggerall = statetype != A
triggerall = ctrl


;---------------------------------------------------------------------------

;Wolf Fire Kick
;カンフー突き手（弱）
;[State -1, fire kick]
;type = ChangeState
;value = 280
;triggerall = command = "fire kick"
;triggerall = Var(11)= 3
;trigger1 = statetype = S
;trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;Ataque de Fogo - Wolf Charge Master
[State -1, Master Wolf Charge]
type = ChangeState
value = 30285
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = Var(11) = 3
triggerall = command = "fire kick"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;Ataque do Tigre - Sonic Frontal Kick
[State -1, Sonic Frontal Kick]
type = ChangeState
value = 30289
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = Var(11) = 4
triggerall = command = "fire kick" || command = "strong fire kick"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Ataque de Fogo - Wolf Charge Mega
[State -1, Mega Wolf Charge]
type = ChangeState
value = 30284
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = Var(11) = 3
triggerall = command = "Falling_Fireball"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;Wolf Master Charge Air
;カンフー突き手（弱）
[State -1, fire kick]
type = ChangeState
value = 281
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "fire kick"
triggerall = Var(11)= 3
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;Tiger Sonic Frontal Kick Air
;カンフー突き手（弱）
[State -1, fire kick]
type = ChangeState
value = 30293
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "fire kick" || command = "strong fire kick"
triggerall = Var(11)= 4
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;Wolf Fire kick - Arcade
;カンフー突き手（弱）
[State -1, strong fire kick]
type = ChangeState
value = 282
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = Var(11)= 3
triggerall = command = "strong fire kick" || command = "Strong_Falling_Fireball"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;;Wolf Fire kick - Arcade (second hit)
;[State -1, strong fire kick second hit]
;type = ChangeState
;value = 284
;triggerall = Var(11)= 3
;trigger1 = statetype = S
;trigger1 = command = "strong fire kick" || command = "Strong_Falling_Fireball"
;trigger1 = ctrl = 1
;trigger1 = PrevStateNo = 282
;trigger1 = movehit = 1



;---------------------------------------------------------------------------

;Wolf Strong fire kick Air
;カンフー突き手（弱）
[State -1, strong fire kick]
type = ChangeState
value = 283
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "strong fire kick"
triggerall = Var(11)= 3
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;Magia fraca Dragao
;カンフー突き手（弱）
[State -1, Magia Fraca]
type = ChangeState
value = 276
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_fraca_x"
triggerall = Var(11)= 6
triggerall = numproj = 0
trigger1 = statetype = A
;trigger1 = statetype = S
;trigger1 = statetype = C
trigger1 = ctrl = 1
;trigger2 = (stateno = [200,210]) || (stateno = [400,410]) || (stateno = [600,610])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact


;---------------------------------------------------------------------------

;Magia fraca Aguia
;カンフー突き手（弱）
[State -1, Magia Fraca]
type = ChangeState
value = 267
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_fraca_x"
triggerall = Var(11)= 9
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl = 1


;---------------------------------------------------------------------------


;Magia fraca/forte Urso
;Petrif-Breath
;カンフー突き手（弱）
[State -1, Petrif_Breath]
type = ChangeState
value = 31029
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
trigger1 = command = "magia_fraca_x"
triggerall = command != "Shoryuken"
trigger2 = command = "magia_forte_y"
triggerall = command != "Strong Shoryuken"
triggerall = Var(11)= 5
;triggerall = numproj = 0
triggerall = NumHelper(5) = 0 
triggerall = statetype = S
triggerall = statetype != A
triggerall = ctrl = 1


;---------------------------------------------------------------------------

;Magia fraca/forte Urso Abaixado
;Petrif-Breath (Crouch)
;カンフー突き手（弱）
[State -1, Petrif_Breath]
type = ChangeState
value = 907
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
trigger1 = command = "magia_fraca_a"
triggerall = command != "Flash Kick"
trigger2 = command = "magia_forte_b"
triggerall = command != "Strong Flash Kick"
triggerall = Var(11)= 5
;triggerall = numproj = 0
triggerall = NumHelper(5) = 0 
triggerall = statetype = S
triggerall = statetype != A
triggerall = ctrl = 1

;---------------------------------------------------------------------------

;Magia fraca/forte Urso no ar
;Petrif-Breath (Air)
;カンフー突き手（弱）
[State -1, Petrif_Breath]
type = ChangeState
value = 908
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
trigger1 = command = "magia_fraca_x"
triggerall = command != "Shoryuken"
trigger2 = command = "magia_forte_y"
triggerall = command != "Strong Shoryuken"
triggerall = Var(11)= 5
;triggerall = numproj = 0
triggerall = NumHelper(5) = 0 
triggerall = statetype = A
triggerall = statetype != S
triggerall = statetype != C
triggerall = ctrl = 1


;---------------------------------------------------------------------------

;Choque fraco Dragao
;カンフー突き手（弱）
[State -1, Choque Fraco]
type = ChangeState
value = 60214
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_fraca_a"
triggerall = Var(11)= 6
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------


;Garras Fogo Aguia
[State -1, Flaming Claws]
type = ChangeState
value = 204
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_fraca_a"
triggerall = Var(11)= 9
trigger1 = statetype = A
trigger1 = ctrl = 1


;---------------------------------------------------------------------------

;Chute Fogo Aguia
[State -1, Fire Blades]
type = ChangeState
value = 205
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_forte_b"
triggerall = Var(11)= 9
trigger1 = statetype = A
trigger1 = ctrl = 1


;---------------------------------------------------------------------------


;Magia fraca
;カンフー突き手（弱）
[State -1, Magia Fraca]
type = ChangeState
value = 270
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_fraca_x"
triggerall = command != "Shoryuken"
triggerall = Var(11)>= 0
triggerall = Var(11)!= 2 
triggerall = Var(11)!= 6
triggerall = Var(11)!= 9
triggerall = Var(11)!= 5
triggerall = Var(11)< 11
triggerall = numproj = 0
trigger1 = statetype = S
;trigger1 = statetype != A
;trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------

;Magia forte Dragao
[State -1, Magia Forte]
type = ChangeState
value = 277
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_forte_y"
triggerall = Var(11) = 6
triggerall = numproj = 0
trigger1 = statetype = A
;trigger1 = statetype = S
;trigger1 = statetype = C
trigger1 = ctrl = 1
;trigger2 = (stateno = [200,210]) || (stateno = [400,410]) || (stateno = [600,610])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact


;---------------------------------------------------------------------------


;Magia forte Aguia
[State -1, Magia Forte]
type = ChangeState
value = 268
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_forte_y"
triggerall = Var(11) = 9
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl = 1


;---------------------------------------------------------------------------


;Choque forte Dragao
;カンフー突き手（弱）
[State -1, Choque Forte]
type = ChangeState
value = 60215
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_forte_b"
triggerall = Var(11)= 6
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl = 1


;---------------------------------------------------------------------------

;Magia forte
;カンフー突き手（弱）
[State -1, Magia Forte]
type = ChangeState
value = 273
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_forte_y"
triggerall = command != "Strong Shoryuken"
triggerall = Var(11)>= 0
triggerall = Var(11)!= 2 
triggerall = Var(11)!= 6
triggerall = Var(11)!= 9
triggerall = Var(11)!= 5
triggerall = Var(11)< 11
triggerall = numproj = 0
trigger1 = statetype = S
;trigger1 = statetype != A
;trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------


;Wolf Slash Attack 
[State -1, Wolf Slash Attack]
type = ChangeState
value = 31009
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Flash Kick"
trigerall = command != "magia_fraca_a"
triggerall = Var(11)= 3
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Strong Wolf Slash Attack 
[State -1, Strong Wolf Slash Attack]
type = ChangeState
value = 31008
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Strong Flash Kick"
trigerall = command != "magia_fraca_b"
triggerall = Var(11)= 3
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Tiger Slash Attack 
[State -1, Wolf Slash Attack]
type = ChangeState
value = 31007
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Flash Kick"
trigerall = command != "magia_fraca_a"
triggerall = Var(11)= 4
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------

;Strong Tiger Slash Attack 
[State -1, Strong Wolf Slash Attack]
type = ChangeState
value = 31005
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Strong Flash Kick"
trigerall = command != "magia_fraca_b"
triggerall = Var(11)= 4
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------

;Magia fraca abaixado
;カンフー突き手（弱）
[State -1, Magia Fraca Abaixado]
type = ChangeState
value = 271
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_fraca_a"
triggerall = Var(11)>= 3
triggerall = Var(11)!= 5
triggerall = Var(11)!= 6
triggerall = Var(11)!= 9
triggerall = Var(11)< 11
;triggerall = Var(11)< 18
triggerall = numproj = 0
trigger1 = statetype = S
;trigger1 = statetype != A
;trigger1 = statetype != S
trigger1 = ctrl = 1
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------

;Magia forte abaixado
;カンフー突き手（弱）
[State -1, Magia Forte Abaixado]
type = ChangeState
value = 274
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_forte_b"
triggerall = Var(11)>= 3
triggerall = Var(11)!= 5
triggerall = Var(11)!= 6
triggerall = Var(11)!= 9
triggerall = Var(11)< 11
;triggerall = Var(11)< 18
triggerall = numproj = 0
trigger1 = statetype = S
;trigger1 = statetype != A
;trigger1 = statetype != S
trigger1 = ctrl = 1
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------

;Magia fraca ar
;カンフー突き手（弱）
[State -1, Magia Fraca Ar]
type = ChangeState
value = 272
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_fraca_x"
triggerall = Var(11)>= 3
triggerall = Var(11)!= 5
triggerall = Var(11)!= 6
triggerall = Var(11)!= 8
triggerall = Var(11)!= 9
triggerall = Var(11)< 11
;triggerall = Var(11)< 18
triggerall = numproj = 0
trigger1 = statetype = A
;trigger1 = statetype != S
;trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = (stateno = [600,610])
trigger2 = movecontact

;---------------------------------------------------------------------------

;Magia forte ar
;カンフー突き手（弱）
[State -1, Magia Forte Ar]
type = ChangeState
value = 275
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_forte_y"
triggerall = Var(11)>= 3
triggerall = Var(11)!= 5
triggerall = Var(11)!= 6
triggerall = Var(11)!= 8
triggerall = Var(11)!= 9
triggerall = Var(11)< 11
;triggerall = Var(11)< 18
triggerall = numproj = 0
trigger1 = statetype = A
;trigger1 = statetype != S
;trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = (stateno = [600,610])
trigger2 = movecontact

;--------------------------------------------------------------------

;Falling Fireball
[State -1, Falling Fireball]
type = ChangeState
value = 31000
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Falling_Fireball"
trigger1 = Var(11)= 3
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;Strong Falling Fireball
[State -1, Strong Falling Fireball]
type = ChangeState
value = 31001
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Strong_Falling_Fireball"
triggerall = Var(11)= 3
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;Gryphon Claw
[State -1, Gryphon Claw]
type = ChangeState
value = 21060
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_fraca_x"
trigger1 = Var(11)= 2
trigger1 = statetype = A
trigger1 = ctrl = 1


;---------------------------------------------------------------------------

;Strong Gryphon Claw
[State -1, Strong Gryphon Claw]
type = ChangeState
value = 21061
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_forte_y"
triggerall = Var(11)= 2
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;Fast Centurion Rolling Kick Attack (1/3 super bar)
;速いカンフー突き手（ゲージレベル１／３）
[State -1, Fast Centurion Rolling Kick Attack]
type = ChangeState
value = 1013
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "QCB_ab"
triggerall = Var(11)= 0
triggerall = power >= 330
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,410]) || stateno = 430
;trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Flash Kick
[State -1, Flash Kick]
type = ChangeState
value = 11006
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Flash Kick"
triggerall = Var(11)= 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Strong Flash Kick
[State -1, Strong Flash Kick]
type = ChangeState
value = 11000
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Strong Flash Kick"
triggerall = Var(11)= 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Shoryuken
[State -1, Shoryuken]
type = ChangeState
value = 31011
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Shoryuken"
triggerall = Var(11)= 3
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = 296) || (stateno = 230) || (stateno = [400,410] )
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Strong Shoryuken
[State -1, Strong Shoryuken]
type = ChangeState
value = 31012
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Strong Shoryuken"
triggerall = Var(11)= 3
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = 296) || (stateno = 230) || (stateno = [400,410] )
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------

;Rino Head Attack
[State -1, Shoryuken_Rino]
type = ChangeState
value = 31015
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Shoryuken"
triggerall = Var(11)= 8
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = 296) || (stateno = 230) || (stateno = [400,410] )
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact


;---------------------------------------------------------------------------

;Strong Rino Head Attack
[State -1, Strong Shoryuken_Rino]
type = ChangeState
value = 31019
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Strong Shoryuken"
triggerall = Var(11)= 8
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = 296) || (stateno = 230) || (stateno = [400,410] )
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact


;---------------------------------------------------------------------------

;Tiger Sonic Kick
[State -1, Tiger_Sonic_Kick]
type = ChangeState
value = 31017
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Shoryuken"
triggerall = Var(11)= 4
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------

;Strong Tiger Sonic Kick
[State -1, Strong_Tiger_Sonic_kick]
type = ChangeState
value = 31022
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Strong Shoryuken"
triggerall = Var(11)= 4
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Claws - Wolf&Tiger Attack
[State -1, Claws]
type = ChangeState
value = 296
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Claws"
triggerall = Var(11)= 3 || Var(11) = 4 
;triggerall = P2Dist X <= 10
triggerall = statetype = S
triggerall = PrevStateNo != 296
triggerall = PrevStateNo != 100
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------


;Soco Deslizante - Rino Attack
[State -1, Soco Deslizante]
type = ChangeState
value = 1018
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Claws"
triggerall = Var(11)= 8
;triggerall = P2Dist X <= 10
triggerall = statetype = S
triggerall = PrevStateNo != 1018
triggerall = PrevStateNo != 100
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact


;---------------------------------------------------------------------------

;Jaw Breaker
;[State -1, Jaw Breaker]
;type = ChangeState
;value = 11014
;triggerall = command = "Jaw Breaker"
;triggerall = Var(11)= 1
;trigger1 = statetype = S
;trigger1 = ctrl
;trigger2 = (stateno = [200,210]) || (stateno = [400,410])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact

;---------------------------------------------------------------------------
;Jaw Breaker
[State -1, Jaw Breaker]
type = ChangeState
value = 11015
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Strong Jaw Breaker"
triggerall = PrevStateNo != 11015
triggerall = PrevStateNo != 100
triggerall = Var(11)= 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact


;---------------------------------------------------------------------------
;Coice - Backward kick

[State -1, Coice]
type = ChangeState
value = 1016
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Coice"
triggerall = Var(11)= 0
trigger1 = p2bodydist X < 30
trigger1 = statetype != A
trigger1 = ctrl

;----------------------------------------------------------------------------
;----------------------------------------------------------------------------

;Coice - Backward kick (Bear)

[State -1, CoiceBear]
type = ChangeState
value = 3064
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Coice"
triggerall = Var(11)= 5
trigger1 = p2bodydist X < 40
trigger1 = statetype != A
trigger1 = ctrl

;----------------------------------------------------------------------------
;----------------------------------------------------------------------------

;Rising Gryphon
[State -1, Rising Gryphon]
type = ChangeState
value = 21056
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Shoryuken"
triggerall = Var(11)= 2
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Strong Rising Gryphon
[State -1, Strong Rising Gryphon]
type = ChangeState
value = 21058
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Strong Shoryuken"
triggerall = Var(11)= 2
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------

;Skull Crusher
[State -1, Skull Crusher]
type = ChangeState
value = 21051
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_fraca_x"
triggerall = command != "Shoryuken"
triggerall = Var(11)= 2
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------

;Strong Skull Crusher
[State -1, Strong_Skull_Crusher]
type = ChangeState
value = 21053
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "magia_forte_y"
triggerall = command != "Strong Shoryuken"
triggerall = Var(11)= 2
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------

;Vertical Rolling Attack - Bear
[State -1, Vertical Rolling Attack]
type = ChangeState
value = 31023
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Shoryuken"
triggerall = Var(11)= 5
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;Strong Vertical Rolling Attack - Bear
[State -1, Strong Vertical Rolling Attack]
type = ChangeState
value = 31025
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Strong Shoryuken"
triggerall = Var(11)= 5
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------


;Bear Heavy attack
[State -1, Bear Heavy attack]
type = ChangeState
value = 50631
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Bear Heavy attack"
triggerall = Var(11)= 5
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------

;Poseidonｴs Trident
[State -1, Poseidon Trident]
type = ChangeState
value = 1003
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Sonic Tiger Wave"
triggerall = Var(11)<= 1 
triggerall = power >= 2000
;triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;Battle Spear
[State -1, Strong Spear]
type = ChangeState
value = 1004
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = command = "Sonic Tiger Wave"
triggerall = Var(11)<= 1
triggerall = power >= 1000
triggerall = power < 2000
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(11)>=18 || var(11) <= 1 || var(11)=3 || var(11)=4 || var(11)=8 || var(11)=13 
;trigger1 = anim = 100 + 10000*Var(11)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(11)=3 || var(11)=4
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------

;Throw
[State -1, Throw]
type = ChangeState
value = 850
triggerall = Var(11) <= 1  
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------

;Throw Ponte
[State -1, Throw_Ponte]
type = ChangeState
value = 851
triggerall = Var(11) = 2  
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


;---------------------------------------------------------------------------


;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = StateNo != 100
triggerall = command = "x"
triggerall = command != "5x" || PrevStateNo = 1050 
triggerall = command != "holddown"
triggerall = Var(11)< 11
triggerall = var(11)!= 18
triggerall = var(11)!= 19
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ctrl
trigger2 = (var(11)= 6) || (var(11) = 9)
trigger2 = statetype = A


;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = StateNo != 100
triggerall = command = "y"
triggerall = command != "5y" || PrevStateNo = 1050
triggerall = command != "holddown"
triggerall = Var(11)< 11
triggerall = var(11)!= 18
triggerall = var(11)!= 19
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ctrl
trigger2 = (var(11)= 6) || (var(11) = 9)
trigger2 = statetype = A


;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = Var(11)< 11
triggerall = var(11)!= 18
triggerall = var(11)!= 19
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ctrl
trigger2 = (var(11)= 6) || (var(11) = 9)
trigger2 = statetype = A


;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "Strong Jaw Breaker"
triggerall = Var(11)< 11
triggerall = var(11)!= 18
triggerall = var(11)!= 19
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ctrl
trigger2 = (var(11)= 6) || (var(11) = 9)
trigger2 = statetype = A


;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(11)= 6


;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = Var(11)< 11
triggerall = var(11)!= 18
triggerall = var(11)!= 19
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (var(11)= 6) || (var(11) = 9)
trigger2 = statetype = A
;trigger3 = var(11) = 3 
;trigger3 = PrevStateNo != 400
;trigger4 = var(11) = 3 
;trigger4 = PrevStateNo = 30401
;triggerall = MoveType != H


;------------------------------------------------------------------------------

;Crouching Light Punch 2 - Wolf
;しゃがみ弱パンチ
;[State -1, Crouching Light Punch 2]
;type = ChangeState
;value = 30401
;triggerall = command = "x"
;triggerall = command = "holddown"
;triggerall = var(11) = 3 
;trigger1 = PrevStateNo = 400
;trigger1 = statetype = C
;trigger1 = MoveType != H


;---------------------------------------------------------------------------


;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = Var(11)< 11
triggerall = var(11)!= 18
triggerall = var(11)!= 19
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = ctrl
trigger2 = (var(11)= 6) || (var(11) = 9)
trigger2 = statetype = A


;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
;triggerall = PrevStateNo != 430
triggerall = Var(11)< 11
triggerall = var(11)!= 18
triggerall = var(11)!= 19
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = ctrl
trigger3 = (var(11)= 6) || (var(11) = 9)
trigger3 = statetype = A


;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = Var(11)< 11
triggerall = var(11)!= 18
triggerall = var(11)!= 19
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = ctrl
trigger3 = (var(11)= 6) || (var(11) = 9)
trigger3 = statetype = A


;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = Var(11)< 11 || var(11) > 17
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = ctrl
trigger3 = (var(11)= 6) || (var(11) = 9)



;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = Var(11)< 11 || var(11) > 17
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = ctrl
trigger3 = (var(11)= 6) || (var(11) = 9)

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = Var(11)< 11 || var(11) = 15 || var(11) > 17
trigger1 = statetype = A
trigger1 = ctrl
trigger3 = ctrl
trigger3 = (var(11)= 6) || (var(11) = 9)

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = Var(11)< 11 || var(11) = 15 || var(11) > 17
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = ctrl
trigger3 = (var(11)= 6) || (var(11) = 9)

;---------------------------------------------------------------------------


;Golpe do Chicken Leg
[State -1, Golpe do Chicken Leg]
type = ChangeState
value = 200
triggerall = StateNo != 100
triggerall = command = "x" || command = "y" || command = "a" || command = "b"
triggerall = command != "5x" ;|| PrevStateNo = 1050 
triggerall = var(11)= 18 || var(11)= 19
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Gilius
[State -1, Gilius]
type = ChangeState
value = 9500
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = Var(11) <= 2
triggerall = NumHelper(9500)= 0
triggerall = command = "tras_z"
triggerall = power >= 800 
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Chicken Leg
[State -1, Chicken Leg]
type = ChangeState
value = 9100
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = Var(11) < 2
triggerall = NumHelper(9100)= 0
triggerall = command = "magia_z"
triggerall = command != "Rise graves"
triggerall = power >= 800
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Chicken Leg run attack 
[State -1, Chicken_Leg_run_attack]
type = ChangeState
value = var(11)*10000+1000
triggerall = Var(11) >= 18
triggerall = StateNo = 100
triggerall = command = "x" || command = "y" || command = "a" || command = "b"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Chicken Stinger
[State -1, Chicken Stinger]
type = ChangeState
value = 9600
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = Var(11) = 2
triggerall = NumHelper(9600)= 0
triggerall = command = "magia_z"
triggerall = power >= 800  
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Centurion run attack - Ombrada
[State -1, centurion_run_attack]
type = ChangeState
value = 101 ;var(11)*10000+101
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = Var(11) <= 1
trigerall = PrevStateNo = 100 
triggerall = command = "x" 
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Centurion run attack Strong - Ombrada
[State -1, centurion_run_attack_strong]
type = ChangeState
value = 102 ;var(11)*10000+102
;triggerall = var(59) != 1 ;<---------------- This cancels the AI usage of the human commands
triggerall = Var(11) <= 1
trigerall = PrevStateNo = 100 
triggerall = command = "y" 
trigger1 = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------

;[State -1, Carrega_Power ]
;type = ChangeState
;value = 1
;triggerall = statetype = S
;triggerall = Power < 3000
;triggerall = Var(11) <= 4
;triggerall = ctrl = 1
;trigger1 = ((command = "power_charge") && (command = "power_charge1"))
;trigger1 = stateno != 1

;--------------------------------------------------------------------



;---------------------------------------------------
;---------------------------------------------------
;------------CARROCA--------------------------------
;---------------------------------------------------
;---------------------------------------------------

;[State -1, VarMatchover]
;type = varset
;v = 59
;value = 1
;;triggerall = Var(11) = [0, 10] 
;trigger1 = lose = 1 
;trigger1 = life = 0


;[State -1, VarCarroStage]
;type = varset
;v = 32
;value = 1
;triggerall = Var(11) = [0, 10] 
;trigger1 = screenpos Y = 185 
;trigger1 = roundstate = 1


;[State -1, CaiFora]
;type = ChangeState
;value = 950
;triggerall = roundstate = 3
;;triggerall = Var(11) = [0, 10]
;trigger1 = var(59)= 1
;trigger1 = var(32)= 1
;trigger1 = life = 0
;trigger1 = pos Y <= 0
;trigger1 = Stateno != 950

;[State -1, screen]
;type = ScreenBound
;;triggerall = Var(11) = [0, 10]
;trigger1 = screenpos Y >= 230
;value = 0
;MoveCamera= 0, 0


;---------------------------------------------------
;---------------------------------------------------
;---------------------------------------------------
;---------------------------------------------------
