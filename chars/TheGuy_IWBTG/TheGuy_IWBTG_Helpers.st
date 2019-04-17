[Statedef 1010]
type = A
movetype= A
physics = N
anim = 1010
velset = 4+3*(!isHelper(1010)+isHelper(1012)),0
ctrl = 0

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State Home]
type = VelSet
triggerall = !time
trigger1 = root,var(49)
trigger1 = root,var(50)
x = 10*((P2Dist X)/(Abs(P2Dist X)+Abs(P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))
y = 10*((P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))/(Abs(P2Dist X)+Abs(P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))

[State Noize]
type = PlaySnd
trigger1 = !time
value = s2,3
channel = 2
volume = 128

[State DIEDIEDIE]
type = HitDef
trigger1 = !MoveContact
attr = A,SA
hitflag = MAF
guardflag = MF
priority = 4
sparkno=9741
guard.sparkno=9741
pausetime = 0,8
damage = 36,6
getpower = 0,0
hitsound = S1,2
guardsound = S3,3
ground.type = hard
ground.hittime = 8
air.hittime = 8
ground.velocity = -3,0
air.velocity = -3,-1
kill = 1
palfx.time = 20
palfx.add = 255,255,255
palfx.sinadd = -255,-255,-255,80

[State Boom]
type = ChangeAnim
triggerall = anim!=1402
trigger1 = MoveContact
value = 1402
[State STOP]
type = VelSet
trigger1 = anim=1402
x = 0
y = 0

[State Done]
type = DestroySelf
trigger1 = anim=1402
trigger1 = !animtime
trigger2 = frontedgedist < -40

[State IWentOffScreen]
type = DestroySelf
trigger1 = frontedgedist < -40
trigger2 = time >= 120
trigger3 = screenpos y != [-40,280]
trigger3 = pos y != [-280,40]
ignorehitpause = 1

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


[Statedef 1011]
type = A
movetype= A
physics = N
anim = 1011
velset = 7,0
sprpriority = 2
ctrl = 0

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State Home]
type = VelSet
triggerall = !time
trigger1 = root,var(49)
trigger1 = root,var(50)
x = 7*((P2Dist X)/(Abs(P2Dist X)+Abs(P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))
y = 7*((P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))/(Abs(P2Dist X)+Abs(P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))

[State Noize]
type = PlaySnd
trigger1 = !time
value = s2,9
channel = 2
volume = 128

[State DIEDIEDIE]
type = HitDef
trigger1 = !MoveContact
attr = A,HA
hitflag = MAFD
guardflag = MAF
priority = 4
sparkno = 3
guard.sparkno = 40
pausetime = 0,12
damage = 94,24
getpower = 0,0
hitsound = S1,2
guardsound = S1,3
ground.type = hard
ground.hittime = 20
air.hittime = 20
ground.slidetime = 12
ground.velocity = -12,0
air.velocity = -5,-2
kill = 1
palfx.time = 20
palfx.add = 255,255,255
palfx.sinadd = -255,-255,-255,80


[State Done]
type = DestroySelf
trigger1 = frontedgedist < -80
trigger2 = time >= 120
trigger3 = pos y != [-340,100]
trigger3 = screenpos y != [-100,340]
ignorehitpause = 1

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901




[Statedef 1020]
type = A
movetype= A
physics = N
anim = 1010
velset = 7,0
sprpriority = 2
ctrl = 0

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State FLOATY]
type = VarSet
trigger1 = !time
fvar(11) = ((P2Dist X)/(Abs(P2Dist X)+Abs(P2Dist Y+10+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))
[State FLOATY]
type = VarSet
trigger1 = !time
fvar(12) = ((P2Dist Y+10+(EnemyNear,Const(Size.Mid.Pos.Y)))/(Abs(P2Dist X)+Abs(P2Dist Y+10+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))

;1022
;1021
;1020
;1023
;1024

[State Spread]
type = VelSet
trigger1 = !time
x = 7*cos(pi*(!isHelper(1020)+(isHelper(1022)||isHelper(1024)))/8)
y = 7*sin(pi*(isHelper(1021)+2*isHelper(1022)-isHelper(1023)-2*isHelper(1024))/8)

[State Noize]
type = PlaySnd
triggerall = isHelper(1020)
trigger1 = !time
value = s2,9
channel = 2
volume = 128

[State DIEDIEDIE]
type = HitDef
trigger1 = !MoveContact
attr = A,HA
hitflag = MAFD
guardflag = MAF
priority = 4
sparkno = 3
guard.sparkno = 40
pausetime = 0,12
damage = 18,3
getpower = 0,0
hitsound = S1,2
guardsound = S1,3
ground.type = hard
ground.hittime = 20
air.hittime = 20
ground.slidetime = 12
ground.velocity = -12,0
air.velocity = -5,-2
kill = 1
palfx.time = 20
palfx.add = 255,255,255
palfx.sinadd = -255,-255,-255,80


[State Done]
type = DestroySelf
trigger1 = frontedgedist < -80

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;---------------------------------------------------------------------------
;SHOCKWAVE
;---------------------------------------------------------------------------
[Statedef 1110]
type = A
movetype = A
physics = N
anim = 1110+isHelper(1111)

[State Shake'N'Bake]
type = EnvShake
trigger1 = !time
time = 20
freq = 150
ampl = -5*(1+isHelper(1111))
[State Thump]
type = PlaySnd
trigger1 = !time
trigger2 = time=10
trigger2 = isHelper(1111)
value = s2,5-(!time*isHelper(1111))
channel = 3
abspan = 0

[State STUN]
type = HitDef
trigger1 = !time
trigger1 = !isHelper(1111)
attr = A,SA
damage = 0,0
animtype = Heavy
hitflag = MF
priority = 1,miss
pausetime = 0,40
sparkno = 9741
guard.sparkno = 9741
sparkxy = 0,0
hitsound = S1,2
guardsound = S1,2
ground.type = Low
ground.slidetime = 1
ground.hittime  = 1
ground.velocity = 0,0
airguard.velocity = 0,0
air.type = Low
air.velocity = 0,0
air.hittime = 1
kill = 0
fall = 1

[State DAMAGE]
type = HitDef
trigger1 = !time
trigger1 = isHelper(1111)
attr = A,HA
damage = 28,0
animtype = Heavy
hitflag = MF
priority = 1,miss
pausetime = 0,80
sparkno = 9741
guard.sparkno = 9741
sparkxy = 0,0
hitsound = S1,2
guardsound = S1,2
ground.type = Low
ground.slidetime = 1
ground.hittime  = 1
ground.velocity = 0,0
airguard.velocity = 0,0
air.type = Low
air.velocity = 0,0
air.hittime = 1
fall = 1

[State Dirt]
type = Explod
triggerall = isHelper(1111)
trigger1 = !(time%2)
anim = 3203
id = 3203
pos = time*30,floor(-(pos y))
facing = -1
sprpriority = 3
ownpal = 1
scale = .5,.5
[State Dirt]
type = Explod
triggerall = isHelper(1111)
trigger1 = !(time%2)
anim = 3203
id = 3203
pos = time*-30,floor(-(pos y))
facing = 1
sprpriority = 3
ownpal = 1
scale = .5,.5

[State NOTOUCHY]
Type = NotHitBy
Trigger1 = 1
Value = SAC
Time = 1

[State DONE]
type = DestroySelf
trigger1 = !animtime
ignorehitpause = 1

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;-------------------------------------------------------------------------------
;
[Statedef 1310]
type = A
movetype= A
physics = N
anim = 1400
velset = 1+!isHelper(1310)+isHelper(1312),-8
ctrl = 0

[State Whoosh]
type = PlaySnd
trigger1 = !time
value = S0,1
channel = 1

[State FALL]
type = VelAdd
trigger1 = time
y = .4

[State LIKEARECORDBABY]
type = AngleDraw
trigger1 = 1
value = -time*20

[State DIEDIEDIE]
type = HitDef
trigger1 = !MoveContact
attr = A,SA
hitflag = MAF
guardflag = MF
priority = 4
sparkno=9741
guard.sparkno=9741
pausetime = 0,8
damage = 36,6
getpower = 0,0
hitsound = S3,3
guardsound = S3,3
ground.type = hard
ground.hittime = 8
air.hittime = 8
ground.velocity = -3,0
air.velocity = -3,-1
kill = 1
palfx.time = 20
palfx.add = 255,255,255
palfx.sinadd = -255,-255,-255,80

[State DONE]
type = ChangeState
trigger1 = pos y >= 0
trigger2 = movecontact
value = 1311
ignorehitpause = 1

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;Boom
[Statedef 1311]
type = A
movetype= A
physics = N
anim = 1402
velset = 0,0
ctrl = 0

[State FLOORIT]
type = PosSet
trigger1 = pos y > 0
y = 0

[State CRASH]
type = PlaySnd
trigger1 = !time
value = s2,10
channel = 3

[State Fire]
type = Helper
triggerall = !(pos y)
trigger1 = !time
helpertype = normal
name = "Fire"
ID = 1322
stateno = 1312
pos = 0,0
facing = 1
ownpal = 1

[State Fires]
type = Helper
triggerall = pos y
trigger1 = !time
name = "Fireballz"
ID = 1320
StateNo = 1320
pos = 0,0
facing = 1
postype = p1
ownpal = 1
[State Fires]
type = Helper
triggerall = pos y
trigger1 = !time
name = "Fireballz"
ID = 1321
StateNo = 1320
pos = 0,0
facing = 1
postype = p1
ownpal = 1
[State Fires]
type = Helper
triggerall = pos y
trigger1 = !time
name = "Fireballz"
ID = 1320
StateNo = 1320
pos = 0,0
facing = -1
postype = p1
ownpal = 1
[State Fires]
type = Helper
triggerall = pos y
trigger1 = !time
name = "Fireballz"
ID = 1321
StateNo = 1320
pos = 0,0
facing = -1
postype = p1
ownpal = 1

[State DONE]
type = DestroySelf
trigger1 = !animtime
ignorehitpause = 1

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


[Statedef 1312]
movetype = A
physics = N
anim = 1401+20*(prevstateno=21011)
sprpriority = 1
ctrl = 0
velset = 0,0

[State FIYA]
type = PlaySnd
trigger1 = !time
value = s2,6
channel = 2

[State STICKY]
type = PosSet
trigger1 = !time
y = 0

[State Fire]
type = Helper
triggerall = (root,var(50))*(root,var(59))
triggerall = !(parent,isHelper(1322))
triggerall = !isHelper(21010)
triggerall = !isHelper(21011)
triggerall = !isHelper(21012)
trigger1 = !time
helpertype = normal
name = "Fire"
ID = 1322
stateno = 1312
pos = -80,0
facing = 1
ownpal = 1
[State Fire]
type = Helper
triggerall = (root,var(50))*(root,var(59))
triggerall = !(parent,isHelper(1322))
triggerall = !isHelper(21010)
triggerall = !isHelper(21011)
triggerall = !isHelper(21012)
trigger1 = !time
helpertype = normal
name = "Fire"
ID = 1322
stateno = 1312
pos = 80,0
facing = 1
ownpal = 1

[State BOOM]
type = HitDef
trigger1 = !MoveContact
attr = A,SA
hitflag = MAFD
guardflag = LF
damage = 20+14*(prevstateno=21011),0
animtype = light
priority = 2,miss
damage = 0,0
pausetime = 0,8
sparkno = s9741
guard.sparkno = s9741
sparkxy = 0,0
hitsound = S2,7
guardsound = S2,7
ground.velocity = -2*(P2Dist X/abs(P2Dist X + .0000001))*(P2Dist X != [-10,10]),-1*(1+(P2Dist X = [-10,10]))
air.velocity = -2*(P2Dist X/abs(P2Dist X + .0000001))*(P2Dist X != [-10,10]),-1*(1+(P2Dist X = [-10,10]))
fall = 1
fall.recover = 1
guard.dist = 0
[State lolhitreset]
type = MoveHitReset
trigger1 = movecontact>=30

[State Done]
type = DestroySelf
trigger1 = !animtime

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;-=Grenade Stuff=-
[Statedef 1320]
type = A
ctrl = 0
physics = N
movetype = A
anim = 1410
velset = (1+!isHelper(1321)),-5-isHelper(1321)
sprpriority = 2

[State FireDoesn'tHaveShadows]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State Fall]
type = VelAdd
trigger1 = time
y = .5

[State Disappear]
type = ChangeState
trigger1 = MoveContact
trigger2 = pos y >= 0
value = 1321

[State DamageAndStuff]
type = HitDef
trigger1 = time>=20
attr = A,NP
damage = 4,0
animtype = light
hitflag = MAF
guardflag = MA
priority = 1,Miss
pausetime = 0,1
hitsound = S1,0
guardsound = S1,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0, -50
ground.type = high
air.type = high
ground.slidetime = 1
ground.hittime = 1
air.hittime = 1
ground.velocity = -.5,0
air.velocity = -.5,-.5
airguard.velocity = -.5,-.25
fall.recover = 1
getpower = 0,0
persistent = 0

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;-All-purpose Die
[Statedef 1321]
type = A
ctrl = 0
physics = N
anim = 1411
velset = 0,0
sprpriority = 2

[State SmokeForRegularFire]
type = Explod
triggerall = isHelper(1320)+isHelper(1321)
trigger1 = !time
anim = 1412
ID = 1412
pos = 0,0
postype = p1
bindtime = 1
facing = 1
accel = 0,-.0875
ownpal = 1
sprpriority = 3

[State FireDoesn'tHaveShadows]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State SHOOT]
type = PlaySnd
triggerall = !(isHelper(1320)+isHelper(1321))
trigger1 = !time
value = s2,10
channel = 1

[State DestroySelf]
type = DestroySelf
trigger1 = !animtime
ignorehitpause = 1

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;-------------------------------------------------------------------------------
;Fire Trail (After image by P.o.t.S.)
[Statedef 1511]
physics = N
velset = 0,0
anim = 9741
sprpriority=-2

[State NOSHADOWFORYOU]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State NoTouchy]
type=nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State AnimVar]
type = varset
trigger1 = !time
var(1) = parent,var(31)
[State 1511, animvar]
type = varset
trigger1 = !time
var(2) = parent,var(32)

[State YELLOW]
type = PalFX
trigger1 = 1
time = 1
add = 255,255-(17*time),0
mul = 255,255-(17*time),0

[State 1511, anim]
type = changeanim
trigger1 = 1
value = var(1)
elem = var(2)

[State 1511, fadeout]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(255-17*time),ceil(17*time)
[State 1511, end]
type = destroyself
trigger1 = time>=15

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;=====Fruit=====
[Statedef 3000]
type = A
movetype = A
physics = N
Ctrl = 0
Anim = 3000
poweradd= -125
velset  = 10*isHelper(3002),(10-20*isHelper(3001))*!isHelper(3002)
sprpriority = 3

[State AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State FALL]
type = PlaySnd
trigger1 = !time
value = S2,0
volume = 128

[State DIIIIEEEEEE]
type = HitDef
trigger1 = !MoveContact
attr = A,SA
hitflag = MAF
guardflag = MAF
affectteam = E
animtype = heavy
air.animtype = Heavy
priority = 2,miss
damage = 60,20
sparkno = 10
hitsound = S2,1
guardsound = S1,3
ground.type = High
ground.hittime = 20
air.hittime = 20
ground.velocity = 0,0
pausetime = 0,1
air.velocity = 0,-2
sprpriority = 1
kill = 1
numhits = 1
getpower  = 0,0
givepower = 20,20
palfx.time = 20
palfx.add = 255,0,0
palfx.sinadd = -255,0,0,80

[State Blood]
type = null;Helper
trigger1 = MoveContact
id = 4001+(random%5)
name = "Blood"
sprpriority = -2
pos = -7,-13
postype = p1
stateno = 4001
helpertype = normal
pausemovetime = 0
keyctrl = 0
ownpal = 1
persistent = 5

[State Disappear]
type = DestroySelf
trigger1 = isHelper(3000)
trigger1 = Pos Y > 120
trigger2 = isHelper(3001)
trigger2 = Pos Y < -320
trigger3 = isHelper(3002)
trigger3 = FrontEdgeDist < -120

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;=====Spike=====
[StateDef 3100]
type = A
movetype = A
physics = N
Ctrl = 0
Anim = 3100+!isHelper(3100)+isHelper(3102)
poweradd= -250
velset  = 10*isHelper(3102),(10-20*isHelper(3101))*!isHelper(3102)
sprpriority = 3

[State AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State FALL]
type = PlaySnd
trigger1 = !time
value = S2,0
volume = 128

[State DIIIIEEEEEE]
type = HitDef
trigger1 = !MoveContact
attr = A,SA
hitflag = MAF
guardflag = MAF
affectteam = E
animtype = heavy
air.animtype = Heavy
priority = 2,miss
damage = 90,30
sparkno = 10
hitsound = S2,1
guardsound = S1,3
ground.type = High
ground.hittime = 20
air.hittime = 20
ground.velocity = 0,0
pausetime = 0,1
air.velocity = 0,-2
sprpriority = 1
kill = 1
numhits = 1
getpower  = 0,0
givepower = 20,20
palfx.time = 20
palfx.add = 255,0,0
palfx.sinadd = -255,0,0,80

[State Blood]
type = null;Helper
trigger1 = MoveContact
id = 4001+(random%5)
name = "Blood"
sprpriority = -2
pos = -7,-13
postype = p1
stateno = 4001
helpertype = normal
pausemovetime = 0
keyctrl = 0
ownpal = 1
persistent = 5

[State Disappear]
type = DestroySelf
trigger1 = isHelper(3100)
trigger1 = Pos Y > 120
trigger2 = isHelper(3101)
trigger2 = Pos Y < -320
trigger3 = isHelper(3102)
trigger3 = FrontEdgeDist < -120

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;=====Moon=====
[StateDef 3200]
type    = A
movetype= A
physics = N
Ctrl    = 0
Anim    = 3200
velset  = 0,12
poweradd= -1500
sprpriority = 3
guardflag = M

[State BounceVariable]
type = VarSet
trigger1 = !time
fv = 2
value = vel y / 4

[State SPIN]
type = angledraw
trigger1 = 1
value = time*-60

[State AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State FALL]
type = PlaySnd
trigger1 = !time
value = S2,0
volume = 128

[State FALLFASTER]
type = VelAdd
triggerall = fvar(2) > 0
trigger1 = Pos Y < -57
y = 0.2

[State IHITTHEFLOOR]
type = VarSet
triggerall = Vel Y > 0
trigger1 = Pos Y > -57
v = 2
value = 1

[State IHITTHEFLOOR]
type = VarAdd
triggerall = Vel Y > 0
trigger1 = Pos Y > -57
fv = 2
value = -0.5

[State LAND]
type = PlaySnd
trigger1 = pos Y > -57
trigger1 = Vel Y > 0
value = S2,2
volume = 128

[State VelSet]
type = VelSet
triggerall = Vel Y > 0
trigger1 = Pos Y > -57
y = ifelse(fvar(2) <= 0, 0, -fvar(2))

[State THEGROUND]
type = PosSet
trigger1 = Pos Y > -57
y = -57

[State VelAdd]
type = VelAdd
triggerall = !(time%6)
triggerall = Vel X < 5
trigger1 = var(2)
x = 0.2

[State DIIIIEEEEEE]
type = HitDef
trigger1 = !(time%30)
attr = A,NA
hitflag = MAFD
guardflag = MAF
affectteam = E
animtype = back
air.animtype = DiagUp
fall.animtype = Heavy
priority = 3,hit
damage = 50,10
sparkno = 3
hitsound = S2,2
guardsound = S1,3
ground.type = High
ground.hittime = 20
pausetime = 0,1
air.hittime = 20
ground.velocity = -7,-5
air.velocity = -7,-5
sprpriority = 1
kill = 1
numhits = 1
getpower  = 0,0
givepower = 10,10

[State Disappear]
type = DestroySelf
trigger1 = FrontEdgeDist < -120
trigger2 = Pos Y > 200

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;===============================FRUUUUUIIIIT====================================
[Statedef 6000]
anim = 9741
physics = N
velset = 8,0
poweradd = -2000

[State NOISE]
type = PlaySnd
triggerall = time<180
trigger1 = !(time%48)
value = s3,2
channel = 5-!(time%96)
abspan = 0

[State STICKY]
type = BindToRoot
trigger1 = 1
time = -1

;[State PUSHForward]
;type = helper
;trigger1 = !numhelper(6003)
;stateno = 6003
;ID = 6003
;name = "PushEmForward"
;pos = 0,0
;postype = back
;facing = 1
;ownpal = 1
;size.ground.back = 0
;size.ground.front = 0
;size.height = 9999
;size.head.pos = 0,-9999

[State PUUUSH]
type = ParentVarSet
trigger1 = !time
trigger2 = time>=180
var(11) = !time

[State WIND]
type = Explod
triggerall = time<180
trigger1 = !(time%10)
anim = 3001
id = 3001
postype = back
facing = 1
vel = 1,1
accel = .875,0
pos = -10,(random%22)*10
sprpriority = 5
bindtime = 1
removetime = 60
ownpal = 1
scale = 1,1
trans = add

[State FRUIT]
type = Helper
triggerall = time<180
trigger1 = !(time%10)
helpertype = normal
name = "Fruit"
ID = 3000
stateno = 6001
pos = ((time*12)%320)-30,-360
postype = back
facing = 1
ownpal = 1

[State Shake'N'Bake]
type = EnvShake
trigger1 = !(time%5)
time = 5
freq = 180
ampl = -2

[State GONE]
type = DestroySelf
trigger1 = time>=180

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;=====The Fruit=====
[Statedef 6001]
type = A
movetype = A
physics = N
Ctrl = 0
Anim = 3000
velset = 2*(10.0/14.0),10
sprpriority = 3

[State AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State FALL]
type = PlaySnd
trigger1 = !time
value = S2,0
volume = 128

[State DIIIIEEEEEE]
type = HitDef
trigger1 = !MoveContact
attr = A,HA
hitflag = MAF
guardflag = MAF
affectteam = E
animtype = heavy
air.animtype = Heavy
priority = 2,miss
damage = 60,20
sparkno = 10
hitsound = S2,1
guardsound = S1,3
ground.type = High
ground.hittime = 20
air.hittime = 20
ground.velocity = 0,0
pausetime = 0,1
air.velocity = 0,-2
sprpriority = 1
kill = 1
numhits = 1
getpower  = 0,0
givepower = 20,20
palfx.time = 20
palfx.add = 255,0,0
palfx.sinadd = -255,0,0,80

[State Sticky]
type = PosSet
trigger1 = pos y > -11
y = -11
[State Boom]
type = ChangeState
trigger1 = pos y = -11
trigger2 = MoveContact
value = 6002

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


[Statedef 6002]
movetype = I
anim = 3002
velset = 0,0

[State Boom]
type = PlaySnd
trigger1 = !time
value = s3,3
channel = 4

[State Death]
type = DestroySelf
trigger1 = !animtime

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;========================Pushy (Mecha-Birdo)==========================
[Statedef 6003]
Type = A
Physics = N
Anim = 3003

[State IAMNOTATARGET]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State PUUUUUSH]
type = VelSet
trigger1 = 1
x = 2+6*(P2BodyDist X > 30)

[State PUUUUUSH]
type = PlayerPush
trigger1 = 1
value = 1

[State KDoneNow]
type = DestroySelf
trigger1 = !(root,var(11))
trigger2 = p2bodydist x < -30
trigger3 = frontedgedist < -30

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;===============================SPIIIIIIIKES====================================
[Statedef 6100]
anim = 9741
physics = N
velset = 8,0
poweradd = -2500
sprpriority = -2

[State noize]
type = PlaySnd
trigger1 = !time
value = s3,4

[State SPIKE]
type = Helper
triggerall = (time<=40)||isHelper(3101)
trigger1 = !(time%4)
helpertype = normal
name = "Spine"
ID = 3100+10*(parent,isHelper)
stateno = 6101
pos = 0,0
postype = p1
facing = 1
ownpal = 1

[State GONE]
type = DestroySelf
trigger1 = time>=90
trigger1 = !isHelper(3101)
trigger2 = frontedgedist < -16
trigger2 = isHelper(3101)

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;The Spine
[StateDef 6101]
type = A
movetype = A
physics = N
Ctrl = 0
Anim = 3103
velset = 0,0
sprpriority = -1

[State BIGGER]
type = AngleDraw
trigger1 = 1
scale = 1,3

[State Dirt]
type=Explod
trigger1=!time
anim=3203
postype=p1
pos=0,3
ownpal=1
sprpriority=2
scale=.5,.5

[State DIIIIEEEEEE]
type = HitDef
trigger1 = !MoveContact
attr = A,HA
hitflag = MAF
guardflag = L
animtype = heavy
air.animtype = Heavy
priority = 2,miss
damage = 90-30*isHelper(3110),30-20*isHelper(3110)
pausetime = 0,12
sparkno = 10
guard.sparkno = 40
sparkxy = 0,-30
hitsound = S3,5
guardsound = S3,5
ground.type = High
ground.hittime = 20
air.hittime = 20
ground.velocity = -2,-.01
air.velocity = -2,-.01
sprpriority = 1
kill = 1
numhits = 1
getpower  = 0,0
givepower = 20,20
palfx.time = 20
palfx.add = 255,0,0
palfx.sinadd = -255,0,0,80

[State Disappear]
type = DestroySelf
trigger1 = !animtime

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;===============================MOOOOOOOOOON====================================
[Statedef 6200]
movetype = A
velset = 0,0
anim = 9741
poweradd = -3000

[State NOTAGAIN]
type = VarSet
trigger1 = !time
var(0) = (prevstateno=6201)

[State STICKY]
type = PosSet
triggerall = numenemy
trigger1 = !time;numexplod(3202)
x = (enemynear,pos x)+(enemynear,const(size.mid.pos.x))
y = (enemynear,pos y)+(enemynear,const(size.mid.pos.y))
[State STICKY]
type = PosSet
triggerall = numenemy
trigger1 = numexplod(3202)
x = (enemynear,pos x)+(enemynear,const(size.mid.pos.x))

[State TARGET]
type=Explod
trigger1=!time
id=3202
anim=3202
postype=p2
pos=0,(enemynear,const(size.mid.pos.y))
ownpal=1
bindtime = -1
ontop=1
scale=2,2
sprpriority=5

[State MOVEIT]
type = PosSet
trigger1 = time=1
y = -2400
[State WARNING]
type = PlaySnd
trigger1 = !time
value = s3,6
[State FALL]
type = PlaySnd
trigger1 = !numexplod(3202)
value = s2,0
persistent = 0

[State FLASHY]
type = BGPalFX
trigger1 = numexplod(3202)
time = 1
mul = 128,128,128

[State FALL]
type = ChangeAnim
triggerall = anim=9741
trigger1 = time
value = 3201

[State FALL]
type = veladd
triggerall = vel y >= 0
trigger1 = time
y = const(movement.yaccel)+10*(time=1)

[State SPIN]
type = AngleSet
trigger1 = 1
value = random%360
[State SPINDANGIT]
type = AngleDraw
trigger1 = 1

[State DIIIIEEEEEE]
type = HitDef
trigger1 = !movecontact
attr = A,SA
hitflag = MAF
animtype = back
air.animtype = DiagUp
fall.animtype = Heavy
priority = 7,Hit
damage = 400,400
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
pausetime = 0,1
hitsound = S2,2
guardsound = S2,2
ground.type = High
ground.hittime = 20
air.hittime = 20
ground.velocity = -5,10
air.velocity = -5,10
sprpriority = 1
kill = 1
fall = 1
fall.recover = 0
numhits = 1
getpower  = 0,0
givepower = 500,500
guard.dist = 0

[State PosSet]
type = PosSet
triggerall = time
trigger1 = pos y >= -110
y = -110
[State DONE]
type = ChangeState
triggerall = time
trigger1 = pos y >= -110
value = 6201

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;RISE
[Statedef 6201]
movetype = I
velset = 0,-20

[State DIRT]
type = Helper
trigger1 = !time
helpertype = normal
name = "DIRT"
ID = 6202
stateno = 6202
pos = 0,floor(-(pos y))
postype = p1
facing = 1
ownpal = 1

[State SPIN]
type = AngleSet
trigger1 = 1
value = random%360
[State SPINDANGIT]
type = AngleDraw
trigger1 = 1

[State AGAIN]
type = ChangeState
triggerall = !var(0)
triggerall = roundstate<3
triggerall = parent,stateno!=[20003,20005]
triggerall = (parent,isHelper)
trigger1 = time>=100
value = 6200

[State DONE]
type = DestroySelf
triggerall = var(0)||(roundstate>2)||(parent,stateno=[20003,20005])||!(parent,isHelper)
trigger1 = time>=100

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;---------------------------------------------------------------------------
;DIRT
;---------------------------------------------------------------------------
[Statedef 6202]
physics = N
anim = 3203
sprpriority = 2

[State Shake'N'Bake]
type = EnvShake
trigger1 = !time
time = 40
freq = 150
ampl = -15
[State SCALEZ]
type = AngleDraw
trigger1 = 1
scale = 2,2
[State Thump]
type = PlaySnd
trigger1 = !time
value = s3,7

[State NOTOUCHY]
Type = NotHitBy
Trigger1 = 1
Value = SAC
Time = 1

[State DONE]
type = DestroySelf
trigger1 = !animtime
ignorehitpause = 1

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901




;-------------------------------------------------------------------------------
; INTRO DIALOGUE TEXT
[Statedef 7000]
anim = 9741

[State REMOVESTUFF]
type = RemoveExplod
triggerall = (root,time)=1
trigger1 = numexplod(9000)
ID = 9000
[State REMOVESTUFF]
type = RemoveExplod
triggerall = (root,time)=1
trigger1 = numexplod(7000)
ID = 7000
[State REMOVESTUFF]
type = RemoveExplod
triggerall = (root,time)=1
trigger1 = numexplod(7010)
ID = 7010

[State Background]
type = Explod
triggerall = root,var(7)<=11
triggerall = (root,stateno)
trigger1 = !numexplod(7000)
anim = 9010
ID = 7000
pos = 160,0
postype = left
facing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 4
ontop = 1

[State Dialogue]
type = Explod
triggerall = root,var(7)<=11
triggerall = (root,stateno)
trigger1 = !numexplod(7010)
anim = 9100+(root,var(7)-1)
ID = 7010
pos = 190,36
postype = Left
facing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 5
ontop = 1

[State Portrait]
type = Explod
triggerall = root,var(7)<=11
triggerall = (root,stateno)
trigger1 = !numexplod(9000)
anim = 9000+((root,var(7))%2)
ID = 9000
pos = 41,1
postype = Left
facing = 1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 5
ontop = 1

[State destroyself]
type = DestroySelf
trigger1 = !(root,stateno)

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901





;===============================Hyper Helper====================================
[Statedef 8000]
type = A
physics = N
anim = 9741
velset = 0,0

[State StayWithTheGuy]
type = BindToRoot
trigger1 = 1
time = 1

[State PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3,0

[State SuperPause]
type = SuperPause
trigger1 = !time
pos = 0,0
anim = 9741
sound = S3,1
poweradd = 0
time = 30

[State Explod]
type = Explod
trigger1 = !time
anim = 8000+(root,var(10))*isHelper(8000)
id = 8000
postype = back
pos = 0,0
sprpriority = 5
bindtime = -1
removetime = 30
supermovetime = 30
ownpal = 1
ontop = 1
scale = 0.375,0.375
removeongethit = 1

[State destroyself]
type = destroyself
trigger1 = !numexplod(8000)

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;---------------------------------------------------------------
;Charge Ring (from Mima by barai&harudi)
;---------------------------------------------------------------
[Statedef 8100]
Physics = N
Anim = 8100
SprPriority = 5

[State Charge]
type = PlaySnd
trigger1 = !time
value = S2,8
channel = 1

[State STUFF]
Type = Varset
Trigger1 = !Time
var(1)   = 0

[State STUFF]
Type = Varadd
Trigger1 = Time > 3
var(1) = 15

[State NoTouchy]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State NoShadowz]
Type = AssertSpecial
Trigger1 = 1
Flag = NoShadow

[State SEETHROUGH]
Type = Trans
Trigger1 = 1
Trans = AddAlpha
Alpha = 256-var(1),256

[State MAKEOURBURGERSBIGGER]
Type = AngleDraw
Trigger1 = 1
Scale = 0.2+(Time*0.05), 0.2+(Time*0.05)

[State OtherRing]
type = Explod
trigger1 = !Time
anim = 8101
pos = 0,0
Scale = 1,1
id = 8101
bindtime = -1
sprpriority = 3
trans = addalpha
alpha = 255,255

[State ISAIDBIGGER]
type = ModifyExplod
trigger1 = Numexplod(8101)
ID = 8101
scale = 0.2+(time*0.08),0.2+(time*0.08)
trans = addalpha
alpha = (255-(time*17))*(time<15),255

[State DIE]
Type = DestroySelf
trigger1 = !numexplod(8101)

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;---------------------------------------------------------------------------
[StateDef 9741]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9741, Safety]
type = SelfState
trigger1 = !IsHelper
value = 5050

