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

[Command]
name = "infinity"
command = ~B,DB,D,DF,F, x+y
time = 30

[Command]
name = "infinity"
command = ~B,DB,D,DF,F, y+z
time = 30

[Command]
name = "infinity"
command = ~B,DB,D,DF,F, x+z
time = 30

[Command]
name = "infinity"
command = ~B,DB,D,DF,F, b
time = 30

[Command]
name = "infinity"
command = ~B,DB,D,DF,F, x+y
time = 30

[Command]
name = "infinity"
command = ~B,DB,D,DF,F, y+z
time = 30

[Command]
name = "infinity"
command = ~B,DB,D,DF,F, x+z
time = 30

[Command]
name = "infinity"
command = ~B,DB,D,DF,F, b
time = 30

[Command]
name = "psystrike"
command = ~B, D, DB, x+y
time = 30

[Command]
name = "psystrike"
command = ~B, D, DB, y+z
time = 30

[Command]
name = "psystrike"
command = ~B, D, DB, x+z
time = 30

[Command]
name = "psystrike"
command = ~B, D, DB, b
time = 30

[Command]
name = "psycho"
command = ~D,B,x+y
time = 15
[Command]
name = "psycho"
command = ~D,DB,B,x+y
time = 15
[Command]
name = "psycho"
command = ~D,B,y+z
time = 15
[Command]
name = "psycho"
command = ~D,DB,B,y+z
time = 15
[Command]
name = "psycho"
command = ~D,B,x+z
time = 15
[Command]
name = "psycho"
command = ~D,DB,B,x+z
time = 15

[Command]
name = "psycho"
command = ~D,B,b
time = 15
[Command]
name = "psycho"
command = ~D,DB,B,b
time = 15

[Command]
name = "hakai"
command = ~D,F,x+y
time = 15
[Command]
name = "hakai"
command = ~D,DF,F,x+y
time = 15
[Command]
name = "hakai"
command = ~D,F,y+z
time = 15
[Command]
name = "hakai"
command = ~D,DF,F,y+z
time = 15
[Command]
name = "hakai"
command = ~D,F,x+z
time = 15
[Command]
name = "hakai"
command = ~D,DF,F,x+z
time = 15

[Command]
name = "hakai"
command = ~D,F,b
time = 15
[Command]
name = "hakai"
command = ~D,DF,F,b
time = 15

;-| Special Motions |------------------------------------------------------

[Command]
name = "Guard Cancel"
command = ~B, DB, D, x
time = 15

[Command]
name = "Guard Cancel"
command = ~B, DB, D, y
time = 15

[Command]
name = "Guard Cancel"
command = ~B, DB, D, z
time = 15

[Command]
name = "Guard Cancel"
command = ~B, D, x
time = 15

[Command]
name = "Guard Cancel"
command = ~B, D, y
time = 15

[Command]
name = "Guard Cancel"
command = ~B, D, z
time = 15

[Command]
name = "teleport_x"
command = ~B,D,DB,x
time = 15
[Command]
name = "teleport_y"
command = ~B,D,DB,y
time = 15
[Command]
name = "teleport_z"
command = ~B,D,DB,z
time = 15

[Command]
name = "psycho_cut_x"
command = ~D,B,x
time = 15
[Command]
name = "psycho_cut_x"
command = ~D,DB,B,x
time = 15
[Command]
name = "psycho_cut_y"
command = ~D,B,y
time = 15
[Command]
name = "psycho_cut_y"
command = ~D,DB,B,y
time = 15
[Command]
name = "psycho_cut_z"
command = ~D,B,z
time = 15
[Command]
name = "psycho_cut_z"
command = ~D,DB,B,z
time = 15

[Command]
name = "future_sight"
command = ~D,D,x
time = 15
[Command]
name = "future_sight"
command = ~D,D,y
time = 15
[Command]
name = "future_sight"
command = ~D,D,z
time = 15

[Command]
name = "hurricane_x"
command = ~F,D,DF,x
time = 15
[Command]
name = "hurricane_y"
command = ~F,D,DF,y
time = 15
[Command]
name = "hurricane_z"
command = ~F,D,DF,z
time = 15

[Command]
name = "aura_sphere"
command = ~D,F,x
time = 15
[Command]
name = "aura_sphere"
command = ~D,DF,F,x
time = 15
[Command]
name = "aura_sphere"
command = ~D,F,y
time = 15
[Command]
name = "aura_sphere"
command = ~D,DF,F,y
time = 15
[Command]
name = "aura_sphere"
command = ~D,F,z
time = 15
[Command]
name = "aura_sphere"
command = ~D,DF,F,z
time = 15

[Command]
name = "miracle_eye"
command = x+c
time = 1
[Command]
name = "miracle_eye"
command = y+c
time = 1
[Command]
name = "miracle_eye"
command = z+c
time = 1
[Command]
name = "miracle_eye"
command = a;shortcut command
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
name = "recovery";Required (do not remove)
command = x+y
time = 1
[Command]
name = "recovery";Required (do not remove)
command = y+z
time = 1
[Command]
name = "recovery";Required (do not remove)
command = x+z
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
name = "hold_a";Required (do not remove)
command = /a
time = 1

[Command]
name = "hold_b";Required (do not remove)
command = /b

time = 1
[Command]
name = "hold_c";Required (do not remove)
command = /c
time = 1

[Command]
name = "hold_x";Required (do not remove)
command = /x
time = 1

[Command]
name = "hold_y";Required (do not remove)
command = /y
time = 1

[Command]
name = "hold_z";Required (do not remove)
command = /z
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11
;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = null;ChangeState          ;Don't change this
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
;var(59) = AI variable
;var(58) = Difficulty variable

