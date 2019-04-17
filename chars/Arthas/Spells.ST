

;Plague Strike--------------------------------------------------------
[Statedef 7300]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0

[State 7300, Hit Animation]
type = ChangeAnim
trigger1 = prevstateno != 507300 && anim != 202
trigger2 = prevstateno = 7320 && time = 0 && prevstateno != 507300
trigger3 = prevstateno = 7300 && time = 0 && prevstateno != 507300
trigger4 = prevstateno = 202 && time = 0 && prevstateno != 507300
value = 202

[State 7300, Hit Immune]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 507300
time = -1
forceair = 0



[State 7300, Attack]
type = HitDef
trigger1 = animelem = 17
trigger1 = p2name != "Arthas"
attr = S, NA
p2stateno = 7305
hitflag = MAFD
guardflag = MA
damage = 0, 50
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -7, -3
airguard.velocity = -3, .5
air.type = High
air.velocity = -7, 3
air.hittime = 12

[State 7300, Attack]
type = HitDef
trigger1 = animelem = 17
trigger1 = p2name = "Arthas"
attr = S, NA
damage = 105 , 52
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = S7301
sparkxy = -20, 40
hitsound = 0, 0
guardsound = 6, 0
ground.type = High
ID = 1
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -7, -3
airguard.velocity = -3, .5
air.type = High
air.velocity = -7, 3
air.hittime = 12


[State 7300, Refresher]
type = VarSet
trigger1 = movehit && animelem = 18
v = 22 
value = 1

[State 7300, Refresher 2]
type = VarSet
trigger1 = animelemtime(19) >= 0
v = 22    
value = 0



[State 7300, Caster Slash]
type = Explod
trigger1 = animelemtime(16) = 0
anim = 7300
ID = 7300
pos = 2,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .75,.75
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 7300, Helper]
type = Helper
trigger1 =   movehit && !numhelper(7302)
helpertype = normal
name = "Plague Effect"
ID = 7302
stateno = 7302
pos = 0,-20
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 7300, Helper]
type = Helper
trigger1 = !numhelper(7304) && movehit
helpertype = normal
name = "Blood Plague DoT"
ID = 7304
stateno = 7304
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1

[State 7300, Helper]
type = Helper
trigger1 = !numhelper(7306) && movehit 
helpertype = normal
name = "Blood Plague Timer"
ID = 7306
stateno = 7306
pos = 0,0
postype = p1
bindtime = -1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .35
size.yscale = .35

;Sound Playback Decision
[State 7300, DecideSnd]
type = VarRandom
trigger1 = animelem = 17
v = 7
range = 1,4

[State 7300, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 1  && Animelem = 18
value = S3,0
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 7300, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7)=2  && Animelem = 18
value = S3,1
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 7300, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7)=3  && Animelem = 18
value = S3,2
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 7300, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7)=4  && Animelem = 18
value = S3,3
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 7300, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1


;When Hit, Continue Anim
[Statedef 507300]
type    = U
movetype= H
physics = U
ctrl = 0