[State 9741, UglyHack]
type = VarSet
trigger1 = !var(1)
var(2) = 2

[State 9741, PauseCheck]
type = VarSet
trigger1 = GameTime > Parent,var(57)
trigger2 = !(Parent,alive)
trigger3 = RoundState != 2
trigger4 = Parent,var(58)
trigger5 = var(3):=0
var(2) = (var(3):=1)+(var(4):=0)

[State 9741, Facing]
type = Turn
trigger1 = var(9):=(Facing != Parent,Facing)
trigger1 = !(var(4):=0)

[State 9741, DirTurnOnaI]
type = ParentVarSet
triggerall = !(var(3) || var(9))
trigger1 = Parent,command = "holdfwd"
trigger2 = Parent,command = "holdback"
trigger3 = Parent,command = "holdup"
trigger4 = Parent,command = "holddown"
trigger5 = !(var(4):=1)
var(58) = var(4)

[State 9741, DirTurnOffaI]
type = ParentVarSet
triggerall = !var(3)
triggerall = Parent,var(58)
trigger1 = command = "holdfwd"
trigger1 = Parent,command = "holdfwd"
trigger2 = command = "holdback"
trigger2 = Parent,command = "holdback"
trigger3 = command = "holdup"
trigger3 = Parent,command = "holdup"
trigger4 = command = "holddown"
trigger4 = Parent,command = "holddown"
var(58) = var(4):=0

