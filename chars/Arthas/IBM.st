;-------------------------------------------------------------------------------
;-----------------------Insane Boss Mode State File-----------------------------
;-------------------------------------------------------------------------------
;This states file contains data for abilities and states while Arthas is in
;Insane Boss Mode. Note that Insane Boss Mode is only for use with the AI,
;players are unable to enter Insane Boss Mode. This mode is an "heroic" mode
;for the pros of fighting games and features abilities that player mode is unable
;to use. Killing Arthas in player mode with the AI on triggers Insane Boss Mode,
;Arthas will regain his health and the true battle will begin. Have fun with
;this challengs :)
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;Transition from Player Mode to Insane Boss Mode.
[Statedef 20000]
type = S
movetype = I
physics = N
velset = 0, 0
ctrl = 0

[State 20000, Pos Keeper Helper]
type = Helper
trigger1 = time = 0
helpertype = normal 
name = "Pos Keeper"
ID = 20000
stateno = 20005
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 20000, lifeadd]
type = LifeAdd
trigger1 = Life < LifeMax
trigger1 = gametime%10 = 0
value = 500
persistent = 10

[State -2, StopSnd]
type = StopSnd
trigger1 = 1
channel = 4


[State 20000, anim]
type = changeanim
trigger1 = time = 0
value = 20000

[State 20000, Life]
type = Lifeadd
trigger1 = time = 0
value = 1

[State 20000, PosSet]
type = Posset
trigger1 = time > 0
x = helper(20000), pos X
y = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1



[State 20000, Freeze Timer]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

[State 20000, Explod]
type = Explod
trigger1 = time = 1440
anim = 20002
ID = 20000
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .75,.75
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 20000, shake]
type = EnvShake
trigger1 = time = 1440
time = 480
freq = 120
ampl = -8
phase = 90

[State 20000, Changestate]
type = Changestate
trigger1 = time = 1441
value = 20001
;-------------------------------------------------------------------------------
;Sounds
[State 20000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,6
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,6
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,6
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 20000, PlaySnd2]
type = PlaySnd
trigger1 = time = 180
value = S20,0
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20000, PlaySnd2]
type = PlaySnd
trigger1 = time = 180
value = S20,0
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20000, PlaySnd2]
type = PlaySnd
trigger1 = time = 180
value = S20,0
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 20000, PlaySnd3]
type = PlaySnd
trigger1 = time = 1440
value = S20,1
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20000, PlaySnd3]
type = PlaySnd
trigger1 = time = 1440
value = S20,1
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20000, PlaySnd3]
type = PlaySnd
trigger1 = time = 1440
value = S20,1
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0
;-------
;Pos Keeper
[Statedef 20005]
type = S
anim = 1

[State 20005, Destroyself]
type = Destroyself
trigger1 = root, stateno != 20000 && root, stateno != 20001
;-------------------------------------------------------------------------------
;Getup from Transition
[Statedef 20001]
type = S
movetype = I
physics = N
velset = 0, 0
sprpriority = 2
ctrl = 0

[State 20000, PosSet]
type = Posset
trigger1 = 1
x = helper(20000), pos X
y = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State -2, Helper]
type = Helper
trigger1 = !numhelper(21000)
helpertype = normal
name ="Double Image Helper"
ID = 21000
stateno = 21000
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 20000, Varset]
type = Varset
trigger1 = 1
v = 50
value = 1

[State 20000, lifeadd]
type = LifeAdd
trigger1 = 1
value = 1



[State 20000, Freeze Timer]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

[State 20001, Changeanim]
type = Changeanim
trigger1 = life = lifemax && anim != 20001
value = 20001

[State 20000, Varset]
type = Varset
trigger1 = time = 480
v = 50
value = 1

[State 20001, Changestate]
type = Changestate
trigger1 = time = 480
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;Plague Wave Attack
[Statedef 20010]
type = S
movetype = A
physics = N
Sprpriority = 1
ctrl = 0
velset = 0, 0

[State 20010, Hit Immune]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 5020010
time = -1
forceair = 0

[State 20010, ChangeAnim]
type = ChangeAnim
trigger1 = anim !=20010 && prevstateno != 5020010
value = 20010

[State 20010, PosAdd]
type = PosAdd
trigger1 = animelemtime(43) = 0
x = 15

[State 20010, PosAdd]
type = PosAdd
trigger1 = animelemtime(17) = 0
trigger2 = animelemtime(57) = 0
x = 30


[State 20010, Attack]
type = HitDef
trigger1 = animelem = 10 || animelem = 33  || animelem = 49 || animelem = 64
attr = S, NA
damage = 50 , 20
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
ground.velocity = -7, 0
airguard.velocity = -3, .5
air.type = High
air.velocity = -7, 3
air.hittime = 12

[State 20010, Wave 1]
type = Helper
trigger1 = animelem = 10
helpertype = normal 
name = "Plague Wave 1"
ID = 20011
stateno = 20011
pos = 100,-33
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .35
size.yscale = .35

[State 20010, Wave 2]
type = Helper
trigger1 = animelem = 33
helpertype = normal
name = "Plague Wave 2"
ID = 20012
stateno = 20012
pos = 50,-20
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .5
size.yscale = .5

[State 20010, Wave 3]
type = Helper
trigger1 = animelem = 49
helpertype = normal
name = "Plague Wave 3"
ID = 20013
stateno = 20013
pos = 50,-20
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .5
size.yscale = .5

[State 20010, Wave 3]
type = Helper
trigger1 = animelem = 64
helpertype = normal
name = "Plague Wave 4"
ID = 20014
stateno = 20014
pos = 35,-40
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .5
size.yscale = .5

;Sound Playback Decision-------------
[State 20010, DecideSnd]
type = VarRandom
trigger1 = 1
v = 7
range = 1,4

