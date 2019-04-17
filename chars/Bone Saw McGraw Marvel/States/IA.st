;------------------------------------------------------------------------------------------------
;================================================================================================
;+++++++++++++++++++++++++++++++++++/-----------------------\++++++++++++++++++++++++++++++++++++
;-----------------------------------|      -=+Randy Savage+=-      |------------------------------------
;===================================|Inteligência Artificial|====================================
;+++++++++++++++++++++++++++++++++++\-----------------------/++++++++++++++++++++++++++++++++++++
;---------------------------------------------------By: Wrestling Revolution Mugen_------------------
;================================================================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;------------------------------------------------------------------------------------------------
;=====================================>Comandos no Statedef -2<==================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Comandos no Statedef -2
;------------------------------------------------------------------------------------------------
[Statedef -2]

[State -2]
type = VarSet
trigger1 = command = "CPU_1"
trigger2 = command = "CPU_2"
trigger3 = command = "CPU_3"
trigger4 = command = "CPU_4"
trigger5 = command = "CPU_5"
trigger6 = command = "CPU_6"
trigger7 = command = "CPU_7"
trigger8 = command = "CPU_8"
trigger9 = command = "CPU_9"
trigger10 = command = "CPU_10"
trigger11 = command = "CPU_11"
trigger12 = command = "CPU_12"
trigger13 = command = "CPU_13"
trigger14 = command = "CPU_14"
trigger15 = command = "CPU_15"
trigger16 = command = "CPU_16"
trigger17 = command = "CPU_17"
trigger18 = command = "CPU_18"
trigger19 = command = "CPU_19"
trigger20 = command = "CPU_20"
trigger21 = command = "CPU_21"
trigger22 = command = "CPU_22"
trigger23 = command = "CPU_23"
trigger24 = command = "CPU_24"
trigger25 = command = "CPU_25"
trigger26 = command = "CPU_26"
trigger27 = command = "CPU_27"
trigger28 = command = "CPU_28"
trigger29 = command = "CPU_29"
trigger30 = command = "CPU_30"
trigger31 = command = "CPU_31"
trigger32 = command = "CPU_32"
trigger33 = command = "CPU_33"
trigger34 = command = "CPU_34"
trigger35 = command = "CPU_35"
trigger36 = command = "CPU_36"
trigger37 = command = "CPU_37"
trigger38 = command = "CPU_38"
trigger39 = command = "CPU_39"
trigger40 = command = "CPU_40"
trigger41 = command = "CPU_41"
trigger42 = command = "CPU_42"
trigger43 = command = "CPU_43"
trigger44 = command = "CPU_44"
trigger45 = command = "CPU_45"
trigger46 = command = "CPU_46"
trigger47 = command = "CPU_47"
trigger48 = command = "CPU_48"
trigger49 = command = "CPU_49"
trigger50 = command = "CPU_50"
v = 59
value = 1000

;------------------------------------------------------------------------------------------------
;=====================================>Rotinas no Statedef -2<===================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Movimentos
;------------------------------------------------------------------------------------------------

[State -2, Run Fwd]
type = ChangeState
value = 100
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Ctrl
triggerall = p2bodydist x > 40 
triggerall = Random <= 1000
triggerall = MoveType != H 
triggerall = Statetype != A
trigger1 = P2MoveType != A
trigger2 = p2bodydist x <= 10

[State -2, Walk Fwd]
type = ChangeState
value = 20
triggerall = RoundState = 2 
triggerall = Var(59) != 0
triggerall = Ctrl 
triggerall = Random <= 1000
triggerall = MoveType != H 
triggerall = Statetype != A
triggerall = P2MoveType != A
trigger1 = p2bodydist x > 30
trigger2 = p2bodydist x <= 10

[State -2, Run Fwd na Rede]
type = ChangeState
value = 100
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = P2Stateno = 703
triggerall = Ctrl 
triggerall = P2Stateno = 703
triggerall = MoveType != H 
trigger1 = Statetype != A
trigger2 = p2bodydist x <= 10

