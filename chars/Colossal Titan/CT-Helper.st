;---------------------------------------------------------------------------
;===========================================================================
;Definition of the Helper 助手(援助者)的定義
;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Explosion Fire Right
;爆裂火焰右
[Statedef 2201]
type = S
movetype = A
physics = N
anim = 12001
juggle = 3
poweradd = 0
sprpriority = 5

[State 2201, 1]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 2201, 2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 2201, 3]
type = PlaySnd
trigger1 = Time = 0
value = s50, 9

[State 2201, 4]
type = VarSet
trigger1 = Time = 0
v = 21
value = Parent,Var(21)-1

[State 2201, 5]
type = Helper
trigger1 = Time = 15
trigger1 = var(21) > 0
helpertype = normal
name = "Explosion Fire Right";爆裂火焰右
id = 2201
stateno = 2201
pos = Floor(ScreenPos X)+80,Floor(Pos Y)
postype = left
size.xscale = const(size.xscale) 
size.yscale = const(size.yscale)

[State 2201, 6 (Damage & Enemy DEF > 0)]
type = HitDef
triggerall = enemy,const(data.defence) > 0
trigger1 = Time = 0
attr = SCA, SP
damage = (root,fvar(10))*ceil(((enemy,const(data.defence)*0.01)*enemy,lifemax*0.040)),(root,fvar(10))*ceil(enemy,lifemax*0.005)
animtype = Hard
hitflag = MAFP
guardflag = MA
priority = ifelse(root,life >= lifemax/4,6,7), Hit
pausetime = 0,0
hitsound = -1
guardsound = -1
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 20
ground.hittime = 30
guard.slidetime = 22
guard.hittime = 32
ground.velocity = -11,-15
air.velocity = -9,-13
fall = 1
guard.dist = 580

[State 2201, 7 (Damage & Enemy DEF <= 0)]
type = HitDef
triggerall = enemy,const(data.defence) <= 0
trigger1 = Time = 0
attr = SCA, SP
damage = 40*root,fvar(10),5*root,fvar(10)
animtype = Hard
hitflag = MAFP
guardflag = MA
priority = ifelse(root,life >= lifemax/4,6,7), Hit
pausetime = 0,0
hitsound = -1
guardsound = -1
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 20
ground.hittime = 30
guard.slidetime = 22
guard.hittime = 32
ground.velocity = -11,-15
air.velocity = -9,-13
fall = 1
guard.dist = 580

[state 2201, 8 (Helper Disappear)]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Explosion Fire Left
;爆裂火焰左
[Statedef 2202]
type = S
movetype = A
physics = N
anim = 12002
juggle = 3
poweradd = 0
sprpriority = 5

[State 2202, 1]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 2202, 2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 2202, 3]
type = PlaySnd
trigger1 = Time = 0
value = s22,0

[State 2202, 4]
type = VarSet
trigger1 = Time = 0
v = 22
value = Parent,Var(22)-1

[State 2202, 5]
type = Helper
trigger1 = Time = 15
trigger1 = var(22) > 0
helpertype = normal
name = "Explosion Fire Left";爆裂火焰左
id = 2202
stateno = 2202
pos = Floor(ScreenPos x)-80,Floor(Pos Y)
postype = left
size.xscale = const(size.xscale) 
size.yscale = const(size.yscale)

[State 2202, 6 (Damage & Enemy DEF > 0)]
type = HitDef
triggerall = enemy,const(data.defence) > 0
trigger1 = Time = 0
attr = SCA, SP
damage = (root,fvar(10))*ceil(((enemy,const(data.defence)*0.01)*enemy,lifemax*0.040)),(root,fvar(10))*ceil(enemy,lifemax*0.005)
animtype = Hard
hitflag = MAFP
guardflag = MA
priority = ifelse(root,life >= lifemax/4,6,7), Hit
pausetime = 0,0
hitsound = -1
guardsound = -1
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 20
ground.hittime = 30
guard.slidetime = 22
guard.hittime = 32
ground.velocity = -11,-15
air.velocity = -9,-13
fall = 1
guard.dist = 580

