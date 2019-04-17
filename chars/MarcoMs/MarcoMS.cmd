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
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "BCK"
command = B
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "IRONKNUCKLE"
command = x+z
time = 10

[Command]
name = "holdz"
command = /z
time = 1


[Command]
name = "leave"
command = /D,y
time = 1

[Command]
name = "holdb"
command = /b
time = 1

;-| Release Button |--------------------------------------------------------------
[Command]
name = "rely"
command = ~y
time = 1

[Command]
name = "relx"
command = ~x
time = 1


[Command]
name = "relz"
command = ~z
time = 1


[Command]
name = "relF"
command = ~F
time = 1

[Command]
name = "relB"
command = ~B
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
;Smash Kung Fu Upper (uses one super bar)
;[State -1, Smash Kung Fu Upper]
;type = ChangeState
;value = 3050
;triggerall = command = "SmashKFUpper"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != [3050,3100)
;trigger2 = movecontact
;trigger3 = stateno = 1310 || stateno = 1330 ;From blocking

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;[State -1, Triple Kung Fu Palm]
;type = ChangeState
;value = 3000
;triggerall = command = "TripleKFPalm"
;triggerall = power >= 1000
;trigger1 = statetype = S
;trigger1 = ctrl
;trigger2 = statetype != A
;trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != [3000,3050)
;trigger2 = movecontact
;trigger3 = stateno = 1310 || stateno = 1330 ;From blocking

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
;[State -1, Combo condition Reset]
;type = VarSet
;trigger1 = 1
;var(1) = 0
;
;[State -1, Combo condition Check]
;type = VarSet
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact
;trigger3 = stateno = 1310 || stateno = 1330 ;From blocking
;var(1) = 1

;===========================================================================
;Artificial Intelligence
;===========================================================================
;var(59) = AI variable
;var(50) = Difficulty variable

[State -1, AI ON] ; Turn the AI on when
Type = VarSet
TriggerAll = Var(59) < 1; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 59
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(59)>0 ; it is on and
Trigger1=RoundState!=2 ; the round is not started yet or is already over
Trigger2=!IsHelper ; OR if we are a player, but
Trigger2=AILevel=0 ; the computer is not in control
v=59
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1


;--------------------------------------------------------------------------------------------------------------------------------
;===========================================================================
;Artificial Intelligence
;===========================================================================
;var(59) = AI variable
;var(50) = Difficulty variable

[State -1, AI ON] ; Turn the AI on when
Type = VarSet
TriggerAll = Var(59) < 1; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 59
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(59)>0 ; it is on and
Trigger1=RoundState!=2 ; the round is not started yet or is already over
Trigger2=!IsHelper ; OR if we are a player, but
Trigger2=AILevel=0 ; the computer is not in control
v=59
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

[State -1]
Type=VarSet
trigger1=var(59)
Trigger1=movetype=h;&&var(59)&&(time*tickspersecond)/2
trigger2=roundstate=1||roundstate=0
trigger2=AILEVEL!=0
trigger3=var(59)&&win
trigger4=var(59)&&lose
var(50)=random%16


;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;[State -1, Run Fwd]
;type = ChangeState
;value = 100
;trigger1 = command = "FF"
;trigger1 = statetype = S
;trigger1 = ctrl

;---------------------------------------------------------------------------
;AI1
[State -1, ShootStandN]
type = ChangeState
value = 200
triggerall=var(10)<100
triggerall = stateno!=20
triggerall = stateno!=40;triggerall = var(10)=0;si es 0 te deja dispara siempre
triggerall = var(59)
triggerall = var(50)>=1
triggerall = time>10
triggerall = p2statetype!=A
triggerall = p2bodydist x>30
triggerall = p2bodydist x<200
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 1200
;---------------------------------------------------------------------------
;AI
[State -1, ShootCrouch]
type = ChangeState
value = 1200
triggerall=var(10)<100
triggerall = var(59)
triggerall = var(10)=0;si es 0 te deja dispara siempre
triggerall = palno!=5
triggerall = var(50)=0
triggerall = time>3
triggerall=movetype!=h
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno=200
trigger3 = stateno=1200
;trigger4=var(59)&&command="holdup"
;---------------------------------------------------------------------------
;AI
[State -1, ShootCDevil]
type = ChangeState
value = 1200
triggerall=var(10)<100
triggerall = var(59)
triggerall = var(10)=0;si es 0 te deja dispara siempre
triggerall = palno=5
triggerall = var(19)>numhelper(3000)
triggerall = var(50)>2
triggerall = time>3
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno=200
trigger3 = stateno=1200
;---------------------------------------------------------------------------
;AI1infinity
[State -1, ShootStandN]
type = ChangeState
value = 200
triggerall=var(10)<100
triggerall = stateno!=20
triggerall = stateno!=40
triggerall = var(59)
triggerall = time>10
triggerall = p2statetype!=A
triggerall = p2bodydist x>200
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 1200
trigger4 = 40