[State 9741, ButtonTurnOnaI]
type = ParentVarSet
triggerall = !var(2)
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
var(58) = 1

[State 9741, ButtonTurnOffaI]
type = ParentVarSet
triggerall = !var(2)
trigger1 = command = "a"
trigger1 = Parent,command = "a"
trigger2 = command = "b"
trigger2 = Parent,command = "b"
trigger3 = command = "c"
trigger3 = Parent,command = "c"
trigger4 = command = "x"
trigger4 = Parent,command = "x"
trigger5 = command = "y"
trigger5 = Parent,command = "y"
trigger6 = command = "z"
trigger6 = Parent,command = "z"
trigger7 = command = "start"
trigger7 = Parent,command = "start"
var(58) = -1

[State 9741, UnPauseCheck]
type = VarSet
triggerall = var(2)
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
trigger8 = var(2) = 2
trigger8 = var(2):=0
var(2) = 2

[State 9741, Goodbye]
type = DestroySelf
triggerall = var(1):=1
trigger1 = Parent,var(58)
trigger2 = !(Parent,alive)
trigger3 = RoundState != 2


;------------------
; aI activation Helper State - Compatibly Partnered Version
;
; var(1) - First tick activation prevention
; var(2) - Used for pause/superpause and custom state check, basically.
; var(3) - (Super/)Pause & custom state-triggered dir detection disabler.
; var(4) - Hitpause check.
; var(5) - No button on previous tick.
; var(6) - any dir on this tick.
; var(7) - any button on this tick.
; var(8) - Matching partner button detected.
; var(9) - autoTurn bug fixer.
; var(10)- Buffered dir detection disabler.
; parent's var(57) - Parent's GameTime var, for pause and custom state check.
; parent's var(58) - Parent's primary aI variable.
;
; The code in this state is mostly simply copy/pasteable.
; But if you're using different indices for the parent's variables,
; or if you change your character's basic commands' names, you'll
; of course need to change the code in this state accordingly.

