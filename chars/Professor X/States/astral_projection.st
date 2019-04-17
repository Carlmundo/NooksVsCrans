;var(25)= ZVitor Projeção
;var(26)= ZVitor Projeção cima baixo
;var(27)= ZVitor Projeção Hits
;---------------------------------------------------------------------------
;--------Begin ZVitor-----
[Statedef 2500]
type    = S
movetype= A
physics = S
juggle  = 4
anim = 2505
ctrl = 0
sprpriority = 2

[State 4001, bgpalfx]
type = bgpalfx
trigger1 = timemod = 10,0
invertall = 1
add = -100,-255,-100
sinadd = -100,-100,-100,100
color = 0
time = 11

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noFG

;[State 3301, pararVel]
;type = VarSet
;trigger1 = var(27) = 0
;var(25)= 0

;[State 3301, pararVel]
;type = VarSet
;trigger1 = var(27) = 0
;var(26)= 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1 && var(27) = 0
value = S9,3

[State 2500, projeção]
type = helper
stateno = 2501
helpertype = normal ;
trigger1 = animelem = 1 && var(27) = 0
pos = 0,-20
postype = p1
ID=2501
ownpal = 1
name = "projeção"
sprpriority = -3

;Valores para var(25)
;0 - parado
;1 - Frente
;2 - Trás
;5 - Run
;6 - Run Back
;10 - Soco Fraco
;11 - Soco Medio
;12 - Soco Forte
;13 - Chute Fraco
;14 - Chute Médio
;15 - Chute Forte
;20 - Sair

;Valores para var(26)
;0 - parado
;3 - cima
;4 - baixo

;Valores para var(27)
;0 hits
;1 hits
;2 hits
;3 hits


[state 4000, gethit]
type = hitoverride
trigger1 = 1
time = 1
attr = SCA, AA, AT, AP
slot = 1
stateno = 2502

[State 3301, pararVel]
type = VarSet
triggerall = var(25)!= 5 && time > 20
triggerall = var(25)!= 6
;trigger1 = command != "holdfwd"
;trigger2 = command != "holdback"
trigger1 = Pos Y < -205
trigger2 = Pos Y > -20
var(25)= 0

[State 3301, pararVel]
type = VarSet
trigger1 = command != "holdup" && time > 20
trigger2 = command != "holddown"
trigger3 = Pos Y < -205
trigger4 = Pos Y > -20
var(26)= 0



[State 3301, MoveBack]
type = VarSet
trigger1 = command = "FF" && time > 20
var(25)= 5

[State 3301, MoveBack]
type = VarSet
trigger1 = command = "BB" && time > 20
var(25)= 6



;[State 3301, MoveBack]
;type = VarSet
;trigger1 = (var(25)= 5 || var(25)= 6) && (var(26)= 3 || var(26)= 4)
;var(25)= 0
[State 0, VarSet]
type = VarSet
trigger1 = command = "holdfwd" && var(25) != 5 && time > 20
var(25)= 1

[State 3301, MoveBack]
type = VarSet
trigger1 = command = "holdback" && var(25) != 6 && time > 20
var(25)= 2


[State 3101, Up]
type = VarSet
trigger1 = command = "holdup" && time > 20
trigger1 = var(26)!= 3
;triggerall = command != "holdback"
;triggerall = command != "holdfwd"
triggerall = command != "x"
triggerall = command != "y"
triggerall = command != "z"
triggerall = command != "a"
triggerall = command != "b"
triggerall = command != "c"
var(26)= 3
;
[State 3301, Down]
type = VarSet
trigger1 = command = "holddown" && time > 20
trigger1 = var(26)!= 4
;triggerall = command != "holdback"
;triggerall = command != "holdfwd"
triggerall = command != "x"
triggerall = command != "y"
triggerall = command != "z"
triggerall = command != "a"
triggerall = command != "b"
triggerall = command != "c"
var(26)= 4