;===========================================================================
;---------------------------------------------------------------------------
[State -1, AI]
type = VarSet
triggerall = !var(58)
triggerall = RoundState = 2
trigger1 = AILevel && ctrl
trigger2 = Var(59)
var(58) = 10

[State -1, AI]
type = VarSet
triggerall = var(58)
trigger1 = RoundState = 2
var(59) = 10

[State -3,?????]
Type = ChangeState
Value = 120
triggerall = Alive&&var(58) && roundstate = 2
TriggerAll = StateNo!=[120,155]
triggerall = ctrl||stateno=21||Stateno=22||stateno=100||stateno=101||stateno=102||stateno = 52&&animtime = 0
triggerall = MoveType != H
Triggerall = fvar(38) != 0&&fvar(38) != 3
Triggerall = InGuardDist||fvar(38) = [1,2]
Triggerall = (var(58)=[1,9])&&P2BodyDist X>0||var(58)>=10
Trigger1 = (Random<=999) - 600 * Var(16)
Trigger2 = P2BodyDist X>100||(EnemyNear,Time=[30,60])
Trigger2 = Random<=700 - 400 * Var(16)

[State -3, Taunt]
type = ChangeState
value = 195
triggerall = Alive&var(58) && roundstate = 2
triggerall = statetype != A
triggerall = ctrl||stateno=21
trigger1 = (100*life/const(data.life)) != 0&&(100*EnemyNear,life/EnemyNear,const(data.life)) != 0
trigger1 = Ceil((100*life/const(data.life))/(100*EnemyNear,life/EnemyNear,const(data.life))) >= 2
trigger1 = P2bodydist X >= 180
trigger1 = Random <= 160/var(58)

[State -1, Fall Recovery]
type = changestate
value = 5210
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall= stateno = 5050 && canrecover
triggerall = vel y > 0 && pos y < -20
trigger1 = random <= 850

[State -1, Fall Recovery]
type = changestate
value = 5200
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall= stateno = 5050 && gethitvar(fall.recover)
trigger1 = vel y > 0 && pos y >= -5

[State -1, ??]
type = ChangeState
value = 21
triggerall = Var(58)
triggerall = RoundState = 2
triggerall = !Inguarddist
;triggerall = Random <= 700
triggerall = StateType != A
;triggerall = p2StateType != L
;triggerall = p2StateNo != [5120,5299]
triggerall = stateno != 21
triggerall =!stateno = 22
trigger1 = ctrl || Stateno = 40
trigger1 = Stateno != 100
;triggerall = (PrevStateNo != [140,155]) || P2BodyDist X > 140
trigger1 =(P2BodyDist X = [10,120])
trigger2 = Stateno = 101
trigger2 = random = [100,800]
trigger2 = P2bodydist X = [-5,10]

[State -1, ??]
type = ChangeState
value = 41
triggerall = !Var(56)
triggerall = Var(58)
triggerall = RoundState = 2
;triggerall = Random <= 700
triggerall = StateType != A
triggerall = P2movetype != A
triggerall = P2statetype != L || P2Stateno = 5120 && (Enemy, Animtime = -2)
;triggerall = p2StateType != L
;triggerall = p2StateNo != [5120,5299]
triggerall = ctrl || (stateno = [20,22]) || (Stateno = [100,102])
triggerall = P2movetype != H
;triggerall = (PrevStateNo != [140,155]) || P2BodyDist X > 140
trigger1 =(P2BodyDist X = [-5,50])
trigger1 = P2BodyDist Y+(Enemy,Vel Y*6+Enemy,Const(Movement.YAccel)*10)*(P2StateType=A&&Enemy,Vel Y!=0) = [-60,0]
trigger1 = Random = [100,250]

[State -1, ??]
type = ChangeState
value = 100
triggerall = Var(58)
triggerall = RoundState = 2
;triggerall = Random <= 700
triggerall = StateType != A
;triggerall = p2StateType != L
;triggerall = p2StateNo != [5120,5299]
triggerall = ctrl||(stateno = [20,22]) || (Stateno = [100,102])||((anim = 40)&&Pos Y >= 0)||((anim = 52)&&Pos Y >= 0)
triggerall = Stateno != [100,102]
triggerall = Stateno != [120,152]
;triggerall = (PrevStateNo != [140,155]) || P2BodyDist X > 140
trigger1 =(P2BodyDist X >= 120) || (Random <= 80 && P2bodydist X >= 90)

[State -1, ??]
type = ChangeState
value = ifelse((enemy, pos x < 0),1400,1402)
triggerall = var(7) = 0
triggerall = Var(58)
triggerall = RoundState = 2
triggerall = power < 3000
triggerall = StateType != A
triggerall = ctrl || (stateno = [20,22]) || (Stateno = [100,102]) || (Stateno = [120,143])
triggerall = Enemy, hitdefattr != SCA, NP, SP, HP, NT, ST, HT
triggerall = (P2Stateno != [120,152])
triggerall = P2bodydist X = [-5,100]
triggerall = enemy, pos x != [-75,75]
trigger1 = Random = [100,400]
trigger1 = (p2bodydist X = [10,70]) || (Var(54) = [5,75])
trigger1 = P2statetype != L
trigger1 = Enemy, Movetype = A
trigger1 = Enemy, Hitdefattr = SCA, NA, SA, HA
trigger2 = Random = [600,900]
trigger2 = (p2bodydist X = [10,65]) || (Var(54) = [5,70])
trigger2 = P2statetype = A
trigger2 = Enemy, Movetype = A
trigger2 = Enemy, Hitdefattr = SCA, NA, SA, HA
trigger2 = Enemy, Animtime <= 7
trigger2 = P2BodyDist Y+(Enemy,Vel Y*6+Enemy,Const(Movement.YAccel)*12)*(P2StateType=A&&Enemy,Vel Y!=0) = [-100,0]
[State -1, ??]
type = ChangeState
value = 1401
triggerall = var(7) = 0
triggerall = Var(58)
triggerall = RoundState = 2
triggerall = power < 3000
triggerall = StateType != A
triggerall = ctrl || (stateno = [20,22]) || (Stateno = [100,102]) || (Stateno = [120,143])
triggerall = Enemy, hitdefattr != SCA, NP, SP, HP, NT, ST, HT
triggerall = (P2Stateno != [120,152])
triggerall = P2bodydist X = [-5,100]
triggerall = enemy, pos x = [-75,75]
trigger1 = Random = [100,400]
trigger1 = (p2bodydist X = [10,70]) || (Var(54) = [5,75])
trigger1 = P2statetype != L
trigger1 = Enemy, Movetype = A
trigger1 = Enemy, Hitdefattr = SCA, NA, SA, HA
trigger2 = Random = [600,900]
trigger2 = (p2bodydist X = [10,65]) || (Var(54) = [5,70])
trigger2 = P2statetype = A
trigger2 = Enemy, Movetype = A
trigger2 = Enemy, Hitdefattr = SCA, NA, SA, HA
trigger2 = Enemy, Animtime <= 7
trigger2 = P2BodyDist Y+(Enemy,Vel Y*6+Enemy,Const(Movement.YAccel)*12)*(P2StateType=A&&Enemy,Vel Y!=0) = [-100,0]

