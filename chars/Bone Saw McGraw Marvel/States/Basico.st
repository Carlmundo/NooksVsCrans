;------------------------------------------------------------------------------------------------
;================================================================================================
;+++++++++++++++++++++++++++++++++++/-----------------------\++++++++++++++++++++++++++++++++++++
;-----------------------------------|      -=+Randy Savage+=-      |------------------------------------
;===================================|     States Básicos    |====================================
;+++++++++++++++++++++++++++++++++++\-----------------------/++++++++++++++++++++++++++++++++++++
;---------------------------------------------------By: Wrestling Revolution Mugen_------------------
;================================================================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;------------------------------------------------------------------------------------------------
;========================================>Andando p/ Frente<=====================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Andando p/ Frente
;------------------------------------------------------------------------------------------------
[Statedef 20]
type = S
physics = S
sprpriority = 0

[State 20, 1]
type = VelSet
trigger1 =Var(59)<1&command = "holdfwd"
trigger2 =Var(59)>1
x = const(velocity.walk.fwd.x)

[State 20, 2]
type = VelSet
trigger1 =Var(59)<1& command = "holdback"
trigger2 =Var(59)=1
x = const(velocity.walk.back.x)

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

;------------------------------------------------------------------------------------------------
;=============================================>Pulo<=============================================
;------------------------------------------------------------------------------------------------

[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 40, var]
type = VarSet
trigger1=!time
var(40)=1

[State 40, var]
type = VarSet
triggerall=!time
trigger1=command="superjump"
trigger2=prevstateno=420
var(40)=2

[State 40, var]
type = VarSet
trigger1=!time
sysvar(1)=0

[State 40, var]
type = VarSet
trigger1=command="holdfwd"
sysvar(1)=1

[State 40, var]
type = VarSet
trigger1=command="holdback"
sysvar(1)=-1

[State 40, vel]
type=velset
trigger1=!animtime&&var(40)!=2
x=ifelse(sysvar(1)=0,const(velocity.jump.neu.x),ifelse(sysvar(1)=1,const(velocity.jump.fwd.x),const(velocity.jump.back.x)))
y=const(velocity.jump.y)

[State 40, vel]
type=velset
trigger1=!animtime&&var(40)=2
x=ifelse(sysvar(1)=0,const(velocity.jump.neu.x),ifelse(sysvar(1)=1,1.2*const(velocity.jump.fwd.x),1.2*const(velocity.jump.back.x)))
y=1.25*const(velocity.jump.y)

[State 40, vel]
type=velset
trigger1=!animtime&&prevstateno=100&&sysvar(1)=1
x=const(velocity.runjump.fwd.x)

[State 40, var]
type=varset
trigger1=!animtime&&prevstateno=100&&sysvar(1)=1
var(40)=2

[State 40, end]
type=changestate
trigger1=!animtime
value=50
ctrl=1

[Statedef 50]
type=A
physics=A

[State 50, Rastro]
type = AfterImage
trigger1 = vel y<0&&var(40)=2
time = 2
trans = add
TimeGap = 2
FrameGap = 2
length = 80
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 50, snd]
type=playsnd
trigger1=time=0&&var(40)=2
value=9999,5

[State 50, explod]
type = Explod
triggerall = time < 28&&NumExplod(7000) <= 4&&var(40)=2
trigger1 = (GameTime%10) = 0 && (GameTime >= 0)
ID = 7000
anim = 7000
postype = P1
pos = 15,28
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 50, Explod]
type = Explod
triggerall = time < 28&&NumExplod(7000) <= 4&&var(40)=2
trigger1 = (GameTime%10) = 5
ID = 7000
anim = 7000
postype = P1
pos = -5,28
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 50, anim]
type=changeanim
trigger1=1
value=ifelse(!(vel x), 41, ifelse((vel x)>0, 42, 43))
persistent=0

[State 50, slower fall]
type=veladd
trigger1=var(40)=2
y=-.05

[State 50, direction]
type=veladd
trigger1=var(40)=2
x=ifelse((command="holdfwd"&&vel x<4.2),.1,ifelse((command="holdback"&&vel x>-4.2),-.1,0))

[State 50, turn]
type=turn
trigger1=var(40)=2&&p2dist x<-5