;---------------------------------------------------------------------------
;AI1
;GrenadeN
[State -1, Grenade1]
type = ChangeState
value = 250
triggerall = var(59)
triggerall = var(17)>0&&var(10)<=100
triggerall = random%2=1
triggerall = p2bodydist x<200
triggerall = time>9
triggerall = statetype = S
triggerall = p2bodydist x>60
triggerall = numhelper(2250)<var(20);2
triggerall = var(11)!=3
trigger1 = ctrl
trigger2 = stateno = 250


;---------------------------------------------------------------------------
;AI2
;GrenadeN
[State -1, Grenade2]
type = ChangeState
value = 250
triggerall= var(10)<100;||(var(10)=100&&statetype=C)
triggerall = var(59)
triggerall = var(17)>0&&var(10)<=100
triggerall = time>9
triggerall = statetype = S
triggerall = p2bodydist x<60
triggerall = numhelper(2250)<var(20);2
triggerall = var(11)!=3
trigger1 = ctrl
trigger2 = stateno = 250
;---------------------------------------------------------------------------
;AI3
;GRENADE/Cannon
[State -1, GRENADE]
type = ChangeState
value = 250
triggerall= (var(10)<100)||(var(24)>0&&var(10)=100)
triggerall = var(59)
triggerall = time>9
triggerall = statetype = S
triggerall = p2bodydist x<60
triggerall = numhelper(2250)<var(20);2
triggerall = var(11)!=3
trigger1 = ctrl
trigger2 = stateno = 250
;--------------------------------------------------------------------------
;JumpAi
[State -1, Jump]
type = ChangeState
value = 2400
triggerall = var(59)&&var(10)<100&&PALNO!=11
triggerall = p2statetype=A
triggerall = statetype = S
triggerall = random%5=1
triggerall = p2bodydist x>130
trigger1 = stateno=0
trigger2 = stateno=40
trigger3 = stateno=200
;---------------------------------------------------------------------------
;AI
[State -1, AimUp]
type = ChangeState
value = 40
triggerall = var(59)
triggerall = statetype = S
triggerall = p2bodydist x<12
triggerall = enemy,vel y!=0
triggerall = enemy,statetype=A
triggerall=var(10)<100
triggerall=stateno!=1300
trigger1 = stateno=0;var(1) ;Use combo condition (above)
trigger2 = stateno = 200
;---------------------------------------------------------------------------
;AI Life Buy
[State -1, BuyLife]
type = ChangeState
value = 195
triggerall = var(59)
triggerall = (power>=3000)
triggerall = var(13)<99
triggerall = stateno!=195
triggerall = roundstate=2
trigger1 = var(50)=0;var(1) ;Use combo condition (above)
trigger2=var(50)=4&&((var(13)=0)||((var(13)>0)&&(var(16)>0)))
trigger3=var(50)=5&&((var(13)=0)||((var(13)>0)&&(numhelper(21100)>var(13)*2)))
trigger4=var(50)=6&&((var(13)=0)||((var(13)>0)&&((numhelper(15000))||(var(10)>=100))))
trigger5=var(50)=7&&var(16)!=0
trigger6=var(50)=10&&(numhelper(21100)!=0)
trigger7=var(50)=13&&((numhelper(15000))||(var(10)>=100))
;---------------------------------------------------------------------------
;Standing knife AI
[State -1, Knife]
type = ChangeState
value = ifelse(random%2=1,210,211)
triggerall=var(10)<100
triggerall = vel x=0
triggerall = var(59)
triggerall = statetype = S
triggerall = ctrl
triggerall = p2statetype!=C
triggerall = p2statetype!=A
triggerall = stateno != 20
triggerall = stateno != 210&&stateno != 211&&stateno != 20
trigger1 = p2bodydist X < 12
;---------------------------------------------------------------------------
;SGUNNERCANNONSTANDAI
[State -1, SGUNNERCANNON]
type = ChangeState
value = 15056
triggerall = VAR(59)&&var(10)=105;triggerall=anim!=18207
triggerall=numhelper(13250)<1+2*(var(27)=1)
triggerall=p2bodydist x <80&&p2bodydist x>22
triggerall=((anim!=18207)||((anim=18207)&&animelem=4,1))
trigger1 = statetype = S&&stateno!=15058
;---------------------------------------------------------------------------
;SGUNNERCANNONCROUCH
[State -1, SGUNNERCANNON]
type = ChangeState
value = 15059
triggerall =VAR(59)&&var(10)=105;triggerall=anim!=18209
triggerall=numhelper(13250)<1+2*(var(27)=1)
triggerall=p2bodydist x <80&&p2bodydist x>22
triggerall=((anim!=18209)||((anim=18209)&&animelem=4,1))
trigger1 = statetype = C
;---------------------------------------------------------------------------
;CLAVO AI
[State -1, CLAVO]
type = ChangeState
value = 15060
triggerall=var(10)=105
triggerall = vel x=0
triggerall = var(59)
triggerall = statetype = S
triggerall = ctrl
triggerall = p2statetype!=C
triggerall = p2statetype!=A
triggerall = stateno != 20
triggerall = stateno != 210&&stateno != 211&&stateno != 20
trigger1 = p2bodydist X < 22
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MELEE AI
[State -1, MELEE]
type = ChangeState
value = 15110
triggerall=var(10)=108
triggerall = vel x=0
triggerall = var(59)
triggerall = statetype = S
triggerall = ctrl
triggerall = p2statetype!=C
triggerall = p2statetype!=A
triggerall = stateno != 20
triggerall = stateno != 210&&stateno != 211&&stateno != 20
trigger1 = p2bodydist X < 22

