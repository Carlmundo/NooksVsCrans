;---------------------------------------------------------------------------
; Lose by Time Over
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

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State NOLOOKY]
type = ScreenBound
trigger1 = numhelper(20000)
trigger2 = numexplod(5302)
trigger3 = var(1)
value = 0

[State 180, 1]
type = ChangeState
trigger1 = !numhelper(20000)
trigger1 = !numexplod(5302)
trigger1 = !var(1)
value = 181+!!numhelper(188)

;---------------------------------------------------------------------------
; Win pose 1 - Light up a cigarette
[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State FIRE]
type = Helper
trigger1 = !animelemtime(2)
helpertype = normal
name = "Breath"
id = 189
stateno = 189
pos = 23,-48
ownpal = 1
persistent = 0

[State Speech]
type = PlaySnd
triggerall = prevstateno!=183
trigger1 = animelem=13
value = s180,0
channel = 0
persistent = 0

[State ROUNDNOTOVERYET]
type = AssertSpecial
trigger1 = time<210
trigger2 = prevstateno=183
flag = roundnotover

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State GRABIT]
type = ChangeState
triggerall = prevstateno=183
trigger1 = time>=120
value = 184



; Walk towards gun
[Statedef 182]
type = S
physics = S
sprpriority = 0
anim = 20

[State MOVEIT]
type = VelSet
trigger1 = 1
x = const(velocity.walk.fwd.x)

[State TURN]
type = TURN
triggerall = !time
trigger1 = fvar(22) < 0

[State ROUNDNOTOVERYET]
type = AssertSpecial
trigger1 = 1
flag = roundnotover

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State GRABIT]
type = ChangeState
trigger1 = fvar(22) <= 10
value = 183


; Grab the Gun
[Statedef 183]
type = S
physics = S
sprpriority = 0
anim = 183
velset = 0,0

[State DoneGettingTheGun]
type = ChangeAnim
triggerall = anim=183
trigger1 = !animtime
value = 181

[State ROUNDNOTOVERYET]
type = AssertSpecial
trigger1 = 1
flag = roundnotover

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State GRABIT]
type = ChangeState
triggerall = anim=181
trigger1 = time>=60
value = 181


; It's good to be back...
[Statedef 184]
type = S
physics = S
sprpriority = 0
anim = 182
velset = 0,0

[State Speech]
type = PlaySnd
trigger1 = !time
value = s180,0
channel = 0

[State ROUNDNOTOVERYET]
type = AssertSpecial
trigger1 = time<150
flag = roundnotover

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1



;GUN
[Statedef 188]
type = A
ctrl = 0
physics = N
anim = 184
sprpriority = -1
velset = 0,-10

[State DISTANCE]
type = ParentVarSet
trigger1 = 1
fvar(22) = abs(rootdist x)

[State FALL]
type = VelAdd
trigger1 = anim=184
y = .3

[State CHANGEIT]
type = ChangeAnim
triggerall = anim=184
triggerall = vel y > 0
trigger1 = pos y >= -15
value = 185

[State RIDINGSPINNAHZ]
type = AngleSet
trigger1 = 1
value = (-time*45)*(anim=184)
[State SPINNAHZ]
type = AngleDraw
trigger1 = anim=184

[State STOP]
type = VelSet
trigger1 = anim=185
y = 0
[State STOP]
type = PosSet
trigger1 = anim=185
y = 0

[State DIE]
type = DestroySelf
triggerall = anim = 185
triggerall = root,anim = 183
trigger1 = root,animelem = 2

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901



;-=Fire breath lighter=-
[Statedef 189]
type = A
ctrl = 0
physics = N
anim = 1410
sprpriority = -1
velset = 3,1

[State Noize]
type = PlaySnd
trigger1 = !time
value = s2,3
channel = 2
volume = 128

[State SLOOOWDOWN]
type = VelMul
trigger1 = 1
x = .95
y = .95

[State Rise?]
type = VelAdd
trigger1 = 1
y = -0.064375

[State UP]
type = VelMul
triggerall = vel y > 0
trigger1 = pos y >= 0
y = -.01

[State FireDoesn'tHaveShadows]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State FADE]
type = Trans
trigger1 = time>=44
trans = addalpha
alpha = (256-16*(time-44))*((256-16*(time-44))>=0),(16*(time-44))*(16*(time-44)>=0)

[State Disappear]
type = DestroySelf
trigger1 = time>=60

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;---------------------------------------------------------------------------
; Introduction
[Statedef 190]
type = S
ctrl = 0
anim = 0;190
velset = 0,0

[State 190, 2] ;assert this until you want "round 1, fight" to begin
type = assertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State THEKID]
type = VarSet
triggerall = teammode!=simul
triggerall = enemynear,name="IWBTG"
triggerall = enemynear,authorname="fhqwhgads7"
trigger1 = !(enemynear,teammode=simul)
trigger2 = enemynear(enemy,teammode=simul),name="IWBTG"
trigger2 = enemynear(enemy,teammode=simul),authorname="fhqwhgads7"
var(50) = 1

[State 190, 4] ;Change to stand state
type = ChangeState
trigger1 = enemy,stateno=195
trigger2 = enemy,stateno!=[190,199]
value = 191*(enemy,stateno=195)
ctrl = (roundstate=2)


;---------------------------------------------------------------------------
; The Kid Intro
[Statedef 191]
type = S
ctrl = 0
velset = 0,0

[State 190, 2]
type = assertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State SummonDialogue]
type = Helper
triggerall = var(7)<12
trigger1 = !numhelper(7000)
helpertype = normal
name = "Dialogue"
ID = 7000
stateno = 7000
pos = 0,0

[State ADD]
type = VarAdd
triggerall = !time
triggerall = var(7)<12
trigger1 = !var(7)
trigger1 = !var(6)
trigger1 = var(6):=250
trigger2 = var(7)=1
trigger2 = !var(6)
trigger2 = var(6):=416
trigger3 = var(7)=2
trigger3 = !var(6)
trigger3 = var(6):=302
trigger4 = var(7)=3
trigger4 = !var(6)
trigger4 = var(6):=195
trigger5 = var(7)=4
trigger5 = !var(6)
trigger5 = var(6):=88
trigger6 = var(7)=5
trigger6 = !var(6)
trigger6 = var(6):=685
trigger7 = var(7)=6
trigger7 = !var(6)
trigger7 = var(6):=150
trigger8 = var(7)=7
trigger8 = !var(6)
trigger8 = var(6):=276
trigger9 = var(7)=8
trigger9 = !var(6)
trigger9 = var(6):=237
trigger10 = var(7)=9
trigger10 = !var(6)
trigger10 = var(6):=250
trigger11 = var(7)=10
trigger11 = !var(6)
trigger11 = var(6):=263
trigger12 = var(7)=11
trigger12 = !var(6)
var(7) = 1

[State DECREASE]
type = VarAdd
triggerall = time
trigger1 = var(6)>-1
var(6) = -1

[State Speech]
type = PlaySnd
triggerall = var(7)
triggerall = !(var(7)%2)
trigger1 = !time
trigger1 = var(7)<=11
value = s5,(var(7)/2)-1
channel = 0

[State 190, 4] ;Change to stand state
type = ChangeState
trigger1 = enemy,stateno!=[190,199]
trigger2 = var(7)>=12
trigger3 = !(enemy,alive)
value = 0

[State RECURSION]
type = ChangeState
trigger1 = !var(6)
trigger1 = var(7)<12
value = 191


