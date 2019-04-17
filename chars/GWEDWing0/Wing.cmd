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
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, a
[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, b
time = 20
time = 20
[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, a
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, b
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
name = "upper_x"
command = ~F, D, DF, a
[Command]
name = "upper_y"
command = ~F, D, DF, y
[Command]
name = "upper_y"
command = ~F, D, DF, b
[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x
[Command]
name = "QCF_x"
command = ~D, DF, F, a

[Command]
name = "QCF_y"
command = ~D, DF, F, y
[Command]
name = "QCF_y"
command = ~D, DF, F, b

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x
[Command]
name = "QCB_x"
command = ~D, DB, B, a
[Command]
name = "QCB_y"
command = ~D, DB, B, y
[Command]
name = "QCB_y"
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
[Command]
name = "2b";Required (do not remove)
command = x+y
time = 1
buffer.time=4
[Command]
name = "2b";Required (do not remove)
command = x+a
time = 1
buffer.time=4
[Command]
name = "2b";Required (do not remove)
command = x+b
time = 1
buffer.time=4
[Command]
name = "2b";Required (do not remove)
command = a+b
time = 1
buffer.time=4
[Command]
name = "2b";Required (do not remove)
command = a+y
time = 1
buffer.time=4
[Command]
name = "2b";Required (do not remove)
command = b+y
time = 1
buffer.time=4

[Command]
name = "2b";Required (do not remove)
command = c
time = 1

[Command]
name = "2b";Required (do not remove)
command = z
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
buffer.time=3
[Command]
name = "b"
command = b
time = 1
buffer.time=3
[Command]
name = "c"
command = c
time = 1
buffer.time=3
[Command]
name = "x"
command = x
time = 1
buffer.time=3
[Command]
name = "y"
command = y
time = 1
buffer.time=3
[Command]
name = "z"
command = z
time = 1
buffer.time=3
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
;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = AILevel >0 && roundstate =2 && power >=2000
triggerall = stateno!=5040
triggerall = (p2stateno!=[120,155])
triggerall = ((p2bodydist x>=50) && (p2bodydist y = [-40,20]))
triggerall = stateno != 3000 && (stateno !=[800,899])
triggerall = (stateno !=[1000,1099])
triggerall = (stateno !=[1500,4999])
triggerall = movetype != H
Triggerall = stateno !=245
Triggerall = stateno !=215
triggerall = random < 25*AILevel
triggerall = p2statetype != L
triggerall = statetype!=A
trigger1 = ctrl  &&(p2movetype=A && AILevel >6||AIlevel <=6)
trigger2 = (stateno = 211) && movecontact
trigger3 = (stateno = 240) && movecontact
trigger4 = (stateno = 440) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 610) && movecontact
trigger7 = (stateno = 640) && movecontact
trigger8= stateno=215 && anim=201 && animelemtime(16)>=2 && p2movetype=H
trigger9= stateno=215 && anim=401 && animelemtime(16)>=2&& p2movetype=H
trigger10 =(anim=1010) && animelemtime(30)>3&& p2movetype=H
trigger11 =(anim=1000)&& animelemtime(16)>3&& p2movetype=H
trigger12= stateno=56 && time >4&& p2movetype!=A && p2statetype=A
;-------------------------------------------------------------------------
[State -1, Guard]
type = ChangeState
value = 120
triggerall = movetype !=H
triggerall = roundstate = 2
triggerall = stateno!=[120,155]
triggerall=AILevel>0 
triggerall = stateno!=56 || var(1)=2||ctrl
;triggerall = (statetype!=A)||(statetype=A && p2bodydist x >5)
triggerall =(StateNo !=[200,3999])&&(StateNo != 105)
Triggerall =  Random < (113*AILevel)
triggerall =InGuardDist||((EnemyNear, movetype=A&& enemynear,hitdefattr!=SCA,AA)||( enemynear,hitdefattr=SCA,NP,SP,HP || enemynear,hitdefattr = SCA,AA))|| enemy,numproj >0
trigger1 = ctrl ||stateno=20||stateno=100
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value =  ifelse(p2bodydist x >=120&&power>=30,215,200)
triggerall = numhelper(1001)=0 || p2bodydist x <120
Triggerall = (RoundState = 2) && (AILevel >0)
triggerall=stateno!=5040
Triggerall = (StateType != A)
triggerall = (stateno != [800,3999])
Triggerall = p2bodydist x >=120&&random<15*AIlevel||P2BodyDist X = [0,55]
Triggerall = Random < 40*AILevel
triggerall = (p2bodydist y=[-55,0])
triggerall = enemy, statetype != A
trigger1 = ctrl 
trigger2 = stateno = 200&&movecontact
trigger3= (stateno = 400) && movecontact 
trigger4= enemy,numproj>0 && ctrl && p2bodydist x >=120
trigger5 = p2statetype=S && ctrl && AILevel >6


;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = ifelse(p2bodydist x >=120&&power>=60,215,210)
triggerall = numhelper(1001)=0 || p2bodydist x <120
Triggerall = (RoundState = 2) && (AILevel >0)
triggerall=stateno!=5040
Triggerall = (StateType != A)
triggerall = (stateno != [800,3999])
Triggerall = p2bodydist x >=120&&random<15*AIlevel||P2BodyDist X = [65,90]
Triggerall = Random < 30*AILevel
triggerall = p2statetype !=L
triggerall = (p2bodydist y=[-50,0])&& enemy,vel y >=0
triggerall = enemy, statetype != C 
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movehit
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movehit
trigger6= stateno=215 && anim=201 && animelemtime(16)>=2 && p2movetype=H&& random<20*AILevel
trigger7= stateno=215 && anim=401 && animelemtime(16)>=2 && p2movetype=H && random<20*AILevel
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
Triggerall = (RoundState = 2) && (AILevel >0)
triggerall=stateno!=5040
Triggerall = (StateType != A)
triggerall = (stateno != [800,3999])
Triggerall = (p2statetype=A&&P2BodyDist X = [0,100])||movecontact||P2BodyDist X = [55,100]
Triggerall = Random < 45*AILevel
triggerall = p2statetype !=L
triggerall = (p2bodydist y=[-55,0])&& enemy,vel y >=0
triggerall = enemy, statetype != C 
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact


;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
Triggerall = (RoundState = 2) && (AILevel >0)
triggerall=stateno!=5040
Triggerall = (StateType != A)
triggerall = (stateno != [800,3999])
Triggerall = P2BodyDist X = [0,85]
Triggerall = Random < 45*AILevel
triggerall = p2statetype !=L
triggerall = p2statetype!=A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movehit
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movehit


;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value =  ifelse(p2bodydist x >=120&&power>=30,215,400)
triggerall = numhelper(1001)=0 || p2bodydist x <120
Triggerall = (RoundState = 2) && (AILevel >0)
triggerall=stateno!=5040
Triggerall = (StateType != A)
triggerall = (stateno != [800,3999])
Triggerall = p2bodydist x >=120&&random<10*AIlevel &&p2bodydist y <-40||P2BodyDist X = [0,50]
Triggerall = Random < 20*AILevel
triggerall = (p2bodydist y=[-40,0])&& enemy,vel y >=0 || (p2bodydist x >=120&&(p2bodydist y=[-120,-55]))
trigger1 = ctrl&&(p2statetype=S&& p2bodydist x <120||(p2statetype=A && p2bodydist x >=120))
trigger2 = stateno = 400
trigger2 = animelemtime(2)>0 || movecontact
trigger3= (stateno = 200) && movecontact

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value =  ifelse(p2bodydist x >=120&&power>=60,215,410)
triggerall = numhelper(1001)=0 || p2bodydist x <120
Triggerall = (RoundState = 2) && (AILevel >0)
triggerall=stateno!=5040
Triggerall = (StateType != A)
triggerall = (stateno != [800,3999])
Triggerall = p2bodydist x >=120&&random<10*AIlevel &&p2bodydist y <-40||P2BodyDist X = [55,70]
Triggerall = Random < 45*AILevel
triggerall = p2statetype !=L
triggerall = (p2bodydist y=[-40,0])&& enemy,vel y >=0 || (p2bodydist x >=120&&(p2bodydist y=[-120,-55]))
trigger1 = ctrl && (p2statetype=S&& p2bodydist x <120||(p2statetype=A && p2bodydist x >=120))
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movehit
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 430)&& movehit
trigger6= stateno=215 && anim=201 && animelemtime(16)>=2&& p2movetype=H && random<20*AILevel
trigger7= stateno=215 && anim=401 && animelemtime(16)>=2&& p2movetype=H && random<20*AILevel
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
Triggerall = (RoundState = 2) && (AILevel >0)
triggerall=stateno!=5040
Triggerall = (StateType != A)
triggerall = (stateno != [800,3999])
Triggerall = movecontact && p2bodydist x <55||(p2statetype=L && p2bodydist x =[0,75])||P2BodyDist X = [45,75] 
Triggerall = Random < 45*AILevel
triggerall = p2statetype !=A 
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact && p2statetype=S
trigger3 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
Triggerall = (RoundState = 2) && (AILevel >0)
triggerall=stateno!=5040
Triggerall = (StateType != A)
triggerall = (stateno != [800,3999])
Triggerall = P2BodyDist X = [0,95]
Triggerall = Random < 45*AILevel
triggerall = p2statetype !=L
triggerall = (p2bodydist y=[-75,0])
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movehit
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movehit
trigger6=(stateno = 240) && movehit
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = AILevel >0
triggerall = statetype = A
triggerall =vel y>0 || p2statetype=A
Triggerall = (P2BodyDist X = [0,40])
Triggerall = (P2BodyDist y = [-15,25])
Triggerall = Random <= 25*AILevel
triggerall = roundstate = 2
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = AILevel >0
triggerall = statetype = A
triggerall = vel y>0 || p2statetype=A
Triggerall = (P2BodyDist X = [-15,65])
Triggerall = (P2BodyDist y = [-35,65])
Triggerall = Random <= 35*AILevel
triggerall = roundstate = 2
triggerall = stateno !=631
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = AILevel >0
triggerall = statetype = A
triggerall = p2statetype=A
Triggerall = (P2BodyDist X = [0,80])
Triggerall = (P2BodyDist y = [-85,-5])
Triggerall = Random <= 20*AILevel
triggerall = roundstate = 2
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = AILevel >0
triggerall = statetype = A
triggerall = vel y>0 || p2statetype=A
Triggerall = (P2BodyDist X = [0,65])
Triggerall = (P2BodyDist y = [-35,75])
Triggerall = Random <= 45*AILevel
triggerall = roundstate = 2
triggerall = stateno !=631
trigger1 = ctrl
;--------------------------------
[State -1, AI Throw]
type = ChangeState
value = ifelse(backedgebodydist <40,800,801)
triggerall = random <= 35*AILevel
triggerall = AILevel >0
triggerall= ((p2statetype != A)&&statetype!=A)||(p2statetype=A&&statetype=A)
triggerall = ctrl || stateno=20|| stateno=50
triggerall = stateno != [200,9999]
Triggerall = (RoundState = 2)
triggerall = movetype!=H
triggerall = p2statetype!=L
triggerall = p2movetype!=H
trigger1 = p2bodydist X < 25 && (p2bodydist y = [-50,40]) && ctrl
trigger2 = (p2stateno =[120,150]) &&(p2bodydist X < 25 && (p2bodydist y = [-50,40]))

;---------------------------------------------------------------------------
;Light Kung Fu Palm
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1060
triggerall = ( power >=1000)
triggerall = AILevel >0
triggerall = roundstate = 2
triggerall = p2bodydist x=[-15,55]
triggerall = p2bodydist y=[-75,15]
triggerall = stateno !=[800,4999]
triggerall = p2statetype != L
triggerall = movetype != H
triggerall =  (p2movetype=A && p2statetype=A) || movecontact
triggerall = random <6*AILevel
triggerall = p2movetype!=I
trigger1 = ctrl ;Use combo condition (above)
trigger2 = (stateno = 230) && (movecontact && AILEvel <6||movehit&&AILevel>=6)
trigger3 = (stateno = 430) && (movecontact && AILEvel <6||movehit&&AILevel>=6)
trigger4 = (stateno = 240) && (movecontact && AILEvel <6||movehit&&AILevel>=6)
trigger5 = (stateno = 240) && (movecontact && AILEvel <6||movehit&&AILevel>=6)
trigger6 = (stateno = 600) && (movecontact && AILEvel <6||movehit&&AILevel>=6)
trigger7 = (stateno = 630)&& (movecontact && AILEvel <6||movehit&&AILevel>=6)
trigger8 = (stateno = 610) && (movecontact && AILEvel <6||movehit&&AILevel>=6)
trigger9 = (stateno = 640) && (movecontact && AILEvel <6||movehit&&AILevel>=6)
trigger10= stateno=215 && anim=201 && animelemtime(16)>=2 && p2statetype=A && p2movetype=A
trigger11= stateno=215 && anim=401 && animelemtime(16)>=2&& p2statetype=A && p2movetype=A
;---------------------------------------------------------------------------
;Light Kung Fu Palm
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1050
triggerall = AILevel >0
triggerall = roundstate = 2
triggerall = p2bodydist x=[-15,55]
triggerall = p2bodydist y=[-75,15]
triggerall = stateno !=[800,4999]
triggerall = p2statetype != L
triggerall = movetype != H
triggerall =  (p2movetype=A && p2statetype=A) || movecontact
triggerall = random < 25*AILevel
triggerall = p2movetype!=I
trigger1 = ctrl ;Use combo condition (above)
trigger2 = (stateno = 230) && (movecontact && AILEvel <6||movehit&&AILevel>=6)
trigger3 = (stateno = 430) && (movecontact && AILEvel <6||movehit&&AILevel>=6)
trigger4 = (stateno = 240) && (movecontact && AILEvel <6||movehit&&AILevel>=6)
trigger5 = (stateno = 240) && (movecontact && AILEvel <6||movehit&&AILevel>=6)
trigger6 = (stateno = 600) && (movecontact && AILEvel <6||movehit&&AILevel>=6)
trigger7 = (stateno = 630)&& (movecontact && AILEvel <6||movehit&&AILevel>=6)
trigger8 = (stateno = 610) && (movecontact && AILEvel <6||movehit&&AILevel>=6)
trigger9 = (stateno = 640) && (movecontact && AILEvel <6||movehit&&AILevel>=6)
trigger10= stateno=215 && anim=201 && animelemtime(16)>=2 && p2statetype=A && p2movetype=A
trigger11= stateno=215 && anim=401 && animelemtime(16)>=2&& p2statetype=A && p2movetype=A
;---------------------------------------------------------------------------
;Light Kung Fu Palm
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1020
triggerall = numhelper(1001)=0
triggerall = AILevel >0 && roundstate = 2
triggerall = (p2stateno!=[120,155])
triggerall = numhelper(1001) <= 0
triggerall =random < AILevel * 15
triggerall = ((p2bodydist y<-65) || (statetype =A && p2bodydist y = [45,120])) && random < 24*AILevel || movecontact 
triggerall = stateno != [800,3999]
triggerall = p2stateno=202 &&p2statetype=A || p2statetype=A && p2movetype!=H || p2statetype!=A
trigger1 =  ctrl
trigger2= stateno=215 && anim=201 && animelemtime(16)>=2&& p2bodydist x <125
trigger3= stateno=215 && anim=401 && animelemtime(16)>=2 && p2bodydist x <125
trigger4 = (stateno = 640) && movecontact && p2statetype=A
;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1030
triggerall = numhelper(1001)=0
triggerall = power >=1000
triggerall = AILevel >0 && roundstate = 2
triggerall = (p2stateno!=[120,155])
triggerall = numhelper(1001) <= 0
triggerall =random < AILevel * 8
triggerall = ((p2bodydist y<-65) || (statetype =A && p2bodydist y =[45,120])) && random < 8*AILevel|| movecontact 
triggerall = stateno != [800,3999]
triggerall = p2stateno=202 &&p2statetype=A || p2statetype=A && p2movetype!=H || p2statetype!=A
trigger1 =  ctrl
trigger2= stateno=215 && anim=201 && animelemtime(16)>=2&& p2bodydist x <125
trigger3= stateno=215 && anim=401 && animelemtime(16)>=2 && p2bodydist x <125
trigger4 = (stateno = 640) && movecontact && p2statetype=A
;---------------------------------------------------------------------------
;Light Kung Fu Palm
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = numhelper(1001)=0
triggerall = AILevel >0 && roundstate = 2
triggerall = (p2stateno!=[120,155])
triggerall = numhelper(1001) <= 0
triggerall =random < AILevel * 15
triggerall = ((p2bodydist x>75&& p2bodydist y =[-40,0]) || (statetype =A && p2bodydist y = [-20,-5])) && random < 16*AILevel || movecontact 
triggerall = stateno != [800,3999]
triggerall = p2stateno=202 &&p2statetype=A || p2statetype=A && p2movetype!=H || p2statetype!=A
trigger1 =  ctrl
trigger2 = (stateno = 230) && movecontact && p2bodydist x >75
trigger3 = (stateno = 240) && movecontact
trigger4 = (stateno = 440) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 610) && movecontact && p2statetype=A
trigger7= stateno=215 && anim=201 && animelemtime(16)>=2
trigger8= stateno=215 && anim=401 && animelemtime(16)>=2
;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = numhelper(1001)=0
triggerall = power >=1000
triggerall = AILevel >0 && roundstate = 2
triggerall = (p2stateno!=[120,155])
triggerall = numhelper(1001) <= 0
triggerall =random < AILevel * 8
triggerall = ((p2bodydist x>75&& p2bodydist y =[-40,0]) || (statetype =A && p2bodydist y =[-20,-5])) && random < 6*AILevel|| movecontact 
triggerall = stateno != [800,3999]
triggerall = p2stateno=202 &&p2statetype=A || p2statetype=A && p2movetype!=H || p2statetype!=A
trigger1 =  ctrl
trigger2 = (stateno = 240) && movecontact
trigger3 = (stateno = 440) && movecontact&& (p2bodydist x =[100,130]) && enemy,backedgebodydist <55
trigger4 = (stateno = 240) && movecontact&& (p2bodydist x =[100,130]) && enemy,backedgebodydist <55
trigger5= stateno=215 && anim=201 && animelemtime(16)>=2&& p2bodydist x <125
trigger6= stateno=215 && anim=401 && animelemtime(16)>=2 && p2bodydist x <125