;---------------------------------------------------------------------------
[State -1, MELEELVARMORAI]
type = ChangeState
value = 15124
triggerall = var(59)
triggerall = statetype != C&&statetype!=A
triggerall = ctrl
triggerall = stateno!=15124
triggerall=var(10)=109
trigger1 = facing=1&&p2bodydist X <= 22&&enemy,facing=-1
trigger2 = facing=-1&&p2bodydist X<= 22&&enemy,facing=1
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

;Standing Kick
[State -1, Kick]
type = ChangeState
value = 230;ifelse(random%2=0,210,211)
triggerall=var(10)<100
triggerall = vel x=0
triggerall = var(59)
triggerall = statetype = S
triggerall = ctrl
triggerall = p2statetype!=A
triggerall = p2statetype=C
triggerall = stateno != 20
triggerall = stateno != 210&&stateno != 211&&stateno != 20
trigger1 = p2bodydist X < 12



;---------------------------------------------------------------------------
;AimUP
[State -1, AimUp]
type = ChangeState
value = 40-40*VAR(10)=103
triggerall=(var(10)!=9)&&(var(10)<100)
triggerall = command = "holdup"
triggerall = command != "holdfwd";stateno!=40
triggerall = stateno!=52&&stateno!=1000&&anim!=11000&&anim!=4700
triggerall = stateno!=20&&stateno!=12&&stateno!=11
triggerall=(enemynear,pos y<pos y)&&((abs(enemynear,pos x-pos x))<(enemynear,const(size.ground.front)))
trigger1 = stateno=0&&var(10)<100;var(1) ;Use combo condition (above)
trigger2 = stateno = 200&&(var(10)<100)



;---------------------------------------------------------------------------
;DRILLUP
[State -1, DRILLUP]
type = ChangeState
value = 400
triggerall = command = "y"&&var(10)=103&&var(27)=0&&stateno!=401&&command!="x"
trigger1 = stateno=0
trigger2 = stateno=40
trigger3 = stateno=200

;---------------------------------------------------------------------------
;DRILLDOWN
[State -1, DRILLDOWN]
type = ChangeState
value = 401
triggerall = command = "y"&&var(10)=103&&var(27)=1&&stateno!=400&&command!="x"
trigger1 = stateno=0
trigger2 = stateno=40
trigger3 = stateno=200
;---------------------------------------------------------------------------
;Jump
[State -1, Jump]
type = ChangeState
value = 2400
triggerall = (var(10)<100)
triggerall = command = "y"&&((palno!=11)||((palno=11)&&((var(10)!=0)&&(var(10)!=1)&&(var(10)!=14)&&(var(10)!=15))))
triggerall = roundstate=2
trigger1 = stateno=0
trigger2 = stateno=40
trigger3 = stateno=200

;---------------------------------------------------------------------------
;JumpCLONE
[State -1, JumpCLONE];&&var(10)<100
type = ChangeState
value = 2406
triggerall = command = "y"&&palno=11&&((var(10)=0)||(var(10)=1)||(var(10)=14)||(var(10)=15))
trigger1 = stateno=0
trigger2 = stateno=40
trigger3 = stateno=200
trigger4 = stateno=20
;---------------------------------------------------------------------------
[State -1, JUMPDONKEY]
type = ChangeState
value = 15144
triggerall = command = "y"&&var(10)=111&&command != "x"
triggerall=ctrl
trigger1 = (statetype=S)
;---------------------------------------------------------------------------
[State -1, JUMPSARMOR]
type = ChangeState
value = 15115
triggerall = command = "y"&&var(10)=108&&command != "x"
triggerall=ctrl
trigger1 = (statetype=S||statetype=C)&&stateno!=11