;Regular Intro
[Statedef 192]
anim = 1100
velset = 0,30
ctrl = 0

[State AmuletCheck]
type = Helper
triggerall = var(49)
triggerall = !var(26)
triggerall = !var(15)
trigger1 = !numhelper(40000)
name = "AmuletCheck"
ID = 40000
StateNo = 40000
postype = p2
ownpal=1

[State NOLOOKINGUP]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 190, 2]
type = assertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State SET]
type = PosSet
trigger1 = !time
y = -7200

[State WHOOSH]
type = PlaySnd
trigger1 = !time
value = s190,0
channel = 0

[State LAND]
type = ChangeState
trigger1 = pos y >= -5
value = 193


;Part 3
[Statedef 193]
Type = C
movetype = I
physics = C
anim = 1101
velset = 0,0

[State 190, 2]
type = assertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State ISAIDLAND]
type = PosSet
trigger1 = !time
y = 0

[State Shake'N'Bake]
type = EnvShake
trigger1 = !time
time = 20
freq = 150
ampl = -5
[State Thump]
type = PlaySnd
trigger1 = !time
value = s2,4
channel = 3
abspan = 0

[State ShockwaveStuff]
type = Explod
trigger1 = !time
anim = f62
id = 62
sprpriority = 2
bindtime = -1
ownpal = 1

[State CHANGEIT]
type = ChangeAnim
triggerall = anim=1101
trigger1 = !animtime
value = 12

[State LAND]
type = ChangeState
trigger1 = anim=12
trigger1 = !animtime
value = 0






;---------------------------------------------------------------------------
; Taunt
; CNS difficulty: easy
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, 2]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;PUNCH'EM
[Statedef 200]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 200
sprpriority = 1

[State Whoosh]
type = PlaySnd
trigger1 = !time
value = S0,0
channel = 1

[State ATTACK]
type = HitDef
trigger1 = !MoveContact
attr = S,NA
damage = 17,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4,miss
pausetime = 12,12
sparkno = 1
sparkxy = -10,-37
hitsound = S1,0
guardsound = S1,3
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4.3
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
getpower = 0,0
palfx.time = 2
palfx.add = 255,0,0
palfx.color = 0

[State DONE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;PUNCH'EM AGAIN
[Statedef 210]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 210
sprpriority = 1

[State Whoosh]
type = PlaySnd
trigger1 = !time
value = S0,1
channel = 1

[State ATTACK]
type = HitDef
trigger1 = !MoveContact
attr = S,NA
damage = 30,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4,miss
pausetime = 12,12
sparkno = 2
sparkxy = -10,-37
hitsound = S1,1
guardsound = S1,3
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -6.1
airguard.velocity = -2.3,-.8
air.type = High
air.velocity = -2,-3
air.hittime = 12
getpower = 0,0
palfx.time = 2
palfx.add = 255,0,0
palfx.color = 0

[State DONE]
type = ChangeState
trigger1 = !animTime
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;KICK'EM
[Statedef 220]
type = S
movetype = a
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 220
sprpriority = 1

[State Whoosh]
type = PlaySnd
trigger1 = !time
value = S0,2
channel = 1

[State MOVElol]
type = Posadd
trigger1 = !time
x = 16

[State ATTACK]
type = HitDef
trigger1 = !MoveContact
attr = S,NA
damage = 43,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4,miss
pausetime = 12,12
sparkno = 3
sparkxy = -10,-37
hitsound = S1,2
guardsound = S1,3
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -8,-2
airguard.velocity = -2.9,-.8
air.type = High
air.velocity = -4,-3
air.hittime = 12
getpower = 0,0
palfx.time = 2
palfx.add = 255,0,0
palfx.color = 0

[State DONE]
type = ChangeState
trigger1 = !animTime
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Poke'em
[Statedef 300]
type = C
movetype = a
physics = C
juggle = 5
ctrl = 0
anim = 300
sprpriority = 2

[State Noize]
type = PlaySnd
trigger1 = !Time
value = S0,0

[State ATTACK]
type = HitDef
trigger1 = !movecontact
attr = C, NA
damage = 9
priority = 3
animtype = Light
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = 1
sparkxy = -10,-26
hitsound = S1,0
guardsound = S1,3
ground.type = Low
ground.slidetime = 4
ground.hittime  = 10
ground.velocity = -4
air.velocity = -1.5,-3
getpower = 0,0
palfx.time = 2
palfx.add = 255,0,0
palfx.color = 0

[State DONE]
type = ChangeState
trigger1 = !animTime
value = 11
ctrl = 1


;---------------------------------------------------------------------------
;Low Punch'em
[Statedef 310]
type = C
movetype = a
physics = C
juggle = 6
ctrl = 0
anim = 310
sprpriority = 2

[State NOISE]
type = PlaySnd
trigger1 = !Time
value = S0,1

[State ATTACK]
type = HitDef
trigger1 = !movecontact
attr = C, NA
damage = 25
animtype = Medium
hitflag = MAF
guardflag = M
pausetime = 12,12
sparkno = 2
sparkxy = -10,-26
hitsound = S1,1
guardsound = S1,3
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7
air.velocity = -3,-4
getpower = 0,0
palfx.time = 2
palfx.add = 255,0,0
palfx.color = 0

[State DONE]
type = ChangeState
trigger1 = !animTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Trip'em
[Statedef 320]
type = C
movetype = A
physics = C
juggle  = 7
ctrl = 0
anim = 320
sprpriority = 2

[State NOISE]
type = PlaySnd
trigger1 = !Time
value = S0,2

[State ATTACK]
type = HitDef
trigger1 = !movecontact
attr = C,NA
damage = 43
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = 3
sparkxy = -5,-14
hitsound = S1,2
guardsound = S1,3
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1
getpower = 0,0
palfx.time = 2
palfx.add = 255,0,0
palfx.color = 0

[State DONE]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1


;---------------------------------------------------------------------------
;Double Kick
[Statedef 400]
type = A
movetype = A
physics = A
juggle  = 4
ctrl = 0
anim = 400
sprpriority = 2

[State NOIZE]
type = PlaySnd
trigger1 = !time
trigger2 = time=16
value = s0,1

[State MOVEIT]
type = VelSet
triggerall = !time
trigger1 = vel y > -6
y = -6

[State MOVEIT]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State MOVEIT]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State MOVEIT]
type = VelSet
trigger1 = command != "holdback"
trigger1 = command != "holdfwd"
trigger2 = command = "holdfwd"
trigger2 = command = "holdback"
x = 0

[State ATTACK]
type = HitDef
trigger1 = !AnimElemTime(2)
attr = A,NA
damage = 30
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = 3
sparkxy = 10,-10
hitsound = S1,1
guardsound = S1,3
animtype = Heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 14
air.velocity = 10.5,-4
p2facing = -1
palfx.time = 2
palfx.add = 255,0,0
palfx.color = 0

[State ATTACK]
type = HitDef
trigger1 = !AnimElemTime(8)
attr = A,NA
damage = 30
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = 3
sparkxy = -10,-10
hitsound = S1,2
guardsound = S1,3
animtype = Heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -14
air.velocity = -10.5,-4
p2facing = 1
palfx.time = 2
palfx.add = 255,0,0
palfx.color = 0



;---------------------------------------------------------------------------
;TELEPORT
[Statedef 500]
type = A
ctrl = 0
anim = 500
physics = N
movetype = I
velset = 0,0