[State -1, ??]
type = ChangeState
value = ifelse((enemy, pos x < 0),1410,1412)
triggerall = var(7) = 0
triggerall = Var(58)
triggerall = RoundState = 2
triggerall = Random <= 100
triggerall = StateType = A
;triggerall = p2StateType != L
;triggerall = p2StateNo != [5120,5299]
triggerall = ctrl||(stateno = [20,22]) || (Stateno = [100,102])||((anim = 40)&&Pos Y >= 0)||((anim = 52)&&Pos Y >= 0)
triggerall = Stateno != [100,102]
triggerall = Stateno != [120,152]
;triggerall = (PrevStateNo != [140,155]) || P2BodyDist X > 140
trigger1 =(enemy, pos x != [-75,75])
trigger1 =(p2dist x != [-60,60])
[State -1, ??]
type = ChangeState
value = 1411
triggerall = var(7) = 0
triggerall = Var(58)
triggerall = RoundState = 2
triggerall = Random <= 100
triggerall = StateType = A
;triggerall = p2StateType != L
;triggerall = p2StateNo != [5120,5299]
triggerall = ctrl||(stateno = [20,22]) || (Stateno = [100,102])||((anim = 40)&&Pos Y >= 0)||((anim = 52)&&Pos Y >= 0)
triggerall = Stateno != [100,102]
triggerall = Stateno != [120,152]
;triggerall = (PrevStateNo != [140,155]) || P2BodyDist X > 140
trigger1 =(enemy, pos x = [-75,75])
trigger1 =(p2dist x != [-60,60])

[State -1,]
type = ChangeState
value = 800
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = ctrl||(stateno = [20,22]) || (Stateno = [100,102])||((anim = 40)&&Pos Y >= 0)||((anim = 52)&&Pos Y >= 0)
trigger1 = (Enemynear,Prevstateno = 5120) && (Enemynear, AnimTime >= 12)
trigger1 = Random = [100,200]
trigger1 = P2BodyDist X <= 57 && P2StateType != A
trigger1 = P2StateType != L
trigger2 = (Enemynear,Prevstateno = 5120) && (Enemynear, AnimTime >= 12)
trigger2 = Random = [1,200]
trigger2 = P2BodyDist X <= 57 && P2StateType != A
trigger2 = P2StateType != L && p2movetype = A
trigger2 = Enemynear, Hitdefattr = SCA,NT,ST,HT
trigger2 = Enemy, Numproj = 0
trigger3 = (Enemynear, Prevstateno != 5120)
trigger3 = Random = [100,200]
trigger3 = P2BodyDist X <= 57 && P2StateType != A
trigger3 = P2StateType != L && P2movetype != H
trigger4 = (Enemynear, Prevstateno != 5120) && (Enemynear, AnimTime >= 6)
trigger4 = Random = [1,200]
trigger4 = P2BodyDist X <= 30 && P2StateType != A
trigger4 = P2StateType != L && p2movetype = A
trigger4 = Enemynear, Hitdefattr != SCA,NT,ST,HT
trigger4 = Enemy, Numproj = 0

[State -3, ???????????]
type = ChangeState
value = 800
triggerall = Alive&&var(58) && roundstate = 2
triggerall = MoveType != H && (Enemynear,Prevstateno != 5120)|| (Enemynear,Prevstateno = 5120) && (Enemynear, AnimTime >= 12)
triggerall = (statetype != A&&EnemyNear,statetype != A)
triggerall = EnemyNear,statetype != L&&EnemyNear,MoveType != H
triggerall = ctrl||(stateno = [20,22]) || (Stateno = [100,102])||((anim = 40)&&Pos Y >= 0)||((anim = 52)&&Pos Y >= 0)
trigger1 = Random = [1,100]
trigger1 = EnemyNear,StateNo<5070
trigger1 = p2bodydist X = [-10,57]
trigger1 = P2BodyDist Y+(Enemy,Vel Y*6+Enemy,Const(Movement.YAccel)*10)*(P2StateType=A&&Enemy,Vel Y!=0) = [-5,0]

;---------