;---------------------------------------------------------------------------
[State -1, JUMPLVARMOR]
type = ChangeState
value = 15125
triggerall = command = "y"&&var(10)=109&&command != "x"
triggerall=ctrl
trigger1 = (statetype=S||statetype=C)&&stateno!=11
;--------------------------------------------------------------------------
;JumpSLUGNOID
[State -1, JumpSLUGNOID]
type = ChangeState
value = 15040
triggerall = command = "y"&&var(10)=104&&command != "x"
triggerall=ctrl
trigger1 = statetype=S&&stateno!=15049
;---------------------------------------------------------------------------
;JUMPSV
[State -1, JUMPSV]
type = ChangeState
value = 2400
triggerall = command = "y"&&var(10)>=100&&statetype!=C&&var(10)!=101&&command!="x"&&var(10)!=103&&var(10)!=104&&var(10)!=105&&var(10)!=107&&var(10)!=108&var(10)!=111&&var(10)!=112
triggerall=var(10)!=109&&var(10)!=110&&var(10)!=113&&var(10)!=130&&var(10)!=114
trigger1 = stateno=0
trigger2 = stateno=40
trigger3 = stateno=200
;---------------------------------------------------------------------------
;JumpSGUNNER
[State -1, JumpSGUNNER]
type = ChangeState
value = 15061
triggerall = command = "y"&&var(10)=105&&command != "x"
triggerall=ctrl
trigger1 = statetype=S&&stateno!=15061
;---------------------------------------------------------------------------0
;---------------------------------------------------------------------------
;jumpSMOBILE
[State -1, jumpSMOBILE]
type = ChangeState
value = 15135
triggerall = command = "y"&&var(10)=110&&command!="x"
triggerall=ctrl
trigger1 = statetype=S&&stateno!=15135
;---------------------------------------------------------------------------0

;---------------------------------------------------------------------------
;JumpBRADLEY
[State -1, JumpBRADLEY]
type = ChangeState
value = 15086
triggerall = command = "y"&&var(10)=107&&command != "x"
triggerall=ctrl
trigger1 = statetype=S
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;JumpOUTOFVEHICLE
[State -1, JumpOUTOFVEHICLE]
type = ChangeState
value = 105;triggerall=!win
trigger1 = anim=16016&&animtime=0
trigger2=var(10)=100&&statetype!=A&&roundstate=2
trigger2 =command = "y"&&command = "x"
trigger3=var(10)=101&&statetype=A&&roundstate=2
trigger3 =command = "y"&&command = "x"
trigger4=var(10)=102&&statetype=S&&roundstate=2
trigger4 =command = "y"&&command = "x"
trigger5=win&&var(10)>=100&&stateno!=105&&matchover&&statetype!=a
trigger6=var(10)=103&&roundstate=2&&stateno!=14997
trigger6 =command = "y"&&command = "x"
trigger7=var(10)=104&&roundstate=2&&stateno!=14996&&statetype!=A
trigger7 =command = "y"&&command = "x"
trigger8=var(10)=105&&roundstate=2&&stateno!=14995&&statetype!=A
trigger8 =command = "y"&&command = "x"
trigger9=var(10)=106&&statetype!=A&&roundstate=2&&stateno!=14994
trigger9 =command = "y"&&command = "x"
trigger10=var(10)=107&&statetype=S&&roundstate=2&&stateno!=14993
trigger10 =command = "y"&&command = "x"
trigger11=var(10)=108&&(statetype=S||statetype=C)&&roundstate=2&&stateno!=14992
trigger11 =command = "y"&&command = "x"
trigger12=var(10)=109&&statetype=S&&roundstate=2&&stateno!=14991
trigger12 =command = "y"&&command = "x"
trigger13=var(10)=110&&((statetype=S)||(statetype=C))&&roundstate=2&&stateno!=14990
trigger13 =command = "y"&&command = "x"
trigger14=var(10)=111&&statetype=S&&roundstate=2
trigger14 =command = "y"&&command = "x"
trigger15=var(10)=112&&statetype=S&&roundstate=2
trigger15 =command = "y"&&command = "x"&&stateno!=14989
trigger16=var(10)=130&&roundstate=2&&stateno!=15211
trigger16 =command = "y"&&command = "x"
trigger17=var(10)=114&&roundstate=2
trigger17 =command = "y"&&command = "x"
;---------------------------------------------------------------------------
[State -1, LEAVEBH]
type = ChangeState
value = 15077;triggerall=!win
triggerall = var(10)=106
trigger1=stateno=11&&command="y"
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, TURNDICOKKA]
type = ChangeState
value = 15211;triggerall=!win
triggerall = var(10)=130
triggerall = ctrl
triggerall = !var(59)
trigger1=command="holdback"&&command="y"
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
[State -1, LEAVEDKK]
type = ChangeState
value = 15200;triggerall=!win
triggerall = var(10)=130
trigger1=((stateno=11)||(stateno=1100))&&command="y"
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, LEAVERDKK]
type = ChangeState
value = 15206;triggerall=!win
triggerall = var(10)=114
trigger1=((stateno=11)||(stateno=1100))&&command="y"
;---------------------------------------------------------------------------