[State ABORTED?]
type = VarSet
trigger1 = !time
var(13) = (prevstateno=502)

[State SPIN]
type = PlaySnd
trigger1 = !time
value = s2,11
[State SPIN]
type = PlaySnd
trigger1 = !time
value = s2,12

[State Grenade]
type = Helper
triggerall = prevstateno=5300
trigger1 = !time
helpertype = normal
name = "Grenade"
ID = 654
stateno = 653
pos = 0,-41
facing = 1
ownpal = 1

[State LowerHealth]
type = LifeSet
triggerall = prevstateno!=5300
triggerall = prevstateno!=502
trigger1 = !time
;trigger1 = life > (lifemax*(1+(var(0)=1)))/3
trigger1 = var(0)
value = 1+(((lifemax-1)*(1+(var(0)=1)))/3)

[State RESET]
type = VarSet
triggerall = prevstateno!=502
trigger1 = !time
var(55) = 0
[State NEXT]
type = VarSet
triggerall = prevstateno!=502
trigger1 = !time
var(3) = var(0)+1

[State FLASHY]
type = PalFX
triggerall = time<8
trigger1 = !(time%2)
time = 1
add = 255,255,255

[State NOSPIN]
type = AngleSet
trigger1 = !time
value = 0
[State VOIP]
type = AngleDraw
trigger1 = time<8
scale = 2-.25*time,.5+.25*time

[State STICKY]
type = PosSet
trigger1 = time>=8
x = 0
y = 0

[State DONE]
type = ChangeState
trigger1 = time>=8
value = 501



[Statedef 501]
type = A
ctrl = 0
anim = 0
physics = N
movetype = I
velset = 0,0

[State FLASHY]
type = PalFX
triggerall = time<8
trigger1 = !(time%2)
time = 1
add = 255,255,255

[State SPIN]
type = AngleSet
trigger1 = !time
value = 0
[State VOIP]
type = AngleDraw
trigger1 = time<8
scale = 2-.25*(8-time),.5+.25*(8-time)

[State DONE]
type = ChangeState
trigger1 = time>=8
value = ifelse(var(0)=2,600,503)*!var(13)
ctrl = var(13)


[Statedef 502]
anim = 500

