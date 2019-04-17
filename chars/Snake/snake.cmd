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
[command]
name = "C4"
command = ~D,DB,B,D,DB,B,c
time = 25

[command]
name = "C4"
command = ~D,DB,B,D,DB,B,b
time = 25

[command]
name = "C4"
command = ~D,DB,B,D,DB,B,a
time = 25

[command]
name = "genome"
command = ~D,DF,F,DF,D,DB,B,c
time = 25

[command]
name = "genome"
command = ~D,DF,F,DF,D,DB,B,b
time = 25

[command]
name = "genome"
command = ~D,DF,F,DF,D,DB,B,a
time = 25

[command]
name = "famas2"
command = ~D,DF,F,D,DF,F,c
time = 25

[command]
name = "famas2"
command = ~D,DF,F,D,DF,F,b
time = 25

[command]
name = "famas2"
command = ~D,DF,F,D,DF,F,a
time = 25

[command]
name = "rpg"
command = ~D,DB,B,D,DB,B,z
time = 25

[command]
name = "rpg"
command = ~D,DB,B,D,DB,B,y
time = 25

[command]
name = "rpg"
command = ~D,DB,B,D,DB,B,x
time = 25

[command]
name = "famas"
command = ~D,DF,F,D,DF,F,z
time = 25

[command]
name = "famas"
command = ~D,DF,F,D,DF,F,y
time = 25

[command]
name = "famas"
command = ~D,DF,F,D,DF,F,x
time = 25

;-| Special Motions |------------------------------------------------------

[command]
name = "stung"
command = ~D,DF,F,c
time = 15

[command]
name = "stung2"
command = ~D,DF,F,b
time = 15

[command]
name = "stung3"
command = ~D,DF,F,a
time = 15

[command]
name = "Grenade"
command = ~D,DF,F,z
time = 15

[command]
name = "Grenade2"
command = ~D,DF,F,x
time = 15

[command]
name = "Grenade3"
command = ~D,DF,F,y
time = 15

[command]
name = "mine"
command = ~D,D,z
time = 15

[command]
name = "mine"
command = ~D,D,y
time = 15

[command]
name = "mine"
command = ~D,D,x
time = 15

[command]
name = "Invisibility"
command = ~D,DF,F,s
time = 15

[command]
name = "Twice"
command = ~D,DB,B,z
time = 15

[command]
name = "Baretta"
command = ~D,DB,B,y
time = 15

[command]
name = "socomlow"
command = ~D,DB,B,b
time = 15

[command]
name = "silencelow"
command = ~D,DB,B,a
time = 15

[command]
name = "twicelow"
command = ~D,DB,B,c
time = 15

[command]
name = "Silenced"
command = ~D,DB,B,x
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
;---------------------------------------------------
;Genome
[State -1, Genome]
type = ChangeState
value = 8500
triggerall = power >= 3000
triggerall = (Var(0) = 0)
triggerall = AILevel >0 && roundstate = 2 && statetype !=A
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = stateno != [800,8003]
triggerall = p2statetype !=A||((p2bodydist y =[-55,-20])&&enemy,vel y >=0&& AILevel >3)
triggerall = p2statetype !=L
triggerall = random<18*AILevel
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [0,300]
trigger1= p2movetype=A && ctrl && p2bodydist x >90
trigger2 = stateno = 2000 && movecontact
trigger3 = stateno = 2003 && movecontact
trigger4 = stateno = 2005 && movecontact
trigger5 = stateno = 2000 && movecontact
trigger6 = stateno = 2003 && movecontact
trigger7 = stateno = 2005 && movecontact
trigger8 = stateno = 2310 && movecontact
trigger9 = stateno = 2311 && movecontact
trigger10 = stateno = 2312 && movecontact
trigger11= stateno = 2500 && time > 17 && p2movetype=H
trigger12 = stateno = 2501 && time > 17&& p2movetype=H
trigger13 = stateno = 2502 && time > 17&& p2movetype=H
trigger14= enemynear,anim=5300 && ctrl
 ;------------------------------------------------------------------
