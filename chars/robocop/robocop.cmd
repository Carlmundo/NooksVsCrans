;-| Super Motions |--------------------------------------------------------
[Command]
name = "Directive1"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "Directive1"
command = ~D, DF, F, z+y
time = 20

[Command]
name = "Directive1"
command = ~D, DF, F, x+z
time = 20

[Command]
name = "Directive2"
command = ~D, DF, F, a+c
time = 20

[Command]
name = "Directive2"
command = ~D, DF, F, b+c
time = 20

[Command]
name = "Directive2"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "Directive3"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "Directive3"
command = ~D, DB, B, z+y
time = 20

[Command]
name = "Directive3"
command = ~D, DB, B, x+z
time = 20

[Command]
name = "Directive4"
command = ~D, DB, B, a+b
time = 20

[Command]
name = "Directive4"
command = ~D, DB, B, b+c
time = 20

[Command]
name = "Directive4"
command = ~D, DB, B, a+c
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~D, DB, B, x

[Command]
name = "upper_y"
command = ~D, DB, B, y

[Command]
name = "upper_z"
command = ~D, DB, B, z

[Command]
name = "charge_a"
command = ~D, DB, B, a

[Command]
name = "charge_b"
command = ~D, DB, B, b

[Command]
name = "charge_c"
command = ~D, DB, B, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z+y
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

;----------------------------------------------------------------------
;-| Hold Button |-------------------------------------------------
[Command]
name = "hold_c";Required (do not remove)
command = /$c
time = 1

[Command]
name = "hold_b";Required (do not remove)
command = /$b
time = 1

[Command]
name = "hold_a";Required (do not remove)
command = /$a
time = 1

[Command]
name = "hold_z";Required (do not remove)
command = /$z
time = 1

[Command]
name = "hold_y";Required (do not remove)
command = /$y
time = 1

[Command]
name = "hold_x";Required (do not remove)
command = /$x
time = 1
;----------------------------------------------------------------------
; -| CPU Commands |------

[Command]
name = "CPU1"
command = D, D, U, U, D, U
time = 1

[Command]
name = "CPU2"
command = D, U, U, D, D, U
time = 1

[Command] 
name = "CPU3"
command = U, D, D, U, U, D
time = 1
;----------------------------------------------------------------------

[Statedef -1]

;-| AUTO AI |---------------------------------------------------------

[State -1, Activate AI] 
type = VarSet 
triggerall = var(21) != 1 
trigger1 = IsHomeTeam = 1 && matchno > 1
trigger2 = command = "CPU1" || command = "CPU2" || command = "CPU3"
v = 21
value = 1
ignorehitpause=1

;AI Ground Combo 1
[State -1];	fracos de ch縊
type = ChangeState
value = 430 - (enemynear, pos y !=0) * 30 - 200 * (P2StateType = S)
triggerall = var(21)=1 && random > life
triggerall = ctrl 
triggerall = roundstate = 2 && P2BodyDist X <= 51;42 
triggerall = statetype != A
trigger1 = P2StateType != A
trigger2 = P2Movetype = A && animtime < -8

;AI Ground Combo 2
[State -1];	m馘ios de ch縊
type = ChangeState
value = 440 - (enemynear, pos y !=0) * 30 - 200 * (P2StateType = S)
triggerall = var(21)=1 && random > life
triggerall = ctrl || movecontact
triggerall = roundstate = 2 && ((P2BodyDist X <= 64 && statetype=S)||(P2BodyDist X <= 72 && statetype=C))
triggerall = statetype != A
trigger1 = ctrl && animtime < -20;P2Movetype = A && 
trigger2 = stateno = 200 || stateno = 230
trigger3 = stateno = 400 || stateno = 430