[State TELEPOR']
type = ChangeState
trigger1 = 1
value = 500


;---------------------------------------------------------------------------
; Stand
[Statedef 503]
type = S
physics = S
anim = -!anim
ctrl = 0

[State STOP]
type = VelSet
trigger1 = !Time
x = 0
y = 0

[State TURNING]
type = Turn
trigger1 = p2dist x < 0

[State JUMP]
type = ChangeState
trigger1 = time>=120
value = 510

[State DONE]
type = ChangeState
trigger1 = roundstate>2
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Jump Up
[Statedef 510]
type = A
physics = A
velset = 0,-9
anim = 41

[State CHANGEIT]
type = ChangeAnim
trigger1 = anim = 41
trigger1 = vel y > -1
value = 44

[State NEXT]
type = ChangeState
trigger1 = vel y > 0
value = 1052




;---------------------------------------------------------------------------
; Phase 3 Stand
[Statedef 600]
type = S
physics = S
anim = -!anim
ctrl = 0
velset = 0,0

[State NOTHIT]
type = VarSet
trigger1 = !time
var(53)=0

[State TURNING]
type = Turn
trigger1 = p2dist x < 0

[State MiniMoon]
type = Helper
triggerall = var(50)
triggerall = prevstateno!=501
trigger1 = time>=150
helpertype = normal
name = "Moon"
ID = 3200
stateno = 3200
pos = 50,-1000
postype = p2
facing = -1
ownpal = 1
persistent = 0

[State Grenade]
type = Helper
triggerall = !var(50)
triggerall = prevstateno!=501
trigger1 = time>=150
helpertype = normal
name = "Grenade"
ID = 655
stateno = 653
pos = 0,-41
facing = 1
ownpal = 1

[State CHARGEIT]
type = ChangeState
trigger1 = time>=150
value = 601

[State PUNCHIT]
type = ChangeState
triggerall = var(53)
triggerall = time>=19
trigger1 = fvar(20)<=75
trigger1 = fvar(21)<=75
value = 602

[State HIT]
type = ChangeState
trigger1 = var(53)=2
value = 5300

[State DONE]
type = ChangeState
trigger1 = roundstate>2
trigger2 = var(0)<2
trigger2 = !numhelper(650)
value = 0
ctrl = 1




;---------------------------------------------------------------------------
; Phase 3 Energy Ball
[Statedef 601]
type = S
physics = S
anim = 600
ctrl = 0
velset = 0,0

[State TURNING]
type = Turn
trigger1 = animelem=3
trigger1 = p2dist x < 0

[State Thundah]
type=explod
trigger1= !numexplod(650)
trigger1= animelemtime(2)>=1
trigger1= animelemtime(3)<0
anim=650
ID=650
sprpriority=3
postype=p1
pos=-39,-53
bindtime=-1
facing=1
removetime=-1
ownpal=1
scale=.25,.25
removeongethit=1

[State Bigger]
type=modifyexplod
trigger1= numexplod(650)
ID=650
scale=.25+(.00375*animelemtime(2)),.25+(.00375*animelemtime(2))

[State REMOVEIT]
type = RemoveExplod
triggerall = numexplod(650)
trigger1 = !animelemtime(3)
ID = 650

[State Bolt]
type=explod
trigger1 = animelemtime(2)=1
trigger2 = animelemtime(2)=24
trigger3 = animelemtime(2)=31
anim=651
ID=651
sprpriority=4
postype=p1
facing = ifelse(random%2,1,-1)
pos=-39,-53
ownpal=1

[State Bzzt]
type = PlaySnd
triggerall = animelemtime(2)>0
triggerall = animelemtime(3)<0
trigger1 = (animelemtime(2)%15)=1
value = S3,10

[State Bzzt]
type = PlaySnd
trigger1 = animelemtime(2)=1
trigger2 = animelemtime(2)=24
trigger3 = animelemtime(2)=31
value = S3,11+(random%3)
channel = 1

[State Whoosh]
type = PlaySnd
trigger1 = animelem=3
value = S0,1
channel = 1

[State WEATTACK]
type = StateTypeSet
trigger1 = !animelemtime(3)
movetype = A

[State Bullet]
type = Helper
trigger1 = animelem=3
helpertype = normal
name = "Bullet"
ID = 650
stateno = 650
pos = const(size.mid.pos.x),const(size.mid.pos.y)
facing = 1
ownpal = 1

[State ATTACK]
type = HitDef
trigger1 = animelem=3
attr = S,NA
damage = 34,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4,miss
pausetime = 12,12
sparkno = 2
sparkxy = -10,-37
hitsound = S1,1
guardsound = S1,3
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -6.1
airguard.velocity = -2.3,-.8
air.type = High
air.velocity = -2,-3
air.hittime = 12
getpower = 0,0
palfx.time = 2
palfx.add = 255,0,0
palfx.color = 0

[State HIT]
type = ChangeState
trigger1 = var(53)=2
value = 5300

[State DONE]
type = ChangeState
trigger1 = !animtime
value = 600


;Punch it back
[Statedef 602]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 601

[State CHANGEIT]
type = changeanim
trigger1 = anim=601
trigger1 = !animtime
value = 602
[State RESET]
type = VarSet
triggerall = anim=602
trigger1 = animelem=1
var(53) = 0

[State Whoosh]
type = PlaySnd
triggerall = anim=602
trigger1 = animelem=1
value = S0,1
channel = 1

[State ATTACK]
type = HitDef
trigger1 = !MoveContact
attr = S,NA
damage = 34,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4,miss
pausetime = 12,12
sparkno = 2
sparkxy = -10,-37
hitsound = S1,1
guardsound = S1,3
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -6.1
airguard.velocity = -2.3,-.8
air.type = High
air.velocity = -2,-3
air.hittime = 12
getpower = 0,0
palfx.time = 2
palfx.add = 255,0,0
palfx.color = 0

[State HIT]
type = ChangeState
trigger1 = var(53)=2
value = 5300

[State DONE]
type = ChangeState
trigger1 = !animTime
value = 600





;Energy Ball
[Statedef 650]
type = A
movetype= A
physics = N
anim = 653
ctrl = 0

[State VARADD]
type = Varadd
triggerall = prevstateno!=651
trigger1 = !time
fvar(20) = (3+2*!!(root,var(50)))*!fvar(20)+.25*!!fvar(20)

[State RESET]
type = VarSet
triggerall = prevstateno=652
trigger1 = !time
var(20) = 0
[State dab]
type = explod
triggerall = prevstateno=652
trigger1 = !time
anim = f3
sprpriority = 5
postype = p1
pos = 0,0
ownpal = 1

[State PalFXWiz]
type = PalFX
trigger1 = 1
time = 1
mul = 256,256,512
color = 0

[State Thundah]
type=explod
triggerall = !movecontact
trigger1= !numexplod(653)
anim=650
ID=653
sprpriority=3
postype=p1
bindtime=-1
facing=1
removetime=-1
ownpal=1
scale=.5,.5
removeongethit=1

[State particles]
type=explod
trigger1=1
vel=-.5-(random/1000.0),0
accel=0,.075
anim=652
id=652
sprpriority=3
postype=p1
pos=0,0
random=70,30
facing=-1+(random<500)*2
vfacing=-1+(random<500)*2
scale=.5,.5
ownpal=1
ignorehitpause=1

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State Home]
type = VelSet
triggerall = prevstateno!=651
trigger1 = !time
x = fvar(20)*((P2Dist X)/(Abs(P2Dist X)+Abs(P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))
y = fvar(20)*((P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))/(Abs(P2Dist X)+Abs(P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))

[State Noize]
type = PlaySnd
triggerall = prevstateno!=651
trigger1 = !time
value = s(1+(prevstateno!=[650,652])),2+(prevstateno!=[650,652])
channel = 2
volume = 128

[State DIEDIEDIE]
type = HitDef
triggerall = time
trigger1 = !MoveContact
attr = A,SA
hitflag = MAF
guardflag = MF
priority = 1,miss
sparkno=9741
guard.sparkno=9741
pausetime = 0,20
damage = 150,50
getpower = 0,0
hitsound = S3,14
guardsound = S3,11
ground.type = hard
ground.hittime = 8
air.hittime = 8
ground.velocity = -3,0
air.velocity = -3,-1
palfx.sinadd = 256,256,256,4
palfx.time = 20

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

[State NoTouchy]
type = NotHitBy
trigger1 = 1
value = , AT
time = -1

[State Touchy]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
time = -1
stateno = 651

[State KillExplod]
type = RemoveExplod
trigger1 = frontedgedist < -20
trigger2 = time >= 180
trigger3 = screenpos y != [-40,280]
trigger3 = pos y != [-280,40]
trigger4 = anim=1402
trigger4 = !animtime
trigger5 = movecontact
trigger6 = root,stateno=5901
ID = 653
[State IWentOffScreen]
type = DestroySelf
trigger1 = frontedgedist < -20
trigger2 = time >= 180
trigger3 = screenpos y != [-40,280]
trigger3 = pos y != [-280,40]
trigger4 = anim=1402
trigger4 = !animtime
ignorehitpause = 1

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901




[Statedef 651]
movetype = H

[State ADD]
type = VarAdd
trigger1 = 1
var(20) = 1

[State BACK]
type = CHANGESTATE
trigger1 = 1
value = 650+2*((var(20)>1)||(gethitvar(animtype)||(gethitvar(damage)>=50)))

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


[Statedef 652]
type = A
movetype= A
physics = N
anim = 1010
ctrl = 0

[State HIT'EM?]
type = ParentVarSet
trigger1 = !time
var(53) = 1
[State DISTANCE]
type = ParentVarSet
trigger1 = 1
fvar(20) = abs(rootdist x)
[State DISTANCE]
type = ParentVarSet
trigger1 = 1
fvar(21) = abs(rootdist y)

[State PalFXWiz]
type = PalFX
trigger1 = 1
time = 1
mul = 256,256,512
color = 0

[State Thundah]
type=explod
triggerall = !movecontact
trigger1= !numexplod(653)
anim=650
ID=653
sprpriority=3
postype=p1
bindtime=-1
facing=1
removetime=-1
ownpal=1
scale=.5,.5
removeongethit=1

[State particles]
type=explod
trigger1=1
vel=-.5-(random/1000.0),0
accel=0,.075
anim=652
id=652
sprpriority=3
postype=p1
pos=0,0
random=70,30
facing=-1+(random<500)*2
vfacing=-1+(random<500)*2
scale=.5,.5
ownpal=1
ignorehitpause=1

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State Home]
type = VelMul
trigger1 = !time
x = -1
y = -1

[State DIEDIEDIE]
type = HitDef
triggerall = time
trigger1 = !MoveContact
attr = A,SA
affectteam = F
hitflag = MAF
guardflag = MF
priority = 1,miss
sparkno=9741
guard.sparkno=9741
pausetime = 0,20
damage = 150,50
getpower = 0,0
hitsound = S3,14+55*((root,stateno=602)*(root,anim=602)||(root,stateno=601))
guardsound = S3,11+55*((root,stateno=602)*(root,anim=602)||(root,stateno=601))
ground.type = hard
ground.hittime = 8
air.hittime = 8
ground.velocity = -3,0
air.velocity = -3,-1
palfx.sinadd = 256,256,256,4
palfx.time = 20
ID = 8391-((root,stateno=602)*(root,anim=602)||(root,stateno=601))+(root,ID)

[State Boom]
type = ChangeAnim
;triggerall = numtarget
triggerall = !(((root,stateno=602)*(root,anim=602)||(root,stateno=601)))
triggerall = anim!=1402
trigger1 = MoveContact
value = 1402
[State STOP]
type = VelSet
trigger1 = anim=1402
x = 0
y = 0

[State REBOUND]
type = ChangeState
triggerall = movecontact>=2
trigger1 = anim!=1402
value = 650

[State KillExplod]
type = RemoveExplod
trigger1 = frontedgedist < -20
trigger2 = time >= 180
trigger3 = screenpos y != [-40,280]
trigger3 = pos y != [-280,40]
trigger4 = anim=1402
trigger4 = !animtime
trigger5 = movecontact
trigger6 = root,stateno=5901
ID = 653
[State IWentOffScreen]
type = DestroySelf
trigger1 = frontedgedist < -20
trigger2 = time >= 180
trigger3 = screenpos y != [-40,280]
trigger3 = pos y != [-280,40]
trigger4 = anim=1402
trigger4 = !animtime
ignorehitpause = 1

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901



;-------------------------------------------------------------------------------
;
[Statedef 653]
type = A
movetype= A
physics = N
anim = 1400
velset = 0,-12-12*isHelper(654)
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

[State DONE]
type = ChangeState
trigger1 = pos y >= 0
value = 654
ignorehitpause = 1

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;Boom
[Statedef 654]
type = A
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
trigger1 = !time
helpertype = normal
name = "Fire"
ID = 1322
stateno = 1312
pos = 0,0
facing = 1
ownpal = 1
[State Fire]
type = Helper
trigger1 = !time
helpertype = normal
name = "Fire"
ID = 1322
stateno = 1312
pos = 80,0
facing = 1
ownpal = 1
[State Fire]
type = Helper
trigger1 = !time
helpertype = normal
name = "Fire"
ID = 1322
stateno = 1312
pos = 160,0
facing = 1
ownpal = 1
[State Fire]
type = Helper
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
trigger1 = !time
helpertype = normal
name = "Fire"
ID = 1322
stateno = 1312
pos = -160,0
facing = 1
ownpal = 1

[State DONE]
type = DestroySelf
trigger1 = !animtime
ignorehitpause = 1

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901




;---------------------------------------------------------------------------
;Energy Bullet Fire (Ground)
[Statedef 1000]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1000
poweradd = -1000*(var(10)=4)
sprpriority = 1
velset = 0,0

[State SuperPortraitAndStuff]
type = Helper
triggerall = var(10)=4
trigger1 = !time
helpertype = normal
name = "Portrait"
ID = 8001
stateno = 8000
pos = 0,0
ownpal = 1

[State SuperEffect]
Type = Helper
triggerall = var(10)=4
trigger1 = time=1
StateNo = 8100
ID = 8100
Name = "Charge-Effect"
Pos = -24,-33
PosType = P1
Ownpal = 1
IgnoreHitPause = 1

[State FREEZE]
type = ChangeAnim
trigger1 = var(10)=4
trigger1 = time<15
value = 1000

[State Bullet]
type = Helper
trigger1 = animelem=2
helpertype = normal
name = "Bullet"
ID = 1010+(var(10)-1)
stateno = 1010+(var(10)=4)
pos = 45,-36
facing = 1
ownpal = 1

[State DONE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Energy Bullet Fire (Air)
[Statedef 1001]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1000
poweradd = -1000*(var(10)=4)
sprpriority = 1
velset = 0,0

[State SuperPortraitAndStuff]
type = Helper
triggerall = var(10)=4
trigger1 = !time
helpertype = normal
name = "Portrait"
ID = 8001
stateno = 8000
pos = 0,0
ownpal = 1

[State SuperEffect]
Type = Helper
triggerall = var(10)=4
trigger1 = time=1
StateNo = 8100
ID = 8100
Name = "Charge-Effect"
Pos = -24,-33
PosType = P1
Ownpal = 1
IgnoreHitPause = 1

[State FREEZE]
type = ChangeAnim
trigger1 = var(10)=4
trigger1 = time<15
value = 1000

[State SLOW]
type = VelMul
trigger1 = vel x
x = .85

[State posadd]
type = PosAdd
trigger1 = pos y < -5
y = 1

[State BACK]
type = VelSet
trigger1 = !animelemtime(2)
x = -8

[State Bullet]
type = Helper
trigger1 = animelem=2
helpertype = normal
name = "Bullet"
ID = 1010+(var(10)-1)
stateno = 1010+(var(10)=4)
pos = 45,-36
facing = 1
ownpal = 1

[State DONE]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1



;---------------------------------------------------------------------------
;Phase 2 Energy Bullet Fire (Ground)
[Statedef 1050]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1000
sprpriority = 1
velset = 0,0

[State Bullet]
type = Helper
trigger1 = animelem=2
helpertype = normal
name = "Bullet"
ID = 1013
stateno = 1011
pos = 45,-36
facing = 1
ownpal = 1

[State DONE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Phase 2 Energy Bullet Fire (Air)
[Statedef 1051]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1000
sprpriority = 1
velset = 0,0

[State SLOW]
type = VelMul
trigger1 = vel x
x = .85

[State posadd]
type = PosAdd
trigger1 = pos y < -5
y = 1

[State BACK]
type = VelSet
trigger1 = !animelemtime(2)
x = -8

[State Bullet]
type = Helper
trigger1 = animelem=2
helpertype = normal
name = "Bullet"
ID = 1013
stateno = 1011
pos = 45,-36
facing = 1
ownpal = 1

[State DONE]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1



;---------------------------------------------------------------------------
;Phase 2 Energy Bullet Fire (First)
[Statedef 1052]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1000
sprpriority = 1
velset = 0,0

[State SLOW]
type = VelMul
trigger1 = vel x
x = .85

[State posadd]
type = PosAdd
trigger1 = pos y < -5
y = 1

[State TURNING]
type = Turn
triggerall = p2dist x < 0
trigger1 = !animelemtime(2)

[State BACK]
type = VelSet
trigger1 = !animelemtime(2)
x = -8

[State Bullet]
type = Helper
trigger1 = !animelemtime(2)
helpertype = normal
name = "Bullet"
ID = 1020
stateno = 1020
pos = 45,-36
facing = 1
ownpal = 1
[State Bullet]
type = Helper
trigger1 = !animelemtime(2)
helpertype = normal
name = "Bullet"
ID = 1021
stateno = 1020
pos = 45,-36
facing = 1
ownpal = 1
[State Bullet]
type = Helper
trigger1 = !animelemtime(2)
helpertype = normal
name = "Bullet"
ID = 1022
stateno = 1020
pos = 45,-36
facing = 1
ownpal = 1
[State Bullet]
type = Helper
trigger1 = !animelemtime(2)
helpertype = normal
name = "Bullet"
ID = 1023
stateno = 1020
pos = 45,-36
facing = 1
ownpal = 1
[State Bullet]
type = Helper
trigger1 = !animelemtime(2)
helpertype = normal
name = "Bullet"
ID = 1024
stateno = 1020
pos = 45,-36
facing = 1
ownpal = 1

[State DONE]
type = ChangeState
trigger1 = !AnimTime
value = ifelse(prevstateno=1052,50,1052)
ctrl = (prevstateno=1052)




;---------------------------------------------------------------------------
;Jumping Stomp
[Statedef 1100]
type = A
movetype = A
physics = N
ctrl = 0
anim = 40
sprpriority = 1
velset = 0,0

[State SuperPortraitAndStuff]
type = Helper
triggerall = var(10)=4
trigger1 = !time
helpertype = normal
name = "Portrait"
ID = 8001
stateno = 8000
pos = 0,0
ownpal = 1

[State Jump Sound]
type = PlaySnd
triggerall = anim=40
trigger1 = !animtime
value = s(40-38*(var(10)=4)),7*(var(10)=4)
volume = 128

[State MOVEIT]
type = VelSet
triggerall = anim=40
trigger1 = !animtime
x = 3+1.5*var(10)
y = -12-4.5*(var(10)=4)

[State FALL]
type = VelAdd
trigger1 = vel y < 0
y = .6+.15*(var(10)=4)

[State UP]
type = ChangeAnim
triggerall = anim=40
trigger1 = !animtime
value = 41

[State POTSFireTrail]
type = helper
triggerall = var(10)=4
triggerall = anim=41
triggerall = !(time%3)
trigger1 = (var(31):=anim || var(32):=animelemno(0)) ** 0
helpertype = normal
stateno = 1511
ID = 1511
name = "Afterimage"
postype = p1
ownpal = 1

[State DONE]
type = ChangeState
triggerall = anim=41
trigger1 = vel y > -1
value = 1101


;Part 2
[Statedef 1101]
anim = 1100
movetype = A
poweradd = -1000*(var(10)=4)
velset = 0,-1-(prevstateno!=1100)
ctrl = 0

[State SuperPortraitAndStuff]
type = Helper
triggerall = (prevstateno!=1100)
triggerall = var(10)=4
trigger1 = !time
helpertype = normal
name = "Portrait"
ID = 8001
stateno = 8000
pos = 0,0
ownpal = 1

[State SuperEffect]
Type = Helper
triggerall = var(10)=4
trigger1 = !(time-(prevstateno!=1100))
StateNo = 8100
ID = 8100
Name = "Charge-Effect"
Pos = 2,-34
PosType = P1
Ownpal = 1
IgnoreHitPause = 1

[State FREEZE]
type = ChangeAnim
triggerall = !animelemtime(6)
trigger1 = var(10)=4
trigger1 = time<15
value = 1102

[State POTSFireTrail]
type = helper
triggerall = var(10)=4
triggerall = vel y >= 20
triggerall = (animtime%2)
triggerall = pos y < -15
trigger1 = (var(31):=anim || var(32):=animelemno(0)) ** 0
helpertype = normal
stateno = 1511
ID = 1511
name = "Afterimage"
postype = p1
ownpal = 1

[State FIRE]
type = PalFX
triggerall = var(10)=4
triggerall = vel y >= 20
trigger1 = (animtime%2)
time = 1
add = 255,127,0
mul = 255,127,0

[State FALL]
type = VelSet
trigger1 = !animelemtime(6)
y = 20+10*(var(10)=4)

[State WHOOSH]
type = PlaySnd
trigger1 = !animelemtime(6)
value = s(2*(var(10)=4)),2+4*(var(10)=4)

[State ATTACK]
type = HitDef
triggerall = var(10)!=4
trigger1 = !MoveContact
attr = A,SA
damage = 48,8
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4,Hit
pausetime = 12,12
sparkno = 3
guard.sparkno = 40
sparkxy = 15,25
hitsound = S1,2
guardsound = S1,3
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,20
air.hittime = 12
fall = 1

[State ATTACK]
type = HitDef
triggerall = var(10)=4
trigger1 = !MoveContact
attr = A,HA
damage = 96,16
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4,Hit
pausetime = 12,12
sparkno = 3
guard.sparkno = 40
sparkxy = 15,25
hitsound = S1,2
guardsound = S1,3
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,30
air.hittime = 12
fall = 1

[State LAND]
type = ChangeState
trigger1 = pos y >= -5
value = 1102


;Part 3
[Statedef 1102]
Type = C
movetype = I
physics = C
anim = 1101
velset = 0,0

[State ISAIDLAND]
type = PosSet
trigger1 = !time
y = 0

[State Shockwave]
type = Helper
trigger1 = !time
helpertype = normal
name = "Shockwave"
ID = 1110+(var(10)=4)
stateno = 1110
pos = 0,0
postype = p1
facing = 1
ownpal = 1

[State ShockwaveStuff]
type = Explod
trigger1 = !time
anim = f62
id = 62
sprpriority = 2
bindtime = -1
ownpal = 1

[State LAND]
type = ChangeState
trigger1 = !animtime
value = 12
ctrl = 1

;---------------------------------------------------------------------------
;Floor Attack (A/B = Punch, C = Stomp)
[Statedef 1200]
type = C
movetype = A
physics = S
juggle = 6
ctrl = 0
poweradd = -1000*(var(10)=4)
anim = 1200+(var(10)=[3,4])*100
sprpriority = 2

[State SuperPortraitAndStuff]
type = Helper
triggerall = var(10)=4
trigger1 = !time
helpertype = normal
name = "Portrait"
ID = 8001
stateno = 8000
pos = 0,0
ownpal = 1

[State SuperEffect]
Type = Helper
triggerall = var(10)=4
trigger1 = time=1
StateNo = 8100
ID = 8100
Name = "Charge-Effect"
Pos = -2,-33
PosType = P1
Ownpal = 1
IgnoreHitPause = 1

[State MOVEIT]
type = PosAdd
triggerall = animelem=2
trigger1 = anim=1300
trigger2 = prevstateno=1200
x = 10*(1+2*(prevstateno=1200))

[State FREEZE]
type = ChangeAnim
trigger1 = var(10)=4
trigger1 = time<15
value = 1300

[State WHOOSH]
type = PlaySnd
trigger1 = !animelemtime(2)
value = s0,1+(var(10)=[3,4])
channel = 1

[State Shockwave]
type = Helper
trigger1 = animelem=2
helpertype = normal
name = "Shockwave"
ID = 1110+(var(10)=4)
stateno = 1110
pos = 0,0
postype = p1
facing = 1
ownpal = 1

[State ShockwaveStuff]
type = Explod
trigger1 = animelem=2
anim = f61
id = 61
pos = 15*(1+(anim=1300)),0
sprpriority = 2
bindtime = -1
ownpal = 1

[State STUN]
type = HitDef
trigger1 = !MoveContact
trigger1 = var(10)!=4
attr = A,SA
damage = 54+20*(var(10)=3),12+8*(var(10)=3)
animtype = Heavy
hitflag = MAFD
guardflag = MF
priority = 5
pausetime = 10,15
sparkno = 3
sparkxy = 15,0
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

[State DAMAGE]
type = HitDef
trigger1 = !MoveContact
trigger1 = var(10)=4
attr = A,HA
damage = 92,36
animtype = Heavy
hitflag = MAFD
guardflag = MF
priority = 6
pausetime = 15,25
sparkno = 3
sparkxy = 15,0
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

[State LAND]
type = ChangeState
triggerall = var(10)=4
triggerall = movehit
triggerall = animelemtime(3)>0
triggerall = animelemtime(4)<=0
trigger1 = (command="a")+(command="b")
trigger1 = var(10):=2
value = 1200

[State LAND]
type = ChangeState
trigger1 = !animtime
value = 12
ctrl = 1


;---------------------------------------------------------------------------
;GRENADE
[Statedef 1300]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 210
sprpriority = 1

[State FREEZE]
type = ChangeAnim
trigger1 = time<6
value = 210

[State EXPLOD]
type = Explod
triggerall = !numexplod(1300)
trigger1 = !time
anim = 1400
id = 1300
pos = -40,-57
sprpriority = 2
bindtime = -1
removetime = 3
removeongethit = 1
ownpal = 1

[State Nomoreexplod]
type = RemoveExplod
triggerall = numexplod(1300)
trigger1 = animelem=2
ID = 1300

[State Grenade]
type = Helper
trigger1 = animelem=2
helpertype = normal
name = "Grenade"
ID = 1310+(var(10)-1)
stateno = 1310
pos = 59,-41
facing = 1
ownpal = 1

[State DONE]
type = ChangeState
trigger1 = !animTime
value = 0
ctrl = 1


;Hyper Grenade
[Statedef 1301]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 210
poweradd = -1000*(prevstateno!=1301)
sprpriority = 1

[State LESS]
type = VarAdd
triggerall = prevstateno=1301
trigger1 = !time
v = 8
value = -1

[State SuperPortraitAndStuff]
type = Helper
triggerall = prevstateno!=1301
trigger1 = !time
helpertype = normal
name = "Portrait"
ID = 8001
stateno = 8000
pos = 0,0
ownpal = 1

[State SuperEffect]
Type = Helper
triggerall = prevstateno!=1301
triggerall = !var(8)
trigger1 = time=1
trigger1 = var(8):=2
StateNo = 8100
ID = 8100
Name = "Charge-Effect"
pos = -40,-57
PosType = P1
Ownpal = 1
IgnoreHitPause = 1

[State EXPLOD]
type = Explod
triggerall = !numexplod(1300)
trigger1 = animelem=1;!time
anim = 1400
id = 1300
pos = -40,-57
sprpriority = 2
bindtime = -1
removetime = -1
ownpal = 1

[State FREEZE]
type = ChangeAnim
trigger1 = time<(20-14*(prevstateno=1301))
value = 210

[State Nomoreexplod]
type = RemoveExplod
triggerall = numexplod(1300)
trigger1 = animelem=2
ID = 1300

[State Grenade]
type = Helper
trigger1 = animelem=2
helpertype = normal
name = "Grenade"
ID = 1310+(2-var(8))
stateno = 1310
pos = 59,-41
facing = 1
ownpal = 1

[State NEXT/DONE]
type = ChangeState
trigger1 = !animtime
trigger2 = !animelemtime(5)
trigger2 = var(8)
value = 1301*!!var(8)
ctrl = !var(8)


;---------------------------------------------------------------------------
; Hyper Striker Send
;---------------------------------------------------------------------------
[Statedef 2000]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 2000
sprpriority = 1

[State DEBUG]
type = DisplayToClipboard
trigger1 = 1
text = "Super: %d"
params = var(10)

[State SuperPortraitAndStuff]
type = Helper
trigger1 = !time
helpertype = normal
name = "Portrait"
ID = 8000
stateno = 8000
pos = 0,0
ownpal = 1

[State Whoosh]
type = PlaySnd
trigger1 = time=1
value = S0,1
channel = 1

[State Super]
type = Helper
trigger1 = time=1
helpertype = normal
name = "Super"
ID = 3000+(var(10)-1)*100
stateno = 6000+(var(10)-1)*100
pos = 160*(var(10)=3),0
postype = back
ownpal = 1

[State DONE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


; Prepare to RE-Initialize
[Statedef 5901]
type = S
velset = 0,0

[State RESET]
type = posset
trigger1 = numhelper(5902)
x = helper(5902),pos x
y = 0
[State STOPSHAKING]
type = EnvShake
trigger1 = !time
time = 1
[State ISAIDRESET]
type = lifeset
trigger1 = 1
value = lifemax
[State RESETYOUPIECEOF]
type = powerset
trigger1 = 1
value = 0
[State INTRO]
type = AssertSpecial
trigger1 = 1
flag = intro

[State RESETTHISVAR]
type = VarSet
trigger1 = sysvar(1)
sysvar(1) = 0

[State NowTheExplods]
type = RemoveExplod
trigger1 = 1
ID = 650
[State NowTheExplods]
type = RemoveExplod
trigger1 = 1
ID = 1400
[State DARKNESS]
type = AllPalFX
trigger1 = 1
time = 1
mul = 0,0,0

[State SHADDAP]
type = StopSnd
trigger1 = 1
channel = -1

[State TURN]
type = Turn
trigger1 = p2dist x < 0

[State Reinitialize] ;Clear all int variables
type = SelfState
trigger1 = time>=60
value = 5900


;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

;[Winane]
[State -2, StopAI]
type = VarSet
triggerall = var(58) > 0 && !IsHelper
trigger1 = RoundState != 2
trigger2 = !alive
var(58) = -2
IgnoreHitPause = 1

[State -2, Simplifier]
type = VarSet
triggerall = !IsHelper
trigger1 = var(58) = 1
trigger2 = var(59):=0
var(59) = 1

[State NoTouchy]
type = NotHitBy
trigger1 = !isHelper
value = SCA
time = 1
IgnoreHitPause = 1
;[/Winane]

;[RicePigeon dampener]
[State -2, DamageBasedOnHits]
type = Varset
trigger1 = numenemy
fvar(10)= ifelse(enemynear,gethitvar(hitcount)<13, (1-(0.05*(enemynear,gethitvar(hitcount)))), ifelse(enemynear,gethitvar(hitcount)<35,0.35,0.1))
ignorehitpause = 1

[State -2, NoMoreDampening]
type = Varset
trigger1 = numenemy
trigger1 = !(enemynear,movetype=H)
trigger2 = !numenemy
fvar(10) = 1
ignorehitpause = 1

[State -2, Dampenatk]
type = attackMulSet
trigger1 = 1
value = fvar(10)
ignorehitpause = 1
;[/RicePigeon dampener]

[State TheGuyDoesntGuard]
type = assertSpecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State lolTimerFreezeandStuff]
type = assertSpecial
trigger1 = 1
flag = timerfreeze
flag2 = nokoslow
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State SHADDAP]
type = assertSpecial
triggerall = var(49)*var(19)
trigger1 = life<=1
trigger2 = numhelper(11000)
flag = nomusic
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State NOWALKY]
type = AssertSpecial
triggerall = var(59)
trigger1 = var(50)
flag = nowalk
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State NoPushy]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State NoAutoTurn]
type = AssertSpecial
trigger1 = numexplod(5302)
trigger2 = numhelper(20000)
trigger3 = var(1)
trigger4 = stateno=5151
flag = noautoturn