[State 2202, 7 (Damage & Enemy DEF <= 0)]
type = HitDef
triggerall = enemy,const(data.defence) <= 0
trigger1 = Time = 0
attr = SCA, SP
damage = 40*root,fvar(10),5*root,fvar(10)
animtype = Hard
hitflag = MAFP
guardflag = MA
priority = ifelse(root,life >= lifemax/4,6,7), Hit
pausetime = 0,0
hitsound = -1
guardsound = -1
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 20
ground.hittime = 30
guard.slidetime = 22
guard.hittime = 32
ground.velocity = -11,-15
air.velocity = -9,-13
fall = 1
guard.dist = 580

[state 2202, 8 (Helper Disappear)]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Titan Puppet
;巨人玩偶
[Statedef 2510]
type = A
movetype = A
physics = N
juggle = 5
ctrl = 0
anim = 11500
poweradd = 0
sprpriority = 4

[State 2510, 1]
type = PlaySnd
trigger1 = Time = 0
value = s2510,0

[State 2510, 2]
type = VelSet
trigger1 = Time = 1
y = 20

[State 2510, 3]
type = Gravity
trigger1 = 1

[State 2510, 4]
type = NotHitBy
trigger1 = 1
value = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT

[State 2510, 5]
type = PlayerPush
trigger1 = 1
value = 0

[State 2510, 6]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
ignorehitpause = 1

[State 2510, 7 (Damage & Enemy DEF > 0)]
type = HitDef
triggerall = enemy,const(data.defence) > 0
trigger1 = Time = 0
attr = A, HP
animtype = Hard
damage = (root,fvar(10))*ceil(((enemy,const(data.defence)*0.01)*enemy,lifemax*0.090)),(root,fvar(10))*ceil(enemy,lifemax*0.012)
priority = 7, Dodge
hitflag = MAFP
guardflag = MA
hitsound = -1
guardsound = -1
sparkno = -1
guard.sparkno = -1
ground.type = high
ground.slidetime = 15
ground.hittime = 15
guard.slidetime = 30
guard.hittime = 30
ground.velocity = -1,25
guard.velocity = 2
air.velocity = -1,25
airguard.velocity = -2,20
fall = 1
air.fall = 1
p1sprpriority = 4
p2sprpriority = 2

[State 2510, 8 (Damage & Enemy DEF <= 0)]
type = HitDef
triggerall = enemy,const(data.defence) <= 0
trigger1 = Time = 0
attr = A, HP
animtype = Hard
damage = 90*root,fvar(10),12*root,fvar(10)
priority = 7, Dodge
hitflag = MAFP
guardflag = MA
hitsound = -1
guardsound = -1
sparkno = -1
guard.sparkno = -1
ground.type = high
ground.slidetime = 15
ground.hittime = 15
guard.slidetime = 30
guard.hittime = 30
ground.velocity = -1,25
guard.velocity = 2
air.velocity = -1,25
airguard.velocity = -2,20
fall = 1
air.fall = 1
p1sprpriority = 4
p2sprpriority = 2

[State 2510, 9]
type = Helper
trigger1 = movehit = 1
helpertype = normal
name = "Hit Spark Effect B";打擊火花特效B
pos = enemynear,const(size.head.pos.x)*const(size.xscale),(enemynear,const(size.head.pos.y)-50)*const(size.yscale)
postype = p2
facing = -facing
id = 13006
stateno = 13006
ownpal = 1
keyctrl = 0
size.xscale = root,const(size.xscale)*1.5
size.yscale = root,const(size.yscale)*1.5

[State 2510, 10]
type = Helper
trigger1 = moveguarded = 1
helpertype = normal
name = "Guard Spark Effect 4";防禦火花特效4
pos = enemynear,const(size.head.pos.x)*const(size.xscale),enemynear,const(size.head.pos.y)*const(size.yscale)
postype = p2
facing = -facing
id = 13014
stateno = 13014
ownpal = 1
keyctrl = 0
size.xscale = root,const(size.xscale)*1.5
size.yscale = root,const(size.yscale)*1.5

[State 2510, 11]
type = PosSet
trigger1 = Pos Y >= 0 && Vel Y > 0
y = 0

[State 2510, 12 (Next State)]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 2511

[State 2510, 13 (Helper End)]
type = DestroySelf
trigger1 = MoveType = H

;---------------------------------------------------------------------------
;Titan Puppet (Landing)
;巨人玩偶 (著陸)
[Statedef 2511]
type = S
movetype = I
physics = N
ctrl = 0
anim = 11501
sprpriority = 4

[State 2511, 1]
type = VelSet
trigger1 = Pos Y >= 0 && Vel Y > 0
x = 0
y = 0