;RPG
[State -1, RPG]
type = ChangeState
value = 6002
triggerall = power >= 3000
triggerall = (Var(0) = 0)
triggerall = AILevel >0 && roundstate = 2 && statetype !=A
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = stateno != [800,8003]
triggerall = p2statetype !=A||((p2bodydist y =[-55,-20])&&enemy,vel y >=0&& AILevel >3)
triggerall = p2statetype !=L
triggerall = random<18*AILevel
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [0,300]
trigger1= p2movetype=A && ctrl && p2bodydist x >90
trigger2 = stateno = 240 && movecontact
trigger3 = stateno = 440 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 221 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 2000 && movecontact
trigger8 = stateno = 2003 && movecontact
trigger9 = stateno = 2005 && movecontact
trigger10 = stateno = 2000 && movecontact
trigger11 = stateno = 2003 && movecontact
trigger12 = stateno = 2005 && movecontact
trigger13 = stateno = 2310 && movecontact
trigger14 = stateno = 2311 && movecontact
trigger15 = stateno = 2312 && movecontact
trigger16= stateno = 2500 && time > 17 && p2movetype=H
trigger17 = stateno = 2501 && time > 17&& p2movetype=H
trigger18 = stateno = 2502 && time > 17&& p2movetype=H
trigger19= enemynear,anim=5300 && ctrl
;----------------------------------------------------------------
;C4
[State -1, C4]
type = ChangeState
value = 2400
triggerall = (Var(0) = 0)
triggerall = power >= 2000
triggerall = random <= 31*AILevel
triggerall = AILevel >0
triggerall = statetype != A
triggerall = p2statetype !=A
triggerall = p2statetype !=L
triggerall = ctrl || stateno=20
triggerall = stateno != [200,9999]
Triggerall = (RoundState = 2)
triggerall = (p2MoveType != H)|| (p2stateno=120||p2stateno=140)
triggerall = p2bodydist X < 45
trigger1= ctrl
trigger2 = (p2stateno =[120,150]) &&ctrl
trigger3 = p2movetype=A && ctrl && (enemynear,hitdefattr!=SCA,AA,AP)&& AIlevel >5

;-----------------------------------------------------------------
;famas
[State -1, famas]
type = ChangeState
value = 2006
triggerall = (Var(0) = 0)
triggerall = AILevel >0 && roundstate = 2 && statetype !=A
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = stateno != [800,8003]
triggerall = p2statetype !=A||((p2bodydist y =[-55,-20])&&enemy,vel y >=0&& AILevel >3)
triggerall = p2statetype !=L
triggerall = random<18*AILevel
triggerall = AILevel >=1000
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [0,300]
trigger1= p2movetype=A && ctrl && p2bodydist x >90
trigger2 = stateno = 240 && movecontact
trigger3 = stateno = 440 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 221 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 2000 && movecontact
trigger8 = stateno = 2003 && movecontact
trigger9 = stateno = 2005 && movecontact
trigger10 = stateno = 2310 && movecontact
trigger11 = stateno = 2311 && movecontact
trigger12 = stateno = 2312 && movecontact
trigger13= stateno = 2500 && time > 17 && p2movetype=H
trigger14 = stateno = 2501 && time > 17&& p2movetype=H
trigger15 = stateno = 2502 && time > 17&& p2movetype=H
trigger16= enemynear,anim=5300 && ctrl
;---------------------------------------------------------------------------
;famas2
[State -1, famas2]
type = ChangeState
value = 2007
triggerall = (Var(0) = 0)
triggerall = AILevel >0 && roundstate = 2 && statetype !=A
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = stateno != [800,8003]
triggerall = p2statetype =S||((p2bodydist y =[-35,-10])&&enemy,vel y >=0&& AILevel >3)
triggerall = p2statetype !=L
triggerall = random<18*AILevel
triggerall = power >=1000
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [0,300]
trigger1= p2movetype=A && ctrl && p2bodydist x >90
trigger2 = stateno = 240 && movecontact
trigger3 = stateno = 440 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 221 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 2000 && movecontact
trigger8 = stateno = 2003 && movecontact
trigger9 = stateno = 2005 && movecontact
trigger10 = stateno = 2310 && movecontact
trigger11 = stateno = 2311 && movecontact
trigger12 = stateno = 2312 && movecontact
trigger13= stateno = 2500 && time > 17 && p2movetype=H
trigger14 = stateno = 2501 && time > 17&& p2movetype=H
trigger15 = stateno = 2502 && time > 17&& p2movetype=H
trigger16= enemynear,anim=5300 && ctrl
 ;--------------------------------------------
[State -1, Guard]
type = ChangeState
value = 120
triggerall = movetype !=H
triggerall = roundstate = 2
triggerall = stateno!=[120,155]
triggerall=AILevel>0
triggerall = (statetype!=A)||(statetype=A && p2bodydist x >5)
triggerall =(StateNo !=[200,3999])&&(StateNo != 105)
Triggerall =  Random < (113*AILevel)
triggerall =InGuardDist || enemynear,hitdefattr=SCA,NP,SP,HP || enemynear,hitdefattr = SCA,AA
triggerall =((EnemyNear, movetype=A&& enemynear,hitdefattr!=SCA,AA)||( enemynear,hitdefattr=SCA,NP,SP,HP || enemynear,hitdefattr = SCA,AA))|| enemy,numproj >0
trigger1 = ctrl ||stateno=20
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = ifelse(p2bodydist x <= 15,201,200)
Triggerall = (RoundState = 2) && (AILevel >0)
Triggerall = (StateType != A)
triggerall = stateno != [800,8003]
Triggerall = P2BodyDist X = [0,50]
triggerall = enemynear,anim!=5120
Triggerall = Random < 70*AILevel
triggerall = p2statetype !=L
triggerall = enemy, statetype != A || (p2movetype= H && (p2bodydist y =[-65,-25])&&enemy,vel y >=0&& AILevel >3)
triggerall = enemy, statetype != C
trigger1 = ctrl||(stateno=[100,101])



