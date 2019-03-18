
;==========================================================================
;Forward RUN
;==========================================================================
[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1

[State 100, dash dust]
type = Explod
trigger1 = Time = 7
anim = 2218
ID = 2218
pos = -50,6
scale = 1,0.5
sprpriority = 8
ownpal = 1
ignorehitpause = 1

[State 100, 5]
type = Explod
trigger1 = (time%4) = 1
ID = 2221
anim = 2221
postype = p1
facing = 1
vfacing = 1
pos = -16,-45
bindtime = 1
removetime = 6
ontop = 1
vel = 0,0
ownpal = 1
random = 12,57
sprpriority = 3
scale = .36,.14
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 100, 6]
type = Explod
trigger1 = (time%4) = 1
ID = 2221
anim = 2221
postype = p1
facing = 1
vfacing = 1
pos = -20,-70
bindtime = 1
removetime = 6
ontop = 1
ownpal = 1
random = 22, 66
sprpriority = 3
scale = .32,.12
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 100, 1]
type = VelSet
trigger1 = 1
x = Const(velocity.run.fwd.x)

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 30, 1
channel = 1

[State 100, 4]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30, 1
freqmul = 0.75
channel = 1

[State 100, 4]
type = ChangeState
trigger1 = Command != "holdfwd"
trigger2 = (var(10) = 1)
trigger2 = time=30
value = 0
;==========================================================================
;Guard Push (coding credited to MystikBlaze)
;==========================================================================


[Statedef 167]
type    = A
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 162
sprpriority = 2

[State 167, VelMul]
type = VelMul
trigger1 = 1
x = 0.75

[State 167, VelSet]
type = VelSet
trigger1 = Time = 10
x = 0

[State 167, Width]
type = Width
trigger1 = 1
value = 10,0