;AI Ground Combo 3
[State -1];	fortes de ch縊
type = ChangeState
value = 450 - (p2bodydist y < -50 || p2bodydist x < 32) * 30 - 200 * (enemynear, animtime > -20)
triggerall = var(21)=1 && random > life
triggerall = ctrl || movecontact
triggerall = roundstate = 2 && ((P2BodyDist X <= 155 && statetype=S)||(P2BodyDist X <= 110 && statetype=C))
triggerall = statetype != A
trigger1 = ctrl && animtime < -20;P2Movetype = A && 
trigger2 = stateno != 220 && stateno = [200,240]
trigger3 = stateno != 420 && stateno = [400,440]
;---------------------------------------------------------------------------
[State -1, Auto-9 Shot];AI
type = ChangeState
value = 1015 - 5 * ((p2bodydist x)/2 > abs(p2bodydist y)) + 5 * (abs(p2bodydist y)/2 > p2bodydist x && p2bodydist y < const(size.head.pos.y))
triggerall = var(21)=1 && p2life!=0 && random > life*2
triggerall = (P2bodydist x > 70 && P2bodydist y = 0)|| P2bodydist y != 0
triggerall = Numhelper(1570)=0 && statetype != A && numexplod(1430)=0
triggerall = stateno!=260; && p2bodydist x > 70
triggerall = ctrl || (movecontact && stateno = [200,450])
trigger1 = (enemy, NumProj!=0) || ((gametime%90)=0) || (enemy, vel x>=0)
;trigger2 = stateno=1500 && var(2)=1 && p2bodydist y =0 && time = [0,1] 

;;---------------------------------------------------------------------------
[State -1, Cyber UpperCut/robo fall]
type = ChangeState
value = 2015 - 5 * (p2statetype = C) + 5 * (p2statetype != C && p2movetype != H) + 500 * (statetype = A)
triggerall = var(21)=1 && random > life && stateno!= [130,132]
triggerall = P2bodydist x < 120 && stateno!= [5000,5999]
triggerall = enemy, movetype = A
triggerall = enemy, NumProj<2
triggerall = stateno!=260; && p2bodydist x > 70
trigger1 = ctrl || (stateno = [200,650])
;trigger2 = (stateno=1000 ||stateno=1500) && var(2)=2 && p2bodydist y < const(size.head.pos.y) && time = [0,1] 

;;---------------------------------------------------------------------------
[State -1, Deflection Shot];AI
type = ChangeState
value = 1515 - 5 * (p2bodydist x>80 && p2bodydist x<150 && p2bodydist y > - 50) + 5 * ((abs(p2bodydist y) > frontedgedist)||(p2bodydist x>150 && p2bodydist x<230)) 
triggerall = var(21)=1 && random + life < p2life
triggerall = (P2bodydist x > 80 && P2bodydist y = 0)|| P2bodydist y != 0
triggerall = Numhelper(1570)=0 && statetype != A && numexplod(1430)=0
triggerall = stateno!=260
triggerall = ctrl || (movecontact && stateno = [200,450])
trigger1 = enemynear, vel y < 0 ;&& p2bodydist x < 140 ;p2bodydist y > - 50 && stateno = [200,450]
trigger2 = ProjHitTime(455)=1 && stateno = 450
;;---------------------------------------------------------------------------
[State -1, Leg Charge]
type = ChangeState
value = 2610 + 5 * (P2bodydist x < 60) + 10 * (P2bodydist x > 99);) 
triggerall = var(21)=1 && random > life && (enemy, vel x >= 0) 
triggerall = statetype != A && numhelper(2700)=0
triggerall = P2bodydist x > 100 && p2life!=0
trigger3 = P2bodydist x > 160;
triggerall = ctrl || (stateno = [200,450])
trigger2 = p2movetype=H && p2bodydist y < const(size.head.pos.y)
trigger1 = enemy, time < 10
trigger1 = enemynear, vel x < 0 && (enemynear,facing)!=facing
trigger1 = ctrl || p2stateno=[5100,5120]

;===========================================================================
;Directive1
;Manter a ordem p炻lica
[State -1, Directive1]
type = ChangeState
value = 3000
triggerall = command = "Directive1" || (var(21)=1 && (p2bodydist x > 110) && ProjHitTime(1500)= 5 && (random+life)<p2life)
;triggerall = ProjHitTime(1500)= 5;0 && ProjHitTime(1500) < 9
triggerall = power>=1000 && stateno < 3000
triggerall = statetype != A && p2life != 0 && stateno != [810,860]
trigger1 = ctrl || (stateno = [200,650])
trigger2 = stateno = 1000
trigger3 = pos y = 0 && stateno = 2000
trigger3 = movecontact;=1; && stateno = 2000
;trigger4 = var(21)=1 && ProjHitTime(1500) =< 9 && (random+life)<p2life
trigger5 = movehit && var(21)=1 && (stateno = 2000 && var(2)=0)
trigger6 = movehit && var(21)=1 && (stateno = 220 || stateno = 420)