;-------------------------------------------------------------------
[State -1, AISuper Jump]
type = ChangeState
value = 55
triggerall = AILevel >0
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = random <33*AILevel
trigger1 = (stateno = 440) && movehit&&p2stateno=202 && p2bodydist y <-70
trigger2 = (stateno = 210) && movehit&&p2stateno=202 && p2bodydist y <-70
trigger3 = enemy,numproj >0 && p2movetype=A && ctrl
trigger4 =(anim=1010) && animelemtime(30)>3 && enemy,numproj >0 && p2movetype=A
trigger5 =(anim=1000)&& animelemtime(16)>3&& enemy,numproj >0 && p2movetype=A
trigger6= stateno=230 && moveguarded
[State 52, 5]
type = ChangeState
triggerall = ctrl
triggerall = AIlevel>0
triggerall=stateno!=5040
triggerall = var(1)<2
triggerall = stateno=56&&ctrl
triggerall = stateno!=50
triggerall = stateno!=57
triggerall = random <20*AILevel
triggerall = prevstateno!=57
trigger1 = p2movetype=A  && p2bodydist y >55
value =57
;-------------------------------------------------
[state -1, AI jump]
type = changestate
triggerall=AILevel>0 && power >=2000
triggerall = stateno!=5040
triggerall = p2statetype !=L
triggerall = (p2stateno!=[5090,5119]) &&(p2stateno!=[5121,5899])
triggerall = statetype != A
triggerall = var(30)=1
triggerall = roundstate=2
trigger1 = ctrl && var(30)=1
value = 40