[State -2, Run Back]
type = ChangeState
value = 105
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Ctrl 
triggerall = Random = [99,199]
triggerall = MoveType != H
triggerall = p2bodydist x < 5
triggerall = ctrl 
trigger1 = Statetype = S

;Recovery Roll X,Y,Z
[State -2, Falling] ;This sets up the recovery roll
type = VarSet
triggerall = Var(59) != 0 
triggerall = Ctrl 
triggerall = command = "rrollF"
triggerall = MoveType = H 
triggerall = alive = 1
triggerall = RoundState = 2
trigger1 = stateno = 5050 || stateno = 5071
v = 30           ;If var(30) is already being used, just use another variable
value = 1

;Recovery Roll A,B,C
[State -2, Falling]
type = VarSet
triggerall = Var(59) != 0 
triggerall = Ctrl 
triggerall = command = "rrollT"
triggerall = MoveType = H 
triggerall = alive = 1
triggerall = RoundState = 2
trigger1 = stateno = 5050 || stateno = 5071
v = 30
value = 2

;Rolling X,Y,Z
[State -2, Rolling] ;This is the actual rolling
type = ChangeState
value = 2100
triggerall = Var(59) != 0 
triggerall = Ctrl 
triggerall = Var(30) = 1
triggerall = MoveType = H 
triggerall = alive = 1
triggerall = RoundState = 2
trigger1 = Pos Y >= 0    ;This means that once you hit the ground, you start rolling
trigger1 = Vel Y > 0

;Rolling A,B,C
[State -2, Rolling]
type = ChangeState
value = 2150
triggerall = Var(59) != 0 
triggerall = Ctrl 
triggerall = Var(30) = 2
triggerall = MoveType = H 
triggerall = alive = 1
triggerall = RoundState = 2
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0

;------------------------------------------------------------------------------------------------
;Defesas
;------------------------------------------------------------------------------------------------

;Stand Guard
[State -2]
type = ChangeState
triggerall = RoundState = 2 
triggerall = Var(59) != 0
triggerall = Random = [99,999]
triggerall = Ctrl 
triggerall = StateType = S
triggerall = NumProj > 0
trigger1 = P2MoveType = A 
value = 130

;Air Guard
[State -2]
type = ChangeState
triggerall = RoundState = 2 
triggerall = Var(59) != 0
triggerall = Random = [99,999]
triggerall = Ctrl 
triggerall = StateType = A
triggerall = NumProj > 0
trigger1 = P2MoveType = A 
value = 131

;Crouch Guard
[State -2]
type = ChangeState
triggerall = RoundState = 2 
triggerall = Var(59) != 0
triggerall = Random = [99,999]
triggerall = Ctrl
triggerall = StateType = C
triggerall = NumProj > 0
trigger1 = P2MoveType = A 
value = 132

;------------------------------------------------------------------------------------------------
;Alpha Counter
;------------------------------------------------------------------------------------------------

[State -2]
type = ChangeState
triggerall = RoundState = 2 
triggerall = Var(59) != 0
triggerall = Ctrl 
triggerall = StateType = S
triggerall = P2MoveType = A 
triggerall = power >= 1000
triggerall = StateNo >= 150
triggerall = StateNo <= 153
triggerall = Random = [99,799]
trigger1 = p2bodydist x <= 75
value = ifelse(Random <500, 900, 950)

;------------------------------------------------------------------------------------------------
;Golpes Simples - Em Pé
;------------------------------------------------------------------------------------------------

[State -2,Soco e Chute Fraco]
type=ChangeState
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,999]
triggerall = Ctrl 
triggerall = P2BodyDist X <= 15
triggerall = MoveType != H 
trigger1 = StateType = S
trigger1 = StateType = c
value= ifelse(Random <500, 200, 230)

[State -2,Soco e Chute Medio]
type=ChangeState
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,899]
triggerall = Ctrl 
triggerall = P2BodyDist X <= 40
triggerall = MoveType != H 
trigger1 = StateType = S
trigger1 = StateType = c
value= ifelse(Random <500, 210, 240)