[State -1, Directive1];muni鈬o
type = varset
triggerall = power>=1000 && time > 115
triggerall = (anim = 3020||anim = 3023) && var(18)=0
trigger1 = (life) * 2 < p2life + random && var(21)=1 && p2statetype!=A
trigger2 = command = "Directive1" || (var(21)=1 && (random+life)<p2life)
v=17 + (var(17)>0)
value = 10 + 20 * (var(17)=0)

;;===========================================================================
;Directive2
;Proteger o Inocente
[State -1, Directive2]
type = ChangeState
value = 4000
triggerall = command = "Directive2" || (var(21)=1 && (random+life)<p2life && (p2bodydist x < 110) && P2bodydist y = 0)
triggerall = power>=1000 && stateno < 3000
triggerall = statetype != A && stateno != [810,860]
;triggerall = var(21)=0 || (var(21)=1 && P2bodydist y = 0)
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA;, HA
trigger2 = movecontact

;---------------------------------------------------------------------------
;Directive3
;Cumprir a lei
[State -1, Directive3]
type = ChangeState
value = 3050
triggerall = command = "Directive3" || (var(21)=1 && (random+life)<p2life && P2bodydist x < 70 && P2bodydist y > -105)
triggerall = power>=1000*(1+(var(21)=1 && var(1)>1)) && stateno < 3000
triggerall = statetype != A && var(3)<1 && stateno != [810,860];stateno < 3000
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA;, HA
trigger2 = movecontact; && Ctrl
trigger3 = stateno = [150,153]
;trigger4 = stateno = 152

;---------------------------------------------------------------------------
;Directive4
;Nunca se opor a um superior da OCP
[State -1, Directive4]
type = ChangeState
value = 4500
triggerall = command = "Directive4" && stateno != [810,860]
triggerall = power>=1000*(1+(var(21)=1 && var(3)>1)) && stateno < 3000
triggerall = statetype != A && var(1)<1; && stateno != [3000,4499] 
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA;, HA
trigger2 = movecontact && Ctrl 
trigger3 = var(21)=1 && Random > life && (enemy, numproj > 0 || (gametime % 15) = 0)

;Directive4
;Nunca se opor a um superior da OCP
[State -1, Directive4]
type = ChangeState
value = 4550
triggerall = command = "Directive4"||(var(21)=1 && Random > life && (p2bodydist x - p2bodydist y) = [-10,60])
triggerall = power>=1000 && stateno != 2550; && Ctrl
triggerall = statetype = A && var(1)>1
trigger1 = ctrl || (stateno = [200,650])
trigger2 = hitdefattr = A, NA, SA;, HA
trigger2 = movecontact
;trigger3 = (var(21)=1 && Random > life && (p2bodydist x - p2bodydist y) = [-10,60])

;Directive4 - AI
[State -1, Directive4]
type = ChangeState
value = 4500
triggerall = var(21)=1 && stateno != [810,860]
triggerall = power>=1000 && stateno != [3000,4499] 
triggerall = statetype != A && var(1)<1 && roundstate = 2
trigger1 = ctrl && Random > life && (enemy, numproj > 0 || (gametime % 15) = 0)

;---------------------------------------------------------------------------
[State -1, Auto-9 Shot]
type = ChangeState
value = 1010 + 5 * (command = "QCF_y") + 10 * (command = "QCF_z") 
triggerall = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
triggerall = var(21)=0 && statetype != A
trigger1 = stateno = [200,450]
trigger2 = ctrl || (stateno = [200,450])

;;---------------------------------------------------------------------------
[State -1, Deflection Shot]
type = ChangeState
value = 1510 + 5 * (command = "QCF_b") + 10 * (command = "QCF_c") 
triggerall = command = "QCF_a" || command = "QCF_b" || command = "QCF_c"
triggerall = var(21)=0 && statetype != A
trigger1 = ctrl || (stateno = [200,450])
trigger2 = stateno = [200,450]

;;---------------------------------------------------------------------------
[State -1, Cyber UpperCut]
type = ChangeState
value = 2010 + 5 * (command = "upper_y") + 10 * (command = "upper_z") 
triggerall = command = "upper_x" || command = "upper_y" || command = "upper_z"
triggerall = var(21)=0 && statetype != A
trigger1 = ctrl || (stateno = [200,450])
trigger2 = stateno = [200,450]