[StateDef 9742]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9742, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 5050

[State 9742, UglyHack]
type = VarSet
trigger1 = !var(1)
var(2) = var(3):=2

[State 9742, PauseCheck]
type = VarSet
trigger1 = GameTime > Parent,var(57)
trigger2 = !(Parent,alive)
trigger3 = RoundState != 2
trigger4 = Parent,var(58)
trigger5 = var(1)
trigger5 = var(3):=0
var(2) = var(3):=1

[State 9742, Facing]
type = Turn
trigger1 = var(9):=(Facing != Parent,Facing)

[State 9742, ParentDirCheck]
type = VarSet
trigger1 = Parent,command = "holdfwd"
trigger2 = Parent,command = "holdback"
trigger3 = Parent,command = "holdup"
trigger4 = Parent,command = "holddown"
trigger5 = var(6):=0
var(6) = 1

[State 9742, BufferCheck]
type = VarSet
trigger1 = var(3) || var(4) || var(10)
var(10) = var(6)

[State 9742, ParentButtonCheck]
type = VarSet
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
trigger8 = var(7):=0
var(7) = 1

[State 9742, SameButtonCheck]
type = VarSet
triggerall = var(7)
triggerall = !var(2)
triggerall = NumPartner
trigger1 = Parent,command = "a"
trigger1 = Partner,command = "a"
trigger2 = Parent,command = "b"
trigger2 = Partner,command = "b"
trigger3 = Parent,command = "c"
trigger3 = Partner,command = "c"
trigger4 = Parent,command = "x"
trigger4 = Partner,command = "x"
trigger5 = Parent,command = "y"
trigger5 = Partner,command = "y"
trigger6 = Parent,command = "z"
trigger6 = Partner,command = "z"
trigger7 = Parent,command = "start"
trigger7 = Partner,command = "start"
trigger8 = var(8):=0
var(8) = 1