[State -1, AI run]
type=changestate
value=100
triggerall = roundstate = 2
triggerall=AILevel >0
triggerall=statetype=S && ctrl
triggerall=stateno!=5040
triggerall = p2bodydist y =[-150,0]
triggerall = p2movetype!=A
triggerall = stateno!=100 
trigger1= (stateno!=[100,105]) && p2movetype!=A && (p2bodydist x=[95,788])&& random < 149&& ctrl
trigger2= (stateno!=[100,105]) && p2statetype=L && (p2bodydist x=[40,150])&& random < 25*AILevel && ctrl

[State -1, AI run]
type=changestate
value=101
triggerall = roundstate = 2
triggerall=AILevel >0
triggerall=stateno!=5040 
triggerall = statetype!=A
triggerall = p2bodydist y =[-150,0]
triggerall = p2movetype!=A||p2bodydist x >100 
triggerall = movetype!=H
triggerall = Random < AIlevel *55
triggerall = p2bodydist x >100 || p2statetype=A
triggerall = stateno!=200 
triggerall = p2stateno=202 &&p2statetype=A || p2statetype=A && p2movetype!=H || p2statetype!=A
trigger1 = (enemy,numproj >0 || enemynear,hitdefattr = SA,AP,AA) && ctrl
trigger2 =(anim=1010) && animelemtime(30)>3 && p2movetype=H
trigger3 =(anim=1000)&& animelemtime(16)>3&& p2movetype=H
trigger4= stateno=215 && anim=201 && animelemtime(16)>=2&& p2movetype=H
trigger5= stateno=215 && anim=401 && animelemtime(16)>=2&& p2movetype=H 
[State -1, AI run]
type=changestate
value=106
triggerall = roundstate = 2
triggerall=AILevel >0
triggerall=stateno!=5040 
triggerall = p2bodydist y =[-150,0]
triggerall = p2movetype!=A
triggerall = movetype!=H
triggerall = statetype!=A
triggerall = Random < AIlevel *45
triggerall = p2bodydist x >100 || p2statetype=A
trigger1 = (enemy,numproj >0 || enemynear,hitdefattr = SA,AP,AA) && ctrl
trigger2 =(anim=1010) && animelemtime(30)>3 && p2movetype!=H
trigger3 =(anim=1000)&& animelemtime(16)>3&& p2movetype!=H
trigger4= stateno=215 && anim=201 && animelemtime(16)>=2&& p2movetype!=H
trigger5= stateno=215 && anim=401 && animelemtime(16)>=2&& p2movetype!=H
[State -1, AI run]
type=changestate
value=20
triggerall = roundstate = 2
triggerall=AILevel >0
triggerall=stateno!=5040&& statetype=S && ctrl && random < 31*AILevel
triggerall = p2movetype!=H
triggerall=p2statetype!=L
trigger1= (stateno!=[20,105]) && p2movetype!=A && (p2bodydist x=[20,149])