[State -2,Soco e Chute Forte]
type=ChangeState
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,799]
triggerall = Ctrl 
triggerall = P2BodyDist X <= 55
triggerall = MoveType != H 
trigger1 = StateType = S
trigger1 = StateType = c
value= ifelse(Random <500, 220, 250)

;------------------------------------------------------------------------------------------------
;======================================>Combos Pré-Definidos<====================================
;------------------------------------------------------------------------------------------------

;Combo Abaixado
;Adaptado do Tutorial do !=
[State -2, Combo Abaixado]
type=ChangeState
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = MoveType != H
triggerall = Random = [99,999]
trigger1 = statetype = C || statetype = S
trigger1 = ctrl
trigger1 = P2BodyDist X < 40
trigger2 = movecontact
trigger2 = stateno=400 | stateno=410 | stateno=430 | stateno=440
value = 430-(stateno=430)*30-(stateno=400)*20+(stateno=410)*10-(stateno=440)*10-(stateno=420&var(59)>1)*200

[State -2, Combando]
type=ChangeState
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = MoveType != H
triggerall = movecontact
triggerall = power>999
trigger1=stateno=200|stateno=230|stateno=210|stateno=240|stateno=220|stateno=200|stateno=230|stateno=210|stateno=240|(stateno=1020&time=20)
value=(stateno=200)*230+(stateno=230)*210+(stateno=210)*3000

;Combo em Pé
;Adaptado do Tutorial do !=
[State -2, Combo em Pe]
type=ChangeState
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = MoveType != H
triggerall = Random = [99,999]
trigger1 = statetype = C || statetype = S
trigger1 = ctrl
trigger1 = P2BodyDist X < 40
trigger2 = movecontact
trigger2 = stateno=200 | stateno=210 | stateno=230 | stateno=240
value = 230-(stateno=230)*30-(stateno=200)*20+(stateno=210)*10-(stateno=240)*10-(stateno=220&var(59)>1)*200

[State -2, Combando]
type=ChangeState
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = MoveType != H
triggerall = movecontact
triggerall = power>999
trigger1=stateno=400|stateno=430|stateno=410|stateno=440|stateno=420|stateno=400|stateno=430|stateno=410|stateno=440|(stateno=1020&time=20)
value=(stateno=200)*230+(stateno=230)*210+(stateno=210)*3000

;Combo Aéreo
;Adaptado do Tutorial do !=
[State -2, Combo Aereo]
type=ChangeState
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = MoveType != H
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = P2BodyDist X < 40
trigger2 = movecontact
trigger2 = stateno=600 | stateno=610 | stateno=620 | stateno=630 | stateno=640
value = 630-(stateno=630)*30-(stateno=600)*20+(stateno=610)*10-(stateno=640)*10+(stateno=620)*20-(stateno=620&var(59)>1)*200

[State -2, Combando]
type=ChangeState
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = MoveType != H
triggerall = movecontact
triggerall = power>999
trigger1 = statetype = A
trigger1 = stateno=600 | stateno=610 |stateno=620 |stateno=630 |stateno=640 |stateno=650 | (stateno=1020&time=20)
value=(stateno=600)*630+(stateno=630)*610+(stateno=610)*620+(stateno=620)*640+(stateno=640)*650+(stateno=650)*3000

;------------------------------------------------------------------------------------------------
;Golpes Supers
;------------------------------------------------------------------------------------------------

[State -2, Punhos da Justica]
type = ChangeState
value = 2000
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,799]
triggerall = MoveType != H 
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = P2StateType != A
trigger1 = ctrl

[State -2, Chutes Explosivos]
type = ChangeState
value = 1900
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,799]
triggerall = MoveType != H 
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = P2StateType != A
trigger1 = ctrl

[State -2, Chuva de Granada]
type = ChangeState
value = 1800
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,999]
triggerall = MoveType != H 
triggerall = P2MoveType != H 
triggerall = power >= 1000 
trigger1 = Statetype = A
trigger1 = ctrl
trigger2 = StateType = A
trigger2 = HitdefAttr = A, NA

;------------------------------------------------------------------------------------------------
;Golpes Especiais
;------------------------------------------------------------------------------------------------