[State 9742, DirTurnOnaI]
type = ParentVarSet
trigger1 = var(6)
trigger1 = !(var(9) || var(10))
var(58) = 1

[State 9742, DirTurnOffaI]
type = ParentVarSet
triggerall = var(6)
triggerall = !var(3)
triggerall = Parent,var(58)
trigger1 = command = "holdfwd"
trigger1 = Parent,command = "holdfwd"
trigger2 = command = "holdback"
trigger2 = Parent,command = "holdback"
trigger3 = command = "holdup"
trigger3 = Parent,command = "holdup"
trigger4 = command = "holddown"
trigger4 = Parent,command = "holddown"
var(58) = 0

[State 9742, ButtonTurnOnaI]
type = ParentVarSet
trigger1 = var(5) && var(7)
trigger1 = !(var(2) || var(8))
var(58) = 1

[State 9742, ButtonTurnOffaI]
type = ParentVarSet
triggerall = var(7)
triggerall = !(var(2) || var(8))
trigger1 = command = "a"
trigger1 = Parent,command = "a"
trigger2 = command = "b"
trigger2 = Parent,command = "b"
trigger3 = command = "c"
trigger3 = Parent,command = "c"
trigger4 = command = "x"
trigger4 = Parent,command = "x"
trigger5 = command = "y"
trigger5 = Parent,command = "y"
trigger6 = command = "z"
trigger6 = Parent,command = "z"
trigger7 = command = "start"
trigger7 = Parent,command = "start"
var(58) = -1