[State -1,]
type = ChangeState
value = 200
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = ctrl || (stateno = [20,22]) || (Stateno = [100,102])
triggerall = Enemy, hitdefattr != SCA, NP, SP, HP, HA
trigger1 = Random = [200,700]
trigger1 = P2BodyDist Y+(Enemy,Vel Y*6+Enemy,Const(Movement.YAccel)*10)*(P2StateType=A&&Enemy,Vel Y!=0) = [-45,0]
trigger1 = (p2bodydist X = [-5,40]) || (Var(54) = [5,55])
trigger1 = P2statetype != L
trigger1 = Enemy, Movetype != A
trigger2 = Random = [100,400]
trigger2 = P2BodyDist Y+(Enemy,Vel Y*6+Enemy,Const(Movement.YAccel)*10)*(P2StateType=A&&Enemy,Vel Y!=0) = [-45,0]
trigger2 = (p2bodydist X = [-5,40]) || (Var(54) = [5,55])
trigger2 = P2statetype != L
trigger2 = Enemy, Movetype = A
trigger2 = Enemy, Animtime <= 4
trigger3 = Stateno = 210
trigger3 = Movecontact
trigger3 = random = [300,700]
trigger3 = P2statetype != L


[State -1,]
type = ChangeState
value = 210
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = P2bodydist X = [-5,76]
trigger1 = Stateno = 200
trigger1 = Movecontact
trigger1 = random = [300,700]
trigger1 = P2statetype != L

[State -1,]
type = ChangeState
value = 410
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = P2bodydist X = [-5,100]
trigger1 = Stateno = 200 || Stateno = 400
trigger1 = Movecontact
trigger1 = random = [100,500]
trigger1 = P2statetype != L

[State -1,]
type = ChangeState
value = 220
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = P2bodydist X = [-5,100]
trigger1 = Stateno = 210
trigger1 = MoveHit
trigger1 = random = [200,700]
trigger1 = P2statetype != L

[State -1,]
type = ChangeState
value = 220
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = P2bodydist X = [-5,100]
trigger1 = Stateno = 210
trigger1 = MoveGuarded
trigger1 = random = [300,800]
trigger1 = P2statetype != L

[State -1,]
type = ChangeState
value = 710
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = P2bodydist X = [-5,70]
trigger1 = Stateno = 210 || Stateno = 220 || Stateno = 410 || Stateno = 420
trigger1 = MoveGuarded
trigger1 = random = [200,800]
trigger1 = P2statetype != L

[State -1,]
type = ChangeState
value = 710
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = P2bodydist X = [-5,70]
trigger1 = Stateno = 220
trigger1 = Movecontact
trigger1 = random = [300,900]
trigger1 = P2statetype != L

[State -1,]
type = ChangeState
value = 220
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = P2bodydist X = [-5,100]
trigger1 = Stateno = 210
trigger1 = MoveHit
trigger1 = random = [300,700]
trigger1 = P2statetype != L

[State -1,]
type = ChangeState
value = 200
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = P2bodydist X = [-5,40]
trigger1 = Stateno = 400
trigger1 = MoveHit
trigger1 = random = [200,700]
trigger1 = P2statetype != L

[State -1,]
type = ChangeState
value = 400
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = ctrl || (stateno = [20,22]) || (Stateno = [100,102])
triggerall = Enemy, hitdefattr != SCA, NP, SP, HP, HA
triggerall = P2bodydist X = [-5,50]
triggerall = P2statetype != A
trigger1 = Random = [200,700]
trigger1 = (p2bodydist X = [-5,60]) || (Var(54) = [5,55])
trigger1 = P2statetype != L
trigger1 = Enemy, Movetype != A
trigger2 = Random = [100,700]
trigger2 = (p2bodydist X = [-5,60]) || (Var(54) = [5,55])
trigger2 = P2statetype != L
trigger2 = Enemy, Movetype = A
trigger2 = Enemy, Animtime <= 4

[State -1,]
type = ChangeState
value = 400
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = P2bodydist X = [-5,60]
trigger1 = (Stateno = 400 && Animtime = 0) || (Stateno = 200 && P2bodydist X <= 90)
trigger1 = MoveContact
trigger1 = random = [100,900]
trigger1 = P2statetype != L
trigger2 = Stateno = 410
trigger2 = Movecontact
trigger2 = random = [100,500]
trigger2 = P2statetype != L

[State -1,]
type = ChangeState
value = 420
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = P2bodydist X = [-5,117]
trigger1 = Stateno = 210
trigger1 = MoveHit
trigger1 = random = [200,700]
trigger1 = P2statetype != L

[State -1]
type = ChangeState
value = 900
;triggerall = var(8) = 0
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = P2bodydist X = [-5,105]
trigger1 = Stateno = 420
trigger1 = MoveHit
trigger1 = Random = [200,800]
trigger2 = Stateno = 420 || Stateno = 220
trigger2 = Moveguarded
trigger2 = P2bodydist X = [-5,100]
trigger2 = Random = [400,600]
trigger3 = Stateno = 700
trigger3 = Moveguarded
trigger3 = Random = [100,500]

[State -1]
type = ChangeState
value = 1200
triggerall = !Var(56)
triggerall = Var(58)
triggerall = numhelper(1201) = 0
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = ctrl || (stateno = [20,22]) || (Stateno = [100,102])
triggerall = statetype != A
trigger1 = P2bodydist X = [120,180]
trigger1 = Random = [100,200]
trigger1 = Enemy, NumProj <= 0
trigger2 = P2bodydist X >= 100
trigger2 = P2statetype = L
trigger2 = Random = [300,600]
trigger2 = P2movetype != A
trigger3 = P2bodydist X = [180,220]
trigger3 = Random = [100,200]
trigger3 = Numproj >= 1
trigger4 = P2bodydist X >= 240
trigger4 = Random = [300,700]
trigger4 = Enemy, Numproj <= 0