[State -2, Arremesso de Granada Fraco]
type = ChangeState
value = 1100
triggerall = numhelper(1101) = 0 || numhelper(1126) = 0 || numhelper(1151) = 0
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,599]
triggerall = MoveType != H 
triggerall = Ctrl 
triggerall = P2MoveType != H
trigger1 = p2bodydist x >= 45
trigger1 = StateType = S
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger2 = p2bodydist x <= 40

[State -2, Arremesso de Granada Medio]
type = ChangeState
value = 1125
triggerall = numhelper(1101) = 0 || numhelper(1126) = 0 || numhelper(1151) = 0
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,499]
triggerall = MoveType != H 
triggerall = Ctrl 
triggerall = P2MoveType != H
trigger1 = p2bodydist x >= 65
trigger1 = StateType = S
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger2 = p2bodydist x <= 40

[State -2, Arremesso de Granada Forte]
type = ChangeState
value = 1150
triggerall = numhelper(1101) = 0 || numhelper(1126) = 0 || numhelper(1151) = 0
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,399]
triggerall = MoveType != H 
triggerall = Ctrl 
triggerall = P2MoveType != H
trigger1 = p2bodydist x >= 80
trigger1 = StateType = S
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger2 = p2bodydist x <= 40

[State -2, Arremesso de Granada Aereo Fraco]
type = ChangeState
value = 1000
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,999]
triggerall = MoveType != H 
trigger1 = Statetype = A 
trigger1 = ctrl
trigger2 = StateType = A
trigger2 = HitdefAttr = A, NA

[State -2, Arremesso de Granada Aereo Medio]
type = ChangeState
value = 1025
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,899]
triggerall = MoveType != H 
trigger1 = Statetype = A 
trigger1 = ctrl
trigger2 = StateType = A
trigger2 = HitdefAttr = A, NA

[State -2, Arremesso de Granada Aereo Forte]
type = ChangeState
value = 1050
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,799]
triggerall = MoveType != H 
trigger1 = Statetype = A 
trigger1 = ctrl
trigger2 = StateType = A
trigger2 = HitdefAttr = A, NA

[State -2, Tiger Kick Fraco]
type = ChangeState
value = 800
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,599]
triggerall = MoveType != H 
triggerall = Ctrl 
trigger1 = p2bodydist x <= 65
trigger1 = StateType = S
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1

[State -2, Tiger Kick Medio
type = ChangeState
value = 825
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,499]
triggerall = MoveType != H 
triggerall = Ctrl 
trigger1 = p2bodydist x <= 75
trigger1 = StateType = S
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1

[State -2, Tiger Kick Forte
type = ChangeState
value = 850
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,399]
triggerall = MoveType != H 
triggerall = Ctrl 
trigger1 = p2bodydist x <= 85
trigger1 = StateType = S
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1

[State -2, Arremesso de Rede Fraco]
type = ChangeState
value = 700
triggerall = numhelper(701) = 0
triggerall = numhelper(726) = 0
triggerall = numhelper(751) = 0
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,699]
triggerall = MoveType != H 
triggerall = Ctrl 
triggerall = P2MoveType != H
triggerall = P2BodyDist X >= 65
trigger1 = StateType = S
trigger2 = stateno = [200,210]
trigger2 = movecontact

[State -2, Arremesso de Rede Medio]
type = ChangeState
value = 725
triggerall = numhelper(701) = 0
triggerall = numhelper(726) = 0
triggerall = numhelper(751) = 0
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,599]
triggerall = MoveType != H 
triggerall = Ctrl 
triggerall = P2MoveType != H
triggerall = P2BodyDist X >= 75
trigger1 = StateType = S
trigger2 = stateno = [200,210]
trigger2 = movecontact

[State -2, Arremesso de Rede Forte]
type = ChangeState
value = 750
triggerall = numhelper(701) = 0
triggerall = numhelper(726) = 0
triggerall = numhelper(751) = 0
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,499]
triggerall = MoveType != H 
triggerall = Ctrl 
triggerall = P2MoveType != H
triggerall = P2BodyDist X >= 85
trigger1 = StateType = S
trigger2 = stateno = [200,210]
trigger2 = movecontact

