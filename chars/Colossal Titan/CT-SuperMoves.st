;---------------------------------------------------------------------------
;===========================================================================
;Definition of the Syper Moves 超必殺技的定義
;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Explosion Attack (Parent)
;爆裂攻擊 (親)
[Statedef 2000]
type = S
movetype = A
physics = S
juggle = 0
ctrl = 0
anim = 9999
velset = 0,0

[State 2000, 1]
type = VarAdd
trigger1 = var(51) = 2000
trigger1 = Time = 0
v = 52
value = 1

[State 2000, 2]
type = VarSet
trigger1 = var(51) != 2000
trigger1 = Time = 0
v = 52
value = 0

[State 2000, 3]
type = VarSet
trigger1 = var(51) != 2000
trigger1 = Time = 0
v = 51
value = 2000

[State 2000, 4 (Fire Number)]
type = VarSet
trigger1 = Helper(32),StateNo = 2001
trigger1 = Helper(32),AnimElemTime(7) = 0
v = 21
value = 4

[State 2000, 5 (Fire Number)]
type = VarSet
trigger1 = Helper(32),StateNo = 2001
trigger1 = Helper(32),AnimElemTime(7) = 0
v = 22
value = 4

[State 2000, 6 (Right Fire)]
type = Helper
trigger1 = Helper(32),StateNo = 2001
trigger1 = Helper(32),AnimElemTime(7) = 0
helpertype = normal
name = "Explosion Fire Right";爆裂火焰右
id = 2201
stateno = 2201
pos = 300*const(size.xscale),0
postype = p1
size.xscale = const(size.xscale)*1.5
size.yscale = const(size.yscale)*1.5

[State 2000, 7 (Left Fire)]
type = Helper
trigger1 = Helper(32),StateNo = 2001
trigger1 = Helper(32),AnimElemTime(7) = 0
helpertype = normal
name = "Explosion Fire Left";爆裂火焰左
id = 2202
stateno = 2202
pos = 220*const(size.xscale),0
postype = p1
size.xscale = const(size.xscale)*1.5
size.yscale = const(size.yscale)*1.5

[State 2000, 8]
type = HitBy
trigger1 = 1
value =
time = 1

[State 2000, 9]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time = 1

[State 2000, 10 (Helper End)]
type = ChangeState
trigger1 = Helper(32),StateNo = 2001
trigger1 = Helper(32),AnimTime = 0
trigger2 = (Time > 2) && Helper(32),StateNo != 2001
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Explosion Attack (Hand-Arm)
;爆裂攻擊 (手臂)
[Statedef 2001]
type = S
movetype = A
physics = S
juggle = 3
ctrl = 0
anim = 2001
velset = 0,0
poweradd = 80
sprpriority = 5

[State 2001, 1]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 2001, 2]
type = SprPriority
trigger1 = AnimElem = 6, >= 0 && AnimElem = 11, < 0
value = 4

[State 2001, 3]
type = BindToParent
trigger1 = 1
time = 2
pos = 0,0

[State 2001, 4]
type = HitBy
trigger1 = 1
value =
time = 1

[State 2001, 5]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time = 1

[State 2001, 6]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = s4,0
channel = 4

[State 2001, 7 (Damage & Enemy DEF > 0)]
type = HitDef
triggerall = enemy,const(data.defence) > 0
trigger1 = AnimElem = 6
attr = SC, NA
damage = (root,fvar(10))*ceil(((enemy,const(data.defence)*0.01)*enemy,lifemax*0.065)),(root,fvar(10))*ceil(enemy,lifemax*0.013)
animtype = Hard
hitflag = MAFP
guardflag = MA
priority = 7, Hit
pausetime = 0,0
hitsound = s5,6
guardsound = -1
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 35
ground.hittime = 25
guard.slidetime = 35
guard.hittime = 25
ground.velocity = -15,-8
air.velocity = -4,8
guard.dist = 550

[State 2001, 8 (Damage & Enemy DEF <= 0)]
type = HitDef
triggerall = enemy,const(data.defence) <= 0
trigger1 = AnimElem = 6
attr = SC, NA
damage = 65*root,fvar(10),13*root,fvar(10)
animtype = Hard
hitflag = MAFP
guardflag = MA
priority = 7, Hit
pausetime = 0,0
hitsound = s5,6
guardsound = -1
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 35
ground.hittime = 25
guard.slidetime = 35
guard.hittime = 25
ground.velocity = -15,-8
air.velocity = -4,8
guard.dist = 550

