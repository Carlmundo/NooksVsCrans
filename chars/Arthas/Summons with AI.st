;-------------------------------------------------------------
;*********************************GEIST***********************
;-------------------------------------------------------------
;Variables for Geist
;Var(1) - Life Variable
;Var(10) - Action Decider
;        = 1 - Run to Enemy
;        = 2 - Jump To Wall and Dash

;-------------------------------------------------------------
;Summoned
[Statedef 7998]
Type = S
movetype = I
physics = N
anim = 3002
ctrl = 0

[State 7998, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT

[State 7998, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S10,8
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0


[State 7998, VelSet]
type = VelSet
trigger1 = 1
x = 7

[State 7998, VelAdd]
type = VelAdd
trigger1 = 1
y = .13

[State 7998, ChangeState]
type = ChangeState
trigger1 = pos Y >= 0 && vel Y >= 0
value = 7999
ctrl = 0

[Statedef 7999]
Type = S
movetype = I
physics = N
anim = 3003
ctrl = 0
velset = 0, 0

[State 7999, GetHit State]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 8030
time = -1
forceair = 0


[State 7999, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 8000
ctrl = 0
;---------------------------------------------------------------------
;Stand
[Statedef 8000]
type = S
movetype = I
physics = S
anim = 3000
velset = 0, 0

[State 8000, DestroySelf]
type = Changestate
trigger1 = var(1) >= 300
value = 8031

[State 8000, ChangeState] ;Cannibalize Victory
type = ChangeState
value = 8035
trigger1 = p2life <= 0 && (roundstate = 3 || roundstate = 4)

[State 8000, ChangeState] ;Ability Chooser
type = ChangeState
trigger1 = random >= 980
value = 8001

[State 8000, Turn] ;Turn when enemy is behind
type = Turn
trigger1 = p2bodydist X < -30

[State 8000, GetHit State]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 8030
time = -1
forceair = 0
;---------------------------------------------------------------------
;Ability Decider
[Statedef 8001]
Type = S
movetype = I
physics = S
anim = 3000

[State 8001, GetHit State]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 8030
time = -1
forceair = 0

[State 8001, Ability Choose]
Type = varrandom
trigger1 = 1
v = 10
range = 1,2

[State 8001, Run To Enemy]
type = ChangeState
trigger1 = var(10) = 1
value = 8004
ctrl = 0

[State 8001, Wall Jumping 1]
type = ChangeState
trigger1 = var(10) = 2
value = 8020
ctrl = 0

;---------------------------------------------------------------------
;Running To Enemy
[Statedef 8004]
type = S
movetype = I
physics = S
ctrl = 0
anim = 3004

[State 8004, VelSet]
type = VelSet
trigger1 = 1
x = 6
y = 0

[State 8005, PlaySnd]
type = PlaySnd
trigger1 = time = 0 && Random < 300
value = S10,9
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 8004, Turn] ;Turn when enemy is behind
type = Turn
trigger1 = p2bodydist X < -40

[State 8004, ChangeState]
type = ChangeState
trigger1 = p2bodydist X <= -30
value = 8000

[State 8004, ChangeState] ;Attack enemy when close
type = ChangeState
trigger1 = p2bodydist X <= 30 && p2bodydist X >= -29 && enemy, stateno != 5110
value =  ifelse(random >= 500, 8005, 8010)

[State 8004, GetHit State]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 8030
time = -1
forceair = 0
;---------------------------------------------------------------------
;Attack 1
[Statedef 8005]
type = S
movetype = A
physics = S
anim = 3005
ctrl = 0
sprpriority = 1
velset = 0, 0

[State 8005, Attack]
type = HitDef
trigger1 = animelemtime(9) = 0
attr = S, NA
damage = 45 , 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = -1
sparkxy = -20, 40
hitsound = 0, 0
guardsound = 6, 0
ground.type = High
ID = 1
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0, 0
airguard.velocity = 0,0
air.type = High
air.velocity = 0, 0
air.hittime = 0

[State 8005, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S10,0
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0



[State 8005, GetHit State]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 8030
time = -1
forceair = 0

[State 8005, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 8000

[State 8005, ChangeState] ;combo
type = ChangeState
trigger1 = movecontact && var(1) < 300 && animelem = 12
value = 8006
;---------------------------------------------------------------------
;Attack 2
[Statedef 8006]
type = S
movetype = A
physics = S
anim = 3006
ctrl = 0
sprpriority = 1

[State 8006, Attack]
type = HitDef
trigger1 = animelemtime(13) = 0
attr = S, NA
damage = 45 , 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = -1
sparkxy = -20, 40
hitsound = 0, 0
guardsound = 6, 0
ground.type = High
ID = 1
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0, 0
airguard.velocity = 0,0
air.type = High
air.velocity = 0, 0
air.hittime = 0

[State 8006, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S10,1
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 8006, GetHit State]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 8030
time = -1
forceair = 0

[State 8006, ChangeState] ;Combo
type = ChangeState
trigger1 = movecontact && var(1) < 300 && animelem = 16
value = 8007

[State 8006, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 8000
;---------------------------------------------------------------------
;Attack 3
[Statedef 8007]
type = S
movetype = A
physics = S
anim = 3007
ctrl = 0
sprpriority = 1

[State 8007, Attack]
type = HitDef
trigger1 = animelemtime(9) = 0
attr = S, NA
damage = 70 , 35
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = -1
sparkxy = -20, 40
hitsound = 0, 0
guardsound = 6, 0
ground.type = High
ID = 1
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4, -4
airguard.velocity = -4,0
air.type = High
air.velocity = -4, -4
air.hittime = 0
fall = 1

[State 8007, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S10,2
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 8007, GetHit State]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 8030
time = -1
forceair = 0

[State 8007, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 8000
;---------------------------------------------------------------------
;Run to enemy Option #2, Liftoff and Gnaw
[Statedef 8010]
type = S
movetype = A
physics = S
anim = 3005
sprpriority = 1
velset = 0, 0

[State 8010, GetHit State]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 8030
time = -1
forceair = 0

[State 8010, Attack]
type = HitDef
trigger1 = animelemtime(9) = 0
attr = S, NA
damage = 70 , 35
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = -1
sparkxy = -20, 40
hitsound = 0, 0
guardsound = 6, 0
ground.type = High
ID = 1
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -2, -10
airguard.velocity = -4,0
air.type = High
air.velocity = -2, -8
air.hittime = 0
fall = 1

[State 8010, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S10,2
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

;To Stand
[State 8010, Changestate]
type = Changestate
trigger1 = animtime = 0 && movehit = 0
value = 8000

;To Gnaw
[State 8010, Changestate]
type = Changestate
trigger1 = movehit && animtime = 0
value = 8011
;-------------------------------------------------
;Gnaw Jump Attempt
[Statedef 8011]
type = S
movetype = A
physics = N
Sprpriority = 1
anim = 3002
velset = 7, -8

[State 8011, Grab]
type = Hitdef
trigger1 = prevstateno != 8011
attr = S, NT
damage = 0, 0
hitflag = AF
Guardflag = M
pausetime = 0, 0
p1stateno = 8012
p2stateno = 8014


[State 8011, VelAdd]
type = VelAdd
trigger1 = 1
x = 0
y = .5

[State 8011, Land]
type = Changestate
trigger1 = time > 0 && pos Y >= 0
value = 7999
;----------------------------------------------------
;Geist Grab Succeed, Flying In Air
[Statedef 8012]
type = S
movetype = A
physics = N

[State 8012, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8012, TargetBind]
type = TargetBind
trigger1 = 1
x = 0
y = 0

[State 8012, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1

[State 8012, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 8012, TargetState]
type = TargetState
trigger1 = pos Y >= 0
value = 8015

[State 8012, Land]
type = Changestate
trigger1 = pos Y >= 0
value = 8013
;-----------------------------------------
;Gnaw Enemy when Land
[Statedef 8013]
type = S
movetype = A
physics = N
velset = 0, 0

[State 8012, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1

[State 8012, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8012, TargetState]
type = TargetState
trigger1 = time = 0
value = 8015

[State 8013, Land Anim]
type = Changeanim
trigger1 = time = 0
value = 3003

[State 8013, Gnaw Anim]
type = Changeanim
trigger1 = anim = 3003 && animtime = 0 && anim != 3035
value = 3035

[State 8013, TargetBind]
type = TargetBind
trigger1 = 1
X = 0
Y = 0

[State 8013, End]
Type = Changestate
trigger1 = time >= 132
value = 8000
;------------------------------------------
;P2 Gnaw State Flying
[Statedef 8014]
type = S
movetype = H
physics = N
ctrl = 0

[State 8012, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8014, Changestate]
type = Changestate
trigger1 = pos Y >= 0
value = 8015

[State 8014, Change Anim]
type = Changeanim2
trigger1 = time = 0
value = 3014
;------------------------------------------
;P2 Gnaw Laying State
[Statedef 8015]
type = S
movetype = H
physics = N
ctrl = 0

[State 8012, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8015, ChangeAnim]
type = ChangeAnim2
trigger1 = Time = 0
value = 3015

[State 8015, Damage]
type = lifeadd
trigger1 = animelemtime(2) = 0 || animelemtime(4) = 0 || animelemtime(6) = 0
value = -50

[State 8015, End]
Type = ChangeState
trigger1 = !Animtime
value = 8016

;Getup
[Statedef 8016]
type    = S
movetype= H
physics = N
ctrl = 0
anim = 5120

[State 8016, Return to Stand]
type = Selfstate
trigger1 = selfanimexist(5120) && !animtime
trigger2 = !selfanimexist(5120) && time = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------
;---------------------------------------------------------------------
;Single Wall Jump
[Statedef 8020]
type = S
movetype = I
physics = N
velset = 7, -4
anim = 3001

[State 8020, velset]
type = Velset
trigger1 = pos Y <= -80
y = -.5

[State 8020, velset]
type = Velset
trigger1 = pos Y <= -90
y = 0

[State 8020, Continue Jump]
type = ChangeAnim
trigger1 = anim = 3001 && animtime = 0 && anim != 3002
value = 3002

[State 8020, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8020, ChangeState]
type = ChangeState
trigger1 = frontedgedist <= 10
value =  8021

;Stick to Wall----------------------------
[Statedef 8021]
type = S
movetype = I
physics = N
velset = 0, 0
anim = 3020

[State 8021, GetHit State]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 8040
time = -1


[State 0, PosSet]
type = PosSet
trigger1 = 1
x = ifelse(facing = 1, 150, -150)

[State 8021, Stick To Wall]
type = Changestate
trigger1 = pos Y > -90
value = 8022

[State 8021, Stick To Wall]
type = Changestate
trigger1 = pos Y <= -90 && random > 980
value = 8023

;Crawling Up Wall----------------------------
[Statedef 8022]
type = S
movetype = I
physics = N
velset = 0, -2
anim = 3021

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = ifelse(facing = 1, 150, -150)

[State 8021, Stick To Wall]
type = Changestate
trigger1 = pos Y <= -90
value = 8021

[State 8021, GetHit State]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 8040
time = -1

;Attack Off Wall----------------------------
[Statedef 8023]
type = S
movetype = A
physics = N
anim = 3002


[State 8023, Turn]
type = Turn
trigger1 = time = 0 && frontedgedist <= 30

[State 8023, Velset]
type = VelSet
trigger1 = 1
x = 12
y = 7


[State 8007, Attack]
type = Hitdef
trigger1 = time = 0
attr = S, NA
damage = 70 , 35
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = -1
sparkxy = -20, 40
hitsound = 0, 0
guardsound = 6, 0
ground.type = High
ID = 1
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4, -4
airguard.velocity = -4,0
air.type = High
air.velocity = -4, -4
air.hittime = 0
fall = 1

[State 8023, Return to Stand]
type = Changestate
trigger1 = pos Y >= 0
value = 8000

[State 8030, Life Damage]
type = VarAdd
trigger1 = time = 0
v = 1
value = gethitvar(damage)

[State 8023, GetHit State]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 8023
time = -1



;---------------------------------------------------------------------
;Get Hit
[Statedef 8030]
Type = S
movetype = H
physics = S
anim = 3030
velset = 0, 0
ctrl = 0

[State 8030, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 5
range = 1, 4

[State 8030, PlaySnd]
type = PlaySnd
trigger1 = time = 1 && var(5) = 1
value = S10,4
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 8030, PlaySnd]
type = PlaySnd
trigger1 = time = 1 && var(5) = 2
value = S10,5
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 8030, PlaySnd]
type = PlaySnd
trigger1 = time = 1 && var(5) = 3
value = S10,6
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 8030, PlaySnd]
type = PlaySnd
trigger1 = time = 1 && var(5) = 4
value = S10,7
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 8030, GetHit State]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 8030
time = -1
forceair = 0

[State 8030, Life Damage]
type = VarAdd
trigger1 = time = 0
v = 1
value = gethitvar(damage)

[State 7999, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 8000
ctrl = 0

[State 8030, Die]
type = changestate
trigger1 = var(1) >= 300
value = 8031
;---------------------------------------------------------------------
;Wall Get Hit State
[Statedef 8040]
type = S
movetype = H
physics = N

[State 8040, anim]
type = Changeanim
trigger1 = time = 0 && prevstateno != 8040 && anim != 3022
value = 3022

[State 8040, anim2]
type = Changeanim
trigger1 = anim = 3022 && animtime = 0 && prevstateno != 8040 && anim != 3002
value = 3002

[State 8040, Stay to Wall]
type = Velset
trigger1 = anim = 3022
x = 0
y = 0

[State 8040, Fall]
type = Velset
trigger1 = anim = 3002
x = 0
y = 5

[State 8040, To Stand]
type = changestate
trigger1 = pos Y >= 0
value = 8000

[State 8040, Life Damage]
type = VarAdd
trigger1 = time = 0
v = 1
value = gethitvar(damage)

[State 8040, Get Hit]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 8040
time = -1
;---------------------------------------------------------------------
;Die
[Statedef 8031]
Type = S
movetype = H
physics = S
anim = 3031
velset = 0, 0
ctrl = 0

[State 8031, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S10,3
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 8000, DestroySelf]
type = Destroyself
trigger1 = !animtime


;----------------------------------------------------------------------
;Cannibalize
[Statedef 8035]
Type = S
movetype = I
physics = S
velset = 0, 0
anim = 3035

[State 8035, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT

;-------------------------------------------------------------------------------
;*********************************LICH******************************************
;-------------------------------------------------------------------------------
;Summon
[Statedef 2000]
type = S
movetype = I
physics = S
velset = 0, 0
anim = 2000

[State 2010, PosSet]
type = posset
trigger1 = facing = 1
x = -120
y = -30

[State 2000, PosSet]
type = posset
trigger1 = facing = -1
x = 120
y = -30


[State 2000, Changestate]
type = Changestate
trigger1 = !animtime
value = 2010
;-------------------------------------------------------------------------------
;Lich Standing / Casting
[Statedef 2010]
Type = S
movetype = I
physics = S
velset = 0, 0

[State 2010, ChangeAnim]
Type = Changeanim
trigger1 = prevstateno != 502010 && anim != 2010
value = 2010

[State 2010, PosSet]
type = posset
trigger1 = facing = 1
x = -120
y = -30

[State 2010, PosSet]
type = posset
trigger1 = facing = -1
x = 120
y = -30

[State 2010, Hit Immune]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 502010
time = -1
;-------------------------------------------------
;For Shield
[State 2010, Helper]
type = Helper
trigger1 = !numhelper(2011) && ishelper(2000)
helpertype = normal
name = "Sheild Buff"
ID = 2011
stateno = 2011
pos = 0,0
postype = back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
size.xscale = .25
size.yscale = .25


[State 2010, ParentVarSet] ;Shield
type = ParentVarSet
trigger1 = ishelper(2000) && time = 0
v = 10
value = 1
;----------------------------------------------
;For Attack Buff
[State 2010, Helper]
type = Helper
trigger1 = !numhelper(2031) && ishelper(2030)
helpertype = normal
name = "Attack Buff"
ID = 2031
stateno = 2031
pos = 0,0
postype = back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
size.xscale = .25
size.yscale = .25


[State 2010, ParentVarSet] ;Buff
type = ParentVarSet
trigger1 = ishelper(2030)
v = 11
value = 1
;----------------------------------
[State 2010, ChangeState] ;Death
type = ChangeState
trigger1 = var(1) >= 300
value = 2020

;When Hit, Continue Anim------------------------
[Statedef 502010]
type    = U
movetype= H
physics = U
juggle  = 0

[State 502010, VarAdd]
type = VarAdd
trigger1 = time = 0
v = 1
value = gethitvar(damage)

[State 502010, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 3
stateno = 2010
time = -1
forceair = 0

[State 502010, Changestate]
type = changestate
trigger1 = time = 0
value = 2010
;-------------------------------------------------------------------------------
;Death
[Statedef 2020]
type = S
movetype = I
physics = S
velset = 0, 0
anim = 2020

[State 2020, ParentVarSet]
type = ParentVarSet
trigger1 = ishelper(2000)
v = 10
value = 0

[State 2020, ParentVarSet]
type = ParentVarSet
trigger1 = ishelper(2030)
v = 11
value = 0

[State 2020, Vanish]
Type = destroyself
trigger1 = !animtime

;-------------------------------------------------------------------------------
;Shield Cast Effect - Hands
[Statedef 2011]
type = S
movetype = I
physics = S
velset = 0, 0
anim = 2011

[State 2011, BindToParent]
type = BindToParent
trigger1 = 1
pos = 29,-58


[State 2011, ChangeState] ;Vanish
type = ChangeState
trigger1 = helper(2000), stateno = 2020
value = 2021
ctrl = 0

[Statedef 2021]
type = S
movetype = I
physics = S
velset = 0, 0
anim = 2021

[State 2021, Vanish]
type = Destroyself
trigger1 = !animtime
;-------------------------------------------------------------------------------
;Attack Buff Cast Effect - Hands
[Statedef 2031]
type = S
movetype = I
physics = S
velset = 0, 0
anim = 2012
sprpriority = 2

[State 2031, BindToParent]
type = BindToParent
trigger1 = 1
pos = 29,-58

[State 2031, ChangeState] ;Vanish
type = ChangeState
trigger1 = helper(2030), stateno = 2020
value = 2032
ctrl = 0

[Statedef 2032]
type = S
movetype = I
physics = S
velset = 0, 0
anim = 2013

[State 2032, Vanish]
type = Destroyself
trigger1 = !animtime
;-------------------------------------------------------------------------------
;*********************************GHOUL*****************************************
;-------------------------------------------------------------------------------
;----------------
;Summoning Glow
[Statedef 3999]
Type = S
movetype = A
physics = S
Anim = 3999
sprpriority = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,2
volume = 75
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 12
helpertype = normal
name = "Ghoul"
ID = 667
stateno = 4001
pos =  13 ,-10
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 4000
ctrl = 0
;Vanish
[Statedef 4000]
Type = S
movetype = A
physics = S
Anim = 4000

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !animtime

;------------------
;Ghoul Emerge
[Statedef 4001]
Type = S
movetype = A
physics = S
Anim = 4001
sprpriority = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,3
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 4002
ctrl = 0

;----------------
;Ghoul Stand
[Statedef 4002]
Type = S
movetype = A
physics = S
Anim = 4002
sprpriority = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S9,0
volume = 75
channel = -1
lowpriority = 1
freqmul = 1.0
loop = 0
pan = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 4005
time = -1
forceair = 0

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 1
v = 1
range = 0,2

[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime && Var(1) = 1
value = 4003
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime && Var(1) = 2
value = 4004
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animelem = 17 && Var(1) = 0
value = 4005
ctrl = 0

;----------------------------
;Ghoul Jump
[Statedef 4003]
Type = S
movetype = A
physics = N
Anim = 4003
sprpriority = 4

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 10
y = -5

[State 0, HitDef]
type = HitDef
trigger1 = 1
attr = S,NA
hitflag = MAFD
guardflag =
animtype = light
air.animtype = light
damage = 0,0

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0
y = .5

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 4005
time = -1
forceair = 0


[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
trigger2 = pos Y >= -10 && time >= 2
value = 4005
ctrl = 0
;-------------------------------------------
;Ghoul Run
[Statedef 4004]
Type = S
movetype = A
physics = S
Anim = 4004
sprpriority = 4

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 5
y = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 4005
time = -1
forceair = 0

[State 0, HitDef]
type = HitDef
trigger1 = 1
attr = S,NA
hitflag = MAFD
guardflag =
animtype = light
air.animtype = light
damage = 0,0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
trigger2 = time >= 90
value = 4005
ctrl = 0
;---------------------------
;Ghoul Explode
[Statedef 4005]
Type = S
movetype = A
physics = S
Anim = 4005
sprpriority = 4

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,1
volume = 75
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 30
freq = 60
ampl = -4
phase = 90

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 6 || 10 || 14
attr = S,NA
hitflag = MAFD
guardflag =
animtype = light
air.animtype = light
damage = 150,0
pausetime = 0 ,0
sparkno = 0
guard.sparkno = 0
sparkxy = 0,0
hitsound = 0,0
guardsound = 0,0
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 0
air.hittime = 20
ground.velocity = -10,-10
air.velocity = -5,-10
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sprpriority = 4
fall = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !animtime
;-----------------------------------------------------------------------------
;IBM Summons
;-----------------------------------------------------------------------------
;IBM Ghouls Summon Glow
[Statedef 23999]
Type = S
movetype = A
physics = S
Anim = 3999
sprpriority = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,2
volume = 75
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 23999, turn]
type = Turn
trigger1 = time = 0 && ishelper(24001)

[State 0, Helper]
type = Helper
trigger1 = animelem = 12 && ishelper(24000)
helpertype = normal
name = "IBM Ghoul 1"
ID = 24666
stateno = 24001
pos =  13 ,-10
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 0, Helper]
type = Helper
trigger1 = animelem = 12 && ishelper(24001)
helpertype = normal
name = "IBM Ghoul 2"
ID = 24667
stateno = 24001
pos =  13 ,-10
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 4000
ctrl = 0
;Vanish
[Statedef 24000]
Type = S
movetype = A
physics = S
Anim = 4000

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !animtime

;------------------
;IBM Ghoul Emerge
[Statedef 24001]
Type = S
movetype = A
physics = S
Anim = 4001
sprpriority = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,3
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 24002
ctrl = 0
;------------------
;IBM Ghoul Stand
[Statedef 24002]
Type = S
movetype = A
physics = S
Anim = 4002
sprpriority = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S9,0
volume = 75
channel = -1
lowpriority = 1
freqmul = 1.0
loop = 0
pan = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 4005
time = -1
forceair = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 24004
ctrl = 0
;------------------
;IBM Ghoul Run
[Statedef 24004]
Type = S
movetype = A
physics = S
Anim = 4004
sprpriority = 4

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 5
y = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 4005
time = -1
forceair = 0

[State 0, HitDef]
type = HitDef
trigger1 = 1
attr = S,NA
hitflag = MAFD
guardflag =
animtype = light
air.animtype = light
damage = 0,0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 4005
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = ishelper(24666) && numhelper(24667) > 0
trigger1 = (helper(24667), pos x) - pos x = [-20, 20]
trigger2 = ishelper(24667) && numhelper(24666) > 0
trigger2 = (helper(24666), pos x) - pos x = [-20, 20]
trigger3 = time = 90
value = 4005
ctrl = 0
;-------------------------------------------------------------------------------
;Valkier Summon
[Statedef 8049]
type = S
movetype = I
physics = N
velset = 0, 0
ctrl = 0
sprpriority = 2
anim = 8049

[State 8056, PosSet]
type = PosSet
trigger1 = 1
x = -100
y = -100

[State 8049, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 8050
ctrl = 0

;-------------------------------------------------------------------------------
;Var(1) = Life


;Valkier Stand
[Statedef 8050]
type = S
movetype = I
physics = N
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 8050, Helper]
type = Helper
trigger1 = !numhelper(8051)
helpertype = normal ;player
name = "Blah"
ID = 8051
stateno = 8051
pos = 0,0
postype = p1

[State 8050, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0 && prevstateno != 508050
value = 8050

[State 8050, Hit Immune]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 508050
time = -1
forceair = 0

[State 8050, Vanish]
type = ChangeState
trigger1 = numhelper(8051) > 0
trigger1 = helper(8051), time = 300
value = 8055

[State 8050, Death]
type = ChangeState
trigger1 = Var(1) >= 500
value = 8090



;--------------------------------
;When Hit, Continue Anim
[Statedef 508050]
type    = U
movetype= H
physics = U
juggle  = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 8050
time = -1
forceair = 0

[State 508050, Damage]
type = Varadd
trigger1 = time = 0
v = 1
value = gethitvar(damage)

[State 8050, Death]
type = ChangeState
trigger1 = Var(1) >= 500
value = 8090

[State 508050, Changestate]
type = changestate
trigger1 = time = 0
value = 8050
;-------------------------------------------------------
;Valkier Vanish
[Statedef 8055]
type = S
movetype = I
physics = N
velset = 0, 0
sprpriority = 2
anim = 8055

[State 508050, Changestate]
type = changestate
trigger1 = !animtime
value = 8056
;--------------------------------------
;Valkier Dash Attack
[Statedef 8056]
type = S
movetype = A
physics = N
sprpriority = 2
anim = 8051

[State 8056, PosSet]
type = PosAdd
trigger1 = time = 0
x = -150

[State 8056, PosSet]
type = PosSet
trigger1 = time <= 120
x = ifelse(facing = 1, -250, 250)
y = enemy, pos Y - 40

[State 8056, VelSet]
type = VelSet
trigger1 = time >120
x = 10
y = 0

[State 8056, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 240
length = 20
palcolor = 256
palinvertall = 0
palbright = 30,30,50
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 2
trans = add

[State 8056, Finale HitDef]
type = HitDef
trigger1 = time = 0 && ishelper(20920)
attr = S,NA
hitflag = MAF
guardflag =
animtype = light
air.animtype = light
damage = 0,0
pausetime = 0 ,0
hitsound = S3,0
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime = 0
air.hittime = 20
ground.velocity = -7, -5
air.velocity = -7,-5
guard.dist = 0
fall = 1

[State 8056, Changestate]
type = changestate
trigger1 = time = 240
value = 8049
;-----------------------------------
;Timer
[Statedef 8051]
type = S
movetype = I
physics = N
anim = 1

[State 8051, Destroy]
type = Destroyself
trigger1 = time = 301 && ishelper(8051)

[State 8051, Destroy]
type = Destroyself
trigger1 = time = 501 && (ishelper(8105) || ishelper(8106))
;-----------------------------------
;Death
[Statedef 8090]
type = S
movetype = I
physics = N
anim = 8054
velset = 0, 0
sprpriority = 5

[State 8090, Velset]
type = VelSet
trigger1 = animelemtime(19) >= 0
x = 0
y = 10

[State 8090, Destroy]
type = Destroyself
trigger1 = time = 140

[State 8090, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;-------------------------------------------------------------------------------
;Frozen Orb
[Statedef 8100]
type = S
movetype = A
physics = N
anim = 20940
sprpriority = 2

[State 8100, Hit Immune]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 508100
time = -1
forceair = 0

[State 8100, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = light
damage = 0,0
pausetime = 0 ,0
ground.type = High
ground.slidetime = 0
ground.hittime = 0
air.hittime = 20
ground.velocity = -5,-5
air.velocity = -5,-5
fall = 1

[State 8100, Veladd X1]
type = veladd
trigger1 = p2bodydist X > 0 && vel x < 5
x = .25

[State 8100, Veladd X2]
type = veladd
trigger1 = p2bodydist X < 0 && vel x > -5
x = -.25

[State 8100, Veladd Y1]
type = veladd
trigger1 = p2bodydist Y > 50 && vel Y < 5
y = .25

[State 8100, Veladd Y2]
type = veladd
trigger1 = p2bodydist Y < 0 && vel Y > -5
y = -.25

[State 8100, Helper]
type = Helper
trigger1 = time = 0 && !numhelper(8105) && (ishelper(28100) || ishelper(8100))
helpertype = normal
name = "Timer 1"
ID = 8105
stateno = 8051
pos = 0,0
postype = p1
[State 8100, Helper]
type = Helper
trigger1 = time = 0 && !numhelper(8106) && ishelper(28101)
helpertype = normal
name = "Timer 2"
ID = 8106
stateno = 8051
pos = 0,0
postype = p1

[State 8100, Death]
type = changestate
trigger1 = numhelper(8105) > 0
trigger1 = ishelper(28100) && helper(8105), time = 500
trigger2 = numhelper(8106) > 0
trigger2 = ishelper(28101) && helper(8106), time = 500
value = 8110
;------------------------
;Frozen Orb Pos Freeze
[Statedef 508100]
type = S
movetype = I
physics = N
velset = 0, 0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 508100, Return]
type = changestate
trigger1 = time = 90
value = 8100

;-------------------
;Frozen Orb Death
[Statedef 8110]
type = S
movetype = I
physics = N
sprpriority = 2
anim = 20945
velset = 0, 0

[State 8120, Parentvaradd]
type = Parentvaradd
trigger1 = time = 0
v = 43
value = 1

[State 8100, Death]
type = Destroyself
trigger1 = !animtime
;-----------------------------------------
;Frost Mine
[Statedef 8120]
type = S
movetype = I
physics = N
anim = 20950
velset= 0, 0
sprpriority = 2

[State 8120, Explode]
type = Changestate
trigger1 = time = 120
value = 8125
;-------------------------------------
;Frost Mine Explode
[Statedef 8125]
type = S
movetype = A
physics = N
anim = 20955
velset = 0, 0
sprpriority = 2

[State 8125, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S21,1
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 8125, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S21,1
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
affectteam = B
animtype = light
air.animtype = light
damage = 0,0
pausetime = 0 ,0
ground.type = High
ground.slidetime = 0
ground.hittime = 0
air.hittime = 20
ground.velocity = -5,-5
air.velocity = -5,-5
fall = 1

[State 8125, End]
type = destroyself
trigger1 = !animtime




































































































