[State ABORTCUSTOMSTATE]
type = SelfState
triggerall = !isHelper
trigger1 = var(57)!=gametime
value = 502

[State Reset]
type = ChangeState
trigger1 = enemy,var(0)
trigger1 = enemy,name="IWBTG"
trigger1 = enemy,stateno=5901
trigger1 = prevstateno!=5901
trigger1 = stateno!=[5900,5901]
value = 5901
ctrl = 0

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

;[Winane]
[State -3, SetaI]
type = VarSet
triggerall = alive && !IsHelper
triggerall = IsHomeTeam||enemy,name="IWBTG"
trigger1 = TeamSide = 2
trigger2 = MatchNo > 1
trigger3 = enemy,name="IWBTG"
var(58) = 1

[State -3, AI Helper - Compatibly Partnered Version]
type = Helper
trigger1 = !var(58) && !IsHelper
trigger1 = !NumHelper(9742)
trigger1 = alive && RoundState = 2
trigger1 = NumPartner
trigger1 = Partner,SelfanimExist(9741)
HelperType = normal
name = "AI Helper (Simul Version)"
ID = 9742
pos = 9999999,99999
StateNo = 9742
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, AI Helper]
type = Helper
triggerall = !var(58) && !IsHelper
triggerall = !NumHelper(9741)
triggerall = alive && RoundState = 2
trigger1 = !NumPartner
trigger2 = !(Partner,SelfanimExist(9741))
HelperType = normal
name = "AI Helper"
ID = 9741
pos = 9999999,99999
StateNo = 9741
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, TurnBackOnaI]
type = VarSet
trigger1 = var(58) = -2 && !IsHelper
trigger1 = alive && RoundState = 2
var(58) = 1