[State 3301, Jump_Light_Punch]
type = VarSet
trigger1 = command = "x" && time > 20
var(25)= 10

[State 3301, Jump_Medium_Punch]
type = VarSet
trigger1 = command = "y" && time > 20
var(25)= 11

[State 3301, Jump_Strong_Punch]
type = VarSet
trigger1 = command = "z" && time > 20
var(25)= 12

[State 3301, Jump_Light_Kick]
type = VarSet
trigger1 = command = "a" && time > 20
var(25)= 13

[State 3301, Jump_Medium_Kick]
type = VarSet
trigger1 = command = "b" && time > 20
var(25)= 14

[State 3301, Jump_Strong_Kick]
type = VarSet
trigger1 = command = "c" && time > 20
var(25)= 15

[State 0, VarSet]
type = VarSet ;sair
triggerall = var(20)=0
trigger1 = (command = "qcb_x" || command = "qcb_y" || command = "qcb_z") && time > 20
trigger2 = time > 600
;trigger3 time = 200 && var(20)=1
var(25)= 20

[State 0, VarSet]
type = VarSet ;sair
triggerall = var(20)=1
trigger1 = time > 150
var(25)= 20


[State 3301, vitoria]
type = VarSet
trigger1 = win = 1
var(25)= 20

[State 2500, fim]
type = ChangeState
trigger1 = var(25)= 20
value = 0
ctrl = 1

[Statedef 2501]
type    = A
movetype= H
physics = N
ctrl = 0
anim = 2506
velset = 0,0
sprpriority = 1

[State 2501, fim]
type = DestroySelf
trigger1 = parent,var(25)= 20
trigger2 = win = 1
trigger3 = lose = 1
trigger4 = parent,stateno!=2500 && parent,stateno!=2502
value = 0

[State 0, ChangeAnim]  ;; enemynear,facing=-1
type = ChangeAnim
trigger1 = time = 20 ; tempo da anim 2506
value = 2500 + ifelse((P2Dist X > 5),0,100)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 2500 && P2Dist X < -5
value = 2600

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 2600 && P2Dist X > 5
value = 2500

[State 3301, pararVel]
type = VelSet
trigger1 = (root,var(25) = 0)
x = 0
y = 0

[State 3301, pararAnim]
type = ChangeAnim
triggerall = time > 20
trigger1 = (root,var(25) = 0)
triggerall = anim != 2500 && anim != 2510 && anim != 2520 && anim != 2530
triggerall = anim != 2540 && anim != 2550 && anim != 2560
triggerall = anim != 2600 && anim != 2610 && anim != 2620 && anim != 2630
triggerall = anim != 2640 && anim != 2650 && anim != 2660
value = 2500 + ifelse((P2Dist X > 5),0,100)

[State 3301, Back]
type = ChangeAnim
triggerall = anim != 2510 && anim != 2520 && anim != 2530
triggerall = anim != 2540 && anim != 2550 && anim != 2560
triggerall = anim != 2610 && anim != 2620 && anim != 2630
triggerall = anim != 2640 && anim != 2650 && anim != 2660
trigger1 = (root,var(25) = 2)
trigger1 = Anim != 2502 && Anim != 2602
value = 2502  + ifelse((P2Dist X > 5),0,100);pra tras

[State 3101, Forward]
type = ChangeAnim
triggerall = anim != 2510 && anim != 2520 && anim != 2530
triggerall = anim != 2540 && anim != 2550 && anim != 2560
triggerall = anim != 2610 && anim != 2620 && anim != 2630
triggerall = anim != 2640 && anim != 2650 && anim != 2660
trigger1 = (root,var(25) = 1)
trigger1 = Anim != 2501 && anim != 2601
value = 2501  + ifelse((P2Dist X > 5),0,100)  ;pra frente