;------------------------------------------------------------------------------------------------
;=======================================>Correndo p/ Frente<=====================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Correndo p/ Frente
;------------------------------------------------------------------------------------------------
[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1
ctrl=1-var(59)>0

[State 100, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 27
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 100, Dust]
type = Helper
trigger1 = AnimElem = 2
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 25,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 100, Flash]
type = Explod
trigger1 = time > 4 && (time%4) = 1
ID = 5407
anim = 5407
postype = P1
pos = 10,-51
bindtime = 1
vel = -2.2
ownpal = 1
random = 18,48
removetime = -2
sprpriority = 2

[State 100, Flash]
type = Explod
trigger1 = time > 4 && (time % 4) = 0
ID = 5407
anim = 5407
postype = p1
pos = 10,-49
bindtime = 1
vel = -2
ownpal = 1
random = 18,48
removetime = -2
sprpriority = 2

[State 100, VelSet]
type = VelSet
trigger1 = Time >= 4
x = const(velocity.run.fwd.x)

[State 100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn

[State 100, PlaySnd]
type = PlaySnd
trigger1 = (AnimElem = 5) || (AnimElem = 9)
value = 8100,0

[State 100, ChangeState]
type = ChangeState
triggerall = Time >= 9
trigger1 =var(59)<1&command != "holdfwd"
value = 101

[State 100, CtrlSet]
type=CtrlSet
triggerall=Var(59)>0
trigger1=p2movetype=A|p2bodydist x<25
value=1

;-----------------------------------------------
;Chegando
;-----------------------------------------------
[Statedef 101]
type    = S
physics = S
ctrl = 0
anim = 101
sprpriority = 1

[State 101, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8100,0

[State 101, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0

[State 101, VelSet]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------
;==========================================>Dash p/ Trás<========================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Dash p/ Trás
;------------------------------------------------------------------------------------------------
[Statedef 105]
type    = A
physics = A
ctrl = 0
anim = 105
sprpriority = 1

[State 105, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 27
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 100, Dust]
type = Helper
trigger1 = AnimElem = 2
helpertype = Normal
ID = 5405
name = "Dust"
postype = p1
pos = 10,0
stateno = 5405
ownpal = 1
keyctrl = 0

[State 105, Flash]
type = Explod
trigger1 = time > 4 && (time%4) = 1
ID = 5407
anim = 5407
postype = P1
pos = 10,-51
bindtime = 1
vel = 2.2;-2.2
ownpal = 1
random = 18,48
removetime = -2
sprpriority = 2

[State 105, Flash]
type = Explod
trigger1 = time > 4 && (time % 4) = 0
ID = 5407
anim = 5407
postype = p1
pos = 10,-49
bindtime = 1
vel = 2;-2
ownpal = 1
random = 18,48
removetime = -2
sprpriority = 2

[State 105, VelSet]
type = VelSet
trigger1 = Time = 2
x = -10
y = const(velocity.run.back.y)

[State 105, ChangeState]
type = ChangeState
trigger1 = Time > 15
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

;-----------------------------------------------
;Chegando
;-----------------------------------------------
[Statedef 106]
type    = S
physics = S
ctrl = 0
anim = 106
sprpriority = 1

[State 106, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 106, posset]
type = posset
trigger1 = time = 0
y = 0

[State 106, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8100,0


[State 106, VelSet]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------
;======================================>Perder por Time Over<====================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Perder por Time Over
;------------------------------------------------------------------------------------------------
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;------------------------------------------------------------------------------------------------
;========================================>Poses de Vitória<======================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;VarRandom de Poses de Vitória
;------------------------------------------------------------------------------------------------
[Statedef 180]
type = S

[State 180, Random]
type = VarRandom
trigger1 = time = 0
v = 1
range = 1,3

[State 180, 1]
type = changestate
trigger1 = var(1) = 1
value = 181

[State 180, 2]
type = changestate
trigger1 = var(1) = 2
value = 182 

[State 180, 3]
type = changestate
trigger1 = var(1) = 3
value = 183

;------------------------------------------------------------------------------------------------
;Pose De Vitória 1 - Olhando para o Jogador
;------------------------------------------------------------------------------------------------
[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;------------------------------------------------------------------------------------------------
;Pose De Vitória 2 - Mostrando a Faca
;------------------------------------------------------------------------------------------------
[Statedef 182]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 182, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;------------------------------------------------------------------------------------------------
;Pose De Vitória 3 - Pose Com a Faca
;------------------------------------------------------------------------------------------------
[Statedef 183]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;------------------------------------------------------------------------------------------------
;===========================================>Introduções<========================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;VarRandom de Introduções
;------------------------------------------------------------------------------------------------
[Statedef 190]
type = S

[State 190, Vs Charger]
type = ChangeState
triggerall = Time = 0
trigger1 = P2Name = "Charger" || P4Name = "Charger"
value = 193

[State 190, Vs Guy]
type = ChangeState
triggerall = Time = 0
trigger1 = P2Name = "Guy by Phantom.of.the.Server" || P4Name = "Guy by Phantom.of.the.Server"
value = 193

[State 190, Vs Ixnaydk Zero]
type = ChangeState
triggerall = Time = 0
trigger1 = P2Name = "Ixnaydk Zero" || P4Name = "Ixnaydk Zero"
value = 193

[State 190, Vs Black Dragon]
type = ChangeState
triggerall = Time = 0
trigger1 = P2Name = "Black Dragon by MS and TF" || P4Name = "Black Dragon by MS and TF"
value = 193

[State 190, Random]
type = VarRandom
trigger1 = time = 0
v = 2
range = 1,3

[State 190, 1]
type = changestate
trigger1 = P2Name != "Black Dragon by MS and TF" || P4Name = "Black Dragon by MS and TF"
trigger1 = P2Name != "Ixnaydk Zero" || P4Name != "Ixnaydk Zero"
trigger1 = P2Name != "Guy by Phantom.of.the.Server" || P4Name != "Guy by Phantom.of.the.Server"
trigger1 = P2Name != "charger" || P4Name != "charger"
trigger1 = var(2) = 1
value = 191

[State 190, 2]
type = changestate
trigger1 = P2Name != "Black Dragon by MS and TF" || P4Name = "Black Dragon by MS and TF"
trigger1 = P2Name != "Ixnaydk Zero" || P4Name != "Ixnaydk Zero"
trigger1 = P2Name != "Guy by Phantom.of.the.Server" || P4Name != "Guy by Phantom.of.the.Server"
trigger1 = P2Name != "charger" || P4Name != "charger"
trigger1 = var(2) = 2
value = 192  

[State 190, 3]
type = changestate
trigger1 = P2Name != "Black Dragon by MS and TF" || P4Name = "Black Dragon by MS and TF"
trigger1 = P2Name != "Ixnaydk Zero" || P4Name != "Ixnaydk Zero"
trigger1 = P2Name != "Guy by Phantom.of.the.Server" || P4Name != "Guy by Phantom.of.the.Server"
trigger1 = P2Name != "charger" || P4Name != "charger"
trigger1 = var(2) = 3
value = 194 

;------------------------------------------------------------------------------------------------
;Introdução 1 - Girando o Braço
;------------------------------------------------------------------------------------------------
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;------------------------------------------------------------------------------------------------
;Introdução 2 - Olhando a Faca
;------------------------------------------------------------------------------------------------
[Statedef 192]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 192, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 191

[State 192, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 192, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;------------------------------------------------------------------------------------------------
;Introdução 3 - Sequencia de Golpes
;------------------------------------------------------------------------------------------------
[Statedef 194]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 194, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1 || AnimElem = 6 || AnimElem = 12 || AnimElem = 18
value = 8400,0 

[State 194, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 193

[State 194, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 194, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;----------------------------------------------------------------------------------------------------------------------
;Introdução Vs:
;Black Dragon (by Midnight Spirit & TrialForce)
;Zero (by IxnayDK)
;Guy (by Phantom.of.the.Server)
;Charger (by AyzraeL)
;----------------------------------------------------------------------------------------------------------------------
[Statedef 193]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 193, 0] 
type = AssertSpecial
trigger1 = Time = [0,180]
flag = intro
flag2 = nobardisplay


[State 193, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 192

[State 193, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;------------------------------------------------------------------------------------------------
;===========================================>Provocações<========================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Provocação
;------------------------------------------------------------------------------------------------

[Statedef 199]
type = S
ctrl = 0
anim = 199
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 199, 1]
type = CtrlSet
trigger1 = Time = 40
value = 1

[State 199, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------
;==========================================>Alpha Counter<=======================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Alpha Counter De Soco - Bloqueio
;------------------------------------------------------------------------------------------------
[Statedef 900]
type    = S
movetype= A
physics = S
velset = 0
anim = 900
poweradd = -1000
ctrl = 0

[State 900, 0]
type = EnvColor
trigger1 = Time = 0
value = 255, 255, 255
time = 1

[State 900, 2]
type = Null;PosFreeze
trigger1 = time >= 0

[State 900, 2]
type = Pause
trigger1 = time = 0
time = 21
movetime = 21

[State 255, 1]
type = PlaySnd
trigger1 = Time = 1
value = 2,5

[State 3100, Eclair2] 
type = Explod
trigger1 = animelem = 1
anim = 902
pos = 39,-69
postype = p1
sprpriority = 3
supermove = 1
bindtime = 1

[State 900, 5]
type = ChangeState
Trigger1 = AnimTime = 0
value = 901
ctrl = 1

;-----------------------------------------------
;Alpha Counter De Soco - Atacando
;-----------------------------------------------
[Statedef 901]
type    = S
movetype= A
physics = S
velset = 0
anim = 904
ctrl = 0

[State 901, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 27
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 901, 2]
type = NotHitBy
Trigger1 = Time >= 0
Trigger1 = AnimElem = 5, <0
value = SCA

[State 901, 2]
type = Width
Trigger1 = AnimElem = 1
value = 70

[State 901, 3]
type = Width
Trigger1 = AnimElem = 2
value = 87

[State 901, 1]
type = PlaySnd
trigger1 = Time = 1
value = 8888,6

[State 901, 4]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage    = 144
animtype  = Hard
Hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkxy = -10,-90
sparkno = s5408
guard.sparkno = s5402
hitsound   = s5408,0
guardsound = S8500,0
ground.type = trip
ground.slidetime = 13
ground.hittime  = 18
ground.velocity = -6.5   
air.type = High
air.velocity = -6,-5
airguard.velocity = -4 
p2getp1state = 1
p2stateno = 903
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
air.fall = 1
Palfx.time = ifelse(P2StateType = A , 50 ,60)
Palfx.add = 210,10,-200
Palfx.mul = 256,256,256
Palfx.sinadd = -112,-122,-112,10
Palfx.invertall = 1

[State 901, 1]
type = Explod
trigger1 = movehit = 1
anim = 901
sprpriority = 3
postype = p2
pos = 0,0
bindtime = -1

[State 901, AssertSpecial]
type = AssertSpecial
trigger1 = Time
flag = unguardable

[State 901, 1]
type = Screenbound
trigger1 = movehit = 1
value = 1
movecamera = 0,0

[State 901, 5]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------
;Alpha Counter De Chute - Bloqueio
;------------------------------------------------------------------------------------------------
[Statedef 950]
type    = S
movetype= A
physics = S
velset = 0
anim = 900
poweradd = -1000
ctrl = 0

[State 900, 0]
type = EnvColor
trigger1 = Time = 0
value = 255, 255, 255
time = 1

[State 900, 2]
type = Pause
trigger1 = time = 0
time = 25
movetime = 25

[State 255, 1]
type = PlaySnd
trigger1 = Time = 1
value = 2,5

[State 3100, Eclair2] 
type = Explod
trigger1 = animelem = 1
anim = 902
pos = 39,-69
postype = p1
sprpriority = 3
supermove = 1
bindtime = 1

[State 900, 5]
type = ChangeState
Trigger1 = AnimTime = 0
value = 951
ctrl = 1

;-----------------------------------------------
;Alpha Counter De Chute - Atacando
;-----------------------------------------------
[Statedef 951]
type    = S
movetype= A
physics = S
velset = 0
anim = 905
ctrl = 0

[State 951, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 27
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 951, 2]
type = NotHitBy
Trigger1 = Time >= 0
Trigger1 = AnimElem = 5, <0
value = SCA

[State 951, 2]
type = Width
Trigger1 = AnimElem = 2
value = 70

[State 951, 3]
type = Width
Trigger1 = AnimElem = 3
value = 87

[State 951, 1]
type = PlaySnd
trigger1 = Time = 1
value = 8888,6

[State 951, 4]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
damage    = 144
animtype  = Hard
Hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = s5408
guard.sparkno = s5402
hitsound   = s5408,0
guardsound = S8500,0
sparkxy = -6,-87
ground.type = trip
ground.slidetime = 13
ground.hittime  = 18
ground.velocity = -6.5   
air.type = High
air.velocity = -6,-5
airguard.velocity = -4 
p2getp1state = 1
p2stateno = 903
air.fall = 1
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
Palfx.time = ifelse(P2StateType = A , 50 ,60)
Palfx.add = 210,10,-200
Palfx.mul = 256,256,256
Palfx.sinadd = -112,-122,-112,10
Palfx.invertall = 1

[State 951, 1]
type = Explod
trigger1 = movehit = 1
anim = 901
sprpriority = 3
postype = p2
pos = 0,0
bindtime = -1

[State 951, AssertSpecial]
type = AssertSpecial
trigger1 = Time
flag = unguardable

[State 951, 1]
type = Screenbound
trigger1 = movehit = 1
value = 1
movecamera = 0,0

[State 951, 5]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------
;Alpha Counter De Soco e Chute - Reação do P2
;------------------------------------------------------------------------------------------------
[Statedef 903]
type    = A
movetype= H
physics = N
velset = 0
ctrl = 0

[State 903, 2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 903

[State 903, 1]
type = PosSet
Trigger1 = Time = 0
y = -64

[State 903, 1]
type = velSet
Trigger1 = Time = 0
x = -4
y = -7

[State 903, 1] ;Acceleration
type = VelAdd
trigger1 = Time >= 0
y = .3

[State 903, 4] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
type = SelfState
value = 5100

;------------------------------------------------------------------------------------------------
;========================================>Guard Destroyer<=======================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Guard Destroyer - Início
;------------------------------------------------------------------------------------------------
[StateDef 1400]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
velset = 0,0
anim = 800 
sprpriority = 2

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8888,6

[State 1400, Vel]
type = velset
trigger1 = animelem = 2
x = 2

[State 1400, Dust]
type = Helper
trigger1 = AnimElem = 2
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 55,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 1400, Hit]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype = Med
getpower = 100
givepower = 80
damage = 80,20
pausetime = 11,12
guardflag = MA
hitflag = MA
sparkno = s5410
guard.sparkno = s5402
sparkxy = 0,-37
hitsound = S8000,4
guardsound = S8500,0
ground.type = High
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -5
guard.velocity = -3
air.velocity = -5,-5
airguard.velocity = -5,-5
fall = 1
fall.recover = 0
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 1400, AssertSpecial]
type = AssertSpecial
trigger1 = Time
flag = unguardable

[State 1400, VarAdd]
type = VarAdd
triggerall = (var(57) || var(58)) && var(4) = [250,500]
trigger1 = Time/var(6)
var(56) = var(7)
ignorehitpause = 1

[State 1400, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 1401

;------------------------------------------------------------------------------------------------
;Guard Destroyer - No ar
;------------------------------------------------------------------------------------------------
[Statedef 1401]
type = A
movetype = A
physics = A
juggle = 0
anim = 801
ctrl = 0
sprpriority = 2

[State 1401, Hit]
type = HitDef
trigger1 = AnimElem = 1 ||(AnimElem = 2 && MoveContact = 0 )||(AnimElem = 3 && MoveContact = 0 )
attr = A, SA
animtype = Med
getpower = 100
givepower = 80
damage = 80,20
pausetime = 11,12
guardflag = MA
hitflag = MAF
sparkno = s5410
guard.sparkno = s5402
sparkxy = 0,-37
hitsound = S8000,4
guardsound = S8500,0
ground.type = High
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -5
guard.velocity = -3
air.velocity = -5,-6
airguard.velocity = -5,-6
fall = 1
fall.recover = 0
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 1401, Vel]
type = Velset
trigger1 = time = 0
y = -8
x = 5

[State 1401, Vel]
type = VelAdd
trigger1 = time >= 0
trigger1 = vel x >= 0.3
x = -0.2

[State 826, Vel]
type = VelSet
trigger1 = vel x = 0.3
x = 0

[State 1401, AssertSpecial]
type = AssertSpecial
trigger1 = Time
flag = unguardable

[State 1401, CS]
type = ChangeState
trigger1 = Time = 18
value = 1402

;------------------------------------------------------------------------------------------------
;Guard Destroyer - Aterrissando
;------------------------------------------------------------------------------------------------
[Statedef 1402]
type = A
movetype = A
physics = A
anim = 802
ctrl = 0
sprpriority = 2

[State 1402, Pos]
type = PosSet
trigger1 = animtime = 0
y  = 0

[State 1402, Vel]
type = Velset
trigger1 = AnimElem = 1
x = 0.5

[State 1402, CS]
type = ChangeState
trigger1 = animtime = 0
value = 50

;------------------------------------------------------------------------------------------------
;========================================>Recovery Roll<=========================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Recovery Roll X,Y e Z
;------------------------------------------------------------------------------------------------
[Statedef 2100]
type    = C       ;It's a crouching type move
movetype= I       ;The character is 'idle' while doing the recovery roll
physics = N
poweradd= 0
velset = 8,0      ;Just change the vel x to -8 if you want to roll backwards
ctrl = 0
anim = 2100
sprpriority = -1

[State 2100, PlayerPush] ;So you can roll 'through' the opponent
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 2100, VelSet]   ;Stop once the recovery roll is over
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 2100, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 2100, MakeDust]  ;Just some dust effects
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 2100, NotHitBy]  ;Can't get hit while rolling
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 2100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;------------------------------------------------------------------------------------------------
; Recovery Roll A,B e C
;------------------------------------------------------------------------------------------------
[Statedef 2150]
type    = C       ;It's a crouching type move
movetype= I       ;The character is 'idle' while doing the recovery roll
physics = N
poweradd= 0
velset = -8,0      ;Just change the vel x to -8 if you want to roll backwards
ctrl = 0
anim = 2150
sprpriority = -1

[State 2150, PlayerPush] ;So you can roll 'through' the opponent
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 2150, VelSet]   ;Stop once the recovery roll is over
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 2150, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 2150, MakeDust]  ;Just some dust effects
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 2150, NotHitBy]  ;Can't get hit while rolling
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 2150, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;------------------------------------------------------------------------------------------------
;=============================================>Clarão<===========================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Clarão - Helper GERAL
;------------------------------------------------------------------------------------------------
[Statedef 5412]
type = S
movetype = I
poweradd = 0
physics = N
juggle = 0
ctrl = 0
anim = 704
sprpriority = 5

[State 5412, Clarao]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 1
under = 0
ignorehitpause = 1

[State 5412, CS]
type = ChangeState
trigger1 = time = 1
ctrl = 1
value = 5413

;-----------------------------------------------
;Clarão - Acabando
;-----------------------------------------------
[Statedef 5413]
type    = S
movetype= I
physics = N
juggle  = 1
poweradd = 0
anim = 704
ctrl = 0
sprpriority = 5

[State 5413, PosFreeze]
type = PosFreeze
trigger1 = time
time = -1

[State 5413, DestroySelf]
type = DestroySelf
trigger1 = Time = 0

;------------------------------------------------------------------------------------------------
;=========================================>Dust p/ Frente<=======================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Dust p/ Frente - Helper GERAL
;------------------------------------------------------------------------------------------------
[Statedef 5403]
type = S
movetype = I
poweradd = 0
physics = N
juggle = 0
ctrl = 0
anim = 5403
sprpriority = 5

[State 5403, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 3
PalBright = 0, 0, 0
PalContrast = 100,100,100 ; 128,128,128
PalAdd = 0, 0, 0
PalMul = 0, 0, 0 ;1, 1, 1

[State 5403, CS]
type = ChangeState
trigger1 = Animtime = 0
ctrl = 1
value = 5404

;-----------------------------------------------
;Dust p/ Frente - Acabando
;-----------------------------------------------
[Statedef 5404]
type    = S
movetype= I
physics = N
juggle  = 1
poweradd = 0
anim = 704
ctrl = 0
sprpriority = 5

[State 5404, PosFreeze]
type = PosFreeze
trigger1 = time
time = -1

[State 5404, DestroySelf]
type = DestroySelf
trigger1 = Time = 0

;------------------------------------------------------------------------------------------------
;==========================================>Dust p/ Trás<========================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Dust p/ Trás - Helper GERAL
;------------------------------------------------------------------------------------------------
[Statedef 5405]
type = S
movetype = I
poweradd = 0
physics = N
juggle = 0
ctrl = 0
anim = 5405
sprpriority = 5

[State 5405, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 3
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 5405, CS]
type = ChangeState
trigger1 = Animtime = 0
ctrl = 1
value = 5406

;-----------------------------------------------
;Dust p/ Trás - Acabando
;-----------------------------------------------
[Statedef 5406]
type    = S
movetype= I
physics = N
juggle  = 1
poweradd = 0
anim = 704
ctrl = 0
sprpriority = 5

[State 5406, PosFreeze]
type = PosFreeze
trigger1 = time
time = -1

[State 5406, DestroySelf]
type = DestroySelf
trigger1 = Time = 0

;------------------------------------------------------------------------------------------------
; Override common states (use same number to override) :
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;==========================================>Statedef -3<=========================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Contra-Ataque de Combos - VarAdd
;------------------------------------------------------------------------------------------------
[Statedef -3]
[State -3, Contador de Hits]
type = VarAdd
;triggerall = Var(59) != 0 
triggerall = Time = 0
trigger1 = (StateNo = 5000) || (StateNo = 5010) || (StateNo = 5020) || (StateNo = 5070) || (StateNo = 5080)
v = 36
value = 1
ignorehitpause = 1