;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand strong Punch]
type = ChangeState
value = 210
Triggerall = (RoundState = 2) && (AILevel >0)
Triggerall = (StateType != A)
triggerall = stateno != [800,8003]
Triggerall = Random < 70*AILevel
triggerall = p2statetype !=L
triggerall = enemynear,anim!=5120
triggerall = enemy, statetype != A
triggerall = p2bodydist x = [0,65]
triggerall = enemy, statetype != C
trigger1 = ctrl||(stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
[State -1, Stand medium Punch]
type = ChangeState
value = ifelse(p2bodydist x <= 15,221,220)
Triggerall = (RoundState = 2) && (AILevel >0)
Triggerall = (StateType != A)
triggerall = stateno != [800,8003]
Triggerall = Random < 70*AILevel
triggerall = p2statetype !=L
triggerall = enemynear,anim!=5120
triggerall = enemy, statetype != A  || (p2movetype= H && (p2bodydist y =[-55,-25])&&enemy,vel y >=0&& AILevel >3)
triggerall = p2bodydist x = [0,70]
triggerall = enemy, statetype != C
trigger1 = ctrl||(stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact


;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
Triggerall = (RoundState = 2) && (AILevel >0)
Triggerall = (StateType = S)
triggerall = stateno != [800,8003]
Triggerall = Random < 70*AILevel
triggerall = enemynear,anim!=5120
triggerall = p2statetype !=L
triggerall = enemy, statetype != A   || (p2movetype= H && (p2bodydist y =[-55,-25])&&enemy,vel y >=0&& AILevel >3)
triggerall = p2bodydist x = [0,50]
triggerall = enemy, statetype != C
trigger1 = ctrl||(stateno=[100,101])

;---------------------------------------------------------------------------
;Standing medium Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
Triggerall = (RoundState = 2) && (AILevel >0)
Triggerall = (StateType = S)
triggerall = stateno != [800,8003]
Triggerall = Random < 70*AILevel
triggerall = p2statetype !=L
triggerall = enemynear,anim!=5120
triggerall = enemy, statetype != A || (p2movetype= H && (p2bodydist y =[-45,-25])&&enemy,vel y >=0&& AILevel >3)
triggerall = p2bodydist x = [0,70]
triggerall = enemy, statetype != C
trigger1 = ctrl||(stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

;--------------------------------------------------------
;Stand hard Kick
;立ち弱キック
[State -1, Stand hard Kick]
type = ChangeState
value = 250
Triggerall = (RoundState = 2) && (AILevel >0)
Triggerall = (StateType = S)
triggerall = stateno != [800,8003]
Triggerall = Random < 70*AILevel
triggerall = p2statetype !=L
triggerall = enemynear,anim!=5120
triggerall = enemy, statetype != A
triggerall = p2bodydist x = [0,75]
triggerall = enemy, statetype != C
trigger1 = ctrl||(stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

;------------------------------------------------------
[State -1, AI5]
Type = ChangeState
Triggerall = (RoundState = 2) && (AILevel >0)
Triggerall = (StateType != A)
triggerall = stateno != [800,8003]
Triggerall = (P2BodyDist X = [0,45])&&(P2BodyDist Y = 0 )
Triggerall = Random < 70*AILevel
triggerall = enemynear,anim!=5120
triggerall = (p2statetype !=L)
triggerall = (movetype !=H)
trigger1 = ctrl||(stateno=[100,101])
value = 400
;------------------------------------------------------
[State -1, AI2]
Type = ChangeState
Triggerall = (RoundState = 2) && (AILevel >0)
Triggerall = StateType != A
triggerall = stateno != [800,8003]
Triggerall = (P2BodyDist X = [0,60])&&(P2BodyDist Y = 0 )
Triggerall = Random < 70*AILevel
triggerall = p2statetype !=L
triggerall = (movetype !=H)
triggerall = enemynear,anim!=5120
triggerall = enemy, statetype != A
trigger1 = ctrl||(stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

value = 410
;------------------------------------------------------
[State -1, AI2]
Type = ChangeState
Triggerall = (RoundState = 2) && (AILevel >0)
Triggerall =  (StateType != A)
triggerall = stateno != [800,8003]
Triggerall = (((P2BodyDist X = [0,45])&&p2statetype!=A)||((P2BodyDist X = [0,60])&&p2statetype=A)) && ((p2bodydist y =[-55,0])&&enemy,vel y >=0&& AILevel >3)
Triggerall = Random < 70*AILevel
triggerall = enemynear,anim!=5120
triggerall = p2statetype !=L
triggerall = (movetype !=H)
trigger1 = ctrl||(stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 7003
value = 420

;------------------------------------------------------
[State -1, AI9]
Type = ChangeState
Triggerall = (RoundState = 2) && (AILevel >0)
Triggerall = StateType != A
triggerall = stateno != [800,8003]
Triggerall = P2BodyDist X = [0,55]
triggerall = (movetype !=H)
triggerall = enemynear,anim!=5120
Triggerall = (Random < 70*AILevel) &&(enemy, statetype != A && enemy,statetype !=L)
trigger1 = ctrl||(stateno=[100,101])
value = 430
;------------------------------------------------------
[State -1, AI 9]
Type = ChangeState
Triggerall = (RoundState = 2) && (AILevel >0)
Triggerall = StateType != A
triggerall = stateno != [800,8003]
trigger1 = ctrl||(stateno=[100,101])
triggerall = (movetype !=H)
triggerall = enemynear,anim!=5120
Triggerall = (P2BodyDist X = [0,65]) && (P2BodyDist Y = 0 )
Triggerall = (Random < 70*AILevel) &&(enemy, statetype != A && enemy,statetype !=L)
Triggerall = stateno !=435
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

value = 440
;------------------------------------------------------
[State -1, AI8]
Type = ChangeState
Triggerall = (RoundState = 2) && (AILevel >0)
Triggerall = StateType != A
triggerall = stateno != [800,8003]
trigger1 = ctrl
Triggerall = P2BodyDist X = [0,70]
triggerall = enemynear,anim!=5120
triggerall = (movetype !=H)
Triggerall = (  Random < 70*AILevel) && (enemy, statetype != A && enemy,statetype !=L)
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

value = 450

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = AILevel >0
triggerall = statetype = A
triggerall = stateno !=610
Triggerall = (P2BodyDist X = [0,40])
Triggerall = Random <= 70*AILevel
triggerall = roundstate = 2
triggerall = stateno!=[100,105]
triggerall= p2bodydist y =[-20,60]
triggerall = vel y <0 &&(p2statetype=A)
trigger1 = ctrl


;---------------------------------------------------------------------------
[State -1, Jump medium Punch]
type = ChangeState
value = 610
triggerall = AILevel >0
triggerall = statetype = A
triggerall = stateno !=610
Triggerall = (P2BodyDist X = [0,40])
Triggerall = Random <= 70*AILevel
triggerall = roundstate = 2
triggerall = stateno!=[100,105]
triggerall= p2bodydist y =[-20,60]
triggerall = vel y <0 &&(p2statetype=A)
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact
;---------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = AILevel >0
triggerall = statetype = A
Triggerall = (P2BodyDist X = [0,50])
Triggerall = Random <= 70*AILevel
triggerall = roundstate = 2
triggerall = stateno!=[100,105]
triggerall= p2bodydist y =[-30,0]
triggerall = vel y <0 &&(p2statetype=A)
triggerall = movecontact
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movecontact
trigger3 = stateno = 640
trigger3 = movecontact


;---------------------------------------------------------------------------
;Jump medium Kick
[State -1, Jump medium Kick]
type = ChangeState
value = 630
triggerall = AILevel >0
triggerall = statetype = A
triggerall = stateno !=610
Triggerall = (P2BodyDist X = [0,60])
Triggerall = Random <= 70*AILevel
triggerall = roundstate = 2
triggerall = stateno!=[100,105]
triggerall= p2bodydist y =[-20,60]
triggerall = vel y <0 &&(p2statetype=A)
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 640
triggerall = AILevel >0
triggerall = statetype = A
triggerall = stateno !=610
Triggerall = (P2BodyDist X = [-20,70])
Triggerall = Random <= 70*AILevel
triggerall = roundstate = 2
triggerall = stateno!=[100,105]
triggerall= p2bodydist y =[-20,80]
triggerall = vel y >=0 ||(p2statetype=A)
triggerall = movecontact || p2statetype!=A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact



;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = AILevel >0
triggerall = statetype = A
Triggerall = (P2BodyDist X = [0,70])
Triggerall = Random <= 70*AILevel
triggerall = roundstate = 2
triggerall = stateno!=[100,105]
triggerall = movecontact || p2statetype!=A
triggerall= p2bodydist y =[-20,60]
triggerall = vel y >=0 ||(p2statetype=A)
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movecontact
trigger3 = stateno = 640
trigger3 = movecontact
;---------------------------------------------------------------------------
[State -1, AI throw]
type = ChangeState
value = ifelse(random<499,880,850)
triggerall = random <= 30*AILevel
triggerall = AILevel >0
triggerall = statetype != A
triggerall = p2statetype !=A
triggerall = p2statetype !=L
triggerall = ctrl || stateno=20
triggerall = stateno != [200,9999]
Triggerall = (RoundState = 2)
triggerall = (p2MoveType != H)
trigger1 = p2bodydist X < 28
trigger2 = (p2stateno =[120,150]) &&p2bodydist X < 28
;----------------------------------------------------------------------------
;Mine
[State -1, Mine]
type = ChangeState
value = 2200
triggerall = numhelper(2210) < 3
triggerall = AILevel >0 && roundstate = 2 && statetype !=A
triggerall = (p2stateno!=[120,155])
triggerall = stateno != [800,8003]
triggerall = p2statetype !=A
triggerall = random<8*AILevel
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [75,80]
trigger1= ctrl && p2statetype=L
;---------------------------------------------------------
;stung
[State -1, stung]
type = ChangeState
value = 2518
triggerall = (Var(1) = 0)
triggerall = AILevel >0 && roundstate = 2 && statetype !=A
triggerall = (p2stateno!=[120,155])
triggerall = stateno != [800,8003]
triggerall = p2statetype !=A||((p2bodydist y =[-35,0])&&enemy,vel y >=0&& AILevel >3)
triggerall =   p2statetype !=L
triggerall = random<13*AILevel
triggerall = (p2bodydist x >140)
triggerall = enemynear,anim!=5300
triggerall = numhelper(2510) = 0
trigger1=  ctrl
trigger2= p2movetype=A && ctrl
;---------------------------------------------------------------------------
;Grenade2
[State -1, GrenadeAI]
type = ChangeState
value = 2501
triggerall = AILevel >0 && roundstate = 2 && statetype !=A
triggerall = (p2stateno!=[120,155])
triggerall = stateno != [800,8003]
triggerall = enemynear,anim!=5300
triggerall = p2statetype !=A||((p2bodydist y =[-35,0])&&enemy,vel y >=0&& AILevel >3)
triggerall =   p2statetype !=L || (AILevel >4 &&((p2stateno=[5050,5119])||p2statetype=L) && ctrl)
triggerall = random<12*AILevel || (((p2stateno=[5050,5119])||p2statetype=L) && AILevel >6)
triggerall = (p2bodydist x >190) || ((p2bodydist x = [0,100])&& ((p2stateno=[5050,5119])||p2statetype=L))
triggerall = numhelper(2510) = 0
trigger1=  ctrl

;---------------------------------------------------------------------------
;Grenade3
[State -1, GrenadeAI]
type = ChangeState
value = 2502
triggerall = AILevel >0 && roundstate = 2 && statetype !=A
triggerall = (p2stateno!=[120,155])
triggerall = stateno != [800,8003]
triggerall = enemynear,anim!=5300
triggerall = p2statetype !=A||((p2bodydist y =[-55,0])&&enemy,vel y >=0&& AILevel >3)
triggerall =   p2statetype !=L || (AILevel >4 && (p2stateno=[5100,5119]))
triggerall = random<12*AILevel|| (((p2stateno=[5050,5119])||p2statetype=L) && AILevel >6)
triggerall = p2bodydist x = [100,190]
triggerall = numhelper(2510) = 0
trigger1= ((p2stateno=[5050,5119])||p2statetype=L) && ctrl
trigger2 = stateno = 240 && movecontact
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 440 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 221 && movecontact
trigger7 = stateno = 250 && movecontact
;---------------------------------------------------------------------------
;Grenade
[State -1, GrenadeAI]
type = ChangeState
value = 2500
triggerall = AILevel >0 && roundstate = 2 && statetype !=A
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = stateno != [800,8003]
triggerall = p2statetype !=A||((p2bodydist y =[-75,-25])&&enemy,vel y >=0&& AILevel >3)
triggerall = random<10*AILevel
triggerall = enemynear,anim!=5300
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [120,180]
triggerall = numhelper(2510) = 0
trigger1=  ctrl
trigger2 = stateno = 240 && movecontact
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 440 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 221 && movecontact
trigger7 = stateno = 250 && movecontact

;---------------------------------------------------------------------------
;TwoShots
[State -1, TwiceAI]
type = ChangeState
value = 2005
triggerall = AILevel >0 && roundstate = 2 && statetype !=A
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = stateno != [800,8003]
triggerall = p2statetype !=A||((p2bodydist y =[-55,-15])&&enemy,vel y >=0&& AILevel >3)
triggerall = p2statetype !=L
triggerall = random<12*AILevel
triggerall = enemynear,anim!=5300
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [120,300]
trigger1= p2movetype=A && ctrl && p2bodydist x >80
trigger2 = stateno = 240 && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 221 && movecontact
trigger5 = stateno = 250 && movecontact
;---------------------------------------------------------------------------
;Silenced
[State -1, SilencedAI]
type = ChangeState
value = 2003
triggerall = AILevel >0 && roundstate = 2 && statetype !=A
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = stateno != [800,8003]
triggerall = p2statetype !=A||((p2bodydist y =[-55,-15])&&enemy,vel y >=0&& AILevel >3)
triggerall = p2statetype !=L
triggerall = random<12*AILevel
triggerall = enemynear,anim!=5300
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [100,300]
trigger1= p2movetype=A && ctrl && p2bodydist x >80
trigger2 = stateno = 240 && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 221 && movecontact
trigger5 = stateno = 250 && movecontact
;---------------------------------------------------------------------------
;Baretta
[State -1, BarettaAI]
type = ChangeState
value = 2000
triggerall = AILevel >0 && roundstate = 2 && statetype !=A
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = stateno != [800,8003]
triggerall = p2statetype !=A||((p2bodydist y =[-55,-15])&&enemy,vel y >=0&& AILevel >3)
triggerall = p2statetype !=L
triggerall = random<12*AILevel
triggerall = enemynear,anim!=5300
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [80,300]
trigger1= p2movetype=A && ctrl && p2bodydist x >80
trigger2 = stateno = 240 && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 221 && movecontact
trigger5 = stateno = 250 && movecontact
;---------------------------------------------------------------------------
;socomlow
[State -1, socomlowAI]
type = ChangeState
value = 2310
triggerall = AILevel >0 && roundstate = 2 && statetype !=A
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = stateno != [800,8003]
triggerall = p2statetype =S||((p2bodydist y =[-35,-15])&&enemy,vel y >=0&& AILevel >3)
triggerall = p2statetype !=L
triggerall = random<12*AILevel
triggerall = enemynear,anim!=5120
triggerall = enemynear,anim!=5300
triggerall = p2bodydist x = [80,300]
trigger1= p2movetype=A && ctrl && p2bodydist x >80
trigger2 = stateno = 240 && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 221 && movecontact
trigger5 = stateno = 250 && movecontact
;---------------------------------------------------------------------------
;silencelow
[State -1, silencelowAI]
type = ChangeState
value = 2311
triggerall = AILevel >0 && roundstate = 2 && statetype !=A
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = stateno != [800,8003]
triggerall = p2statetype =S||((p2bodydist y =[-35,-15])&&enemy,vel y >=0&& AILevel >3)
triggerall = p2statetype !=L
triggerall = random<12*AILevel
triggerall = enemynear,anim!=5300
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [100,300]
trigger1= p2movetype=A && ctrl && p2bodydist x >80
trigger2 = stateno = 240 && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 221 && movecontact
trigger5 = stateno = 250 && movecontact
;---------------------------------------------------------------------------
;twicelow
[State -1, twicelowAI]
type = ChangeState
value = 2312
triggerall = AILevel >0 && roundstate = 2 && statetype !=A
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = stateno != [800,8003]
triggerall = p2statetype =S||((p2bodydist y =[-35,-15])&&enemy,vel y >=0&& AILevel >3)
triggerall = p2statetype !=L
triggerall = random<12*AILevel
triggerall = enemynear,anim!=5300
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [120,300]
trigger1= p2movetype=A && ctrl && p2bodydist x >80
trigger2 = stateno = 240 && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 221 && movecontact
trigger5 = stateno = 250 && movecontact
;----------------------------------------------
[State -1, roll]
type = ChangeState
value = 7002
triggerall = AILevel >0 && StateType != A
triggerall = roundstate = 2
triggerall = stateno !=[800,9999]
triggerall = p2movetype=A
triggerall = movetype=I
triggerall = ctrl
triggerall = ((p2bodydist x = [80,375])) && random < 8*AILevel
trigger2 =(EnemyNear, HitDefAttr = SCA,AA)
trigger1 =backedgedist <= 20
trigger3 = enemy,numproj >= 1
trigger4 = (EnemyNear, HitDefAttr = SCA,NP,SP,HP)
;----------------------------------------------
[State -1, roll]
type = ChangeState
value = 7004
triggerall = AILevel >0 && StateType != A
triggerall = roundstate = 2
triggerall = stateno !=[800,9999]
triggerall = p2movetype=A
triggerall = movetype=I
triggerall = ctrl
triggerall = ((p2bodydist x = [30,175])) && random < 6*AILevel
trigger2 =(EnemyNear, HitDefAttr = SCA,AA)
trigger1 = backedgedist >= 100
trigger3 = enemy,numproj >= 1
;-------------------------------------------------
[state -1, AI jump]
type = changestate
triggerall=AILevel>0
triggerall = p2statetype !=L||p2stateno=5120
triggerall = (p2stateno!=[5090,5119]) &&(p2stateno!=[5121,5899])
triggerall = statetype != A
triggerall = var(30)=1
triggerall = random< 25*AILevel || (ctrl && p2movetype=A && p2statetype=C && random<43*AILevel)||(enemy,hitdefattr=SC,AT  && (ctrl||(stateno=130||stateno=120))  && random<35*AILevel)
trigger1 = ctrl && p2movetype=A && p2statetype=C && random<43*AILevel
trigger2 =p2statetype = C && (p2bodydist x = [50,90]) && ctrl&& random<25*AILevel
trigger3= enemy,hitdefattr=SC,AT  && (ctrl||(stateno=130||stateno=120))  && random<35*AILevel
trigger4= p2bodydist x >60 && ctrl&& random<79 && (p2movetype!=A|| enemynear,hitdefattr= SC,AA)
value = 40


[State -1, upfwd]
Type = changestate
value = 40000
triggerall = random < 25*AILevel
triggerall = (AILevel >0)
trigger1 = (StateNo = 420) && movehit

[State -1, AI run]
type=changestate
value=100
triggerall = roundstate = 2
triggerall=AILevel>0 && statetype!=A && ctrl
triggerall = (stateno!=[100,105])
triggerall = p2bodydist y =[-150,0]
trigger1= p2movetype!=A && (p2bodydist x=[140,788])&& random < 8* AILevel
trigger2= p2movetype=H && p2statetype=A && p2bodydist x>40&& random < 8* AILevel
trigger3 = numhelper(2510)=1 && ctrl  && random < 11* AILevel
trigger4 = enemynear,anim= 5300 && p2bodydist x >100&& random < 7* AILevel

[State -1, AI run]
type=changestate
value=20
triggerall = roundstate = 2
triggerall = p2bodydist x >80
triggerall=AILevel>0 && statetype=S && ctrl && random < 12* AILevel
triggerall = p2movetype!=H
triggerall=p2statetype!=L
trigger1= (stateno!=[20,105]) && p2movetype!=A && (p2bodydist x=[20,139])

[State -1, AIRun Back]
type = ChangeState
value = 105
triggerall = AILevel >0
triggerall = stateno !=105
triggerall = statetype != A
triggerall = random <  19*AILevel
triggerall = roundstate = 2
triggerall = ctrl
trigger1 = (p2statetype =L || p2movetype = A) && (p2bodydist x=[-99,15])
;---------------------------------------------------
;Genome
[State -1, Genome]
type = ChangeState
value = 8500
triggerall = power >= 3000
triggerall = command = "genome"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 220 && movecontact
trigger12 = stateno = 221 && movecontact
trigger13 = stateno = 250 && movecontact
trigger14 = stateno = 420 && movecontact
trigger15 = stateno = 2000 && movecontact
trigger16 = stateno = 2003 && movecontact
trigger17 = stateno = 2005 && movecontact
trigger18 = stateno = 2310 && movecontact
trigger19 = stateno = 2311 && movecontact
trigger20 = stateno = 2312 && movecontact
trigger21 = stateno = 2500 && time > 17
trigger22 = stateno = 2501 && time > 17
trigger23 = stateno = 2502 && time > 17

;C4
[State -1, C4]
type = ChangeState
value = 2400
triggerall = (Var(0) = 0)
triggerall = command = "C4"
triggerall = power >= 2000
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl

;RPG
[State -1, RPG]
type = ChangeState
value = 6002
triggerall = (Var(0) = 0)
triggerall = command = "rpg"
triggerall = power >= 3000
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 220 && movecontact
trigger12 = stateno = 221 && movecontact
trigger13 = stateno = 250 && movecontact
trigger14 = stateno = 420 && movecontact
trigger15 = stateno = 2000 && movecontact
trigger16 = stateno = 2003 && movecontact
trigger17 = stateno = 2005 && movecontact
trigger18 = stateno = 2310 && movecontact
trigger19 = stateno = 2311 && movecontact
trigger20 = stateno = 2312 && movecontact
trigger21 = stateno = 2500 && time > 17
trigger22 = stateno = 2501 && time > 17
trigger23 = stateno = 2502 && time > 17

;famas
[State -1, famas]
type = ChangeState
value = 2006
triggerall = (Var(0) = 0)
triggerall = command = "famas"
triggerall = power >= 1000
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl
trigger2 = stateno = 210
trigger2 = movecontact
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 220 && movecontact
trigger12 = stateno = 221 && movecontact
trigger13 = stateno = 250 && movecontact
trigger14 = stateno = 420 && movecontact
trigger15 = stateno = 2000 && movecontact
trigger16 = stateno = 2003 && movecontact
trigger17 = stateno = 2005 && movecontact
trigger18 = stateno = 2310 && movecontact
trigger19 = stateno = 2311 && movecontact
trigger20 = stateno = 2312 && movecontact
trigger21 = stateno = 2500 && time > 17
trigger22 = stateno = 2501 && time > 17
trigger23 = stateno = 2502 && time > 17

;famas2
[State -1, famas2]
type = ChangeState
value = 2007
triggerall = (Var(0) = 0)
triggerall = command = "famas2"
triggerall = power >= 1000
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 220 && movecontact
trigger12 = stateno = 221 && movecontact
trigger13 = stateno = 250 && movecontact
trigger14 = stateno = 420 && movecontact
trigger15 = stateno = 2000 && movecontact
trigger16 = stateno = 2003 && movecontact
trigger17 = stateno = 2005 && movecontact
trigger18 = stateno = 2310 && movecontact
trigger19 = stateno = 2311 && movecontact
trigger20 = stateno = 2312 && movecontact
trigger21 = stateno = 2500 && time > 17
trigger22 = stateno = 2501 && time > 17
trigger23 = stateno = 2502 && time > 17

;socomlow
[State -1, socomlow]
type = ChangeState
value = 2310
triggerall = command = "socomlow"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 220 && movecontact
trigger12 = stateno = 221 && movecontact
trigger13 = stateno = 250 && movecontact
trigger14 = stateno = 420 && movecontact

;silencelow
[State -1, silencelow]
type = ChangeState
value = 2311
triggerall = command = "silencelow"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 220 && movecontact
trigger12 = stateno = 221 && movecontact
trigger13 = stateno = 250 && movecontact
trigger14 = stateno = 420 && movecontact

;twicelow
[State -1, twicelow]
type = ChangeState
value = 2312
triggerall = command = "twicelow"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 220 && movecontact
trigger12 = stateno = 221 && movecontact
trigger13 = stateno = 250 && movecontact
trigger14 = stateno = 420 && movecontact

;stung
[State -1, stung]
type = ChangeState
value = 25189
triggerall = command = "stung"
triggerall = numhelper(2510) = 0
triggerall = (Var(1) = 0)
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl

;stung2
[State -1, stung2]
type = ChangeState
value = 25188
triggerall = command = "stung2"
triggerall = numhelper(2510) = 0
triggerall = (Var(1) = 0)
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl

;stung3
[State -1, stung3]
type = ChangeState
value = 2518
triggerall = command = "stung3"
triggerall = numhelper(2510) = 0
triggerall = (Var(1) = 0)
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl

;Grenade
[State -1, Grenade]
type = ChangeState
value = 2500
triggerall = command = "Grenade"
triggerall = numhelper(2510) = 0
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 220 && movecontact
trigger12 = stateno = 221 && movecontact
trigger13 = stateno = 250 && movecontact
trigger14 = stateno = 420 && movecontact

;Grenade2
[State -1, Grenade2]
type = ChangeState
value = 2501
triggerall = command = "Grenade2"
triggerall = numhelper(2510) = 0
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 220 && movecontact
trigger12 = stateno = 221 && movecontact
trigger13 = stateno = 250 && movecontact
trigger14 = stateno = 420 && movecontact

;Grenade3
[State -1, Grenade3]
type = ChangeState
value = 2502
triggerall = command = "Grenade3"
triggerall = numhelper(2510) = 0
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 220 && movecontact
trigger12 = stateno = 221 && movecontact
trigger13 = stateno = 250 && movecontact
trigger14 = stateno = 420 && movecontact

;roll
[State -1, roll]
type = ChangeState
value = 7002
triggerall = command = "x"
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl

;Invisibility
[State -1, Invisibility]
type = ChangeState
value = 2100
triggerall = (Var(0) = 0)
triggerall = command = "Invisibility"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl

;Mine
[State -1, Mine]
type = ChangeState
value = 2200
triggerall = numhelper(2210) < 3
triggerall = p2bodydist x > 75
triggerall = command = "mine"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl

;broll
[State -1, backroll]
type = ChangeState
value = 7004
triggerall = command = "x"
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl

;TwoShots
[State -1, Twice]
type = ChangeState
value = 2005
triggerall = command = "Twice"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 220 && movecontact
trigger12 = stateno = 221 && movecontact
trigger13 = stateno = 250 && movecontact
trigger14 = stateno = 420 && movecontact

;Silenced
[State -1, Silenced]
type = ChangeState
value = 2003
triggerall = command = "Silenced"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 220 && movecontact
trigger12 = stateno = 221 && movecontact
trigger13 = stateno = 250 && movecontact
trigger14 = stateno = 420 && movecontact

;Baretta
[State -1, Baretta]
type = ChangeState
value = 2000
triggerall = command = "Baretta"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 220 && movecontact
trigger12 = stateno = 221 && movecontact
trigger13 = stateno = 250 && movecontact
trigger14 = stateno = 420 && movecontact

;launch
[State -1, upfwd]
Type = changestate
value = 40000
triggerall = command = "upfwd"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1 = (StateNo = 420)
trigger1 = movehit

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 880
triggerall = command = "z"
triggerall = command = "c"
triggerall = stateno != 100
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = ifelse(p2bodydist x <= 15,201,200)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl|| (stateno=[100,101])



;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl|| (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;Choke
[State -1, Choke]
type = ChangeState
value = 850
triggerall = command = "back_z"
triggerall = command != "holddown"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = ifelse(p2bodydist x <= 15,221,220)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl|| (stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl|| (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl|| (stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl|| (stateno=[100,101])

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl|| (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact


;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl || (stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 7003

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl|| (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = AILevel =0
triggerall= (statetype != A)
trigger1= ctrl|| (stateno=[100,101])
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = AILevel =0
triggerall= (statetype = A)
trigger1= ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = AILevel =0
triggerall= (statetype = A)
trigger1= ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = AILevel =0
triggerall= (statetype = A)
trigger1= ctrl
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 640 && movecontact
trigger4 = stateno = 600 && movecontact
trigger5 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = AILevel =0
triggerall= (statetype = A)
trigger1= ctrl

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = AILevel =0
triggerall= (statetype = A)
trigger1= ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
triggerall = AILevel =0
triggerall= (statetype = A)
trigger1= ctrl
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 640 && movecontact
trigger4 = stateno = 600 && movecontact
trigger5 = stateno = 630 && movecontact

;---------------------------------------------------------------------------------------------------------------------