[State 2511, 2]
type = PosSet
trigger1 = Pos Y >= 0 && Vel Y > 0
y = 0

[State 2511, 3]
type = NotHitBy
trigger1 = 1
value = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT

[State 2511, 4]
type = PlayerPush
trigger1 = 1
value = 0

[State 2511, 5]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
ignorehitpause = 1

[State 2511, 6]
type = EnvShake
trigger1 = Time = 1
time = 10
freq = 20
ampl = -3
ignorehitpause = 1

[State 2511, 7]
type = Explod
trigger1 = Time = 1
anim = 13015
postype = p1
pos = 0,-35*root,const(size.yscale)
facing = facing
scale = root,const(size.xscale)*1.5,root,const(size.yscale)*1.5
sprpriority = 3

[State 2511, 8 (Next State)]
type = ChangeState
trigger1 = AnimTime = 0
value = 2512

;---------------------------------------------------------------------------
;Titan Puppet (Disappearing)
;巨人玩偶 (消失)
[Statedef 2512]
type = S
movetype = I
physics = N
ctrl = 0
anim = 11502
sprpriority = 4

[State 2512, 1]
type = PosSet
trigger1 = 1
y = 0

[State 2512, 2]
type = NotHitBy
trigger1 = 1
value = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT

[State 2512, 3]
type = VarAdd
trigger1 = Time >= 1
v = 45
value = 25

[State 2512, 4]
type = PalFX
trigger1 = 256-var(45) > 0
time = 1
add = 0,0,0
mul = ceil(256-var(45)),ceil(256-var(45)),ceil(256-var(45))

[State 2512, 5]
type = PalFX
trigger1 = 256-var(45) <= 0
time = 1
add = 0,0,0
mul = 0,0,0

[State 2512, 6]
type = PlayerPush
trigger1 = 1
value = 0

[State 2512, 7]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
ignorehitpause = 1

[State 2512, 8 (Helper Disappear)]
type = DestroySelf
trigger1 = Time >= 10

;---------------------------------------------------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Titan Breath
;巨人吐息
[Statedef 3050]
type = A
movetype = A
physics = N
juggle = 5
ctrl = 0
anim = 13050
velset = 16,10
sprpriority = 5

[State 3050, 1]
type = VarRandom
trigger1 = Time = 0
v = 44
range = 10,20

[State 3050, 2]
type = PosAdd
trigger1 = Time = 0
y = var(44)

[State 3050, 3]
type = VelAdd
trigger1 = Time <= 20
x = 0.4
y = -0.5

[State 3050, 4 (Damage & Enemy DEF > 0)]
type = HitDef
triggerall = enemy,const(data.defence) > 0
trigger1 = GameTime%8 = 0
attr = A, HA
damage = (root,fvar(10))*ceil(((enemy,const(data.defence)*0.01)*enemy,lifemax*0.005)),(root,fvar(10))*ceil(enemy,lifemax*0.001)
animtype = Hard
hitflag = MAFP
guardflag = MA
priority = 7, Hit
pausetime = 0,0
hitsound = s3000,2
guardsound = s3000,2
sparkno = -1
guard.sparkno = -1
ground.type = high
ground.slidetime = 20
ground.hittime = 20
guard.slidetime = 21
guard.hittime = 21
ground.velocity = -5,0
air.velocity = -4,-1.5
palfx.time = 60
palfx.mul = 200,150,100
palfx.add = 250,100,0
palfx.sinadd = 250,100,0,8
numhits = 0
fall = 1
fall.recover = 0
guard.dist = 580

[State 3050, 5 (Damage & Enemy DEF <= 0)]
type = HitDef
triggerall = enemy,const(data.defence) <= 0
trigger1 = GameTime%8 = 0
attr = A, HA
damage = 5*root,fvar(10),1*root,fvar(10)
animtype = Hard
hitflag = MAFP
guardflag = MA
priority = 7, Hit
pausetime = 0,0
hitsound = s3000,2
guardsound = s3000,2
sparkno = -1
guard.sparkno = -1
ground.type = high
ground.slidetime = 20
ground.hittime = 20
guard.slidetime = 21
guard.hittime = 21
ground.velocity = -5,0
air.velocity = -4,-1.5
palfx.time = 60
palfx.mul = 200,150,100
palfx.add = 250,100,0
palfx.sinadd = 250,100,0,8
numhits = 0
fall = 1
fall.recover = 0
guard.dist = 580