[State -1]
type = ChangeState
value = 1150
;triggerall = var(8) = 0
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = power >= 500
triggerall = StateType != A
triggerall = P2bodydist X = [-5,75]
trigger1 = Random = [700,710]
trigger1 = stateno = [150,153]
trigger1 = Var(13) <= 0
trigger1 = Power != [1750,2500]
trigger2 = Random = [300,315]
trigger2 = stateno = [150,153]
trigger2 = Var(13) > 0
trigger2 = Power != [800,1500]
trigger3 = Enemy, Hitdefattr = SCA, HA, HP
trigger3 = Random = [890,900]
trigger3 = stateno = [150,153]
trigger3 = Power != [1000,1700]

[State -1,]
type = ChangeState
value = Ifelse(p2bodydist X <= 30,1100,1105)
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = P2bodydist X = [-5,75]
trigger1 = Random = [650,700]
trigger1 = (p2bodydist X = [-5,65]) || (Var(54) = [5,75])
trigger1 = P2statetype != L
trigger1 = Enemy, Movetype = A
trigger1 = Enemy, hitdefattr = SCA, NT, ST, HT, HA, NA, SA
trigger1 = Prevstateno = 5120 || Stateno = 5120 && Animtime = 0
trigger2 = Random = [350,400]
trigger2 = (p2bodydist X = [-5,75]) || (Var(54) = [5,65])
trigger2 = P2statetype != L
trigger2 = Enemy, Movetype = A
trigger2 = Enemy, Animtime <= 8
trigger2 = ctrl || (stateno = [20,22]) || (Stateno = [100,102])
trigger3 = Random = [600,800]
trigger3 = (p2bodydist X = [-5,45]) || (Var(54) = [5,50])
trigger3 = Enemy, hitdefattr = SCA, NT, ST, HT, HA, NA, SA
trigger3 = Enemy, Movetype = A
trigger3 = P2statetype != L
trigger3 = P2BodyDist Y+(Enemy,Vel Y*6+Enemy,Const(Movement.YAccel)*18)*(P2StateType=A&&Enemy,Vel Y!=0) = [-20,20]
trigger3 = ctrl || (stateno = [20,22]) || (Stateno = [100,102])
trigger4 = Stateno = 210
trigger4 = MoveHit
trigger4 = P2statetype = A

[State -1]
type = ChangeState
value = 1000
;triggerall = var(8) = 0
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = ctrl || (stateno = [20,22]) || (Stateno = [100,102])
trigger1 = p2bodydist X >= 150
trigger1 = P2BodyDist Y+(Enemy,Vel Y*6+Enemy,Const(Movement.YAccel)*18)*(P2StateType=A&&Enemy,Vel Y!=0) = [-20,20]
trigger1 = Random = [800,950]
trigger1 = Enemy, Numproj <= 0

[State -1]
type = ChangeState
value = 1020
;triggerall = var(8) = 0
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype = A
triggerall = ctrl || (stateno = [20,22]) || (Stateno = [100,102])
trigger1 = p2bodydist X >= 150
trigger1 = P2BodyDist Y+(Enemy,Vel Y*6+Enemy,Const(Movement.YAccel)*18)*(P2StateType=A&&Enemy,Vel Y!=0) = [-20,20]
trigger1 = Random = [800,950]
trigger1 = Enemy, Numproj <= 0

[State -1,]
type = ChangeState
value = 700
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
trigger1 = P2BodyDist Y+(Enemy,Vel Y*6+Enemy,Const(Movement.YAccel)*10)*(P2StateType=A&&Enemy,Vel Y!=0) = [-5,0]
trigger1 = (p2bodydist X = [-5,92]) || (Var(54) = [5,85])
trigger1 = P2statetype != L
trigger1 = Enemy, Movetype != A
trigger1 = Stateno = 400 || Stateno = 210
trigger1 = Random = [750,900]
trigger1 = Movecontact

[State -1,]
type = ChangeState
value = 740
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
trigger1 = Stateno = 700
trigger1 = MoveHit

[State -3, Taunt]
type = ChangeState
value = 195
triggerall = Alive&var(58) && roundstate = 2
triggerall = statetype != A
triggerall = ctrl || (stateno = [20,22]) || (Stateno = [100,102])
trigger1 = (100*life/const(data.life)) != 0&&(100*EnemyNear,life/EnemyNear,const(data.life)) != 0
trigger1 = Ceil((100*life/const(data.life))/(100*EnemyNear,life/EnemyNear,const(data.life))) >= 2
trigger1 = P2bodydist X >= 180
trigger1 = Random <= 160/var(58)

;---

[State -1,]
type = ChangeState
value = 610
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype = A
triggerall = ctrl
triggerall = Stateno != 745
trigger1 = Random = [100,900]
trigger1 = P2BodyDist Y+(Enemy,Vel Y*6+Enemy,Const(Movement.YAccel)*10)*(P2StateType=A&&Enemy,Vel Y!=0) = [-25,25]
trigger1 = (p2bodydist X = [-5,60]) || (Var(54) = [5,55])
trigger1 = P2statetype != L

[State -1,]
type = ChangeState
value = 720
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype = A
triggerall = Stateno = 610
trigger1 = Movecontact
trigger1 = P2statetype != L

[State -1,]
type = ChangeState
value = 620
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype = A
triggerall = Stateno = 600
trigger1 = Movecontact
trigger1 = prevstateno != 745
trigger1 = P2statetype != L

[State -1,]
type = ChangeState
value = 600
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype = A
triggerall = stateno = 745
trigger1 = P2BodyDist Y+(Enemy,Vel Y*6+Enemy,Const(Movement.YAccel)*10)*(P2StateType=A&&Enemy,Vel Y!=0) = [-50,40]
trigger1 = (p2bodydist X = [-5,60]) || (Var(54) = [5,55])
trigger1 = P2statetype != L