[State -2, Pilao Normal]
type = ChangeState
value = 1200
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,499]
triggerall = MoveType != H 
triggerall = Ctrl 
triggerall = Statetype = S
trigger1 = p2bodydist x <= 10
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -2, FF Chute Fraco]
type = ChangeState
value = 231
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,699]
triggerall = MoveType != H 
triggerall = Ctrl 
trigger1 = StateType = S
trigger1 = p2bodydist x <= 80
trigger2 = stateno = 231
trigger2 = time >= 120

[State -2, FF Chute Medio]
type = ChangeState
value = 241
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,599]
triggerall = MoveType != H 
triggerall = Ctrl 
trigger1 = StateType = S
trigger1 = p2bodydist x <= 70
trigger2 = stateno = 241
trigger2 = time >= 180

[State -2, FF Chute Forte]
type = ChangeState
value = 251
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,499]
triggerall = MoveType != H 
triggerall = Ctrl 
trigger1 = StateType = S
trigger1 = p2bodydist x <= 60
trigger2 = stateno = 251
trigger2 = time >= 240

[State -2, Punho de Ferro]
type = ChangeState
value = 3000
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,599]
triggerall = MoveType != H 
triggerall = prevstateno != 3000 || prevstateno != 3025 || prevstateno != 3050
triggerall = P2BodyDist X < 80
trigger1 = P2StateType = S
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA)

[State -2, Metralhadora Fraca]
type = ChangeState
value = 1600
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,899]
triggerall = MoveType != H 
triggerall = P2BodyDist X >= 80
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -2, Punho de Ferro]
type = ChangeState
value = 3025
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,499]
triggerall = MoveType != H 
triggerall = prevstateno != 3000 || prevstateno != 3025 || prevstateno != 3050
triggerall = P2BodyDist X < 80
trigger1 = P2StateType = S
trigger1 = Statetype = S && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA)

[State -2, Metralhadora Media]
type = ChangeState
value = 1625
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,799]
triggerall = MoveType != H 
triggerall = P2BodyDist X >= 80
trigger1 = Statetype = S && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -2, Punho de Ferro]
type = ChangeState
value = 3050
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,399]
triggerall = MoveType != H 
triggerall = prevstateno != 3000 || prevstateno != 3025 || prevstateno != 3050
triggerall = P2BodyDist X < 80
trigger1 = P2StateType = S
trigger1 = Statetype = S && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA)

[State -2, Metralhadora Forte]
type = ChangeState
value = 1650
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,699]
triggerall = MoveType != H 
triggerall = P2BodyDist X >= 80
trigger1 = Statetype = S && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -2, Chutes Relampago Fraco]
type = ChangeState
value = 3100
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,599]
triggerall = MoveType != H 
triggerall = prevstateno != 3100 || prevstateno != 3125 || prevstateno != 3150
triggerall = P2BodyDist X < 65
trigger1 = P2StateType = S
trigger1 = Statetype = S && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA)

[State -2, Chutes Relampago Medio]
type = ChangeState
value = 3125
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,499]
triggerall = MoveType != H 
triggerall = prevstateno != 3100 || prevstateno != 3125 || prevstateno != 3150
triggerall = P2BodyDist X < 75
trigger1 = P2StateType = S
trigger1 = Statetype = S && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA)

[State -2, Chutes Relampago Forte]
type = ChangeState
value = 3150
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,399]
triggerall = MoveType != H 
triggerall = prevstateno != 3100 || prevstateno != 3125 || prevstateno != 3150
triggerall = P2BodyDist X < 85
trigger1 = P2StateType = S
trigger1 = Statetype = S && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA)

;------------------------------------------------------------------------------------------------
;Golpes Simples - No Ar / Sistema de Combos Aéreos
;------------------------------------------------------------------------------------------------

[State -2,Launcher]
type=ChangeState
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,999]
triggerall = Ctrl 
triggerall = P2BodyDist X <= 25
triggerall = MoveType != H 
trigger1 = StateType = S
value = 420