; This method works somewhat in Linux Mugen version 2002.04.14,
; whereas the old humanly-impossible commands method does not.
; It is very important that this controller NOT be moved to State -2.
; Note that this part won't work nearly as well if aI.Cheat is turned off
; in mugen.cfg.
[State -3, XOR]
type = VarSet
triggerall = var(58)!=1 && !IsHelper
triggerall = !var(56)
triggerall = var(57) = GameTime-1
trigger1 = command = "a" ^^ command = "a2"
trigger2 = command = "b" ^^ command = "b2"
trigger3 = command = "c" ^^ command = "c2"
trigger4 = command = "x" ^^ command = "x2"
trigger5 = command = "y" ^^ command = "y2"
trigger6 = command = "z" ^^ command = "z2"
trigger7 = command = "start" ^^ command = "start2"
trigger8 = command = "hold_a" ^^ command = "holda2"
trigger9 = command = "hold_b" ^^ command = "holdb2"
trigger10 = command = "hold_c" ^^ command = "holdc2"
trigger11 = command = "hold_x" ^^ command = "holdx2"
trigger12 = command = "hold_y" ^^ command = "holdy2"
trigger13 = command = "hold_z" ^^ command = "holdz2"
trigger14 = command = "hold_s" ^^ command = "holdstart2"
trigger15 = command = "holdfwd" ^^ command = "holdfwd2"
trigger16 = command = "holdback" ^^ command = "holdback2"
trigger17 = command = "holdup" ^^ command = "holdup2"
trigger18 = command = "holddown" ^^ command = "holddown2"
;trigger19 = command = "recovery" ^^ command = "recovery2"
;add more as desired. (See my notes in the CMD.)
var(58) = 1

