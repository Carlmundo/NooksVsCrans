; States file for {character} -- Hypers
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper Attacks
; 
; Hyper 1 (QCF + PP) -- state 3000
;   hyper 1
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper 1 -- Mega beam
[StateDef 3000]
type    = S
physics = S
ctrl = 0
anim = 3000
velset = 0,0

;Cerebro Helmet Appear
[State 3000, explod]
type = Explod
trigger1 = Time = 0
anim = 3111
ID = 3111
bindtime = -1
removetime = -2
sprpriority = 1
removeongethit = 1
supermovetime = 9999
ownpal = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S7,0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG 
flag2 = nobardisplay
flag3 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 5
Time = 80
anim =-1
pos = 20,-75
sound = S9,3
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

;------------End of Hyper Effects

[State 3110, Helper]
type = Helper
trigger1 = time = 6
name = "megabeam"
ID = 3010
stateno = 3010
pos = 9,-86 ;0,-125
size.yscale = 1
ownpal = 1
supermove
removeongethit = 1

[State 3110, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------
; Hyper 1 - beam helper
[StateDef 3010]
type = A
movetype = A
physics = C
anim = 3010
ctrl = 0
sprpriority = 2

[State 3010, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + (22 * parent, facing)
y = parent, Pos Y - 86

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10

[State 3010, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 3010, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3010, hitdef]
type = HitDef
trigger1 = TimeMod = 10,1
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 35,5
pausetime = 0,10
hitsound = S9,2
guardsound = S6,0
sparkno = 1
sparkxy = -30,0
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 6
guard.velocity = 3
air.velocity = 4,-2
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 25
palfx.add = 0,0,85

[State 3115, DestroySelf]
type = DestroySelf
trigger1 = Time = 120
trigger2 = parent, stateno != 3000


;===========================================================================================================
; Hyper 2 - Dash Hyper
;===========================================================================================================
[StateDef 3100]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3100
velset = 0,0

;Jet fire
[State 3100, explod]
type = Explod
trigger1 = Time = 6
anim = 918
ID = 918
bindtime = 1
removetime = -2
sprpriority = 3
removeongethit = 1
supermovetime = 9999

;Rapid Hit Button icon
[State 0, Explod]
type = Explod
trigger1 = time = 6
anim = 3110
ID = 3110
pos = 160, 100
postype = left  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = 120
supermove = 1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 1
scale = 1.3,1.3

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG 
flag2 = nobardisplay
flag3 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 5
Time = 80
anim =-1 ;s3012
pos = 10,-45
sound = S9,3
poweradd = -1000
movetime = 0


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

;------------End of Hyper Effects

;[State 0, Explod]
;type = Explod
;trigger1 = time = 10
;anim = 4100
;pos = 0,0
;postype = p1  ;p2,front,back,left,right
;facing = 1
;vfacing = 1
;bindtime = -1
;removetime = -2
;scale = 0.85,0.85
;sprpriority = 1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 6
value = S8,0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 6
value = S1,1

[State 0, VelSet]
type = VelSet
trigger1 = time > 10 && time < 123
x = 20
y = 0

[State 3100, hitdef]
type = HitDef
trigger1 = time > 5 && animelem = 2
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 30,5
pausetime = 1,5
hitsound = S15,2
guardsound = S6,0
sparkno = -1 ;1
sparkxy = 25,-35
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -4
air.velocity = -8,-4
kill = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 1
var(10) = 0

[State 0, VarSet]
type = VarSet
trigger1 = time < 122 & command = "x"
var(10) = var(10) + 1

[State 0, VarSet]
type = VarSet
trigger1 = time < 122 & command = "y"
var(10) += var(10) + 1

[State 0, VarSet]
type = VarSet
trigger1 = time < 122 & command = "z"
var(10) = var(10) + 1

;rapid success, knock into air
[State 420, HitDef]
type = HitDef
trigger1 = time >= 121 & var(10) >= 14
attr = C, NA
damage = 25,5
guardflag = MAF
hitflag = MAF
pausetime = 11,11
hitsound = S15,2
guardsound = S6,0
sparkno = 2
sparkxy = 0,-50
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = 0,-11
fall = 1
kill = 0

;command success, knock into the air
[State 3100, changestate]
type = ChangeState
trigger1 = time >= 122 & movehit & var(10) >= 14
value = 3110
ctrl = 0

;rapid command fail
[State 3100, changestate]
type = ChangeState
trigger1 = time = 123 & !movehit
trigger2 = time = 123 & var(10) < 14
value = 0
ctrl = 1

;rapid fail, knock back
[State 3100, hitdef]
type = HitDef
trigger1 = Time >= 122 & var(10) < 14
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
damage = 20,5
guardflag = MA
pausetime = 2,5
hitsound = S15,2
guardsound = S6,0
sparkno = 2
sparkxy = 15,-15
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -15,-4
guard.velocity = -8
air.velocity = -14,-8
fall = 1
kill = 1
guard.kill = 1
fall.kill = 1

[State 3100, changestate]
type = ChangeState
trigger1 = time = 125 & var(10) < 14
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Hyper 2 - Dash Hyper - Super Jump
[Statedef 3110]
type = S
movetype = I
physics = S
anim = 40
velset = 0,0
ctrl = 0

[State 0, Explod]
type = Explod
trigger1 = 1
anim = 4000
pos = 10,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
scale = 0.85,0.85
sprpriority = 1
supermove = 1

[State 0, ]
type = explod
trigger1 = time = 1
anim = F61
postype = p1
pos = 0,0
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 0, ]
type = VelSet
trigger1 = animtime = 0
x = -6
y = const(velocity.jump.y)*1.15

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 17
id = 4000

[State 0, ]
type = ChangeState
trigger1 = time = 20
value = 3120
ctrl = 0


;-------------------------------------------------------------------------------
; Hyper 2 - Dash Hyper Continue
[StateDef 3120]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3100
velset = 0,0

[State 3000, superpause]
type = SuperPause
trigger1 = Time = 0
time = 60
sound = S10,0
pos = 20,-40
poweradd = -1000

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 4100
id = 4100
pos = -10,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 70
scale = 0.85,0.85
sprpriority = 1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S8,0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S1,1

[State 0, VelSet]
type = VelSet
trigger1 = time < 73
x = 15
y = 0

[State 3100, hitdef]
type = HitDef
trigger1 = time > 1 && animelem = 2
attr = C,NA
damage = 30,5
pausetime = 1,5
hitsound = S15,2
guardsound = S6,0
sparkno = -1 ;1
sparkxy = 25,-35
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -4
air.velocity = -8,0
kill = 0

[State 3100, hitdef]
type = HitDef
trigger1 = Time > 72
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
damage = 25,5
guardflag = MA
pausetime = 2,5
hitsound = S15,2
guardsound = S6,0
sparkno = S9991
sparkxy = 15,-15
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -15,-4
guard.velocity = -8
air.velocity = -14,-8
fall = 1
kill = 1
guard.kill = 1
fall.kill = 1

[State 3100, changestate]
type = ChangeState
trigger1 = time = 75
value = 51
ctrl = 1

;===========================================================================================================
; Hyper 3 - Astral Plane
;===========================================================================================================
[StateDef 3200]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3200
velset = 0,0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3200, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 11
flag = noBG 
flag2 = nobardisplay
flag3 = noFG
ignorehitpause = 1

[State 3200, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 11
Time = 80
anim =-1 ;s3012
pos = 24,-50
sound = S9,3
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 11
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 11
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 11
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

;------------End of Hyper Effects

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 13 && var(27) = 0
value = S9,3

[State -3, sense bar]
type = Explod
triggerall = animelem = 6
trigger1 = numexplod(3120)=0
anim = 3120
id = 3120
pos = ifelse(TeamSide = 1, 1, 319), 240
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 90
ignorehitpause = 1
ownpal = 1

[State -3, sense bar]
type = Explod
triggerall = animelem = 6
trigger1 = numexplod(3130)=0
anim = 3130
id = 3130
pos = ifelse(TeamSide = 1, 48, 271), 240
postype = left
facing = 1;ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 92
ignorehitpause = 1
ownpal = 1

[State 3200, projeção]
type = helper
stateno = 3201
helpertype = normal
trigger1 = time = 13 && var(27) = 0
pos = 20,0
postype = p1
ID=3201
ownpal = 1
name = "projeção"
sprpriority = -1

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
triggerall = var(20)=1
trigger1 = time > 150
var(25)= 20

[State 3301, vitoria]
type = VarSet
trigger1 = win = 1
var(25)= 20

[State 3200, fim]
type = ChangeState
trigger1 = var(25)= 20
trigger2 = time > 600
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Astral Plane Helper
[Statedef 3201]
type    = A
movetype= H
physics = N
ctrl = 0
anim = 2500
velset = 0,0
sprpriority = -1

[State 2501, fim]
type = DestroySelf
trigger1 = parent,var(25)= 20
trigger2 = win = 1
trigger3 = lose = 1
trigger4 = parent,stateno!=3200
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
damage = 25,5
numhits = 1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,5
sparkno = 0
sparkxy = -10, -60
hitsound = S15,0
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = ifelse((P2Dist X > 5),-3,3)
air.type = Low
air.hittime = 15
air.velocity = ifelse((P2Dist X > 5),-3,3),-5

[State 200, HitDef]
type = HitDef
trigger1 = (anim = 2520 || anim = 2620) && animelem = 2
attr = S,NA
damage = 35,5
numhits = 1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,5
sparkno = 1
sparkxy = -10, -80
hitsound = S15,0
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = ifelse((P2Dist X > 5),-3,3)
air.type = Low
air.hittime = 15
air.velocity = ifelse((P2Dist X > 5),-3,3),-5

[State 200, HitDef]
type = HitDef
trigger1 = (anim = 2530 || anim = 2630) && animelem = 3
attr = S,NA
damage = 45,5
numhits = 1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,5
sparkno = 2
sparkxy = 0, -60
hitsound = S15,1
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = ifelse((P2Dist X > 5),-3,3)
air.type = Low
fall = 1
air.fall = 1
air.hittime = 15
air.velocity = ifelse((P2Dist X > 5),-3,3),-5

[State 200, HitDef]
type = HitDef
trigger1 = (anim = 2540 || anim = 2640) && animelem = 2
attr = S,NA
damage = 25,5
numhits = 1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,5
sparkno = 0
sparkxy = -10, -60
hitsound = S15,0
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = ifelse((P2Dist X > 5),-3,3)
air.type = Low
air.hittime = 15
air.velocity = ifelse((P2Dist X > 5),-3,3),-5

[State 200, HitDef]
type = HitDef
trigger1 = (anim = 2550 || anim = 2650) && animelem = 2
attr = S,NA
damage = 35,5
numhits = 1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,5
sparkno = 1
sparkxy = -10, -70
hitsound = S15,0
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = ifelse((P2Dist X > 5),-3,3)
air.type = Low
air.hittime = 15
air.velocity = ifelse((P2Dist X > 5),-3,3),-5

[State 200, HitDef]
type = HitDef
trigger1 = (anim = 2560 || anim = 2660) && animelem = 2
attr = S,NA
damage = 45,5
numhits = 1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,5
sparkno = 2
sparkxy = 0, -30
hitsound = S15,1
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = ifelse((P2Dist X > 5),-3,3)
air.type = Low
air.hittime = 15
air.velocity = ifelse((P2Dist X > 5),-3,3),-5

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

;===========================================================================================================
;Hyper 4 - Astral Armor Hyper
;===========================================================================================================
[StateDef 3300]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3302
velset = 0,0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 31
value = 3300

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = S9,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S5,7

[State 0, Explod]
type = Explod
trigger1 = time = 6
anim = 3310
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 31
flag = noBG 
flag2 = nobardisplay
flag3 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = time = 31
Time = 80
anim =-1 ;s3012
pos = 32,-100
sound = S9,3
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 31
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 31
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 31
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

;------------End of Hyper Effects

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8,0

[State 0, VelSet]
type = VelSet
trigger1 = time > 31 && time < 100
x = 12
y = 0

[State 0, Explod]
type = Explod
trigger1 = (time%9 = 0) && anim = 3300
anim = 3301
pos = 0,-65 + ((Random * 30) / 1000)
postype = p1  ;p2,front,back,left,right
bindtime = 5
random = 120,0
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 0.5,0.7
ontop = 1
ownpal = 1
removeongethit = 1

[State 3100, hitdef]
type = HitDef
trigger1 = time > 1 && animelem = 3
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 40,5
pausetime = 1,5
hitsound = S15,1
guardsound = S6,0
sparkno = 2
sparkxy = -10,-50
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -4
air.velocity = -8,-4
kill = 1

[State 3300, changestate]
type = ChangeState
trigger1 = time = 120
value = 105
ctrl = 1