[State 3101, Up]
type = ChangeAnim
trigger1 = (root,var(26) = 3)
trigger1 = Anim != 2507 && Anim != 2607
value = 2507  + ifelse((P2Dist X > 5),0,100)  ;pra cima

[State 3301, Down]
type = ChangeAnim
trigger1 = (root,var(26) = 4)
trigger1 = Anim != 2508 && Anim != 2608
value = 2508  + ifelse((P2Dist X > 5),0,100);pra baixo

;[State 3301,Turn]
;type = Turn
;trigger1 = P2bodydist X < -100 && anim = 2501

[State 3301, MoveUp]
type = VelSet
trigger1 = (root,var(26) = 3)
y = -3

[State 3301, MoveDown]
type = VelSet
trigger1 = (root,var(26) = 4)
y = 3

[State 3301, MoveBack]
type = VelSet
trigger1 = anim = 2502
trigger2 = anim = 2602
x = -4

[State 3301, MoveForward]
type = VelSet
trigger1 = anim = 2501
trigger2 = anim = 2601
x = 4

[State 3301, UpBorder]
type = PosSet
triggerall = var(20)=0
trigger1 = Pos Y < -200
y = -200

[State 3301, UpBorder]
type = PosSet
triggerall = var(20)=1
trigger1 = Pos Y < -110
y = -110

[State 3301, DownBorder]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 3301, LeftBorder]
type = PosSet
trigger1 = Pos X < -150
x = -150

[State 3301, LeftBorder]
type = PosSet
trigger1 = Pos X > 150
x = 150

[State 3101, Forward]
type = ChangeAnim
trigger1 = (root,var(25) = 5)
trigger1 = Anim != 2503 &&  Anim != 2603
value = 2503 + ifelse((P2Dist X > 5),0,100) ;run frente

[State 3101, Forward]
type = ChangeAnim
trigger1 = (root,var(25) = 6)
trigger1 = Anim != 2504 &&  Anim != 2604
value = 2504 + ifelse((P2Dist X > 5),0,100) ;run back

[State 3301, MoveBack]
type = VelSet
trigger1 = anim = 2503
trigger2 = anim = 2603
x = 8

[State 3301, MoveBack]
type = VelSet
trigger1 = anim = 2504
trigger2 = anim = 2604
x = -8

[State 3101, Forward]
type = ChangeAnim
trigger1 = (root,var(25) = 10)
trigger1 = Anim != 2510 && Anim != 2610
value = 2510   + ifelse((P2Dist X > 5),0,100)

[State 3101, Forward]
type = ChangeAnim
trigger1 = (root,var(25) = 11)
trigger1 = Anim != 2520 &&  Anim != 2620
value = 2520  + ifelse((P2Dist X > 5),0,100)  ;soco medio

[State 3101, Forward]
type = ChangeAnim
trigger1 = (root,var(25) = 12)
trigger1 = Anim != 2530 &&  Anim != 2630
value = 2530  + ifelse((P2Dist X > 5),0,100)  ;soco forte

[State 3101, Forward]
type = ChangeAnim
trigger1 = (root,var(25) = 13)
trigger1 = Anim != 2540 &&  Anim != 2640
value = 2540  + ifelse((P2Dist X > 5),0,100)  ;chute fraco

[State 3101, Forward]
type = ChangeAnim
trigger1 = (root,var(25) = 14)
trigger1 = Anim != 2550  &&  Anim != 2650
value = 2550  + ifelse((P2Dist X > 5),0,100)  ;chute medio

[State 3101, Forward]
type = ChangeAnim
trigger1 = (root,var(25) = 15)
trigger1 = Anim != 2560 &&  Anim != 2660
value = 2560  + ifelse((P2Dist X > 5),0,100)  ;chute forte

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = animtime = 0
trigger1 = anim = 2510 || anim = 2520 || anim = 2530
trigger2 = anim = 2540 || anim = 2550 || anim = 2560
trigger3 = anim = 2610 || anim = 2620 || anim = 2630
trigger4 = anim = 2640 || anim = 2650 || anim = 2660
value = 2500  + ifelse((P2Dist X > 5),0,100)