[State 167, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 20

[State 167, SFX]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 2
channel = 0

[State 167, SFX]
type = PlaySnd
trigger1 = AnimElem = 1
value = 28, 1
channel = 1

[State 167, Deflect Effect]
type = Explod
trigger1 = Time = 0
anim = F72
ID = 1
pos = 44, -60
stateno = 169
ownpal = 1
bindtime = -1
ignorehitpause = 1
sprpriority = 7

[State 167, Guard Push Helper]
type = Helper
trigger1 = Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 169
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 167, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 168

[Statedef 168]
type = A
movetype = I
physics = A
ctrl = 1
anim = 104
sprpriority = 2

[State 168, Change]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52
ctrl = 0

[Statedef 169]	;Helper
type = S
movetype = I
physics = N
poweradd = 0
ctrl = 0
anim = 165
sprpriority = -4

[State 169, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 169, VelSet 1]
type = VelSet
trigger1 = Time = [0,10]
x = 30

[State 169, VelSet 2]
type = VelSet
trigger1 = Time = [11,13]
x = 20

[State 169, VelSet 2]
type = VelSet
trigger1 = Time >= 14
x = 10

[State 169, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 169, DestroySelf]
type = DestroySelf
trigger1 = Time >= 18
;==========================================================================
;Win Poses
;==========================================================================
[Statedef 180]
type = S
ctrl = 0
VelSet = 0,0,0

[State 180, 1]
type = VarSet
trigger1 = 1
var(1) = (random % 3) + 1

[State 180, 1]
type = VarSet
trigger1 = Command = "hold_x"
trigger2 = Command = "hold_a"
var(1) = 1

[State 180, 1]
type = VarSet
trigger1 = Command = "hold_y"
trigger2 = Command = "hold_b"
var(1) = 2

[State 180, 1]
type = VarSet
trigger1 = Command = "hold_z"
trigger2 = Command = "hold_c"
trigger3 = command = "hold_s"
var(1) = 3

[State 180, 1]
type = ChangeState
trigger1 = 1
value = 180 + var(1)
;==========================================================================
[Statedef 181]
type = S
ctrl = 0
anim = 181
velSet = 0,0

[State 181, 1]
type = VarSet
trigger1 = 1
var(2) = (random % 2) + 1

[State 1200,CAMERA]
type = helper
trigger1 = pos X != 0
trigger1 = Time = 0
name = "helper1"
id = 60001
pos = 0,0
postype = p1
stateno = 60001
helpertype = normal
ownpal = 1
keyctrl = 1

[State 181, SFX]
type = PlaySnd
triggerall = var(2) = 1
trigger1 = AnimElem = 2
value = 3,3
channel = 0

[State 181, SFX]
type = PlaySnd
triggerall = var(2) = 2
trigger1 = AnimElem = 2
value = 3,4
channel = 0

[State 181, 1]
type = NotHitBy
trigger1 = 1 
value = SCA
time = 1
;==========================================================================
[Statedef 182]
type = S
ctrl = 0
anim = 182
velSet = 0,0

[State 182, 1]
type = VarSet
trigger1 = 1
var(2) = (random % 2) + 1

[State 1200,CAMERA]
type = helper
trigger1 = pos X != 0
trigger1 = Time = 0
name = "helper1"
id = 60001
pos = 0,0
postype = p1
stateno = 60001
helpertype = normal
ownpal = 1
keyctrl = 1

[State 182, SFX]
type = PlaySnd
triggerall = var(2) = 1
trigger1 = AnimElem = 2
value = 3,3
channel = 0

[State 182, SFX]
type = PlaySnd
triggerall = var(2) = 2
trigger1 = AnimElem = 2
value = 3,5
channel = 0

[State 182, 1]
type = NotHitBy
trigger1 = 1 
value = SCA
time = 1
;==========================================================================
[Statedef 183]
type = S
ctrl = 0
anim = 183
velSet = 0,0

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 20, 0
channel = 1

[State 1200,CAMERA]
type = helper
trigger1 = pos X != 0
trigger1 = Time = 0
name = "helper1"
id = 60001
pos = 0,0
postype = p1
stateno = 60001
helpertype = normal
ownpal = 1
keyctrl = 1

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 2
channel = 0

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 13
value = 20, 1
channel = 1

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 14
value = 0, 1
channel = 0

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 26
value = 20, 2
channel = 1

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 25
value = 0, 4
channel = 0

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 35
value = 2, 4
channel = 0

[State 183, 1]
type = NotHitBy
trigger1 = 1 
value = SCA
time = 1

;==========================================================================
;Intro
;==========================================================================
[Statedef 190]
type = S
ctrl = 0
VelSet = 0,0

[State 190, Versus]
type = ChangeState
trigger1 = p2Name = "Kyo" && Enemy, AuthorName = "m_ken-infinite-edit" || p4Name = "Kyo" && Enemy, AuthorName = "m_ken-infinite-edit"
value = 197

[State 190, Versus]
type = ChangeState
trigger1 = p2Name = "CVSRyu" || p4Name = "CVSRyu"
trigger2 = p2Name = "Ryu" && Enemy, AuthorName = "dragoon316" || p4Name = "Ryu" && Enemy, AuthorName = "dragoon316"
value = 193

[State 190, Versus]
type = ChangeState
trigger1 = p2Name = "Ryu" && Enemy, AuthorName = "dragoon316-infinite-edit" || p4Name = "Ryu" && Enemy, AuthorName = "dragoon316-infinite-edit"
value = 193

[State 190, Versus]
type = ChangeState
trigger1 = p2Name = "CVSTerry" || p4Name = "CVSTerry"
trigger2 = p2Name = "CVS Terry" || p4Name = "CVS Terry"
trigger3 = p2Name = "Terry" && Enemy, AuthorName = "Vyn-infinite-edit" || p4Name = "Terry" && Enemy, AuthorName = "Vyn-infinite-edit"
value = 194

[State 190, Versus]
type = ChangeState
trigger1 = p2Name = "Iori Yagami" && Enemy, AuthorName = "Anjel-infinite-edit" || p4Name = "Iori Yagami" && Enemy, AuthorName = "Anjel-infinite-edit"
value = 198

[State 190, Versus]
type = ChangeState
trigger1 = p2Name = "Guile" && Enemy, AuthorName = "Spaz&Punt-infinite-edit" || p4Name = "Guile" && Enemy, AuthorName = "Spaz&Punt-infinite-edit"
value = 1773

[State 190, Versus]
type = ChangeState
trigger1 = p2Name = "Ultimate K'" && Enemy, AuthorName = "K.O.D-infinite-edit" || p4Name = "Ultimate K'" && Enemy, AuthorName = "K.O.D-infinite-edit"
value = 1774

[State 190, ChangeState] ;credited to Winane
type = ChangeState
trigger1 = Time = 0
value = 191 + random%2
;==========================================================================
;Turns Intro
;==========================================================================
[Statedef 5910]
type = S
ctrl = 0
VelSet = 0,0

[State 5910, ChangeState] ;credited to Winane
type = ChangeState
trigger1 = Time = 0
value = 191 + random%2
;==========================================================================
[Statedef 191]
type = S
ctrl = 0
anim = 191
VelSet = 0,0,0

[State 191, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 191

[State 191, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 1]
type = VarSet
trigger1 = 1
var(2) = (random % 2) + 1

[State 191, SFX]
type = PlaySnd
triggerall = var(2) = 1
trigger1 = AnimElem = 2
value = 3,6
channel = 0

[State 191, SFX]
type = PlaySnd
triggerall = var(2) = 2
trigger1 = AnimElem = 2
value = 3,7
channel = 0

[State 191, SFX]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 10
value = 30,1
channel = 1

[State 191, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;==========================================================================
[Statedef 192]
type = S
ctrl = 0
anim = 192
VelSet = 0,0,0

[State 192, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 192

[State 192, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, SFX]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
value = 20,0
channel = 1

[State 192, SFX]
type = PlaySnd
trigger1 = AnimElem = 11
value = 20,2
channel = 1

[State 192, 1]
type = VarSet
trigger1 = 1
var(2) = (random % 2) + 1

[State 192, SFX]
type = PlaySnd
triggerall = var(2) = 1
trigger1 = AnimElem = 19
value = 3,0
channel = 0

[State 192, SFX]
type = PlaySnd
triggerall = var(2) = 2
trigger1 = AnimElem = 19
value = 2,0
channel = 0

[State 192, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;==========================================================================
[Statedef 193]
type = S
physics = N
ctrl = 0
anim = 193
VelSet = 0,0

;[State 193, Change]
;type = ChangeAnim
;trigger1 = RoundState = 0
;value = 193

[State 193, Special]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, SFX]
type = PlaySnd
trigger1 = AnimElem = 8
value = 3,0
channel = 0

[State 193, Vel1]
type = VelSet
trigger1 = AnimElem = 10
x = -1.9

[State 193, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = 30

[State 193, Vel2]
type = VelSet
trigger1 = AnimElem = 12
x = 0

[State 193, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;==========================================================================
[Statedef 194]
type = S
ctrl = 0
anim = 194
VelSet = 0,0,0

;[State 194, 1]
;type = ChangeAnim
;trigger1 = RoundState = 0
;value = 194

[State 194, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 194, SFX]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3,8
channel = 0

[State 194, SFX]
type = PlaySnd
trigger1 = AnimElem = 8
value = 20,1
channel = 1

[State 194, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;==========================================================================
;Chouhatsu
;==========================================================================
[Statedef 195]
type = S
physics = S
movetype = I
anim = 195
velset = 0,0
poweradd = -500
sprpriority = 1
juggle = 1
ctrl = 0

 [State 195]
type = LifeAdd
trigger1 = time = 1
value = 150

[State 195, 1]
type = VarSet
trigger1 = 1
var(2) = (random % 4) + 1

[State 195, SFX]
type = PlaySnd
triggerall = var(2) = 1
trigger1 = AnimElem = 3
value = 3,1
channel = 0

[State 195, SFX]
type = PlaySnd
triggerall = var(2) = 2
trigger1 = AnimElem = 3
value = 3,2
channel = 0

[State 195, SFX]
type = PlaySnd
triggerall = var(2) = 3
trigger1 = AnimElem = 3
value = 3,0
channel = 0

[State 195, SFX]
type = PlaySnd
triggerall = var(2) = 4
trigger1 = AnimElem = 3
value = 3,6
channel = 0

[State 195, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 196]
type = S
physics = S
movetype = I
anim = 196
velset = 0,0
poweradd = 40
sprpriority = 1
juggle = 1
ctrl = 0

[State 196, 1]
type = VarSet
trigger1 = 1
var(2) = (random % 2) + 1

[State 196, SFX]
type = PlaySnd
triggerall = var(2) = 1
trigger1 = AnimElem = 2
value = 3,6
channel = 0

[State 196, SFX]
type = PlaySnd
triggerall = var(2) = 2
trigger1 = AnimElem = 2
value = 3,0
channel = 0

[State 196, SFX]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
value = 30,1
channel = 1

[State 196, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 197]
type = S
ctrl = 0
anim = 197
velset = 0,0

[State 191, Changeanim]
type = null;ChangeAnim
trigger1 = RoundState = 0
value = 191

[State 191, assertspecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;==========================================================================
[Statedef 198]
type = S
ctrl = 0
anim = 198
VelSet = 0,0,0

;[State 194, 1]
;type = ChangeAnim
;trigger1 = RoundState = 0
;value = 194

[State 194, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 194, SFX]
type = PlaySnd
trigger1 = AnimElem = 1,65
value = 3,0
channel = 0

[State 194, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;==========================================================================
[Statedef 1773]
type = S
ctrl = 0
anim = 1773
VelSet = 0,0,0

[State 194, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 194, SFX]
type = PlaySnd
trigger1 = AnimElem = 4,0
value = 3,3
channel = 0

[State 194, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;==========================================================================
[Statedef 1774]
type = S
ctrl = 0
anim = 1774
VelSet = 0,0,0

[State 194, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 194, SFX]
type = PlaySnd
trigger1 = AnimElem = 4,0
value = 3,3
channel = 0

[State 194, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;==========================================================================
;Basic Strikes
;==========================================================================
[Statedef 200]
type = S
physics = S
movetype = A
anim = 200
velset = 0,0
juggle = 1
sprpriority = 1
ctrl = 0

[State 200, 0]
type = ChangeAnim
triggerall = Time = 0
trigger1 = P2BodyDist X >= 10
value = 200

[State 200, 0]
type = ChangeAnim
triggerall = Time = 0
trigger1 = P2BodyDist X < 10
value = 206

[State 200, Hit]
type = HitDef
trigger1 = Time = 0 && Anim = 200
damage = 20
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Light
priority = 3, Hit
pausetime = 8,8
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = 0, -70
hitsound = S22, 0
guardsound = S21, 0
ground.type = High
ground.slidetime = 4
ground.hittime = 8
ground.velocity = -3
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 8
getpower = 30,0
givepower = 20,30

[State 200, Hit]
type = HitDef
trigger1 = Time = 0 && Anim = 206
damage = 25
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Light
priority = 3, Hit
pausetime = 8,8
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = 0, -70
hitsound = S22, 0
guardsound = S21, 0
ground.type = High
ground.slidetime = 4
ground.hittime = 8
ground.velocity = -3
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 8
getpower = 30,0
givepower = 20,30

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 0
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 201]
type = S
physics = S
movetype = A
anim = 201
velset = 0,0
juggle = 1
sprpriority = 1
ctrl = 0

[State 201, Hit]
type = HitDef
Trigger1 = Time = 0
damage = 20
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Light
priority = 3, Hit
pausetime = 8,8
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = 0, -35
hitsound = S22, 1
guardsound = S21, 0
ground.type = Low
ground.slidetime = 4
ground.hittime = 12
ground.velocity = -3
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 8
getpower = 30,0
givepower = 20,30

[State 201, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 0
channel = 1

[State 201, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 202]
type = S
physics = S
movetype = A
anim = 202
velset = 0,0
juggle = 1
sprpriority = 1
ctrl = 0

[State 202, 0]
type = ChangeAnim
triggerall = Time = 0
trigger1 = P2BodyDist X >= 10
value = 202

[State 202, 0]
type = ChangeAnim
triggerall = Time = 0
trigger1 = P2BodyDist X < 10
value = 208

[State 202, Hit]
type = HitDef
trigger1 = Time = 0 && Anim = 202
damage = 30
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Medium
priority = 5, Hit
pausetime = 10,10
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = 0, -66
hitsound = S22, 2
guardsound = S21, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
ground.velocity = -5
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -3, -3
air.hittime = 12
envshake.time = 7
envshake.ampl = 5
getpower = 60,0
givepower = 40,60

[State 202, Hit]
type = HitDef
trigger1 = Time = 0 && Anim = 208
damage = 35
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Medium
priority = 5, Hit
pausetime = 10,10
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = 0, -66
hitsound = S22, 2
guardsound = S21, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
ground.velocity = -4
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -3, -3
air.hittime = 12
envshake.time = 7
envshake.ampl = 5
getpower = 60,0
givepower = 40,60

[State 202, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 1
channel = 1

[State 202, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 203]
type = S
physics = S
movetype = A
anim = 203
velset = 0,0
juggle = 1
sprpriority = 1
ctrl = 0

[State 203, 0]
type = ChangeAnim
triggerall = Time = 0
trigger1 = P2BodyDist X >= 10
value = 203

[State 203, 0]
type = ChangeAnim
triggerall = Time = 0
trigger1 = P2BodyDist X < 10
value = 209

[State 203, Hit]
type = HitDef
trigger1 = Time = 0 && Anim = 203
damage = 30
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Medium
priority = 5, Hit
pausetime = 10,10
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = 0, -76
hitsound = S22, 3
guardsound = S21, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
ground.velocity = -5
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -3, -3
air.hittime = 12
envshake.time = 7
envshake.ampl = 5
getpower = 60,0
givepower = 40,60

[State 203, Hit]
type = HitDef
trigger1 = Time = 0 && Anim = 209
damage = 35
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Medium
priority = 5, Hit
pausetime = 10,10
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = 0, -56
hitsound = S22, 3
guardsound = S21, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
ground.velocity = -5
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -3, -3
air.hittime = 12
envshake.time = 7
envshake.ampl = 5
getpower = 60,0
givepower = 40,60

[State 203, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 1
channel = 1

[State 203, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 204]
type = S
physics = S
movetype = A
anim = 204
velset = 0,0
juggle = 1
sprpriority = 1
ctrl = 0

[State 204, 0]
type = ChangeAnim
triggerall = Time = 0
trigger1 = P2BodyDist X >= 35
value = 204

[State 204, 0]
type = ChangeAnim
triggerall = Time = 0
trigger1 = P2BodyDist X < 35
value = 210

[State 0, VelSet]
type = VelSet
triggerall=Anim = 210
trigger1 = animelem=1
x = 6
[State 0, VelSet]
type = VelSet
triggerall=Anim = 210
trigger1 = animelem=5
x = 0

[State 204, Hit]
type = HitDef
trigger1 = Time = 0 && Anim = 204
damage = 40
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5, Hit
pausetime = 12, 12
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = 0, -66
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -8
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -5, -4
air.hittime = 15
envshake.time = 10
envshake.ampl = 5
getpower = 90,0
givepower = 60,90

[State 204, Hit]
type = HitDef
trigger1 = Time = 0 && Anim = 210
damage = 35
attr = S, NA
hitflag = MA
guardflag = MA
animtype = Hard
priority = 5, Hit
pausetime = 12, 12
guard.sparkno = s7050
sparkno = s2220
sparkxy = 0, -68
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -1,-13
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1, -11
air.hittime = 15
envshake.time = 10
envshake.ampl = 5
getpower = 60,0
givepower = 40,60

[State 420, jump combo]
type = Changestate
trigger1 = Anim = 210
trigger1 = movehit ; when you hit the opponent
trigger1 = command = "holdup"
value = 123 ; the superjump state
ctrl = 1 ; these menas that you re-gain control

[State 204, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 2
channel = 1

[State 204, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && Anim = 204
value = 0, 1
channel = 0

[State 204, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 && Anim = 210
value = 0, 0
channel = 0

[State 204, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 205]
type = S
physics = S
movetype = A
anim = 205
velset = 0,0
juggle = 1
sprpriority = 1
ctrl = 0

[State 205, 0]
type = ChangeAnim
triggerall = Time = 0
trigger1 = P2BodyDist X >= 15
value = 205

[State 205, 0]
type = ChangeAnim
triggerall = Time = 0
trigger1 = P2BodyDist X < 15
value = 211

[State 205, Hit]
type = HitDef
trigger1 = Time = 0 && Anim = 205
damage = 40
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5, Hit
pausetime = 12,12
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = 0, -56
hitsound = S22, 5
guardsound = S21, 0
ground.type = Low
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -8
airguard.velocity = -1.7, -0.7
air.hittime = 15
air.type = Low
air.velocity = -8, -3
envshake.time = 10
envshake.ampl = 5
getpower = 90,0
givepower = 60,90

[State 205, Hit]
type = HitDef
trigger1 = Time = 0 && Anim = 211
damage = 45
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5, Hit
pausetime = 12,12
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = 0, -76
hitsound = S22, 5
guardsound = S21, 0
ground.type = Low
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -8
airguard.velocity = -1.7, -0.7
air.hittime = 15
air.type = Low
air.velocity = -8, -3
air.hittime = 14
envshake.time = 10
envshake.ampl = 5
getpower = 90,0
givepower = 60,90
;[State 205, Pursuit]
;type = ChangeState
;triggerall = Anim = 206
;trigger1 = MoveContact = 1 
;trigger1 = MoveGuarded = 0
;trigger1 = command = "holdup"
;value = 9000
;ctrl = 1

[State 205, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 20, 2
channel = 1

[State 205, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && Anim = 205
value = 0, 4
channel = 0

[State 205, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 && Anim = 211
value = 0, 2
channel = 0

[State 205, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 400]
type = C
physics = C
movetype = A
anim = 400
velset = 0,0
juggle = 1
sprpriority = 1
ctrl = 0

[State 400, Hit]
type = HitDef
trigger1 = Time = 0
damage = 20
attr = S, NA
hitflag = MAF
guardflag = LA
animtype = Light
priority = 3, Hit
pausetime = 8,8
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = 0, -46
hitsound = S22, 0
guardsound = S21, 0
ground.type = Low
ground.slidetime = 4
ground.hittime = 8
ground.velocity = -3
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 8
getpower = 30,0
givepower = 20,30

[State 400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 0
channel = 1

[State 400, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;==========================================================================
[Statedef 401]
type = C
physics = C
movetype = A
anim = 401
velset = 0,0
juggle = 1
sprpriority = 1
ctrl = 0

[State 401, Hit]
type = HitDef
trigger1 = Time = 0
damage = 20
attr = S, NA
hitflag = MAF
guardflag = LA
animtype = Light
priority = 3, Hit
pausetime = 8,8
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = 0, -6
hitsound = S22, 1
guardsound = S21, 0
ground.type = Low
ground.slidetime = 4
ground.hittime = 8
ground.velocity = -3
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 8
getpower = 30,0
givepower = 20,30

[State 401, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 0
channel = 1

[State 401, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;==========================================================================
[Statedef 402]
type = C
physics = C
movetype = A
anim = 402
velset = 0,0
juggle = 1
sprpriority = 1
ctrl = 0

[State 402, Hit]
type = HitDef
trigger1 = Time = 0
damage = 30
attr = S, NA
hitflag = MAF
guardflag = LA
animtype = Medium
priority = 5, Hit
pausetime = 10,10
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = 0, -46
hitsound = S22, 2
guardsound = S21, 0
ground.type = Low
ground.slidetime = 5
ground.hittime = 12
ground.velocity = -5
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -3, -3
air.hittime = 12
envshake.time = 7
envshake.ampl = 5
getpower = 60,0
givepower = 40,60

[State 402, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 1
channel = 1

[State 402, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;==========================================================================
[Statedef 403]
type = C
physics = C
movetype = A
anim = 403
velset = 0,0
juggle = 1
sprpriority = 1
ctrl = 0

[State 403, Hit]
type = HitDef
trigger1 = Time = 0
damage = 30
attr = S, NA
hitflag = MAF
guardflag = LA
animtype = Medium
priority = 5, Hit
pausetime = 10,10
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = 0, -10
hitsound = S22, 3
guardsound = S21, 0
ground.type = Low
ground.slidetime = 5
ground.hittime = 12
ground.velocity = -5
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -3, -3
air.hittime = 12
envshake.time = 7
envshake.ampl = 5
getpower = 60,0
givepower = 40,60

[State 403, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 1
channel = 1

[State 403, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;==========================================================================
[Statedef 404]
type = C
physics = C
movetype = A
anim = 404
velset = 0,0
juggle = 1
sprpriority = 1
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem=1
x = 6
[State 0, VelSet]
type = VelSet
trigger1 = animelem=7
x = 0

[State 210, 0]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 35
animtype = Medium
air.animtype = Medium
fall.animtype = Medium
hitflag = MA
guardflag = MA
pausetime = 12,12
sparkno = s2220
guard.sparkno = s7050
sparkxy = -10,-80
hitsound = S22, 4
guardsound = S21, 0
ground.type = HIGH
air.type = High
ground.slidetime = 20
ground.hittime = 30
air.hittime = 70
guard.ctrltime = 20
ground.velocity = -1,-13
guard.velocity = -6
air.velocity = -1,-11
airguard.velocity = -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -6
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
persistent = 0
fall = 0
air.fall = 0
fall.recover = 1
air.recover = 1
yaccel = .4
fall.envshake.time = 20
fall.envshake.freq = 180
fall.envshake.ampl = -2
fall.envshake.phase = 90
envshake.time = 10
envshake.ampl = 5
getpower = 60,0
givepower = 40,60

[State 420, jump combo]
type = Changestate
trigger1 = movehit ; when you hit the opponent
trigger1 = command = "holdup"
value = 123 ; the superjump state
ctrl = 1 ; these menas that you re-gain control

[State 404, Pursuit]
type = ChangeState
trigger1 = MoveContact = 1
trigger1 = MoveGuarded = 0
trigger1 = command = "holdup"
value = 9000
ctrl = 1

[State 404, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 2
channel = 1

[State 404, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;==========================================================================
[Statedef 405]
type = C
physics = C
movetype = A
anim = 405
velset = 0,0
juggle = 1
sprpriority = 1
ctrl = 0

[State 405, Hit]
type = HitDef
trigger1 = Time = 0
damage = 40
attr = C, NA
hitflag = MAF
guardflag = LA
animtype = Hard
priority = 5, Hit
pausetime = 12,12
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = 5, -10
hitsound = S22, 5
guardsound = S21, 0
ground.type = Trip
ground.slidetime = 9
ground.hittime = 15
ground.velocity = -1, -4.5
airguard.velocity = -1.7, -4
air.type = High
air.velocity = -2, -4.5
air.hittime = 15
fall = 1
envshake.time = 10
envshake.ampl = 5
getpower = 90,0
givepower = 60,90

[State 405, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20, 2
channel = 1

[State 405, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;==========================================================================
[Statedef 600]
type = A
movetype = A
physics = A
anim = 600
juggle = 1
sprpriority = 1
ctrl = 0

[State 600, 1]
type = PlaySnd
trigger1 = Time = 1
value = 20, 0
channel = 1

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
guardflag = HA
animtype = Light
priority = 3
pausetime = 12,12
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = -10, -35
hitsound = S22, 0
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -2
air.velocity = -1, -7
getpower = 30,0
givepower = 20,30

[State 600, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1
;==========================================================================
[Statedef 601]
type = A
movetype = A
physics = A
anim = 601
juggle = 1
sprpriority = 1
ctrl = 0

[State 601, 0]
type = ChangeAnim
triggerall = Time = 0
trigger1 = Vel X > 0 || Vel X < 0
value = 601



[State 601, Hit]
type = HitDef
trigger1 = Time = 0 && Anim = 601
attr = A, NA
damage = 20
guardflag = HA
animtype = Light
priority = 3
pausetime = 12,12
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = -10, -35
hitsound = S22, 1
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -2
air.velocity = -1, -7
getpower = 30,0
givepower = 20,30

[State 601, Hit]
type = HitDef
trigger1 = Time = 0 && Anim = 606
attr = A, NA
damage = 25
guardflag = HA
animtype = Light
priority = 3
pausetime = 12,12
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = -10, -35
hitsound = S22, 1
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -2
air.velocity = -1, -7
getpower = 30,0
givepower = 20,30


[State 601, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1
;==========================================================================
[Statedef 602]
type = A
movetype = A
physics = A
juggle = 1
ctrl = 0
anim = 602
sprpriority = 3

[State 602, 1]
type = PlaySnd
trigger1 = Time = 1
value = 20, 1
channel = 1

[State 602, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
guardflag = HA
animtype = Medium
priority = 4
pausetime = 12,12
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = -10, -35
hitsound = S22, 2
guardsound = S21, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -6
air.velocity = -1, -7
envshake.time = 7
envshake.ampl = 5
getpower = 60,0
givepower = 40,60

[State 602, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1
;==========================================================================
[Statedef 603]
type = A
movetype = A
physics = A
juggle = 1
ctrl = 0
anim = 603
sprpriority = 3

[State 603, 0]
type = ChangeAnim
triggerall = Time = 0
trigger1 = Vel X > 0 || Vel X < 0
value = 603



[State 603, HitDef]
type = HitDef
trigger1 = Time = 0 && Anim = 603
attr = A, NA
damage = 30
hitflag=MAF
guardflag = HA
animtype = Medium
priority = 4
pausetime = 12,12
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = -10, -35
hitsound = S22, 3
guardsound = S21, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -6
air.velocity = -1, -7
envshake.time = 7
envshake.ampl = 5
getpower = 60,0
givepower = 40,60

[State 603, HitDef]
type = HitDef
trigger1 = Time = 0 && Anim = 607
attr = A, NA
damage = 35
guardflag = HA
animtype = Medium
priority = 4
pausetime = 12,12
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = -10, -35
hitsound = S22, 3
guardsound = S21, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -6
air.velocity = -1, -7
envshake.time = 7
envshake.ampl = 5
getpower = 60,0
givepower = 40,60

[State 603, 1]
type = PlaySnd
trigger1 = AnimElem = 1 && Anim = 603
value = 20, 1
channel = 1

[State 603, 1]
type = PlaySnd
trigger1 = AnimElem = 2 && Anim = 607
value = 20, 1
channel = 1

[State 603, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1
;==========================================================================
[Statedef 604]
type = A
movetype = A
physics = A
juggle = 1
ctrl = 0
anim = 604
sprpriority = 3

[State 604, 1]
type = PlaySnd
trigger1 = Time = 1 
value = 20, 2
channel = 1

[State 604, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 40
guardflag = HA
animtype = Hard
priority = 4
pausetime = 12,12
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = -10, -35
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -9
air.velocity = -5, 7
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower = 90,0
givepower = 60,90

[State 604, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1
;==========================================================================
[Statedef 605]
type = A
movetype = A
physics = A
juggle = 1
ctrl = 0
anim = 605
sprpriority = 3

[State 605, 0]
type = ChangeAnim
triggerall = Time = 0
trigger1 = Vel X > 0 || Vel X < 0
value = 605

[State 605, 0]
type = ChangeAnim
triggerall = Time = 0
trigger1 = Vel X = 0
value = 608

[State 605, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && Anim = 605
value = 20, 2

[State 605, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 && Anim = 608
value = 20, 2
channel = 1

[State 605, 2]
type = HitDef
trigger1 = Time = 0 && Anim = 605
attr = A, NA
damage = 40
guardflag = HA
animtype = Hard
priority = 4
pausetime = 12,12
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = -10, -35
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -9
air.velocity = -15, 15
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower = 90,0
givepower = 60,90

[State 605, 2]
type = HitDef
trigger1 = AnimElem = 3 && Anim = 608
attr = A, NA
damage = 45
guardflag = HA
animtype = Hard
priority = 4
pausetime = 12,12
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = -10, -35
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -9
air.velocity = -15, 15
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower = 90,0
givepower = 60,90

[State 605, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1

;==========================================================================
;Command Attacks
;==========================================================================
;Overhead Axe Kick
;==========================================================================
[Statedef 700]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
sprpriority = 4
anim = 215

[State 700, Velocity]
type = PosAdd
trigger1 = AnimElem = 1
x = 3.8
;ignorehitpause = 0
;persistent = 1

[State 700, 2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 20, 2
channel = 1

[State 700, 2]
type = PlaySnd
trigger1 = AnimElem = 6 
value = 0, 2
channel = 0

[State 700, 3]
type = HitDef
trigger1 = AnimElem = 8
attr = S, NA
damage = 30
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = 0, -76
hitsound = S22, 5
guardsound = S21, 0
ground.type = Low
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -8
airguard.velocity = -2.7, -1.7
air.type = Low
air.velocity = -1.8, -2.9
air.hittime = 15
envshake.time = 10
envshake.ampl = 5
getpower = 60,0
givepower = 40,60

[State 700, 3]
type = HitDef
trigger1 = AnimElem = 9
attr = S, NA
damage = 30
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
guard.sparkno = s7050
sparkno = s7000+(random%8)
sparkxy = 0, -49
hitsound = S22, 5
guardsound = S21, 0
ground.type = Low
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -8
airguard.velocity = -2.7, -1.7
air.type = Low
air.velocity = -1.8, -2.9
air.hittime = 15
envshake.time = 10
envshake.ampl = 5
getpower = 60,0
givepower = 40,60

[State 700, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==========================================================================
;Front Spin Stab Kick
;==========================================================================
[Statedef 710]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
sprpriority = 4
anim = 216

[State 710, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 20, 2
channel = 1

[State 710, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 2
channel = 0

[State 710, Velocity]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
x = 16
;ignorehitpause = 0
;persistent = 1

[State 710, Velocity]
type = PosAdd
trigger1 = AnimElem = 8
x = -8
;ignorehitpause = 0
;persistent = 1

[State 710, Velocity]
type = PosAdd
trigger1 = AnimElemNo(0) = 5
x = 8
;ignorehitpause = 0
;persistent = 1

[State 710, 3]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 60,5
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -56
hitsound = S22, 5
guardsound = S21, 0
ground.type = Low
air.type = Low
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = -20,-8
air.velocity = -20,-8
air.hittime = 30
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
p2stateno = 9040
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
envshake.time = 15
envshake.ampl = 5
getpower = 90,0
givepower = 60,90

[State 710, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 712]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
sprpriority = 4
anim = 216

[State 710, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 20, 2
channel = 1

[State 710, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 2
channel = 0

[State 710, Velocity]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
x = 26
;ignorehitpause = 0
;persistent = 1

[State 710, Velocity]
type = PosAdd
trigger1 = AnimElem = 8
x = -8
;ignorehitpause = 0
;persistent = 1

[State 710, Velocity]
type = PosAdd
trigger1 = AnimElemNo(0) = 5
x = 10
;ignorehitpause = 0
;persistent = 1

[State 710, 3]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 65,5
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -56
hitsound = S22, 5
guardsound = S21, 0
ground.type = Low
air.type = Low
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = -20,-8
air.velocity = -20,-8
air.hittime = 30
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
p2stateno = 9040
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
envshake.time = 15
envshake.ampl = 5
getpower = 90,0
givepower = 60,90

[State 710, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==========================================================================
[Statedef 714]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
sprpriority = 4
anim = 216
poweradd = -100

[State 0, Helper]
type = Helper
trigger1 = animelem=3
helpertype = normal ;player
name = "kick"
ID = 1227
stateno = 1227
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
size.xscale=1.2
;size.yscale (float)
ignorehitpause=0
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=3
value = S6,1
channel = 4

[State 710, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 20, 2
channel = 1

[State 710, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 2
channel = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = AnimElem = 4
x = 22

[State 710, 3]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 90,15
animtype = Diagup
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -36
hitsound = S5,0
guardsound = S21, 0
ground.type = Low
air.type = Low
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = -20,-8
air.velocity = -20,-8
air.hittime = 30
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
p2stateno = 9040
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
envshake.time = 15
envshake.ampl = 5
palfx.time = 40
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
getpower = 0,0
givepower = 60,90

[State 0, Helper]
type = Helper
trigger1 = movehit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 710, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==========================================================================
;Throws
;==========================================================================
;Punch Throw; Seoi Nage
;==========================================================================
[Statedef 800]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 800

[State 800, Missed]
type = PlaySnd
trigger1 = AnimElem = 3
value = 10, 3
channel = 0

[State 800, 1]
type = HitDef
trigger1 = time=0
attr = S, NT
hitflag = M
getpower = 90
givepower = 60
priority = 4, Miss
sparkno = -1
sprpriority = 1
p1facing = IfElse (Command = "holdback", 1, -1)
p2facing = 1
p1stateno = 810
p2stateno = 815
guard.dist = 0
fall = 1

[State 800, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 810]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 810
sprpriority = -1

[State 810, SFX]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0, 4
channel = 0

[State 810, SFX]
type = PlaySnd
trigger1 = AnimElem = 1
value = 28, 0
channel = 1

[State 810, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(4) < 0
edge = 25, 65

[State 810, Bind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 34, 0 ;-60

[State 810, Bind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 23, -57

[State 810, Bind]
type = TargetBind
trigger1 = AnimElem = 3
pos = -15, -95

[State 810, Bind]
type = TargetBind
trigger1 = AnimElem = 4
pos = -57, -88

[State 810, Subtract HP]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = -90

[State 810, Turn]
type = Turn
trigger1 = AnimElem = 9

[State 810, Thrown]
type = TargetState
trigger1 = AnimElem = 5
value = 816

[State 810, Finish]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 815]
type = A
MoveType = H
physics = N
VelSet = 0, 0

[State 815, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 815

[Statedef 816]
type = A
MoveType = H
physics = N
VelSet = 4, -6
poweradd = 20

[State 816, POS]
type = PosSet
trigger1 = Time = 0
y = 0

[State 816, Gravity]
type = VelAdd
trigger1 = 1
y = .4

[State 816, 2]
type = ChangeState
triggerall = (vel y > 0) && (pos y >= -20) 
triggerall = Alive 
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200

[State 816, 4]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100
;==========================================================================
;Kick Throw; Hell Whell
;==========================================================================
[Statedef 801]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 800

[State 801, Missed]
type = PlaySnd
trigger1 = AnimElem = 3
value = 10, 3
channel = 0

[State 801, 1]
type = HitDef
trigger1 = time=0
attr = S, NT
hitflag = M
getpower = 90
givepower = 60
priority = 4, Miss
sparkno = -1
sprpriority = 1
p1facing = IfElse (Command = "holdback", 1, -1)
p2facing = 1
p1stateno = 820
p2stateno = 825
guard.dist = 0
fall = 1

[State 801, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 820]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 820
sprpriority = -1

[State 820, SFX]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 4
channel = 0

[State 820, SFX]
type = PlaySnd
trigger1 = AnimElem = 9
value = 0, 1
channel = 0

[State 820, SFX]
type = PlaySnd
trigger1 = AnimElem = 1
value = 28, 0
channel = 1

[State 820, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(12) < 0
edge = 40, 40

[State 820, Bind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 34, 0 ;-60

[State 820, Bind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 34, -61

[State 820, Bind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 6, -67

[State 860, Bind]
type = TargetBind
trigger1 = AnimElem = 4, >= 0 && AnimElem = 5, < 0
pos = -29, -47

[State 860, Bind]
type = TargetBind
trigger1 = AnimElem = 5, >= 0 && AnimElem = 6, < 0
pos = -25, -18

[State 860, Bind]
type = TargetBind
trigger1 = AnimElem = 6, >= 0 && AnimElem = 7, < 0
pos = 19, -24

[State 860, Bind]
type = TargetBind
trigger1 = AnimElem = 7, >= 0 && AnimElem = 8, < 0
pos = -2, -61

[State 820, Position]
type = PosAdd
trigger1 = Time = [25,50]
x = -3

[State 820, Bind]
type = TargetBind
trigger1 = AnimElem = 8
pos = -21, -54

[State 820, Subtract HP]
type = TargetLifeAdd
trigger1 = AnimElem = 9
value = -90

[State 820, Turn]
type = Turn
trigger1 = AnimElem = 14

[State 820, Thrown]
type = TargetState
trigger1 = AnimElem = 9
value = 826

[State 820, Magnitute]
type = EnvShake
trigger1 = AnimElem = 9
time = 10
freq = 120
ampl = -4
;phase = 
;ignorehitpause = 0
;persistent = 1

[State 820, Finish]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 825]
type = A
MoveType = H
physics = N
VelSet = 0, 0

;[State 825, Position]
;type = PosAdd
;trigger1 = Time = [25,50]
;x = 3

[State 825, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 825

[Statedef 826]
type = A
MoveType = H
physics = N
VelSet = 8, -5
poweradd = 20

[State 826, POS]
type = PosSet
trigger1 = Time = 0
y = 0

[State 826, Gravity]
type = VelAdd
trigger1 = 1
y = .4

[State 826, 2]
type = ChangeState
triggerall = (vel y > 0) && (pos y >= -20) 
triggerall = Alive 
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200

[State 826, 4]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100
;==========================================================================
;Air Throw
;==========================================================================
;(Air Kick Throw) Hell Windmill
;==========================================================================
[Statedef 850]
type = A
movetype = A
physics = A
juggle = 0
ctrl = 0
anim = 850

[State 850, Missed]
type = PlaySnd
trigger1 = AnimElem = 3
value = 10, 3
channel = 0

[State 850, 1]
type = HitDef
Trigger1 = Time = 0
attr = A, NT
hitflag = AF
priority = 3, Miss
sparkno = -1
sprpriority = -1
p1facing = IfElse (Command = "holdback", 1, -1)
p2facing = 1
p1stateno = 860
p2stateno = 825
numhits = 0
fall = 1

[State 850, 2]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52
;==========================================================================
[Statedef 860]
type = A
physics = N
movetype = A
;velset = 0,0
anim = 820
sprpriority = -1
ctrl = 0

[State 860, SFX]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 4
channel = 0

[State 860, SFX]
type = PlaySnd
trigger1 = AnimElem = 9
value = 0, 1
channel = 0

[State 860, SFX]
type = PlaySnd
trigger1 = AnimElem = 1
value = 28, 0
channel = 1

[State 860, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.45
;ignorehitpause =
;persistent =

[State 860, PosSet]
type = PosSet
trigger1 = Pos Y >= 0 && Vel Y > 0
y = 0
;ignorehitpause =
;persistent =

[State 860, VelSet]
type = VelSet
trigger1 = Pos Y >= 0
y = 0
;ignorehitpause =
;persistent =

[State 860, VelSet]
type = VelSet
trigger1 = Pos Y != 0 && AnimElem = 8, < 0
x = -3
;ignorehitpause =
;persistent =

[State 860, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0
;ignorehitpause =
;persistent =

[State 860, VelMul]
type = VelMul
trigger1 = Pos Y = 0 && Vel X > 0
x = 0.8
;ignorehitpause =
;persistent =

[State 860, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(14) < 0
edge = 40, 40

[State 860, Bind]
type = TargetBind
trigger1 = AnimElem = 1, >= 0 && AnimElem = 2, < 0
pos = 34, 0 ;-60

[State 860, Bind]
type = TargetBind
trigger1 = AnimElem = 2, >= 0 && AnimElem = 3, < 0
pos = 34, -61

[State 860, Bind]
type = TargetBind
trigger1 = AnimElem = 3, >= 0 && AnimElem = 4, < 0
pos = 6, -67

[State 860, Bind]
type = TargetBind
trigger1 = AnimElem = 4, >= 0 && AnimElem = 5, < 0
pos = -29, -47

[State 860, Bind]
type = TargetBind
trigger1 = AnimElem = 5, >= 0 && AnimElem = 6, < 0
pos = -25, -18

[State 860, Bind]
type = TargetBind
trigger1 = AnimElem = 6, >= 0 && AnimElem = 7, < 0
pos = 19, -24

[State 860, Bind]
type = TargetBind
trigger1 = AnimElem = 7, >= 0 && AnimElem = 8, < 0
pos = -2, -61

;[State 860, Position]
;type = PosAdd
;trigger1 = Time = [25,50]
;x = -3

[State 860, Bind]
type = TargetBind
trigger1 = AnimElem = 8
pos = -21, -54

[State 860, Subtract HP]
type = TargetLifeAdd
trigger1 = AnimElem = 9
value = -90

[State 860, Turn]
type = Turn
trigger1 = AnimElem = 14

[State 860, Thrown]
type = TargetState
trigger1 = AnimElem = 9
value = 826

[State 860, Magnitute]
type = EnvShake
trigger1 = AnimElem = 9
time = 10
freq = 120
ampl = -4
;phase =
;ignorehitpause = 0
;persistent = 1

[State 860, Finish]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;==========================================================================
;Roll Recovery Alpha 3 Style (coding credited to MystikBlaze)
;==========================================================================
[Statedef 900]  ;Roll Away
type    = C       
MoveType= I       
physics = N
poweradd= 0
VelSet = -6.5,0      
ctrl = 0
anim = 901
sprpriority = -1

[State 900, PlayerPush]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 900, VelSet]   
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 900, PosSet]
type = PosSet
trigger1 = time >= 0
y = 0



[State 900, NotHitBy]  
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 18

[State 900, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;=================================================================================
[Statedef 901]  ;in place
type    = C       
MoveType= I       
physics = N
poweradd= 0
VelSet = 0,0      
ctrl = 0
anim = 900
sprpriority = -1

[State 901, PlayerPush]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 901, VelSet]   
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 901, PosSet]
type = PosSet
trigger1 = time >= 0
y = 0


[State 901, NotHitBy]  
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 18

[State 901, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;=================================================================================
[Statedef 902]  ;Roll Through
type    = C       
MoveType= I       
physics = N
poweradd= 0
VelSet = 6.5,0      
ctrl = 0
anim = 900
sprpriority = -1

[State 902, PlayerPush]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 902, VelSet]   
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 902, PosSet]
type = PosSet
trigger1 = time >= 0
y = 0


[State 902, NotHitBy]  
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 21

[State 902, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
;SNK Style Evasion (Roll Torward, Roll Away, Side Step)
;==========================================================================
[Statedef 925]
type = S
movetype = I
anim = 925
sprpriority = -2
velset = 3,0
ctrl = 0

[State 925, Shadows]
type = AfterImage
trigger1 = AnimElem = 1, 1
time = 2
trans = add1

[State 925, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 925, 1]
type = VarSet
trigger1 = 1
var(4) = (random % 2) + 1

[State 925, PlaySnd]
type = PlaySnd
triggerall = var(4) = 1
trigger1 = AnimElem = 1
value = 0,1
channel = 0

[State 925, PlaySnd]
type = PlaySnd
triggerall = var(4) = 2
trigger1 = AnimElem = 1
value = 0,0
channel = 0

[State 925, End]
type = ChangeState
trigger1 = AnimTime = 0 
value = 0
ctrl = 1
;==========================================================================
[Statedef 926]
type = S
movetype = I
anim = 926
sprpriority = -2
velset = -3,0
ctrl = 0

[State 926, Shadows]
type = AfterImage
trigger1 = AnimElem = 1, 1
time = 2
trans = add1

[State 926, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 926, 1]
type = VarSet
trigger1 = 1
var(4) = (random % 2) + 1

[State 926, PlaySnd]
type = PlaySnd
triggerall = var(4) = 1
trigger1 = AnimElem = 1
value = 0,1
channel = 0

[State 926, PlaySnd]
type = PlaySnd
triggerall = var(4) = 2
trigger1 = AnimElem = 1
value = 0,0
channel = 0

[State 926, End]
type = ChangeState
trigger1 = AnimTime = 0 
value = 0
ctrl = 1
;==========================================================================
[Statedef 950]
type = S
movetype = I
anim = 950
sprpriority = -2
velset = 0,0
ctrl = 0

[State 950, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,3
channel = 0

[State 950, End]
type = ChangeState
trigger1 = AnimTime = 0 
value = 0
ctrl = 1
;==========================================================================
;SNK Style Charge-Up (credited to Necromancer)
;==========================================================================
;==========================================================================
;Counters (Punch & Kick) credited to MysticBlaze
;==========================================================================
[Statedef 980]
type = S
movetype = A
physics = S
juggle = 1
velset = 0, 0
anim = 2900
ctrl = 0
sprpriority = 1
poweradd = 0

[State 980, SFX]
type = PlaySnd
trigger1 = AnimElem = 2
value = 60, 0
channel = 1

[State 980, SFX]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 1
channel = 0

[State 980, SFX]
type = PlaySnd
trigger1 = AnimElem = 5
value = 20, 3
channel = 1

[State 980, Hit]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
damage = 0, 10
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5, Hit
pausetime = 6, 10
sparkno = s7000+(random%4)
sparkxy = -10, -76
hitsound = S22, 4
numhits = 1
guardsound = S21, 0
ground.type = High
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -2, -9
airguard.velocity = -5, -8
air.type = High
air.velocity = -5, -4
fall = 1
air.fall = 1
air.hittime = 25
fall.recovery = 0
p2stateno = 999

[State 980, Delay]
type = SuperPause
trigger1 = Time = 0
anim = -1
darken = 0
time = 20
movetime = 9

[State 980, Hold]
type = Width
trigger1 = Time = [12,27]
value = 48, -48

[State 980, Hold]
type = Width
trigger1 = Time = [28,31]
value = 8, -8

[State 980, Hold]
type = Width
trigger1 = Time >= 32
value = 0, 0

[State 980, MUTEKI]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 45

[State 980, Change]
type = ChangeState
trigger1 = AnimElem = 6
value = 981

[Statedef 981]
type = A
movetype = A
physics = A
velset = 6.01, -8
juggle = 1

[State 981, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 981, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 0

[State 981, 3]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
damage = 0, 10
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5, Hit
pausetime = 6, 10
guard.sparkno = s7050
sparkno = s7000+(random%4)
sparkxy = -10, -76
hitsound = S22, 4
numhits = 1
guardsound = S21, 0
ground.type = High
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -2, -9
airguard.velocity = -5, -8
air.type = High
air.velocity = -5, -4
fall = 1
air.fall = 1
air.hittime = 25
fall.recovery = 0
p2stateno = 999

[State 981, 4]
type = ChangeAnim
triggerall = Anim = 2900
trigger1 = Vel Y > 0
value = 1201

[State 981, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 1206

[Statedef 990]
type = S
movetype = A
physics = S
juggle = 1
velset = 0, 0
anim = 2950
ctrl = 0
sprpriority = 1
poweradd = 0

[State 990, SFX]
type = PlaySnd
trigger1 = AnimElem = 2
value = 60, 0
channel = 1

[State 990, SFX]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0, 4
channel = 0

[State 990, SFX]
type = PlaySnd
trigger1 = AnimElem = 6
value = 20, 3
channel = 1

[State 990, Hit]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = 0, 10
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5, Hit
pausetime = 6, 10
guard.sparkno = s7050
sparkno = s7000+(random%4)
sparkxy = -10, -16
numhits = 1
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -2, -9
airguard.velocity = -5, -8
air.type = High
air.velocity = -5, -4
air.hittime = 25
fall.recovery = 0
fall = 1
air.fall = 1
p2stateno = 999

[State 990, Delay]
type = SuperPause
trigger1 = Time = 0
anim = -1
darken = 0
time = 20
movetime = 9

[State 990, Hold]
type = Width
trigger1 = Time = [12,27]
value = 48, -48

[State 990, Hold]
type = Width
trigger1 = Time = [28,31]
value = 8, -8

[State 990, Hold]
type = Width
trigger1 = Time >= 32
value = 0, 0

[State 990, MUTEKI]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 45

[State 990, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 999]
type = A
movetype = H
physics = N
ctrl = 0

[State 999, Animation]
type = ChangeAnim2
trigger1 = Time = 0
value = 2999

[State 999, Damage]
type = LifeAdd
trigger1 = Time = 0
value = -100

[State 999, Position]
type = PosSet
trigger1 = Time = 0
y = -28

[State 999, Velocity]
type = VelSet
trigger1 = AnimElem = 1
x = -8
y = -8

[State 999, Gravity]
type = VelAdd
trigger1 = 1
y = .49

[State 999, SelfChange]
type = SelfState
trigger1 = Pos Y >= 0
value = 5100
;==========================================================================
;Special Moves
;==========================================================================
;Hadouken (Light, Medium, Heavy)
;==========================================================================
[Statedef 1000]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
velset = 0, 0
anim = 1000
sprpriority = 4
poweradd = -100

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,0
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4,0
channel = 1

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 5
projID = 1000
projanim = 1001
projhitanim = 1002
projscale=.5,.5
projedgebound = 80
projstagebound = 80
projsprpriority = 7
offset = 88, -68
velocity = 3, 0
attr = S, SP
damage = 30, 10
animtype = Light
getpower = 0
givepower = 40,60
guardflag = MA
pausetime = 0, 10
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -1
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
envshake.time = 12
envshake.ampl = 6

[State 1000, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 1001]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
velset = 0, 0
anim = 1000
sprpriority = 4
poweradd = -100

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,0
channel = 0

[State 1001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4,0
channel = 1

[State 1001, 2]
type = Projectile
trigger1 = AnimElem = 5
projID = 1000
projanim = 1001
projhitanim = 1002
projscale=.5,.5
projedgebound = 80
projstagebound = 80
projsprpriority = 7
offset = 88, -68
velocity = 4, 0
attr = S, SP
damage = 32, 10
animtype = Medium
getpower = 0
givepower = 40,60
guardflag = MA
pausetime = 0, 10
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -1
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
envshake.time = 12
envshake.ampl = 6

[State 1001, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 1002]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
velset = 0, 0
anim = 1000
sprpriority = 4
poweradd = -150

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,0
channel = 0

[State 1002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4,0
channel = 1

[State 1002, 2]
type = Projectile
trigger1 = AnimElem = 5
projID = 1000
projanim = 1055
projhitanim=1059
projscale=.5,.4
projsprpriority = 7
projhits=2
offset = 88, -68
projedgebound = 120
projstagebound = 120
velocity = 5.5, 0
attr = S, SP
damage = 20,10
animtype = Hard
getpower = 0
givepower = 20,30
guardflag = MA
pausetime = 0, 10
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -1
hitsound = S5,0
guardsound = S21, 0
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
palfx.time = 40
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 12
envshake.ampl = 6

[State 0, Helper]
type = Helper
triggerall = ProjHit=1
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 1002, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
;Soukuu Hadouken (Light, Medium, Heavy)
;==========================================================================
[Statedef 1050]
type = A
movetype = A
physics = A
juggle = 1
ctrl = 0
anim = 1050
sprpriority = 4
poweradd = -100

[State 1050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,0
channel = 0

[State 1050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4,0
channel = 1

[State 1050, 2]
type = Projectile
trigger1 = AnimElem = 5
projID = 1000
projanim = 1051
projhitanim = 1052
projscale=.5,.5
projedgebound = 80
projstagebound = 80
projsprpriority = 7
offset = 72, -49
velocity = 3,3
animtype = Light
attr = S, SP
damage = 30, 10
getpower = 0
givepower = 40,60
hitflag = MAFD
guardflag = MA
pausetime = 0, 10
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -15
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 1
envshake.time = 12
envshake.ampl = 6

[State 1050, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1
;==========================================================================
[Statedef 1051]
type = A
movetype = A
physics = A
juggle = 1
ctrl = 0
anim = 1050
sprpriority = 4
poweradd = -100

[State 1051, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,0
channel = 0

[State 1051, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4,0
channel = 1

[State 1051, 2]
type = Projectile
trigger1 = AnimElem = 5
projID = 1000
projanim = 1051
projhitanim = 1052
projscale=.5,.5
projedgebound = 80
projstagebound = 80
projsprpriority = 7
offset = 72, -49
velocity = 4, 4
animtype = Medium
attr = S, SP
damage = 32, 10
getpower = 0
givepower = 40,60
hitflag = MAFD
guardflag = MA
pausetime = 0, 10
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -15
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 1
envshake.time = 12
envshake.ampl = 6

[State 1051, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1
;==========================================================================
[Statedef 1052]
type = A
movetype = A
physics = A
juggle = 1
poweradd = -100
ctrl = 0
anim = 1050
sprpriority = 4

[State 1052, Vel]
type = VelSet
trigger1 = Time > 0 && Pos Y < -5
x = ifelse(Vel X < 0, -0.7,ifelse(Vel X > 0, 0.7, 0))
y = 0.5
;ignorehitpause = 0
;persistent = 1

[State 1052, Vel]
type = VelSet
trigger1 = Time > 0 && Pos Y >= -5 && AnimElem = 4, < 3
x = 0
y = 0
;ignorehitpause = 0
;persistent = 1

[State 1052, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,0
channel = 0

[State 1052, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4,0
channel = 1

[State 1052, 2]
type = Projectile
trigger1 = AnimElem = 5
projID = 1000
projanim = 1058
projscale=.4,.4
projedgebound = 80
projstagebound = 80
projsprpriority = 7
offset = 72, -49
velocity = 5, 5
animtype = Back
attr = S, SP
damage = 34, 10
getpower = 0
givepower = 40,60
hitflag = MAFD
guardflag = MA
pausetime = 0, 10
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -15
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 1
envshake.time = 12
envshake.ampl = 6

[State 1052, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1
;==========================================================================
;Tatsumakisenpuukyaku
;==========================================================================
[Statedef 1100]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
juggle = 1
anim = 1100
sprpriority = 4

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,40
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1100, Velocity]
type = PosAdd
trigger1 = Time = 0
x = 9.5

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 1, = 2
x = 3
y = -6.5

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 6
y = 0

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 2
channel = 0

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
value = 20,3
channel = 1

[State 1100, 3]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
damage = 32, 2
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.cornerpush.veloff = -10
ground.type = Low
ground.hittime = 15
ground.velocity = -7, 0
guard.velocity = -9
air.velocity = -6, -4.5
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower = 30,0
givepower = 20,30

[State 1100, 3]
type = HitDef
trigger1 = AnimElem = 7
attr = A, SA
damage = 32, 2
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.cornerpush.veloff = -10
ground.type = High
ground.hittime = 15
ground.velocity = -10, 0
guard.velocity = -9
air.velocity = -6, -4.5
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower = 30,0
givepower = 20,30

[State 1100, Velocity]
type = VelAdd
trigger1 = AnimElem = 13, > 0
y = 0.35

[State 1100, Change]
type = ChangeState
trigger1 = ((AnimElem = 13, > 0) && (Vel Y > 0) && (Pos Y >= 0))
value = 1105
;==========================================================================
[Statedef 1101]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
juggle = 1
anim = 1101
sprpriority = 4

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,40
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1101, Velocity]
type = PosAdd
trigger1 = Time = 0
x = 9.5

[State 1101, Velocity]
type = VelSet
trigger1 = AnimElem = 1, = 2
x = 3
y = -6.5

[State 1101, Velocity]
type = VelSet
trigger1 = AnimElem = 6
y = 0

[State 1101, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 2
channel = 0

[State 1101, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
trigger3 = AnimElem = 18
trigger4 = AnimElem = 24
value = 20,3
channel = 1

[State 1101, 3]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
damage = 22, 2
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
ground.cornerpush.veloff = -10
guardsound = S21, 0
ground.type = Low
ground.hittime = 15
ground.velocity = -7, 0
guard.velocity = -9
air.velocity = -6, -4.5
air.hittime = 15
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower = 30,0
givepower = 20,30

[State 1101, 3]
type = HitDef
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
trigger3 = AnimElem = 19
trigger4 = AnimElem = 25
attr = A, SA
damage = 22, 2
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
ground.cornerpush.veloff = -10
guardsound = S21, 0
ground.type = High
ground.hittime = 15
ground.velocity = -10, 0
guard.velocity = -9
air.velocity = -6, -4.5
air.hittime = 15
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower = 30,0
givepower = 20,30

[State 1101, Velocity]
type = VelAdd
trigger1 = AnimElem = 25, > 0
y = 0.35

[State 1101, Change]
type = ChangeState
trigger1 = ((AnimElem = 25, > 0) && (Vel Y > 0) && (Pos Y >= 0))
value = 1105
;==========================================================================
[Statedef 1102]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
juggle = 1
anim = 1102
sprpriority = 4
poweradd = -100

[State 2200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 6,2

[State xxx, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 2224
ID = 2224
pos = -30,40
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1102, Velocity]
type = PosAdd
trigger1 = Time = 0
x = 9.5

[State 1102, Velocity]
type = VelSet
trigger1 = AnimElem = 1, = 2
x = 3
y = -6.5

[State 1102, Velocity]
type = VelSet
trigger1 = AnimElem = 6
y = 0

[State 1102, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 2
channel = 0

[State 1102, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
trigger3 = AnimElem = 18
trigger4 = AnimElem = 24
trigger5 = AnimElem = 30
value = 20,3
channel = 1

[State 1102, 3]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
damage = 23, 5
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.cornerpush.veloff = -10
ground.type = Low
ground.hittime = 15
ground.velocity = -7, 0
guard.velocity = -9
air.velocity = -6, -4.5
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower = 0,0
givepower = 20,30

[State 1102, 3]
type = HitDef
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
trigger3 = AnimElem = 19
trigger4 = AnimElem = 25
trigger5 = AnimElem = 31
attr = A, SA
damage = 23, 5
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.cornerpush.veloff = -10
ground.type = High
ground.hittime = 15
ground.velocity = -10,0
guard.velocity = -9
air.velocity = -6, -4.5
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5
palfx.time = 50
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 10
envshake.ampl = 5
getpower = 0,0
givepower = 20,30

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 0, Helper]
type = Helper
trigger1 = animelem=2
helpertype = normal ;player
name = "kick flame"
ID = 1109
stateno = 1109
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
size.xscale =.5
size.yscale =.6

[State 1102, Velocity]
type = VelAdd
trigger1 = AnimElem = 31, > 0
y = 0.35

[State 1102, Change]
type = ChangeState
trigger1 = ((AnimElem = 31, > 0) && (Vel Y > 0) && (Pos Y >= 0))
value = 1105
;==========================================================================
[Statedef 1105]
type = S
movetype = I
physics = S
velset = 0,0
anim = 47

[State 1105, Velocity]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1105, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 1109]
ctrl = 0
sprpriority = 5
anim=3209

[State 1225, Bind]
type = BindToParent
trigger1 = Time = 0
time = -1
pos = 0,-50
;ignorehitpause = 0
;persistent = 1

[State 1225, Shadowless]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 1225, Eliminate]
type = DestroySelf
;trigger1 = AnimTime = 0
trigger1 = parent, stateno != 1102
;==========================================================================
;Kuuchuu Tatsumakisenpuukyaku
;==========================================================================
[Statedef 1150]
type = A
movetype = A
physics = A
ctrl = 0
juggle = 8
anim = 1150
sprpriority = 4

[State 1150, Velocity]
type = VelAdd
trigger1 = Time = 0
x = ifelse(Vel X < 0, -1, 1)
y = -2

[State 1150, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 4
channel = 0

[State 1150, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 16
value = 20,3
channel = 1

[State 1150, 3]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 11
attr = A, SA
damage = 32, 2
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.hittime = 15
ground.velocity = -2, -4.5
air.velocity = -4, -4.5
air.hittime = 15
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower = 30,0
givepower = 20,30

[State 1150, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1
;==========================================================================
[Statedef 1151]
type = A
movetype = A
physics = A
ctrl = 0
juggle = 5
anim = 1151
sprpriority = 4

[State 1151, Velocity]
type = VelAdd
trigger1 = Time = 0
x = ifelse(Vel X < 0, -1, 1)
y = -2

[State 1151, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 4
channel = 0

[State 1151, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 16
trigger4 = AnimElem = 22
value = 20,3
channel = 1

[State 1151, 3]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 11
trigger3 = AnimElem = 17
attr = A, SA
damage = 26, 2
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.hittime = 15
ground.velocity = -2, -4.5
air.velocity = -4, -4.5
air.hittime = 15
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower = 30,0
givepower = 20,30

[State 1151, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1
;==========================================================================
[Statedef 1152]
type = A
movetype = A
physics = A
ctrl = 0
juggle = 1
anim = 1152
sprpriority = 4
poweradd = -100

[State 2200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 6,2

[State 1152, Velocity]
type = VelAdd
trigger1 = Time = 0
x = ifelse(Vel X < 0, -1, 1)
y = -2

[State 1152, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 4
channel = 0

[State 1152, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 16
trigger4 = AnimElem = 22
trigger5 = AnimElem = 28
value = 20,3
channel = 1

[State 1152, 3]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 11
trigger3 = AnimElem = 17
trigger4 = AnimElem = 23
attr = A, SA
damage = 30, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.hittime = 15
ground.velocity = -2, -4.5
air.velocity = -4, -4.5
air.hittime = 15
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
palfx.time = 50
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 10
envshake.ampl = 5
getpower = 0,0
givepower = 20,30

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 0, Helper]
type = Helper
trigger1 = animelem=2
helpertype = normal ;player
name = "kick flame"
ID = 1159
stateno = 1159
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
size.xscale =.5
size.yscale =.6

[State 1152, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1

;==========================================================================
[Statedef 1159]
ctrl = 0
sprpriority = 5
anim=3209

[State 1225, Bind]
type = BindToParent
trigger1 = Time = 0
time = -1
pos = 0,-50
;ignorehitpause = 0
;persistent = 1

[State 1225, Shadowless]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 1225, Eliminate]
type = DestroySelf
;trigger1 = AnimTime = 0
trigger1 = parent, stateno != 1152
;==========================================================================
;Shouryuuken
;==========================================================================
[Statedef 1200]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
anim = 1200
sprpriority = 4
velset = 0,0

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1200, 0]
type = NotHitBy
trigger1 = 1
value = SCA, NP, SP
time = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
channel = 0
[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,2
channel = 3

[State 1200, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
damage = 5, 2
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = -2, -10
air.velocity = -3, -10
air.hittime = 2
fall = 1
air.fall = 1
ground.cornerpush.veloff = -15
guard.cornerpush.veloff = -15
air.cornerpush.veloff = -15
airguard.cornerpush.veloff = -15
envshake.time = 10
envshake.ampl = 5
getpower = 30,0
givepower = 20,30

[State 1200, 4]
type = ChangeState
trigger1 = AnimElem = 4
value = 1201
;==========================================================================
[Statedef 1201]
type = A
movetype = A
physics = A
velset = 3.01, -8
juggle = 1

[State 1201, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 1201, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 0

[State 1201, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = A, SA
damage = 60, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = -2, -10
air.velocity = -3, -10
air.hittime = 2
fall = 1
air.fall = 1
ground.cornerpush.veloff = -25
guard.cornerpush.veloff = -25
air.cornerpush.veloff = -25
airguard.cornerpush.veloff = -25
envshake.time = 10
envshake.ampl = 5
getpower = 90,0
givepower = 60,90

[State 1201, 4]
type = ChangeAnim
triggerall = Anim = 1200
trigger1 = Vel Y > 0
value = 1201

[State 1201, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 1206
;==========================================================================
[Statedef 1202]
type = S
movetype = A
physics = S
juggle = 8
ctrl = 0
anim = 1200
sprpriority = 4
velset = 0,0

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1202, 0]
type = NotHitBy
trigger1 = 1
value = SCA, NP, SP
time = 1

[State 1202, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
channel = 0
[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,2
channel = 3

[State 1202, 3]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S, SA
damage = 32, 2
animtype = up
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -48
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 10
ground.velocity = -2, -12
air.velocity = -2, -12
air.hittime = 10
fall = 1
air.fall = 1
ground.cornerpush.veloff = -15
guard.cornerpush.veloff = -15
air.cornerpush.veloff = -15
airguard.cornerpush.veloff = -15
envshake.time = 10
envshake.ampl = 5
getpower = 30,0
givepower = 20,30

[State 1202, 4]
type = ChangeState
trigger1 = AnimElem = 4
value = 1203
;==========================================================================
[Statedef 1203]
type = A
movetype = A
physics = A
velset = 5.01, -10
juggle = 8

[State 1203, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 1203, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 0

[State 1203, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = A, SA
damage = 32, 2
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -80
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = -2, -10
air.velocity = -3, -10
air.hittime = 2
fall = 1
air.fall = 1
ground.cornerpush.veloff = -25
guard.cornerpush.veloff = -25
air.cornerpush.veloff = -25
airguard.cornerpush.veloff = -25
envshake.time = 10
envshake.ampl = 5
getpower = 30,0
givepower = 20,30

[State 1203, 4]
type = ChangeAnim
triggerall = Anim = 1200
trigger1 = Vel Y > 0
value = 1201

[State 1203, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 1206
;==========================================================================
[Statedef 1204]
type = S
movetype = A
physics = S
juggle = 5
ctrl = 0
anim = 1200
sprpriority = 2
velset = 0,0
poweradd = -100

[State 2200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 6,0

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999
[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,2
channel = 3

[State 1204, 0]
type = NotHitBy
trigger1 = 1
value = SCA, NP, SP
time = 1

[State 1204, Flame]
type = Helper
triggerall = Anim = 1200
trigger1 = Time = 0
;helpertype = normal
;name = ""
ID = 1200
pos = 0,0
postype = p1
facing = 1
stateno = 1225
ownpal = 1
ignorehitpause = 1
persistent = 1
size.xscale=.5
size.yscale=.5
[State 1204, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
channel = 0

[State 1204, 3]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S, SA
damage = 30, 5
animtype = up
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8, 6
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -48
hitsound = S5,0
guardsound = S21, 0
ground.type = Low
ground.hittime = 10
ground.velocity = -2, -12
air.velocity = -2, -11
air.hittime = 10
fall = 0
air.fall = 1
palfx.time = 50
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0 
envshake.time = 10
envshake.ampl = 5
getpower = 0,0
givepower = 20,30

[State 1204, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
damage = 30, 5
animtype = up
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8, 8
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -48
hitsound = S5,0
guardsound = S21, 0
ground.type = High
ground.hittime = 10
ground.velocity = -2, -10
air.velocity = -3, -10
air.hittime = 10
fall = 1
air.fall = 1
ground.cornerpush.veloff = -15
guard.cornerpush.veloff = -15
air.cornerpush.veloff = -15
airguard.cornerpush.veloff = -15
palfx.time = 50
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 10
envshake.ampl = 5
getpower = 0,0
givepower = 20,30

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 1204, 4]
type = ChangeState
trigger1 = AnimElem = 4
value = 1205
;==========================================================================
[Statedef 1205]
type = A
movetype = A
physics = A
velset = 7.01, -12
juggle = 5

[State 1205, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 1205, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 0

[State 1205, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = A, SA
damage = 30, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -80
hitsound = S5,0
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = -2, -10
air.velocity = -3, -10
air.hittime = 2
fall = 1
air.fall = 1
ground.cornerpush.veloff = -35
guard.cornerpush.veloff = -35
air.cornerpush.veloff = -35
airguard.cornerpush.veloff = -35
palfx.time = 80
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 12
envshake.ampl = 5
getpower = 0,0
givepower = 20,30

[State 0, Helper]
type = Helper
triggerall = MoveHit&&P2Stateno =5000||P2stateno =5020
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 1205, 4]
type = ChangeAnim
triggerall = Anim = 1200
trigger1 = Vel Y > 0
value = 1201

[State 1205, Flame]
type = Explod
triggerall = Anim = 1201
trigger1 = AnimElem = 1
anim = 1299
ID = 1200
postype = p1
bindtime = 1
supermove = 1
pausemovetime = -1
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 1205, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 1206
;==========================================================================
[Statedef 1206]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
anim = 1202

[State 1206, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1206, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 1225]
ctrl = 0
sprpriority = 3

[State 1225, Bind]
type = BindToParent
trigger1 = Time = 0
time = -1
pos = 0,0 
;ignorehitpause = 0
;persistent = 1

[State 1225, Shadowless]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1225, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 1
value = 1225
ignorehitpause = 0
persistent = 1

[State 1225, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 2
value = 1226
ignorehitpause = 0
persistent = 1

[State 1225, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 3
value = 1227
ignorehitpause = 0
persistent = 1

[State 1225, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 4
value = 1228
ignorehitpause = 0
persistent = 1

[State 1225, Change]
type = ChangeAnim
triggerall = anim=1228
trigger1=animtime=0
value = 1229
ignorehitpause = 0
persistent = 1

[State 1225, Eliminate]
type = DestroySelf
;trigger1 = AnimTime = 0
trigger1 = parent, Anim != 1200
;==========================================================================
[Statedef 1226]
ctrl = 0
sprpriority = 3

[State 1225, Bind]
type = BindToParent
trigger1 = Time = 0
time = -1
pos = 0,0
;ignorehitpause = 0
;persistent = 1

[State 1225, Shadowless]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1225, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 1
value = 1225
ignorehitpause = 0
persistent = 1

[State 1225, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 2
value = 1226
ignorehitpause = 0
persistent = 1

[State 1225, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 3
value = 1227
ignorehitpause = 0
persistent = 1

[State 1225, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 4
value = 1228
ignorehitpause = 0
persistent = 1

[State 1225, Change]
type = ChangeAnim
triggerall = anim=1228
trigger1=animtime=0
value = 1229
ignorehitpause = 0
persistent = 1

[State 1225, Eliminate]
type = DestroySelf
;trigger1 = AnimTime = 0
trigger1 = parent, Anim != 1211

;==========================================================================
[Statedef 1227]
ctrl = 0
sprpriority = 5
anim=1501

[State 1225, Bind]
type = BindToParent
trigger1 = Time = 0
time = -1
pos = -50,10
;ignorehitpause = 0
;persistent = 1


[State 1225, Shadowless]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1225, Eliminate]
type = DestroySelf
;trigger1 = AnimTime = 0
trigger1 = animtime=0

;==========================================================================
;Nataotoshi Geri/Kamabarai Geri/Oosotomawashi Geri
;==========================================================================
[Statedef 1300]
type = S
physics = S
movetype = A
anim = 1300
velset = 0,0
juggle = 1
sprpriority = 1
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=3
value = S6,1
channel = 4

[State 0, Explod]
type = Explod
trigger1 = animelem=3
anim = 1501
ID = 1501
pos = -50,20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0
;persistent =


[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1300, Add]
type = PosAdd
trigger1 = AnimElem = 1
x = 3

[State 1300, Hit]
type = HitDef
trigger1 = time=0
damage = 50, 10
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5, Hit
pausetime = 25,25
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -56
hitsound = S5,1
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 30
ground.velocity = -8, 0
airguard.velocity = -1.7, -0.7
air.hittime = 20
air.type = High
air.velocity = -8, -3
envshake.time = 12
envshake.ampl = 5
palfx.time = 30
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
getpower = 90,0
givepower = 60,90

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=
ignorehitpause=1

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 20, 3
channel = 1

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 2
channel = 0

[State 1300, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 1310]
type = S
physics = S
movetype = A
anim = 1302
velset = 0,0
juggle = 1
sprpriority = 1
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=3
value = S6,0
channel = 5

[State 0, Explod]
type = Explod
trigger1 = animelem=3
anim = 1501
ID = 1501
pos = -25,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -2,2
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1.2,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0
;persistent =

[State 1310, Hit]
type = HitDef
trigger1 = time=0
damage = 34, 2
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5, Hit
pausetime = 15,15
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -76
hitsound = S22,5
guardsound = S21, 0
ground.type = Low
ground.slidetime = 8
ground.hittime = 20
ground.velocity = -5, 0
airguard.velocity = -1.7, -0.7
air.hittime = 20
air.type = High
air.velocity = -8, -3
envshake.time = 12
envshake.ampl = 5
palfx.time = 40
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
getpower = 30,0
givepower = 20,30

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=
ignorehitpause=1

[State 1310, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 20, 3
channel = 1

[State 1310, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 0
channel = 0

[State 1310, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 1301]
type = S
physics = S
movetype = A
anim = 1300
velset = 0,0
juggle = 1
sprpriority = 1
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=3
value = S6,1
channel = 4

[State 0, Explod]
type = Explod
trigger1 = animelem=3
anim = 1501
ID = 1501
pos = -50,20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0
;persistent =

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1301, Add]
type = PosAdd
trigger1 = AnimElem = 1
x = 4

[State 1301, Add]
type = PosAdd
trigger1 = AnimTime = 0
x = 5

[State 1301, Hit]
type = HitDef
trigger1 = time=0
damage = 34, 2
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5, Hit
pausetime = 25,25
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -56
hitsound = S5,1
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 30
ground.velocity = -4, 0
airguard.velocity = -1.7, -0.7
air.hittime = 30
air.type = High
air.velocity = -8, -3
envshake.time = 12
envshake.ampl = 5
palfx.time = 30
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
getpower = 30,0
givepower = 20,30

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=
ignorehitpause=1

[State 1301, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 20, 3
channel = 1

[State 1301, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 1
channel = 0

[State 1301, ChangeState]
type = ChangeState
trigger1 = movehit
trigger2=animtime=0
value = 1310
ctrl = 0
;==========================================================================
[Statedef 1311]
type = S
physics = S
movetype = A
anim = 1311
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

[State 1311, Hit]
type = HitDef
trigger1 = AnimElem = 6
damage = 70, 0
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5, Hit
pausetime = 15,15
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -76
hitsound = S22, 5
guardsound = S21, 0
ground.type = Low
ground.slidetime = 8
ground.hittime = 20
ground.velocity = -8, 0
airguard.velocity = -1.7, -0.7
air.hittime = 20
air.type = High
air.velocity = -8, -3
envshake.time = 12
envshake.ampl = 5

[State 1311, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 20, 3
channel = 1

[State 1311, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 0
channel = 0

[State 1311, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 1302]
type = S
physics = S
movetype = A
anim = 1300
velset = 0,0
juggle = 1
sprpriority = 1
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=3
value = S6,1
channel = 4

[State 0, Explod]
type = Explod
trigger1 = animelem=3
anim = 1501
ID = 1501
pos = -50,20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0
;persistent =

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1302, Add]
type = PosAdd
trigger1 = AnimElem = 1
x = 4

[State 1302, Add]
type = PosAdd
trigger1 = AnimTime = 0
x = 6

[State 1302, Hit]
type = HitDef
trigger1 = Time = 0
damage = 34, 2
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5, Hit
pausetime = 15,25
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -36
hitsound = S5,1
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 40
ground.velocity = -8, 0
airguard.velocity = -1.7, -0.7
air.hittime = 40
air.type = High
air.velocity = -8, -3
envshake.time = 12
envshake.ampl = 5
palfx.time = 50
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
getpower = 30,0
givepower = 20,30

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=
ignorehitpause=1

[State 1302, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 20, 3
channel = 1

[State 1302, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 4
channel = 0

[State 1302, ChangeState]
type = ChangeState
trigger1 = animtime=0
value = 1312
ctrl = 0

;==========================================================================
[Statedef 1312]
type = S
physics = S
movetype = A
anim = 1312
velset = 0,0
juggle = 1
sprpriority = 1
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=3
value = S6,2
channel = 4

[State 0, Explod]
type = Explod
trigger1 = animelem=4
anim = 1502
ID = 1502
pos = 0,40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 2,.8
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0
;persistent =

[State 7260, shrinkcircle]
type=modifyexplod
trigger1= animelem=7
ID=1502
scale=1.8-(.2*time),.8-(.2*time)

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1312, Hit]
type = HitDef
trigger1 = AnimElem = 6
damage = 36, 2
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5, Hit
pausetime = 15,15
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -76
hitsound = S5,0
guardsound = S21, 0
ground.type = Low
ground.slidetime = 8
ground.hittime = 20
ground.velocity = -6
airguard.velocity = -1.7, -0.7
air.hittime = 20
air.type = High
air.velocity = -8, -3
envshake.time = 12
envshake.ampl = 5
palfx.time = 50
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
getpower = 30,0
givepower = 20,30

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=
ignorehitpause=1

[State 1312, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 20, 3
channel = 1

[State 1312, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 0
channel = 0

[State 1312, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
;Ryusenkyaku (Light, Medium, Heavy)
;==========================================================================
[Statedef 1400]
type = A
movetype = A
physics = N
juggle = 1
ctrl = 0
anim = 1400
sprpriority = 4
velset = 0,0

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,35
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1400, Velocity]
type = VelSet
trigger1 = AnimElem = 3
x = 2
y = -10.5

[State 1400, Velocity]
type = VelAdd
trigger1 = AnimElemTime(3) > 0
y = 0.6

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,4
channel = 0

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,3
channel = 1

[State 1400, 3]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = 65, 5
animtype = Hard
air.animtype = Back
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.hittime = 20
ground.velocity = -6, -5
air.velocity = -6, -5
air.hittime = 20
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 5
getpower = 90,0
givepower = 60,90

[State 1400, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1405
;==========================================================================
[Statedef 1401]
type = A
movetype = A
physics = N
juggle = 1
ctrl = 0
anim = 1401
sprpriority = 4
velset = 0,0

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,35
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1401, Velocity]
type = VelSet
trigger1 = AnimElem = 3
x = 3
y = -12

[State 1401, Velocity]
type = VelAdd
trigger1 = AnimElemTime(3) > 0
y = 0.8

[State 1401, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,4
channel = 0

[State 1401, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,3
channel = 1

[State 1401, 3]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = 70, 5
animtype = Hard
air.animtype = Back
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.hittime = 20
ground.velocity = -6, -5
air.velocity = -6, -5
air.hittime = 20
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 5
getpower = 90,0
givepower = 60,90

[State 1401, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1405
;==========================================================================
[Statedef 1402]
type = A
movetype = A
physics = N
juggle = 1
ctrl = 0
anim = 1402
sprpriority = 4
velset = 0,0
poweradd = -100

[State 0, Helper]
type = Helper
trigger1 = animelem=5
helpertype = normal ;player
name = "kick"
ID = 1406
stateno = 1406
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
size.xscale=1.1
size.yscale=.75
ignorehitpause=0
removeongethit = 0

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,35
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1402, Velocity]
type = VelSet
trigger1 = AnimElem = 3
x = 5
y = -14

[State 1402, Velocity]
type = VelAdd
trigger1 = AnimElemTime(3) > 0
y = 1

[State 1402, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,4
channel = 0

[State 1402, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,3
channel = 1

[State 1402, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 6,0

[State 1402, 3]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = 95, 15
animtype = Hard
air.animtype = Back
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S5, 0
guardsound = S21, 0
ground.type = High
ground.hittime = 20
ground.velocity = -6, -5
air.velocity = -6, -5
air.hittime = 20
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 5
palfx.time = 50
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 10
envshake.ampl = 5
getpower = 0,0
givepower = 60,90

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 1402, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1405
;==========================================================================
[Statedef 1405]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
anim = 1405

[State 1405, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1405, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 1406]
ctrl = 0
sprpriority = 6
anim= 1406

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value =  45
;scale =  (winmugen only)
;ignorehitpause =
;persistent =

[State 0, AngleSet]
type = AngleSet
trigger1 = 1
value = 45
;ignorehitpause =
;persistent =

[State 1225, Bind]
type = BindToParent
trigger1 = Time = 0
time = -1
pos = -155,-245
;ignorehitpause = 0
;persistent = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
;alpha =
;ignorehitpause =
;persistent =

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =animtime=0
trigger1 =anim=1406
value = 1407
elem = 1
;ignorehitpause =
;persistent =

[State 1225, Shadowless]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1225, Eliminate]
type = DestroySelf
trigger1 = anim=1407
trigger1 = AnimTime = 0
;trigger1 = parent, stateno != 1402

;==========================================================================
;==========================================================================
;ES Specials
;==========================================================================
;ES Hadouken
;==========================================================================
[Statedef 2000]
type = S
movetype = A
physics = S
juggle = 1
poweradd = -150
ctrl = 0
velset = 0, 0
anim = 1000
sprpriority = 4

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999


[State 2000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,0
channel = 0

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4,0
channel = 1

[State 2000, 2]
type = Projectile
trigger1 = AnimElem = 5
projID = 1000
projanim = 1001
projhitanim = 1002
projscale=.5,.5
projsprpriority = 7
projpriority = 4
projhits = 2
projedgebound = 80
projstagebound = 80
;projscale = 1.2, 1.2
offset = 88, -68
velocity = 6, 0
attr = S, SP
damage = 20, 10
animtype = Hard
getpower = 0
givepower = 40,60
guardflag = MA
pausetime = 8, 10
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -1
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8, -2
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
fall = 1
envshake.time = 12
envshake.ampl = 5

[State 2000, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 2022]
type    = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 9999
poweradd = 0
sprpriority = 2

[State 0, BindToRoot]
type = BindToRoot
trigger1 = IfElse(power >= 1500,(time%3),(time%6))
time = 1
pos = Ceil(-60+random%120),floor(-130+random%130)

[State 0, Explod]
type = Explod
trigger1 = IfElse(power >= 1500,(!(time%3)),(!(time%6)))
anim = 7223
ID = 7223
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = (rootdist x -10)/15,(rootdist Y-60)/15;IfElse(rootdist Y <= 0 && vel y <= 0,0,(((rootdist Y)-60)/14))
removetime = 15
scale = 0.45,0.45
sprpriority = Ifelse(random < 800,2,-2);([-2,2])
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = IfElse(power >= 1500,(!(time%3)),(!(time%6)))
anim = 7223
ID = 7223
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = (rootdist x -10)/15,(rootdist Y-60)/15;IfElse(rootdist Y <= 0 && vel y <= 0,0,(((rootdist Y)-60)/14))
removetime = 15
scale = 0.2,0.2
random=40,40
sprpriority = Ifelse(random < 800,2,-2);([-2,2])
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = (root, stateno != 88887)
trigger2 = (root, movetype = H)

;==========================================================================
;ES Soukuu Hadouken
;==========================================================================
[Statedef 2050]
type = A
movetype = A
physics = A
juggle = 1
ctrl = 0
anim = 1050
sprpriority = 4
poweradd = -150

[State 2050, Vel]
type = VelSet
trigger1 = Time > 0 && Pos Y < -5
x = ifelse(Vel X < 0, -0.7,ifelse(Vel X > 0, 0.7, 0))
y = 0.5
;ignorehitpause = 0
;persistent = 1

[State 2050, Vel]
type = VelSet
trigger1 = Time > 0 && Pos Y >= -5 && AnimElem = 4, < 3
x = 0
y = 0
;ignorehitpause = 0
;persistent = 1

[State 2050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,0
channel = 0

[State 2050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4,0
channel = 1

[State 2050, 2]
type = Projectile
trigger1 = AnimElem = 5
projID = 2050
projanim = 1058
projhitanim=1059
projscale=.4,.4
projsprpriority = 7
projpriority = 4
projedgebound = 80
projstagebound = 80
;projscale = 1.2, 1.2
offset = 72, -49
animtype=Hard
velocity = 5, 6
attr = S, SP
damage = 40, 20
getpower = 0
givepower = 40,60
hitflag = MAFD
guardflag = MA
pausetime = 3, 5
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -15
hitsound = S5,0
guardsound = S21, 0
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5, 2
air.velocity = -10, 4
air.juggle = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 5
palfx.time = 40
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0

[State 0, Helper]
type = Helper
triggerall = ProjHit=1
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 2050, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 2061]
physics=N
velset=0,0
anim=9999

[State 3000, Explod]
type = Explod
trigger1 = Time = 0
anim = 7654
ID = 7654
postype = p1
facing = 1
vfacing = 1
bindtime = -1
sprpriority = 3
supermove = 9999
pausemove = 9999
ontop = 1
scale = .25,.25
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 7260, palfx]
type=null;palfx
trigger1= time=20
time=11
sinadd=-255,-255,-255,57
persistent=0

[State 7260, main]
type=explod
trigger1= !time
anim=7651
ID=7260
sprpriority=5
postype=p1
removetime=20
pausemovetime=300

[State 7260, sphere]
type=explod
trigger1= !time
anim=7652
ID=7261
sprpriority=5
postype=p1
removetime=-1
pausemovetime=300

[State 7260, circle]
type=explod
trigger1= time=20
anim=7650
ID=7262
sprpriority=5
postype=p1
removetime=-1
pausemovetime=300

[State 7260, shrinkcircle]
type=modifyexplod
trigger1= 1
ID=7260
scale=2-(.1*time),2-(.1*time)

[State 7260, shrinkcircle]
type=modifyexplod
trigger1= 1
ID=7261
scale=.017*time,.017*time

[State 7260, shrinkcircle]
type=modifyexplod
trigger1= time>=20
ID=7262
scale=.1+(.1*(time-3)),.1+(.1*(time-3))

[State 7260, noshadow]
type=assertspecial
trigger1= 1
flag=noshadow
flag2=invisible
ignorehitpause=1

[State 7260, bound]
type=screenbound
trigger1= 1
value=0

[State 7260, safety]
type=removeexplod
trigger1= time>=40

[State 6110, end]
type=destroyself
trigger1= time>=40
;---------------------------------------------------------------------------------------
;==========================================================================
;ES Tatsumakisenpuukyaku
;==========================================================================
[Statedef 2100]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
juggle = 1
anim = 2100
sprpriority = 4

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,30
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 2100, Velocity]
type = PosAdd
trigger1 = Time = 0
x = 9.5

[State 2100, Velocity]
type = VelSet
trigger1 = AnimElem = 1, = 2
x = 3
y = -3

[State 2100, Velocity]
type = VelSet
trigger1 = AnimElem = 4
x = 3
y = -3

[State 2100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
value = 20,3
channel = 1

[State 2100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 2
channel = 0

[State 2100, 3]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 7
attr = A, SA
damage = 26, 2
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 6, 7
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.hittime = 15
ground.velocity = -2, -6
air.velocity = -3, -6
air.hittime = 15
fall = 0
air.fall = 0
envshake.time = 12
envshake.ampl = 5
getpower = 30,0
givepower = 20,30

[State 2100, KickDown]
type = ChangeState
trigger1 = AnimElem = 11 ;|| AnimTime = 0
value = ifelse(MoveHit,2101,2105)

[Statedef 2101] ;credited to LimitedMoon
type = A
movetype = A
physics = S
velset = 0, 0
ctrl = 0
poweradd = 0
anim = 2101
sprpriority = 4

[State 2101, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,1
channel = 0

[State 2101, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 20,3
channel = 1

[State 2101, 3]
type = HitDef
trigger1 = AnimElem = 7
attr = A, SA
damage = 26, 2
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4, 4
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.hittime = 15
ground.velocity = -6.5, -1
air.velocity = -6.5, -1
air.hittime = 15
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 5
getpower = 30,0
givepower = 20,30

[State 2101, Decent]
type = ChangeState
trigger1 = AnimTime = 0
value = 2105

[Statedef 2105]
type = A
movetype = A
physics = A
anim = 2102

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 4
id = 6036
;ignorehitpause =
;persistent =
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 3
id = 6035
;ignorehitpause =
;persistent =


[State 2105, Change]
type = VelSet
trigger1 = AnimTime = 0
x = 0
y = 3
;==========================================================================
[Statedef 2110]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
juggle = 1
anim = 2100
sprpriority = 4

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,30
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 2100, Velocity]
type = PosAdd
trigger1 = Time = 0
x = 9.5

[State 2100, Velocity]
type = VelSet
trigger1 = AnimElem = 1, = 2
x = 3
y = -3

[State 2100, Velocity]
type = VelSet
trigger1 = AnimElem = 4
x = 3
y = -3

[State 2100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
trigger3 = AnimElem = 18
trigger4 = AnimElem = 24
value = 20,3
channel = 1

[State 2100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 2
channel = 0

[State 2100, 3]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
attr = A, SA
damage = 22, 2
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 6, 7
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.hittime = 15
ground.velocity = -2, -6
air.velocity = -3, -6
air.hittime = 15
fall = 0
air.fall = 0
envshake.time = 12
envshake.ampl = 5
getpower = 30,0
givepower = 20,30

[State 2100, KickDown]
type = ChangeState
trigger1 = AnimElem = 17 ;|| AnimTime = 0
value = ifelse(MoveHit,2111,2105)

[Statedef 2111] ;credited to LimitedMoon
type = A
movetype = A
physics = S
velset = 0, 0
ctrl = 0
poweradd = 0
anim = 2101
sprpriority = 4

[State 2101, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,1
channel = 0

[State 2101, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 20,3
channel = 1

[State 2101, 3]
type = HitDef
trigger1 = AnimElem = 7
attr = A, SA
damage = 22, 2
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4, 4
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.hittime = 15
ground.velocity = -6.5, -1
air.velocity = -6.5, -1
air.hittime = 15
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 5
getpower = 30,0
givepower = 20,30

[State 2101, Decent]
type = ChangeState
trigger1 = AnimTime = 0
value = 2105
;==========================================================================
[Statedef 2120]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
juggle = 1
anim = 2100
sprpriority = 3
poweradd = -100

[State 2200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 6,2

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,30
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 2100, Velocity]
type = PosAdd
trigger1 = Time = 0
x = 9.5

[State 2100, Velocity]
type = VelSet
trigger1 = AnimElem = 1, = 2
x = 3
y = -3

[State 2100, Velocity]
type = VelSet
trigger1 = AnimElem = 4
x = 3
y = -3

[State 2100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
trigger3 = AnimElem = 18
trigger4 = AnimElem = 24
value = 20,3
channel = 1

[State 2100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 2
channel = 0

[State 2100, 3]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
trigger4 = AnimElem = 19
attr = A, SA
damage = 23, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 6, 7
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.hittime = 15
ground.velocity = -2, -6
air.velocity = -3, -6
air.hittime = 15
fall = 0
air.fall = 0
envshake.time = 12
envshake.ampl = 5
palfx.time = 50
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 10
envshake.ampl = 5
getpower = 0,0
givepower = 20,30

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 0, Helper]
type = Helper
trigger1 = animelem=2
helpertype = normal ;player
name = "kick flame"
ID = 2129
stateno = 2129
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
size.xscale =.5
size.yscale =.6

[State 2100, KickDown]
type = ChangeState
trigger1 = AnimElem = 23 ;|| AnimTime = 0
value = ifelse(MoveHit,2121,2105)

[Statedef 2121] ;credited to LimitedMoon
type = A
movetype = A
physics = S
velset = 0, 0
ctrl = 0
poweradd = 0
anim = 2101
sprpriority = 3

[State 0, Explod]
type = Explod
trigger1 = animelem=4
anim = 1502
ID = 1502
pos = 0,40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 2,.8
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0
;persistent =

[State 2101, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,1
channel = 0

[State 2101, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 20,3
channel = 1

[State 2101, 3]
type = HitDef
trigger1 = AnimElem = 7
attr = A, SA
damage = 23, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4, 4
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.hittime = 15
ground.velocity = -6.5, -1
air.velocity = -6.5, -1
air.hittime = 15
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 5
palfx.time = 50
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 10
envshake.ampl = 5
getpower = 0,0
givepower = 20,30

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 2101, Decent]
type = ChangeState
trigger1 = AnimTime = 0
value = 2105
;====================================================
[Statedef 2129]
ctrl = 0
sprpriority = 5
anim=3209

[State 1225, Bind]
type = BindToParent
trigger1 = Time = 0
time = -1
pos = 0,-50
;ignorehitpause = 0
;persistent = 1

[State 1225, Shadowless]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 1225, Eliminate]
type = DestroySelf
;trigger1 = AnimTime = 0
trigger1 = parent, stateno != 2120
;==========================================================================
[Statedef 2200]
type = A
movetype = A
physics = N
juggle = 5
ctrl = 0
anim = 1211
sprpriority = 2
velset = 0,0
poweradd = -100

[State 2200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 6,0

[State 2200, Flame]
type = Helper
triggerall = Anim = 1211
trigger1 = Time = 0
;helpertype = normal
;name = ""
ID = 2207
pos = 0,0
postype = p1
facing = 1
stateno = 1226
ownpal = 1
ignorehitpause = 1
persistent = 1
size.xscale=.5
size.yscale=.5

[State 2200, 0]
type = NotHitBy
trigger1 = 1
value = SCA, NP, SP
time = 1

[State 2200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
channel = 0

[State 2200, 3]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S, SA
damage = 25, 5
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 4
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -48
hitsound = S5,0
guardsound = S21, 0
ground.type = Low
ground.hittime = 10
ground.velocity = -2, -10
air.velocity = -2, -9
air.hittime = 10
fall = 0
air.fall = 1
palfx.time = 50
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0 
envshake.time = 12
envshake.ampl = 5
getpower = 0,0
givepower = 20,30

[State 2200, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
damage = 25, 5
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 6
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -48
hitsound = S5,0
guardsound = S21, 0
ground.type = High
ground.hittime = 10
ground.velocity = -2, -5.5
air.velocity = -2, -5.5
air.hittime = 10
fall = 1
air.fall = 1
palfx.time = 50
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0 
envshake.time = 12
envshake.ampl = 5
getpower = 0,0
givepower = 20,30

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 2200, 4]
type = ChangeState
trigger1 = AnimElem = 4
value = 2201
;==========================================================================
[Statedef 2201]
type = A
movetype = A
physics = A
velset = 10.01, -10
juggle = 1

[State 2201, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 2201, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 0

[State 2201, 3]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 4, 3
attr = A, SA
damage = 25, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 7
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S5,0
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = -5, -8
air.velocity = -5, -8
air.hittime = 2
fall = 1
air.fall = 1
palfx.time = 80
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 12
envshake.ampl = 5
getpower = 0,0
givepower = 20,30

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 2201, 4]
type = ChangeAnim
triggerall = Anim = 1211
trigger1 = Vel Y > 0
value = 1201

[State 2201, Flame]
type = Explod
triggerall = Anim = 1201
trigger1 = AnimElem = 1
anim = 1299
ID = 1200
postype = p1
bindtime = 1
supermove = 1
pausemovetime = -1
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 2201, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 1206

;==========================================================================
;Guard Crush (Overhead Axe Kick)
;==========================================================================
[Statedef 2700]
type = S
movetype = A
physics = S
juggle = 2
poweradd = -1500
ctrl = 0
velset = 0, 0
anim = 2700

[State 2700, PalFXWiz] ;Generated by MEE PalFX Editor
type = PalFX
trigger1 = AnimElem = 1
time = 10
add = 255,255,255
mul = 256,256,256
sinadd = 72,72,72,3
invertall = 0
color = 256
;ignorehitpause = 0
;persistent = 1

[State 2700, Shadows]
type = AfterImage
trigger1 = AnimElem = 1, 1
time = 2
trans = add1

[State 2700, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 2700, Unblockable]
type = AssertSpecial
trigger1 = AnimElem = 7
flag = UnGuardable

[State 700, Velocity]
type = PosAdd
trigger1 = AnimElem = 1
x = 3.8
;ignorehitpause = 0
;persistent = 1

[State 2700, SFX]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0, 4
channel = 0

[State 2700, SFX]
type = PlaySnd
trigger1 = AnimElem = 7
value = 20, 3
channel = 1

[State 2700, Hit]
type = HitDef
trigger1 = AnimElem = 8
ID = 1
attr = S, SA
damage = 80, 0
animtype = Hard
hitflag = MAF
getpower = 0
givepower = 1
priority = 2, Hit
pausetime = 8, 8
guard.sparkno = s7051
sparkno = s7010+(random%8)
sparkxy = 0, -70
hitsound = S22, 5
guardsound = S21, 0
ground.type = Low
ground.hittime = 12
ground.velocity = -1
air.velocity = -1, -20
air.type = High
air.hittime = 12
air.fall = 1
p2stateno = ifelse(P2StateType = A,5050,5400)
envshake.time = 12
envshake.ampl = 5

[State 2700, Flashy_Bkgr]
type = AllPalFX
trigger1 = MoveHit
time = 1
add = 255,-255,-255
mul = 512,512,512
sinadd = 512,512,512,3
invertall = 1
color = 0
ignorehitpause = 0

[State 2700, Change]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 5400]
type = S
movetype = H
physics = N
velset = 0, 0

[State 5300, Change]
type = ChangeAnim2
trigger1 = Time = 0
value = 5012

[State 5300, Change]
type = ChangeAnim
trigger1 = (Anim = 5012) && (Time = 0) && AnimExist(5300)
value = 5300

[State 5300, Change]
type = ChangeAnim
trigger1 = (Anim = 5012) && (Time = 0) && !AnimExist(5300)
value = 5012

[State 5300, Shinei!!]
type = ChangeState
trigger1 = (Life = 0) && ((Anim = 5300) || (Anim = 5012))
value = 5050

[State 5300, Random]
type = VarRandom
trigger1 = stateno = 5400
v = 3
range = 3

[State 5300, DizzySnd]
type = PlaySnd
triggerall = var(3) = [0,1]
trigger1 = (Anim = 5300) && (AnimElem = 1) && (Life > 0)
value = 25, 0
channel = 1

[State 5300, DizzySnd]
type = PlaySnd
triggerall = var(3) = [2,3]
trigger1 = (Anim = 5300) && (AnimElem = 1) && (Life > 0) 
value = 25, 1
channel = 1

[State 5300, StopSnd]
type = StopSnd
trigger1 = (AnimTime = 0) || (enemy, MoveContact = 1)
channel = 1

[State 5300, Change]
type = ChangeState
trigger1 = Time = 300
value = 0
ctrl = 1

;==========================================================================
;EX SUPERS
;==========================================================================
;EX Shouryuu-reppa
;==========================================================================
[Statedef 3000]
type = S
movetype = A
physics = S
poweradd = 0
ctrl = 0
anim = 3000
sprpriority = 4
velset = 0, 0

[State 3000, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
pos = 8, -26
anim = 100
sound = S40, 1
movetime = 1
poweradd = -7000

[State 3000, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElemNo(0) = [2,10]
trigger2 = AnimElem = 13, >= 0
x = 3

[State 3000, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 3000, Super4]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 2

[State 3000, Super5]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0 && Time < 30
value2 = C, NA
time = 1

[State 3000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,0
channel = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,1
channel = 0

[State 3000, HitDef]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 13
attr = S, HA
damage = 22, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 18
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22, 4
guardsound = S21, 0
ground.type = Low
ground.hittime = 10
ground.velocity = -2.3
air.velocity = -2, -5.5
air.hittime = 10
fall = 0
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3000, HitDef]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 14
attr = S, HA
damage = 22, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 18
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 10
ground.velocity = -2.3
air.velocity = -2, -5.5
air.hittime = 10
fall = 0
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3000, HitDef]
type = HitDef
trigger1 = AnimElem = 15
attr = S, HA
damage = 35, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 10
ground.velocity = -2, -5.5
air.velocity = -2, -5.5
air.hittime = 10
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3000, 4]
type = ChangeState
trigger1 = AnimElem = 15
value = 3001
;==========================================================================
[Statedef 3001]
type = A
movetype = A
physics = A
velset = 7.01, -7
juggle = 1

[State 3001, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 3001, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 0

[State 3001, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 3001, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 3001, 3]
type = HitDef
trigger1 = AnimElem = 15
attr = S, HA
damage = 70, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = -2, -8
air.velocity = -3, -8
air.hittime = 2
fall = 1
air.fall = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 5

[State 3001, 4]
type = ChangeAnim
triggerall = Anim = 3000
trigger1 = Vel Y > 0
value = 1201

[State 3001, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 3006
;==========================================================================
[Statedef 3002]
type = S
movetype = A
physics = S
poweradd = 0
ctrl = 0
anim = 3001
sprpriority = 4
velset = 0, 0

[State 3002, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
pos = 8, -26
anim = 100
sound = S40, 1
movetime = 1
poweradd = -5000

[State 3002, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElemNo(0) = [2,10]
trigger2 = AnimElem = 13, >= 0
x = 3

[State 3002, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 3002, Super4]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 2

[State 3002, Super5]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0 && Time < 30
value2 = C, NA
time = 1

[State 3002, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,0
channel = 0

[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,1
channel = 0

[State 3002, HitDef]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 13
attr = S, HA
damage = 22, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 18
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22, 4
guardsound = S21, 0
ground.type = Low
ground.hittime = 10
ground.velocity = -2.3
air.velocity = -2, -5.5
air.hittime = 10
fall = 0
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3002, HitDef]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 14
attr = S, HA
damage = 22, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 18
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 10
ground.velocity = -2.3
air.velocity = -2, -5.5
air.hittime = 10
fall = 0
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3002, HitDef]
type = HitDef
trigger1 = AnimElem = 15
attr = S, HA
damage = 35, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 10
ground.velocity = -2, -5.5
air.velocity = -2, -5.5
air.hittime = 10
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3002, 4]
type = ChangeState
trigger1 = AnimElem = 15
value = 3003
;==========================================================================
[Statedef 3003]
type = A
movetype = A
physics = A
velset = 9.01, -9
juggle = 1

[State 3003, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 3003, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 0

[State 3003, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 3003, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 3003, 3]
type = HitDef
trigger1 = AnimElem = 15
attr = S, HA
damage = 70, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = -2, -8
air.velocity = -3, -8
air.hittime = 2
fall = 1
air.fall = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 5

[State 3003, 4]
type = ChangeAnim
triggerall = Anim = 3001
trigger1 = Vel Y > 0
value = 1201

[State 3003, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 3006

;==========================================================================
[Statedef 3004]
type = S
movetype = A
physics = S
poweradd = 0
ctrl = 0
anim = 3002
sprpriority = 2
velset = 0, 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelem=1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 50

[State 3000, Explod]
type = Explod
trigger1 = TIME=0
anim = 6033
ID = 6033
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermove = 90
pausemovetime = 90
sprpriority = -2
ownpal = 1
scale=.5,.5

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -4
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60

[State 3000, Explod]
type = Explod
trigger1 = ANIMELEM=3
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
sprpriority = -3
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999


[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S0,28

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = 8,-26
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 3004, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
pos = 8, -26
anim = -1
time = 45
poweradd = -1000


[State 3004, VelSet]
type = VelSet
trigger1 = AnimElemNo(0) = [2,21]
trigger2 = AnimElem = 24, >= 0
x = 3

[State 3004, Flame]
type = Helper
triggerall = Anim = 3002
trigger1 = Time = 0
;helpertype = normal
;name = ""
ID = 3002
pos = 0,0
postype = p1
facing = 1
stateno = 3050
ownpal = 1
ignorehitpause = 1
persistent = 1
size.xscale=.5
size.yscale=.5

[State 3004, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,0
channel = 0

[State 3004, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,1
channel = 0

[State 3000,EX SHADOW FX]
type=afterimage
trigger1=Time=5
time=999
TimeGap =2
FrameGap=5
length=15
PalBright=1,1,1
PalContrast=150,150,150
PalAdd=0,0,0
PalMul=.5,.5,.5
trans=add

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
value = 20,2
channel = 3
[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 19
value = 20,3
channel = 3
[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 20
value = 6,2
channel = 4

[State xxx, Explod]
type = Explod
trigger1 = AnimElem = 1
trigger2 = AnimElem = 11
trigger3 = AnimElem = 22
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 3004, HitDef]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
attr = S, HA
damage = 10, 2
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 18
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22,4
guardsound = S21, 0
ground.type = Low
ground.hittime = 10
ground.velocity = -2.3,-10
air.velocity = -2, -5.5
air.hittime = 10
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 3004, HitDef]
type = HitDef
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
trigger5 = AnimElem = 24
trigger6 = AnimElem = 25
attr = S, HA
damage = 12, 2
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 18
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22,4
guardsound = S21, 0
ground.type = High
ground.hittime = 10
ground.velocity = -2.3,-9
air.velocity = -2, -5.5
air.hittime = 10
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 3004, HitDef]
type = HitDef
trigger1 = AnimElem = 26
trigger2 = AnimElem = 27
trigger3 = AnimElem = 28
trigger4 = AnimElem = 29
attr = S, HA
damage = 18, 2
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,6
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -78
hitsound = S5,0
guardsound = S21, 0
ground.type = High
ground.hittime = 10
ground.velocity = -2, -15
air.velocity = -2, -14
air.hittime = 10
palfx.time = 100
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
fall=1
air.fall=1
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 0, Helper]
type = Helper
triggerall = MoveHit
triggerall = NumHelper(7180) = 0
trigger1 = AnimElem = 26
trigger2 = AnimElem = 27
trigger3 = AnimElem = 28
trigger4 = AnimElem = 29
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 3004, 4]
type = ChangeState
trigger1 = AnimElem = 30
value = 3005
;==========================================================================
[Statedef 3005]
type = A
movetype = A
physics = A
velset = 12.01, -12
juggle = 1

[State 3005, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 3005, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 0

[State 3005, 3]
type = HitDef
trigger1 = AnimElem = 30
attr = S, HA
damage = 70, 10
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S5,0
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = -7, -8
air.velocity = -7, -8
air.hittime = 2
palfx.time = 50
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
fall = 1
air.fall = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 3005, 4]
type = ChangeAnim
triggerall = Anim = 3002
trigger1 = Vel Y > 0
value = 1201

[State 0, Helper]
type = Helper
triggerall = MoveHit&&P2Stateno =5000||P2stateno =5020
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 3005, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 3006
;==========================================================================
[Statedef 3006]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
anim = 1202

[State 3006, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3006, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 3050]
ctrl = 0
sprpriority = 3

[State 3050, Bind]
type = BindToParent
trigger1 = Time = 0
time = -1
pos = 0,0 
;ignorehitpause = 0
;persistent = 1

[State 3050, Shadowless]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3050, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 1
trigger2 = parent, AnimElem = 2
trigger3 = parent, AnimElem = 3
trigger4 = parent, AnimElem = 4
trigger5 = parent, AnimElem = 5
trigger6 = parent, AnimElem = 6
trigger7 = parent, AnimElem = 7
trigger8 = parent, AnimElem = 8
trigger9 = parent, AnimElem = 9
trigger10 = parent, AnimElem = 10
trigger11 = parent, AnimElem = 11
trigger12 = parent, AnimElem = 12
trigger13 = parent, AnimElem = 13
trigger14 = parent, AnimElem = 14
trigger15 = parent, AnimElem = 15
trigger16 = parent, AnimElem = 16
trigger17 = parent, AnimElem = 17
trigger18 = parent, AnimElem = 18
trigger19 = parent, AnimElem = 19
trigger20 = parent, AnimElem = 20
trigger21 = parent, AnimElem = 21
trigger22 = parent, AnimElem = 22
value = 1299
ignorehitpause = 0
persistent = 1

[State 3050, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 23
value = 1225
ignorehitpause = 0
persistent = 1

[State 3050, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 24
value = 1226
ignorehitpause = 0
persistent = 1

[State 3050, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 25
value = 1227
ignorehitpause = 0
persistent = 1

[State 3050, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 26
value = 1228
ignorehitpause = 0
persistent = 1

[State 1225, Change]
type = ChangeAnim
triggerall = anim=1228
trigger1=animtime=0
value = 1229
ignorehitpause = 0
persistent = 1

[State 3050, Eliminate]
type = DestroySelf
;trigger1 = AnimTime = 0
trigger1 = parent, Anim != 3002
;==========================================================================
[Statedef 3051]
ctrl = 0
sprpriority = 3

[State 3050, Bind]
type = BindToParent
trigger1 = Time = 0
time = -1
pos = 5,0
;ignorehitpause = 0
;persistent = 1

[State 3050, Shadowless]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3050, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 1
value = 1225
ignorehitpause = 0
persistent = 1

[State 3050, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 2
value = 1226
ignorehitpause = 0
persistent = 1

[State 3050, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 3
value = 1227
ignorehitpause = 0
persistent = 1

[State 3050, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 4
value = 1228
ignorehitpause = 0
persistent = 1

[State 3050, Eliminate]
type = DestroySelf
;trigger1 = AnimTime = 0
trigger1=anim=1228
trigger1 = animtime=0
;==========================================================================
;==========================================================================
[Statedef 3052]
ctrl = 0
sprpriority = 3

[State 3050, Bind]
type = BindToParent
trigger1 = Time = 0
time = -1
pos = 0,0
;ignorehitpause = 0
;persistent = 1

[State 3050, Shadowless]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3050, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 1
trigger2 = parent, AnimElem = 2
trigger3 = parent, AnimElem = 3
trigger4 = parent, AnimElem = 4
trigger5 = parent, AnimElem = 5
trigger6 = parent, AnimElem = 6
trigger7 = parent, AnimElem = 7
trigger8 = parent, AnimElem = 8
trigger9 = parent, AnimElem = 9
trigger10 = parent, AnimElem = 10
trigger11 = parent, AnimElem = 11
trigger12 = parent, AnimElem = 12
trigger13 = parent, AnimElem = 13
trigger14 = parent, AnimElem = 14
trigger15 = parent, AnimElem = 15
trigger16 = parent, AnimElem = 16
trigger17 = parent, AnimElem = 17
trigger18 = parent, AnimElem = 18
trigger19 = parent, AnimElem = 19
trigger20 = parent, AnimElem = 20
trigger21 = parent, AnimElem = 21
trigger22 = parent, AnimElem = 22
value = 1299
ignorehitpause = 0
persistent = 1

[State 3050, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 23
value = 1225
ignorehitpause = 0
persistent = 1

[State 3050, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 24
value = 1226
ignorehitpause = 0
persistent = 1

[State 3050, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 25
value = 1227
ignorehitpause = 0
persistent = 1

[State 3050, Change]
type = ChangeAnim
trigger1 = parent, AnimElem = 26
value = 1228
ignorehitpause = 0
persistent = 1

[State 1225, Change]
type = ChangeAnim
triggerall = anim=1228
trigger1=animtime=0
value = 1229
ignorehitpause = 0
persistent = 1

[State 3050, Eliminate]
type = DestroySelf
;trigger1 = AnimTime = 0
trigger1 = parent, Anim != 3002
;==========================================================================

;EX Shinryuuken
;==========================================================================
[Statedef 3100] ;Level 1
type = S
movetype = A
physics = S
poweradd = 0
ctrl = 0
anim = 3100
sprpriority = 4
velset = 0, 0

[State 3100, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
pos = 8, -26
anim = 100
sound = S40, 1
movetime = 13
poweradd = -7000

[State 3100, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 3100, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 3100, Super4]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 2

[State 3100, Super5]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0 && Time < 30
value2 = C, NA
time = 1

[State 3100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,2
channel = 0

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 2,3
channel = 0

[State 3100, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
damage = 10, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 10
ground.velocity = -2.3
air.velocity = -2, -5.5
air.hittime = 10
fall = 0
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3100, HitDef]
type = HitDef
trigger1 = AnimElem = 6
attr = S, HA
damage = 10, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 10
ground.velocity = -2, -5.5
air.velocity = -2, -5.5
air.hittime = 10
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3100, Velocity]
type = VarSet
trigger1 = Time = 0
v = 6
value = 0

[State 3100, 4]
type = ChangeState
trigger1 = AnimElem = 6, > 1
value = 3101

[Statedef 3101]
type = A
movetype = A
physics = A
velset = 0, -8.5
anim = 3101
sprpriority = 4

[State 3101, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 3101, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 3101, Variable]
type = VarAdd
triggerall = Time < 22
trigger1 = command = "SuperAdd"
v = 6
value = 1
ignorehitpause = 1

[State 3101, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 3101, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 0

[State 3101, 3]
type = HitDef
trigger1 = AnimElem = 1
attr = A, HA
damage = 10, 5
getpower = 0
givepower = 40
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,2
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = 1, -9
air.velocity = 1, -9
air.hittime = 2
fall = 1
air.fall = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 5

[State 3101, 3]
type = HitDef
trigger1 = (Time = 3) || (Time = 15)
attr = A, HA
damage = 25, 5
getpower = 0
givepower = 40
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,2
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = -0.4, -8
air.velocity = -0.4, -8
air.hittime = 2
fall = 1
air.fall = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 5

[State 3101, 3]
type = HitDef
trigger1 = Time = 9
attr = A, HA
damage = 25, 5
getpower = 0
givepower = 40
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,2
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = 0.4, -8
air.velocity = 0.4, -8
air.hittime = 2
fall = 1
air.fall = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 5

[State 3101, 3]
type = HitDef
trigger1 = Time = 22
attr = A, HA
damage = 70, 5
getpower = 0
givepower = 40
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,2
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = -1, -9.2
air.velocity = -1, -9.2
air.hittime = 2
fall = 1
air.fall = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 5

[State 3101, 3]
type = HitDef
triggerall = Time < 22
trigger1 = var(6) >= 8
trigger2 = var(6) >= 24
trigger3 = var(6) >= 40
trigger4 = var(6) >= 56
trigger5 = var(6) >= 72
trigger6 = var(6) >= 88
attr = A, HA
damage = 10, 5
getpower = 0
givepower = 40
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,2
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = -0.5, -6.5
air.velocity = -0.5, -6.5
air.hittime = 2
fall = 1
air.fall = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 5

[State 3101, 3]
type = HitDef
triggerall = Time < 22
trigger1 = var(6) >= 16
trigger2 = var(6) >= 32
trigger3 = var(6) >= 48
trigger4 = var(6) >= 64
trigger5 = var(6) >= 80
trigger6 = var(6) >= 96
attr = A, HA
damage = 10, 5
getpower = 0
givepower = 40
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,2
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = 0.5, -6.5
air.velocity = 0.5, -6.5
air.hittime = 2
fall = 1
air.fall = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 5

[State 3101, 4]
type = ChangeAnim
triggerall = Anim = 3101
trigger1 = Vel Y > 0
value = 1201

[State 3101, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 3106

[Statedef 3102] ;Level 2
type = S
movetype = A
physics = S
poweradd = 0
ctrl = 0
anim = 3100
sprpriority = 4
velset = 0, 0

[State 3102, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
pos = 8, -26
anim = 100
sound = S40, 1
movetime = 13
poweradd = -5000

[State 3102, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 3102, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 3102, Super4]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 2

[State 3102, Super5]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0 && Time < 30
value2 = C, NA
time = 1

[State 3102, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 3102, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,2
channel = 0

[State 3102, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 2,3
channel = 0

[State 3102, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
damage = 10, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 10
ground.velocity = -2.3
air.velocity = -2, -5.5
air.hittime = 10
fall = 0
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3102, HitDef]
type = HitDef
trigger1 = AnimElem = 6
attr = S, HA
damage = 10, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 10
ground.velocity = -2, -5.5
air.velocity = -2, -5.5
air.hittime = 10
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3102, Velocity]
type = VarSet
trigger1 = Time = 0
v = 6
value = 0

[State 3102, 4]
type = ChangeState
trigger1 = AnimElem = 6, > 1
value = 3103

[Statedef 3103]
type = A
movetype = A
physics = A
velset = 0, -9.5
anim = 3101
sprpriority = 4

[State 3103, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 3103, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 3103, Variable]
type = VarAdd
triggerall = Time < 25
trigger1 = command = "SuperAdd"
v = 6
value = 1
ignorehitpause = 1

[State 3103, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 3103, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 0

[State 3103, 3]
type = HitDef
trigger1 = AnimElem = 1
attr = A, HA
damage = 10, 5
getpower = 0
givepower = 40
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,2
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = 1, -10
air.velocity = 1, -10
air.hittime = 2
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3103, 3]
type = HitDef
trigger1 = (Time = 3) || (Time = 15)
attr = A, HA
damage = 25, 5
getpower = 0
givepower = 40
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,2
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = -0.6, -8
air.velocity = -0.6, -8
air.hittime = 2
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3103, 3]
type = HitDef
trigger1 = Time = 9
attr = A, HA
damage = 25, 5
getpower = 0
givepower = 40
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,2
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = 0.6, -8
air.velocity = 0.6, -8
air.hittime = 2
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3103, 3]
type = HitDef
trigger1 = Time = 25
attr = A, HA
damage = 70, 5
getpower = 0
givepower = 40
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,2
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = -1, -9.2
air.velocity = -1, -9.2
air.hittime = 2
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3103, 3]
type = HitDef
triggerall = Time < 25
trigger1 = var(6) >= 8
trigger2 = var(6) >= 24
trigger3 = var(6) >= 40
trigger4 = var(6) >= 56
trigger5 = var(6) >= 72
trigger6 = var(6) >= 88
trigger7 = var(6) >= 104
attr = A, HA
damage = 10, 5
getpower = 0
givepower = 40
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,2
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = -0.5, -6.5
air.velocity = -0.5, -6.5
air.hittime = 2
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3103, 3]
type = HitDef
triggerall = Time < 25
trigger1 = var(6) >= 16
trigger2 = var(6) >= 32
trigger3 = var(6) >= 48
trigger4 = var(6) >= 64
trigger5 = var(6) >= 80
trigger6 = var(6) >= 96
trigger7 = var(6) >= 112
attr = A, HA
damage = 10, 5
getpower = 0
givepower = 40
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,2
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = 0.5, -6.5
air.velocity = 0.5, -6.5
air.hittime = 2
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3103, 4]
type = ChangeAnim
triggerall = Anim = 3101
trigger1 = Vel Y > 0
value = 1201

[State 3103, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 3106

[Statedef 3104] ;Level 3
type = S
movetype = A
physics = S
poweradd = 0
ctrl = 0
anim = 3100
sprpriority = 4
velset = 0, 0


[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelem=1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 20

[State 3000, Explod]
type = Explod
trigger1 = TIME=0
anim = 6033
ID = 6033
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermove = 90
pausemovetime = 90
sprpriority = -2
ownpal = 1
scale=.5,.5

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -4
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60

[State 3000, Explod]
type = Explod
trigger1 = ANIMELEM=5
removetime = -1
id =6036
anim =6036
pos = 0,-20
postype = Left
scale = 1.2,1.2
sprpriority = -3
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1204, Flame]
type = Helper
triggerall = Anim = 3100
trigger1 = Time = 0
;helpertype = normal
;name = ""
ID = 3100
pos = 0,0
postype = p1
facing = 1
stateno = 1225
ownpal = 1
ignorehitpause = 1
persistent = 1

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S0,28

[State 0, Helper]
type = Helper
trigger1 = time = 4
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = 20,-26
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 3104, SuperPause]
type = SuperPause
trigger1 = AnimElem = 4
pos = 8, -26
anim = -1
time=45
poweradd = -1000

[State 3000,EX SHADOW FX]
type=afterimage
trigger1=Time=5
time=999
TimeGap =2
FrameGap=5
length=15
PalBright=1,1,1
PalContrast=150,150,150
PalAdd=0,0,0
PalMul=.5,.5,.5
trans=add

[State 3104, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,2
channel = 0

[State 3104, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 2,3
channel = 0

[State xxx, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 3104, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
damage = 10, 2
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 10
ground.velocity = -2.3
air.velocity = -2, -5.5
air.hittime = 10
fall = 0
air.fall = 1
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 3104, HitDef]
type = HitDef
trigger1 = AnimElem = 6
attr = S, HA
damage = 10, 2
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 10
ground.velocity = -2, -5.5
air.velocity = -2, -5.5
air.hittime = 10
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 3104, Velocity]
type = VarSet
trigger1 = Time = 0
v = 6
value = 0

[State 3104, 4]
type = ChangeState
trigger1 = AnimElem = 6, > 1
value = 3105

[Statedef 3105]
type = A
movetype = A
physics = A
velset = 0, -13.5
anim = 3101
sprpriority = 4

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelem=1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S6,2
volume=255

[State 0, Helper]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "zan"
ID = 3122
stateno = 3122
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
size.xscale = .7
size.yscale = .5
ignorehitpause = 1

[State 0, Helper]
type = Helper
triggerall = var(10)!= 1
trigger1 = movehit=1
helpertype = normal ;player
name = "joy"
ID = 3125
stateno = 3125
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
size.xscale = .25
size.yscale = .25
ignorehitpause = 1
persistent =0

[State 1205, Flame]
type = Explod
triggerall = Anim = 3101
trigger1 = AnimElem = 1
anim = 1299
ID = 3100
postype = p1
bindtime = 1
supermove = 1
pausemovetime = -1
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0


[State 3105, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 3105, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 3105, Variable]
type = VarAdd
triggerall = Time <= 28
trigger1 = command = "SuperAdd"
v = 6
value = 1
ignorehitpause = 1

[State 3105, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 3105, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 0

[State 3105, 3]
type = HitDef
trigger1 = AnimElem = 1
attr = A, HA
damage = 10, 3
getpower = 0
givepower = 40
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4,1
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 4
guardsound = S21, 0
ground.type = low
ground.hittime = 12
air.hittime = 12
ground.velocity = 1, -11
air.velocity = 1, -11
fall = 1
air.fall = 1
fall.recovertime = 120
palfx.time = 80
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 12
envshake.ampl = 5

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove

[State 3105, 3]
type = HitDef
trigger1 = (Time = 3) || (Time = 15)
attr = A, HA
damage = 15, 3
getpower = 0
givepower = 40
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4,2
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -60
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 12
air.hittime = 12
ground.velocity = -0.6, -8
air.velocity = -0.6, -8
fall = 1
air.fall = 1
fall.recovertime = 120
palfx.time = 80
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 12
envshake.ampl = 5

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove

[State 3105, 3]
type = HitDef
trigger1 = (Time = 9) || (Time = 21)
attr = A, HA
damage = 15, 3
getpower = 0
givepower = 40
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4,2
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -70
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 12
air.hittime = 12
ground.velocity = 0.6, -8
air.velocity = 0.6, -8
fall = 1
air.fall = 1
fall.recovertime = 120
palfx.time = 80
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 12
envshake.ampl = 5

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove

[State 3105, 3]
type = HitDef
trigger1 = Time = 28
attr = A, HA
damage = 100, 20
getpower = 0
givepower = 40
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4,3
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -80
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 12
air.hittime = 12
ground.velocity = -8, -13.2
air.velocity = -8, -13.2
fall = 1
air.fall = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 5
palfx.time = 80
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove

[State 3105, 3]
type = HitDef
triggerall = Time < 28
trigger1 = var(6) >= 8
trigger2 = var(6) >= 24
trigger3 = var(6) >= 40
trigger4 = var(6) >= 56
trigger5 = var(6) >= 72
trigger6 = var(6) >= 88
trigger7 = var(6) >= 104
trigger8 = var(6) >= 120
attr = A, HA
damage = 5, 1
getpower = 0
givepower = 40
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4,2
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -110
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 12
air.hittime = 12
ground.velocity = -0.5, -6.5
air.velocity = -0.5, -6.5
fall = 1
air.fall = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 5
palfx.time = 80
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
[State 3101, 3]
type = HitDef
triggerall = Time < 28
trigger1 = var(6) >= 16
trigger2 = var(6) >= 32
trigger3 = var(6) >= 48
trigger4 = var(6) >= 64
trigger5 = var(6) >= 80
trigger6 = var(6) >= 96
trigger7 = var(6) >= 112
trigger8 = var(6) >= 128
attr = A, HA
damage = 4, 1
getpower = 0
givepower = 40
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4,3
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -110
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 12
air.hittime = 12
ground.velocity = 0.5, -6.5
air.velocity = 0.5, -6.5
fall = 1
air.fall = 1
fall.recovertime = 120
palfx.time = 80
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 12
envshake.ampl = 5

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove

[State 3105, 4]
type = ChangeAnim
triggerall = Anim = 3101
trigger1 = Vel Y > 0
value = 1201

[State 3105, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 3106

[Statedef 3106]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
anim = 1202

[State 3106, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3106, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==========================================================================
[Statedef 3122]
ctrl = 0
sprpriority = 6
anim=3222

[State 1225, Bind]
type = BindToParent
trigger1 = Time = 0
time = -1
pos = 0,50
;ignorehitpause = 0
;persistent = 1

[State 1225, Shadowless]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1225, Eliminate]
type = DestroySelf
;trigger1 = AnimTime = 0
trigger1 = parent, Anim != 3101
;==========================================================================
[Statedef 3125]
ctrl = 0
sprpriority = 7
anim=1717

[State 1225, Bind]
type = BindToParent
trigger1 = Time = 0
time = -1
pos = 20,40
;ignorehitpause = 0
;persistent = 1

[State 1225, Shadowless]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1225, Eliminate]
type = DestroySelf
;trigger1 = AnimTime = 0
trigger1 = parent, Anim != 3101
;==========================================================================
;EX Shippu-Jinraikyaku
;==========================================================================
[Statedef 3200]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 3200
poweradd = 0

[State 3700, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 3200, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
pos = -27, -10
anim = 100
sound = S40, 1
poweradd = -7000

[State 3200, Shadows]
type = AfterImage
trigger1 = AnimElem = 1, 1
time = 2
trans = add1

[State 3200, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 3200, Super4]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 2

[State 3200, Super5]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0 && Time < 30
value2 = C, NA
time = 1

[State 3200, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 17
value = 20,3
channel = 1

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 4
channel = 0

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2, 5
channel = 0

[State 3200, Velocity]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 11
x = 10
;ignorehitpause = 0
;persistent = 1

[State 3200, Velocity]
type = PosAdd
trigger1 = AnimElem = 13
x = 18
;ignorehitpause = 0
;persistent = 1

[State 3200, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
damage = 20, 0
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -1.5, 0
airguard.velocity = -1.7, -1.7
air.type = High
air.velocity = -1, -0.5
air.hittime = 15
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3200, 3]
type = HitDef
trigger1 = AnimElem = 18
trigger2 = AnimElem = 19
attr = S, HA
damage = 30, 0
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -80
hitsound = S22, 5
guardsound = S21, 0
ground.type = Low
ground.slidetime = 8
ground.hittime = 15
ground.velocity = 1, 0
airguard.velocity = -2.7, -1.7
air.type = Low
air.velocity = 1, -0.5
air.hittime = 15
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3200, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3201

[Statedef 3201]
type = A
movetype = A
physics = N
velset = 2.75, -0.3
anim = 3202

[State 3201, Shadows]
type = AfterImage
trigger1 = AnimElem = 1, 1
time = 2
trans = add1

[State 3201, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 3201, Super4]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 2

[State 3201, Super5]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0 && Time < 30
value2 = C, NA
time = 1

[State 3201, Velocity]
type = VelMul
trigger1 = 1
x = 0.95

[State 3201, Velocity]
type = VelSet
trigger1 = AnimElem = 6
y = -11.5

[State 3201, Velocity]
type = VelAdd
trigger1 = AnimElemNo(0) >= 6 && Vel Y >= 0
y = 0.32

[State 3201, Velocity]
type = VelAdd
trigger1 = AnimElem = 6
x = 2.08

[State 3201, Velocity]
type = Gravity
trigger1 = AnimElemNo(0) >= 6 && Vel Y < 0

[State 3201, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
trigger3 = AnimElem = 18
trigger4 = AnimElem = 24
value = 20,3
channel = 1

[State 3201, 3]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HA
damage = 20, 0
animtype = Hard
air.animtype = Up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6, 6
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -80
hitsound = S22, 5
guardsound = S21, 0
ground.type = Low
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -1, -10.5
airguard.velocity = -2.7, -1.7
air.type = Low
air.velocity = -1, -10.5
air.hittime = 15
air.fall = 1
fall = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 5

[State 3201, 3]
type = HitDef
trigger1 = AnimElem = 7
;trigger2 = AnimElem = 10
trigger2 = AnimElem = 13
;trigger4 = AnimElem = 16
trigger3 = AnimElem = 19
;trigger6 = AnimElem = 22
attr = A, HA
damage = 25, 0
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6, 8
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -71
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
ground.velocity = 2, -10
airguard.velocity = 2.7, -1.7
air.type = High
air.velocity = 2, -10 ;-9.8
air.hittime = 15
air.fall = 1
fall = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 5

[State 3201, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 51
;==========================================================================
[Statedef 3202]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 3201
poweradd = 0

[State 3202, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 3202, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
pos = -27, -10
anim = 100
sound = S40, 1
poweradd = -5000

[State 3202, Shadows]
type = AfterImage
trigger1 = AnimElem = 1, 1
time = 2
trans = add1

[State 3202, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 3202, Super4]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 2

[State 3202, Super5]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0 && Time < 30
value2 = C, NA
time = 1

[State 3202, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 3202, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 13
trigger3 = AnimElem = 25
trigger4 = AnimElem = 37
value = 20,3
channel = 1

[State 3202, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 4
channel = 0

[State 3202, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2, 5
channel = 0

[State 3202, Velocity]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 11
trigger3 = AnimElem = 21
trigger4 = AnimElem = 31
x = 16
;ignorehitpause = 0
;persistent = 1

;[State 3202, Velocity]
;type = PosAdd
;trigger1 = AnimElem = 13
;x = 18
;ignorehitpause = 0
;persistent = 1

[State 3202, 3]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 26
attr = S, HA
damage = 20, 0
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -1.5, 0
airguard.velocity = -1.7, -1.7
air.type = High
air.velocity = -1, -0.5
air.hittime = 15
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3202, 3]
type = HitDef
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 38
trigger4 = AnimElem = 39
attr = S, HA
damage = 30, 0
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -80
hitsound = S22, 5
guardsound = S21, 0
ground.type = Low
ground.slidetime = 8
ground.hittime = 15
ground.velocity = 1, 0
airguard.velocity = -2.7, -1.7
air.type = Low
air.velocity = 1, -0.5
air.hittime = 15
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 3202, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3203

[Statedef 3203]
type = A
movetype = A
physics = N
velset = 2.75, -0.3
anim = 3202

[State 3203, Shadows]
type = AfterImage
trigger1 = AnimElem = 1, 1
time = 2
trans = add1

[State 3203, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 3203, Super4]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 2

[State 3203, Super5]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0 && Time < 30
value2 = C, NA
time = 1

[State 3203, Velocity]
type = VelMul
trigger1 = 1
x = 0.95

[State 3203, Velocity]
type = VelSet
trigger1 = AnimElem = 6
y = -11.5

[State 3203, Velocity]
type = VelAdd
trigger1 = AnimElemNo(0) >= 6 && Vel Y >= 0
y = 0.32

[State 3203, Velocity]
type = VelAdd
trigger1 = AnimElem = 6
x = 2.08

[State 3203, Velocity]
type = Gravity
trigger1 = AnimElemNo(0) >= 6 && Vel Y < 0

[State 3203, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
trigger3 = AnimElem = 18
trigger4 = AnimElem = 24
value = 20,3
channel = 1

[State 3203, 3]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HA
damage = 20, 0
animtype = Hard
air.animtype = Up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6, 6
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -80
hitsound = S22, 5
guardsound = S21, 0
ground.type = Low
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -1, -10.5
airguard.velocity = -2.7, -1.7
air.type = Low
air.velocity = -1, -10.5
air.hittime = 15
air.fall = 1
fall = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 5

[State 3203, 3]
type = HitDef
trigger1 = AnimElem = 7
;trigger2 = AnimElem = 10
trigger2 = AnimElem = 13
;trigger4 = AnimElem = 16
trigger3 = AnimElem = 19
trigger4 = AnimElem = 22
attr = A, HA
damage = 25, 0
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6, 8
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -71
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
ground.velocity = 2, -10
airguard.velocity = 2.7, -1.7
air.type = High
air.velocity = 2, -10 ;-9.8
air.hittime = 15
air.fall = 1
fall = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 5

[State 3203, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 51
;==========================================================================
[Statedef 3204]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 3205
poweradd = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelem=1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 51

[State 3000, Explod]
type = Explod
trigger1 = TIME=0
anim = 6033
ID = 6033
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermove = 90
pausemovetime = 90
sprpriority = -2
ownpal = 1
scale=.5,.5

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -4
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60

[State 3000, Explod]
type = Explod
trigger1 = ANIMELEM=5
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
sprpriority = -3
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 5
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 3204, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 3204, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
time=40
pos = -27, -10
anim = -1
poweradd = -1000

[State 3000,EX SHADOW FX]
type=afterimage
trigger1=Time=5
time=999
TimeGap =2
FrameGap=5
length=15
PalBright=1,1,1
PalContrast=150,150,150
PalAdd=0,0,0
PalMul=.5,.5,.5
trans=add

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S0,28

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -27,-10
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 3204, Velocity]
type = VelSet
trigger1 = Time >= 7 && Time < 88
x = 3.6

[State xxx, Explod]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 13
trigger3 = AnimElem = 23
trigger4 = AnimElem = 33
trigger5 = AnimElem = 43
trigger6 = AnimElem = 53
anim = 2224
ID = 2224
pos = -30,25
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 3204, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 13
trigger3 = AnimElem = 23
trigger4 = AnimElem = 33
trigger5 = AnimElem = 43
trigger6 = AnimElem = 53
value = 20,3
channel = 1

[State 3204, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 53
value = 0, 2
channel = 0

[State 3204, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 4
channel = 0

[State 3204, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 5
channel = 0

[State 3204, 3]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 23
trigger4 = AnimElem = 24
trigger5 = AnimElem = 43
trigger6 = AnimElem = 44
attr = S, HA
damage = 8, 2
animtype = med
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.type = Low
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -1, 0
airguard.velocity = -1.7, -1.7
air.type = High
air.velocity = -1, -0.5
air.hittime = 15
air.fall = 1
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 3204, 3]
type = HitDef
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 33
trigger4 = AnimElem = 34
attr = S, HA
damage = 12, 2
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -80
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -1, 0
airguard.velocity = -1.7, -1.7
air.type = High
air.velocity = -1, -0.5
air.hittime = 15
air.fall = 1
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 3204, Velocity]
type = VelSet
trigger1 = AnimElem = 89, >= 1
x = 0
y = 0

[State 3204, 3]
type = HitDef
trigger1 = AnimElem = 53
attr = S, HA
damage = 25, 2
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -80
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 30
ground.velocity = -2, -5.8
airguard.velocity = -1.7, -1.7
air.type = High
air.velocity = 0, -5.8
air.hittime = 30
air.fall = 1
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 3204, Change]
type = ChangeState
trigger1 = AnimElem = 57 && MoveHit
value = 3205

[State 3204, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3205]
type = A
movetype = A
physics = N
velset = 4.5, -4.5
anim = 3206

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time=0
id = 6034
;ignorehitpause =
;persistent =

[State 3000, Explod]
type = Explod
trigger1 = time=0
removetime = -1
id =6036
anim =6036
pos = 0,-20
postype = Left
scale = 1.2,1.2
sprpriority = -3
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 3205, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 0

[State 0, Helper]
type = Helper
trigger1 = animelem=1
helpertype = normal ;player
name = "kick flame"
ID = 3208
stateno = 3208
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
size.xscale =.5
size.yscale =.6

[State 0, Helper]
type = Helper
trigger1 = animelem=1
helpertype = normal ;player
name = "kick flame"
ID = 3209
stateno = 3209
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
size.xscale =.5
size.yscale =.6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S7,0

[State 3205, 3]
type = HitDef
trigger1 = AnimElem = 1
attr = A, HA
damage = 10, 2
animtype = up
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 3, 7
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S5,1
guardsound = S21, 0
ground.type = Low
ground.slidetime = 8
ground.hittime = 30
ground.velocity = -2, -6
airguard.velocity = -1.7, -1.7
air.type = High
air.velocity = -3, -8
air.hittime = 15
air.fall = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 5
palfx.time = 80
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
getpower=0

[State 3205, 3]
type = HitDef
trigger1 = AnimElem = 13
trigger2 = AnimElem = 19
trigger3 = AnimElem = 25
trigger4 = AnimElem = 31
trigger5 = AnimElem = 37
attr = A, HA
damage = 20, 2
animtype = up
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 10,13
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S5,0
guardsound = S21, 0
ground.type = Low
ground.slidetime = 8
ground.hittime = 30
ground.velocity = -2, -9
airguard.velocity = -1.7, -1.7
air.type = High
air.velocity = -2, -9
air.hittime = 30
air.fall = 1
fall.recovertime = 120
palfx.time = 80
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 3205, KickDown]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(MoveHit,3206,2105)

;======================================================
[Statedef 3206] ;credited to LimitedMoon
type = A
movetype = A
physics = S
velset = 0, 0
ctrl = 0
poweradd = 0
anim = 2101
sprpriority = 3


[State 0, Explod]
type = Explod
trigger1 = animelem=4
anim = 1502
ID = 1502
pos = 0,40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 2,.8
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0
afterimage.time = 9999
afterimage.length = 9999
afterimage.palbright = 40, 40, 0
afterimage.paladd = -10, -10, -10
afterimage.palmul = 1.1, 1, .5
afterimage.timegap = 4
afterimage.framegap = 1
afterimage.trans = add

[State 7260, shrinkcircle]
type=modifyexplod
trigger1= animelem=9
ID=1502
scale=1.8-(.2*time),.8-(.2*time)

[State 3206, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,1
channel = 0

[State 3206, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 20,3
channel = 1

[State 3206, 3]
type = HitDef
trigger1 = time=0
attr = A, SA
damage = 32, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 32,32
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S5,0
guardsound = S21, 0
ground.type = High
ground.hittime = 15
ground.velocity = -10.5, 12
air.velocity = -10.5, 12
air.hittime = 15
fall = 1
air.fall = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 5
palfx.time = 40
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 3206, Decent]
type = ChangeState
trigger1 = Animelem=8
value = 2105

;==========================================================================
[Statedef 3208]
ctrl = 0
sprpriority = 5
anim=3209

[State 1225, Bind]
type = BindToParent
trigger1 = Time = 0
time = -1
pos = 0,-60
;ignorehitpause = 0
;persistent = 1


[State 1225, Shadowless]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 1225, Eliminate]
type = DestroySelf
;trigger1 = AnimTime = 0
trigger1 = parent, stateno != 3205
;==========================================================================
[Statedef 3209]
ctrl = 0
sprpriority = 5
anim=3209

[State 1225, Bind]
type = BindToParent
trigger1 = Time = 0
time = -1
pos = 0,-40
;ignorehitpause = 0
;persistent = 1

[State 1225, Shadowless]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1225, Eliminate]
type = DestroySelf
;trigger1 = AnimTime = 0
trigger1 = parent, stateno != 3205
;==========================================================================
;======================================================
[Statedef 3211] ;credited to LimitedMoon
type = A
movetype = A
physics = S
velset = 0, 0
ctrl = 0
poweradd = 0
anim = 2101
sprpriority = 3


[State 0, Explod]
type = Explod
trigger1 = animelem=4
anim = 1502
ID = 1502
pos = 0,40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 2,.8
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0
afterimage.time = 9999
afterimage.length = 9999
afterimage.palbright = 40, 40, 0
afterimage.paladd = -10, -10, -10
afterimage.palmul = 1.1, 1, .5
afterimage.timegap = 4
afterimage.framegap = 1
afterimage.trans = add

[State 7260, shrinkcircle]
type=modifyexplod
trigger1= animelem=9
ID=1502
scale=1.8-(.2*time),.8-(.2*time)

[State 3206, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,1
channel = 0

[State 3206, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 20,3
channel = 1

[State 3206, 3]
type = HitDef
trigger1 = time=0
attr = A, SA
damage = 32, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 32,32
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S5,0
guardsound = S21, 0
ground.type = High
ground.hittime = 15
ground.velocity = -10.5, 12
air.velocity = -10.5, 12
air.hittime = 15
fall = 1
air.fall = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 5
palfx.time = 40
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 3206, Decent]
type = ChangeState
trigger1 = Animelem=8
value = 2105
;==========================================================================
[Statedef 3300]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 3300
poweradd = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelem=1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 51

[State 3000, Explod]
type = Explod
trigger1 = TIME=0
anim = 6037
ID = 6037
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermove = 90
pausemovetime = 90
sprpriority = -2
ownpal = 1
scale=.5,.5

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -4
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60

[State 3000, Explod]
type = Explod
trigger1 = ANIMELEM=5
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
sprpriority = -3
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 3700, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 3200, SuperPause]
type = SuperPause
trigger1 = AnimElem = 3
pos = -27, -10
anim = -1
sound = S0,29
poweradd = -2000
time=50
movetime=20

[State 0, Helper]
type = Helper
trigger1 = time = 2
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -10,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 8888, ExShadow]
type = AfterImage
trigger1 = Animelem = 4
time = 9999
timegap = 2
framegap =4
length = 16
palbright = 0, 40, 40
paladd = -10, -10, -10
palmul = 0, 1, 1
trans = add
ignorehitpause = 1

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 0

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2,2
channel = 0

[State 3200, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3301

[Statedef 3301]
type = A
movetype = A
physics = N
velset = 0,0
anim = 3301

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelem=1
value = SCA,NA;,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 28

[State 0, VelSet]
type = VelSet
trigger1 = time=0
x = 26

[State 0, VelSet]
type = VelSet
trigger1 = time=25
x = 0

[State 100, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 30, 1

[State 3204, 3]
type = HitDef
trigger1 = time=0
attr = S, HA
damage = 22, 10
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 22, 25
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -60
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
ground.velocity = 0
airguard.velocity = -1.7, -1.7
air.type = High
air.velocity = 0
air.hittime = 15
envshake.time = 10
envshake.ampl = 5
kill=0
p2stateno=4058

[State 3201, 5]
type = ChangeState
trigger1 = movehit
value = 3302
ctrl=0

[State 3201, 5]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl=1
;==========================================================================
[Statedef 3302]
type = S
physics = S
movetype = A
anim = 3302
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

[State 0, TargetBind]
type = TargetBind
trigger1 =time=0
pos = 50,0
time=10
;ignorehitpause =
;persistent =

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelem=1
value = SCA,NA;,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 12

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 18,0
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Light
priority = 3, Hit
pausetime = 1,8
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -70
hitsound = S22, 0
guardsound = S21, 0
ground.type = High
ground.slidetime = 4
ground.hittime = 16
ground.velocity = 2
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -3, 22
air.hittime = 8
envshake.time = 10
envshake.ampl = 5
kill=0
getpower=0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 0
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3303
ctrl = 0
;==========================================================================
[Statedef 3303]
type = S
physics = S
movetype = A
anim = 3303
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 2
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 25,0
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Light
priority = 3, Hit
pausetime = 1,8
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -20
hitsound = S22, 1
guardsound = S21, 0
ground.type = low
ground.slidetime = 4
ground.hittime = 16
ground.velocity = 2
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -3, 22
air.hittime = 8
envshake.time = 10
envshake.ampl = 5
kill=0
getpower=0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 1

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3304
ctrl = 0
;==========================================================================
[Statedef 3304]
type = S
physics = S
movetype = A
anim = 3304
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 2
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 18,0
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = med
priority = 3, Hit
pausetime = 1,8
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -70
hitsound = S22, 2
guardsound = S21, 0
ground.type = high
ground.slidetime = 4
ground.hittime = 16
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -3, 22
air.hittime = 8
envshake.time = 10
envshake.ampl = 5
kill=0
getpower=0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 2

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3305
ctrl = 0
;==========================================================================
[Statedef 3305]
type = S
physics = S
movetype = A
anim = 3305
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 2
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 18,0
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = med
priority = 3, Hit
pausetime = 1,8
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -80
hitsound = S22, 3
guardsound = S21, 0
ground.type = high
ground.slidetime = 4
ground.hittime = 22
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -3, 22
air.hittime = 8
envshake.time = 10
envshake.ampl = 5
kill=0
getpower=0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 1

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3306
ctrl = 0
;==========================================================================
[Statedef 3306]
type = S
physics = S
movetype = A
anim = 3306
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 2
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 22,0
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 3, Hit
pausetime = 1,8
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 4
guardsound = S21, 0
ground.type = low
ground.slidetime = 4
ground.hittime = 22
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -3, 22
air.hittime = 8
envshake.time = 10
envshake.ampl = 5
kill=0
getpower=0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 2

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3307
ctrl = 0
;==========================================================================
[Statedef 3307]
type = S
physics = S
movetype = A
anim = 3307
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 2
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 15,0
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 3, Hit
pausetime = 1,8
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.type = high
ground.slidetime = 4
ground.hittime = 22
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -3, 22
air.hittime = 8
envshake.time = 10
envshake.ampl = 5
kill=0
getpower=0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 3

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3308
ctrl = 0
;==========================================================================
[Statedef 3308]
type = S
physics = S
movetype = A
anim = 3308
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 2
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 15,0
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = med
priority = 3, Hit
pausetime = 1,8
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -70
hitsound = S22, 0
guardsound = S21, 0
ground.type = high
ground.slidetime = 4
ground.hittime = 22
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -3, 22
air.hittime = 8
envshake.time = 10
envshake.ampl = 5
kill=0
getpower=0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 0

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3309
ctrl = 0
;==========================================================================
[Statedef 3309]
type = S
physics = S
movetype = A
anim = 3309
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 2
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 15,0
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 3, Hit
pausetime = 1,8
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -20
hitsound = S22, 1
guardsound = S21, 0
ground.type = high
ground.slidetime = 4
ground.hittime = 22
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -3, 22
air.hittime = 8
envshake.time = 10
envshake.ampl = 5
kill=0
getpower=0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 1

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3310
ctrl = 0
;==========================================================================
[Statedef 3310]
type = S
physics = S
movetype = A
anim = 3310
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 2
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 20,0
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = med
priority = 3, Hit
pausetime = 1,8
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -45
hitsound = S22, 3
guardsound = S21, 0
ground.type = low
ground.slidetime = 4
ground.hittime = 22
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -3, 22
air.hittime = 8
envshake.time = 10
envshake.ampl = 5
kill=0
getpower=0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 3

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3311
ctrl = 0
;==========================================================================
[Statedef 3311]
type = S
physics = S
movetype = A
anim = 3311
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 2
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage =15,0
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 6, Hit
pausetime = 30,40
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -65
hitsound = S22, 4
guardsound = S21, 0
ground.type = high
ground.slidetime = 4
ground.hittime = 22
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -3, 22
air.hittime = 8
envshake.time = 10
envshake.ampl = 5
kill=0
getpower=0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 2

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3312
ctrl = 0
;==========================================================================
[Statedef 3312]
type = S
physics = S
movetype = A
anim = 3312
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 2
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 12,0
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 3, Hit
pausetime = 1,8
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -55
hitsound = S22, 5
guardsound = S21, 0
ground.type = low
ground.slidetime = 4
ground.hittime = 22
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -3, 22
air.hittime = 8
envshake.time = 10
envshake.ampl = 5
kill=0
getpower=0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 3

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3313
ctrl = 0
;==========================================================================
[Statedef 3313]
type = S
physics = S
movetype = A
anim = 1300
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=3
value = S6,1
channel = 4

[State 0, Explod]
type = Explod
trigger1 = animelem=3
anim = 1501
ID = 1501
pos = -50,20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0
;persistent =

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1301, Add]
type = PosAdd
trigger1 = AnimElem = 1
x = 4

[State 1301, Add]
type = PosAdd
trigger1 = AnimTime = 0
x = 5

[State 1301, Hit]
type = HitDef
trigger1 = time=0
damage = 25, 0
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5, Hit
pausetime = 25,25
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -56
hitsound = S5,1
guardsound = S21, 0
ground.type = low
ground.slidetime = 8
ground.hittime = 30
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.hittime = 30
air.type = High
air.velocity = -8, -3
envshake.time = 12
envshake.ampl = 5
palfx.time = 30
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 10
envshake.ampl = 5
kill=0
getpower=0

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=
ignorehitpause=1

[State 1301, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20, 3
channel = 1

[State 1301, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 1
channel = 0

[State 1301, ChangeState]
type = ChangeState
trigger1 = movehit
trigger2=animtime=0
value = 3314
ctrl = 0

;==========================================================================
[Statedef 3314]
type = S
physics = S
movetype = A
anim = 1302
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=3
value = S6,0
channel = 5

[State 0, Explod]
type = Explod
trigger1 = animelem=3
anim = 1501
ID = 1501
pos = -25,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -2,2
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1.2,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0
;persistent =

[State 1310, Hit]
type = HitDef
trigger1 = time=0
damage = 20, 0
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5, Hit
pausetime = 35,45
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -76
hitsound = S22,5
guardsound = S21, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 20
ground.velocity = -2
airguard.velocity = -1.7, -0.7
air.hittime = 20
air.type = High
air.velocity = -8, -3
envshake.time = 12
envshake.ampl = 5
palfx.time = 40
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 10
envshake.ampl = 5
kill=0
getpower=0

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=
ignorehitpause=1

[State 1310, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20, 3
channel = 1

[State 1310, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 0
channel = 0

[State 1310, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3315
ctrl = 0
;==========================================================================
[Statedef 3315]
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 0
ctrl = 0
sprpriority = 4
anim = 3315

[State 0, Helper]
type = Helper
trigger1 = animelem=3
helpertype = normal ;player
name = "kick"
ID = 1227
stateno = 1227
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
size.xscale=1.2
;size.yscale (float)
ignorehitpause=0
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=3
value = S6,1
channel = 4

[State 710, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 20, 2
channel = 1

[State 710, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 2
channel = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = AnimElem = 4
x = 4

[State 710, 3]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 50, 10
animtype = Diagup
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 25, 25
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -36
hitsound = S5,0
guardsound = S21, 0
ground.type = Low
air.type = Low
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = -20,-8
air.velocity = -20,-8
air.hittime = 30
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
p2stateno = 9040
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
envshake.time = 15
envshake.ampl = 5
palfx.time = 40
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
getpower=0

[State 0, Helper]
type = Helper
trigger1 = movehit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 710, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==============================================================
[Statedef 3400]
type = S
movetype = A
physics = S
juggle = 1
poweradd = 0
ctrl = 0
velset = 0, 0
anim = 3400
sprpriority = 3

[State 3000,EX SHADOW FX]
type=afterimage
trigger1=Time=5
time=999
TimeGap =2
FrameGap=5
length=15
PalBright=1,1,1
PalContrast=150,150,150
PalAdd=0,0,0
PalMul=.5,.5,.5
trans=add

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelem=1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 60

[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem=4
value = S8,1

[State 3000, Explod]
type = Explod
trigger1 = TIME=0
anim = 6033
ID = 6033
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermove = 90
pausemovetime = 90
sprpriority = -2
ownpal = 1
scale=.5,.5

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -4
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60

[State 3000, Explod]
type = Explod
trigger1 = ANIMELEM=5
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
sprpriority = -3
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 3700, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 3200, SuperPause]
type = SuperPause
trigger1 = AnimElem = 3
pos = -27, -10
anim = -1
sound = S0, 28
poweradd = -1000
time=55

[State 0, Helper]
type = Helper
trigger1 = animelem=3
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -25,-65
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1002, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 0,5
channel = 1

[State 1002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3,2
value = 1,0
volume=255
channel = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 5
anim =3402
ID = 3402
pos = 90,-70
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = .5,.5
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 1002, 2]
type = Projectile
TRIGGERALL=ENEMY,BACKEDGEBODYDIST>=100
trigger1 = AnimElem = 5
projID = 3401
projanim = 3401
projremanim = 3405
projscale=.5,.4
projsprpriority = 7
projpriority = 7
projedgebound = 80
projstagebound = 80
projheightbound = -240
projremove=1
projremovetime=45
projhits=10
projmiss=10
projmisstime=0
offset = 55, -68
velocity = 0,0
attr = S, HA
damage = 22,4
animtype = Hard
getpower = 0
givepower = 5
guardflag = MAL
hitflag = MAFD
pausetime = 4,2
guard.sparkno = -1
sparkno = -1
sparkxy = 0, -1
hitsound = S8,2
guardsound = S21, 0
ground.type = High
ground.slidetime = 30
ground.hittime = 20
ground.velocity = -12,-2
air.velocity = -12, -2
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
p2stateno = 9040
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
envshake.time = 12
envshake.ampl = 6

[State 1002, 2]
type = Projectile
TRIGGERALL=ENEMY,BACKEDGEBODYDIST<=99
trigger1 = AnimElem = 5
projID = 3401
projanim = 3401
projremanim = 3405
projscale=.5,.4
projsprpriority = 7
projpriority = 7
projedgebound = 80
projstagebound = 80
projheightbound = -240
projremove=1
projremovetime=45
projhits=10
projmiss=10
projmisstime=0
offset = 55, -68
velocity = 0,0
attr = S, HA
damage = 22,4
animtype = Hard
getpower = 0
givepower = 5
guardflag = MAL
hitflag = MAFD
pausetime = 4,2
guard.sparkno = -1
sparkno = -1
sparkxy = 0, -1
hitsound = S8,2
guardsound = S21, 0
ground.type = High
ground.slidetime = 30
ground.hittime = 20
ground.velocity = -18,-2
air.velocity = -18, -3
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
envshake.time = 12
envshake.ampl = 6

[State 0, Explod]
type = Explod
trigger1 = projhit=1
anim = 7020+(random%8)
ID =7020
pos = 10,-60
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = projguarded=1
anim = 7051
ID =7051
pos = 10,-70
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =
[State 1002, 4]
type = ChangeState
trigger1 = time= 60
value = 3402
ctrl = 0
;==========================================================================
[Statedef 3402]
type = S
movetype = I
physics = S
juggle = 1
poweradd = 0
ctrl = 0
velset = 0, 0
anim = 3403
sprpriority = 3

[State 1002, 4]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1
;==========================================================================
[Statedef 3450]
type = A
movetype = A
physics = A
juggle = 0
poweradd = 0
ctrl = 0
anim = 3450
sprpriority = 4

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelem=1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 68

[State 3000, Explod]
type = Explod
trigger1 = TIME=0
anim = 6033
ID = 6033
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermove = 90
pausemovetime = 90
sprpriority = -2
ownpal = 1
scale=.5,.5

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -4
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60

[State 3000, Explod]
type = Explod
trigger1 = time = 11
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
sprpriority = -3
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 0, Helper]
type = Helper
trigger1 = time = 4
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = 35,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 3000,EX SHADOW FX]
type=afterimage
trigger1=Time=5
time=999
TimeGap =2
FrameGap=5
length=15
PalBright=1,1,1
PalContrast=150,150,150
PalAdd=0,0,0
PalMul=.5,.5,.5
trans=add

[State 3004, SuperPause]
type = SuperPause
trigger1 = time = 4
pos = 8, -26
anim = -1
time = 45
poweradd = -1000
sound= s0,28

[State 2050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,5
channel = 4
[State 2050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,5
channel = 3

[State 3052, Velocity]
type = VelMul
trigger1 = Time = [0,155]
x = 0
y = 0.002

[State 3052, Velocity]
type = VelAdd
trigger1 = Time > 152
x = ifElse(Vel X = .3, 0,IfElse(Vel X < 0, -.3, .3))
y = 0.3

[State 3052, Position]
type = PosSet
trigger1 = Pos Y >= 25
y = 25

[State 220]
type = ChangeAnim
trigger1 = AnimElem = 7
value = anim
elem = 1

[State 2050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,0
channel = 4
persistent=0

[State 2050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,0
channel = 4
freqmul=.9
volume=500

[State 2050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
value = 4,0
channel = 1
[State 2050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 6,1
channel = 7

[State 2050, 2]
type = Projectile
trigger1 = AnimElem = 6
projID = 2050
projanim = 1058
projhitanim=1059
projscale=.4,.4
projsprpriority = 7
projpriority = 4
projedgebound = 80
projstagebound = 80
;projscale = 1.2, 1.2
offset = 74, -44
animtype=Hard
velocity = 10, 6
attr = S, SP
damage = 8, 2
getpower = 0
givepower = 5
hitflag = MAFD
guardflag = MA
pausetime = 3,7
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -15
hitsound = S5,0
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 20
ground.velocity = -1
airguard.velocity = -2.5, 2
air.velocity = -2, 5
recover=0
air.juggle = 0
air.fall = 1
envshake.time = 12
envshake.ampl = 5
palfx.time = 40
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0

[State 2050, 2]
type = Projectile
trigger1 = AnimElem = 6
projID = 2050
projanim = 1058
projhitanim=1059
projscale=.4,.4
projsprpriority = 7
projpriority = 4
projedgebound = 80
projstagebound = 80
;projscale = 1.2, 1.2
offset = 73, -43
animtype=Hard
velocity = 5, 6
attr = S, SP
damage = 6,1
getpower = 0
givepower = 5
hitflag = MAFD
guardflag = MA
pausetime = 3, 7
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -15
hitsound = S5,0
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 20
ground.velocity = -1
airguard.velocity = -2.5, 2
air.velocity = -2, 5
recover=0
air.juggle = 0
air.fall = 1
envshake.time = 12
envshake.ampl = 5
palfx.time = 40
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0

[State 2050, 2]
type = Projectile
trigger1 = AnimElem = 3
projID = 2050
projanim = 1058
projhitanim=1059
projscale=.4,.4
projsprpriority = 7
projpriority = 4
projedgebound = 80
projstagebound = 80
;projscale = 1.2, 1.2
offset = 73, -51
animtype=Hard
velocity = 7, 6
attr = S, SP
damage = 8,1
getpower = 0
givepower = 5
hitflag = MAFD
guardflag = MA
pausetime = 3, 7
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -42
hitsound = S5,0
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 20
ground.velocity = -1
airguard.velocity = -2.5, 2
air.velocity = -2, 5
recover=0
air.juggle = 0
air.fall = 1
envshake.time = 12
envshake.ampl = 5
palfx.time = 40
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0

[State 2050, 2]
type = Projectile
trigger1 = AnimElem = 3
projID = 2050
projanim = 1058
projhitanim=1059
projscale=.4,.4
projsprpriority = 7
projpriority = 4
projedgebound = 80
projstagebound = 80
;projscale = 1.2, 1.2
offset = 72, -42
animtype=Hard
velocity = 3, 6
attr = S, SP
damage = 8,1
getpower = 0
givepower = 5
hitflag = MAFD
guardflag = MA
pausetime = 3, 7
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -55
hitsound = S5,0
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 20
ground.velocity = -1
airguard.velocity = -2.5, 2
air.velocity = -2, 5
recover=0
air.juggle = 0
air.fall = 1
envshake.time = 12
envshake.ampl = 5
palfx.time = 40
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0

[State 0, Helper]
type = Helper
triggerall = ProjHit=1
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 2050, Change]
type = ChangeState
trigger1 = time=152
value = 3451
ctrl = 0
;==========================================================================
[Statedef 3451]
type = A
movetype = A
physics = A
juggle = 0
poweradd = 0
ctrl = 0
anim = 44
sprpriority = 4

[State 3203, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 51
;==========================================================================
[Statedef 3500]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 3500
poweradd = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelem=1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 80

[State 7500, portrait]
type=helper
trigger1 = AnimElem = 1
helpertype=normal
stateno=7510
ID=7510
name="Super Charge Portrait"
postype=p1
supermovetime=300
ownpal=1

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -4
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60

[State 3000, Explod]
type = Explod
trigger1 = ANIMELEM=5
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
sprpriority = -3
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 3700, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 3200, SuperPause]
type = SuperPause
trigger1 = AnimElem = 4
pos = -27, -10
anim = -1
sound = S0,30
poweradd = -3000
time=20

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = 45,-100
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 3050, AfterImage]
type = AfterImage
trigger1 = time=0
time = 9999
length = 18;3
palcolor = 256
palinvertall = 0
palbright = 150,0,0
palcontrast = 300,10,0
palpostbright = 0,0,0
paladd = 25,10,5
palmul = .65,.65,.65
timegap = 1;6
framegap = 6;1
trans = add
ignorehitpause = 0

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 0

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2,2
channel = 0

[State 3200, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3501
;=====================================================
[Statedef 3501]
type = S
movetype = A
physics = S
velset = 0,0
anim = 3501

[State 0, Explod]
type = Explod
trigger1 = animelem=8
anim = 1501
ID = 1501
pos = -25,-20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -2,2
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1.2,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = animelem=7
x = 12

[State 0, VelSet]
type = VelSet
trigger1 = time=40
x = 0

[State 100, 3]
type = PlaySnd
trigger1 = AnimElem = 7
value = 20,3
[State 100, 3]
type = PlaySnd
trigger1 = AnimElem = 9
value = 6,1
[State 100, 3]
type = PlaySnd
trigger1 = movehit
value = 5, 1

[State 3204, 3]
type = HitDef
trigger1 = time=0
attr = A, HA
damage = 25,5
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 25, 22
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -60
hitsound = S22,4
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -3,-2
airguard.velocity = -1.7, -1.7
air.type = High
air.velocity = -4,-3
air.hittime = 15
envshake.time = 10
envshake.ampl = 5
fall=1
getpower=0
recover=0
palfx.time = 40
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
kill=0
p2stateno=4058

[State 3201, 5]
type = ChangeState
trigger1 = movehit
value = 3502
ctrl=0
[State 3201, 5]
type = ChangeState
trigger1 = animtime=0
value = 3502
ctrl=0
;=====================================================
[Statedef 3502]
type = A
movetype = A
physics = N
velset = 0,-.7
anim = 3502

[State 0, TargetBind]
type = TargetBind
trigger1 =movehit
time = 1
pos = 40,-10
;ignorehitpause =
;persistent =


[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value =  15

[State 0, AngleSet]
type = AngleSet
trigger1 = 1
value = 15

[State 0, Helper]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "whirl"
ID = 3505
stateno = 3505
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
size.xscale = .5
size.yscale = .5
ignorehitpause 7= 1

[State 0, Helper]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "whirl"
ID = 3506
stateno = 3506
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
size.xscale = .5
size.yscale = .7
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem=1
x = 6

[State 100, 3]
type = PlaySnd
trigger1 = time=0
value = 30, 1
[State 100, 3]
type = PlaySnd
trigger1 = animelem=2
value = 20,3
[State 100, 3]
type = PlaySnd
trigger1 = movehit
value = 5, 1
[State 3204, 3]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger2 = AnimElem = 7
attr = A, HA
damage = 25,5
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4, 8
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -60
hitsound = S22,5
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -3,-5
airguard.velocity = -1.7, -1.7
air.type = High
air.velocity = -4,-4
air.hittime = 15
envshake.time = 10
envshake.ampl = 5
fall=1
getpower=0
palfx.time = 40
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
kill=0

[State 0, Helper]
type = Helper
triggerall = Movehit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 2050, Change]
type = ChangeState
triggerall=movehit
trigger1 = time=140
value = 3211
ctrl = 0

[State 2050, Change]
type = ChangeState
trigger1 = time=141
value = 3451
ctrl = 0
;====================================================
[Statedef 3505]
ctrl = 0
sprpriority = 5
anim=3209

[State 0, Explod]
type = Explod
trigger1 = time=0
trigger2 = time=10
trigger3 = time=20
trigger4 = time=30
trigger5 = time=40
trigger6 = time=50
trigger7 = time=60
trigger8 = time=70
trigger9 = time=80
anim =1222
ID =1222
pos = -10,-30
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random =100,40
removetime = -2
supermove
pausemove
scale = .5,.25
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 1225, Bind]
type = BindToParent
trigger1 = Time = 0
time = -1
pos = 20,-50
;ignorehitpause = 0
;persistent = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value =  25
;scale =  (winmugen only)
;ignorehitpause =
;persistent =

[State 0, AngleSet]
type = AngleSet
trigger1 = 1
value = 25
;ignorehitpause =
;persistent =

[State 8888, ExShadow]
type = AfterImage
trigger1 = time = 0
time = 9999
timegap = 2
framegap = 12
length = 22
palbright = 40, 40, 0
paladd = -10, -10, -10
palmul = 1.1, 1, .5
trans = add
ignorehitpause = 1

[State 8888, ExShadow]
type = AfterImage
trigger1 = time = 5
time = 9999
timegap = 2
framegap = 12
length = 22
palbright = 40, 40, 0
paladd = -10, -10, -10
palmul = 1.1, 1, .5
trans = add
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans =  add
;alpha =
;ignorehitpause =
;persistent =

[State 1225, Shadowless]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1225, Eliminate]
type = DestroySelf
;trigger1 = AnimTime = 0
trigger1 = parent, stateno != 3502
;====================================================
[Statedef 3506]
ctrl = 0
sprpriority = 5
anim=3209

[State 0, Explod]
type = Explod
trigger1 = time=5
trigger2 = time=15
trigger3 = time=25
trigger4 = time=35
trigger5 = time=45
trigger6 = time=55
trigger7 = time=65
trigger8 = time=75
trigger9 = time=85
trigger10 = time=95
trigger11 = time=105
trigger12 = time=115
anim =1222
ID =1222
pos = -20,-10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random =100,40
removetime = -2
supermove
pausemove
scale = .4,.4
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 1225, Bind]
type = BindToParent
trigger1 = Time = 0
time = -1
pos = -50,-50
;ignorehitpause = 0
;persistent = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value =  25
;scale =  (winmugen only)
;ignorehitpause =
;persistent =

[State 0, AngleSet]
type = AngleSet
trigger1 = 1
value = 25
;ignorehitpause =
;persistent =

[State 0, Trans]
type = Trans
trigger1 = 1
trans =  add
;alpha =
;ignorehitpause =
;persistent =

[State 8888, ExShadow]
type = AfterImage
trigger1 = time = 0
time = 9999
timegap = 2
framegap = 10
length = 12
palbright = 40, 40, 0
paladd = -10, -10, -10
palmul = 1.1, 1, .5
trans = add
ignorehitpause = 1

[State 8888, ExShadow]
type = AfterImage
trigger1 = time = 5
time = 9999
timegap = 2
framegap = 10
length = 12
palbright = 40, 40, 0
paladd = -10, -10, -10
palmul = 1.1, 1, .5
trans = add
ignorehitpause = 1

[State 1225, Shadowless]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1225, Eliminate]
type = DestroySelf
;trigger1 = AnimTime = 0
trigger1 = parent, stateno != 3502
;==========================================================================
;==========================================================================
[Statedef 3600]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 3600
poweradd = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelem=1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 68
[State 3000, Explod]
type = Explod
trigger1 = TIME=0
anim = 6037
ID = 6037
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermove = 90
pausemovetime = 90
sprpriority = -2
ownpal = 1
scale=.5,.5

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -4
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60

[State 3000, Explod]
type = Explod
trigger1 = ANIMELEM=5
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
sprpriority = -3
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 3700, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 3200, SuperPause]
type = SuperPause
trigger1 = AnimElem = 3
pos = -27, -10
anim = -1
sound = S0,29
poweradd = -2000
time=50
movetime=22

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = 45,-55
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 8888, ExShadow]
type = AfterImage
trigger1 = Animelem = 1
time = 9999
TimeGap =2
FrameGap=5
length = 16
palbright = 0, 40, 40
paladd = -10, -10, -10
palmul = 0, 1, 1
trans = add
ignorehitpause = 1

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 0
channel = 2

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2,2
channel = 2

[State 3204, 3]
type = HitDef
trigger1 = AnimElem = 5
attr = A, HA
damage = 10,5
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 45,40
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -60
hitsound = s22,2
guardsound = S21, 0
ground.type = low
ground.hittime = 32
ground.velocity = 5,0
airguard.velocity = -1.7, -1.7
air.type = High
air.velocity = 0,22
air.hittime = 15
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0
p2stateno=4058

[State 3204, 3]
type = HitDef
trigger1 = AnimElem = 6
attr = A, HA
damage = 15,10
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 44,44
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -60
hitsound = S22,4
guardsound = S21, 0
ground.type = high
ground.hittime = 46
ground.velocity = 5,0
airguard.velocity = -1.7, -1.7
air.type = High
air.velocity = 0,22
air.hittime = 15
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0
p2stateno=4059

[State 3200, 4]
type = ChangeState
triggerall=movehit
trigger1=animelem=7
value = 3601

[State 3200, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl=1
;==========================================================================
;==========================================================================
[Statedef 3601]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 3205
poweradd = 0

[State 0, TargetBind]
type = TargetBind
trigger1 =time=0
pos =40,0
;ignorehitpause =
;persistent =


[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State xxx, Explod]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 13
trigger3 = AnimElem = 23
trigger4 = AnimElem = 33
trigger5 = AnimElem = 43
trigger6 = AnimElem = 53
anim = 2224
ID = 2224
pos = -30,25
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 13
trigger3 = AnimElem = 23
trigger4 = AnimElem = 33
trigger5 = AnimElem = 43
trigger6 = AnimElem = 53
anim = 1501
ID = 1501
pos = -50,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 15,60
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0
;persistent =

[State 3204, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 13
trigger3 = AnimElem = 23
trigger4 = AnimElem = 33
trigger5 = AnimElem = 43
trigger6 = AnimElem = 53
value = 20,3
channel = 1

[State 3204, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 53
value = 0, 2
channel = 0

[State 3204, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 4
channel = 0

[State 3204, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 5
channel = 0

[State 3204, 3]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 23
trigger4 = AnimElem = 24
trigger5 = AnimElem = 43
trigger6 = AnimElem = 44
attr = S, HA
damage = 2, 0
animtype = med
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 2, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.type = Low
ground.slidetime = 8
ground.hittime = 15
ground.velocity = 0, 0
airguard.velocity = -1.7, -1.7
air.type = High
air.velocity = -1, -0.5
air.hittime = 15
air.fall = 1
envshake.time = 12
envshake.ampl = 5
getpower=0
kill=0
palfx.time = 80
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 12
envshake.ampl = 5

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 3204, 3]
type = HitDef
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 33
trigger4 = AnimElem = 34
attr = S, HA
damage = 3, 0
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 2, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -80
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
ground.velocity = 0, 0
airguard.velocity = -1.7, -1.7
air.type = High
air.velocity = -1, -0.5
air.hittime = 15
air.fall = 1
envshake.time = 12
envshake.ampl = 5
getpower=0
kill=0
palfx.time = 80
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 12
envshake.ampl = 5

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 3204, Velocity]
type = VelSet
trigger1 = AnimElem = 89, >= 1
x = 0
y = 0

[State 3204, 3]
type = HitDef
trigger1 = AnimElem = 53
attr = S, HA
damage = 15, 0
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 2, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -80
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 30
ground.velocity = 0, 0
airguard.velocity = -1.7, -1.7
air.type = High
air.velocity = 0,0
air.hittime = 30
air.fall = 1
envshake.time = 12
envshake.ampl = 5
getpower=0
kill=0
palfx.time = 80
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 12
envshake.ampl = 5

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 3204, 4]
type = ChangeState
trigger1 = Animelem=57
value = 3602
ctrl = 0
;==========================================================================
[Statedef 3602]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 3205
poweradd = 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=1
value = S17,0

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 3204, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State xxx, Explod]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 13
trigger3 = AnimElem = 23
trigger4 = AnimElem = 33
trigger5 = AnimElem = 43
trigger6 = AnimElem = 53
anim = 2224
ID = 2224
pos = -30,25
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 13
trigger3 = AnimElem = 23
trigger4 = AnimElem = 33
trigger5 = AnimElem = 43
trigger6 = AnimElem = 53
anim = 1501
ID = 1501
pos = -50,20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 5,50
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0
;persistent =

[State 3204, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 13
trigger3 = AnimElem = 23
trigger4 = AnimElem = 33
trigger5 = AnimElem = 43
trigger6 = AnimElem = 53
value = 20,3
channel = 1

[State 3204, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 53
value = 0, 2
channel = 0

[State 3204, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 4
channel = 0

[State 3204, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 5
channel = 0

[State 3204, 3]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 23
trigger4 = AnimElem = 24
trigger5 = AnimElem = 43
trigger6 = AnimElem = 44
attr = S, HA
damage = 5, 0
animtype = med
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 2, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.type = Low
ground.slidetime = 8
ground.hittime = 15
ground.velocity = 0, 0
airguard.velocity = -1.7, -1.7
air.type = High
air.velocity = -1, -0.5
air.hittime = 15
air.fall = 1
envshake.time = 12
envshake.ampl = 5
getpower=0
kill=0
palfx.time = 80
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 12
envshake.ampl = 5

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 3204, 3]
type = HitDef
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 33
trigger4 = AnimElem = 34
attr = S, HA
damage = 10, 0
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 2, 4
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -80
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
ground.velocity = 0, 0
airguard.velocity = -1.7, -1.7
air.type = High
air.velocity = 0
air.hittime = 15
air.fall = 0
envshake.time = 12
envshake.ampl = 5
getpower=0
kill=0
palfx.time = 80
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 12
envshake.ampl = 5

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 3204, Velocity]
type = VelSet
trigger1 = AnimElem = 89, >= 1
x = 0
y = 0

[State 3204, 3]
type = HitDef
trigger1 = AnimElem = 53
attr = S, HA
damage = 10, 0
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -80
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 30
ground.velocity = 0
airguard.velocity = -1.7, -1.7
air.type = High
air.velocity = 0, -5.8
air.hittime = 30
air.fall =0
envshake.time = 12
envshake.ampl = 5
getpower=0
kill=0
palfx.time = 80
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 12
envshake.ampl = 5

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 3204, Change]
type = ChangeState
trigger1 = AnimElem = 57 && MoveHit
value = 4001

[State 3204, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
;==========================================================================
[Statedef 3603]
type = S
movetype = A
physics = S
juggle = 1
poweradd = 0
ctrl = 0
anim = 1200
sprpriority = 2
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=1
value = S17,0

[State 0, Pause]
Type = Pause
Trigger1 = time = [0,50]
time = 4

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1204, 0]
type = NotHitBy
trigger1 = 1
value = SCA, NP, SP
time = 1

[State 1204, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
channel = 0

[State 1204, 3]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S, SA
damage = 10, 5
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 6
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S5,0
guardsound = S21, 0
ground.type = Low
ground.hittime = 10
ground.velocity = 0, -12
air.velocity = 0, -11
air.hittime = 10
fall = 0
air.fall = 1
palfx.time = 50
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0

[State 1204, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
damage = 15, 5
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S5,0
guardsound = S21, 0
ground.type = High
ground.hittime = 10
ground.velocity = 0, 0
air.velocity = 0, 0
air.hittime = 10
palfx.time = 50
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0

[State 0, Helper]
type = Helper
triggerall = MoveHit
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 1204, 4]
type = ChangeState
trigger1 = AnimElem = 4
value = 3105
;==========================================================================
[Statedef 3604]
type = A
movetype = A
physics = A
velset = 7.01, -18
juggle = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=1
value = S17,1

[State 0, Pause]
Type = Pause
Trigger1 = time = [0,80]
time = 6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=20
value = S17,2

[State 1205, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 1205, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 0

[State 1205, 3]
type = HitDef
trigger1 = time=0
trigger2 = time=5
trigger3 = time=10
trigger4 = time=15
trigger5 = time=20
attr = A, SA
damage = 15, 3
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -120
hitsound = S5,0
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = 0, -18
air.velocity = 0, -18
air.hittime = 2
fall = 1
air.fall = 1
palfx.time = 80
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 12
envshake.ampl = 5
getpower=0
kill=0

[State 1205, 3]
type = HitDef
trigger1 = time=25
attr = A, SA
damage = 15, 3
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -120
hitsound = S5,0
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = -12, -2
air.velocity = -12, -3
air.hittime = 2
fall = 1
air.fall = 1
palfx.time = 80
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 0, Helper]
type = Helper
triggerall = MoveHit&&P2Stateno =5000||P2stateno =5020
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 1205, 4]
type = ChangeAnim
triggerall = Anim = 1200
trigger1 = Vel Y > 0
value = 1201

[State 1205, Flame]
type = Explod
triggerall = Anim = 1201
trigger1 = AnimElem = 1
anim = 1299
ID = 12
postype = p1
bindtime = 1
supermove = 1
pausemovetime = -1
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 1205, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 1206
;==========================================================================
[Statedef 3605]
ctrl = 0
sprpriority = 5
anim=9999

[State 1225, Bind]
type = BindToParent
trigger1 = Time = 0
time = -1
pos = -50,35
;ignorehitpause = 0
;persistent = 1

[State 1225, Shadowless]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, Explod]
type = Explod
trigger1 = 1
anim =  3607
ID = 3607
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
;persistent =
trans=add

[State 1225, Eliminate]
type = DestroySelf
;trigger1 = AnimTime = 0
trigger1 = time=150
;==========================================================================
;==========================================================================
[Statedef 3700]
type = S
movetype = A
physics = S
poweradd = 0
ctrl = 0
anim = 3002
sprpriority = 2
velset = 0, 0

[State 3050, AfterImage]
type = AfterImage
trigger1 = time=0
time = 9999
length = 18;3
palcolor = 256
palinvertall = 0
palbright = 150,0,0
palcontrast = 300,10,0
palpostbright = 0,0,0
paladd = 25,10,5
palmul = .65,.65,.65
timegap = 1;6
framegap = 6;1
trans = add
ignorehitpause = 0


[State 7500, portrait]
type=helper
trigger1 = AnimElem = 1
helpertype=normal
stateno=7510
ID=7510
name="Super Charge Portrait"
postype=p1
supermovetime=300
ownpal=1

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -4
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60

[State 3000, Explod]
type = Explod
trigger1 = ANIMELEM=3
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
sprpriority = -3
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S0,30

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = 8,-26
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 3004, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
pos = 8, -26
anim = -1
time = 45
poweradd = -3000

[State 3004, VelSet]
type = VelSet
trigger1 = AnimElemNo(0) = [2,21]
trigger2 = AnimElem = 24, >= 0
x = 3

[State 3004, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,0
channel = 0

[State 3004, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,1
channel = 0

[State xxx, Explod]
type = Explod
trigger1 = AnimElem = 1
trigger2 = AnimElem = 11
trigger3 = AnimElem = 22
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 3004, HitDef]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
attr = S, HA
damage = 10, 2
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 18
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22,4
guardsound = S21, 0
ground.type = Low
ground.hittime = 10
ground.velocity = -2.3,0
air.velocity = -2, 0
air.hittime = 10
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 3004, HitDef]
type = HitDef
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
trigger5 = AnimElem = 24
trigger6 = AnimElem = 25
attr = S, HA
damage = 25, 3
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 18
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22,4
guardsound = S21, 0
ground.type = High
ground.hittime = 10
ground.velocity = -2.3,0
air.velocity = -2, 0
air.hittime = 10
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 3004, HitDef]
type = HitDef
trigger1 = AnimElem = 26
trigger2 = AnimElem = 27
trigger3 = AnimElem = 28
trigger4 = AnimElem = 29
attr = S, HA
damage = 28, 3
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,6
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -78
hitsound = S5,0
guardsound = S21, 0
ground.type = High
ground.hittime = 10
ground.velocity = -2, 0
air.velocity = -2, 0
air.hittime = 10
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animelem=24
value = 3002
elem = 3
;ignorehitpause =
;persistent =


[State 3004, 4]
type = ChangeState
trigger1 = time=100
value = 4002
;DX SUPERS
;==========================================================================
;DX Kuzuryuureppa
;==========================================================================
[Statedef 4000]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 4000
poweradd = 0


[State 7500, portrait]
type=helper
trigger1 = AnimElem = 1
helpertype=normal
stateno=7510
ID=7510
name="Super Charge Portrait"
postype=p1
supermovetime=300
ownpal=1

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -4
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60

[State 3000, Explod]
type = Explod
trigger1 = ANIMELEM=5
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
sprpriority = -3
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State xxx, Explod]
type = Explod
trigger1 = Time = 0
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 4000, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S0,28

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -27, -2
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 4000, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
pos = -27, -2
anim = -1
sound = S40, 0
poweradd = -3000
darken = 0
time = 40

[State 0, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 60
;ignorehitpause =
;persistent =

[State 4000, Shadows]
type = AfterImage
trigger1 = AnimElem = 1, 1
time = 2
trans = add1

[State 4000, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 120
time = 2

[State 4000, Super4]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 2

[State 4000, Super5]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0 && Time < 30
value2 = C, NA
time = 1

[State 4000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 4000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 13
trigger3 = AnimElem = 25
trigger4 = AnimElem = 37
value = 20,3
channel = 1

[State 4000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 2
channel = 0

[State 4000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2, 5
channel = 0

[State 4000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 44
value = 1, 1
channel = 0

[State 4000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 55
value = 2, 1
channel = 0

[State 4000, Velocity]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 11
trigger3 = AnimElem = 21
trigger4 = AnimElem = 31
x = 16

[State 4000, VelSet]
type = VelSet
trigger1 = AnimElemNo(0) = [44,65]
trigger2 = AnimElem = 66, >= 0
x = 3

[State xxx, Explod]
type = Explod
trigger1 = AnimElem = 14
trigger2 = AnimElem = 38
trigger3 = AnimElem = 39
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999


[State 4000, 3]
type = HitDef
trigger1 = AnimElem = 14
trigger2 = AnimElem = 38
trigger3 = AnimElem = 39
attr = S, HA
damage = 20, 2
animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 0
ground.type = Low
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -1, 0
airguard.velocity = -1.7, -1.7
air.type = Low
air.velocity = -1, -0.5
air.hittime = 15
air.fall = 1
envshake.time = 12
envshake.ampl = 5
getpower=0

[State xxx, Explod]
type = Explod
trigger1 = AnimElem = 4
trigger2 = AnimElem = 26
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 4000, 3]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 26
attr = S, HA
damage = 20, 2
animtype = Back
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -80
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -1, 0
airguard.velocity = -1.7, -1.7
air.type = High
air.velocity = -1, -0.5
air.hittime = 15
air.fall = 1
envshake.time = 12
envshake.ampl = 5
getpower=0
p2stateno=4058

[State xxx, Explod]
type = Explod
trigger1 = AnimElem = 45
trigger2 = AnimElem = 56
trigger3 = AnimElem = 66
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 4000, HitDef]
type = HitDef
trigger1 = AnimElem = 45
trigger2 = AnimElem = 56
trigger3 = AnimElem = 66
attr = S, HA
damage = 18, 2
animtype = Hard
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22, 4
guardsound = S21, 0
ground.type = Low
ground.hittime = 30
ground.velocity = -1
air.velocity = -2, -5.5
air.hittime = 30
fall = 0
air.fall = 1
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 4000, HitDef]
type = HitDef
trigger1 = AnimElem = 46
trigger2 = AnimElem = 57 
trigger3 = AnimElem = 67
trigger4 = AnimElem = 68
attr = S, HA
damage = 18, 2
animtype = Hard
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 30
ground.velocity = -0.1
air.velocity = -2, -5.5
air.hittime = 30
fall = 0
air.fall = 1
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 4000, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 4001

[Statedef 4001]
type = S
movetype = A
physics = S
poweradd = 0
ctrl = 0
anim = 3100
sprpriority = 4
velset = 0, 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelem=1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 30

[State 4001, VelSet]
type = VelSet
trigger1 = AnimElemNo(0) = [1,4]
x = 3

[State 4001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 2,3
channel = 0


[State 4001, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
damage = 12, 2
animtype = Hard
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22, 4
guardsound = S21, 0
ground.type = Low
ground.hittime = 10
ground.velocity = 1
air.velocity = -2, -5.5
air.hittime = 10
fall = 0
air.fall = 1
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 4001, HitDef]
type = HitDef
trigger1 = AnimElem = 6
attr = S, HA
damage = 12, 2
animtype = up
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 4,4
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S22, 4
guardsound = S21, 0
ground.type = Low
ground.hittime = 10
ground.velocity = 1, -12
air.velocity = -0.1, -12
air.hittime = 10
fall = 1
air.fall = 1
recover=0
envshake.time = 12
envshake.ampl = 5
getpower=0

[State 4001, Velocity]
type = VarSet
trigger1 = Time = 0
v = 6
value = 0

[State 4001, 4]
type = ChangeState
trigger1 = AnimElem = 6, > 1
value = 4002

[Statedef 4002]
type = A
movetype = A
physics = N
velset = 0,0
anim = 3101
sprpriority = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S7,0
volume=500
[State 0, Helper]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "zan"
ID = 4005
stateno = 4005
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
size.xscale = .7
size.yscale = .5
ignorehitpause = 1



[State 4002, 2]
type = VelSet
trigger1 = time= 0
y=-4

[State 4002, 2]
type = Veladd
trigger1 = time = 8
trigger2 = time = 24
trigger3 = time = 40
trigger4 = time = 56
trigger5 = time = 72
trigger6 = time = 88
trigger7 = time = 104
trigger8 = time = 120
trigger9 = time = 136
trigger10 = time = 152
y=-.05


[State 4002, 3]
type = HitDef
trigger1 = time = 8
trigger2 = time = 24
trigger3 = time = 40
trigger4 = time = 56
trigger5 = time = 72
trigger6 = time = 88
trigger7 = time = 104
trigger8 = time = 120
trigger9 = time = 136
trigger10 = time = 152
attr = A, HA
damage = 12, 2
getpower = 0
givepower = 40
animtype = up
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 4,8
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -110
hitsound = S50,0
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = -0.5, -14
air.velocity = -0.5, -14
air.hittime = 2
palfx.time = 50
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
fall.recover = 0
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 4002, 3]
type = HitDef
trigger1 = time =16
trigger2 = time =32
trigger3 = time =48
trigger4 = time =64
trigger5 = time =80
trigger6 = time =96
trigger7 = time =112
trigger8 = time =128
trigger9 = time =144
trigger10 = time =160
attr = A, HA
damage = 15, 2
getpower = 0
givepower = 40
animtype = up
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 4,8
guard.sparkno = s7051
sparkno = s7020+(random%8)
sparkxy = 0, -90
hitsound = S5,1
guardsound = S21, 0
ground.type = High
ground.hittime = 2
ground.velocity = 0.5, -14
air.velocity = 0.5, -14
air.hittime = 2
palfx.time = 50
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
fall = 1
fall.recover = 0
air.fall = 1
envshake.time = 12
envshake.ampl = 5

[State 0, Helper]
type = Helper
triggerall = MoveHit&&P2Stateno =5000||P2stateno =5020
trigger1 = NumHelper(7180) = 0
helpertype = normal ;player
name = "fire"
ID = 7180
stateno = 7180
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove=

[State 4002, 2]
type = VelSet
trigger1 =time=90
x = 0
y=9

[State 4002, 4]
type = ChangeAnim
triggerall = Anim = 3101
trigger1 = Vel Y > 0
value = 1201

[State 4002, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 3106

;==========================================================================
[Statedef 4005]
ctrl = 0
sprpriority = 6
anim=3222

[State 1225, Bind]
type = BindToParent
trigger1 = Time = 0
time = -1
pos = 0,50
;ignorehitpause = 0
;persistent = 1

[State 1225, Shadowless]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1225, Eliminate]
type = DestroySelf
;trigger1 = AnimTime = 0
trigger1 = parent, anim != 3101
;==========================================================================
[Statedef 4006]
ctrl = 0
sprpriority = 7
anim=1717

[State 1225, Bind]
type = BindToParent
trigger1 = Time = 0
time = -1
pos = 20,40
;ignorehitpause = 0
;persistent = 1

[State 1225, Shadowless]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1225, Eliminate]
type = DestroySelf
;trigger1 = AnimTime = 0
trigger1 = parent, stateno != 4002
;---------------------------------------------------------------------------
[Statedef 4058]
type    = S
movetype= H
physics = S
juggle = 1
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 0
facep2 = 1

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 4058  ;<=======custom animation
;---------------------------------------------------------------------------
[Statedef 4059]
type    = S
movetype= H
physics = S
juggle = 1
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 0
facep2 = 1

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 4059  ;<=======custom animation
;==========================================================================
;Self Dizzy (credit to Ragnarok)
;==========================================================================
[Statedef 6000]
type = S
physics = S
movetype = H
ctrl = 0

[State 6000, ChangeAnim]
type = ChangeAnim
trigger1 = (!Time)
value = 5300

[State 6000, ChangeState]
type = ChangeState
triggerall = (Random <= 500)
trigger1 = (Command = "a") || (Command = "b") || (Command = "c")
trigger2 = (Command = "x") || (Command = "y") || (Command = "z")
value = 6001

[State 6000, ChangeState]
type = ChangeState
trigger1 = (Time = 30)
value = 6001

[Statedef 6001]
type = S
physics = S
movetype = H
ctrl = 0

[State 6001, PalFX]
type = PalFX
trigger1 = (!Time)
time = 2
add = 50,50,50
mul = 300,300,300

[State 6001, ChangeState]
type = ChangeState
triggerall = (Random <= 500)
trigger1 = (Command = "a") || (Command = "b") || (Command = "c")
trigger2 = (Command = "x") || (Command = "y") || (Command = "z")
value = 6002

[State 6001, ChangeState]
type = ChangeState
trigger1 = (Time = 30)
value = 6002

[Statedef 6002]
type = S
physics = S
movetype = H
ctrl = 0

[State 6002, PalFX]
type = PalFX
trigger1 = (!Time)
time = 2
add = 50,50,50
mul = 300,300,300

[State 6002, ChangeState]
type = ChangeState
triggerall = (Random <= 500)
trigger1 = (Command = "a") || (Command = "b") || (Command = "c")
trigger2 = (Command = "x") || (Command = "y") || (Command = "z")
value = 6003

[State 6002, ChangeState]
type = ChangeState
trigger1 = (Time = 30)
value = 6003

[Statedef 6003]
type = S
physics = S
movetype = H
ctrl = 0

[State 6003: PalFX]
type = PalFX
trigger1 = (!Time)
time = 2
add = 50,50,50
mul = 300,300,300

[State 6003, ChangeState]
type = ChangeState
triggerall = (Random <= 500)
trigger1 = (Command = "a") || (Command = "b") || (Command = "c")
trigger2 = (Command = "x") || (Command = "y") || (Command = "z")
value = 0

[State 6003, SelfState]
type = SelfState
trigger1 = (Time = 30)
value = 0
ctrl = 1

[Statedef 6010]
type = S
movetype = H
physics = N
ctrl = 0

[State 6010, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6010, VarSet]
type = VarSet
trigger1 = (!Time)
v = 20
value = 0

[State 6010, ChangeState]
type = ChangeState
trigger1 = (HitShakeOver)
value = 6011

[Statedef 6011]
type = A
movetype = H
physics = N
anim = 9011
ctrl = 0
velset = -3, -4

[State 6011, VelAdd]
type = VelAdd
trigger1 = (Pos Y < 0)
y = 0.35

[State 6011, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6011, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 6012

[Statedef 6012]
type = S
movetype = H
physics = S
anim = 5110
ctrl = 0

[State 6012, VelSet]
type = VelSet
trigger1 = (!Time)
Y = 0

[State 6012, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6012, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 25)
value = 5120

[State 6012, ChangeState]
type = ChangeState
trigger1 = (AnimTime = 0) && (Anim = 5120)
value = 6000
;---------------------------------------------------------------------------
;========================<FIRE>=============================
;---RED---
[Statedef 7180]
physics=N
velset=0,0
anim=9999
sprpriority=4
[State 7180, Assert]
type=assertspecial
trigger1= 1
flag=noshadow
ignorehitpause=1
[State 7180, flames]
type=explod
trigger1= 1
anim=7182
ID=7182
sprpriority=3
postype=p2
vel=-.2,-.75
pos= (enemynear,const(size.mid.pos.x)), ifelse((enemynear,statetype=L), 0, (enemynear,const(size.mid.pos.y) + 10))
random=40,40
scale=.5,.5
ownpal=1
[State 7180, Pos]
type=posadd
trigger1= 1
x=ceil(p2dist x)
y=ceil(p2dist y)
[State End]
type=destroyself
triggerall= numenemy
trigger1= enemynear,ctrl
trigger2= enemynear,movetype!=H || enemynear,stateno=5300
trigger3= enemynear,statetype=L && (enemynear,stateno!=[5080,5081])
[State End]
type=destroyself
trigger1= !numenemy || time>=120
;-------------------------------------------------------------------------------
;========================<Lv3 SUPERCHARGE PORTRAIT>=============================
[Statedef 7510]
physics=N
anim=9999
[State 7510, assert]
type=assertspecial
trigger1=1
flag=invisible
flag2=nobardisplay
ignorehitpause=1
[State 7510, portrait]
type=explod
trigger1=!time
anim=7510
ID=7510
postype=back
pos=160,120
under=1
bindtime=-1
removetime=60
pausemovetime=300
supermovetime=300
[State 7510, shrink]
type=modifyexplod
trigger1=time<45
ID=7510
scale=.5,.5
[State 7510, shrink]
type=modifyexplod
trigger1=time>=45
ID=7510
scale=.5225+(.13*(time-45)),.5225+(.13*(time-45))
[State 7510, fade]
type=palfx
trigger1=time=45
time=15
sinadd=-255,-255,-255,60
[State 7510, safety]
type=removeexplod
trigger1=time>=61
[State 7510, end]
type=destroyself
trigger1=time>=61
;---------------------------------------------------------------------------
;stand parry
[Statedef 7700]
type = S
movetype = I
physics = S
anim = 7700
velset=0,0
ctrl=0
sprpriority=3
facep2 = 1
poweradd=300

[State 7700, Pause]
type = Pause
trigger1 = time = 0
time = 20-ifelse((GetHitVar(animtype)=[3,5]),4,GetHitVar(animtype))-ifelse(GetHitVar(hitshaketime)>16,16,GetHitVar(hitshaketime))
movetime = 20-ifelse((GetHitVar(animtype)=[3,5]),4,GetHitVar(animtype))-ifelse(GetHitVar(hitshaketime)>16,16,GetHitVar(hitshaketime))

[State 7700, EnvShake]
type = EnvShake
trigger1 = time = 1
persistent = 0
ignorehitpause = 1
time = 10
ampl = 2
freq = 180
phase = 40

[State 7700, nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 16

[State 700, stop]
type=posfreeze
trigger1=time<=10
value=1

[State 700, blueflash]
type=palfx
trigger1=!time
add=0,50,255
sinadd=0,-50,-255,60
time=15

[State 700, snd]
type=playsnd
trigger1=!time
value=s0,0
channel=0

[State 700, snd]
type=playsnd
trigger1=!time
value=s2,8

[State 902, 1]
type = Explod
trigger1 = time = 1
anim = 8060
pos = 0, -70
postype=p1
sprpriority = 6
supermove = 1
persistent = 0
ownpal = 1
trans = add
pausemovetime = -1
id = 8065
scale = .5, .5
removeongethit = 1

[State 7700, asserts]
type = assertspecial
trigger1 = animelemtime(4) < 0
flag = nowalk
flag2 = nostandguard
flag3 = nocrouchguard

[State 7700, CtrlSet]
type = CtrlSet
trigger1 = time = 18
value = 1

[State 7700, sprpriority]
type = sprpriority
trigger1 = animelemtime(4) >= 0
value = 0

[State 7700, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;crouch parry
[Statedef 7710]
type = C
movetype = I
physics = C
anim = 7710
velset=0,0
ctrl=0
sprpriority=3
facep2 = 1
poweradd=300

[State 7700, Pause]
type = Pause
trigger1 = time = 0
time = 20-ifelse((GetHitVar(animtype)=[3,5]),4,GetHitVar(animtype))-ifelse(GetHitVar(hitshaketime)>16,16,GetHitVar(hitshaketime))
movetime = 20-ifelse((GetHitVar(animtype)=[3,5]),4,GetHitVar(animtype))-ifelse(GetHitVar(hitshaketime)>16,16,GetHitVar(hitshaketime))

[State 7700, EnvShake]
type = EnvShake
trigger1 = time = 1
persistent = 0
ignorehitpause = 1
time = 10
ampl = 2
freq = 180
phase = 40

[State 7700, nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 16

[State 700, stop]
type=posfreeze
trigger1=time<=10
value=1

[State 700, blueflash]
type=palfx
trigger1=!time
add=0,50,255
sinadd=0,-50,-255,60
time=15

[State 700, snd]
type=playsnd
trigger1=!time
value=s0,0
channel=0

[State 700, snd]
type=playsnd
trigger1=!time
value=s2,8

[State 902, 1]
type = Explod
trigger1 = time = 1
anim = 8060
postype=p1
pos = 0, -23
sprpriority = 6
supermove = 1
persistent = 0
ownpal = 1
trans = add
pausemovetime = -1
id = 8065
scale = .5, .5
removeongethit = 1

[State 7700, asserts]
type = assertspecial
trigger1 = animelemtime(3) < 0
flag = nowalk
flag2 = nostandguard
flag3 = nocrouchguard

[State 7700, CtrlSet]
type = CtrlSet
trigger1 = time = 18
value = 1

[State 7700, sprpriority]
type = sprpriority
trigger1 = animelemtime(3) >= 0
value = 0

[State 7710, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;air parry
[Statedef 7720]
type = A
movetype = I
physics = N
anim = 7720
velset=0,0
ctrl=0
sprpriority=3
facep2 = 1
poweradd=300

[State 7700, Pause]
type = Pause
trigger1 = time = 0
time = 20-ifelse((GetHitVar(animtype)=[3,5]),4,GetHitVar(animtype))-ifelse(GetHitVar(hitshaketime)>16,16,GetHitVar(hitshaketime))
movetime = 20-ifelse((GetHitVar(animtype)=[3,5]),4,GetHitVar(animtype))-ifelse(GetHitVar(hitshaketime)>16,16,GetHitVar(hitshaketime))

[State 7700, EnvShake]
type = EnvShake
trigger1 = time = 1
persistent = 0
ignorehitpause = 1
time = 10
ampl = 2
freq = 180
phase = 40

[State 7700, nothitby]
type = nothitby
trigger1 = time = 0
value = SCA
time = 16

[State 700, stop]
type=posfreeze
trigger1=time<=10
value=1

[State 700, blueflash]
type=palfx
trigger1=!time
add=0,50,255
sinadd=0,-50,-255,60
time=15

[State 700, snd]
type=playsnd
trigger1=!time
value=s0,0
channel=0

[State 700, snd]
type=playsnd
trigger1=!time
value=s2,8

[State 902, 1]
type = Explod
trigger1 = time = 1
anim = 8060
postype=p1
pos = 0, -70
sprpriority = 6
supermove = 1
persistent = 0
ownpal = 1
trans = add
pausemovetime = -1
id = 8065
scale = .5, .5
removeongethit = 1

[State 7700, asserts]
type = assertspecial
trigger1 = animelemtime(3) < 0
flag = nowalk
flag2 = nostandguard
flag3 = nocrouchguard

[State 7700, CtrlSet]
type = CtrlSet
trigger1 = time = 18
value = 1

[State 7700, sprpriority]
type = sprpriority
trigger1 = animelemtime(3) >= 0
value = 0

[State 7720, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 7730

;---------------------------------------------------------------------------
;fall
[Statedef 7730]
type = A
physics = N
;velset = 0,-4
ctrl = 1
anim = 7730

[State 7730, Gravity]
type = Gravity
trigger1 = 1

[State 7730, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52

;-------------------------------------------------------------------------------
 ; Hit by  - shaking from the hit
; (a custom gethit state)

[Statedef 9040]
type    = A
movetype= H
physics = N
velset = 0,0

[State 9040, Anim] ;Custom animation
type = null;ChangeAnim2
trigger1 = 1
value = 5012


[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim ;2
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)


[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type



[State 5050, 2] ; anim for trip
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(groundtype) = 3
trigger1 = SelfAnimExist(5070)
value = 5070


[State 9040, State]
type = AfterImage
trigger1 = Time = 5
length = 5
timegap = 1
framegap = 1
PalBright   = 0,0,0
PalContrast = 100,100,100
PalMul      = 1,1,1
trans = Add1
time = 0

[State 9040, State]
type = AfterImageTime
trigger1 = 1
time = 2

[State 9040, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 9050

;----------------------------------------------------------------------
; Hit by - flying through the air
; (a custom gethit state)
[Statedef 9050]
type    = A
movetype= H
physics = N



[State 9050]
type = AfterImage
trigger1 = Time = 5
length = 5
timegap = 1
framegap = 1
PalBright   = 0,0,0
PalContrast = 100,100,100
PalMul      = 1,1,1
trans = Add1
time = 0

[State 9050]
type = AfterImageTime
trigger1 = 1
time = 2

[State 9050, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 9050, Gravity]
type = VelAdd
trigger1 = 1
y = .39

[State 9050, No scroll]
type = null;ScreenBound
;triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 0
movecamera = 0,1

[State 9050, Hit wall]
type = ChangeState
;triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 9060


[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050
trigger2 = Anim != 5070

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0


[State 5050, 2] ;Coming down anim for trip
type = ChangeAnim
trigger1 = anim = 5070
trigger1 = Vel Y >= 0
trigger1 = SelfAnimExist(anim-10) || SelfAnimExist(5071)
value = ifelse(SelfAnimExist(5071),5071,anim-10)
persistent = 0


[State 5035, 3]
type = null;ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5040 ;HITA_RECOV

[State 5050, 4] ;Recover near ground
type = null;SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = 1;Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = null;ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 9050, Hit ground]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5071]), 0, 25)
value = 5100 ;HIT_BOUNCE

;-----------------------------------------------------------------------------------------------------
; Hit by  - hit wall
; (a custom gethit state)
[Statedef 9060]
type    = A
movetype= H
physics = N

[State 9060, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 9060]
type = EnvShake
trigger1 = time = 0
time = 30
freq = 100
ampl = -10
phase = 10

[State 9060, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 9060, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 9060, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 9060, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3


[State 9060, State]
type = ChangeState
trigger1 = Time = 5
value = 9070

;----------------------------------------------------------------
; Hit by  - bounce off wall
; (a custom gethit state)
[Statedef 9070]
type    = A
movetype= H
physics = N




[State 9070, 1]
type = NotHitBy
trigger1 = 1
value = , NA, NP

[State 9070, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -2

[State 9070, Vel X]
type = VelSet
trigger1 = Time = 0
x = 2


[State 9070, Turn]
type = null;Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 9070, Gravity]
type = VelAdd
trigger1 = 1
y = .39

[State 9070, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 9070, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 9070, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 9070, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 9070, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100


;Stand by
[Statedef 7827]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
;anim = 9800

[State 7827]
type = PosSet
trigger1 = Time = 0
y = 0

[State 7827]
type = ChangeState
trigger1 = NumEnemy = [1,2]
trigger1 = Enemy(0),statetype = L || Enemy(0),movetype != H
value = 102


[State 7827]
type = ChangeState
trigger1 = NumEnemy = 2
trigger1 = Enemy(1),statetype = L || Enemy(1),movetype != H
value = 102

;-------------------------------------------------------------------------------
[Statedef 102]
type    = S
physics = S
anim = 100
ctrl = 0

[State 181,0]
type = PlaySnd
trigger1 = Animelem = 1
value = S449,2


[State 102]
type = VelSet
trigger1 = AnimElem = 1
x = 7


[State 102]
type = VelSet
trigger1 = AnimElemNo(0) = [1,2]
x = 9


[State 102]
type = VarSet
trigger1 = Time = 0
var(35) = 0


[State 102]
type = VarSet
trigger1 = Time = 0
trigger1 = BackEdgeDist < 0
var(35) = 1


[State 102]
type = VelSet
trigger1 = var(35) && BackEdgeDist > 20
x = 0

[State 102] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 102] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 102]
type = ChangeState
trigger1 = animtime = 0
trigger2 = time=15
value = 0;52
ctrl = 1
;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
;---------------------------------------------------------------------------
;CAMERA FOCUS
[Statedef 60001]
type = S
physics  = S
anim = 0
ctrl = 0

[state 2906,TURN]
type=turn
trigger1=ishelper(6001)
trigger1=facing!=root,facing
ignorehitpause=1

[State 4]
type = VelSet
trigger1 = parent,pos X > 0
x = ifelse(facing = 1,4,-4)

[State 4]
type = VelSet
trigger1 = parent,pos X < 0
x = ifelse(facing = 1,-4,4)

[State 4]
type = VelSet
trigger1 = parent,pos X = [-5,5]
x = 0

[State 3000, WIDTH]
type = Width
trigger1 = 1
value = 1,1

[State 181, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1000,AS]
type = AssertSpecial
Trigger1 = 1
flag = invisible
flag2 = noshadow

[State 210, 3]
type = ScreenBound
trigger1 =1
value =1
movecamera = 320,0

[State 210, 3]
type = PlayerPush
trigger1 =1
value = 0

[State 7110, Destroyself]
type = destroyself
trigger1 = Time = 80
trigger1 = p2life>=1



;--------------------------------------------------------------------------
;CHARGE Efx


[Statedef 88887]
type    = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 970
poweradd = 0
sprpriority = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 999, flash]
type = palfx
trigger1 = 1
time = 1
add =70+ceil(sin(time/8.0*pi)*70),20+ceil(sin(time/8.0*pi)*20),0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

;Center, Center
;time = 1
;trans= A
;frames0-5



[State 0, Helper]
type = Helper
trigger1 = time = 9
helpertype = normal ;player
name = "Particel"
ID = 2220
stateno = 2022
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 0, Explod] ;floor
type = Explod
trigger1 = time = 9
anim = 8886
ID = 8886
pos = -10,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
scale = .6,.4
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, Explod] ; fire efx
type = Explod
trigger1 = time = 9
anim = 8885
ID = 8885
pos = -10,5
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
scale = .5,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time >= 9
ID = 8885
scale = 0.55,0.6*power/3000

[State 0, PlaySnd] ;----- character scream
type = PlaySnd
trigger1 = time = 11
value = 0,5
channel = 20

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 9 ;----- charge sound
value = 0,24
channel = 21

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time >= 9
value = 2+floor((time/10))


[State 0, ChangeState]
type = ChangeState
trigger1 = power >= 3000
value = 88888
ctrl = 0

[State 200, 5]
type = ChangeState
trigger1 = command != "hold_b"
trigger2 = command != "hold_y"
trigger3 = power >= 3000
value = 88888
ctrl = 0
;---------------------------------------------------------------------------
[Statedef 88888] ;   stop animation
type    = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 971
poweradd = 0
sprpriority = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 8886

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 5
id = 8885


;center, center
;time= 1
;trans=A, last trans =AS100D256
;frames= 4-13


[State 0, Explod]  floor stop
type = Explod
trigger1 = !time
anim = 8884
ID = 8884
pos = -10,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
scale = .6,.4
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 2
channel = 21

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 5
channel = 20

[State 200, 5]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1
;---------------------------------------------------------------------------

;==========================================================================
;VS. Series Super Jump (credit to Nercomancer)
;==========================================================================

;==========================================================================
[Statedef -2]

;---------------------------------------------------------------------------
[state 5100,2]
type = playsnd
trigger1 = (gametime%13 = 0) && p2stateno = 9070
persistent = 0
ignorehitpause = 1
value = 669,1
volume = 255 - (13*time)
channel = 22

;voando pela tela
[State -2]
type = ScreenBound
trigger1 = P2StateNo = [9040,9070]
value = p2bodydist x < 30 && BackEdgeDist < 30

[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = Movetype != H && Stateno != 7827
trigger1 = BackEdgeDist < -10 -const(size.ground.front)-const(size.ground.back)
trigger1 = StateType != A
value = 7827
;===========================================================
[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateNo = [0,49]
trigger3 = StateNo = [100,189]
trigger4 = StateNo = 195
trigger5 = StateNo = [200,799]
trigger6 = StateNo = [850,859]
trigger7 = StateNo = [900,1799]
trigger8 = winko
trigger9 = StateNo = [4700,4799]
id = 6036

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateNo = [0,49]
trigger3 = StateNo = [100,189]
trigger4 = StateNo = 195
trigger5 = StateNo = [200,799]
trigger6 = StateNo = [850,859]
trigger7 = StateNo = [900,1799]
trigger8 = winko
trigger9 = StateNo = [4700,4799]
id = 6035

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateNo = [0,49]
trigger3 = StateNo = [100,189]
trigger4 = StateNo = 195
trigger5 = StateNo = [200,799]
trigger6 = StateNo = [850,859]
trigger7 = StateNo = [900,1799]
trigger8 = winko
trigger9 = StateNo = [4700,4799]
id = 6034

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = MoveType = H
trigger2 = StateNo = [0,49]
trigger3 = StateNo = [100,189]
trigger4 = StateNo = 195
trigger5 = StateNo = [200,799]
trigger6 = StateNo = [850,859]
trigger7 = StateNo = [900,1799]
trigger8 = winko
trigger9 = StateNo = [4700,4799]
time = 1
;ignorehitpause =
;persistent =
;==========================================================================
;Combo Counter (credit to MystikBlaze)
;==========================================================================
[State -2, Combo varAdd]
type = VarAdd
trigger1 = (HitPauseTime = 1) && (P2MoveType = H) && (MoveHit = 1)
trigger2 = ProjHitTime(0) = 1
v = 21
value = 1
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = P2MoveType != H
v = 21
value = 0

[State -2, Clipboard]
type = DisplayToClipboard
trigger1 = 1
text = "Counter = %d, Stun = %d"
params = var(21), var(20)
;==========================================================================
;Recovery Roll
;==========================================================================
[State -2, Recovery Roll Reset]
type = varSet
trigger1 = (StateNo != 5050) && (StateNo != 5071)
v = 30
value = 0
;==========================================================================
;SNK Style Start-up
;==========================================================================
[State -2, Intro]
type = AssertSpecial
trigger1 = roundstate = 0
trigger2 = roundstate = 1
flag = NoBarDisplay
;==========================================================================
[State -2, StopSnd]
type = StopSnd
trigger1 = stateno != 88887
channel = 21

[State -2, StopSnd]
type = StopSnd
trigger1 = stateno != 88887
channel = 20
;========================================================================

[State -2,veladd]
type = Veladd
triggerall = (var(10) = 1)
triggerall = prevstateno = 123 ; the superjumo state
trigger1 = enemy,vel y < -1
trigger1 = p2bodydist x = [ 20, 50]
trigger1 = random <= 10000 && p2movetype != A
trigger1 = p2statetype = S
trigger2 = enemy,vel y < -1
trigger2 = p2movetype = H && (p2stateno = 5040 || p2stateno = 5200 || p2stateno = 5210)
trigger2 = p2bodydist x <= 30
trigger3 = P2MoveType != H
trigger3 = P2BodyDist Y < -90
trigger3 = enemy,vel y <= 0
trigger3 = random < 40000; jump state
x = .2 ; maybe you need to modify these valu


[Statedef -3]

;==========================================================================
[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 106 ;Run-back land
trigger3 = stateno = 1206
trigger4 = stateno = 1105
trigger5 = stateno = 3206
value = 30, 0
volume = 166
channel = 2
;==========================================================================
[State -3, WeakHit]
type = PlaySnd
triggerall = Alive
triggerall = Time = 0
triggerall = gethitVar(animtype) = 0
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
value = -1, 0 ;10, 0
channel = 0

[State -3, MediumHit]
type = PlaySnd
triggerall = Alive
triggerall = Time = 0
triggerall = gethitVar(animtype) = 1
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
value = 10, 0
channel = 0

;[State -3, MediumHit2]
;type = PlaySnd
;triggerall = Alive
;triggerall = Time = 0
;triggerall = gethitVar(animtype) = [3,5]
;trigger1 = stateno = 5000
;trigger2 = stateno = 5010
;trigger3 = stateno = 5020
;value = 10, 1
;channel = 0

[State -3, HeavyHit]
type = PlaySnd
triggerall = Alive
triggerall = Time = 0
triggerall = gethitVar(animtype) = 2
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
value = 10, 1
channel = 0

[State -3, HeavyHit2]
type = PlaySnd
triggerall = Alive
triggerall = Time = 0
triggerall = gethitVar(animtype) = [3,5]
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
value = 10, 2
channel = 0

[State -3, HeavyHit3]
type = PlaySnd
triggerall = Alive
triggerall = Time = 0
trigger1 = stateno = 5030
trigger2 = stateno = 5050
trigger3 = stateno = 5070
trigger4 = stateno = 5080
value = 10, 2
channel = 0

;-------------------------------------
[State -3, Super Background]
type = Explod
triggerall = stateno = [3000,4999]
trigger1 = WinKO
ID = 8000
anim = 6035
postype = Back
pos = 0, 0
scale = 1.1, 1.10
sprpriority = -5
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 10

;Coding starting from here here credited to GCNMario
[State -3, Special]
type = AssertSpecial
triggerall = WinKO = 1
trigger1 = NumExplod(8000) >= 1;(StateNo >= 3000)
flag = NoBarDisplay
flag2 = NoFG
ignorehitpause = 1

[State -3, Silence]
type = AssertSpecial
triggerall = WinKO = 1
trigger1 = NumExplod(8000) >= 1;(StateNo >= 3000)
flag = NoMusic
ignorehitpause = 1

;==========================================================================
;New A.I. Enable code (credited to Winane)
;==========================================================================
[State -3, SetAI]
type = VarSet
triggerall = Alive && RoundState = 2
triggerall = IsHomeTeam && !IsHelper
trigger1 = TeamSide = 2
trigger2 = MatchNo > 1
var(10) = 1


;-------------- Generated by Fighter Factory -------------

;--------------------- Variable List ----------------------

; Var(1) - StateDef 180
; Var(2) - StateDef 181, 182, 191, 192, 195, 196
; Var(3) - StateDef 5400
; Var(4) - StateDef 925, 926
; Var(6) - StateDef 3100, 3101, 3102, 3103, 3104, 3105, 4001, 4002
; Var(10) - StateDef -3
; Var(20) - StateDef 6010, -3
; Var(21) - StateDef -2
; Var(30) - StateDef -2
; Var(34) - StateDef 4511, 4600
; Var(35) - StateDef 102

;--------------------- Float Variable List ----------------------