[State 9742, UnPauseCheck]
type = VarSet
triggerall = var(2)
triggerall = !var(4)
trigger1 = var(7)
trigger2 = var(2) = 2
trigger2 = var(2):=0
var(2) = 2

[State 9742, Goodbye]
type = DestroySelf
trigger1 = Parent,var(58)
trigger2 = !(Parent,alive)
trigger3 = RoundState != 2

[State 9742, HitPauseCheck]
type = VarSet
trigger1 = var(6) || var(7)
trigger2 = !(Parent,HitPauseTime)
var(4) = Parent,HitPauseTime

[State 9742, Delay]
type = VarSet
trigger1 = var(1):=1
var(5) = !var(7)


;------------------
; XOR Method's Helper State for Recent Custom State Check

[StateDef 9743]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9743, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 0

[State 9743, fiXOR]
type = Varadd
trigger1 = !(Parent,HitPauseTime)
trigger1 = var(1) > 0
var(1) = -1

[State 9743, fuXOR]
type = VarSet
trigger1 = Parent,var(57) < GameTime
var(1) = 31
IgnoreHitPause = 1

[State 9743, Goodbye]
type = DestroySelf
trigger1 = Parent,var(58) = 1
trigger2 = !(Parent,alive)
trigger3 = RoundState != 2