; These next two controllers must be placed here, after the above XOR
; VarSet controller and before the below GameTime VarSet controller.
[State -3, fiXOR]
type = Varadd
trigger1 = var(56) > 0 && !IsHelper
var(56) = -1

[State -3, fuXOR]
type = VarSet
trigger1 = var(57) < GameTime-1 && !IsHelper
var(56) = 31
IgnoreHitPause = 1

; It is very important that this controller NOT be moved to State -2, as putting
; it there would defeat the entire purpose of the controller, allowing the
; helper method or the XOR method to erroneously set the AI variable.
; and within State -3, don't put any ChangeState controllers before this
; controller, lest you unnecessarily delay your character's AI activation.
[State -3, GameTimeVar]
type = VarSet
trigger1 = !IsHelper
var(57) = GameTime
IgnoreHitPause = 1

[State AIGameTimeVariableReset]
type = VarSet
trigger1 = life<=1
trigger2 = roundstate>2
var(55) = 0
[State AIGameTimeVariable]
type = Varadd
triggerall = var(59)
triggerall = var(19)
triggerall = life>1
triggerall = ctrl
triggerall = movetype!=A
triggerall = (var(55)%900)+(statetype=S)
trigger1 = !isHelper
v = 55
value = 1

[State -3, ArmorHelperByWinane]
type = Helper
trigger1 = !NumHelper(44304)
trigger1 = alive
name = "armor"
ID = 44304
StateNo = 44304
KeyCtrl = 1
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, Ow]
type = Lifeadd
trigger1 = var(20) && StateNo != [120,155]
value = -var(20)