[State -1, LEAVEBRADLEY]
type = ChangeState
value = 15090;triggerall=!win
triggerall = var(10)=107
trigger1=(stateno=[10,12])&&command="y"
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

[State -1, LEAVESARMOR]
type = ChangeState
value = 15118;triggerall=!win
triggerall = var(10)=108
trigger1=stateno=11&&command="y"
;---------------------------------------------------------------------------
;BALLJUMP
[State -1, BALLJUMPC]
type = ChangeState
value = 15161
triggerall = command = "y"
triggerall = var(10)=112
trigger1 =((stateno=11)||(stateno=1100))
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BALLJUMP
[State -1, BALLJUMPS]
type = ChangeState
value = 15189
triggerall = command = "y"
triggerall = var(10)=112
trigger1 =((stateno=0)||(stateno=20))
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
[State -1, LEAVEELEPHANT]
type = ChangeState
value = 105;triggerall=!win
triggerall = var(10)=113
trigger1=((stateno=0)||(stateno=20)||(stateno=11))&&command="y";&&command!="x"
;---------------------------------------------------------------------------

;JumpForwards
[State -1, JumpForwards]
type = ChangeState
value = 2403
triggerall = command = "y"&&var(10)!=112&&var(10)!=108&&var(10)!=109&&var(10)!=101&&var(10)!=103&&var(10)!=104&&var(10)!=105&&var(10)!=107&&((palno!=11)||((palno=11)&&((var(10)!=0)&&(var(10)!=1)&&(var(10)!=111)&&(var(10)!=14)&&(var(10)!=15))))
triggerall = var(10)!=110&&var(10)!=111&&var(10)!=113&&var(10)!=130&&var(10)!=114
trigger1 = stateno=20

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, LEAVINGBALLSLUG]
type = ChangeState
value = 15173;triggerall=!win
triggerall = !var(59)
triggerall = var(10)=112
trigger1=((stateno=0)||(stateno=40))&&command="y"&&command="holdup"
;---------------------------------------------------------------------------

;Credits
;[State -1, Buy]
;type = ChangeState
;value = 3000
;triggerall = power=3000
;trigger1 = command = "start"
;
;



;---------------------------------------------------------------------------
;Standing knife 
[State -1, Knife]
type = ChangeState
value = ifelse(random%2=0,210,211);
;triggerall = vel x=0
triggerall = command = "x"
triggerall = command != "holdup";;
triggerall = command != "holdback";;
triggerall = statetype != C&&statetype!=A
triggerall = ctrl
triggerall = p2statetype!=C
triggerall=var(10)<100
;triggerall = stateno != 20
;triggerall = stateno != 210&&stateno != 211&&stateno != 20
trigger1 = facing=1&&p2bodydist X < 12&&enemy,facing=-1
trigger2 = facing=-1&&p2bodydist X< 12&&enemy,facing=1
;---------------------------------------------------------------------------
;Crouch knife
[State -1, Knife]
type = ChangeState
value = ifelse(random%2=0,212,213)
triggerall = vel x=0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype !=A;c
triggerall = ctrl
triggerall = p2statetype!=C
triggerall=var(10)<100
;triggerall = stateno != 212&&stateno != 213&&stateno != 20
trigger1 = facing=1&&p2bodydist X < 12&&enemy,facing=-1
trigger2 = facing=-1&&p2bodydist X< 12&&enemy,facing=1

;trigger1 = p2bodydist X < 12

;---------------------------------------------------------------------------
;Standing Kick
[State -1, Kick]
type = ChangeState
value = 230;ifelse(random%2=0,210,211)
triggerall = vel x=0
triggerall=var(10)<100
triggerall = command = "x"
triggerall = command != "holdup"
triggerall = statetype = S
triggerall = ctrl
triggerall = p2statetype=C
triggerall = stateno != 210&&stateno != 211&&stateno != 20
trigger1 = facing=1&&p2bodydist X < 12&&enemy,facing=-1
trigger2 = facing=-1&&p2bodydist X< 12&&enemy,facing=1