[State -1,]
type = ChangeState
value = 610
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype = A
triggerall = PrevStateno = 745
trigger1 = Stateno = 600
trigger1 = Movecontact
trigger1 = P2statetype != L

[State -1,]
type = ChangeState
value = 3100
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = ctrl || (stateno = [20,22]) || (Stateno = [100,102]) || (Stateno = [120,143])
triggerall = Enemy, hitdefattr != SCA, NP, SP, HP, NT, ST, HT
triggerall = (P2Stateno != [120,152])
triggerall = P2bodydist X = [-5,100]
triggerall = power >= 3000
triggerall = Enemy, Numproj <= 0
trigger1 = Random = [100,400]
trigger1 = (p2bodydist X = [10,70]) || (Var(54) = [5,75])
trigger1 = P2statetype != L
trigger1 = Enemy, Movetype = A
trigger1 = Enemy, Hitdefattr = SCA, NA, SA, HA
trigger2 = Random = [600,900]
trigger2 = (p2bodydist X = [10,65]) || (Var(54) = [5,70])
trigger2 = P2statetype = A
trigger2 = Enemy, Movetype = A
trigger2 = Enemy, Hitdefattr = SCA, NA, SA, HA
trigger2 = Enemy, Animtime <= 7
trigger2 = P2BodyDist Y+(Enemy,Vel Y*6+Enemy,Const(Movement.YAccel)*12)*(P2StateType=A&&Enemy,Vel Y!=0) = [-100,0]

[State -1,]
type = ChangeState
value = 3200
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = P2bodydist X = [-5,100]
triggerall = P2statetype != A
triggerall = Power >= 3000
trigger1 = random = [600,700]
trigger1 = Stateno = 200 || Stateno = 400 || Stateno = 210
trigger1 = Movecontact
trigger2 = Enemy, Hitdefattr = SCA, NT, ST, HT, NA
trigger2 = P2movetype = A
trigger2 = Enemy, Animtime <= 3 
trigger2 = ctrl || (stateno = [20,22]) || (Stateno = [100,102])
trigger2 = random = [500,700]

[State -1]
type = ChangeState
value = 3000
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = power >= 1000
triggerall = numhelper(3000) = 0
triggerall = numhelper(3001) = 0
triggerall = numhelper(3002) = 0
triggerall = numhelper(3003) = 0
triggerall = numhelper(3004) = 0
triggerall = numhelper(3005) = 0
triggerall = numhelper(3006) = 0
triggerall = numhelper(3007) = 0
triggerall = numhelper(3008) = 0
triggerall = numhelper(3009) = 0
trigger1 = (Stateno = [1300,1312]) && statetype != A
trigger1 = MoveHit
trigger1 = Random = [500,600]
trigger2 = Random = [700,900]
trigger2 = Power >= 2000
trigger2 = enemy, Numproj >= 1
trigger2 = P2bodydist X = [90,165]
trigger2 = ctrl || (stateno = [20,22]) || (Stateno = [100,102])
trigger3 = Stateno = 220 || Stateno = 420
trigger3 = MoveHit
trigger3 = Random = [100,250]
trigger4 = Teammode = Simul
trigger4 = Partner, ALIVE
trigger4 = P2movetype = H
trigger4 = P2bodydist X = [190,260]
trigger4 = Random = [200,400]
trigger4 = ctrl || (stateno = [20,22]) || (Stateno = [100,102])

[State -1,]
type = ChangeState
value = 3050
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = P2bodydist X = [-5,110]
triggerall = Power >= 1000
triggerall = P2stateno != 5120
trigger1 = P2BodyDist Y+(Enemy,Vel Y*6+Enemy,Const(Movement.YAccel)*10)*(P2StateType=A&&Enemy,Vel Y!=0) = [-15,40]
trigger1 = random = [300,500]
trigger1 = (p2Stateno = [5020,5030]) || (p2Stateno = [5050,5080])
trigger1 = ctrl || (stateno = [20,22]) || (Stateno = [100,102])
trigger2 = Enemy, Hitdefattr = SCA, NT, ST, HT, NA, SA
trigger2 = P2movetype = A
trigger2 = Enemy, Animtime <= 3 
trigger2 = ctrl || (stateno = [20,22]) || (Stateno = [100,102])
trigger2 = random = [700,730]
trigger2 = P2statetype != A
trigger3 = Stateno = 410 || Stateno = 220 || Stateno = 420
trigger3 = Random = [200,300]
trigger3 = P2statetype != A
trigger3 = MoveHit

[State -1,]
type = ChangeState
value = 710
triggerall = !Var(56)
triggerall = Var(58)
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall = statetype != A
triggerall = P2bodydist X = [-5,120]
triggerall = P2statetype = L || P2statetype = A
trigger1 = P2BodyDist Y+(Enemy,Vel Y*6+Enemy,Const(Movement.YAccel)*10)*(P2StateType=A&&Enemy,Vel Y!=0) = [-10,40]
trigger1 = random = [100,250]
trigger1 = (p2Stateno = [5020,5030]) || (p2Stateno = [5050,5080])
trigger1 = ctrl || (stateno = [20,22]) || (Stateno = [100,102])

;===========================================================================
; Human Commands
;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = (stateno = [200,299]) && MoveContact
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
trigger7 = (stateno = [900,901]) && MoveContact
var(1) = 1

[State -1, Miracle Eye Reset]
type = VarSet
trigger1 = 1
var(9) = 0