[State 7300, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 1  && Animelem = 11
trigger2 = movehit && var(7) = 1  && Animelem = 34
trigger3 = movehit && var(7) = 1  && Animelem = 50
trigger4 = movehit && var(7) = 1  && Animelem = 65
value = S3,0
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20010, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 2  && Animelem = 11
trigger2 = movehit && var(7) = 2  && Animelem = 34
trigger3 = movehit && var(7) = 2  && Animelem = 50
trigger4 = movehit && var(7) = 2  && Animelem = 65
value = S3,1
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20010, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 3  && Animelem = 11
trigger2 = movehit && var(7) = 3  && Animelem = 34
trigger3 = movehit && var(7) = 3  && Animelem = 50
trigger4 = movehit && var(7) = 3  && Animelem = 65
value = S3,2
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20010, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 4  && Animelem = 11
trigger2 = movehit && var(7) = 4  && Animelem = 34
trigger3 = movehit && var(7) = 4  && Animelem = 50
trigger4 = movehit && var(7) = 4  && Animelem = 65
value = S3,3
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0
;---------------

[State 20010, Changestate]
type = Changestate
trigger1 = !animtime
value = 0
ctrl = 1


;When Hit, Continue Anim---------------------
[Statedef 5020010]
type    = U
movetype= H
physics = U
juggle  = 1
ctrl = 0

[State 5020010, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 20010
time = -1
forceair = 0

[State 5020010, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -gethitvar(damage)
kill = 0
absolute = 0

[State 5020010, Changestate]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

[State 5020010, Changestate]
type = changestate
trigger1 = time = 0
value = 20010
;-----------------------------------------------------------------------
;Plague Wave 1
[Statedef 20011]
type = S
movetype = A
physics = N
anim = 20011
sprpriority = 2

[State 20011, Velset]
type = VelSet
trigger1 = 1
x = 20

[State 20011, Attack]
type = HitDef
trigger1 = time = 0 && prevstateno != 20011
attr = S, NA
damage = 50 , 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 1, 1
sparkno = S7301
sparkxy = -20, 40
hitsound = 0, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -7, 0
airguard.velocity = -3, .5
air.type = High
air.velocity = -7, 3
air.hittime = 12


[State 20011, Plague Var]
type = Parentvarset
trigger1 = time = 0 && prevstateno = 20011
v = 22
value = 1

[State 20011, Plague Var]
type = Parentvarset
trigger1 = time = 2 && prevstateno = 20011
v = 22
value = 0

[State 20011, Changestate]
type = Changestate
trigger1 = movehit
value = 20011

[State 20011, Destroy]
type = DestroySelf
trigger1 = time >= 30
;-----------------------------------------------------------------------
;Plague Wave 2
[Statedef 20012]
type = S
movetype = A
physics = N
anim = 20012
ctrl = 0
sprpriority = 2

[State 20012, Velset]
type = VelSet
trigger1 = 1
x = 20

[State 20012, Attack]
type = HitDef
trigger1 = time = 0 && prevstateno != 20012
attr = S, NA
damage = 50 , 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 0
sparkno = S7301
sparkxy = -20, 40
hitsound = 0, 0
guardsound = 6, 0
ground.type = High
ID = 1
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -7, 0
airguard.velocity = -3, .5
air.type = High
air.velocity = -7, 3
air.hittime = 12

[State 20012, Plague Var]
type = parentvarset
trigger1 = time = 0 && prevstateno = 20012
v = 22
value = 1

[State 20012, Plague Var]
type = parentvarset
trigger1 = time = 1 && prevstateno = 20012
v = 22
value = 0

[State 20012, Changestate]
type = Changestate
trigger1 = movehit
value = 20012

[State 20012, Destroy]
type = DestroySelf
trigger1 = time >= 30
;-----------------------------------------------------------------------
;Plague Wave 3
[Statedef 20013]
type = S
movetype = A
physics = N
anim = 20013
ctrl = 0
sprpriority = 2

[State 20013, Velset]
type = VelSet
trigger1 = 1
x = 20

[State 20013, Attack]
type = HitDef
trigger1 = time = 0 && prevstateno != 20013
attr = S, NA
damage = 50 , 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 0
sparkno = S7301
sparkxy = -20, 40
hitsound = 0, 0
guardsound = 6, 0
ground.type = High
ID = 1
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -7, 0
airguard.velocity = -3, .5
air.type = High
air.velocity = -7, 3
air.hittime = 12

[State 20013, Plague Var]
type = parentvarset
trigger1 = time = 0 && prevstateno = 20011
v = 22
value = 1

[State 20013, Plague Var]
type = parentvarset
trigger1 = time = 1 && prevstateno = 20011
v = 22
value = 0

[State 20013, Changestate]
type = Changestate
trigger1 = movehit
value = 20013

[State 20013, Destroy]
type = DestroySelf
trigger1 = time >= 30
;-----------------------------------------------------------------------
;Plague Wave 4
[Statedef 20014]
type = S
movetype = A
physics = N
anim = 20014
ctrl = 0
sprpriority = 2

[State 20014, Velset]
type = VelSet
trigger1 = 1
x = 20

[State 20014, Attack]
type = HitDef
trigger1 = time = 0 && prevstateno != 20014
attr = S, NA
damage = 50 , 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 0
sparkno = S7301
sparkxy = -20, 40
hitsound = 0, 0
guardsound = 6, 0
ground.type = High
ID = 1
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -7, 0
airguard.velocity = -3, .5
air.type = High
air.velocity = -7, 3
air.hittime = 12

[State 20014, Plague Var]
type = parentvarset
trigger1 = time = 0 && prevstateno = 20011
v = 22
value = 1

[State 20014, Plague Var]
type = parentvarset
trigger1 = time = 1 && prevstateno = 20011
v = 22
value = 0

[State 20014, Changestate]
type = Changestate
trigger1 = movehit
value = 20014

[State 20014, Destroy]
type = DestroySelf
trigger1 = time >= 30
;-------------------------------------------------------------------------------
;IBM Combo 1
;Combo 1 Hit 1
[Statedef 20020]
type = S
movetype = A
physics = N
sprpriority = 1
ctrl = 0
velset = 0, 0
juggle = 0

[State 20500, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0 && prevstateno != 5020020
value = 20020

[State 0, Hit Immune]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 5020020
time = -1
forceair = 0

[State 20020, Attack]
type = HitDef
trigger1 = animelem = 10
attr = S, NA
damage = 50 , 20
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
ground.hittime  = 25
ground.velocity = -7, 0
airguard.velocity = -1, .25
air.type = High
air.velocity = -2, .5
air.hittime = 25
air.juggle = 0
;Sound Playback Decision-------------
[State 20010, DecideSnd]
type = VarRandom
trigger1 = 1
v = 7
range = 1,4

[State 7300, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 1  && Animelem = 11
value = S3,0
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20010, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 2  && Animelem = 11
value = S3,1
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20010, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 3  && Animelem = 11
value = S3,2
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20010, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 4  && Animelem = 11
value = S3,3
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0
;---------------

[State 20020, End]
type = Changestate
trigger1 = movecontact && animelem = 12
value = 20021
ctrl = 1

[State 20020, End2]
type = Changestate
trigger1 = !animtime
value = 0
ctrl = 1



;When Hit, Continue Anim-------------------------------------------
[Statedef 5020020]
type    = U
movetype= H
physics = U
juggle  = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 20020
time = -1
forceair = 0

[State 5, 1]
type = LifeAdd
trigger1 = time = 0
value = -GetHitVar(Damage)
kill = 0
absolute = 0

[State 5020020, Changestate]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

[State 5020020, Changestate]
type = changestate
trigger1 = time = 0
value = 20020
;-------------------------------------------------------------------------------
;Hit 2
[Statedef 20021]
type = S
movetype = A
physics = N
sprpriority = 1
ctrl = 0
velset = 0, 0
juggle = 0
[State 20021, PosAdd]
type = PosAdd
trigger1 = p2bodydist x > 50 && animelemtime(1) < 15
x = 10

[State 20021, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0 && prevstateno != 5020021
value = 20021

[State 20021, Hit Immune]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 5020021
time = -1
forceair = 0

[State 20021, Attack]
type = HitDef
trigger1 = animelem = 18
attr = S, NA
damage = 50 , 20
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
ground.hittime  = 25
ground.velocity = -7, 0
airguard.velocity = -1, .25
air.type = High
air.velocity = -2, .5
air.hittime = 25
air.juggle = 0
;Sound Playback Decision-------------
[State 20021, DecideSnd]
type = VarRandom
trigger1 = 1
v = 7
range = 1,4

[State 20021, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 1  && Animelem = 19
value = S3,0
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20021, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 2  && Animelem = 19
value = S3,1
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20021, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 3  && Animelem = 19
value = S3,2
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20021, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 4  && Animelem = 19
value = S3,3
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0
;---------------

[State 20021, End]
type = Changestate
trigger1 = animelem = 24  && movecontact
value = 20022
ctrl = 1

[State 20021, End2]
type = Changestate
trigger1 = !animtime && !movecontact
value = 0
ctrl = 1



;When Hit, Continue Anim-------------------------------------------
[Statedef 5020021]
type    = U
movetype= H
physics = U
juggle  = 1

[State 5020021, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 20021
time = -1
forceair = 0

[State 5, 1]
type = LifeAdd
trigger1 = time = 0
value = -GetHitVar(Damage)
kill = 0
absolute = 0

[State 5020021, Changestate]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

[State 5020021, Changestate]
type = changestate
trigger1 = time = 0
value = 20021
;-------------------------------------------------------------------------------
;Hit 3
[Statedef 20022]
type = S
movetype = A
physics = N
sprpriority = 1
ctrl = 0
velset = 0, 0
juggle = 0
[State 20022, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0 && prevstateno != 5020022
value = 20022

[State 0, Hit Immune]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 5020022
time = -1
forceair = 0

[State 20022, Attack]
type = HitDef
trigger1 = animelem = 23
attr = S, NA
damage = 50 , 20
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
ground.hittime  = 25
ground.velocity = 0, 5
airguard.velocity = 0, 5
air.type = High
air.velocity = 0, 5
air.hittime = 25
fall = 1
down.velocity = 0, -11
fall.xvelocity = 0
fall.yvelocity = -11
fall.recover = 0
air.juggle = 0

;Sound Playback Decision-------------
[State 20022, DecideSnd]
type = VarRandom
trigger1 = 1
v = 7
range = 1,4

[State 20022, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 1  && Animelem = 24
value = S3,0
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20022, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 2  && Animelem = 24
value = S3,1
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20022, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 3  && Animelem = 24
value = S3,2
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20022, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 4  && Animelem = 24
value = S3,3
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0
;---------------

[State 20022, End]
type = Changestate
trigger1 = movecontact && !animtime
value = 20023
ctrl = 1

[State 20020, End2]
type = Changestate
trigger1 = !animtime && !movecontact
value = 0
ctrl = 1

;When Hit, Continue Anim-------------------------------------------
[Statedef 5020022]
type    = U
movetype= H
physics = U
juggle  = 1


[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 20022
time = -1
forceair = 0

[State 5, 1]
type = LifeAdd
trigger1 = time = 0
value = -GetHitVar(Damage)
kill = 0
absolute = 0

[State 5020022, Changestate]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

[State 5020022, Changestate]
type = changestate
trigger1 = time = 0
value = 20022

;-------------------------------------------------------------------------------
;Hit 4
[Statedef 20023]
type = S
movetype = A
physics = N
sprpriority = 1
ctrl = 0
velset = 0, 0
juggle = 0
[State 20023, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0 && prevstateno != 5020023
value = 20023

[State 0, Hit Immune]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 5020023
time = -1
forceair = 0

[State 20023, Attack]
type = HitDef
trigger1 = animelem = 20
attr = S, NA
damage = 50 , 20
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
ground.hittime  = 25
ground.velocity = 0, 5
airguard.velocity = 0, .5
air.type = High
air.velocity = 0, 5
air.hittime = 25
fall = 1
down.velocity = 0, -10
fall.xvelocity = 0
fall.yvelocity = -10
fall.recover = 0
air.juggle = 0

;Sound Playback Decision-------------
[State 20023, DecideSnd]
type = VarRandom
trigger1 = 1
v = 7
range = 1,4

[State 20023, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 1  && Animelem = 21
value = S3,0
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20023, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 2  && Animelem = 21
value = S3,1
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20023, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 3  && Animelem = 21
value = S3,2
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20023, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 4  && Animelem = 21
value = S3,3
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0
;---------------

[State 20023, End]
type = Changestate
trigger1 = movecontact && !animtime
value = 20025
ctrl = 1

[State 20023, End2]
type = Changestate
trigger1 = !animtime && !movecontact
value = 0
ctrl = 1

;When Hit, Continue Anim-------------------------------------------
[Statedef 5020023]
type    = U
movetype= H
physics = U
juggle  = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 20023
time = -1
forceair = 0

[State 5, 1]
type = LifeAdd
trigger1 = time = 0
value = -GetHitVar(Damage)
kill = 0
absolute = 0

[State 5020023, Changestate]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

[State 5020023, Changestate]
type = changestate
trigger1 = time = 0
value = 20023
;-------------------------------------------------------------------------------
;Hit 5
[Statedef 20025]
type = S
movetype = A
physics = N
sprpriority = 1
ctrl = 0
velset = 0, 0
juggle = 0
[State 20025, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0 && prevstateno != 5020025
value = 20024

[State 0, Hit Immune]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 5020025
time = -1
forceair = 0

[State 20025, Attack]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
damage = 50 , 20
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
ground.hittime  = 25
ground.velocity = 0, 5
airguard.velocity = 0, .5
air.type = High
air.velocity = 0, 5
air.hittime = 25
fall = 1
down.velocity = 0, -11
fall.xvelocity = 0
fall.yvelocity = -11
fall.recover = 0
air.juggle = 0
;Sound Playback Decision-------------
[State 20025, DecideSnd]
type = VarRandom
trigger1 = 1
v = 7
range = 1,4

[State 20025, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 1  && Animelem = 4
value = S3,0
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20025, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 2  && Animelem = 4
value = S3,1
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20025, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 3  && Animelem = 4
value = S3,2
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20025, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 4  && Animelem = 4
value = S3,3
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0
;---------------

[State 20025, End]
type = Changestate
trigger1 = movecontact && !animtime
value = 20026
ctrl = 1

[State 20025, End2]
type = Changestate
trigger1 = !animtime && !movecontact
value = 0
ctrl = 1




;When Hit, Continue Anim-------------------------------------------
[Statedef 5020025]
type    = U
movetype= H
physics = U
juggle  = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 20025
time = -1
forceair = 0

[State 5, 1]
type = LifeAdd
trigger1 = time = 0
value = -GetHitVar(Damage)
kill = 0
absolute = 0

[State 5020023, Changestate]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

[State 5020023, Changestate]
type = changestate
trigger1 = time = 0
value = 20025
;-------------------------------------------------------------------------------
;Hit 6
[Statedef 20026]
type = S
movetype = A
physics = N
sprpriority = 1
ctrl = 0
velset = 0, 0
juggle = 0
[State 20026, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0 && prevstateno != 5020026
value = 20021

[State 0, Hit Immune]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 5020023
time = -1
forceair = 0
[State 20026, Attack]
type = HitDef
trigger1 = animelem = 18
attr = S, NA
damage = 50 , 20
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
ground.hittime  = 25
ground.velocity = 0, 5
airguard.velocity = 0, .5
air.type = High
air.velocity = 0, 5
air.hittime = 25
fall = 1
down.velocity = 0, -10
fall.xvelocity = 0
fall.yvelocity = -10
air.juggle = 0
[State 20026, Attack Grab]
type = Hitdef
trigger1 = animelem = 18
attr = S, NA
damage = 50 , 20
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
ground.hittime  = 25
ground.velocity = 0, 5
airguard.velocity = 0, .5
air.type = High
air.velocity = 0, 5
air.hittime = 25
fall = 1
down.velocity = 0, -10
fall.xvelocity = 0
fall.yvelocity = -10
p2stateno = 20030




;Sound Playback Decision-------------
[State 20026, DecideSnd]
type = VarRandom
trigger1 = 1
v = 7
range = 1,4

[State 20026, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 1  && Animelem = 19
value = S3,0
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20026, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 2  && Animelem = 19
value = S3,1
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20026, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 3  && Animelem = 19
value = S3,2
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0

[State 20026, PlaySnd]
type = PlaySnd
trigger1 = movehit && var(7) = 4  && Animelem = 19
value = S3,3
volume = 0
channel = 5
lowpriority = 0
freqmul = 1.0
loop = 0
pan = 0
;---------------

[State 20026, End]
type = Changestate
trigger1 = movehit && !animtime
value = 20027
ctrl = 1

[State 20026, End2]
type = Changestate
trigger1 = !animtime && !movehit
value = 0
ctrl = 1

;When Hit, Continue Anim-------------------------------------------
[Statedef 5020026]
type    = U
movetype= H
physics = U
juggle  = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 20026
time = -1
forceair = 0

[State 5, 1]
type = LifeAdd
trigger1 = time = 0
value = -GetHitVar(Damage)
kill = 0
absolute = 0

[State 5020026, Changestate]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

[State 5020026, Changestate]
type = changestate
trigger1 = time = 0
value = 20026
;-------------------------------------------------------------------------------
;P2 State Down
[Statedef 20030]
type = S
movetype = H
physics = N

[State 20030, Velset]
type = VelSet
trigger1 = 1
x = -10
y = 15

[State 20030, Changeanim2]
type = Changeanim2
trigger1 = time = 0
value =  20030

[State 20030, Changestate]
type = Changestate
trigger1 = time > 0 && pos y >= 0
value = 20031

;P2 State Up
[Statedef 20031]
type = S
movetype = H
physics = N

[State 20031, Velset]
type = VelSet
trigger1 = 1
x = -10
y = -6

[State 20031, Changeanim2]
type = Changeanim2
trigger1 = time = 0
value =  20031

[State 20031, Changestate]
type = Changestate
triggerall = time > 0
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 20032
;----Hit Wall
[Statedef 20032]
type = A
movetype = H
physics = N
ctrl = 0

[State 20032, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, ChangeAnim2]
type = ChangeAnim
trigger1 = anim != 5051
value = 5051

[State 20032, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 20032, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 20032, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 20032, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 20032, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3


[State 20032, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 20032, State]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = time >= 9
value = 20033

;Bounce From Wall-----------------------

[Statedef 20033]
type = A
movetype = H
physics = N
ctrl = 0

[State 20033, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -9

[State 20033, Vel X]
type = VelSet
trigger1 = Time = 0
trigger1 = p2bodydist X>= 50
x = 3

[State 20033, Vel X]
type = VelSet
trigger1 = Time = 0
trigger1 = p2bodydist X<= 50
x = 1.5

[State 20033, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 20033, Gravity]
type = VelAdd
trigger1 = 1
y = .35

[State 20033, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 20033, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 20033, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 20033, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 20033, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100
;-------------------------------------------------------------------------------
;Hit Finale Jump
[Statedef 20027]
type = S
movetype = I
physics = N
sprpriority = 1
ctrl = 0

[State 20027, Velset]
type = velset
trigger1 = animelemtime(1) = 0
x = 0
y = 0

[State 20027, Velset]
type = velset
trigger1 = animelemtime(4) = 0
x = 5
y = -7

[State 20027, VelAdd]
type = veladd
trigger1 = animelemtime(4) >= 0
y = .22

[State 20027, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0 && prevstateno != 5020027
value = 20025

[State 20027, Slomo]
type = Pause
trigger1 = p2bodydist x <= 100 && animelemtime(4) >= 0
time = 3

[State 20027, Hit Immune]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 5020027
time = -1
forceair = 0

[State 20027, Attack]
type = Changestate
trigger1 = p2bodydist x <= 50 && animelemtime(4) >= 0
value = 20028

;When Hit, Continue Anim
[Statedef 5020027]
type    = U
movetype= H
physics = U
juggle  = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 20027
time = -1
forceair = 0

[State 5, 1]
type = LifeAdd
trigger1 = time = 0
value = -GetHitVar(Damage)
kill = 0
absolute = 0

[State 50210, Changestate]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

[State 50210, Changestate]
type = changestate
trigger1 = time = 0
value = 20027
;-------------------------------------------------------------------------------
;Kick
[Statedef 20028]
type = A
movetype = A
physics = N
ctrl = 0
juggle = 0
[State 20027, VelAdd]
type = veladd
trigger1 = 1
y = .22

[State 20028, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0 && prevstateno != 5020028
value = 20026

[State 0, Hit Immune]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 5020028
time = -1
forceair = 0

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = S,NA
hitflag = MAFD
guardflag = MA
animtype = diagup
air.animtype = diagup
damage = 100,20
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S3,3
guardsound = 0,0
ground.type = High
ground.slide
ground.hit
air.hittime = 20
ground.velocity = -10,-4
air.velocity = -10,-4
sprpriority = 1
p1getp2facing = 0
fall = 1
air.juggle = 0



[State 20028, land]
type = changestate
trigger1 = pos y >= 0 && animelemtime(2)>= 0
value = 20029

;When Hit, Continue Anim
[Statedef 5020028]
type    = U
movetype= H
physics = U
juggle  = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 20028
time = -1
forceair = 0

[State 5, 1]
type = LifeAdd
trigger1 = time = 0 
value = -GetHitVar(Damage)
kill = 0
absolute = 0

[State 50210, Changestate]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

[State 50210, Changestate]
type = changestate
trigger1 = time = 0
value = 20028
;-------------------------------------------------------------------------------
;Land
[Statedef 20029]
type = S
movetype = I
physics = N
velset = 0, 0
ctrl = 0

[State 20029, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0 && prevstateno != 5020029
value = 20027

[State 20029, Hit Immune]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 5020029
time = -1
forceair = 0

[State 20029, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;When Hit, Continue Anim
[Statedef 5020029]
type    = U
movetype= H
physics = U
juggle  = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 20029
time = -1
forceair = 0

[State 5, 1]
type = LifeAdd
trigger1 = time = 0
value = -GetHitVar(Damage)
kill = 0
absolute = 0

[State 50210, Changestate]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

[State 50210, Changestate]
type = changestate
trigger1 = time = 0
value = 20029
;-------------------------------------------------------------------------------
;Ice Breaker Start
[Statedef 20035]
type = S
movetype = I
physics = N
sprpriority = 1
ctrl = 0

[State 20035, Velset]
type = velset
trigger1 = 1
x = 5
y = 0

[State 20035, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0 && prevstateno != 5020035
value = 20035

[State 20035, Hit Immune]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 5020035
time = -1
forceair = 0

[State 20035, Changestate]
type = Changestate
trigger1 = !animtime
trigger2 = p2bodydist x <= 20 && animelemtime(7) >= 0
value = 20036

;When Hit, Continue Anim
[Statedef 5020035]
type    = U
movetype= H
physics = U
juggle  = 1

[State 5020035, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 20035
time = -1
forceair = 0


[State 5020035, 1]
type = LifeAdd
trigger1 = time = 0
value = -GetHitVar(Damage)
kill = 0
absolute = 0

[State 5020035, Changestate]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

[State 5020035, Changestate]
type = changestate
trigger1 = time = 0
value = 20035
;--------------------------------
;Ice Breaker Attempt
[Statedef 20036]
type = S
physics = N
movetype = A
sprpriority = 1
ctrl = 0
velset = 0, 0

[State 20036, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0 && prevstateno != 5020036
value = 20036

[State 20036, Hitdef]
type = hitdef
trigger1 = animelemtime(3) >= 0
attr = S, ST
damage = 0, 10
p1stateno = 20037
p2stateno = 20038
hitflag = M
guardflag = LA
pausetime = 0, 0
guard.pausetime = 0, 10
ID = 20035

[State 20036, Changestate]
type = Changestate
trigger1 = !animtime
value =  0
ctrl = 1


;When Hit, Continue Anim
[Statedef 5020036]
type    = U
movetype= H
physics = U
juggle  = 1

[State 5020036, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 20036
time = -1
forceair = 0


[State 5020036, 1]
type = LifeAdd
trigger1 = time = 0
value = -GetHitVar(Damage)
kill = 0
absolute = 0

[State 5020036, Changestate]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

[State 5020036, Changestate]
type = changestate
trigger1 = time = 0
value = 20036
;-------------------------------------------------------------------------------
;Ice Breaker Slam
[Statedef 20037]
type = S
movetype = A
physics = N
sprpriority = 1
anim = 20037
velset = 0,0
ctrl = 0

[State 20037, Varset]
type = Varset
trigger1 = animelem = 11
v = 23
value = 1

[State 20037, Varset]
type = Varset
trigger1 = animelem = 12
v = 23
value = 0

[State 20037, TargetBind]
type = TargetBind
trigger1 = time = 0
time = 1
id = 20035
pos = 50,-135

[State 20037, TargetBind]
type = TargetBind
trigger1 = time = 60
time = 1
id = 20035
pos = 20,-138

[State 20037, TargetBind]
type = TargetBind
trigger1 = time = 65
time = 1
id = 20035
pos = 17,-133

[State 20037, TargetBind]
type = TargetBind
trigger1 = time = 68
time = 1
id = 20035
pos = 22,-110

[State 20037, TargetState]
type = TargetState
trigger1 = animelem = 7
id = 20035
value = 20039

[State 20037, Helper]
type = Helper
trigger1 = animelem = 11 && !numhelper(21037)
helpertype = normal 
name = "Icy Explode"
ID = 21037
stateno = 21037
pos = 30,-20
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 7320, Helper]
type = Helper
trigger1 = animelem = 11 && !numhelper(7322)
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
trigger1 = !numhelper(7324) && animelem = 12
helpertype = normal
name = "Frost Fever Timer"
ID = 7324
stateno = 7324
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 0

[State 20037, EnvShake]
type = EnvShake
trigger1 = animelem = 12
time = 30
freq = 80
ampl = -4
phase = 90
ignorehitpause = 1

[State 20037, Changestate]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;Explosion
[Statedef 21037]
type = S
movetype = I
physics = N
anim = 500
sprpriority = 2
[State 0, PalFXWiz]
type = PalFX
trigger1 = 1
time = 1
add = 0,0,20
mul = 0,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0
ignorehitpause = 1

[State 21037, destroy]
type = Destroyself
trigger1 = !animtime
;-------------------------------------------------------------------------------
;Icebreaker P2 State
[Statedef 20038]
type = S
movetype = H
physics = N
ctrl = 0

[State 20038, screenbound]
type = Screenbound
trigger1 = 1
value = 0

[State 20038, Changeanim2]
type = Changeanim2
trigger1 = time = 0
value = 20038

[State 0, AngleSet]
type = Angledraw
trigger1 = time >= 0 && time < 60
value = -90

[State 0, AngleSet]
type = Angledraw
trigger1 = time >= 60 && time < 65
value = -95

[State 0, AngleSet]
type = Angledraw
trigger1 = time >= 65 && time < 68
value = -100

[State 0, AngleSet]
type = Angledraw
trigger1 = time >= 68
value = -170

;Icebreaker P2 Fall
[Statedef 20039]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0, 10

[State 20039, screen]
type = Screenbound
trigger1 = 1
value = 0

[State 20039, Damage]
type = Lifeadd
trigger1 = time = 0
value = -120
absolute = 0

[State 20039, Changeanim2]
type = Changeanim2
trigger1 = time = 0
value = 20039

[State 20039, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100
;-------------------------------------------------------------------------------
;IBM Ghoul Summon
[Statedef 20500]
type = S
movetype = I
physics = N
sprpriority = 1
ctrl = 0
velset = 0, 0

[State 20500, ChangeAnim]
type = ChangeAnim
trigger1 = anim !=8001 && prevstateno != 5020500
value = 8001

[State 20500, Hit Immune]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 5020500
time = -1
forceair = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 12
helpertype = normal
name = "IBM Ghoul Glow 1"
ID = 24000
stateno = 23999
pos =  25 ,-10
postype = left
facing = 1
keyctrl = 0
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = animelem = 12
helpertype = normal
name = "IBM Ghoul Glow 2"
ID = 24001
stateno = 23999
pos =  -25 ,-10
postype = right
facing = 1
keyctrl = 0
ownpal = 1


[State 20500, Changestate]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;When Hit, Continue Anim
[Statedef 5020500]
type    = U
movetype= H
physics = U
juggle  = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 20500
time = -1
forceair = 0

[State 5, 1]
type = LifeAdd
trigger1 = time = 0
value = -GetHitVar(Damage)
kill = 0
absolute = 0

[State 50210, Changestate]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

[State 50210, Changestate]
type = changestate
trigger1 = time = 0
value = 20500
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;*********************************ICE BASED*************************************
;-------------------------------------------------------------------------------
;Improved Iceshatter
[Statedef 20200]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0,0

[State 20200, Enemy Far]
type = VarSet
trigger1 = animelemtime(1) = 1 && p2bodydist X > 120
v = 3  
value = 1

[State 20200, Enemy Near]
type = VarSet
trigger1 = animelemtime(1) = 1 && p2bodydist X <= 120
v = 3
value = 2


[State 20200, ChangeAnim]
type = ChangeAnim
trigger1 = prevstateno != 5020200 && anim != 220
value = 220

[State 20200, Turn]
type = Turn
trigger1 = animelemtime(1) = 1 && p2bodydist x < -10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,0
volume = 400
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 5020200
time = -1
forceair = 0

[State 20200, Forward Jump]
type = VelSet
trigger1 =animelemtime(10) >= 1 && animelemtime(10) <= 3 && Var(3) = 1
x = 5
y = -20

[State 20200, Straight Jump]
type = VelSet
trigger1 = animelemtime(10) >= 1 && animelemtime(10) <= 3 && Var(3) = 2
x = 0
y = -20


[State 20200, Gravity]
type = VelAdd
trigger1 = animelemtime(10) >= 2
x = 0
y = 1.5

[State 20200, Land]
type = ChangeState
trigger1 = Pos Y >= 0  && animelemtime(16) >= 0
value = 20201
ctrl = 0



;--When Hit, continue Anim

[Statedef 5020200]
type    = U
movetype= H
physics = U
juggle  = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 20200
time = -1
forceair = 0


[State 5, 1]
type = LifeAdd
trigger1 = time = 0
value = -GetHitVar(Damage)
kill = 0
absolute = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 0
value = 20200
ctrl = 0

;Land -----------------------------------------------
[Statedef 20201]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 20
ctrl = 0
velset = 0,0

[State 20200, Enemy Near]
type = VarSet
trigger1 = 1
v = 3
value = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = prevstateno != 221 && anim != 225
value = 225

[State 0, Helper]
type = Helper
trigger1 = animelem = 1
helpertype = normal ;player
name = "IBM Iceshatter Spike 1"
ID = 20202
stateno = 20202
pos = 60, 15
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .15
size.yscale = .35

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 0
y = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 5020201
time = -1
forceair = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

[State 0, ChangeState]
type = ChangeState
triggerall = var(58) = 1
triggerall = !animtime && roundstate = 2
trigger1 = frontedgebodydist < 80
trigger1 = p2bodydist X >= -30
value = 210
ctrl = 1
;--When Hit, continue Anim

[Statedef 5020201]
type    = U
movetype= H
physics = U
juggle  = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 20201
time = -1
forceair = 0


[State 5, 1]
type = LifeAdd
trigger1 = time = 0 
value = -GetHitVar(Damage)
kill = 0
absolute = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 0
value = 20201
ctrl = 0
;---------------------------------
;Ice Spike 1
[Statedef 20202]
type    = S
movetype= A
physics = S
juggle  = 0
anim = 227
sprpriority = 3

;Increase Damage for Frost Fever
[State 7320, AttackMulSet]
type = AttackMulSet
trigger1 = root, var(21) = 1
value = 1.5

[State 227, 1]
type = HitDef
trigger1 = animelem = 1
attr = S, NA
damage = 50, 50
animtype = Heavy
guardflag =
hitflag = MAFD
priority = 3, Hit
pausetime = 8, 8
sparkno = 0
sparkxy = -10, -76
hitsound = 0, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0, -10
airguard.velocity = -1.9,-.8
air.type = High
fall = 1
fall.recover = 0
air.velocity = 0, -10
air.hittime = 12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

;Increase Damage for Frost Fever
[State 7320, AttackMulSet]
type = AttackMulSet
trigger1 = root, var(21) = 1
value = 1.5

[State 227, 1]
type = HitDef
trigger1 = animelem = 9
attr = S, NA
damage = 75, 50
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 8, 8
sparkno = 0
sparkxy = -10, -76
hitsound = 0, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4, -2
airguard.velocity = -1.9,-.8
air.type = High
fall = 1
fall.recover = 0
air.velocity = -4, 2
air.hittime = 12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S3,4
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = S3,5
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 1
time = 20
freq = 60
ampl = -4
phase = 90

[State 0, Helper]
type = Helper
trigger1 = time = 20
helpertype = normal 
name = "IBM Iceshatter Spike 2"
ID = 20203
stateno = 20203
pos = 60,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .15
size.yscale = .35

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !animtime
;---------------------------------
;Ice Spike 2
[Statedef 20203]
type    = S
movetype= A
physics = S
juggle  = 0
anim = 227
sprpriority = 3

;Increase Damage for Frost Fever
[State 7320, AttackMulSet]
type = AttackMulSet
trigger1 = root, var(21) = 1
value = 1.5

[State 227, 1]
type = HitDef
trigger1 = animelem = 1
attr = S, NA
damage = 50, 50
animtype = Heavy
guardflag =
hitflag = MAFD
priority = 3, Hit
pausetime = 8, 8
sparkno = 0
sparkxy = -10, -76
hitsound = 0, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0, -10
airguard.velocity = -1.9,-.8
air.type = High
fall = 1
fall.recover = 0
air.velocity = 0, -10
air.hittime = 12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

;Increase Damage for Frost Fever
[State 7320, AttackMulSet]
type = AttackMulSet
trigger1 = root, var(21) = 1
value = 1.5

[State 227, 1]
type = HitDef
trigger1 = animelem = 9
attr = S, NA
damage = 75, 50
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 8, 8
sparkno = 0
sparkxy = -10, -76
hitsound = 0, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4, -2
airguard.velocity = -1.9,-.8
air.type = High
fall = 1
fall.recover = 0
air.velocity = -4, 2
air.hittime = 12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S3,4
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = S3,5
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 1
time = 20
freq = 60
ampl = -4
phase = 90

[State 0, Helper]
type = Helper
trigger1 = time = 20
helpertype = normal
name = "IBM Iceshatter Spike 3"
ID = 20204
stateno = 20204
pos = 60,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .15
size.yscale = .35

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !animtime
;---------------------------------
;Ice Spike 3
[Statedef 20204]
type    = S
movetype= A
physics = S
juggle  = 0
anim = 227
sprpriority = 3

;Increase Damage for Frost Fever
[State 7320, AttackMulSet]
type = AttackMulSet
trigger1 = root, var(21) = 1
value = 1.5

[State 227, 1]
type = HitDef
trigger1 = animelem = 1
attr = S, NA
damage = 50, 50
animtype = Heavy
guardflag =
hitflag = MAFD
priority = 3, Hit
pausetime = 8, 8
sparkno = 0
sparkxy = -10, -76
hitsound = 0, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0, -10
airguard.velocity = -1.9,-.8
air.type = High
fall = 1
fall.recover = 0
air.velocity = 0, -10
air.hittime = 12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

;Increase Damage for Frost Fever
[State 7320, AttackMulSet]
type = AttackMulSet
trigger1 = root, var(21) = 1
value = 1.5

[State 227, 1]
type = HitDef
trigger1 = animelem = 9
attr = S, NA
damage = 75, 50
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 8, 8
sparkno = 0
sparkxy = -10, -76
hitsound = 0, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4, -2
airguard.velocity = -1.9,-.8
air.type = High
fall = 1
fall.recover = 0
air.velocity = -4, 2
air.hittime = 12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S3,4
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = S3,5
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 1
time = 20
freq = 60
ampl = -4
phase = 90

[State 0, Helper]
type = Helper
trigger1 = time = 20
helpertype = normal
name = "IBM Iceshatter Spike 4"
ID = 20205
stateno = 20205
pos = 60,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .15
size.yscale = .35

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !animtime
;---------------------------------
;Ice Spike 4
[Statedef 20205]
type    = S
movetype= A
physics = S
juggle  = 0
anim = 227
sprpriority = 3

;Increase Damage for Frost Fever
[State 7320, AttackMulSet]
type = AttackMulSet
trigger1 = root, var(21) = 1
value = 1.5

[State 227, 1]
type = HitDef
trigger1 = animelem = 1
attr = S, NA
damage = 50, 50
animtype = Heavy
guardflag =
hitflag = MAFD
priority = 3, Hit
pausetime = 8, 8
sparkno = 0
sparkxy = -10, -76
hitsound = 0, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0, -10
airguard.velocity = -1.9,-.8
air.type = High
fall = 1
fall.recover = 0
air.velocity = 0, -10
air.hittime = 12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

;Increase Damage for Frost Fever
[State 7320, AttackMulSet]
type = AttackMulSet
trigger1 = root, var(21) = 1
value = 1.5

[State 227, 1]
type = HitDef
trigger1 = animelem = 9
attr = S, NA
damage = 75, 50
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 8, 8
sparkno = 0
sparkxy = -10, -76
hitsound = 0, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4, -2
airguard.velocity = -1.9,-.8
air.type = High
fall = 1
fall.recover = 0
air.velocity = -4, -2
air.hittime = 12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S3,4
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = S3,5
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 1
time = 20
freq = 60
ampl = -4
phase = 90

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !animtime























































































































































































;-------------------------------------------------------------------------------
;Start Ultimate Final
[Statedef 20900]
type = S
movetype = I
physics = N
velset = 0, 0
anim = 20000
ctrl = 0
sprpriority = 1

[State 20900, Varset]
type = varset
trigger1 = 1
v = 40
value = 1

[State 20000, lifeadd]
type = LifeAdd
trigger1 = Life < LifeMax
trigger1 = gametime%10 = 0
value = 500
persistent = 10

[State -2, StopSnd]
type = StopSnd
trigger1 = 1
channel = 4

[State 20900, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 20900, PosSet]
type = PosSet
trigger1 = time = 0
x = -120
y = 0

[State 20900, Turn]
type = Turn
trigger1 = facing = -1

[State 0, Original BG Shade Dark]
type = BGPalFX
trigger1 = time = 0
time = 200
add = 0,0,0
mul = 256,256,256
sinadd = -256,-256,-256,200
invertall = 0
color = 256

[State 0, Pos Keeper Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Pos Keeper"
ID = 20901
stateno = 20901
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Pos Keeper Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Win Pos Keeper"
ID = 20999
stateno = 20999
pos = 60,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 20900, PosSet]
type = PosSet
trigger1 = time >= 1
x = helper(20901), pos x
y = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoFG
flag2 = timerfreeze

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time > 60
flag = NoBG

[State 20900, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,6
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20900, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,6
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20900, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,6
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 20900, PlaySnd2]
type = PlaySnd
trigger1 = time = 150
value = S20,2
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20900, PlaySnd2]
type = PlaySnd
trigger1 = time = 150
value = S20,2
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20900, PlaySnd2]
type = PlaySnd
trigger1 = time = 150
value = S20,2
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0


[State 20900, PlaySnd2]
type = PlaySnd
trigger1 = time = 465
value = S20,3
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20900, PlaySnd2]
type = PlaySnd
trigger1 = time = 465
value = S20,3
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20900, PlaySnd2]
type = PlaySnd
trigger1 = time = 465
value = S20,3
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 20900, PlaySnd3]
type = PlaySnd
trigger1 = Var(40) = 1
value = S2,2
volume = 100
channel = 5
lowpriority = 1
freqmul = 1.0
loop = 1
pan = 0

[State 20900, Explod]
type = Explod
trigger1 = time = 650
anim = 20911
ID = 20911
pos = 0,0
postype = p1  
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 5
ontop = 0
ownpal = 1


[State 20900, EnvShake]
type = EnvShake
trigger1 = time = 480
time = 810
freq = 90
ampl = -7
phase = 90

[State 20900, ChangeState]
type = ChangeState
trigger1 = time = 1290
value = 20902
ctrl = 0

[State 0, Floor]
type = Explod
trigger1 = time = 700
anim = 20904
ID = 20904
pos = 0,0
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
scale = .65,.65
sprpriority = -2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Ice Quad 1]
type = Helper
trigger1 = time = 700
helpertype = normal ;player
name = "Icefloor Quad 1"
ID = 20950
stateno = 20950
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .65
size.yscale = .65

[State 0, Ice Quad 2]
type = Helper
trigger1 = time = 700
helpertype = normal ;player
name = "Icefloor Quad 2"
ID = 20952
stateno = 20952
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .65
size.yscale = .65

[State 0, Ice Quad 3]
type = Helper
trigger1 = time = 700
helpertype = normal ;player
name = "Icefloor Quad 3"
ID = 20954
stateno = 20954
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .65
size.yscale = .65

[State 0, Ice Quad 4]
type = Helper
trigger1 = time = 700
helpertype = normal ;player
name = "Icefloor Quad 4"
ID = 20956
stateno = 20956
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .65
size.yscale = .65


[State 0, BG]
type = Explod
trigger1 = time = 700
anim = 20912
ID = 20912
pos = 150,90
postype = left
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .5,.35
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

;-------------------
;Pos Keeper
[Statedef 20901]
type = S
movetype = I
physics = S
velset = 0, 0
anim = 1

[State 20901, nothitby]
type = Nothitby
trigger1 = 1
value = SCA
;-------------------
;Win Pos Keeper
[Statedef 20999]
type = S
movetype = I
physics = S
velset = 0, 0
anim = 1

[State 20901, nothitby]
type = Nothitby
trigger1 = 1
value = SCA
;-------------------------------------------------------------------------------
;Get Up From Start
[Statedef 20902]
type = S
movetype = I
physics = S
velset = 0,0
anim = 20001
ctrl = 0
sprpriority = 1

[State 20902, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 20902, PosSet]
type = PosSet
trigger1 = time >= 1
x = helper(20901), pos x
y = 0

[State 20902, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoFG
flag2 = timerfreeze
flag3 = NoBG

[State 20902, Changestate]
type = Changestate
trigger1 = animelem = 67
value = 20903
;------------------------------------------------------------------------------
;Judge Next Attack
[Statedef 20903]
type = S
movetype = I
physics = N
anim = 8000
ctrl = 0

[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 3
range = 1,4

[State 0, VarRandom2] ;Incase Arthas can't summon a Valkier
type = VarRandom
trigger1 = 1
v = 2
range = 1,3

[State 20910, PosSet]
type = PosSet
trigger1 = 1
x = helper(20901), pos x
y = 0

[State 20902, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 20903, VarAdd]
type = Varadd
trigger1 = time = 0
v = 45
value = 1

[State 20903, Goto Dash]
type = Changestate
trigger1 = time = 1 && Var(45) < 4 && Var(3) = 1
trigger2 = time = 1 && Var(45) < 4 && Var(3) = 3
trigger2 = numhelper(20920) >=1 && Var(2) = 1
value = 20910

[State 20903, Goto Jump]
type = Changestate
trigger1 = time = 1 && Var(45) < 4 && Var(3) = 2
trigger2 = time = 1 && Var(45) < 4 && Var(3) = 3
trigger2 = numhelper(20920) >=1 && Var(2) = 2
value = 20915


[State 20903, Goto Summon]
type = Changestate
trigger1 = time = 1 && Var(45) < 4 && Var(3) = 3 && !numhelper(20920)
value = 20920

[State 20903, Goto Horrible Technique]
type = Changestate
trigger1 = time = 1 && Var(45) < 4 && Var(3) = 4
trigger2 = time = 1 && Var(45) < 4 && Var(3) = 3
trigger2 = numhelper(20920) >=1 && Var(2) = 3
value = 20925

[State 20903, Goto Vulnerability State]
type = Changestate
trigger1 = time = 1 && Var(45) >= 4
value = 20970
;-------------------------------------------------------------------------------
;Charge Up Dash Attack
[Statedef 20910]
type = S
movetype = I
physics = S
anim = 20910
ctrl = 0
sprpriority = 1

[State 20911, VarSet]
type = Varset
trigger1 = time = 0
v = 41
value = 0

[State 0, Explod]
type = Explod
trigger1 = time = 30
anim = 20930
ID = 20930
pos = 22,-60
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermovetime = 99999
pausemovetime = 99999
scale = .5,.5
sprpriority = 2
ownpal = 1

[State 20910, PlaySnd]
type = PlaySnd
trigger1 = time = 48
value = S9,2
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20910, PlaySnd]
type = PlaySnd
trigger1 = time = 48
value = S9,2
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 20910, Screenbound]
type = Screenbound
trigger1 = 1
value = 0

[State 20910, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 20910, PosSet]
type = PosSet
trigger1 = 1
x = helper(20901), pos x
y = 0

[State 20903, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoFG
flag2 = timerfreeze
flag3 = NoBG

[State 20903, Changestate]
type = Changestate
trigger1 = !animtime
value = 20911
;-------------------------------------------------------------------------------
;Dash Attack Start
[Statedef 20911]
type = S
movetype = I
physics = N
anim = 20931
sprpriority = 1
ctrl = 0

[State 20911, Turn]
type = turn
trigger1 = time = 0 && facing = -1

[State 20911, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 20911, PosSet]
type = PosSet
trigger1 = time = 0
x = -150
y = 0

[State 20911, Velset]
type = VelSet
trigger1 = time = 0
x = 0
y = 0
[State 20911, VelSet]
type = VelSet
trigger1 = time = 14 && Var(41) = 1
x = 15
y = 0

[State 20911, VelSet]
type = VelSet
trigger1 = time = 14 && Var(41) = 2
x = 20
y = 0

[State 20911, VelSet]
type = VelSet
trigger1 = time = 14 && Var(41) = 3
x = 30
y = 0

[State 20911, VarAdd]
type = VarAdd
trigger1 = time = 0
v = 41
value = 1

[State 20911, Changestate]
type = ChangeState
trigger1 = p2bodydist x <= 30
value = 20912
;-------------------------------------------------------------------------------
;Dash Attack
[Statedef 20912]
type = S
movetype = A
physics = N
velset = 0, 0
sprpriority = 1
ctrl = 0
anim = 20932

[State 20911, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 20912, HitDef]
type = HitDef
trigger1 = animelemtime(3) = 0
attr = S,NA
hitflag = MFD
guardflag = M
animtype = light
air.animtype = light
damage = 0,0
pausetime = 0 ,0
ground.type = High
ground.slidetime = 0
ground.hittime = 0
guard.hittime = 10
guard.slidetime = 20
ground.velocity = -3.5,-4
guard.velocity = -10
sprpriority = 1
fall = 1
fall.recover = 1
fall.recovertime = 20
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 90

[State 20912, Changestate]
type = ChangeState
trigger1 = !animtime && Var(41) <3 ;lol, it's a heart.
value = 20911

[State 20912, Changestate] ;Go Back to judge next attack
type = Changestate
trigger1 = !animtime && Var(41) = 3
value = 20903
;-------------------------------------------------------------------------------
;Charge Up Jump Attack
[Statedef 20915]
type = S
movetype = I
physics = S
anim = 20910
ctrl = 0
sprpriority = 1

[State 20915, VarSet]
type = Varset
trigger1 = time = 0
v = 42
value = 0

[State 20915, Helper]
type = Helper
trigger1 = time = 30
helpertype = normal
name = "Blue Glow"
ID = 20916
stateno = 20916
pos = 22,-60
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .5
size.yscale = .5

[State 20915, PlaySnd]
type = PlaySnd
trigger1 = time = 48
value = S9,2
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20915, PlaySnd]
type = PlaySnd
trigger1 = time = 48
value = S9,2
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 20915, Screenbound]
type = Screenbound
trigger1 = 1
value = 0

[State 20915, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 20915, PosSet]
type = PosSet
trigger1 = 1
x = helper(20901), pos x
y = 0

[State 20915, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoFG
flag2 = timerfreeze
flag3 = NoBG

[State 20915, Changestate]
type = Changestate
trigger1 = !animtime
value = 20917
;---------------------------------------------------
;Glow
[Statedef 20916]
type = S
movetype = I
physics = N
sprpriority = 2
anim = 20930

[State 20916, PalFX]
type = PalFX
trigger1 = time = 0 && ishelper(20916)
time = -1
add = 0,0,0
mul = 0,0,256
sinadd = 0,0,0,1
invertall = 0
color = 256

[State 20916, PalFX]
type = PalFX
trigger1 = time = 0 && ishelper(20925)
time = -1
add = 0,0,0
mul = 256,0,200
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 20916, PalFXWiz]
type = PalFX
trigger1 = time = 0 && ishelper(20926)
time = -1
add = 50,0,0
mul = 256,0,0
sinadd = 0,0,0,1
invertall = 0
color = 0


[State 20916, Destroy]
type = Destroyself
trigger1 = !animtime
;----------------------------------------------------
;Jump Down
[Statedef 20917]
type = S
movetype = I
physics = N
anim = 20933
ctrl = 0
sprpriority = 1

[State 20917, VarAdd]
type = Varadd
trigger1 = time = 0
v = 42
value = 1

[State 20917, Screenbound]
type = Screenbound
trigger1 = 1
value = 0

[State 20917, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
x = enemynear, pos x - 40
y = enemynear, pos y -250

[State 20917, VelSet]
type = VelSet
trigger1 = time = 30
x = 0
y = 35

[State 20917, Velset]
type = Velset
trigger1 = Pos Y >= -30
x = 0
y = 0

[State 20917, Changestate]
type = Changestate
trigger1 = pos Y >= -30
value = 20918
;-------------------------------------------------------------------------------
;Jump Attack
[Statedef 20918]
type = S
movetype = A
physics = N
ctrl = 0
sprpriority = 1
velset = 0,0
anim  = 20934

[State 20918, Screenbound]
type = Screenbound
trigger1 = 1
value = 0

[State 20918, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, HitDef]
type = HitDef
trigger1 = animelemtime(3) = 0
attr = S,SA
hitflag = MAF
guardflag = 
animtype = light
air.animtype = light
damage = 0,0
pausetime = 0 ,0
hitsound = S3,2
ground.type = High
ground.slidetime = 10
ground.hittime = 15
air.hittime = 20
ground.velocity = -5,3
air.velocity = -5,2
fall = 1

[State 20918, Changestate]
type = Changestate
trigger1 = !animtime && Var(42) < 4
value = 20917

[State 20918, Go Back To Judge Next Attack]
type = Changestate
trigger1 = !animtime && Var(42) = 4
value = 20903
;-------------------------------------------------------------------------------
;Summon Finale Valkier
[Statedef 20920]
type = S
movetype = I
physics = N
sprpriority = 1
ctrl = 0
velset = 0, 0
anim = 8003

[State 20920, PosSet]
type = PosSet
trigger1 = 1
x = helper(20901), pos x
y = 0

[State 20918, Screenbound]
type = Screenbound
trigger1 = 1
value = 0

[State 20920, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 20915, Helper]
type = Helper
trigger1 = time = 30
helpertype = normal
name = "Purple Glow"
ID = 20925
stateno = 20916
pos = 22,-60
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .5
size.yscale = .5

[State 20915, PlaySnd]
type = PlaySnd
trigger1 = time = 48
value = S9,2
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20915, PlaySnd]
type = PlaySnd
trigger1 = time = 48
value = S9,2
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 20920, Helper]
type = Helper
trigger1 = time = 100 && !numhelper(20920)
helpertype = normal
name = "Finale Valkier"
ID = 20920
stateno = 8049
pos = 50,-75
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 20920, Changestate]
type = Changestate
trigger1 = time = 180
value = 20903
;-------------------------------------------------------------------------------
;Unwanted Red Technique
[Statedef 20925]
type = S
movetype = I
physics = N
sprpriority = 1
ctrl = 0
velset = 0, 0
anim = 8003

[State 20925, Varset]
type = Varset
trigger1 = time = 0
v = 43
value = 0

[State 20925, Screenbound]
type = Screenbound
trigger1 = 1
value = 0

[State 20925, ChangeAnim]
type = ChangeAnim
trigger1 = time = 100
value = 8007

[State 20925, PlaySnd]
type = PlaySnd
trigger1 = time = 48
value = S9,2
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20925, PlaySnd]
type = PlaySnd
trigger1 = time = 48
value = S9,2
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 20925, PosSet]
type = PosSet
trigger1 = numhelper(20901)
x = helper(20901), pos x
y = 0

[State 20925, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 20925, Helper]
type = Helper
trigger1 = time = 42
helpertype = normal
name = "Red Glow"
ID = 20926
stateno = 20916
pos = 22,-60
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .5
size.yscale = .5

;-----------------------
;Summoning Frozen Orbs
[State 20925, Orb 1]
type = Helper
trigger1 = time = 148
trigger2 = var(43) = 2 && !numhelper(28100)
helpertype = normal
name = "Orb 1"
ID = 28100
stateno = 8100
pos = -50, -50
postype = left
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .5
size.yscale = .5


[State 20925, Orb 2]
type = Helper
trigger1 = time = 168
trigger2 = var(43) = 2 && !numhelper(28101)
helpertype = normal
name = "Orb 2"
ID = 28101
stateno = 8100
pos = -50, -50
postype = left
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .5
size.yscale = .5



;---------------------------------
;Summon Frost Mines
[State 20925, Mine 1]
type = Helper
trigger1 = time >= 148 && !numhelper(28120) && !numhelper(28122)
helpertype = normal
name = "Mine 1"
ID = 28120
stateno = 8120
pos = 0, -50
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .5
size.yscale = .5


[State 20925, Mine 2]
type = Helper
trigger1 = numhelper(28120)
trigger1 = helper(28120), time = 20
helpertype = normal
name = "Mine 2"
ID = 28121
stateno = 8120
pos = 0, -50
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .5
size.yscale = .5


[State 20925, Mine 3]
type = Helper
trigger1 = numhelper(28121)
trigger1 = helper(28121), time = 20
helpertype = normal
name = "Mine 3"
ID = 28122
stateno = 8120
pos = 0, -50
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .5
size.yscale = .5

[State 20925, end]
type = Changestate
trigger1 = Var(43) = 4
value = 20903
;-------------------------------------------------------------------------------
;Vulnerability State
[Statedef 20970]
type = S
movetype = I
physics = N
sprpriority = 1
velset = 0,0
ctrl = 0

[State 20970, Varset]
type = Varset
trigger1 = 1
v = 45
value = 0


[State 20970, PosSet]
type = PosSet
trigger1 = 1
x = helper(20901), pos x
y = 0

[State 20970, Hit Immune]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 5020970
time = -1
forceair = 0

[State 20970, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0 && prevstateno != 5020970
value = 20000

[State 20970, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(1) = 0
value = S0,6
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20970, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(1) = 0
value = S0,6
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20970, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,6
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, Helper]
type = Helper
trigger1 = !numhelper(20972)
helpertype = normal
name ="Vuln Timer"
ID = 20972
stateno = 20972

[State 20970, Changestate]
type = Changestate
trigger1 = helper(20972), time = 300
value = 20902


;When Hit, Continue Anim
[Statedef 5020970]
type    = U
movetype= H
physics = U
juggle  = 1
ctrl = 0

[State 5020970, HitOverride]
type = HitOverride
trigger1 = 1
attr = SSCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 20970
time = -1
forceair = 0

[State 5020970, 1]
type = LifeAdd
trigger1 = time = 0
value = -GetHitVar(Damage)
kill = 1
absolute = 0

[State 5020970, Changestate]
type = changestate
trigger1 = time = 0
value = 20970
;-------------------------------------------------------------------------------
;Vulnerability Timer
[Statedef 20972]
type = S
movetype = I
physics = S
anim = 1

[State 20972, Destroy]
type = Destroyself
trigger1 = time = 301
;-------------------------------------------------------------------------------
;Icefloor Quad 1
[Statedef 20950]
type = S
movetype = A
physics = N
velset = 0,0
anim = 20900
sprpriority = -1

[State 20950, PlaySnd]
type = PlaySnd
trigger1 = Var(40) = 1
value = S2,2
volume = 100
channel = 5
lowpriority = 1
freqmul = 1.0
loop = 1
pan = 0

[State 0, HitDef]
type = HitDef
trigger1 = root, stateno != 20900 && root, stateno != 20902 && roundstate = 2
attr = S,HT
hitflag = MAFD
guardflag = 
p1stateno = 20951
p2stateno = 20960
guard.dist = 0

[State 20950, Changestate]
type = changestate
trigger1 = helper(20952), stateno = 20953
value = 20951
;-------------------------------------------------------------------------------
;Quad 1 Crash
[Statedef 20951]
type = S
movetype = I
physics = N
anim = 20905
sprpriority = -1

[State 20951, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = S21,0
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20951, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = S21,0
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20951, PlaySnd]
type = PlaySnd
trigger1 = time = 30
value = S21,0
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20951, PlaySnd]
type = PlaySnd
trigger1 = time = 160
value = S21,0
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 20951, PlaySnd2]
type = PlaySnd
trigger1 = time = 80
value = S21,1
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20951, PlaySnd2]
type = PlaySnd
trigger1 = time = 80
value = S21,1
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0
[State 20951, PlaySnd2]
type = PlaySnd
trigger1 = time = 120
value = S21,1
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 20951, destroy]
type = DestroySelf
trigger1 = !animtime

;-------------------------------------------------------------------------------
;Icefloor Quad 2
[Statedef 20952]
type = S
movetype = A
physics = N
velset = 0,0
anim = 20901
sprpriority = 0

[State 20950, Changestate]
type = changestate
trigger1 = helper(20950), stateno = 20951
value = 20953

[State 0, HitDef]
type = HitDef
trigger1 = root, stateno != 20900 && root, stateno != 20902 && roundstate = 2
attr = S,HT
hitflag = MAFD
guardflag =
p1stateno = 20953
p2stateno = 20960
guard.dist = 0
;-------------------------------------------------------------------------------
;Quad 2 Crash
[Statedef 20953]
type = S
movetype = I
physics = N
anim = 20906
sprpriority = -1



[State 20951, destroy]
type = DestroySelf
trigger1 = !animtime

;-------------------------------------------------------------------------------
;Icefloor Quad 3
[Statedef 20954]
type = S
movetype = I
physics = N
velset = 0,0
anim = 20902
sprpriority = -3

[State 20950, Changestate]
type = changestate
trigger1 = helper(20950), stateno = 20951
trigger2 = helper(20952), stateno = 20953
value = 20955
;-------------------------------------------------------------------------------
;Quad 3 Crash
[Statedef 20955]
type = S
movetype = I
physics = N
anim = 20907
sprpriority = -3

[State 20955, destroy]
type = DestroySelf
trigger1 = !animtime
;-------------------------------------------------------------------------------
;Icefloor Quad 4
[Statedef 20956]
type = S
movetype = I
physics = N
velset = 0,0
anim = 20903
sprpriority = -4


[State 20956, Changestate]
type = changestate
trigger1 = helper(20950), stateno = 20951
trigger2 = helper(20952), stateno = 20953
value = 20957
;-------------------------------------------------------------------------------
;Quad 4 Crash
[Statedef 20957]
type = S
movetype = I
physics = N
anim = 20908
sprpriority = -4

[State 20955, destroy]
type = DestroySelf
trigger1 = !animtime
;-------------------------------------------------------------------------------
;Pitfall Death
[Statedef 20960]
type = S
movetype = H
physics = N

[State 20960, Changeanim2]
type = Changeanim2
trigger1 = time = 0
value =  20913

[State 20960, Velset]
type = Velset
trigger1 = time =  0
x = 0
y = 3

[State 20960, LifeSet]
type = LifeSet
trigger1 = time = 60
value = 0

[State 20960, selfstate]
type = selfstate
trigger1 = time = 120
value = 5150
ctrl = 0

;-------------------------------------------------------------------------------
;ShadowImage Effect
[Statedef 21000]
type = S
movetype = I
physics = S
sprpriority = 4


[State 21000, ChangeAnim]
type = ChangeAnim
trigger1 = anim != root, anim
value = root, anim

[State 21000, BindToRoot]
type = BindToRoot
trigger1 = 1
facing = 1
pos = Time*.05, time*.25

[State 21000, Scale]
type = AngleDraw
trigger1 = time = 0
scale = 1, 1

[State 21000, Scale]
type = AngleDraw
trigger1 = time >=1
scale = 1+(time*.01), 1+(time*.005)

[State 21000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 21000, Trans]
type = Trans
trigger1 = time >= 1
trans = addalpha
alpha = 256 - Time*6 ,0 + Time*6

[State 21000, Changestate]
type = Changestate
trigger1 = time = 60
value = 21000

[State 21000, DestroySelf]
type = DestroySelf
trigger1 = root, stateno = 5150






