[State -1, AIRun Back]
type = ChangeState
value = 105
triggerall =AILevel >0
triggerall=stateno!=5040
triggerall =(stateno!=[100,105])
triggerall = statetype != A
triggerall = random < 49
triggerall = p2stateno!= 1030 &&p2stateno!=10612 && p2stateno!= 854
triggerall = roundstate = 2
triggerall = ctrl
trigger1 = (p2statetype =L&&var(59)=0 || p2movetype = A) && (p2bodydist x=[-99,10])
;===========================================================================
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3050
triggerall = command = "SmashKFUpper"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = AIlevel=0
triggerall=stateno!=5040
trigger1 = ctrl
trigger2 = (stateno = 200) &&  (animelemtime(2)>0 || movecontact)
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) &&  (animelemtime(2)>0 || movecontact)
trigger5 = (stateno = 430) && movecontact
trigger6 = (stateno = 210) && movecontact
trigger7 = (stateno = 211) && movecontact
trigger8 = (stateno = 240) && movecontact
trigger9 = (stateno = 440) && movecontact
trigger10 = (stateno = 240) && movecontact
trigger11 = (stateno = 600) && movecontact
trigger12 = (stateno = 630) && movecontact
trigger13 = (stateno = 610) && movecontact
trigger14 = (stateno = 640) && movecontact
trigger17 =(anim=1010) && animelemtime(30)>3
trigger18 =(anim=1000)&& animelemtime(16)>3
trigger19= stateno=215 && (anim=201|| anim=401) 
trigger20= stateno=215 && (anim=212|| anim=411) 
;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "TripleKFPalm"
triggerall = power >= 2000
triggerall = AIlevel=0
triggerall=stateno!=5040
triggerall = statetype!=A
trigger1 = ctrl || (stateno=[150,156])
trigger2 = (stateno = 200) &&  (animelemtime(2)>0 || movecontact)
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) &&  (animelemtime(2)>0 || movecontact)
trigger5 = (stateno = 430) && movecontact
trigger6 = (stateno = 210) && movecontact
trigger7 = (stateno = 240) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 240) && movecontact
trigger10= stateno=215 && (anim=201|| anim=401) 
trigger11= stateno=215 && (anim=212|| anim=411) 
trigger12 =(anim=1010) && animelemtime(30)>3
trigger13 =(anim=1000)&& animelemtime(16)>3
trigger14= stateno=56 && time >4
trigger15= (stateno=200)&& animelemtime(3)>0
trigger16= (stateno=400)&& animelemtime(4)>0
trigger18= stateno=210&& animelemtime(5)>0
trigger19= (stateno=430) && animelemtime(11)>0
trigger20= (stateno=440) && animelemtime(8)>0
trigger21= (stateno=230) && animelemtime(5)>0
trigger22= (stateno=240) && animelemtime(9)>0
trigger23= stateno=410 && animelemtime(2)>6
;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
;---------------------------------------------------------------------------
;Light Kung Fu Palm
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1060
triggerall = (command="upper_y" && power >=1000)
triggerall = AIlevel=0
triggerall=stateno!=5040
trigger1 = ctrl ;Use combo condition (above)
trigger2 = (stateno = 200) &&  (animelemtime(2)>0 || movecontact)
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400)&&  (animelemtime(2)>0 || movecontact)
trigger5 = (stateno = 430) && movecontact
trigger6 = (stateno = 210) && movecontact
trigger7 = (stateno = 211) && movecontact
trigger8 = (stateno = 240) && movecontact
trigger9 = (stateno = 440) && movecontact
trigger10 = (stateno = 240) && movecontact
trigger11 = (stateno = 600) && movecontact
trigger12 = (stateno = 630) && movecontact
trigger13 = (stateno = 610) && movecontact
trigger14 = (stateno = 640) && movecontact
trigger15= stateno=215 && (anim=201|| anim=401) 
trigger16= stateno=215 && (anim=212|| anim=411) 
;---------------------------------------------------------------------------
;Light Kung Fu Palm
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1050
triggerall = command = "upper_x" || (command="upper_y" && power <1000)
triggerall = AIlevel=0
triggerall=stateno!=5040
trigger1 = ctrl ;Use combo condition (above)
trigger2 = (stateno = 200) &&  (animelemtime(2)>0 || movecontact)
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) &&  (animelemtime(2)>0 || movecontact)
trigger5 = (stateno = 430) && movecontact
trigger6 = (stateno = 210) && movecontact
trigger7 = (stateno = 211) && movecontact
trigger8 = (stateno = 240) && movecontact
trigger9 = (stateno = 440) && movecontact
trigger10 = (stateno = 240) && movecontact
trigger11 = (stateno = 600) && movecontact
trigger12 = (stateno = 630) && movecontact
trigger13 = (stateno = 610) && movecontact
trigger14 = (stateno = 640) && movecontact
trigger15= stateno=215 && (anim=201|| anim=401) 
trigger16= stateno=215 && (anim=212|| anim=411) 
;---------------------------------------------------------------------------
;Light Kung Fu Palm
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "QCF_x" || (command="QCF_y" && power <1000)
triggerall = numhelper(1001)=0
triggerall = AIlevel=0
triggerall=stateno!=5040
trigger1 = ctrl ;Use combo condition (above)
trigger2 = (stateno = 200) &&  (animelemtime(2)>0 || movecontact)
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) &&  (animelemtime(2)>0 || movecontact)
trigger5 = (stateno = 430) && movecontact
trigger6 = (stateno = 210) && movecontact
trigger7 = (stateno = 211) && movecontact
trigger8 = (stateno = 240) && movecontact
trigger9 = (stateno = 440) && movecontact
trigger10 = (stateno = 240) && movecontact
trigger11 = (stateno = 600) && movecontact
trigger12 = (stateno = 630) && movecontact
trigger13 = (stateno = 610) && movecontact
trigger14 = (stateno = 640) && movecontact
trigger15= stateno=215 && (anim=201|| anim=401) 
trigger16= stateno=215 && (anim=212|| anim=411) 
;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
triggerall = numhelper(1001)=0
triggerall = power >=1000
triggerall = AIlevel=0
triggerall=stateno!=5040
trigger1 = ctrl ;Use combo condition (above)
trigger2 = (stateno = 200) &&  (animelemtime(2)>0 || movecontact)
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) &&  (animelemtime(2)>0 || movecontact)
trigger5 = (stateno = 430) && movecontact
trigger6 = (stateno = 210) && movecontact
trigger7 = (stateno = 211) && movecontact
trigger8 = (stateno = 240) && movecontact
trigger9 = (stateno = 440) && movecontact
trigger10 = (stateno = 240) && movecontact
trigger11 = (stateno = 600) && movecontact
trigger12 = (stateno = 630) && movecontact
trigger13 = (stateno = 610) && movecontact
trigger14 = (stateno = 640) && movecontact
trigger15= stateno=215 && (anim=201|| anim=401) 
trigger16= stateno=215 && (anim=212|| anim=411) 
;---------------------------------------------------------------------------
;Light Kung Fu Blow
[State -1, Light Kung Fu Blow]
type = ChangeState
value = 1020
triggerall = command = "QCB_x" || (command="QCB_y" && power <1000)
triggerall = AIlevel=0
triggerall = numhelper(1001)=0
triggerall=stateno!=5040
trigger1 = ctrl ;Use combo condition (above)
trigger2 = (stateno = 200) &&  (animelemtime(2)>0 || movecontact)
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) &&  (animelemtime(2)>0 || movecontact)
trigger5 = (stateno = 430) && movecontact
trigger6 = (stateno = 210) && movecontact
trigger7 = (stateno = 211) && movecontact
trigger8 = (stateno = 240) && movecontact
trigger9 = (stateno = 440) && movecontact
trigger10 = (stateno = 240) && movecontact
trigger11 = (stateno = 600) && movecontact
trigger12 = (stateno = 630) && movecontact
trigger13 = (stateno = 610) && movecontact
trigger14 = (stateno = 640) && movecontact
trigger15= stateno=215 && (anim=201|| anim=401) 
trigger16= stateno=215 && (anim=212|| anim=411) 
;---------------------------------------------------------------------------
;Light Kung Fu Blow
[State -1, Light Kung Fu Blow]
type = ChangeState
value = 1030
triggerall = command = "QCB_y"
triggerall = AIlevel=0
triggerall=stateno!=5040
triggerall = numhelper(1001)=0
triggerall = power >=1000
trigger1 = ctrl ;Use combo condition (above)
trigger2 = (stateno = 200) &&  (animelemtime(2)>0 || movecontact)
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) &&  (animelemtime(2)>0 || movecontact)
trigger5 = (stateno = 430) && movecontact
trigger6 = (stateno = 210) && movecontact
trigger7 = (stateno = 211) && movecontact
trigger8 = (stateno = 240) && movecontact
trigger9 = (stateno = 440) && movecontact
trigger10 = (stateno = 240) && movecontact
trigger11 = (stateno = 600) && movecontact
trigger12 = (stateno = 630) && movecontact
trigger13 = (stateno = 610) && movecontact
trigger14 = (stateno = 640) && movecontact
trigger15= stateno=215 && (anim=201|| anim=401) 
trigger16= stateno=215 && (anim=212|| anim=411) 

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = ifelse(command="holdfwd"&&statetype!=A,101,ifelse(command="holdback"&&statetype!=A,106,ifelse(statetype=A,56,55)))
triggerall = command = "2b"
triggerall = var(1)=0
triggerall = stateno!=57
triggerall = stateno!=56
triggerall = AIlevel=0
triggerall=stateno!=5040
trigger1 = ctrl
trigger2= ((p2statetype=A&&movecontact&&(p2stateno=202||p2stateno=10612))||(p2statetype!=A&movecontact)) &&stateno=[200,640]
trigger3 =(anim=1000)&& animelemtime(16)>3
trigger4 =(anim=1010) && animelemtime(30)>3
trigger5= stateno=215 && (anim=201|| anim=401) && animelemtime(16)>=0
trigger6= stateno=215 && (anim=212|| anim=411) && animelemtime(31)>=0
trigger7=  (stateno=[150,156]) && command!="holdfwd" && command!="holdback" 
trigger8= (stateno=200)&& animelemtime(3)>0
trigger9= (stateno=400)&& animelemtime(4)>0
trigger10= stateno=210&& animelemtime(5)>0
trigger11= (stateno=430) && animelemtime(11)>0
trigger12= (stateno=440) && animelemtime(8)>0
trigger13= (stateno=230) && animelemtime(5)>0
trigger14= (stateno=240) && animelemtime(9)>0
trigger15= stateno=410 && animelemtime(2)>6
trigger16 =(anim=1030)&& animelemtime(10)>3
trigger17 =(anim=1040) && animelemtime(18)>3
[State 52, 5]
type = ChangeState
triggerall = ctrl
triggerall = AIlevel=0
triggerall=stateno!=5040
triggerall = var(1)<2
triggerall = stateno=56&&ctrl
triggerall = stateno!=50
triggerall = stateno!=57
triggerall = prevstateno!=57
trigger1 = command="2b"
value =ifelse( (command="holdfwd"||command="holdback"),57,56)
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
triggerall = AIlevel=0
triggerall=stateno!=5040
triggerall = stateno!=100
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
triggerall = AIlevel=0
triggerall=stateno!=5040
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist y =0 && statetype=S || (statetype=A&&p2bodydist y=[-40,10])
trigger1 = command = "holdfwd"||command = "holdback"
trigger1 = p2bodydist X < 24
trigger1 = ((p2statetype = S) || (p2statetype = C))||p2statetype=A
trigger1 = p2movetype != H
[State -1, Kung Fu Throw]
type = ChangeState
value = 801
triggerall = command = "x"
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist y =0 && statetype=S || (statetype=A&&p2bodydist y=[-40,10])
trigger1 = command = "holdfwd"||command = "holdback"
trigger1 = p2bodydist X < 24
trigger1 = ((p2statetype = S) || (p2statetype = C))||p2statetype=A
trigger1 = p2movetype != H