[State -1, Miracle Eye Check]
type = VarSet
trigger1 =(stateno = [200,299]) && (MoveContact || movetype = I)
trigger2 = (stateno = [400,499]) && (MoveContact || movetype = I)
trigger3 = (stateno = [700,710]) && (MoveContact || movetype = I)
trigger4 = stateno = 750 && (MoveContact || movetype = I)
trigger5 = (stateno = [900,901]) && MoveContact
trigger6 = stateno = 1010 && animelemtime(6) >= 0
trigger7 = (stateno = [1300,1307]) && (MoveContact || movetype = I)
var(9) = 1
[State -1, Air Miracle Eye Check]
type = VarSet
trigger1 =(stateno = [600,699]) && (MoveContact || movetype = I)
trigger2 = stateno = 720 && (MoveContact || movetype = I)
trigger3 = (stateno = [1100,1199]) && (animelemtime(10) >= 0); && animelemtime(15) < 0)
trigger4 = (stateno = [1310,1312]) && (MoveContact || movetype = I)
trigger5 = (stateno = [1350,1352]) && (MoveContact || movetype = I)
var(9) = ifelse(pos y >= 0,1,2)

;===========================================================================

;---------------------------------------------------------------------------
[State -1, Psychic Infinity]
type = ChangeState
value = 3200
triggerall = var(22) = 2 || var(22) = 3
triggerall = var(59) <= 0
triggerall = command = "infinity"
triggerall = power >= 3000
triggerall = var(18) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = (stateno = [200,299]) && MoveContact
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
trigger7 = (stateno = [900,901]) && MoveContact
trigger8 = (stateno = [1300,1309]) && MoveContact
trigger9 = (stateno = [1310,1312]) && animelemtime(5) < 0 && (MoveContact || movetype = I)

;---------------------------------------------------------------------------
[State -1, Psystrike]
type = ChangeState
value = 3100
triggerall = var(22) = 1 || var(22) = 3
triggerall = var(59) <= 0
triggerall = command = "psystrike"
triggerall = power >= 3000
triggerall = var(18) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;---------------------------------------------------------------------------
[State -1, Psyshock (Ground)]
type = ChangeState
value = 3050
triggerall = var(59) <= 0
triggerall = command = "psycho";_qcf"
triggerall = power >= 1000
triggerall = var(18) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = (stateno = [200,299]) && MoveContact
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
trigger7 = (stateno = [900,901]) && MoveContact
trigger8 = (stateno = [1300,1309]) && MoveContact
trigger9 = (stateno = [1310,1312]) && animelemtime(5) < 0 && (MoveContact || movetype = I)

;---------------------------------------------------------------------------
; Hyper Beam

[State -1, Hyper Beam (Air)]
type = ChangeState
value = 3001
triggerall = var(59) <= 0
triggerall = command = "hakai"
triggerall = power >= 1000
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)
trigger5 = stateno = 745
trigger6 = (stateno = [1310,1312]) && animelemtime(5) >= 0 && (MoveContact || movetype = I)
trigger7 = (stateno = [1350,1359]) && (movecontact)

[State -1, Hyper Beam (Ground)]
type = ChangeState
value = 3000
triggerall = var(59) <= 0
triggerall = command = "hakai";_qcf"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = (stateno = [200,299]) && MoveContact
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
trigger7 = (stateno = [900,901]) && MoveContact
trigger8 = (stateno = [1300,1309]) && MoveContact
trigger9 = (stateno = [1310,1312]) && animelemtime(5) < 0 && (MoveContact || movetype = I)

;---------------------------------------------------------------------------
; Teleport

[State -1, Teleport (Air)]
type = ChangeState
value = 1412
triggerall = command = "teleport_z"
triggerall = var(7) = 0
trigger1 = (ctrl) && (statetype = A)
trigger2 = stateno = 745
[State -1, Teleport (Air)]
type = ChangeState
value = 1411
triggerall = command = "teleport_y"
triggerall = var(7) = 0
trigger1 = (ctrl) && (statetype = A)
trigger2 = stateno = 745
[State -1, Teleport (Air)]
type = ChangeState
value = 1410
triggerall = command = "teleport_x"
triggerall = var(7) = 0
trigger1 = (ctrl) && (statetype = A)
trigger2 = stateno = 745

[State -1, Teleport (Ground)]
type = ChangeState
value = 1402
triggerall = command = "teleport_z"
triggerall = var(7) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
[State -1, Teleport (Ground)]
type = ChangeState
value = 1401
triggerall = command = "teleport_y"
triggerall = var(7) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
[State -1, Teleport (Ground)]
type = ChangeState
value = 1400
triggerall = command = "teleport_x"
triggerall = var(7) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101


;---------------------------------------------------------------------------
; Future Sight

[State -1, Future Sight]
type = ChangeState
value = 1200
triggerall = command = "future_sight"
trigger1 = var(1)

;---------------------------------------------------------------------------
; Psycho Cut

[State -1, Psycho Cut Air (heavy)]
type = ChangeState
value = 1352
triggerall = command = "psycho_cut_z"
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)
trigger5 = stateno = 745

[State -1, Psycho Cut Air (medium)]
type = ChangeState
value = 1351
triggerall = command = "psycho_cut_y"
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)
trigger5 = stateno = 745

[State -1, Psycho Cut Air (light)]
type = ChangeState
value = 1350
triggerall = command = "psycho_cut_x"
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)
trigger5 = stateno = 745

[State -1, Psycho Cut (heavy)]
type = ChangeState
value = 1302
triggerall = command = "psycho_cut_z"
trigger1 = var(1)

[State -1, Psycho Cut (medium)]
type = ChangeState
value = 1301
triggerall = command = "psycho_cut_y"
trigger1 = var(1)

[State -1, Psycho Cut (light)]
type = ChangeState
value = 1300
triggerall = command = "psycho_cut_x"
trigger1 = var(1)

;---------------------------------------------------------------------------
; Guard Cancel Hurricane
[State -1]
type = ChangeState
value = 1150
;triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = power >= 500 && var(6) = 0
triggerall = StateType != A
triggerall = command = "Guard Cancel"
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------
; Hurricane