;-----Jukebox-----
;SHYADDAP
[Statedef 9999]
type=A
physics=N
movetype=I
anim=9741
sprpriority=-5
ctrl=0

[State NoMusicFailSafe]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State GOGOGOGOGO]
type = ChangeState
trigger1 = numhelper(11000)
trigger1 = helper(11000),stateno=11001
value = 10000

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

[Statedef 10000]
type=A
physics=N
movetype=I
anim=9741
sprpriority=-5
ctrl=0

[State PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S10000,0
channel = 9
volume = 128
abspan = 0

[State NoMusicFailSafe]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State SHUTUP]
type = StopSnd
trigger1 = matchover
trigger1 = (((enemynear,name="IWBTG")||(enemynear,name="IWBTGG"))&&(enemynear,authorname="fhqwhgads7"))
trigger2 = matchover
trigger2 = (((enemynear(enemy,teammode=simul),name="IWBTG")||(enemynear(enemy,teammode=simul),name="IWBTGG"))&&(enemynear(enemy,teammode=simul),authorname="fhqwhgads7"))
trigger3 = enemy,var(0)
trigger3 = enemy,name="IWBTG"
trigger3 = enemy,stateno=5050
channel = 9

[State GOGOGOGOGO]
type = ChangeState
triggerall = numhelper(20000)
trigger1 = (helper(20000),animelemtime(4))=15
value = 10001

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


[Statedef 10001]
type=A
physics=N
movetype=I
anim=9741
sprpriority=-5
ctrl=0

[State DARKER]
type = BGPalFX
triggerall = !(root,var(50))
trigger1 = numhelper(20000)
trigger1 = helper(20000),stateno=[20000,20003]
trigger2 = root,var(1)
time = 1
mul = 64,64,64

[State StayWithTheGuy]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0,0

[State NoMusicFailSafe]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State PlaySnd]
type = PlaySnd
trigger1 = !time
trigger2 = time=134
value = S10000,1+(time=134)
loop = (time=134)
channel = 9
volume = 128
abspan = 0

[State SHUTUP]
type = StopSnd
trigger1 = matchover
trigger1 = (((enemynear,name="IWBTG")||(enemynear,name="IWBTGG"))&&(enemynear,authorname="fhqwhgads7"))
trigger2 = matchover
trigger2 = (((enemynear(enemy,teammode=simul),name="IWBTG")||(enemynear(enemy,teammode=simul),name="IWBTGG"))&&(enemynear(enemy,teammode=simul),authorname="fhqwhgads7"))
trigger3 = enemy,var(0)
trigger3 = enemy,name="IWBTG"
trigger3 = enemy,stateno=5050
channel = 9

[State NEXT]
type = ChangeState
trigger1 = numhelper(30000)
value = 10002

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

[Statedef 10002]
type=A
physics=N
movetype=I
anim=9741
sprpriority=-5
ctrl=0

[State PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S10000,3
loop = 1
channel = 9
volume = 128
abspan = 0

[State SHUTUP]
type = StopSnd
trigger1 = matchover
trigger1 = (((enemynear,name="IWBTG")||(enemynear,name="IWBTGG"))&&(enemynear,authorname="fhqwhgads7"))
trigger2 = matchover
trigger2 = (((enemynear(enemy,teammode=simul),name="IWBTG")||(enemynear(enemy,teammode=simul),name="IWBTGG"))&&(enemynear(enemy,teammode=simul),authorname="fhqwhgads7"))
trigger3 = enemy,var(0)
trigger3 = enemy,name="IWBTG"
trigger3 = enemy,stateno=5050
channel = 9

[State StayWithTheGuy]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0,0

[State NoMusicFailSafe]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State NEXT]
type = ChangeState
triggerall = enemy,stateno=[180,184]
trigger1 = lose
value = 10003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


[Statedef 10003]
type=A
physics=N
movetype=I
anim=9741
sprpriority=-5
ctrl=0