[State 2001, 9]
type = Helper
trigger1 = movehit = 1
helpertype = normal
name = "Hit Spark Effect 3";打擊火花特效1
pos = enemynear,const(size.mid.pos.x)*const(size.xscale),enemynear,const(size.mid.pos.y)*const(size.yscale)
postype = p2
facing = -facing
id = 13003
stateno = 13003
ownpal = 1
keyctrl = 0
size.xscale = root,const(size.xscale)
size.yscale = root,const(size.yscale)

[State 2001, 10]
type = Helper
trigger1 = moveguarded = 1
helpertype = normal
name = "Guard Spark Effect 3";防禦火花特效3
pos = enemynear,const(size.mid.pos.x)*const(size.xscale),enemynear,const(size.mid.pos.y)*const(size.yscale)
postype = p2
facing = -facing
id = 13013
stateno = 13013
ownpal = 1
keyctrl = 0
size.xscale = root,const(size.xscale)*1.8
size.yscale = root,const(size.yscale)*1.8

[State 2001, 11]
type = HitOverride
trigger1 = 1
attr = SCA, NA, SA, HA, NP, SP, HP
stateno = 35

[State 2001, 12 (Helper End)]
type = ChangeState
trigger1 = AnimTime = 0
value = 32

[State 2001, 13]
type = StopSnd
trigger1 = Parent,StateNo = 5150
channel = 4

[State 2001, 14 (Helper Disappear)]
type = DestroySelf
trigger1 = Parent,StateNo = 5150

;---------------------------------------------------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Titan Puppet (Parent)
;巨人玩偶 (親)
[Statedef 2500]
type = S
movetype = A
physics = S
juggle = 0
ctrl = 0
anim = 9999
velset = 0,0
sprpriority = 4

[State 2500, 1]
type = VarAdd
trigger1 = var(51) = 2500
trigger1 = Time = 0
v = 52
value = 1

[State 2500, 2]
type = VarSet
trigger1 = var(51) != 2500
trigger1 = Time = 0
v = 52
value = 0

[State 2500, 3]
type = VarSet
trigger1 = var(51) != 2500
trigger1 = Time = 0
v = 51
value = 2500

[State 2500, 4]
type = Helper
triggerall = Time = 1
trigger1 = NumHelper(2510) = 0
name = "Titan Puppet";巨人玩偶
ownpal = 1
size.xscale = const(size.xscale)*0.5
size.yscale = const(size.yscale)*0.5
stateno = 2510
keyctrl = 0
id = 2510
pos = 0,-Ceil(ScreenPos Y)-10
facing = enemynear,facing;飛行道具永遠同一面落下
postype = p2;敵方角色為中心
ignorehitpause = 1

[State 2500, 5]
type = HitBy
trigger1 = 1
value =
time = 1

[State 2500, 6]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time = 1

[State 2500, 7 (Helper End)]
type = ChangeState
trigger1 = Helper(32),StateNo = 2501
trigger1 = Helper(32),AnimTime = 0
trigger2 = (Time > 2) && Helper(32),StateNo != 2501
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Titan Puppet (Hand-Arm)
;巨人玩偶 (身體手臂)
[Statedef 2501]
type = S
movetype = A
physics = S
juggle = 0
ctrl = 0
anim = 2501
velset = 0,0
poweradd = 100
sprpriority = 4

[State 2501, 1]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 2501, 2]
type = PlayerPush
trigger1 = 1
value = 1

[State 2501, 3]
type = BindToParent
trigger1 = 1
time = 2
pos = 0,0

[State 2501, 4]
type = HitBy
trigger1 = 1
value =
time = 1

[State 2501, 5]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time = 1

[State 2501, 6 (Helper End)]
type = ChangeState
trigger1 = AnimTime = 0
value = 32

[State 2501, 7 (Helper Disappear)]
type = DestroySelf
trigger1 = Parent,StateNo = 5150