;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value =  ifelse(p2bodydist x >=120&&power>=30,215,200)
triggerall = numhelper(1001)=0 || p2bodydist x <120
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = AIlevel=0
triggerall=stateno!=5040
triggerall = AIlevel=0
triggerall=stateno!=5040
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelemtime(2)>0 || movecontact
trigger3= (stateno = 400) && movecontact
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = ifelse(p2bodydist x >=120&&power>=60,215,210)
triggerall = numhelper(1001)=0 || p2bodydist x <120
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = AIlevel=0
triggerall=stateno!=5040
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230)&& movehit
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movehit
trigger6= stateno=215 && anim=201 && animelemtime(16)>=2
trigger7= stateno=215 && anim=401 && animelemtime(16)>=2
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = AIlevel=0
triggerall=stateno!=5040
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = AIlevel=0
triggerall=stateno!=5040
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movehit
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movehit


;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value =  ifelse(p2bodydist x >=120&&power>=30,215,400)
triggerall = command = "x"
triggerall = numhelper(1001)=0 || p2bodydist x <120
triggerall = command = "holddown"
triggerall = AIlevel=0
triggerall=stateno!=5040
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = animelemtime(2)>0 || movecontact
trigger3= (stateno = 200) && movecontact

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value =  ifelse(p2bodydist x >=120&&power>=60,215,410)
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = numhelper(1001)=0 || p2bodydist x <120
triggerall = AIlevel=0
triggerall=stateno!=5040
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movehit
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movehit
trigger6= stateno=215 && anim=201 && animelemtime(16)>=2
trigger7= stateno=215 && anim=401 && animelemtime(16)>=2

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = AIlevel=0
triggerall=stateno!=5040
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact
trigger4 = (stateno = 230) && movehit

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = AIlevel=0
triggerall=stateno!=5040
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movehit
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movehit
trigger6=(stateno = 240) && movehit
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = AIlevel=0
triggerall=stateno!=5040
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = AIlevel=0
triggerall=stateno!=5040
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = AIlevel=0
triggerall=stateno!=5040
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = AIlevel=0
triggerall=stateno!=5040
triggerall = statetype = A
trigger1 = ctrl