[State PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S10000,4
channel = 9
volume = 128
abspan = 0

[State SHUTUP]
type = StopSnd
trigger1 = matchover*win
trigger1 = (((enemynear,name="IWBTG")||(enemynear,name="IWBTGG"))&&(enemynear,authorname="fhqwhgads7"))
trigger2 = matchover*win
trigger2 = (((enemynear(enemy,teammode=simul),name="IWBTG")||(enemynear(enemy,teammode=simul),name="IWBTGG"))&&(enemynear(enemy,teammode=simul),authorname="fhqwhgads7"))
trigger3 = enemy,var(0)
trigger3 = enemy,name="IWBTG"
trigger3 = enemy,stateno=5050
channel = 9

[State NOTYET]
type = AssertSpecial
trigger1 = time<600
flag = roundnotover

[State StayWithTheGuy]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0,0

[State NoMusicFailSafe]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;=====Amulet of Concentrated Awesome=====
[Statedef 11000]
type = A
movetype = A
physics = N
Ctrl = 0
Anim = 10000
velset  = 0,-5
sprpriority = 3

[State SPIN]
type = VelMul
trigger1 = frontedgedist < 1
x = -1
[State SPIN]
type = Turn
trigger1 = frontedgedist < 1

[State FALL]
type = VelAdd
trigger1 = var(0)<3
y = .2

[State FLOORIT]
type = PosSet
trigger1 = pos y > 0
y = 0

[State BOUNCE]
type = PlaySnd
triggerall = var(0)<3
trigger1 = pos y >= 0
value = s40,1
channel = 1

[State BOUNCE]
type = VelMul
triggerall = vel y
trigger1 = pos y >= 0
trigger1 = var(0):=(var(0)+1)
x = (var(0)<3)
y = -.25*(var(0)<3)

[State TheCheck]
type = HitDef
trigger1 = !MoveContact
attr = A,HT
hitflag = MFD
affectteam = E
priority = 9,hit
damage = -50000,-50000
sparkno = -1
guard.sparkno = -1
sparkxy = 16,-88
hitsound = S0,999;No
guardsound = S0,999;No
guard.dist = 0
p1stateno = 11001
p2stateno = 11100

[State NO]
type = StateTypeSet
triggerall = movetype=A
trigger1 = roundstate>2
movetype = I

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


[Statedef 11001]
ctrl = 0
velset = 0,0
anim = -1+9742*((prevstateno!=11000)||!((target,name="IWBTG")*(target,authorname="fhqwhgads7")))

[State BINDIT]
type = BindToTarget
triggerall = numtarget
trigger1 = target,name="IWBTG"
trigger1 = target,authorname="fhqwhgads7";prevstateno=11000
pos = 9,-12
time = 1

[State Whoosh]
type = PlaySnd
triggerall = !time
triggerall = (prevstateno=11000)
trigger1 = !((target,name="IWBTG")*(target,authorname="fhqwhgads7"))
value = s3,0
channel = 1

[State FLOOR]
type = PosSet
triggerall = !time
trigger1 = prevstateno!=11000
y = 0

[State Die]
type = DestroySelf
trigger1 = prevstateno!=11000;enemy,numhelper(44305)
trigger1 = time>=240
trigger2 = numhelper(20000)
trigger2 = helper(20000),stateno=20000

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;Custom State
[Statedef 11100]
ctrl = 0

[State FLOORIT]
type = posset
trigger1 = 1
y = 0

[State SETIT]
type = LifeSet
trigger1 = 1
value = lifemax

[State WIN]
type = SelfState
trigger1 = 1
value = 184*(name="IWBTG")*(authorname="fhqwhgads7")
ctrl = !((name="IWBTG")*(authorname="fhqwhgads7"))




;Check if opponent can be put into custom states
[StateDef 40000]
type=A
physics=N
movetype=I
anim=9741
sprpriority=-3
ctrl=0

[State Don'tStartYet]
type = AssertSpecial
trigger1 = 1
flag = intro

[State Next]
type = ChangeState
trigger1 = !(enemy,stateno)
trigger2 = (enemy,stateno = 5900)
trigger2 = time
value = 40001
ignorehitpause = 1

;-----Part 2------
[StateDef 40001]
type=A
physics=N
movetype=A
anim=30002
sprpriority=-3
ctrl=0

[State Don'tStartYet]
type = AssertSpecial
trigger1 = 1
flag = intro

[State TheCheck]
type = HitDef
trigger1 = !MoveContact
attr = A,HT
hitflag = MAFD
affectteam = E
priority = 9,hit
damage = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 16,-88
hitsound = S0,999;No
guardsound = S0,999;No
p2stateno = 41000

[State DoubleCheck]
type = TargetState
trigger1 = MoveContact
value = 41000

[State Next]
type = ChangeState
trigger1 = time
value = 40002
ignorehitpause = 1

;-----Part 3------
[StateDef 40002]
type=A
physics=N
movetype=I
anim=9741
sprpriority=-3
ctrl=0

[State Don'tStartYet]
type = AssertSpecial
trigger1 = 1
flag = intro

[State SUCCESS]
type = ParentVarSet
triggerall = enemy,stateno = 41000
trigger1 = time
var(15) = 1

[State Done]
type = DestroySelf
triggerall = time
trigger1 = (enemy,stateno=41000)
trigger2 = !(root,var(15))
trigger2 = time > 10
ignorehitpause = 1

;-----The Custom State------
[StateDef 41000]
type=S

[State End]
type = SelfState
trigger1 = time>5
value = 0
ctrl = (enemy,var(19))




;---------------------------------------------------------------------------
; Super armor by Winane
;---------------------------------------------------------------------------
[StateDef 44304]
ctrl = 0
physics = N
velset = 0
sprpriority = -5

[State 44304, Follow]
type = BindToRoot
trigger1 = 1
time = -1
facing = 1
pos = 0,0

[State 44304, Mimic]
type = Changeanim
trigger1 = SelfanimExist(Root,anim)
value = Root,anim
elem = Root,animElemNo(0)

[State 44304, STSS]
type = StateTypeSet
trigger1 = Root,StateType = S
StateType = S

[State 44304, STSC]
type = StateTypeSet
trigger1 = Root,StateType = C
StateType = C

[State 44304, STSa]
type = StateTypeSet
trigger1 = Root,StateType = A
StateType = a

[State 44304, STSL]
type = StateTypeSet
trigger1 = Root,StateType = L
StateType = L

[State 44304, MTSa]
type = StateTypeSet
trigger1 = Root,MoveType = A
MoveType = a

[State 44304, MTSI]
type = StateTypeSet
trigger1 = Root,MoveType = I
MoveType = I

[State 44304, MTSH]
type = StateTypeSet
trigger1 = Root,MoveType = H
MoveType = H

[State 44304, Hide]
type = assertSpecial
trigger1 = 1
flag = invisible
flag2 = NoShadow

[State 44304, NHB]
type = NotHitBy
trigger1 = 1
value = , AT
time = -1

[State 44304, HO]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 44305

;---I gotz hit---
[StateDef 44305]
ctrl = 0
physics = N
velset = 0
sprpriority = -5

[State 44305, PVS]
type = ParentVarSet
triggerall = root,stateno!=[500,502]
triggerall = !(enemy,name="IWBTG"&&enemy,var(10)=4)
trigger1 = (root,var(0)<2)
trigger1 = (root,stateno!=503)
trigger2 = (root,stateno=[5300,5399])
trigger3 = !(root,var(59))
var(20) = GetHitVar(damage)

[State 44305, PVS]
type = ParentVarSet
triggerall = root,stateno!=[500,502]
triggerall = enemy,name="IWBTG"
triggerall = enemy,var(10) = 4
trigger1 = (root,var(0)<2)
trigger1 = (root,stateno!=503)
trigger2 = (root,stateno=[5300,5399])
trigger3 = !(root,var(59))
var(20)=5;*(root,var(0)=1)

[State I'VEBEENSHOT]
type = ParentVarSet
triggerall = (root,var(0)>=2)
trigger1 = gethitvar(chainID) = 8391+(root,ID)
var(53) = 2

[State 44305, Revert]
type = ChangeState
trigger1 = 1
value = 44304


;---------------------------------------------------------------------------
; Can't touch this (daaaanana-*shot*)
;---------------------------------------------------------------------------
[Statedef 44306]
type = A
movetype = A
ctrl = 0
physics = N
anim = 44306
sprpriority = -5

[State Turn]
type = Turn
trigger1 = facing = -(root,facing)

[State Stay]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0,0
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State AntiKid]
type = HitDef
trigger1 = (root,var(50))
attr = A,NA
hitflag = MAF
affectteam = E
animtype = light
air.animtype = light
damage = 50,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
getpower = 0,0
hitsound = S1,2
guardsound = S1,2
ground.hittime = 20
ground.velocity = 0
airguard.velocity = 0,0
air.type = High
air.velocity = 0,0
air.hittime = 12
fall = 1
kill = 1
numhits = -1

[State Die]
type = DestroySelf
trigger1 = !(root,alive)
trigger2 = root,var(49)
trigger2 = root,life<=1