[State 200, HitDef]
type = HitDef
trigger1 = (anim = 2510 || anim = 2610) && animelem = 2
attr = S,NA
damage = 15,1
numhits = 1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 7,7
sparkno = 0
sparkxy = -10, -60
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = ifelse((P2Dist X > 5),-3,3)
air.type = Low
air.hittime = 15
air.velocity = ifelse((P2Dist X > 5),-3,3)

[State 200, HitDef]
type = HitDef
trigger1 = (anim = 2520 || anim = 2620) && animelem = 2
attr = S,NA
damage = 15,1
numhits = 1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 7,7
sparkno = 1
sparkxy = -10, -80
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = ifelse((P2Dist X > 5),-3,3)
air.type = Low
air.hittime = 15
air.velocity = ifelse((P2Dist X > 5),-3,3)

[State 200, HitDef]
type = HitDef
trigger1 = (anim = 2530 || anim = 2630) && animelem = 3
attr = S,NA
damage = 15,1
numhits = 1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 7,7
sparkno = 2
sparkxy = 0, -60
hitsound = 5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = ifelse((P2Dist X > 5),-3,3)
air.type = Low
fall = 1
air.fall = 1
air.hittime = 15
air.velocity = ifelse((P2Dist X > 5),-3,3)

[State 200, HitDef]
type = HitDef
trigger1 = (anim = 2540 || anim = 2640) && animelem = 2
attr = S,NA
damage = 15,1
numhits = 1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 7,7
sparkno = 0
sparkxy = -10, -60
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = ifelse((P2Dist X > 5),-3,3)
air.type = Low
air.hittime = 15
air.velocity = ifelse((P2Dist X > 5),-3,3)

[State 200, HitDef]
type = HitDef
trigger1 = (anim = 2550 || anim = 2650) && animelem = 2
attr = S,NA
damage = 15,1
numhits = 1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 7,7
sparkno = 1
sparkxy = -10, -70
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = ifelse((P2Dist X > 5),-3,3)
air.type = Low
air.hittime = 15
air.velocity = ifelse((P2Dist X > 5),-3,3)

[State 200, HitDef]
type = HitDef
trigger1 = (anim = 2560 || anim = 2660) && animelem = 2
attr = S,NA
damage = 15,1
numhits = 1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 7,7
sparkno = 2
sparkxy = 0, -30
hitsound = 5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = ifelse((P2Dist X > 5),-3,3)
air.type = Low
air.hittime = 15
air.velocity = ifelse((P2Dist X > 5),-3,3)

[State 0, VelSet]
type = VelSet
trigger1 = anim = 2550
x = 4
y = -1

[State 0, VelSet]
type = VelSet
trigger1 = anim = 2650
x = -4
y = -1

[State 0, VelSet]
type = VelSet
trigger1 = anim = 2560
x = 2
y = 1

[State 0, VelSet]
type = VelSet
trigger1 = anim = 2660
x = -2
y = 1

[StateDef 2502]
type = S
movetype= H
physics = S
anim = 2509
ctrl = 0

[state 4000, gethit]
type = hitoverride
trigger1 = 1
time = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 2502

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 27
value = var(27)+1


[State 0, VarSet]
type = VarSet
trigger1 = var(27) > 2
v = 25
value = 20

[State 0, VarSet]
type = VarSet
trigger1 = var(27) > 2
v = 27
value = 0

[State 9000, ChangeState];Dead
type = ChangeState
trigger1 = Life <= 0
value = 5000

[State 2502, changestate]
type = ChangeState
trigger1 = time = 10 && var(25)= 20
value = 5100
ctrl = 0

[State 2502, changestate]
type = ChangeState
trigger1 = time = 10 && var(27) < 3
value = 2500