[State 3050, 6]
type = Helper
trigger1 = movehit = 1
helpertype = normal
name = "Hit Spark Effect C";打擊火花特效C
pos = enemynear,const(size.mid.pos.x)*root,const(size.xscale),enemynear,const(size.mid.pos.y)*root,const(size.yscale) ;*1
postype = p2
facing = -facing
id = 13008
stateno = 13008
ownpal = 1
keyctrl = 0
size.xscale = root,const(size.xscale)*1.3 ;*1
size.yscale = root,const(size.yscale)*1.3 ;*1

[State 3050, 7]
type = AngleDraw
trigger1 = 1
scale = Time+50,Time+50

[State 3050, 8 (Helper Disappear)]
type = DestroySelf
trigger1 = Time >= 90

;*1 因為Statedef 3050在Statedef 3001中的
;   Const為const(size.xscale)/60 六十分之一
;   所以const(size.xscale)前面加上root,

;   前面加上root, 縮放比例對應將會是真實本體
;   而不是假親(偽本體Statedef 3001)

;---------------------------------------------------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Super Moves Spark Effect 1
;超必殺技火花特效1
[Statedef 3055]
type = A
movetype = I
physics = N
sprpriority = 5
anim = 13020
poweradd = 0

[State 3055, 1 (Helper End)]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Super Moves Spark Effect 2
;超必殺技火花特效2
[Statedef 3056]
type = A
movetype = I
physics = N
sprpriority = 5
anim = 13020
poweradd = 0

[State 3056, 1 (Helper End)]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Blood Effect (P2 Hit)
;嗔血特效 (P2受擊)
[Statedef 11000]
type = A
movetype = I
physics = N
sprpriority = 4
anim = 11000
poweradd = 0

[State 11000, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 11000, 2 (Helper End)]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Hit Spark Effect A1 (P2 Hit)
;打擊火花特效A1 (P2受擊)
[Statedef 13001]
type = A
movetype = I
physics = N
sprpriority = 5
anim = 13001
poweradd = 0

[State 13001, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 13001, 2 (Helper End)]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Hit Spark Effect A2 (P2 Hit)
;打擊火花特效A2 (P2受擊)
[Statedef 13002]
type = A
movetype = I
physics = N
sprpriority = 5
anim = 13001
poweradd = 0

[State 13002, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 13002, 2 (Helper End)]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Hit Spark Effect A3 (P2 Hit)
;打擊火花特效A3 (P2受擊)
[Statedef 13003]
type = A
movetype = I
physics = N
sprpriority = 5
anim = 13001
poweradd = 0

[State 13003, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 13003, 2 (Helper End)]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Hit Spark Effect B (P2 Hit)
;打擊火花特效B (P2受擊)
[Statedef 13006]
type = A
movetype = I
physics = N
sprpriority = 5
anim = 13005
poweradd = 0

[State 13006, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 13006, 2 (Helper End)]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Hit Spark Effect C (P2 Hit)
;打擊火花特效C (P2受擊)
[Statedef 13008]
type = A
movetype = I
physics = N
sprpriority = 5
anim = 13008
poweradd = 0

[State 13008, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 13008, 2 (Helper End)]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Guard Spark Effect 1 (P2 Hit)
;防禦火花特效1 (P2受擊)
[Statedef 13011]
type = A
movetype = I
physics = N
sprpriority = 5
anim = 13010
poweradd = 0

[State 13011, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 13011, 2 (Helper End)]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Guard Spark Effect 2 (P2 Hit)
;防禦火花特效2 (P2受擊)
[Statedef 13012]
type = A
movetype = I
physics = N
sprpriority = 5
anim = 13010
poweradd = 0

[State 13012, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 13012, 2 (Helper End)]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Guard Spark Effect 3 (P2 Hit)
;防禦火花特效3 (P2受擊)
[Statedef 13013]
type = A
movetype = I
physics = N
sprpriority = 5
anim = 13010
poweradd = 0

[State 13013, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 13013, 2 (Helper End)]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Guard Spark Effect 4 (P2 Hit)
;防禦火花特效4 (P2受擊)
[Statedef 13014]
type = A
movetype = I
physics = N
sprpriority = 5
anim = 13010
poweradd = 0

[State 13014, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 13014, 2 (Helper End)]
type = DestroySelf
trigger1 = AnimTime = 0