[State -2,Super Pulo]
type=changestate
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random <= 1000
triggerall = PrevStateno = 420 && P2MoveType != H && P2StateType = A
triggerall = P2BodyDist X <= 25
triggerall = Ctrl 
triggerall = MoveType != H 
trigger1 = Statetype = S
value = 7000

[State -2,Soco e Chute Fraco]
type=ChangeState
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,999]
triggerall = PrevStateno = 7001 || PrevStateno = 600 || PrevStateno = 610 
triggerall = PrevStateno = 620 || PrevStateno = 630 || PrevStateno = 640 || PrevStateno = 650
triggerall = P2Statetype = A 
triggerall = MoveType != H 
triggerall = Ctrl 
triggerall = P2BodyDist X <= 15
trigger1 = StateType = A
value= ifelse(Random <500, 600, 630)

[State -2,Soco e Chute Medio]
type=ChangeState
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,999]
triggerall = PrevStateno = 7001 || PrevStateno = 600 || PrevStateno = 610 
triggerall = PrevStateno = 620 || PrevStateno = 630 || PrevStateno = 640 || PrevStateno = 650
triggerall = P2Statetype = A 
triggerall = MoveType != H    
triggerall = Ctrl 
triggerall = P2BodyDist X >= 15
trigger1 = StateType = A
value= ifelse(Random <500, 610, 640)

[State -2,Soco e Chute Forte]
type=ChangeState
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,899]
triggerall = PrevStateno = 7001 || PrevStateno = 600 || PrevStateno = 610 
triggerall = PrevStateno = 620 || PrevStateno = 630 || PrevStateno = 640 || PrevStateno = 650
triggerall = P2Statetype = A 
triggerall = MoveType != H  
triggerall = Ctrl 
triggerall = P2BodyDist X >= 25
trigger1 = StateType = A
value= ifelse(Random <500, 620, 650)

;------------------------------------------------------------------------------------------------
;======================================>Combos Pré-Definidos<====================================
;------------------------------------------------------------------------------------------------

;Chutes Relampago + TigerKick - FRACO
[State -2, Chutes Relampago]
type = ChangeState
value = 3100
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,699]
triggerall = MoveType != H 
triggerall = prevstateno != 3100 || prevstateno != 3125 || prevstateno != 3150
triggerall = prevstateno != 800 || prevstateno != 825 || prevstateno != 850
triggerall = P2BodyDist X < 65
trigger1 = P2StateType = S
trigger1 = Statetype = S && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA)

[State -2, Tiger Kick]
type = ChangeState
value = 800
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random <= 1000
triggerall = MoveType != H 
triggerall = Ctrl 
trigger1 = PrevStateno = 3100

;Chutes Relampago + TigerKick - MÉDIO
[State -2, Chutes Relampago]
type = ChangeState
value = 3125
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,599]
triggerall = MoveType != H 
triggerall = prevstateno != 3100 || prevstateno != 3125 || prevstateno != 3150
triggerall = prevstateno != 800 || prevstateno != 825 || prevstateno != 850
triggerall = P2BodyDist X < 75
trigger1 = Statetype = S && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA)

[State -2, Tiger Kick]
type = ChangeState
value = 825
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random <= 1000
triggerall = MoveType != H 
triggerall = Ctrl 
trigger1 = PrevStateno = 3125

;Chutes Relampago + TigerKick - FORTE
[State -2, Chutes Relampago]
type = ChangeState
value = 3150
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random = [99,599]
triggerall = MoveType != H 
triggerall = prevstateno != 3100 || prevstateno != 3125 || prevstateno != 3150
triggerall = prevstateno != 800 || prevstateno != 825 || prevstateno != 850
triggerall = P2BodyDist X < 85
trigger1 = Statetype = S && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA)

[State -2, Tiger Kick]
type = ChangeState
value = 850
triggerall = RoundState = 2 
triggerall = Var(59) != 0 
triggerall = Random <= 1000
triggerall = MoveType != H 
triggerall = Ctrl 
trigger1 = PrevStateno = 3150

;------------------------------------------------------------------------------------------------
;=====================================>States Exclusivos da IA<==================================
;------------------------------------------------------------------------------------------------