;---------------------------------------------------------------------------
;Crouch Glove
[State -1, Glove]
type = ChangeState
value = 240;ifelse(random%2=0,210,211)
triggerall = vel x=0
triggerall=var(10)<100
triggerall = command = "x"
triggerall = command != "holdup"
triggerall = statetype = C
triggerall = ctrl
triggerall = p2statetype=C
triggerall = stateno != 210&&stateno != 211&&stateno != 20
trigger1 = facing=1&&p2bodydist X < 12&&enemy,facing=-1
trigger2 = facing=-1&&p2bodydist X< 12&&enemy,facing=1


;---------------------------------------------------------------------------
;SLIDE
[State -1, SLIDE]
type = ChangeState
value = 1300;ifelse(random%2=0,210,211)
triggerall=var(10)<100
triggerall = command = "y"
triggerall = command != "holdup"
triggerall = stateno != 210&&stateno != 211&&stateno != 20
triggerall=anim!=16005
trigger1 = ctrl
trigger1 = statetype = C

;---------------------------------------------------------------------------
[State -1, IRONKNUCKLE]
type = ChangeState
value = 214;ifelse(random%2=0,210,211)
triggerall=var(10)<100
triggerall = statetype=S
triggerall = palno=2
triggerall = power>=300
triggerall = ctrl
trigger1 = command ="IRONKNUCKLE"
trigger2 = var(59)&&random%10=5&&p2dist x<60

;---------------------------------------------------------------------------
;Knife random Air
;[State -1, Knife]
;type = ChangeState
;value = ifelse(random%2=0,212,213)
;triggerall = command = "x"
;triggerall = statetype = A
;triggerall = ctrl
;triggerall = stateno != 212&&stateno != 213
;trigger1 = p2bodydist X < 12
;
;
;

;===========================================================================
;---------------------------------------------------------------------------
[State -1,ShootStandN]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = stateno!=20
triggerall = stateno!=40
triggerall = ((var(10)=0)||(var(10)=19)||(var(10)=20));si es 0 te deja dispara siempre
triggerall = palno!=5&&palno!=12
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 1200

;---------------------------------------------------------------------------
[State -1, ShootStandA]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = stateno!=20
triggerall = stateno!=40
triggerall = var(10)>0&&var(10)<100;si es 0 te deja dispara siempre
triggerall = var(16)>0;verifica si tienes balas
triggerall = var(19)>numhelper(3000)+numproj;verifica si no
triggerall = statetype = S
triggerall=ifelse((palno=5)&&((var(10)=10)||(var(10)=11)),numhelper(3002)=0,1)
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 1200