[State -3, FLaSHY]
type = PalFX
trigger1 = var(20)
time = 2
invertall = 1

[State HIT]
type = ChangeAnim
triggerall = stateno=5300
triggerall = time<=360
trigger1 = var(20)>=20
trigger2 = gethitvar(animtype)
value = 5299

[State -3, Reset]
type = VarSet
trigger1 = 1
var(20) = 0

[State -3, WAIT]
type = LifeSet
triggerall = var(49)*var(19)
triggerall = anim!=9741
trigger1 = life < 1
value = 1
;[/Winane]

[State OriginalPoz]
type = Helper
triggerall = 0;
trigger1 = !numhelper(5902)
name = "BringItBackHere"
ID = 5902
StateNo = 5902
ownpal = 1

[State OriginalPoz]
type = Helper
trigger1 = !numhelper(5903)
name = "BringCeilingBackHere"
ID = 5903
StateNo = 5903
ownpal = 1

[State TRUEFORM]
type = ChangeState
triggerall = var(19)
triggerall = roundstate < 3; || stateno
triggerall = var(49)
triggerall = alive
triggerall = (movetype != H) || (stateno=5300)
triggerall = stateno!=[5150,5159]
triggerall = stateno!=180
trigger1 = !(life-1)
value = 5050

[State Can'tTouchThis]
type = Helper
triggerall = var(19)
triggerall = !numhelper(44306)
trigger1 = var(50)
name = "DEATH"
ID = 44306
StateNo = 44306
ownpal = 1

[State JukeboxOfWin]
type=helper
triggerall = stateno!=[5900,5901]
triggerall = var(49)*var(19)
triggerall = roundstate = 2
triggerall = !numhelper(10000)
trigger1 = life<=1
helpertype = normal
stateno = 9999
ID = 10000
name="Muzak"
pos=0,0
postype = P1
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647
ownpal=1

[State GUN]
type=helper
triggerall = matchover
triggerall = winko
triggerall = roundstate=3
triggerall = !numhelper(188)
trigger1 = var(50)*var(49)
helpertype = normal
stateno = 188
ID = 188
name="GUN"
pos=0,0
postype = P2
ownpal=1

[State -3, AmuletCheckForTheImpatient]
type = Helper
triggerall = stateno!=[5900,5901]
triggerall = var(49)
triggerall = !var(15)
triggerall = !var(26)
triggerall = roundstate = 2
triggerall = !numhelper(40000)
trigger1 = !var(16)
trigger1 = var(16) := 1
name = "AmuletCheck"
ID = 40000
StateNo = 40000
postype = p2
ownpal=1

[State -3, Jump Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 40 ;Jump
trigger2 = stateno = 45 ;Double Jump
value = s40,(stateno=45)
volume = 128

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 106 ;Run-back land
value = s2,2

[State -3, WhichFruit?]
type = VarRandom
trigger1 = 1
v = 31
range = 0,2
[State -3, WhichSpike?]
type = VarRandom
trigger1 = 1
v = 32
range = 0,2

[State -3, Phase]
type = VarSet
trigger1 = alive
var(0) = 3-ceil(((life-1)*3)*1.0/lifemax)
[State NextPhase]
type = VarSet
trigger1 = (var(0)+1)<var(3)
var(3) = var(0)+1
[State NEXTPHASE]
type = ChangeState
triggerall = var(59)
triggerall = stateno != [500,502]
triggerall = life>1
triggerall = stateno != [5000,5300]
triggerall = roundstate = 2
trigger1 = Var(0) >= Var(3)
value = 500

[State -3, PowerGain]
type = PowerAdd
triggerall = alive
triggerall = stateno!=2000
trigger1 = roundstate=2
value = 1+var(0)+(movetype!=A)+var(59)*5

[State -3, GIVEMEDEBUG]
type = DisplayToClipBoard
trigger1 = 1
text = "Kid: %d, Hit?: %d, Timer: %d, Next Phase: %d, Form 2: %d"
params = var(50),var(53),var(55),var(3),var(49)

[State FailSafeandStuff]
type = LifeSet
trigger1 = !var(19)
value = lifemax

[State WAITUP]
type = VarSet
triggerall = !var(19)
trigger1 = ctrl
var(19) = 1

[State NOTHINGY]
type = VarSet
trigger1 = 1
var(26) = (teammode=simul)||(enemy,teammode=simul)