[State 507300, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 205
time = -1
forceair = 0

[State 5, 1]
type = LifeAdd
trigger1 = time = 0 && Var(58) = 1 && Var(50) = 0
value = -GetHitVar(Damage)
kill = 0
absolute = 0
[State 5, 1]
type = LifeAdd
trigger1 = time = 0 && Var(50) = 1
trigger2 = Time = 0 && Var(58) = -1
value = -GetHitVar(Damage)
kill = 1
absolute = 0

[State 507300, Changestate]
type = changestate
trigger1 = !animtime
value = 0

[State 507300, Changestate]
type = changestate
trigger1 = time = 0
value = 7300
;----------------------------------------
;Plague Strike State
[Statedef 7302]
type = S
movetype = I
physics = N
anim = 7302
ctrl = 0
sprpriority = 1

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = enemy, pos X
y = enemy, pos Y + -20


[State 7302, Change to Destroy]
type = Changestate
trigger1 = time > 1 && parent, Var(20) = 0
trigger2 = parent, life = 0
value = 7303

;Destroy
[Statedef 7303]
type = S
movetype = I
physics = N
anim = 7303
ctrl = 0
sprpriority = 1

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = enemy, pos X
y = enemy, pos Y + -20

[State 7303, Destroy]
type = Destroyself
trigger1 = !animtime
;------------------------------------------
;Blood Plague Effect Helper
[Statedef 7304]
type = S
movetype = I
physics = N
anim = 7304
ctrl = 0

[State 7304, ReversalDef]
type = ReversalDef
trigger1 = animelem = 1
reversal.attr = S,NA           ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
sparkno = -1
hitsound = -1
numhits = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = enemy, pos X
y = enemy, pos Y


[State 7304, DoT Effect]
type = TargetLifeAdd
trigger1 = (time%3 = 0) && parent, Var(20) = 1 && roundstate = 2
value = -1
absolute = 1
kill = 0
;-------------------
;P2State
[Statedef 7305] 
type = S
movetype = A
physics = N
ctrl = 0

[State 7305, Turn] ;Turn if back to enemy
type = Turn
trigger1 = facing = enemynear, facing

[State 7305, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 7305

[State 7305, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 2
statetype = S
movetype = H
physics = N

[State 7305, VelSet]
type = VelSet
trigger1 = time = 0
x = -7
y = -5

[State 7305, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 7305, Attack]
type = HitDef
trigger1 = animelem = 1
attr = S, NA
damage = 0
animtype = Light
guardflag = 
hitflag = MAF
priority = 3, Hit
pausetime = 0, 0
sparkno = -1
sparkxy = -20, 40
hitsound = -1
guardsound = -1
ground.type = High
ID = 1
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0, 0
airguard.velocity = 0, 0
air.type = High
air.velocity = 0, 0
air.hittime = 0

[State 7305, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -105

[State 7305, SelfState] ;Go To Fall
type = SelfState
trigger1 = pos Y >= 0 && vel Y >= 0
value = 5100
;-----------------------------------------------------
;Timer
[Statedef 7306]
type = S
movetype = I
physics = N
anim = 1
velset = 0, 0
sprpriority = 100

[State 7306, PosSet]
type = PosSet
trigger1 = teamside = 1
x = -130
y = 0

[State 7306, PosSet]
type = PosSet
trigger1 = teamside = 2
x = 130
y = 0

[State 0, Turn]
type = Turn
trigger1 = teamside = 2 && frontedgebodydist > 100

[State 7306, Icon 1P]
type = Explod
trigger1 = !numexplod(7307) && root, Var(20) = 1 && teamside = 1
anim = 7306
ID = 7307
pos = 30,162
postype = left
facing = 1
vfacing = 1
bindtime = -1
scale = .45,.45
sprpriority = 101
ontop = 1
ownpal = 1

[State 7306, Timer P1]
type = Explod
trigger1 = numexplod(7306) = 0 && teamside = 1 && time >= 0
anim = 7330
ID = 7306
pos = 30,162
postype = left
facing = 1
vfacing = 1
bindtime = -1
scale = .45,.45
sprpriority = 101
ontop = 1
ownpal = 1

[State 7306, Icon 2P]
type = Explod
trigger1 = !numexplod(7307) && root, Var(20) = 1 && teamside = 2
anim = 7306
ID = 7307
pos = -30,162
postype = right
facing = 1
vfacing = 1
bindtime = -1
scale = .45,.45
sprpriority = 101
ontop = 1
ownpal = 1

[State 7306, Timer P2]
type = Explod
trigger1 = !numexplod(7306) && time >= 0 && teamside = 2
anim = 7330
ID = 7306
pos = -30,162
postype = right
facing = 1
vfacing = 1
bindtime = -1
scale = .45,.45
sprpriority = 101
ontop = 1
ownpal = 1

[State 7306, RemoveExplod]
type = RemoveExplod
trigger1 = root, Var(22) = 1 && time > 1
trigger2 = root, Var(20) = 0
id = 7306

[State 7306, RemoveExplod]
type = RemoveExplod
trigger1 = root, Var(20) = 0
trigger2 = time >= 1200
id = 7307



[State 7306, ChangeState] ;Refresh
type = ChangeState
trigger1 = root, Var(22) = 1 && time > 1
value = 7306

[State 7306, Blood Plague]
type = ParentVarSet
trigger1 = time = 0
v = 20
value = 1

[State 7306, Blood Plague End]
type = ParentVarSet
trigger1 = time >= 1200
v = 20
value = 0

[State 7306, end]
Type = DestroySelf
trigger1 = root, var(20) = 0


;-------------------------------------------------------------------------------
;Icy Touch

[Statedef 7320]
Type = S
Movetype = A
Physics = S
ctrl = 0
sprpriority = 1

[State 7320, Hit Animation]
type = ChangeAnim
trigger1 = prevstateno != 507320 && anim != 202
trigger2 = prevstateno = 7320 && time = 0 && prevstateno != 507320
trigger3 = prevstateno = 7300 && time = 0 && prevstateno != 507300
trigger4 = prevstateno = 202 && time = 0 && prevstateno != 507300
value = 202

[State 7320, Hit Immune]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 507320
time = -1
forceair = 0

[State 7300, Refresher]
type = VarSet
trigger1 = movehit && animelem = 18
v = 23  
value = 1

[State 7300, Refresher 2]
type = VarSet
trigger1 = animelemtime(19) >= 0
v = 23    
value = 0


[State 7320, Attack]
type = HitDef
trigger1 = animelem = 17
attr = S, NA
damage = 105 , 52
animtype = Light
guardflag = MA
hitflag = MAFD
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
ground.velocity = -7, -3
airguard.velocity = -3, .5
air.type = High
air.velocity = -7, 3
air.hittime = 12
fall = 1

[State 7320, Caster Slash]
type = Explod
trigger1 = animelemtime(16) = 0
anim = 7320
ID = 7320
pos = 20,-20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .45,.35
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 7320, Helper]
type = Helper
trigger1 = movehit && !numhelper(7322)
helpertype = normal
name = "Fever Effect"
ID = 7322
stateno = 7322
pos = 0,-20
postype = p2
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 7320, Helper]
type = Helper
trigger1 = !numhelper(7324) && movehit
helpertype = normal
name = "Frost Fever Timer"
ID = 7324
stateno = 7324
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 0

;Increase Damage for Frost Fever
[State 7320, AttackMulSet]
type = AttackMulSet
trigger1 = var(21) = 1 && time = 0
value = 1.5



;Sound Playback Decision
[State 7320, DecideSnd]
type = VarRandom
trigger1 = animelem = 17
v = 7
range = 1,4

[State 7320, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 1  && Animelem = 18
value = S3,0
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 7320, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7)=2  && Animelem = 18
value = S3,1
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 7320, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7)=3  && Animelem = 18
value = S3,2
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 7320, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7)=4  && Animelem = 18
value = S3,3
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 7320, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;When Hit, Continue Anim
[Statedef 507320]
type    = U
movetype= H
physics = U
juggle  = 1