;---------------------------------------------------------------------------
[State -1, ShootStandSD]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = stateno!=20
triggerall = stateno!=40
triggerall = var(10)=0;si es 0 te deja dispara siempre
triggerall = palno=12
triggerall = var(19)>numhelper(3000)+numproj
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 1200
;---------------------------------------------------------------------------
[State -1, ShootStandSD]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = stateno!=20
triggerall = stateno!=40
triggerall = var(10)=0;si es 0 te deja dispara siempre
triggerall = palno=5
triggerall = var(19)>numhelper(3000)+numproj
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 1200
;---------------------------------------------------------------------------
[State -1, ShootCrouchN]
type = ChangeState
value = 1200
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = ((var(10)=0)||(var(10)=19)||(var(10)=20));si es 0 te deja dispara siempre
triggerall = palno!=5&&palno!=12
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno=200
trigger3 = stateno=1200
;---------------------------------------------------------------------------
[State -1, ShootCrouchA]
type = ChangeState
value = 1200
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(10)>0&&var(10)<100;si es 0 te deja dispara siempre
triggerall = var(16)>0;verifica si tienes balas
triggerall = var(19)>numhelper(3000)+numproj;verifica si no
triggerall=ifelse((palno=5)&&((var(10)=10)||(var(10)=11)),numhelper(3002)=0,1)
trigger1 = statetype = C	    ;te pasas de limite 
trigger1 = ctrl			    ;de balas
trigger2 = stateno=200
trigger3 = stateno=1200
;---------------------------------------------------------------------------
[State -1, ShootCrouchSD]
type = ChangeState
value = 1200
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(10)=0;si es 0 te deja dispara siempre
triggerall = (palno=5||palno=12)
triggerall = var(19)>numhelper(3000)+numproj
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno=200
trigger3 = stateno=1200
;---------------------------------------------------------------------------
;GrenadeNormal
[State -1, Grenade1]
type = ChangeState
value = 250
triggerall = (palno!=6)&&(palno!=3)&&(palno!=7)
triggerall = !var(59)
triggerall = command = "z"&&var(10)<=100
triggerall=anim!=16007&&anim!=16008&&anim!=16004;triggerall=var(10)!=100
triggerall=(numhelper(13250)<ifelse(palno=4,3,1))&&ifelse(var(10)=100,var(24)>0,1)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 250
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;GrenadeRebel
[State -1, Grenade1]
type = ChangeState
value = 250
triggerall = (palno=6)||(palno=3)||(palno=7)
triggerall = !var(59)
triggerall = command = "z"&&var(10)<=100
triggerall=anim!=16007&&anim!=16008;triggerall=var(10)!=100
triggerall=anim!=250&&anim!=8250&&anim!=8251
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
[State -1, BHOUNDCANNONSTAND]
type = ChangeState
value = 15074
triggerall = command != "holdb"&&command = "z"&&var(10)=106;triggerall=anim!=18207
triggerall=numhelper(13250)<1
triggerall=var(24)>0
triggerall=roundstate=2
trigger1 = (statetype = S)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
[State -1, BHOUNDLASER]
type = ChangeState
value = 15081
triggerall = command = "holdb"&&command = "z"&&var(10)=106;triggerall=anim!=18207
triggerall=numhelper(13250)<1
triggerall=var(27)=1
triggerall=var(24)>0
triggerall=roundstate=2
trigger1 = (statetype = S)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BRADLEYCANNONSTAND
[State -1, BRADLEYCANNON]
type = ChangeState
value = 15094
triggerall = command = "z"&&var(10)=107;triggerall=anim!=18207
triggerall=numhelper(13250)<1+(var(27)=1)
triggerall=var(24)>0
triggerall=roundstate=2
trigger1 = statetype = S
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BRADLEYCANNONCROUCH
[State -1, BRADLEYCANNON]
type = ChangeState
value = 15095
triggerall = command = "z"&&var(10)=107;triggerall=anim!=18207
triggerall=numhelper(13250)<1+(var(27)=1)
triggerall=var(24)>0
triggerall=roundstate=2
trigger1 = statetype = C
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;SGUNNERCANNONSTAND
[State -1, SGUNNERCANNON]
type = ChangeState
value = 15056
triggerall = command = "z"&&var(10)=105;triggerall=anim!=18207
triggerall=numhelper(13250)<1+2*(var(27)=1)
triggerall=var(24)>0
triggerall=roundstate=2
trigger1 = statetype = S&&stateno!=15058
;---------------------------------------------------------------------------
;SGUNNERCANNONCROUCH
[State -1, SGUNNERCANNON]
type = ChangeState
value = 15059
triggerall = command = "z"&&var(10)=105;triggerall=anim!=18209
triggerall=numhelper(13250)<1+2*(var(27)=1)
triggerall=var(24)>0
triggerall=roundstate=2
trigger1 = statetype = C;trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, CLAVO]
type = ChangeState
value = 15060
triggerall = command = "x"
triggerall = command != "holdup";;
triggerall = command != "holdback";;
triggerall = statetype != C&&statetype!=A
triggerall = ctrl
triggerall = p2statetype!=C
triggerall=var(10)=105
trigger1 = facing=1&&p2bodydist X < 22&&enemy,facing=-1
trigger2 = facing=-1&&p2bodydist X< 22&&enemy,facing=1

;---------------------------------------------------------------------------
;SGUNNERTURNING
[State -1, SGUNNERTURNING]
type = ChangeState
value = 15058
triggerall = command = "holdback"&&var(10)=105&&!var(59)
triggerall=ctrl
trigger1 = stateno=0
trigger2 = stateno=20
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, MELEESARMOR]
type = ChangeState
value = 15110
triggerall = command = "x"
triggerall = command != "holdup";;
triggerall = command != "holdback";;
triggerall = statetype != C&&statetype!=A
triggerall = ctrl
triggerall = p2statetype!=C
triggerall=var(10)=108
trigger1 = facing=1&&p2bodydist X < 22&&enemy,facing=-1
trigger2 = facing=-1&&p2bodydist X< 22&&enemy,facing=1