;---------------------------------------------------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Titan Breath (Parent)
;巨人吐息 (親)
[Statedef 3000]
type = S
movetype = A
physics = S
juggle = 0
ctrl = 0
anim = 9999
velset = 0,0
sprpriority = 4

[State 3000, 1]
type = VarAdd
trigger1 = var(51) = 3000
trigger1 = Time = 0
v = 52
value = 1

[State 3000, 2]
type = VarSet
trigger1 = var(51) != 3000
trigger1 = Time = 0
v = 52
value = 0

[State 3000, 3]
type = VarSet
trigger1 = var(51) != 3000
trigger1 = Time = 0
v = 51
value = 3000

[State 3000, 4]
type = HitBy
trigger1 = 1
value =
time = 1

[State 3000, 5]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time = 1

[State 3000, 6 (Helper End)]
type = ChangeState
trigger1 = Helper(32),StateNo = 3001
trigger1 = Helper(32),AnimTime = 0
trigger2 = (Time > 2) && Helper(32),StateNo != 3001
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Titan Breath (Hand-Arm)
;巨人吐息 (身體手臂)
[Statedef 3001]
type = S
movetype = A
physics = S
juggle = 0
ctrl = 0
anim = 3001
velset = 0,0
sprpriority = 5

[State 3001, 1]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3001, 2]
type = BindToParent
trigger1 = 1
time = 2
pos = 0,0

[State 3001, 3]
type = HitBy
trigger1 = 1
value =
time = 1

[State 3001, 4]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time = 1

[State 3001, 5]
type = SuperPause
trigger1 = AnimElemTime(1) = 0 ;*2
time = 35
anim = -1
sound = s3000,0
darken = 0
poweradd = -1000

[State 3001, 6]
type = Helper
trigger1 = AnimElemTime(1) = 0
helpertype = normal
name = "Super Moves Spark Effect 1";超必殺技火花特效1
pos = 75*root,const(size.yscale),-210*root,const(size.yscale)
postype = p1
id = 3055
stateno = 3055
supermovetime = 35
pausemovetime = 35
ownpal = 1
keyctrl = 0
size.xscale = root,const(size.xscale)
size.yscale = root,const(size.yscale)

[State 3001, 7]
type = Helper
trigger1 = AnimElemTime(1) = 0
helpertype = normal
name = "Super Moves Spark Effect 2";超必殺技火花特效2
pos = 19*root,const(size.yscale),-222*root,const(size.yscale)
postype = p1
id = 3056
stateno = 3056
supermovetime = 35
pausemovetime = 35
ownpal = 1
keyctrl = 0
size.xscale = root,const(size.xscale)
size.yscale = root,const(size.yscale)

[State 3001, 8]
type = Helper
trigger1 = AnimElem = 1, >= 0 && AnimElem = 14, < 0
trigger1 = Time%5 = 1
helpertype = normal
name = "Titan Breath";巨人吐息
id = 3050
stateno = 3050
pos = 35*root,const(size.xscale),-135*root,const(size.yscale)
postype = p1
facing = 1
ownpal = 1
size.xscale = root,const(size.xscale)/60 ;*1
size.yscale = root,const(size.yscale)/60 ;*1

[State 3001, 9]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1 ;*2
value = s3000,1
channel = 5
loop = 1

[State 3001, 10]
type = StopSnd
trigger1 = AnimElemTime(13) = 10
trigger2 = Parent,StateNo = 5150 ;*3
channel = 5

[State 3001, 11 (Helper End)]
type = ChangeState
trigger1 = AnimTime = 0
value = 32

[State 3001, 12 (Helper Disappear)]
type = DestroySelf
trigger1 = Parent,StateNo = 5150

;*1 因為Statedef 3050在Statedef 3001中的
;   Const為const(size.xscale)/60 六十分之一
;   所以const(size.xscale)前面加上root,

;   前面加上root, 縮放比例對應將會是真實本體
;   而不是假親(偽本體Statedef 3001)

;*2 AnimElemTime(1) = 0 代表從一開始 (時間未流動 0tick到1tick之間的0tick)
;   AnimElemTime(1) = 1 代表從第一tick開始 (時間已流動 已經過0tick到1tick之間 從1tick開始)
;   請注意兩者是不同的tick計算 

;*3  要中止Helper發出的音效，可以設定跟DestroySelf相同的條件