[State 507320, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 7320
time = -1
forceair = 0

[State 5, 1]
type = LifeAdd
trigger1 = time = 0 && Var(58) = 1 && Var(50) = 0
value = -GetHitVar(Damage)
kill = 0
absolute = 0
[State 5, 1]
type = LifeAdd
trigger1 = time = 0 && Var(50) = 1
trigger2 = Time = 0 && Var(58) = -1
value = -GetHitVar(Damage)
kill = 1
absolute = 0

[State 507320, Changestate]
type = changestate
trigger1 = !animtime
value = 0

[State 507320, Changestate]
type = changestate
trigger1 = time = 0
value = 7320
;--------------------------
;Frost Fever State
[Statedef 7322]
type = S
movetype = I
physics = N
anim = 7321
ctrl = 0
sprpriority = 3

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = enemy, pos X
y = enemy, pos Y + -30

[State 7322, Change to Destroy]
type = Destroyself
trigger1 = !animtime

;Loop
[State 7320, Helper]
type = Helper
trigger1 = animelem = 33 && root, Var(21) = 1
helpertype = normal
name = "Fever Effect"
ID = 7322
stateno = 7322
pos = 0,-20
postype = p2
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;Frost Fever Timer------------------
[Statedef 7324]
type = S
movetype = I
physics = N
anim = 1
velset = 0, 0
sprpriority = 100

[State 7324, PosSet]
type = PosSet
trigger1 = teamside = 1
x = -130
y = 0

[State 7324, PosSet]
type = PosSet
trigger1 = teamside = 2
x = 130
y = 0

[State 0, Turn]
type = Turn
trigger1 = teamside = 2 && frontedgebodydist > 100



[State 7324, Button 1P]
type = Explod
trigger1 = !numexplod(7325) && root, Var(21) = 1 && teamside = 1
anim = 7322
ID = 7325
pos = 59,162
postype = left
facing = 1
vfacing = 1
bindtime = -1
scale = .45,.45
sprpriority = 100
ontop = 1
ownpal = 1

[State 7324, Timer P1]
type = Explod
trigger1 = !numexplod(7324) && root, Var(23) = 0 && teamside = 1
anim = 7330
ID = 7324
pos = 58,162
postype = left
facing = 1
vfacing = 1
bindtime = -1
scale = .45,.45
sprpriority = 101
ontop = 1
ownpal = 1

[State 7324, Button 2P]
type = Explod
trigger1 = !numexplod(7325) && root, Var(21) = 1 && teamside = 2
anim = 7322
ID = 7325
pos = -59,162
postype = right
facing = 1
vfacing = 1
bindtime = -1
scale = .45,.45
ontop = 1
ownpal = 1

[State 7324, Timer P2]
type = Explod
trigger1 = !numexplod(7324) && root, Var(23) = 0 && teamside = 2
anim = 7330
ID = 7324
pos = -59,162
postype = right
facing = 1
vfacing = 1
bindtime = -1
scale = .45,.45
ontop = 1
ownpal = 1

[State 7324, RemoveExplod]
type = RemoveExplod
trigger1 = root, Var(23) = 1 && time > 1
trigger2 = root, Var(21) = 0
id = 7324

[State 7324, RemoveExplod]
type = RemoveExplod
trigger1 = root, Var(21) = 0
trigger2 = time >= 1200
id = 7325

[State 7324, ChangeState] ;Refresh
type = ChangeState
trigger1 = root, Var(23) = 1 && time > 1
value = 7324

[State 7324, Blood Plague]
type = ParentVarSet
trigger1 = time = 0
v = 21
value = 1

[State 7324, Blood Plague End]
type = ParentVarSet
trigger1 = time >= 1200
v = 21
value = 0

[State 7306, end]
Type = DestroySelf
trigger1 = root, var(21) = 0

;-------------------------------------------------------------------------------
;Death Strike

[Statedef 7340]
Type = S
MoveType = A
physics = S
ctrl = 0
sprpriority = 1

[State 7340, Hit Immune]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 507340
time = -1
forceair = 0

[State 7340, ChangeAnim]
type = ChangeAnim
trigger1 = prevstateno != 507340 && anim != 204
trigger2 = prevstateno = 204 && time = 0 && prevstateno != 507340
trigger3 = prevstateno = 7340 && time = 0 && prevstateno != 507340
value = 204

[State 7340, HitDef]
type = HitDef
trigger1 = animelem = 22
attr = S,NA
hitflag = MAFD
guardflag = MA
animtype = light
air.animtype = light
damage = 105,20
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = 0,0
guardsound = 0,0
ground.type = High
ground.slidetime = 40
ground.hit
air.hittime = 20
ground.velocity = -7,5
air.velocity = -7,5
sprpriority = 1
p1getp2facing = 0
fall = 1
fall.xvelocity = -3
fall.yvelocity = -7
fall.recover = 0
fall.recovertime = 4
fall.damage = 0
air.fall = 1
down.velocity = -7,0
down.hit = 1
down.bounce = 1

[State 7340, Caster Slash]
type = Explod
trigger1 = animelemtime(22) = 0
anim = 7340
ID = 7340
pos = 70,-15
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .75,.75
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0


;Restore health based on disease #
[State 7340, LifeAdd] ;with No Disease
type = LifeAdd
triggerall = movehit && animelem = 23
trigger1 = var(20) = 0 && var(21) = 0
value = 50
absolute = 1

[State 7340, LifeAdd] ; With 1 Disease
type = LifeAdd
triggerall = movehit && animelem = 23
trigger1 = var(20) = 1 ^^ var(21) = 1
value = 150
absolute = 1

[State 7340, LifeAdd] ; With both Diseases
type = LifeAdd
triggerall = movehit && animelem = 23
trigger1 = var(20) = 1 && var(21) = 1
value = 250
absolute = 1

[State 7340, VarRandom]
type = VarRandom
trigger1 = movehit && animelem = 23
v = 7
range = 1,4

[State 7340, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7)=1  && Animelem = 23
value = S3,0
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 7340, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7)=2  && Animelem = 23
value = S3,1
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 7340, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7)=3  && Animelem = 23
value = S3,2
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 7340, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7)=4  && Animelem = 23
value = S3,3
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 7340, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;When Hit, Continue Anim------------
[Statedef 507340]
type    = U
movetype= H
physics = U
juggle  = 1

[State 507340, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 7340
time = -1
forceair = 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -gethitvar(damage)
kill = 1
absolute = 0

[State 507340, Changestate]
type = changestate
trigger1 = !animtime
value = 0

[State 507340, Changestate]
type = changestate
trigger1 = time = 0
value = 7340
;-------------------------------------------------------------------------------


























































