;---------------------------------------------------------------------------
;SARMORCANNONSTAND
[State -1, SARMORCANNONSTAND]
type = ChangeState
value = 15113
triggerall=stateno!=15110
triggerall = command = "z"&&var(10)=108;triggerall=anim!=18207
triggerall=numhelper(13250)<1+2*(var(27)=1)
triggerall=var(24)>0
triggerall=roundstate=2
trigger1 = statetype = S&&stateno!=15058
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SGUNNERCANNONCROUCH
[State -1, SGUNNERCANNON]
type = ChangeState
value = 15114
triggerall = command = "z"&&var(10)=108;triggerall=anim!=18209
triggerall=numhelper(13250)<1+2*(var(27)=1)
triggerall=var(24)>0
triggerall=roundstate=2
trigger1 = statetype = C;trigger1 = ctrl
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;LVARMORCROUCHKNIFE
[State -1, Knife]
type = ChangeState
value = 15123
triggerall = vel x=0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype =c;c
triggerall = ctrl
triggerall=var(10)=109
;triggerall = stateno != 212&&stateno != 213&&stateno != 20
trigger1 = facing=1&&p2bodydist X<= 30&&enemy,facing=-1
trigger2 = facing=-1&&p2bodydist X<= 30&&enemy,facing=1

;trigger1 = p2bodydist X < 12

;---------------------------------------------------------------------------
[State -1, MELEELVARMOR]
type = ChangeState
value = 15124
triggerall = command = "x"
triggerall = command != "holdup";;
triggerall = command != "holdback";;
triggerall = statetype != C&&statetype!=A
triggerall = ctrl
triggerall=var(10)=109
trigger1 = facing=1&&p2bodydist X <= 22&&enemy,facing=-1
trigger2 = facing=-1&&p2bodydist X<= 22&&enemy,facing=1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, BALLCANNON]
type = ChangeState
value = 15162
triggerall = ((command = "x")||(command="holdx"))
triggerall = var(10)=112
triggerall = stateno!=15162
trigger1 =((stateno=0)||(stateno=20))
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, BALLDRIFT]
type = ChangeState
value = 15166
triggerall = ((command = "z")||(command="holdz"))
triggerall = var(10)=112
triggerall = stateno!=15166&&stateno!=15167
trigger1 =((stateno=0)||(stateno=20))
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, AIRBALLSUPER]
type = ChangeState
value = 15168
triggerall = ((command = "z"))&&var(24)>0
triggerall = var(10)=112
trigger1 =((stateno=15161))
;---------------------------------------------------------------------------
[State -1, AIRBALLSUPER]
type = ChangeState
value = 15172
triggerall = ((command = "z"))&&var(24)>0
triggerall = var(10)=112
trigger1 =((stateno=11)||(stateno=1100))
;---------------------------------------------------------------------------
[State -1, ELEPHANTSHOOTCROUCH]
type = ChangeState
value = 15172
triggerall = ((command = "z"))&&var(24)>0
triggerall = var(10)=112
trigger1 =((stateno=11)||(stateno=1100))
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, AIRBALLSUPERAI1]
type = ChangeState
value = 15168
triggerall = (var(59))&&(random%10=9)&&var(24)>0
triggerall = var(10)=112
trigger1 =((stateno=15161))
;---------------------------------------------------------------------------
[State -1, AIRBALLSUPERAI2]
type = ChangeState
value = 15172
triggerall = (var(59))&&(random%10=9)&&var(24)>0
triggerall = var(10)=112
trigger1 =((stateno=11)||(stateno=1100))
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, BALLCANNONAI]
type = ChangeState
value = 15162
triggerall = (var(59))&&floor(abs(enemynear,pos x-pos x))=[0,130]
triggerall = var(10)=112
triggerall = stateno!=15162
trigger1 =((stateno=0)||(stateno=20))
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, BALLJUMPAI]
type = ChangeState
value = 15189
triggerall = var(59)
triggerall = command = "holdup"
triggerall = var(10)=112
trigger1 =((stateno=0)||(stateno=20))
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, DIKOKKACANNON]
type = ChangeState
value = 15193
triggerall = var(21)>0
triggerall = var(24)>0
triggerall = var(10)=130
triggerall = stateno!=15193&&stateno!=15198&&stateno!=14987&&stateno!=15200
trigger1 = ((command = "z"))
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, RDIKOKKACANNON]
type = ChangeState
value = 15203
triggerall = var(21)>0
triggerall = var(24)>0
triggerall = var(27)=0
triggerall = var(10)=114
triggerall = stateno!=15203&&stateno!=15207&&stateno!=14986&&stateno!=15206
trigger1 = ((command = "z"))
;---------------------------------------------------------------------------
[State -1, RDIKOKKALASER]
type = ChangeState
value = 15208
triggerall = var(21)>0
triggerall = var(24)>0
triggerall = var(27)=1
triggerall = var(10)=114
triggerall = stateno!=15208&&stateno!=15207&&stateno!=15206
trigger1 = ((command = "z"))
;---------------------------------------------------------------------------