;---------------------------------------------------------------------------
[State -1, Robo Fall]
type = ChangeState
value = 2510 + 5 * (command = "upper_y") + 10 * (command = "upper_z") 
triggerall = command = "upper_x" || command = "upper_y" || command = "upper_z"
triggerall = var(21)=0 && statetype = A
trigger1 = ctrl || (stateno = [600,699])
;trigger2 = MoveContact && var(21)=1 && random > life && time % 4
trigger2 = stateno = [600,699]

;---------------------------------------------------------------------------
[State -1, Leg Charge]
type = ChangeState
value = 2610 + 5 * (command = "charge_b") + 10 * (command = "charge_c") 
triggerall = command = "charge_a" || command = "charge_b" || command = "charge_c"
triggerall = statetype != A && numhelper(2700)=0 && var(21)=0
trigger1 = ctrl || (stateno = [200,450])
trigger2 = stateno = [200,450]

;---------------------------------------------------------------------------
;Interrogation mode
[State -1, Kung Fu Throw]
type = ChangeState
value = 850
triggerall = command = "y" || command = "z"
triggerall = statetype != A
triggerall = ctrl
triggerall = (p2statetype != A)
triggerall = p2movetype != H
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 6
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger3 = var(20)=1 && random < (p2life - life) && vel x = 0
persistent=0
;;===========================================================================
;Normal Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "b" || command = "c"
triggerall = statetype != A
triggerall = ctrl
triggerall = (p2statetype != A)
triggerall = p2movetype != H
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 6
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger3 = var(21)=1 && random < (p2life - life) && vel x = 0
persistent=0
;===========================================================================
;Stand Light Punch or Kick
[State -1, Stand Light Punch]
type = ChangeState
value = 200 + 30 * (command = "a")
triggerall = command = "x" || command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl && var(21) != 1
trigger2 = stateno = 200 && time > 6 && anim = 200
trigger3 = stateno = 230 && time > 6 && anim = 230
trigger4 = p2statetype!=A && stateno=400 && movecontact

;---------------------------------------------------------------------------
;Stand Medium Punch or Kick
[State -1, Stand Medium Punch]
type = ChangeState
value = 210 + 30 * (command = "b")
triggerall = command = "y" || command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

[State -1, Stand Kick Shot]
type = ChangeState
value = 260
triggerall = command != "holddown"
triggerall = var(14)>15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = ctrl && var(1)>0

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220 + 30 * (command = "c")
triggerall = command = "z" || command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno != 220) && stateno = [200,240]

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && (stateno != 420) && stateno = [400,440]
;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && (stateno != 420) && stateno = [400,440]
trigger3 = movecontact && (stateno != 220) && stateno = [200,240]

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 || stateno = 640 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger3 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c" || (var(21)=1 && var(1)>0 && gametime%12=0)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && (stateno != 620) && stateno = [600,640]

;---------------------------------------------------------------------------
[State -1, Interrogation mode]
type = varadd
triggerall = stateno = 860
trigger1 = (time%4) = 0
trigger1 = command = "x" || command = "y" || command = "z"
;trigger1 = command != "hold_c" && command != "hold_b" && command != "hold_a"
v=16
value = 3

; AI Standing Guard
; ==========================
[State -1]
type = ChangeState
triggerall = var(21) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = Statetype = S
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl
triggerall = facing != (enemynear, facing)
trigger1 = random > (enemynear, movecontact)*500
value = 130 ;Default standing guard state


; AI Stand to Crouch Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(21) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152


; AI Crouching Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(21) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl
triggerall = facing != (enemynear, facing)
trigger1 = random > (enemynear, movecontact)*500;trigger1 = random > life
value = 131


; AI Crouch to Stand Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(21) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = random > life;1
trigger1 = stateno = 152
value = 150


; AI Aerial Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(21) = 1
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl
triggerall = facing != (enemynear, facing)
trigger1 = random > life;
value = 132

[State -1];	fracos de ch縊
type = ChangeState
value = 40
triggerall = var(21)=1 && random > life
trigger1 = roundstate = 2 && ctrl
trigger1 = statetype != A && var(1)> 0

[State -1, teste ai]
type = null;varset
trigger1 = var(21) = 0
var(21) = 1

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl