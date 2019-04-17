;---------------------------------------------------------------------------
;===========================================================================
;Definition of the Basic Moves 基本技的定義
;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Punch Attack 1 (Parent)
;拳頭攻擊1 (親)
[Statedef 310]
type = S
movetype = A
physics = S
juggle = 0
ctrl = 0
anim = 9999
sprpriority = 4

[State 310, 1]
type = VarAdd
trigger1 = var(51) = 310
trigger1 = Time = 0
v = 52
value = 1

[State 310, 2]
type = VarSet
trigger1 = var(51) != 310
trigger1 = Time = 0
v = 52
value = 0

[State 310, 3]
type = VarSet
trigger1 = var(51) != 310
trigger1 = Time = 0
v = 51
value = 310

[State 310, 4]
type = HitBy
trigger1 = 1
value =
time = 1

[State 310, 5]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time = 1

[State 310, 6 (Helper End)]
type = ChangeState
trigger1 = Helper(32),StateNo = 311
trigger1 = Helper(32),AnimTime = 0
trigger2 = (Time > 2) && Helper(32),StateNo != 311
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Punch Attack 1 (Hand-Arm)
;拳頭攻擊1 (手臂)
[Statedef 311]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
anim = 311
velset = 0,0
poweradd = 120
sprpriority = 4

[State 311, 1]
type = HitBy
trigger1 = 1
value =
time = 1

[State 311, 2]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time = 1

[State 311, 3]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 311, 4]
type = PlayerPush
trigger1 = 1
value = 1

[State 311, 5]
type = BindToParent
trigger1 = 1
time = 2
pos = 0,0

[State 311, 6]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0 
value = s4,0
channel = 2 ;*4

[State 311, 7 (Damage & Enemy DEF > 0)]
type = HitDef
triggerall = enemy,const(data.defence) > 0
trigger1 = AnimElem >= 1
attr = SCA, SA
damage = (root,fvar(10))*ceil(((enemy,const(data.defence)*0.01)*enemy,lifemax*0.130)),(root,fvar(10))*ceil(enemy,lifemax*0.033) ;*1
animtype = Hard
hitflag = MAFP
guardflag = MA
priority = ifelse(root,life >= lifemax/4,6,7), Hit
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound = s5,2
guardsound = -1
ground.type = High
ground.slidetime = 35
ground.hittime = 25
guard.slidetime = 35
guard.hittime = 25
ground.velocity = -30
air.velocity = -18,-8
guard.dist = 520

[State 311, 8 (Damage & Enemy DEF <= 0)]
type = HitDef
triggerall = enemy,const(data.defence) <= 0
trigger1 = AnimElem >= 1
attr = SCA, SA
damage = 130*root,fvar(10),33*root,fvar(10)
animtype = Hard
hitflag = MAFP
guardflag = MA
priority = ifelse(root,life >= lifemax/4,6,7), Hit
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound = s5,2
guardsound = -1
ground.type = High
ground.slidetime = 35
ground.hittime = 25
guard.slidetime = 35
guard.hittime = 25
ground.velocity = -30
air.velocity = -18,-8
guard.dist = 520

[State 311, 9]
type = Helper
trigger1 = movehit = 1
helpertype = normal
name = "Hit Spark Effect A1";打擊火花特效A1
pos = enemynear,const(size.mid.pos.x)*const(size.xscale),enemynear,const(size.mid.pos.y)*const(size.yscale) ;*2
postype = p2
facing = -facing
id = 13001
stateno = 13001
ownpal = 1
keyctrl = 0
size.xscale = root,const(size.xscale) ;*3
size.yscale = root,const(size.yscale) ;*3

[State 311, 10]
type = Helper
trigger1 = moveguarded = 1
helpertype = normal
name = "Guard Spark Effect 1";防禦火花特效1
pos = enemynear,const(size.mid.pos.x)*const(size.xscale),(enemynear,const(size.mid.pos.y)+40)*const(size.yscale)
postype = p2
facing = -facing
id = 13011
stateno = 13011
ownpal = 1
keyctrl = 0
size.xscale = root,const(size.xscale)*1.8 ;*3
size.yscale = root,const(size.yscale)*1.8 ;*3

[State 311, 11]
type = HitOverride
trigger1 = 1
attr = SCA, NA, SA, HA, NP, SP, HP
stateno = 35

[State 311, 12 (Helper End)]
type = ChangeState
trigger1 = AnimTime = 0
value = 32

[State 311, 13]
type = StopSnd
trigger1 = Parent,StateNo = 5150 ;*4
channel = 2

[State 311, 14 (Helper Disappear)]
type = DestroySelf
trigger1 = Parent,StateNo = 5150


;*1 固定傷害代碼 對上各個攻擊力防禦力生命值不同的角色有穩定傷害輸出

;*2 使用const(size.mid.pos.y) 對應身體中心的Y軸(上下)位置
;   前面加上enemynear, 對應的將會是 對手身體中心的Y軸(上下)位置

;*3 前面加上root, Const對應的會是真實本體(Constants常數檔案中[Size]的xscale和yscale)
;   如果只有Const 對應的為上一個親(而這個親可能是由Helper產生的，即假親或稱為假本體)。
;   這裡的上一個親 指的是 Statedef 32

;   該Statedef 311是經由Statedef 32的ChangeState而來的
;   而Statedef 32 是從Statedef 5900的Helper產生的

;*4 要中止Helper發出的音效，可以設定跟DestroySelf相同的條件

;---------------------------------------------------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Punch Attack 2 (Parent)
;拳頭攻擊2 (親)
[Statedef 320]
type = S
movetype = A
physics = S
juggle = 0
ctrl = 0
anim = 9999
sprpriority = 4

[State 320, 1]
type = VarAdd
trigger1 = var(51) = 320
trigger1 = Time = 0
v = 52
value = 1

[State 320, 2]
type = VarSet
trigger1 = var(51) != 320
trigger1 = Time = 0
v = 52
value = 0

[State 320, 3]
type = VarSet
trigger1 = var(51) != 320
trigger1 = Time = 0
v = 51
value = 320

[State 320, 4]
type = HitBy
trigger1 = 1
value =
time = 1

[State 320, 5]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time = 1

[State 320, 6 (Helper End)]
type = ChangeState
trigger1 = Helper(32),StateNo = 321
trigger1 = Helper(32),AnimTime = 0
trigger2 = (Time > 2) && Helper(32),StateNo != 321
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Punch Attack 2 (Hand-Arm)
;拳頭攻擊2 (手臂)
[Statedef 321]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
anim = 321
velset = 0,0
poweradd = 120
sprpriority = 4

[State 321, 1]
type = SprPriority
trigger1 = 1
value = ifelse((AnimElem = 3, >= 0) && (AnimElem = 13, < 0),5,3)

[State 321, 2]
type = HitBy
trigger1 = 1
value =
time = 1

[State 321, 3]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time = 1

[State 321, 4]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 321, 5]
type = BindToParent
trigger1 = 1
time = 2
pos = 0,0

[State 321, 6]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s4,0
channel = 3

[State 321, 7 (Damage & Enemy DEF > 0)]
type = HitDef
triggerall = enemy,const(data.defence) > 0
trigger1 = Time = 0
attr = SCA, NA
damage = (root,fvar(10))*ceil(((enemy,const(data.defence)*0.01)*enemy,lifemax*0.100)),(root,fvar(10))*ceil(enemy,lifemax*0.025)
animtype = Hard
hitflag = MAFP
guardflag = MA
priority = ifelse(root,life >= lifemax/4,6,7), Hit
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound = s5,3
guardsound = -1
ground.type = High
ground.slidetime = 39
ground.hittime = 29
guard.slidetime = 39
guard.hittime = 29
ground.velocity = 30,-22
air.velocity = 28,-21
fall = 1
air.fall = 1
guard.dist = 580

[State 321, 8 (Damage & Enemy DEF <= 0)]
type = HitDef
triggerall = enemy,const(data.defence) <= 0
trigger1 = Time = 0
attr = SCA, NA
damage = 100*root,fvar(10),25*root,fvar(10)
animtype = Hard
hitflag = MAFP
guardflag = MA
priority = ifelse(root,life >= lifemax/4,6,7), Hit
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound = s5,3
guardsound = -1
ground.type = High
ground.slidetime = 39
ground.hittime = 29
guard.slidetime = 39
guard.hittime = 29
ground.velocity = 30,-22
air.velocity = 28,-21
fall = 1
air.fall = 1
guard.dist = 580

[State 321, 9]
type = TargetFacing
trigger1 = 1
value = 1
ID = -1

[State 321, 10]
type = Helper
trigger1 = movehit = 1
helpertype = normal
name = "Hit Spark Effect A2";打擊火花特效A2
pos = enemynear,const(size.mid.pos.x)*const(size.xscale),enemynear,const(size.mid.pos.y)*const(size.yscale)
postype = p2
facing = -facing
id = 13002
stateno = 13002
ownpal = 1
keyctrl = 0
size.xscale = root,const(size.xscale)
size.yscale = root,const(size.yscale)

[State 321, 11]
type = Helper
trigger1 = moveguarded = 1
helpertype = normal
name = "Guard Spark Effect 2";防禦火花特效2
pos = enemynear,const(size.mid.pos.x)*const(size.xscale),(enemynear,const(size.mid.pos.y)+40)*const(size.yscale)
postype = p2
facing = -facing
id = 13012
stateno = 13012
ownpal = 1
keyctrl = 0
size.xscale = root,const(size.xscale)*1.8
size.yscale = root,const(size.yscale)*1.8

[State 321, 12]
type = HitOverride
trigger1 = 1
attr = SCA, NA, SA, HA,NP,SP,HP
stateno = 35

[State 321, 13 (Helper End)]
type = ChangeState
trigger1 = AnimTime = 0
value = 32

[State 321, 14]
type = StopSnd
trigger1 = Parent,StateNo = 5150
channel = 3

[state 321, 15 (Helper Disappear)]
type = DestroySelf
trigger1 = Parent,StateNo = 5150

;---------------------------------------------------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Grasping Attack (Parent)
;抓技攻擊 (親)
[Statedef 330]
type = S
movetype = A
physics = S
juggle = 0
ctrl = 0
anim = 9999

[State 330, 1]
type = VarAdd
trigger1 = var(51) = 330
trigger1 = Time = 0
v = 52
value = 1

[State 330, 2]
type = VarSet
trigger1 = var(51) != 330
trigger1 = Time = 0
v = 52
value = 0

[State 330, 3]
type = VarSet
trigger1 = var(51) != 330
trigger1 = Time = 0
v = 51
value = 330

[State 330, 4]
type = HitBy
trigger1 = 1
value =
time = 1

[State 330, 5]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time = 1

[State 330, 6 (Helper End)]
type = ChangeState
trigger1 = Helper(32),StateNo = 331
trigger1 = Helper(32),AnimTime = 0
trigger2 = (Time > 2) && Helper(32),StateNo != 331
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Grasping Attack (P1 Start)
;抓技攻擊 (P1開始)
[Statedef 331]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
anim = 331
velset = 0,0
sprpriority = 2

[State 331, 1]
type = HitDef
trigger1 = Time = 0
attr = S, ST
hitflag = M-
priority = ifelse(root,life >= lifemax/4,5,6), Miss
sparkno = -1
guard.sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p2stateno = 351
guard.dist = 0
fall = 1

[State 331, 2]
type = HitBy
trigger1 = 1
value =
time = 1

[State 331, 3]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time = 1

[State 331, 4 (Helper MoveHit Next State)]
type = ChangeState
triggerall = !Enemy,IsHelper             ;目標不能是對手的援助
triggerall = !Target,IsHelper            ;確保獲得的Target目標不是Helper助手
trigger1 = MoveHit = 1
value = 332

[State 331, 5 (Helper MoveHit Next State Enemy Helper)]
type = ChangeState
triggerall = Enemy,IsHelper || Target,IsHelper
trigger1 = MoveHit = 1
value = 333

[State 331, 6]
type = HitOverride
trigger1 = 1
attr = SCA, NA, SA, HA, NP, SP, HP
stateno = 35

[State 331, 7 (Helper End)]
type = ChangeState
trigger1 = AnimTime = 0
value = 32

;---------------------------------------------------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Grasping Attack (P1 Hit)
;抓技攻擊 (P1打擊)
[Statedef 332]
type = S
movetype = A
physics = N
ctrl = 0
anim = 332
velset = 0,0
poweradd = 110
sprpriority = 2

[State 332, 1]
type = SprPriority
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
value = 3
ignorehitpause = 1

[State 332, 2]
type = SprPriority
trigger1 = AnimElemTime(2) >= 0
value = 4
ignorehitpause = 1

[State 332, 3]
type = HitBy
trigger1 = 1
value =
time = 1

[State 332, 4]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time = 1

[State 332, 5]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 332, 6]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoAutoTurn

[State 332, 7]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s5,4

[State 332, 8]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0 ;*1
pos = 35*const(size.xscale),0 ;*2

[State 332, 9]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(7) < 30 ;*1
pos = 60*const(size.xscale),-5*const(size.yscale) ;*2

[State 332, 10]
type = TargetBind
trigger1 = AnimElemTime(8) = 0
pos = 280*const(size.xscale),-8*const(size.yscale) ;*2

[State 332, 11]
type = Helper
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(4) = 0
trigger3 = AnimElemTime(5) = 0
trigger4 = AnimElemTime(6) = 0
trigger5 = AnimElemTime(7) = 0
helpertype = normal
name = "Blood Effect";嗔血特效
pos = -20*const(size.xscale),0 ;*2
postype = p2
id = 11000
stateno = 11000
ownpal = 1
keyctrl = 0
size.xscale = const(size.xscale)*1.6 ;*2
size.yscale = const(size.yscale)*1.6 ;*2

[State 332, 12]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(4) = 0
trigger3 = AnimElemTime(5) = 0
trigger4 = AnimElemTime(6) = 0
trigger5 = AnimElemTime(7) = 0
value = s5,5

[State 332, 13]
type = TargetLifeAdd
triggerall = EnemyNear,Life >= 30
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(4) = 0
trigger3 = AnimElemTime(5) = 0
trigger4 = AnimElemTime(6) = 0
trigger5 = AnimElemTime(7) = 0
trigger6 = AnimElemTime(8) = 0
value = -(0.030*enemynear,lifemax)*root,fvar(10)
absolute = 1
kill = 1

[State 332, 14]
type = TargetLifeAdd
triggerall = EnemyNear,Life < 30
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(4) = 0
trigger3 = AnimElemTime(5) = 0
trigger4 = AnimElemTime(6) = 0
trigger5 = AnimElemTime(7) = 0
trigger6 = AnimElemTime(8) = 0
value = -30*root,fvar(10)
absolute = 1
kill = 1

[State 332, 15]
type = TargetState
trigger1 = AnimElemTime(2) = 0
value = 352

[State 332, 16]
type = TargetState
trigger1 = AnimElemTime(8) = 0
value = 354

[State 332, 17 (Helper End)]
type = ChangeState
trigger1 = AnimTime = 0
value = 32

;*1 使用TargetBind固定對手的Pos時，建議設定範圍
;   例如AnimElemTime(2) >= 0 && AnimElemTime(7) < 30
;   如果只設定AnimElemTime(2) >= 0 將會讓Statedef 354的VelSet效果無效

;*2 這裡的const(size.xscale)和const(size.yscale)對應的會是Statedef 32的size.xscale和size.yscale
;   因為Statedef 332是先後經由Statedef 32→330→331的ChangeState轉變而來。
;   Statedef 32其實是從Statdef 5900的Helper產生的(5900為真實本體的Statedef)。

;   要真實對應到本體的size.xscale和size.yscale 請在前面加上Root(或者Parent)。

;---------------------------------------------------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Grasping Attack (P1 Enemy Helper Hit)
;抓技攻擊 (P1對手援助打擊)
[Statedef 333]
type = S
movetype = A
physics = N
ctrl = 0
anim = 333
velset = 0,0
poweradd = 110
sprpriority = 2

[State 333, 1]
type = SprPriority
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
value = 3
ignorehitpause = 1

[State 333, 2]
type = SprPriority
trigger1 = AnimElemTime(2) >= 0
value = 4
ignorehitpause = 1

[State 333, 3]
type = HitBy
trigger1 = 1
value =
time = 1

[State 333, 4]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time = 1

[State 333, 5]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 333, 6]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoAutoTurn

[State 333, 7]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s5,4

[State 333, 8]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 35*const(size.xscale),0

[State 333, 9]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(2) < 40
pos = 60*const(size.xscale),-5*const(size.yscale)

[State 333, 10]
type = TargetBind
trigger1 = AnimElemTime(3) = 0
pos = 280*const(size.xscale),-8*const(size.yscale)

[State 333, 11]
type = TargetLifeAdd
trigger1 = AnimElemTime(3) = 0
value = -LifeMax
absolute = 1
kill = 1

[State 333, 12]
type = TargetState
trigger1 = AnimElemTime(2) = 0
value = 352

[State 333, 13]
type = TargetState
trigger1 = AnimElemTime(3) = 0
value = 354

[State 333, 14 (Helper End)]
type = ChangeState
trigger1 = AnimTime = 0
value = 32

;---------------------------------------------------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Grasping Attack (P2 Hit 1)
;抓技攻擊 (P2受擊1)
[Statedef 351]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 4

[State 351, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(Anim) ;會是被抓住前的動作編號
value = Anim
elem = AnimElemNo(-1)

[State 351, 2]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 351, 3]
type = HitBy
trigger1 = 1
value =
time = 1

[State 351, 4]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time = 1

[State 351, 5]
type = SelfState
trigger1 = Time >= 60
value = 5100

;---------------------------------------------------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Grasping Attack (P2 Hit 2)
;抓技攻擊 (P2受擊2)
[Statedef 352]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 3

[State 352, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 352

[State 352, 2]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 352, 3]
type = HitBy
trigger1 = 1
value =
time = 1

[State 352, 4]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time = 1

[State 352, 5]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 352, 6]
type = SelfState
trigger1 = Time >= 240
value = 5100

;---------------------------------------------------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Grasping Attack (P2 Hit 3)
;抓技攻擊 (P2受擊3)
[Statedef 354]
type = A
movetype = H
physics = N
sprpriority = 2
poweradd = 0

[State 354, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 354

[State 354, 2] ;*1
type = VelSet
trigger1 = Time = 1
x = -42
y = -12

[State 354, 3]
type = VelAdd
trigger1 = 1
y = .81

[State 354, 4]
type = SelfState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5100