[State -1, Hurricane (heavy)]
type = ChangeState
value = 1110
triggerall = command = "hurricane_z"
triggerall = numhelper(1101) = 0
trigger1 = var(1)

[State -1, Hurricane (medium)]
type = ChangeState
value = 1105
triggerall = command = "hurricane_y"
triggerall = numhelper(1101) = 0
trigger1 = var(1)

[State -1, Hurricane (light)]
type = ChangeState
value = 1100
triggerall = command = "hurricane_x"
triggerall = numhelper(1101) = 0
trigger1 = var(1)

;---------------------------------------------------------------------------
; Aura Sphere

[State -1, Aura Sphere (Air)]
type = ChangeState
value = 1020
triggerall = command = "aura_sphere"
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)
trigger5 = stateno = 745

[State -1, Aura Sphere (Ground)]
type = ChangeState
value = 1000
triggerall = command = "aura_sphere"
trigger1 = var(1)

;---------------------------------------------------------------------------
; Miracle Eye Air

[State -1, Miracle Eye Air (raw)]
type = ChangeState
value = 955
triggerall = command = "miracle_eye"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != [950,956]

[State -1, Miracle Eye Air (cancel)]
type = ChangeState
value = 956
triggerall = command = "miracle_eye"
trigger1 = var(9) = 2 && power >= 500
trigger1 = stateno != [950,956]

;---------------------------------------------------------------------------
; Miracle Eye

[State -1, Miracle Eye (raw)]
type = ChangeState
value = 950
triggerall = command = "miracle_eye"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = stateno != [950,956]

[State -1, Miracle Eye (cancel)]
type = ChangeState
value = 951
triggerall = command = "miracle_eye"
trigger1 = var(9) = 1 && power >= 500
trigger1 = stateno != [950,956]

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

;---------------------------------------------------------------------------
; Throw
[State -1, ]
type = ChangeState
value = 800
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = statetype = S
triggerall = stateno != [100,107]
triggerall = (command = "y") && (command = "z") || command = "b"
trigger1 = ctrl

;---------------------------------------------------------------------------
; Elemental Punch
[State -1, Elemental Punch (Overhead)]
type = ChangeState
value = 900
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = (command = "z") && (command != "holddown") && (command = "holdfwd")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1

[State -1, Elemental Punch (Combo)]
type = ChangeState
value = 901
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = (command = "z") && (command != "holddown") && (command = "holdfwd")
trigger1 = (stateno = [200,219]) && MoveContact
trigger2 = stateno = 220 && movecontact && animelemtime(5) > 0
trigger3 = (stateno = [400,499]) && MoveContact

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start" && stateno != 195
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Launcher
[State -1, Launcher]
type = ChangeState
value = 700
triggerall = var(8) = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = stateno != [100,107]
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 400 && MoveContact
trigger5 = stateno = 410 && MoveContact
trigger6 = stateno = 220 && Movecontact
trigger7 = stateno = 420 && MoveContact

;---------------------------------------------------------------------------
; OTG
[State -1, OTG]
type = ChangeState
value = 710
triggerall = var(8) = 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = (ctrl) && (statetype = C)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 400 && MoveContact
trigger5 = stateno = 410 && MoveContact
trigger6 = stateno = 220 && MoveContact
trigger7 = stateno = 420 && MoveContact

;---------------------------------------------------------------------------
; Meteor Move
[State -1, Meteor Smash]
type = ChangeState
value = 720
triggerall = var(8) = 0
triggerall = command = "c"
triggerall = stateno != 101
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)

;---------------------------------------------------------------------------
; Dash Attack
[State -1, Dash Attack]
type = ChangeState
value = 750
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = stateno = 101
triggerall = var(11) = 0
trigger1 = command = "c"

;---------------------------------------------------------------------------
; Standing Light
[State -1, Standing Light]
type = ChangeState
value = 200
triggerall = var(8) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
; Standing Medium
[State -1, Standing Medium]
type = ChangeState
value = 210
triggerall = var(8) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 400 && MoveContact

;---------------------------------------------------------------------------
; Standing Heavy
[State -1, Standing Heavy]
type = ChangeState
value = 220
triggerall = var(8) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 400 && MoveContact
trigger5 = stateno = 410 && MoveContact

;---------------------------------------------------------------------------
; Crouching Light
[State -1, Crouching Light]
type = ChangeState
value = 400
triggerall = var(8) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = (ctrl) && (statetype = C)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 400 && animelemtime(4) >= 0

;---------------------------------------------------------------------------
; Crouching Medium
[State -1, Crouching Medium]
type = ChangeState
value = 410
triggerall = var(8) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = (ctrl) && (statetype = C)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 400 && MoveContact

;---------------------------------------------------------------------------
; Crouching Heavy
[State -1, Crouching Heavy]
type = ChangeState
value = 420
triggerall = var(8) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = (ctrl) && (statetype = C)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 400 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 410 && MoveContact

;---------------------------------------------------------------------------
; Jumping Light
[State -1, Jumping Light]
type = ChangeState
value = 600
triggerall = var(8) = 0
triggerall = command = "x"
trigger1 = (ctrl) && (statetype = A)
trigger2 = stateno = 745

;---------------------------------------------------------------------------
; Jumping Medium
[State -1, Jumping Medium]
type = ChangeState
value = 610
triggerall = var(8) = 0
triggerall = command = "y"
trigger1 = (ctrl) && (statetype = A)
trigger2 = stateno = 600 && (movecontact)
trigger3 = stateno = 745

;---------------------------------------------------------------------------
; Jumping Heavy
[State -1, Jumping Heavy]
type = ChangeState
value = 620
triggerall = var(8) = 0
triggerall = command = "z"
trigger1 = (ctrl) && (statetype = A)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 745