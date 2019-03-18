;==========================================================================
;Jump Down
;==========================================================================
[Statedef 51]
type    = A
physics = A
anim = 104
ctrl = 1


[State 51, AboutFace]
type = Turn
trigger1 = P2Dist X < 0

[State 51, 1]
type = Null
trigger1 = 1
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
value = 0

;-------------------------------------------------------------------------------
[Statedef 102]
type    = S
physics = S
anim = 100
ctrl = 0

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

[State 1200,CAMERA]
type = helper
trigger1 = pos X != 0
trigger1 = Time = 0
name = "helper1"
id = 6001
pos = 0,0
postype = p1
stateno = 6001
helpertype = normal
ownpal = 1
keyctrl = 1

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

[State 1200,CAMERA]
type = helper
trigger1 = pos X != 0
trigger1 = Time = 0
name = "helper1"
id = 6001
pos = 0,0
postype = p1
stateno = 6001
helpertype = normal
ownpal = 1
keyctrl = 1

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

[State 1200,CAMERA]
type = helper
trigger1 = pos X != 0
trigger1 = Time = 0
name = "helper1"
id = 6001
pos = 0,0
postype = p1
stateno = 6001
helpertype = normal
ownpal = 1
keyctrl = 1

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20, 1
channel = 1

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 11
value = 20, 1
channel = 1

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 21
value = 20, 2
channel = 1

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 0
channel = 0

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
value = 0, 1
channel = 0

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 20
value = 0, 2
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
VelSet = 0,0,0

[State 190, Versus]
type = ChangeState
trigger1 = p2Name = "CVSKen" || p4Name = "CVSKen"
trigger2 = p2Name = "Ken" && Enemy,AuthorName = "dragoon316" || p4Name = "Ken" && Enemy,AuthorName = "dragoon316"
value = 193

[State 190, Versus]
type = ChangeState
trigger1 = p2Name = "Ken" && Enemy,AuthorName = "dragoon316-infinite-edit" || p4Name = "Ken" && Enemy,AuthorName = "dragoon316-infinite-edit"
value = 193

[State 190, Versus]
type = ChangeState
trigger1 = p2Name = "CVSKyo" || p4Name = "CVSKyo"
trigger2 = p2Name = "Kyo" && Enemy,AuthorName = "m_ken-infinite-edit" || p4Name = "Kyo" && Enemy,AuthorName = "m_ken-infinite-edit"
value = 194

[State 190, Versus]
type = ChangeState
trigger1 = p2Name = "Iori Yagami" && Enemy,AuthorName = "Anjel-infinite-edit" || p4Name = "Iori Yagami" && Enemy,AuthorName = "Anjel-infinite-edit"
trigger2 = p2Name = "Alex" && Enemy,AuthorName = "fido-infinite-edit" || p4Name = "Alex" && Enemy,AuthorName = "fido-infinite-edit"
value = 197

[State 190, Versus]
type = ChangeState
trigger1 = p2Name = "CVSRyo" || p4Name = "CVSRyo"
value = 8000

[State 190, Versus]
type = ChangeState
trigger1 = p2Name = "Ryo" || p4Name = "Ryo"
value = 8000

[State 190, Versus]
type = ChangeState
trigger1 = p2Name = "CVSSagat" || p4Name = "CVSSagat"
trigger2 = p2Name = "SVCSagat" || p4Name = "SVCSagat"
trigger3 = p2Name = "Sagat" || p4Name = "Sagat"
value = 8001

[State 190, Versus]
type = ChangeState
trigger1 = p2Name = "Satsu no Hadou Ryu" || p4Name = "Satsu no Hadou Ryu"
value = 8002

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
trigger1 = AnimElem = 3
value = 3,3
channel = 0

[State 191, SFX]
type = PlaySnd
triggerall = var(2) = 2
trigger1 = AnimElem = 3
value = 3,2
channel = 0

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

[State 191, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 192

[State 192, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, 1]
type = VarSet
trigger1 = 1
var(2) = (random % 2) + 1

[State 192, SFX]
type = PlaySnd
triggerall = var(2) = 1
trigger1 = AnimElem = 8
value = 3,0
channel = 0

[State 192, SFX]
type = PlaySnd
triggerall = var(2) = 2
trigger1 = AnimElem = 8
value = 3,2
channel = 0

[State 192, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;==========================================================================
[Statedef 193] ;vs. CvS Ken
type = S
ctrl = 0
anim = 193
VelSet = 0,0

;[State 193, 1]
;type = ChangeAnim
;trigger1 = RoundState = 0
;value = 193

[State 193, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, SFX]
type = PlaySnd
trigger1 = AnimElem = 1,20
value = 3,4
channel = 0

[State 193, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;==========================================================================
[Statedef 194] ; vs. CvS Kyo
type = S
ctrl = 0
anim = 194
VelSet = 0,0,0

[State 194, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 194

[State 194, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 194, SFX]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0,6
channel = 0

[State 194, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;==========================================================================
[Statedef 8000] ; vs. CvS Ryo
type = S
physics = N
ctrl = 0
anim = 8000
VelSet = 0,0

[State 8000, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 8000, VarSet]
type = VarSet
trigger1 = AnimElem = 1
v = 35
value = ceil(Pos X)
;ignorehitpause =
;persistent =

[State 8000, PosSet]
type = PosSet
trigger1 = AnimElem = 1
x = 20 * IfElse(TeamSide = 0, 1, -1)

[State 8000, VelSet]
type = VelSet
trigger1 = AnimElem = 11
x = -abs(Pos X - var(35)) * 0.0205
y = -9.6
;ignorehitpause =
;persistent =

[State 8000, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(11) > 0
y = 0.4
;ignorehitpause =
;persistent =

[State 8000, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 11
statetype = A       ;S,A,C,L
physics = N         ;A,C,S,N
;ignorehitpause =
;persistent =

[State 8000, 1]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5    ;AnimTime = 0
value = 8005
;==========================================================================
[Statedef 8001] ; vs. Sagat
type = S
ctrl = 0
anim = 8001
VelSet = 0,0

[State 8001, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 8001

[State 8001, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 8001, SFX]
type = PlaySnd
trigger1 = AnimElem = 1,1
value = 3,5
channel = 0

[State 8001, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;==========================================================================
[Statedef 8002] ; versus dragoon316's Evil Ryu
type = S
ctrl = 0
anim = 8002
VelSet = 0,0

[State 8000, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 8002

[State 8002, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 8002, SFX]
type = PlaySnd
trigger1 = AnimElem = 9
value = 3,5
channel = 0

[State 8002, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;==========================================================================
[Statedef 8005]
type = S
physics = S
ctrl = 0
velset = 0, 0
anim = 47


[State 8005, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 8005, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 8005, 1]
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
var(2) = (random % 3) + 1

[State 195, SFX]
type = PlaySnd
triggerall = var(2) = 1
trigger1 = AnimElem = 3
value = 3,0
channel = 0

[State 195, SFX]
type = PlaySnd
triggerall = var(2) = 2
trigger1 = AnimElem = 3
value = 3,1
channel = 0

[State 195, SFX]
type = PlaySnd
triggerall = var(2) = 3
trigger1 = AnimElem = 3
value = 3,2
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

[State 195, 1]
type = VarSet
trigger1 = 1
var(2) = (random % 2) + 1

[State 196, SFX]
type = PlaySnd
triggerall = var(2) = 1
trigger1 = AnimElem = 2
value = 3,2
channel = 0

[State 196, SFX]
type = PlaySnd
triggerall = var(2) = 2
trigger1 = AnimElem = 2
value = 0,6
channel = 0

[State 196, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 197] ; vs. Iori
type = S
ctrl = 0
anim = 197
VelSet = 0,0,0

[State 194, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 197

[State 194, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

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
sparkno = s7000+(random%8)
guard.sparkno = s7100
sparkxy = 0, -70
hitsound = S22, 0
guardsound = S21, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 8
ground.velocity = -3
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 8
ground.cornerpush.veloff = -5
guard.cornerpush.veloff = -6
envshake.time = 5
envshake.ampl = 3
getpower = 30,0
givepower = 20,30

[State 200, Hit]
type = HitDef
trigger1 = Time = 0 && Anim = 206
damage = 25
attr = S, NA
hitflag = MA
guardflag = MA
animtype = Light
priority = 3, Hit
pausetime = 8,8
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = 0, -70
hitsound = S22, 0
guardsound = S21, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 8
ground.velocity = -3
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 8
ground.cornerpush.veloff = -5
guard.cornerpush.veloff = -6
envshake.time = 5
envshake.ampl = 3
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

[State 201, 0]
type = ChangeAnim
triggerall = Time = 0
trigger1 = P2BodyDist X >= 10
value = 201

[State 201, 0]
type = ChangeAnim
triggerall = Time = 0
trigger1 = P2BodyDist X < 10
value = 207

[State 201, Hit]
type = HitDef
Trigger1 = Time = 0 && Anim = 201
damage = 20
attr = S, NA
hitflag = MA
guardflag = MA
animtype = Light
priority = 3, Hit
pausetime = 8,8
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = 0, -76
hitsound = S22, 1
guardsound = S21, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 8
ground.velocity = -3
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 8
ground.cornerpush.veloff = -5
guard.cornerpush.veloff = -6
envshake.time = 5
envshake.ampl = 3
getpower = 30,0
givepower = 20,30

[State 201, Hit]
type = HitDef
Trigger1 = Time = 0 && Anim = 207
damage = 25
attr = S, NA
hitflag = MA
guardflag = MA
animtype = Light
priority = 3, Hit
pausetime = 8,8
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = 0, -35
hitsound = S22, 1
guardsound = S21, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 8
ground.velocity = -3
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 8
ground.cornerpush.veloff = -5
guard.cornerpush.veloff = -6
envshake.time = 5
envshake.ampl = 3
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
hitflag = MA
guardflag = MA
animtype = Medium
priority = 5, Hit
pausetime = 10, 10
guard.sparkno = s7100
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
ground.cornerpush.veloff = -8
guard.cornerpush.veloff = -9
getpower = 60,0
givepower = 40,60

[State 202, Hit]
type = HitDef
trigger1 = Time = 0 && Anim = 208
damage = 35
attr = S, NA
hitflag = MA
guardflag = MA
animtype = Medium
priority = 5, Hit
pausetime = 10, 10
guard.sparkno = s7100
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
ground.cornerpush.veloff = -8
guard.cornerpush.veloff = -9
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
trigger1 = P2BodyDist X >= 35
value = 203

[State 203, 0]
type = ChangeAnim
triggerall = Time = 0
trigger1 = P2BodyDist X < 35
value = 209

[State 203, Hit]
type = HitDef
trigger1 = Time = 0 && Anim = 203
damage = 30
attr = S, NA
hitflag = MA
guardflag = MA
animtype = Medium
priority = 5, Hit
pausetime = 10,10
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = 0, -76
hitsound = S22, 3
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
ground.cornerpush.veloff = -8
guard.cornerpush.veloff = -9
getpower = 60,0
givepower = 40,60

[State 203, Hit]
type = HitDef
trigger1 = Time = 0 && Anim = 209
damage = 35
attr = S, NA
hitflag = MA
guardflag = MA
animtype = Medium
priority = 5, Hit
pausetime = 10,10
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = 0, -56
hitsound = S22, 3
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
ground.cornerpush.veloff = -8
guard.cornerpush.veloff = -9
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
trigger1 = P2BodyDist X >= 25
value = 204

[State 204, 0]
type = ChangeAnim
triggerall = Time = 0
trigger1 = P2BodyDist X < 25
value = 210

[State 204, Hit]
type = HitDef
trigger1 = Time = 0 && Anim = 204
damage = 40
attr = S, NA
hitflag = MA
guardflag = MA
animtype = Hard
priority = 5, Hit
pausetime = 12, 12
guard.sparkno = s7100
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

[State 210, 0]
type = HitDef
trigger1 = Time = 0 && Anim = 210
attr = C, NA
damage    = 35
animtype = UP
air.animtype = Medium
fall.animtype = Medium
hitflag = MA
guardflag = MA
pausetime = 12,12
guard.sparkno = s7100
sparkno = s2220
sparkxy = 0, -86
hitsound = S22, 4
guardsound = S21, 0
ground.type = HIGH
air.type = High
ground.slidetime = 20
ground.hittime = 30
air.hittime = 40
FALL=0
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
value = 0, 2
channel = 0

[State 204, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 && Anim = 210
value = 0, 4
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
hitflag = MA
guardflag = MA
animtype = Hard
priority = 5, Hit
pausetime = 12,12
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = 0, -76
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -8, 0
airguard.velocity = -1.7, -0.7
air.hittime = 15
air.type = High
air.velocity = -8, -3
envshake.time = 10
envshake.ampl = 5
getpower = 90,0
givepower = 60,90

[State 205, Hit]
type = HitDef
trigger1 = AnimElem = 3 && Anim = 211
damage = 30
attr = S, NA
hitflag = MA
guardflag = MA
animtype = Hard
priority = 5, Hit
pausetime = 12,12
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = 0, -76
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -8, 0
airguard.velocity = -1.7, -0.7
air.hittime = 15
air.type = High
air.velocity = -8, -3
envshake.time = 10
envshake.ampl = 5
getpower = 60,0
givepower = 40,60

[State 205, Hit]
type = HitDef
trigger1 = AnimElem = 5 && Anim = 211
damage = 30
attr = S, NA
hitflag = MA
guardflag = MA
animtype = Hard
priority = 5, Hit
pausetime = 12,12
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = 0, -56
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -8, 0
airguard.velocity = -1.7, -0.7
air.hittime = 15
air.type = High
air.velocity = -8, -3
envshake.time = 10
envshake.ampl = 5
getpower = 60,0
givepower = 40,60
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
value = 0, 3
channel = 0

[State 205, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 && Anim = 211
value = 0, 2
channel = 2

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
hitflag = MA
guardflag = LA
animtype = Light
priority = 3, Hit
pausetime = 8,8
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = 0, -46
hitsound = S22, 0
guardsound = S21, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 8
ground.velocity = -3
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 8
ground.cornerpush.veloff = -5
guard.cornerpush.veloff = -6
envshake.time = 5
envshake.ampl = 3
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
hitflag = MA
guardflag = LA
animtype = medium
priority = 3, Hit
pausetime = 8,8
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = 0, -6
hitsound = S22, 1
guardsound = S21, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 8
ground.velocity = -3
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 8
ground.cornerpush.veloff = -5
guard.cornerpush.veloff = -6
envshake.time = 5
envshake.ampl = 3
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
hitflag = MA
guardflag = LA
animtype = Medium
priority = 5, Hit
pausetime = 10, 10
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = 0, -46
hitsound = S22, 2
guardsound = S21, 0
ground.type = Low
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -5
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -3, -3
air.hittime = 12
envshake.time = 7
envshake.ampl = 5
ground.cornerpush.veloff = -8
guard.cornerpush.veloff = -9
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
hitflag = MA
guardflag = LA
animtype = Medium
priority = 5, Hit
pausetime = 10,10
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = 0, -10
hitsound = S22, 3
guardsound = S21, 0
ground.type = Low
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -5
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -3, -3
air.hittime = 12
envshake.time = 7
envshake.ampl = 5
ground.cornerpush.veloff = -8
guard.cornerpush.veloff = -9
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
x = 8
[State 0, VelSet]
type = VelSet
trigger1 = animelem=5
x = 0

[State 210, 0]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 35
animtype = Medium
air.animtype = Medium
fall.animtype = Medium
hitflag = MA
guardflag = MA
pausetime = 12,12
guard.sparkno = s7100
sparkno = s2220
sparkxy = 5, -60
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
fall.recover = 0
air.recover = 0
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
hitflag = MA
guardflag = LA
animtype = Hard
priority = 5, Hit
pausetime = 12,12
guard.sparkno = s7100
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
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = -10, -35
hitsound = S22, 0
guardsound = S21, 0
ground.type = High
AIR.slidetime = 6
ground.slidetime = 8
ground.hittime = 12
ground.velocity = -4
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

[State 601, 1]
type = PlaySnd
trigger1 = Time = 1
value = 20, 0
channel = 1

[State 601, Hit]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
guardflag = HA
animtype = Light
priority = 3
pausetime = 12,12
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = -10, -35
hitsound = S22, 1
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 12
ground.velocity = -4
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
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = -10, -35
hitsound = S22, 2
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
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

[State 603, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
guardflag = HA
animtype = Medium
priority = 4
pausetime = 12,12
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = -10, -35
hitsound = S22, 3
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 12
ground.velocity = -6
air.velocity = -1, -7
envshake.time = 8
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
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = -10, -35
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -9
air.velocity = -6, 6
air.fall = 1
fall.envshake.time = 20
fall.envshake.freq = 180
fall.envshake.ampl = -2
fall.envshake.phase = 90
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
channel = 1

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
guard.sparkno = s7100
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
fall.envshake.time = 20
fall.envshake.freq = 180
fall.envshake.ampl = -2
fall.envshake.phase = 90
envshake.time = 10
envshake.ampl = 5
getpower = 90,0
givepower = 60,90

[State 605, 2]
type = HitDef
trigger1 = AnimElem = 3 && Anim = 608
attr = A, NA
damage = 40
guardflag = HA
animtype = Hard
priority = 4
pausetime = 12,12
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = -10, -35
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -9
air.velocity = -15,15
air.fall = 1
fall.envshake.time = 20
fall.envshake.freq = 180
fall.envshake.ampl = -2
fall.envshake.phase = 90
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
;Callibone Breaker
;==========================================================================
[Statedef 700]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 215
sprpriority = 2

[State 700, Velocity]
type = VelSet
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
x = 2.5
;ignorehitpause = 0
;persistent = 1

[State 700, 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 20, 2
channel = 1

[State 700, 2]
type = PlaySnd
trigger1 = AnimElem = 5 
value = 0, 4
channel = 0

[State 700, 3]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
damage = 30
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = 0, -66
hitsound = S22, 2
guardsound = S21, 0
ground.type = Low
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -8
airguard.velocity = -2.7, -1.7
air.type = High
air.velocity = -1.8, -2.9
air.hittime = 15
envshake.time = 10
envshake.ampl = 5
getpower = 60,0
givepower = 40,60

[State 700, 3]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
damage = 30
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = 0, -76
hitsound = S22, 2
guardsound = S21, 0
ground.type = Low
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -8
airguard.velocity = -2.7, -1.7
air.type = High
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
;Rushing Fierce
;==========================================================================
[Statedef 710]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 216
sprpriority = 2

[State 710, Velocity]
type = VelSet
trigger1 = AnimElem = 6, > 0 && AnimElem = 7, <= 0
x = 7
;ignorehitpause = 0
;persistent = 1

[State 710, 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 20, 2
channel = 1

[State 710, 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0, 3
channel = 0

[State 710, 3]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 45
animtype = Back
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = 0, -76
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -12
airguard.velocity = -2.7, -1.7
air.type = High
air.velocity = -8, -2.9
air.hittime = 15
envshake.time = 10
envshake.ampl = 5
getpower = 90,0
givepower = 60,90

[State 710, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
;Senpuukyaku
;==========================================================================
[Statedef 720]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
sprpriority = 4
anim = 217

;[State 720, Change]
;type = StateTypeSet
;trigger1 = AnimElem = 2, >0
;statetype = A

[State 720, Velocity]
type = PosAdd
trigger1 = Time = 0
x = 9.5

[State 720, Velocity]
type = VelSet
trigger1 = AnimElem = 2, = 1
x = 3
y = -3

;[State 720, Velocity]
;type = Gravity
;trigger1 = Time >= 0 && Time <= 28
;ignorehitpause = 0
;persistent = 1

[State 720, Velocity]
type = VelAdd
trigger1 = AnimElem = 3, > 0
y = 0.35

[State 720, 2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 20, 2
channel = 1

[State 720, 2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0, 2
channel = 0

[State 720, 3]
type = HitDef
trigger1 = AnimElem = 8 
attr = S, NA
damage = 45
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
guard.sparkno = s7100
sparkno = s7000+(random%8)
sparkxy = 0, -76
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
ground.velocity = -8
airguard.velocity = -2.7, -1.7
air.type = High
air.velocity = -1.8, -2.9
air.hittime = 15
envshake.time = 10
envshake.ampl = 5
getpower = 90,0
givepower = 60,90

[State 720, Change]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 1105

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
trigger1 = AnimElem = 1
attr = S, NT
hitflag = M
getpower = 200
givepower = 100
priority = 4, Miss
sparkno = -1
guard.sparkno=-1
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
value = 0, 7
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
value = -100

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
poweradd = 0

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
;Kick Throw; Tomoe Nage
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
trigger1 = AnimElem = 1
attr = S, NT
hitflag = M
getpower = 150
givepower = 100
priority = 4, Miss
sparkno = -1
guard.sparkno=-1
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
trigger1 = AnimElem = 5
value = 0, 3
channel = 0

[State 820, SFX]
type = PlaySnd
trigger1 = AnimElem = 1
value = 28, 0
channel = 1

[State 820, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(4) < 0
edge = 25, 65

[State 820, SprPriority]
type = SprPriority
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
value = 1

[State 820, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40, 0

[State 820, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 40, -60

[State 820, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 13, -69

[State 820, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = -28, -61

[State 820, Subtract HP]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = -110

[State 820, Turn]
type = Turn
trigger1 = AnimElem = 10

[State 820, Thrown]
type = TargetState
trigger1 = AnimElem = 5
value = 826

[State 820, Finish]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 825]
type = A
movetype = H
physics = N
velset = 0,0

[State 825, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 825
;==========================================================================
[Statedef 826]
type = A
movetype = H
physics = N
velset = 6, -4
poweradd = 0

[State 826, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 826, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 826, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground
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
getpower = 200
givepower = 100
priority = 3, Miss
sparkno = -1
guard.sparkno=-1
sprpriority = -1
p1facing = IfElse (Command = "holdback", 1, -1)
p2facing = 1
p1stateno = 860
p2stateno = 865
numhits = 0
fall = 1

[State 850, 2]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52
;==========================================================================
[Statedef 860]
type = A
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 860
sprpriority = -1

[State 860, SFX]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 4
channel = 0

[State 860, SFX]
type = PlaySnd
trigger1 = AnimElem = 1
value = 28, 0
channel = 1

[State 860, Freeze]
type = PosFreeze
trigger1 = Time = [0, 40]
value = 1

[State 860, Velocity]
type = VelSet
trigger1 = Time = 40
x = -1.3
y = 0

[State 860, Velocity]
type = VelAdd
trigger1 = Time >= 41
;x = -.2
y = .4

[State 860, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(4) < 0
edge = 25, 65

[State 860, Bind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 34, 0 ;-60

[State 860, Bind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 23, -57

[State 860, Bind]
type = TargetBind
trigger1 = AnimElem = 3
pos = -15, -95

[State 860, Bind]
type = TargetBind
trigger1 = AnimElem = 4
pos = -57, -88

[State 860, Subtract HP]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = -100

[State 860, Turn]
type = Turn
trigger1 = AnimElem = 9

[State 860, Thrown]
type = TargetState
trigger1 = AnimElem = 5
value = 866

[State 860, Finish]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52

[Statedef 865]
type = A
MoveType = H
physics = N
VelSet = 0, 0

[State 865, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 865

[Statedef 866]
type = A
MoveType = H
physics = N
VelSet = 4, -6
poweradd = 0

[State 866, POS]
type = PosSet
trigger1 = Time = 0
y = 0

[State 866, Gravity]
type = VelAdd
trigger1 = 1
y = .4

[State 866, 2]
type = ChangeState
triggerall = (vel y > 0) && (pos y >= -20)
triggerall = Alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200

[State 866, 4]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100

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

[State 900, MakeDust] 
type = MakeDust
trigger1 = time >= 0
pos = -16,0
spacing = 6

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

[State 901, MakeDust] 
type = MakeDust
trigger1 = time >= 0
pos = -16,0
spacing = 6

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

[State 902, MakeDust] 
type = MakeDust
trigger1 = time >= 0
pos = -16,0
spacing = 6

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
value = 0,5
channel = 0

[State 925, PlaySnd]
type = PlaySnd
triggerall = var(4) = 2
trigger1 = AnimElem = 1
value = 0,1
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
value = 0,5
channel = 0

[State 926, PlaySnd]
type = PlaySnd
triggerall = var(4) = 2
trigger1 = AnimElem = 1
value = 0,1
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
value = 0,0
channel = 0

[State 950, End]
type = ChangeState
trigger1 = AnimTime = 0 
value = 0
ctrl = 1
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
animtype = Heavy
priority = 5, Hit
pausetime = 6, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = -10, -76
hitsound = S22, 4
numhits = 1
guardsound = S21, 0
ground.type = High
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -4, -9
airguard.velocity = -5, -8
air.type = High
air.velocity = -5, -4
fall = 1
air.fall = 1
air.hittime = 25
fall.recovery = 0
p2stateno = 999
envshake.time = 10
envshake.ampl = 5

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
animtype = Heavy
priority = 5, Hit
pausetime = 6, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = -10, -76
hitsound = S22, 4
numhits = 1
guardsound = S21, 0
ground.type = High
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -4, -9
airguard.velocity = -5, -8
air.type = High
air.velocity = -5, -4
fall = 1
air.fall = 1
air.hittime = 25
fall.recovery = 0
p2stateno = 999
envshake.time = 10
envshake.ampl = 5

[State 981, 4]
type = ChangeAnim
triggerall = Anim =2900
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
trigger1 = AnimElem = 6
value = 0, 3
channel = 0

[State 990, SFX]
type = PlaySnd
trigger1 = AnimElem = 7
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
animtype = Heavy
priority = 5, Hit
pausetime = 6, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = -10, -16
numhits = 1
hitsound = S22, 5
guardsound = S21, 0
ground.type = High
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -4, -9
airguard.velocity = -5, -8
air.type = High
air.velocity = -5, -4
air.hittime = 25
fall.recovery = 0
fall = 1
air.fall = 1
p2stateno = 999
envshake.time = 10
envshake.ampl = 5

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
projsprpriority = 7
offset = 88, -68
projedgebound = 80
projstagebound = 80
velocity = 3, 0
attr = S, SP
damage = 20, 20
animtype = Light
getpower = 0
givepower = 40,60
guardflag = MA
pausetime = 0, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -1
hitsound = S12,0
guardsound = S21, 1
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
envshake.time = 10
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
projscale=1.15,1
projsprpriority = 7
offset = 88, -68
projedgebound = 80
projstagebound = 80
velocity = 4, 0
attr = S, SP
damage = 30, 10
animtype = Medium
getpower = 0
givepower = 40,60
guardflag = MA
pausetime = 0, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -1
hitsound = S12,0
guardsound = S21, 1
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
envshake.time = 10
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
projanim = 1001
projhitanim = 1002
projscale=1.25,1
projsprpriority = 7
offset = 88, -68
projedgebound = 80
projstagebound = 80
velocity = 5, 0
attr = S, SP
damage = 40, 0
animtype = Heavy
getpower = 0
givepower = 40,60
guardflag = MA
pausetime = 0, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -1
hitsound = S12,0
guardsound = S21, 1
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
envshake.time = 10
envshake.ampl = 6

[State 1002, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
;Shakunetsu Hadouken (Light, Medium, Heavy)
;==========================================================================
[Statedef 1050]
type = S
movetype = A
physics = S
juggle = 1
poweradd = -200
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
projanim = 1050
projhitanim = 1051
projsprpriority = 7
offset = 88, -68
projedgebound = 120
projstagebound = 120
velocity = 4, 0
attr = S, SP
damage = 50, 30
animtype = Light
getpower = 0
givepower = 40,60
guardflag = MA
pausetime = 0, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -1
hitsound = S12,1
guardsound = S21, 1
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -4,-2
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
fall = 1
air.fall = 1
palfx.time = 30
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0 
envshake.time = 10
envshake.ampl = 6

[State 0, Helper]
type = Helper
triggerall = ProjHit&&P2Stateno =5000||P2stateno =5020
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

[State 1050, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 1051]
type = S
movetype = A
physics = S
juggle = 1
poweradd = -200
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
projanim = 1050
projhitanim = 1051
projsprpriority = 7
offset = 88, -68
projedgebound = 120
projstagebound = 120
velocity = 4.5, 0
attr = S, SP
damage = 60, 20
animtype = Medium
getpower = 0
givepower = 40,60
guardflag = MA
pausetime = 0, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -1
hitsound = S12,1
guardsound = S21, 1
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -4,-2
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
fall = 1
air.fall = 1
palfx.time = 30
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0 
envshake.time = 10
envshake.ampl = 6

[State 0, Helper]
type = Helper
triggerall = ProjHit&&P2Stateno =5000||P2stateno =5020
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

[State 1051, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 1052]
type = S
movetype = A
physics = S
juggle = 1
poweradd = -200
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
projanim = 1050
projhitanim = 1051
projsprpriority = 7
offset = 88, -68
projedgebound = 120
projstagebound = 120
velocity = 5, 0
attr = S, SP
damage = 70, 10
animtype = Heavy
getpower = 0
givepower = 40,60
guardflag = MA
pausetime = 0, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -1
hitsound = S12,1
guardsound = S21, 1
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -4,-2
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
fall = 1
air.fall = 1
palfx.time = 30
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0 
envshake.time = 10
envshake.ampl = 6

[State 0, Helper]
type = Helper
triggerall = ProjHit&&P2Stateno =5000||P2stateno =5020
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

[State 1052, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
;Fake Hadouken
;==========================================================================
[Statedef 1025]
type = S
physics = S
juggle = 1
poweradd = 0
ctrl = 0
velset = 0, 0
anim = 1025
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

[State 1025, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2
channel = 0

[State 1025, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
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

[State 0, Explod]
type = Explod
trigger1 =animelem=1
anim =1110
ID = 1110
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 22
pausemovetime = 0
scale = .45,.5
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0

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
damage = 40, 0
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 1
ground.type = High
ground.hittime = 15
ground.velocity = -4
air.velocity = -4, -3
air.hittime = 15
envshake.time = 10
envshake.ampl = 5
getpower = 30,0
givepower = 20,30

[State 1100, 3]
type = HitDef
trigger1 = AnimElem = 7
attr = A, SA
damage = 40, 10
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 1
ground.type = High
ground.hittime = 15
ground.velocity = -4, -4.5
air.velocity = -4, -4.5
air.hittime = 15
fall = 1
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

[State 0, Explod]
type = Explod
trigger1 =animelem=1
anim =1110
ID = 1110
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 42
pausemovetime = 0
scale = .45,.5
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0

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
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
attr = A, SA
damage = 30, 0
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 1
ground.type = High
ground.hittime = 15
ground.velocity = -5
air.velocity = -4, -2
air.hittime = 15
envshake.time = 10
envshake.ampl = 5
getpower = 30,0
givepower = 20,30

[State 1101, 3]
type = HitDef
trigger1 = AnimElem = 19
attr = A, SA
damage = 30, 0
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 1
ground.type = High
ground.hittime = 15
ground.velocity = -4, -4.5
air.velocity = -4, -4.5
air.hittime = 15
fall = 1
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
poweradd = -200

[State 0, Explod]
type = Explod
trigger1 =animelem=1
anim =1110
ID = 1110
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 52
pausemovetime = 0
scale = .45,.5
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0

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

[State 1102, Velocity]
type = PosAdd
trigger1 = Time = 0
x = 9.562

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
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
trigger3 = AnimElem = 19
attr = A, SA
damage = 30, 5
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 1
ground.type = High
ground.hittime = 15
ground.velocity = -5
air.velocity = -4, -2.5
air.hittime = 15
envshake.time = 10
envshake.ampl = 5
getpower = 0,0
givepower = 20,30

[State 1102, 3]
type = HitDef
trigger1 = AnimElem = 25
attr = A, SA
damage = 30, 5
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 1
ground.type = High
ground.hittime = 15
ground.velocity = -4, -4.5
air.velocity = -4, -4.5
air.hittime = 15
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower = 0,0
givepower = 20,30

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

;---------------------------------------------------------------------------

;==========================================================================
;Kuuchuu Tatsumakisenpuukyaku
;==========================================================================
[Statedef 1150]
type = A
movetype = A
physics = A
ctrl = 0
juggle = 1
anim = 1150
sprpriority = 4

[State 0, Explod]
type = Explod
trigger1 =animelem=1
anim =1110
ID = 1110
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = .45,.5
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
;ignorehitpause =

[State 1150, Velocity]
type = VelAdd
trigger1 = Time = 0
x = ifelse(Vel X < 0, -1, 1)
y = -2

[State 1150, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 3
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
damage = 70, 10
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 1
ground.type = High
ground.hittime = 15
ground.velocity = -4, -4.5
air.velocity = -4, -4.5
air.hittime = 15
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower = 90,0
givepower = 60,90

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
juggle = 1
anim = 1151
sprpriority = 4

[State 0, Explod]
type = Explod
trigger1 =animelem=1
anim =1110
ID = 1110
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = .45,.5
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
;ignorehitpause =

[State 1151, Velocity]
type = VelAdd
trigger1 = Time = 0
x = ifelse(Vel X < 0, -1, 1)
y = -2

[State 1151, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 3
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
triggerall = UniqHitCount < 1
trigger1 = AnimElem = 5
trigger2 = AnimElem = 11
trigger3 = AnimElem = 17
attr = A, SA
damage = 80, 0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 1
ground.type = High
ground.hittime = 15
ground.velocity = -4, -4.5
air.velocity = -4, -4.5
air.hittime = 15
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower = 90,0
givepower = 60,90

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
poweradd = -200

[State 0, Explod]
type = Explod
trigger1 =animelem=1
anim =1110
ID = 1110
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = .45,.5
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
;ignorehitpause =

[State 1152, Velocity]
type = VelAdd
trigger1 = Time = 0
x = ifelse(Vel X < 0, -1, 1)
y = -2

[State 1152, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 3
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
triggerall = UniqHitCount < 1
trigger1 = AnimElem = 5
trigger2 = AnimElem = 11
trigger3 = AnimElem = 17
trigger4 = AnimElem = 23
attr = A, SA
damage = 100, 30
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 1
ground.type = High
ground.hittime = 15
ground.velocity = -4, -4.5
air.velocity = -4, -4.5
air.hittime = 15
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower = 0,0
givepower = 60,90

[State 1152, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1

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

[State 0, Explod]
type = Explod
trigger1 =animelem=4
anim =1210
ID = 1210
pos = 20,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .7,.7
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
;ignorehitpause =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = ANIMELEM=4
value = S70,0
VOLUME=255

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

[State 1200, 3]
type = HitDef
trigger1 = TIME=0
attr = S, SA
damage = 35, 5
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 6
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -70
hitsound = S12, 2
guardsound = S21, 1
ground.type = High
ground.hittime = 2
ground.velocity = -4, -10
air.velocity = -4, -10
air.hittime = 2
fall = 1
air.fall = 1
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
velset = 3.01, -8 ;6.01, -6
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
TRIGGER1=TIME=0
attr = A, SA
damage = 35, 5
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -90
hitsound = S12, 2
guardsound = S21, 1
ground.type = High
ground.hittime = 2
ground.velocity = -3, -10
air.velocity = -3, -10
air.hittime = 2
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
ground.cornerpush.veloff = -20
guard.cornerpush.veloff = -12
getpower = 30,0
givepower = 20,30

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
juggle = 1
ctrl = 0
anim = 1200
sprpriority = 4
velset = 0,0

[State 0, Explod]
type = Explod
trigger1 =animelem=4
anim =1210
ID = 1210
pos = 20,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .7,.7
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
;ignorehitpause =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = ANIMELEM=4
value = S70,0
VOLUME=255

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

[State 1202, 3]
type = HitDef
trigger1 = AnimElem = 3 && HitCount < 2
trigger2 = AnimElem = 4 && HitCount < 2
attr = S, SA
damage = 40, 0
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = -10, -88
hitsound = S12, 2
guardsound = S21, 1
ground.type = High
ground.hittime = 10
ground.velocity = -3, -10
air.velocity = -3, -10
air.hittime = 10
fall = 1
air.fall = 1
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
velset = 5.01, -10 ;8.01, -8
juggle = 1

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
trigger1 = AnimElem = 4 && HitCount < 2
attr = A, SA
damage = 40, 0
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = -10, -110
hitsound = S12, 2
guardsound = S21, 1
ground.type = High
ground.hittime = 2
ground.velocity = -3, -10
air.velocity = -3, -10
air.hittime = 2
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
ground.cornerpush.veloff = -26
guard.cornerpush.veloff = -12
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
juggle = 1
ctrl = 0
anim = 1200
sprpriority = 4
velset = 0,0
poweradd = -200

[State 0, Explod]
type = Explod
trigger1 =animelem=4
anim =1210
ID = 1210
pos = 20,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .7,.7
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
;ignorehitpause =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = ANIMELEM=4
value = S70,0
VOLUME=255

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
trigger1 = AnimElem = 3 && HitCount < 2
trigger2 = AnimElem = 4 && HitCount < 2
attr = S, SA
damage = 30, 10
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = -10, -98
hitsound = S12, 2
guardsound = S21, 1
ground.type = High
ground.hittime = 10
ground.velocity = -3, -10
air.velocity = -3, -10
air.hittime = 10
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower = 0,0
givepower = 20,30

[State 1204, 4]
type = ChangeState
trigger1 = AnimElem = 4
value = 1205
;==========================================================================
[Statedef 1205]
type = A
movetype = A
physics = A
velset = 7.01, -12 ; ;10.01, -10
juggle = 1

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
trigger1 = animelem=4,1
trigger2 = animelem=4,2
attr = A, SA
damage = 30, 10
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 6
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = -10, -120
hitsound = S12, 2
guardsound = S21, 1
ground.type = High
ground.hittime = 2
ground.velocity = -3, -12
air.velocity = -3, -12
air.hittime = 2
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
air.cornerpush.veloff = -30
guard.cornerpush.veloff = -12
getpower = 0,0
givepower = 20,30

[State 1205, 4]
type = ChangeAnim
triggerall = Anim = 1200
trigger1 = Vel Y > 0
value = 1201

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
;Kuuchuu Hadouken (Light, Medium, Heavy)
;==========================================================================
[Statedef 1300]
type = A
movetype = A
physics = A
juggle = 1
poweradd = -50
ctrl = 0
anim = 1300
sprpriority = 4

[State 1300, Velocity]
type = VelMul
trigger1 = Time = [1,35]
x = 0.95
y = 0.4

[State 1300, Velocity]
type = VelAdd
trigger1 = Time > 35
x = ifElse(Vel X > 0, .3,IfElse(Vel X < 0, -.3, 0))
y = 0.4

[State 1300, Position]
type = PosSet
trigger1 = Pos Y >= 25
y = 25

[State 1300, Veloctiy]
type = VelSet
trigger1 = Time > 0 && Pos Y >= -5
x = 0
y = 0

[State 1300, 2]
type = Projectile
trigger1 = AnimElem = 3
projID = 1000
projanim = 1001
projscale=1.25,1
projhitanim = 1002
projsprpriority = 7
offset = 52, -90
velocity = 3, 0
animtype = Light
attr = S, SP
damage = 30, 5
getpower = 0
givepower = 40,60
guardflag = MA
pausetime = 0, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -1
hitsound = S12,0
guardsound = S21, 1
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 1
envshake.time = 10
envshake.ampl = 6

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0
channel = 0

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,0
channel = 1

[State 1300, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1
;==========================================================================
[Statedef 1301]
type = A
movetype = A
physics = A
juggle = 1
poweradd = -50
ctrl = 0
anim = 1300
sprpriority = 4

[State 1301, Velocity]
type = VelMul
trigger1 = Time = [1,35]
x = 0.95
y = 0.4

[State 1301, Velocity]
type = VelAdd
trigger1 = Time > 35
x = ifElse(Vel X > 0, .3,IfElse(Vel X < 0, -.3, 0))
y = 0.4

[State 1301, Position]
type = PosSet
trigger1 = Pos Y >= 25
y = 25

[State 1301, Veloctiy]
type = VelSet
trigger1 = Time > 0 && Pos Y >= -5
x = 0
y = 0

[State 1301, 2]
type = Projectile
trigger1 = AnimElem = 3
projID = 1000
projanim = 1001
projhitanim = 1002
projscale=1.25,1
projsprpriority = 7
offset = 52, -90
velocity = 4, 0
animtype = Medium
attr = S, SP
damage = 32, 5
getpower = 0
givepower = 40,60
guardflag = MA
pausetime = 0, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -1
hitsound = S12,0
guardsound = S21, 1
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5, -5.5
air.velocity = -8, -5.5
air.juggle = 1
envshake.time = 10
envshake.ampl = 6

[State 1301, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0
channel = 0

[State 1301, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,0
channel = 1

[State 1301, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1
;==========================================================================
[Statedef 1302]
type = A
movetype = A
physics = A
juggle = 1
poweradd = -50
ctrl = 0
anim = 1300
sprpriority = 4

[State 1302, Velocity]
type = VelMul
trigger1 = Time = [1,35]
x = 0.95
y = 0.4

[State 1302, Velocity]
type = VelAdd
trigger1 = Time > 35
x = ifElse(Vel X > 0, .3,IfElse(Vel X < 0, -.3, 0))
y = 0.4

[State 1302, Position]
type = PosSet
trigger1 = Pos Y >= 25
y = 25

[State 1302, Veloctiy]
type = VelSet
trigger1 = Time > 0 && Pos Y >= -5
x = 0
y = 0

[State 1302, 2]
type = Projectile
trigger1 = AnimElem = 3
projID = 1000
projanim = 1001
projhitanim = 1002
projscale=1.25,1
projsprpriority = 7
offset = 52, -90
velocity = 5, 0
animtype = Heavy
attr = S, SP
damage = 34, 5
getpower = 0
givepower = 40,60
guardflag = MA
pausetime = 0, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -1
hitsound = S12,0
guardsound = S21, 1
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5, -5.5
air.velocity = -8, -5.5
air.juggle = 1
envshake.time = 10
envshake.ampl = 6

[State 1302, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0
channel = 0

[State 1302, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,0
channel = 1

[State 1302, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1

;==========================================================================
[Statedef 1500]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1500
sprpriority = 4

[State 1302, Veloctiy]
type = VelSet
trigger1 = Time =0
x = 14

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

[State 1204, 3]
type = HitDef
trigger1 = time=0
attr = S, SA
damage = 60,10
animtype = diagup
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = -20, -68
hitsound = S22, 5
guardsound = S21, 1
ground.type = High
ground.slidetime = 50
ground.hittime  = 40
ground.velocity = -20,-8
air.velocity = -20,-8
air.hittime = 30
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
p2stateno = 9075
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
envshake.time = 10
envshake.ampl = 5
getpower = 90,0
givepower = 60,90

[State 1302, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0
channel = 1

[State 1302, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0
channel = 1

[State 1302, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,1+(random%8)
channel = 1

[State 1302, Change]
type = ChangeState
trigger1 = Animelem=11
value = 0
ctrl = 1

;==========================================================================
[Statedef 1501]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1500
sprpriority = 4

[State 1302, Veloctiy]
type = VelSet
trigger1 = Time =0
x = 16

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

[State 1204, 3]
type = HitDef
trigger1 = time=0
attr = S, SA
damage = 70,0
animtype = diagup
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = -20, -68
hitsound = S22, 5
guardsound = S21, 1
ground.type = High
ground.slidetime = 50
ground.hittime  = 40
ground.velocity = -20,-8
air.velocity = -20,-8
air.hittime = 30
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
p2stateno = 9075
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
envshake.time = 10
envshake.ampl = 5
getpower = 90,0
givepower = 60,90

[State 1302, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0
channel = 1

[State 1302, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,1+(random%8)
channel = 1

[State 1302, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 20,3

[State 1302, Change]
type = ChangeState
trigger1 = Animelem=11
value = 0
ctrl = 1
;==========================================================================
[Statedef 1502]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1500
sprpriority = 4
poweradd = -200

[State 1302, Veloctiy]
type = VelSet
trigger1 = Time =0
x = 18

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

[State 1204, 3]
type = HitDef
trigger1 = time=0
attr = S, SA
damage = 90,20
animtype = diagup
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = -20, -68
hitsound = S22, 5
guardsound = S21, 1
ground.type = High
ground.slidetime = 50
ground.hittime  = 40
ground.velocity = -20,-8
air.velocity = -20,-8
air.hittime = 30
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
p2stateno = 9075
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
envshake.time = 10
envshake.ampl = 5
getpower = 0,0
givepower = 60,90

[State 1302, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0
channel = 1

[State 1302, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,1+(random%8)
channel = 1

[State 1302, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 20,3

[State 1302, Change]
type = ChangeState
trigger1 = Animelem=11
value = 0
ctrl = 1
;==========================================================================
[Statedef 1600]
type = A
movetype = A
physics = N
juggle = 1
ctrl = 0
anim = 1600
sprpriority = 4

[State 1302, Veloctiy]
type = VelSet
trigger1 = animelem>=2
x = 8
y = 5

[State 0, AfterImage]
type = AfterImage
trigger1 =animelem=2
time = 999
length = 16
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 4
trans = add ;"none","add1","sub"
;ignorehitpause =
;persistent =


[State 1204, 3]
type = HitDef
trigger1 = hitcount < 2
trigger1 = moveguarded < 2
attr = A, SA
damage = 35, 1
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -48
hitsound = S12, 2
guardsound = S21, 1
ground.type = High
ground.hittime = 10
ground.velocity = -2, 8
air.velocity = -2, 8
air.hittime = 10
fall = 1
air.fall = 1
fall.recover=0
envshake.time = 10
envshake.ampl = 5
getpower = 60,0
givepower = 40


[State 1302, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0+(random%9)
channel = 1

[State 1302, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 20,2

[State 3052, Change]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0 ;
value = 52
ctrl = 1
;==========================================================================
[Statedef 1601]
type = A
movetype = A
physics = N
juggle = 1
ctrl = 0
anim = 1610
sprpriority = 4

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 10

[State 1302, Veloctiy]
type = VelSet
trigger1 = animelem>=2
x = 9
y = 6
[State 0, AfterImage]
type = AfterImage
trigger1 =animelem=2
time = 999
length = 16
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 4
trans = add ;"none","add1","sub"
;ignorehitpause =
;persistent =

[State 1204, 3]
type = HitDef
trigger1 = hitcount < 3
trigger1 = moveguarded < 3
attr = A, SA
damage = 30, 0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -48
hitsound = S12, 2
guardsound = S21, 1
ground.type = High
ground.hittime = 10
ground.velocity = -4, 8
air.velocity = -4, 8
air.hittime = 10
fall = 1
air.fall = 1
fall.recover=0
envshake.time = 10
envshake.ampl = 5
getpower = 30,0
givepower = 20


[State 1302, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0+(random%9)

[State 1302, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 20,2
channel = 1

[State 3052, Change]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0 ;
value = 52
ctrl = 1
;==========================================================================
[Statedef 1602]
type = A
movetype = A
physics = A
juggle = 1
ctrl = 0
anim = 1615
sprpriority = 4
poweradd = -200

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 25

[State 1302, Veloctiy]
type = VelSet
trigger1 = animelem=2
x = 10
y = 8
[State 0, AfterImage]
type = AfterImage
trigger1 =animelem=2
time = 999
length = 16
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 4
trans = add ;"none","add1","sub"
;ignorehitpause =
;persistent =

[State 1204, 3]
type = HitDef
trigger1 = hitcount < 4
trigger1 = moveguarded < 4
attr = S, SA
damage = 30,3
animtype = Hard
guardflag = MAL
hitflag = MAF
priority = 3, Hit
pausetime = 8, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -48
hitsound = S12, 2
guardsound = S21, 1
ground.type = High
ground.hittime = 10
ground.velocity = -8, 8
air.velocity = -8, 8
air.hittime = 10
fall = 1
air.fall = 1
fall.recover=0
envshake.time = 10
envshake.ampl = 5
getpower = 30,0
givepower = 20

[State 1302, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0+(random%9)

[State 1302, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 20,2
channel = 1

[State 3052, Change]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0 ;
value = 52
ctrl = 1
;==========================================================================
;==========================================================================
[Statedef 1605]
type = A
movetype = A
physics = A
juggle = 1
poweradd = 0
ctrl = 0
anim = 1605
sprpriority = 4

[State 1302, Veloctiy]
type = VelSet
trigger1 = animelem=2
x = 8
y = 4

[State 3052, Change]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0 ;
value = 52
ctrl = 1
;==========================================================================
;ES Special Attacks
;==========================================================================
;ES Hadouken
;==========================================================================
[Statedef 2000]
type = S
movetype = A
physics = S
juggle = 1
poweradd = -200
ctrl = 0
velset = 0, 0
anim = 2000
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
value = 0,4
channel = 0

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 15
value = 0,3
channel = 0

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 16
value = 4,0
channel = 1

[State 2000, 2]
type = Projectile
trigger1 = AnimElem = 5
projID = 2000
projanim = 1001
projhitanim = 1002
projscale=1.25,1
projsprpriority = 7
projpriority = 4
offset = 88, -68
velocity = 4, 0
attr = S, SP
damage = 30, 10
animtype = Heavy
getpower = 0
givepower = 40,60
guardflag = MA
pausetime = 0, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -1
hitsound = S12,0
guardsound = S21, 1
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
envshake.time = 10
envshake.ampl = 6
[State 2000, 2]
type = Projectile
trigger1 = AnimElem = 16
projID = 2000
projanim = 1001
projhitanim = 1002
projscale=1.25,1
projsprpriority = 7
projpriority = 4
offset = 88, -68
velocity = 5, 0
attr = S, SP
damage = 30, 10
animtype = Heavy
getpower = 0
givepower = 40,60
guardflag = MA
pausetime = 0, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -1
hitsound = S12,0
guardsound = S21, 1
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8, -2
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
fall = 1
envshake.time = 10
envshake.ampl = 6

[State 2000, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
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
poweradd = -330
sprpriority = 4

[State 2100, PalFXWiz] ;Generated by MEE PalFX Editor
type = PalFX
trigger1 = AnimElem = 1
time = 30
add = 0,0,-255
mul = 256,208,0
sinadd = 72,64,0,3
invertall = 0
color = 256
;ignorehitpause = 0
;persistent = 1

[State 2100, Velocity]
type = PosAdd
trigger1 = Time = 0
x = 9.5

[State 2100, Velocity]
type = VelSet
trigger1 = AnimElem = 1, = 2
x = 0
y = -6

[State 2100, Velocity]
type = VelSet
trigger1 = Time > 7 && Time < 58;AnimElem = 4
x = ifelse(command = "holdfwd",3,ifelse(command = "holdback",-3,0))
y = ifelse(command = "holddown",3,ifelse(command = "holdup",-3,0))

[State 2100, PosSet]
type = PosSet
trigger1 = Anim = 2100 && Pos Y >= 0
y = 0
;ignorehitpause =
;persistent =

;[State 2100, Vel]
;type = VelSet
;trigger1 = Time > 0 && Pos Y >= -5 && Time >= 7
;x = 0
;y = 0
;ignorehitpause = 0
;persistent = 1

[State 2100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 2
channel = 0

[State 2100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
trigger3 = AnimElem = 18
trigger4 = AnimElem = 24
trigger5 = AnimElem = 30
trigger6 = AnimElem = 36
value = 20,3
channel = 1

[State 2100, 3]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 7
trigger3 = AnimElem = 10
trigger4 = AnimElem = 13
trigger5 = AnimElem = 16
trigger6 = AnimElem = 19
trigger7 = AnimElem = 22
trigger8 = AnimElem = 25
trigger9 = AnimElem = 28
attr = A, SA
damage = 20, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 2, 6
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 1
ground.type = High
ground.hittime = 15
ground.velocity = -0.5, -3
air.velocity = -0.5, -3
air.hittime = 15
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5

[State 2100, 3]
type = HitDef
trigger1 = AnimElem = 31
trigger2 = AnimElem = 34
attr = A, SA
damage = 35, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 2, 6
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S22, 5
guardsound = S21, 1
ground.type = High
ground.hittime = 15
ground.velocity = -7, -3
air.velocity = -7, -3
air.hittime = 15
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5

[State 2100, Velocity]
type = VelAdd
trigger1 = AnimElem = 38, > 0
y = 0.35

[State 2100, Change]
type = ChangeState
trigger1 = ((AnimElem = 38, > 0) && (Vel Y > 0) && (Pos Y >= 0))
value = 1105
;==========================================================================
;ES Shouryuuken
;==========================================================================
[Statedef 2200]
type = S
movetype = A
physics = S
juggle = 1
poweradd = 0
ctrl = 0
anim = 2200
sprpriority = 4
velset = 0,0


[State 2200, VelSet]
type = VelSet
trigger1 = AnimElem = 1, > 0
x = 7

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
trigger1 = AnimElem = 3
attr = S, SA
damage = 20, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -48
hitsound = S12, 2
guardsound = S21, 1
ground.type = Low
ground.hittime = 10
ground.velocity = -2, -5.5
air.velocity = -2, -5.5
air.hittime = 10
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5

[State 2200, 3]
type = HitDef
trigger1 = AnimElem = 4 && HitCount < 2
attr = S, SA
damage = 30, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 12
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -48
hitsound = S12, 2
guardsound = S21, 1
ground.type = High
ground.hittime = 10
ground.velocity = -2, -5.5
air.velocity = -2, -5.5
air.hittime = 10
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5

[State 2200, 4]
type = ChangeState
trigger1 = AnimElem = 4
value = 2201
;==========================================================================
[Statedef 2201]
type = A
movetype = A
physics = A
velset = 5, -10
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
trigger1 = AnimElem = 4 && HitCount < 2
attr = A, SA
damage = 40, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 7
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -50
hitsound = S12, 2
guardsound = S21, 1
ground.type = High
ground.hittime = 2
ground.velocity = -3, -10
air.velocity = -3, -10
air.hittime = 2
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5

[State 2201, 4]
type = ChangeAnim
triggerall = Anim = 2200
trigger1 = Vel Y > 0
value = 1201

[State 2201, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 1206
;==========================================================================
;ES Kuuchuu Hadouken
;==========================================================================
[Statedef 2300]
type = A
movetype = A
physics = A
juggle = 1
poweradd = -100
ctrl = 0
anim = 1300
sprpriority = 4

[State 2300, Velocity]
type = VelMul
trigger1 = Time = [1,35]
x = 0.95
y = 0.4

[State 2300, Velocity]
type = VelAdd
trigger1 = Time > 35
x = ifElse(Vel X = .3, 0,IfElse(Vel X < 0, -.3, .3))
y = 0.4

[State 2300, Position]
type = PosSet
trigger1 = Pos Y >= 25
y = 25

[State 2300, Veloctiy]
type = VelSet
trigger1 = Time > 0 && Pos Y >= -5
x = 0
y = 0

[State 2300, 2]
type = Projectile
trigger1 = AnimElem = 3
projID = 1000
projanim = 2051
projhitanim = 1002
projsprpriority = 7
projpriority = 4
;projscale = 1.2, 1.2
offset = 52, -90
velocity = 5, 0
animtype = Heavy
attr = S, SP
damage = 30, 10
getpower = 0
givepower = 40,60
guardflag = MA
pausetime = 8, 10
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -15
hitsound = S12,0
guardsound = S21, 1
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5, -5.5
air.velocity = -8, -5.5
air.juggle = 1
fall = 1
envshake.time = 10
envshake.ampl = 6

[State 2300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0
channel = 0

[State 2300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,0
channel = 1

[State 2300, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1
;==========================================================================
;Guard Crush (Callibreaker)
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

[State 2700, Velocity]
type = VelSet
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
x = 2.5
;ignorehitpause = 0
;persistent = 1

[State 2700, SFX]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0, 4
channel = 0

[State 2700, SFX]
type = PlaySnd
trigger1 = AnimElem = 6
value = 20, 3
channel = 1

[State 2700, Hit]
type = HitDef
trigger1 = AnimElem = 7
ID = 1
attr = S, SA
damage = 80, 0
animtype = Heavy
hitflag = MAF
getpower = 0
givepower = 60,90
priority = 2, Hit
pausetime = 8, 8
guard.sparkno = s7105
sparkno = s7010+(random%8)
sparkxy = 0, -70
hitsound = S12, 2
guardsound = S21, 1
ground.type = Low
ground.hittime = 12
ground.velocity = -1
air.velocity = -1, -20
air.type = High
air.hittime = 12
air.fall = 1
p2stateno = ifelse(P2StateType = A,5050,5400)
envshake.time = 10
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

[State 4150, VarAdd]
type = VarSet
trigger1 = Time = 0
v = 12
value = 0

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
trigger1 = (AnimTime = 0) || (enemy, MoveHit = 1)
channel = 1

[State 5300, Change]
type = ChangeState
trigger1 = Time = 300
value = 0
ctrl = 1

;==========================================================================
;EX SUPER Moves
;==========================================================================
;EX Shinkuu Hadouken
;==========================================================================
[Statedef 3000]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 3000
poweradd = 0
sprpriority = 4

[State 3000, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 3000, SuperPause]
type = SuperPause
trigger1 = AnimElem = 3
pos = 8, -80
anim = -1
sound = S40, 1
time = 45
movetime = 29
poweradd = -1000

[State 3000, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

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
trigger1 = AnimElem = 3
value = 2,0
channel = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 24,3
channel = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4,0
channel = 1

[State 3000, 2]
type = Projectile
trigger1 = AnimElem = 7
projID = 3000
projanim = 3001
projhitanim = 3002
projsprpriority = 5
projpriority = 6
projmisstime = 0
projhits = 3
animtype = Medium
offset = 92, -72
velocity = 4, 0
attr = S, HP
damage = 50, 5
getpower = 0
givepower = 40
guardflag = MA
pausetime = 3, 5
sparkno = s7020+(random%8)
guard.sparkno=s7105
sparkxy = 0, -1
hitsound = S12,0
guardsound = S21, 2
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
air.velocity = -8, -2
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 1
air.fall = 1

[State 3000, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 3001]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 3000
poweradd = 0
sprpriority = 4

[State 3001, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 3001, SuperPause]
type = SuperPause
trigger1 = AnimElem = 3
pos = 8, -80
anim = -1
sound = S40, 1
time = 45
movetime = 29
poweradd = -2000

[State 3001, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 3001, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 3001, Super4]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 2

[State 3001, Super5]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0 && Time < 30
value2 = C, NA
time = 1

[State 3001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 3001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,0
channel = 0

[State 3001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 24,3
channel = 0

[State 3001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4,0
channel = 1

[State 3001, 2]
type = Projectile
trigger1 = AnimElem = 7
projID = 3000
projanim = 3001
projhitanim = 3002
projsprpriority = 5
projpriority = 6
projmisstime = 0
projhits = 4
offset = 92, -72
velocity = 5, 0
animtype = Hard
attr = S, HP
damage = 52, 5
getpower = 0
givepower = 40
guardflag = MA
pausetime = 3, 5
sparkno = s7020+(random%8)
guard.sparkno=s7105
sparkxy = 0, -1
hitsound = S12,0
guardsound = S21, 2
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
air.velocity = -8, -2
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 1
air.fall = 1
fall = 1

[State 3001, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
[Statedef 3002]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 4200
poweradd = 0
sprpriority = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem=5
value = S8,1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 3
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 65
;ignorehitpause =
;persistent =

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = 60
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
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
supermovetime = 60
pausemovetime =  60

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 1
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

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
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
supermovetime = 9999
pausemovetime =  9999

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6032
anim =6032
pos = -40,0
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

[State 3002, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -14,-68
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 3002, SuperPause]
type = SuperPause
trigger1 = AnimElem = 3
pos = 8, -80
anim = -1
sound = S40,1
movetime = 29
time = 45
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
trigger1 = AnimElem = 3
value = 2,0
channel = 0

[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 24,3
channel = 0

[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4,0
channel = 1

[State xxx, Explod]
type = Explod
trigger1 = AnimElem = 6
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

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 4203
pos = 72, -62
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
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = S8,1

[State 3002, 2]
type = Projectile
TRIGGERALL=ENEMY,BACKEDGEBODYDIST>=100
trigger1 = AnimElem = 7
projID = 4201
projanim = 4201
projsprpriority = 6
projpriority = 6
projremovetime=51
projhits = 14
PROJMISS = 14
projscale=.15,.15
offset = 77, -72
velocity = 0, 0
attr = S, HP
damage = 17,3
getpower = 0
givepower = 20
hitflag=MAFD
guardflag = MAL
pausetime = 4,2
hitsound = S12,0
guardsound = S21, 2
sparkxy=-1
sparkno=-1
guard.sparkno=-1
ground.type = High
ground.slidetime = 30
ground.hittime = 20
ground.velocity = -8,-1
air.velocity = -8, -2
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 1
fall = 1
air.fall = 1
AIR.RECOVER=0
p2stateno = 9040
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
envshake.time = 10
envshake.ampl = 6

[State 3002, 2]
type = Projectile
TRIGGERALL=ENEMY,BACKEDGEBODYDIST<=99
trigger1 = AnimElem = 7
projID = 4201
projanim = 4201
projsprpriority = 6
projpriority = 6
projremovetime=51
projhits = 14
PROJMISS = 14
projscale=.15,.15
offset = 77, -72
velocity = 0, 0
attr = S, HP
damage = 17,3
getpower = 0
givepower = 20
hitflag=MAFD
guardflag = MAL
pausetime = 4,2
hitsound = S12,0
guardsound = S21, 2
sparkxy=-1
sparkno=-1
guard.sparkno=-1
ground.type = High
ANIMTYPE=DIAGUP
ground.slidetime = 30
ground.hittime = 20
ground.velocity = -8,-1
air.velocity = -8, -2
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 1
fall = 1
air.fall = 1
AIR.RECOVER=0
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
envshake.time = 10
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
anim = 7105
ID =7000
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

[State 3002, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==========================================================================
;EX Kuuchuu Shinkuu Hadouken
;==========================================================================
[Statedef 3050]
type = A
movetype = A
physics = A
juggle = 1
poweradd = 0
ctrl = 0
anim = 1300
sprpriority = 4

[State 3050, Width]
type = Width
trigger1 = AnimElem = 2, >= 0
value = 15, 0

[State 3050, SuperPause]
type = SuperPause
trigger1 = AnimElem = 2
pos = -21, -85
anim = -1
sound = S40, 1
time = 45
movetime = 2
poweradd = -1000

[State 3050, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 3050, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 3050, Super4]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 2

[State 3050, Super5]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0 && Time < 30
value2 = C, NA
time = 1

[State 3050, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 3050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,0
channel = 0

[State 3050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2,5
value = 24,3
channel = 0

[State 3050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,0
channel = 1

[State 3050, Velocity]
type = VelMul
trigger1 = Time = [1,35]
x = 0.95
y = 0.4

[State 3050, Velocity]
type = VelAdd
trigger1 = Time > 35
x = ifElse(Vel X = .3, 0,IfElse(Vel X < 0, -.3, .3))
y = 0.4

[State 3050, Position]
type = PosSet
trigger1 = Pos Y >= 25
y = 25

[State 3050, Veloctiy]
type = VelSet
trigger1 = Time > 0 && Pos Y >= -5
x = 0
y = 0

[State 3050, 2]
type = Projectile
trigger1 = AnimElem = 3
projID = 3000
projanim = 3001
projhitanim = 3002
projsprpriority = 5
projpriority = 6
projmisstime = 0
projhits = 3
animtype = Medium
attr = S, HP
damage = 50, 5
offset = 52, -90
velocity = 4, 0
animtype = Heavy
getpower = 0
givepower = 40
guardflag = MA
pausetime = 3, 5
sparkno = s7020+(random%8)
guard.sparkno=s7100
sparkxy = 0, -1
hitsound = S12,0
guardsound = S21, 2
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5, -5.5
air.velocity = -8, -5.5
air.juggle = 1
air.fall = 1

[State 3050, Change]
type = ChangeState
trigger1 = AnimTime = 0  ;Vel Y > 0 && Pos Y >= 0 ;
value = 51
ctrl = 1
;==========================================================================
[Statedef 3051]
type = A
movetype = A
physics = A
juggle = 1
poweradd = 0
ctrl = 0
anim = 1300
sprpriority = 4

[State 3051, Width]
type = Width
trigger1 = AnimElem = 2, >= 0
value = 15, 0

[State 3051, SuperPause]
type = SuperPause
trigger1 = AnimElem = 2
pos = -21, -85
anim = -1
sound = S40, 1
time = 45
movetime = 2
poweradd = -2000

[State 3051, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 3051, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 3051, Super4]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 2

[State 3051, Super5]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0 && Time < 30
value2 = C, NA
time = 1

[State 3051, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 3051, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,0
channel = 0

[State 3051, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2,5
value = 24,3
channel = 0

[State 3051, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,0
channel = 1

[State 3051, Velocity]
type = VelMul
trigger1 = Time = [1,35]
x = 0.95
y = 0.4

[State 3051, Velocity]
type = VelAdd
trigger1 = Time > 35
x = ifElse(Vel X = .3, 0,IfElse(Vel X < 0, -.3, .3))
y = 0.4

[State 3051, Position]
type = PosSet
trigger1 = Pos Y >= 25
y = 25

[State 3051, Veloctiy]
type = VelSet
trigger1 = Time > 0 && Pos Y >= -5
x = 0
y = 0

[State 3051, 2]
type = Projectile
trigger1 = AnimElem = 3
projID = 3000
projanim = 3001
projhitanim = 3002
projsprpriority = 5
projpriority = 6
projmisstime = 0
projhits = 4
animtype = Medium
attr = S, HP
damage = 50, 5
offset = 52, -90
velocity = 5, 0
animtype = Heavy
getpower = 0
givepower = 40
guardflag = MA
pausetime = 3, 5
sparkno = s7020+(random%8)
guard.sparkno=s7100
sparkxy = 0, -1
hitsound = S12,0
guardsound = S21, 2
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5, -5.5
air.velocity = -8, -5.5
air.juggle = 1
fall = 1

[State 3051, Change]
type = ChangeState
trigger1 = AnimTime = 0  ;Vel Y > 0 && Pos Y >= 0 ;
value = 51
ctrl = 1
;==========================================================================
[Statedef 3052]
type = A
movetype = A
physics = A
juggle = 1
poweradd = 0
ctrl = 0
anim = 4250
sprpriority = 4

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ANIMELEM=3
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 65


[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = 60
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
trigger1 = AnimElem = 1
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

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
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
supermovetime = 9999
pausemovetime =  9999

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6032
anim =6032
pos = -40,0
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

[State 3052, Width]
type = Width
trigger1 = AnimElem = 2, >= 0
value = 15, 0

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -25,-80
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 3052, SuperPause]
type = SuperPause
trigger1 = AnimElem = 2
pos = -21, -85
anim = -1
sound = S40,1
time = 45
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

[State 3052, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 3052, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,0
channel = 0

[State 3052, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2,5
value = 24,3
channel = 0

[State 3052, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,0
channel = 1

[State 3052, Velocity]
type = VelMul
trigger1 = Time = [0,85]
x = 0
y = 0.05

[State 3052, Velocity]
type = VelAdd
trigger1 = Time > 75
x = ifElse(Vel X = .3, 0,IfElse(Vel X < 0, -.3, .3))
y = 0.4

[State 3052, Position]
type = PosSet
trigger1 = Pos Y >= 25
y = 25

[State 3052, Veloctiy]
type = VelSet
trigger1 = Time > 70 && Pos Y >= -1
x = 0
y = 0

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 4203
pos = 52, -82
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
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S8,1

[State 3002, 2]
type = Projectile
TRIGGERALL=ENEMY,BACKEDGEBODYDIST>=100
trigger1 = AnimElem = 3
projID = 4201
projanim = 4201
projsprpriority = 5
projpriority = 6
projremovetime=51
projhits = 14
projmiss = 14
projscale=.15,.15
offset = 40, -92
velocity = 0, 0
attr = A, HP
damage = 18,3
getpower = 0
givepower = 80
hitflag=MAF
guardflag = MA
pausetime = 4,2
sparkxy=-1
sparkno=-1
guard.sparkno=-1
hitsound = S12,0
guardsound = S21, 2
ground.type = High
animtype=hard
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8,-5
air.velocity = -8, -2
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 1
fall = 1
air.fall = 1
AIR.RECOVER=0
envshake.time = 10
envshake.ampl = 6
p2stateno = 9040

[State 3002, 2]
type = Projectile
TRIGGERALL=ENEMY,BACKEDGEBODYDIST<=99
trigger1 = AnimElem = 3
projID = 4201
projanim = 4201
projsprpriority = 5
projpriority = 6
projremovetime=51
projhits = 14
projmiss = 14
projscale=.15,.15
offset = 40, -92
velocity = 0, 0
attr = A, HP
damage = 18,3
getpower = 0
givepower = 80
hitflag=MAF
guardflag = MA
pausetime = 4,2
sparkxy=-1
sparkno=-1
guard.sparkno=-1
hitsound = S12,0
guardsound = S21, 2
ground.type = High
animtype=hard
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8,-5
air.velocity = -8, -2
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 1
fall = 1
air.fall = 1
AIR.RECOVER=0
envshake.time = 10
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

[State 0, Explod]
type = Explod
trigger1 = projguarded=1
anim = 7105
ID =7105
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

[State 3052, Change]
type = ChangeState
trigger1 = AnimTime = 0  ;Vel Y > 0 && Pos Y >= 0 ;
value = 51
ctrl = 1
;==========================================================================
;EX Shinkuu Tatsumaki
;==========================================================================
[Statedef 3100]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
juggle = 1
anim = 3100
poweradd = 0
sprpriority = 4

[State 3100, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 3100, SuperPause]
type = SuperPause
trigger1 = AnimElem = 2
pos = -29, -70
anim = -1
sound = S40, 1
movetime = 6
poweradd = -1000

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

;[State 3100, Velocity]
;type = PosAdd
;trigger1 = Time = 0
;x = 9.5

[State 3100, Velocity]
type = VelSet
trigger1 = AnimElem = 5, = 2
;x = 3
y = -6.5

[State 3100, Velocity]
type = VelSet
trigger1 = AnimElem = 10
y = 0

[State 3100, Push]
type = PlayerPush
trigger1 = AnimElem = 8, >0 && AnimElem = 33, <0
value = 0

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2, 1
channel = 0

;[State 3100, PlaySnd]
;type = PlaySnd
;trigger1 = AnimElem = 7
;value = 1, 2
;channel = 1

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 16
trigger3 = AnimElem = 22
value = 20,3
channel = 1

[State 3100, 3]
type = HitDef
trigger1 = AnimElem = 11
trigger2 = AnimElem = 17
trigger3 = AnimElem = 23
attr = A, HA
damage = 20, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 1, 1
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = 13, 0
guard.velocity = 9
air.velocity = 9.8, -1
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5

[State 3100, 3]
type = HitDef
trigger1 = AnimElem = 14
trigger2 = AnimElem = 20
attr = A, HA
damage = 20, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 1, 1
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = -13, 0
guard.velocity = -9
air.velocity = -9.8, -1
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5

[State 3100, 3]
type = HitDef
trigger1 = AnimElem = 26
attr = A, HA
damage = 40, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 2, 2
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = -9.8, -3.6
guard.velocity = -9
air.velocity = -9.8, -3.6
air.hittime = 15
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5

[State 3100, Velocity]
type = VelAdd
trigger1 = AnimElem = 28, > 0
y = 0.35

[State 3100, Change]
type = ChangeState
trigger1 = ((AnimElem = 28, > 0) && (Vel Y > 0) && (Pos Y >= 0))
value = 1105
;==========================================================================
[Statedef 3101]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
juggle = 1
anim = 3101
poweradd = 0
sprpriority = 4

[State 3101, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 3101, SuperPause]
type = SuperPause
trigger1 = AnimElem = 2
pos = -29, -70
anim = -1
sound = S40, 1
movetime = 6
poweradd = -2000

[State 3101, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 3101, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 3101, Super4]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 2

[State 3101, Super5]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0 && Time < 30
value2 = C, NA
time = 1

[State 3101, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

;[State 3101, Velocity]
;type = PosAdd
;trigger1 = Time = 0
;x = 9.5

[State 3101, Velocity]
type = VelSet
trigger1 = AnimElem = 5, = 2
;x = 3
y = -6.5

[State 3101, Velocity]
type = VelSet
trigger1 = AnimElem = 10
y = 0

[State 3101, Push]
type = PlayerPush
trigger1 = AnimElem = 8, >0 && AnimElem = 45, <0
value = 0

[State 3101, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2, 1
channel = 0

;[State 3101, PlaySnd]
;type = PlaySnd
;trigger1 = AnimElem = 7
;value = 1, 2
;channel = 1

[State 3101, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 16
trigger3 = AnimElem = 22
trigger4 = AnimElem = 28
trigger5 = AnimElem = 34
value = 20,3
channel = 1

[State 3101, 3]
type = HitDef
trigger1 = AnimElem = 11
trigger2 = AnimElem = 17
trigger3 = AnimElem = 23
trigger4 = AnimElem = 29
trigger5 = AnimElem = 35
attr = A, HA
damage = 20, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 1, 1
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = 13, 0
guard.velocity = 9
air.velocity = 9.8, -1
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5

[State 3101, 3]
type = HitDef
trigger1 = AnimElem = 14
trigger2 = AnimElem = 20
trigger3 = AnimElem = 26
trigger4 = AnimElem = 32
attr = A, HA
damage = 20, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 1, 1
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = -13, 0
guard.velocity = -9
air.velocity = -9.8, -1
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5

[State 3101, 3]
type = HitDef
trigger1 = AnimElem = 38
attr = A, HA
damage = 40, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 2, 2
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = -9.8, -3.6
guard.velocity = 9
air.velocity = -9.8, -3.6
air.hittime = 15
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5

[State 3101, Velocity]
type = VelAdd
trigger1 = AnimElem = 40, > 0
y = 0.35

[State 3101, Change]
type = ChangeState
trigger1 = ((AnimElem = 40, > 0) && (Vel Y > 0) && (Pos Y >= 0))
value = 1105
;==========================================================================
[Statedef 3102]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
juggle = 1
anim = 3102
poweradd = 0
sprpriority = 4

[State 0, Explod]
type = Explod
trigger1 =animelem=6
anim =1110
ID = 1120
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 80
pausemovetime = 0
scale = .55,.5
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0

[State 0, Explod]
type = Explod
trigger1 =animelem=6
anim =1110
ID = 1120
pos = 0,-25
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 80
pausemovetime = 0
scale = .25,.35
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0


[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = 60
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
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
supermovetime = 60
pausemovetime =  60

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 1
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

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
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
supermovetime = 9999
pausemovetime =  9999

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6032
anim =6032
pos = -40,0
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

[state 2100, Vacuum]
type = Helper
trigger1 = Time >= 4
trigger1 = !Numhelper(3102)
ID = 22160
name = "Vacuum"
postype = P2
pos = enemynear,const(size.ground.back)-25,-ceil(enemy,pos y)
stateno = 22160
persistent = 0
size.ground.back = 5
size.ground.front = 5
size.height = 240
persistent = 0

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

[State 3102, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -29,-70
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 3102, SuperPause]
type = SuperPause
trigger1 = AnimElem = 2
pos = -29, -70
anim = -1
sound = S40,1
time = 45
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

;[State 3102, Velocity]
;type = PosAdd
;trigger1 = Time = 0
;x = 9.5

[State 3102, Velocity]
type = VelSet
trigger1 = AnimElem = 5, = 2
;x = 3
y = -6.5

[State 3102, Velocity]
type = VelSet
trigger1 = AnimElem = 10
y = 0

[State 3102, Push]
type = PlayerPush
trigger1 = AnimElem = 8, >0 && AnimElem = 57, <0
value = 0

[State 3102, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2, 1
channel = 0

;[State 3102, PlaySnd]
;type = PlaySnd
;trigger1 = AnimElem = 7
;value = 1, 2
;channel = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 20229
pos = 0,40
postype = p1  ;p2,front,back,left,right
[State 0, Explod]
type = Explod
trigger1 = AnimElem = 9
anim = 20229
pos = 0,40
postype = p1  ;p2,front,back,left,right

[State 3102, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 16
trigger3 = AnimElem = 22
trigger4 = AnimElem = 28
trigger5 = AnimElem = 34
trigger6 = AnimElem = 40
trigger7 = AnimElem = 46
trigger8 = AnimElem = 12
trigger9 = AnimElem = 15
trigger10 = AnimElem = 25
trigger11 = AnimElem = 33
value = 20,3
channel = 1

[State 3102, 3]
type = HitDef
trigger1 = AnimElem = 10
trigger2 = AnimElem = 11
trigger3 = AnimElem = 16
trigger4 = AnimElem = 17
trigger5 = AnimElem = 22
trigger6 = AnimElem = 23
trigger7 = AnimElem = 28
trigger8 = AnimElem = 29
trigger9 = AnimElem = 34
trigger10 = AnimElem = 35
trigger11 = AnimElem = 40
trigger12 = AnimElem = 41
trigger13 = AnimElem = 46
trigger14 = AnimElem = 47
attr = A, HA
damage = 8,1
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 3,3
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = 13, 0
guard.velocity = 9
air.velocity = 9.8, -1
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower=0

[State 3102, 3]
type = HitDef
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 19
trigger4 = AnimElem = 25
trigger5 = AnimElem = 26
trigger6 = AnimElem = 31
trigger7 = AnimElem = 32
trigger8 = AnimElem = 37
trigger9 = AnimElem = 38
trigger10 = AnimElem = 43
trigger11 = AnimElem = 44
trigger12 = AnimElem = 49
trigger13 = AnimElem = 50
attr = A, HA
damage = 9,2
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 3, 3
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = -13, 0
guard.velocity = -9
air.velocity = -9.8, -1
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower=0

[State 3102, 3]
type = HitDef
trigger1 = AnimElem = 50
attr = A, HA
damage = 20, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 2, 2
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
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
envshake.time = 10
envshake.ampl = 5
getpower=0

[State 3102, Velocity]
type = VelAdd
trigger1 = AnimElem = 52, > 0
y = 0.35

[State 3102, Change]
type = ChangeState
trigger1 = ((AnimElem = 52, > 0) && (Vel Y > 0) && (Pos Y >= 0))
value = 1105

;==========================================================================
[Statedef 3104]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
juggle = 1
anim = 3102
poweradd = -1000
sprpriority = 4

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = 40
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
trigger1 = AnimElem = 1
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

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
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
supermovetime = 9999
pausemovetime =  9999

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6032
anim =6032
pos = -40,0
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

[State 3102, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0



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

;[State 3102, Velocity]
;type = PosAdd
;trigger1 = Time = 0
;x = 9.5

[State 3102, Velocity]
type = VelSet
trigger1 = AnimElem = 5, = 2
;x = 3
y = -6.5

[State 3102, Velocity]
type = VelSet
trigger1 = AnimElem = 10
y = 0

[State 3102, Push]
type = PlayerPush
trigger1 = AnimElem = 8, >0 && AnimElem = 57, <0
value = 0

[State 3102, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2, 1
channel = 0

;[State 3102, PlaySnd]
;type = PlaySnd
;trigger1 = AnimElem = 7
;value = 1, 2
;channel = 1




[State 3102, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 16
trigger3 = AnimElem = 22
trigger4 = AnimElem = 28
trigger5 = AnimElem = 34
trigger6 = AnimElem = 40
trigger7 = AnimElem = 46
trigger8 = AnimElem = 12
trigger9 = AnimElem = 15
trigger10 = AnimElem = 25
trigger11 = AnimElem = 33
value = 20,3
channel = 1

[State 3102, 3]
type = HitDef
trigger1 = AnimElem = 10
trigger2 = AnimElem = 11
trigger3 = AnimElem = 16
trigger4 = AnimElem = 17
trigger5 = AnimElem = 22
trigger6 = AnimElem = 23
trigger7 = AnimElem = 28
trigger8 = AnimElem = 29
trigger9 = AnimElem = 34
trigger10 = AnimElem = 35
trigger11 = AnimElem = 40
trigger12 = AnimElem = 41
trigger13 = AnimElem = 46
trigger14 = AnimElem = 47
attr = A, HA
damage = 15
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 1, 1
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = 13, 0
guard.velocity = 9
air.velocity = 9.8, -1
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5

[State 3102, 3]
type = HitDef
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 19
trigger4 = AnimElem = 25
trigger5 = AnimElem = 26
trigger6 = AnimElem = 31
trigger7 = AnimElem = 32
trigger8 = AnimElem = 37
trigger9 = AnimElem = 38
trigger10 = AnimElem = 43
trigger11 = AnimElem = 44
trigger12 = AnimElem = 49
trigger13 = AnimElem = 50
attr = A, HA
damage = 15
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 1, 1
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = -13, 0
guard.velocity = -9
air.velocity = -9.8, -1
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5

[State 3102, 3]
type = HitDef
trigger1 = AnimElem = 50
attr = A, HA
damage = 40, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 2, 2
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 6
ground.velocity = -9.8, -3.6
guard.velocity = -9
air.velocity = -9.8, -3.6
air.hittime = 15
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5

[State 3102, Velocity]
type = VelAdd
trigger1 = AnimElem = 52, > 0
y = 0.35

[State 3102, Change]
type = ChangeState
trigger1 = ((AnimElem = 52, > 0) && (Vel Y > 0) && (Pos Y >= 0))
value = 1105

;==========================================================================
[Statedef 3200]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 3205
poweradd = 0
sprpriority = 4

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ANIMELEM=1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 137

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = 60
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
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
supermovetime = 60
pausemovetime =  60


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

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
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
supermovetime = 9999
pausemovetime =  9999

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6032
anim =6032
pos = -40,0
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
trigger1 = TIME=0
value = S0,8
VOLUME=255

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -25,-72
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 3002, SuperPause]
type = SuperPause
trigger1 = AnimElem = 4
pos = 8, -80
anim = -1
sound = S40, 0
time = 45
poweradd = -3000

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

[State 3002, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,2
channel = 0

[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 24,3
channel = 0

[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4,0
channel = 1

[State xxx, Explod]
type = Explod
trigger1 = AnimElem = 6
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

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 4401
pos = 52, -62
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
scale = .35,.35
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Pause]
Type = Pause
Trigger1 = time = [30,32]
time = 4
movetime = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem=7
value = S8,1

[State 3002, 2]
type = Projectile
trigger1 = AnimElem = 7
projID = 4400
projanim = 4400
projsprpriority = 5
projpriority = 7
projremovetime=51
projhits = 20
projscale=.35,.35
offset = 72, -72
velocity = 0, 0
attr = S, HP
damage = 6,1
getpower = 0
givepower = 80
hitflag=MAFD
guardflag = MA
pausetime = 6,0
hitsound = S12,1
guardsound = S21, 2
sparkxy=-1
sparkno=-1
guard.sparkno=-1
ground.type = High
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = -3,-3
air.velocity = -.5,-.5
air.hittime = 30
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
palfx.time = 60
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 10
envshake.ampl = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = ANIMELEM= 1
value = S55,0

[State 0, EnvShake]
type = EnvShake
trigger1 = ANIMELEM= 1
time = 134
;freq = 60
ampl = 4
;phase = 90
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 12
anim = 4401
pos = 52, -62
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
scale = .45,.45
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 3002, 2]
type = Projectile
trigger1 = AnimElem = 12
projID = 4400
projanim = 4400
projsprpriority = 5
projpriority = 7
projremovetime=51
projhits = 20
projscale=.45,.45
offset = 72, -72
velocity = 0, 0
attr = S, HP
damage = 7,1
getpower = 0
givepower = 20,10
hitflag=MAFD
guardflag = MA
pausetime = 2,0
hitsound = S12,1
guardsound = S21, 2
sparkxy=-1
sparkno=-1
guard.sparkno=-1
ground.type = High
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = -3,-3
air.velocity = -.5,-.5
air.hittime = 30
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
palfx.time = 60
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 10
envshake.ampl = 5

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 17
anim = 4401
pos = 52, -62
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
scale = .7,.7
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 3002, 2]
type = Projectile
trigger1 = AnimElem = 17
projID = 4400
projanim = 4400
projsprpriority = 5
projpriority = 7
projremovetime=51
projhits = 20
projscale=.7,.7
offset = 72, -72
velocity = 0, 0
attr = S, HP
damage = 10,2
getpower = 0
givepower = 80
hitflag=MAFD
guardflag = MA
pausetime = 1,0
hitsound = S12,1
guardsound = S21, 2
sparkxy=-1
sparkno=-1
guard.sparkno=-1
ground.type = High
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = -20,-3
air.velocity = -20,-3
air.hittime = 30
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
palfx.time = 60
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 10
envshake.ampl = 5

[State 3002, 2]
type = Projectile
trigger1 = AnimElem = 21,4
projID = 4400
projanim = 4400
projsprpriority = 4
projpriority = 7
projremovetime=15
projhits = 1
projmiss = 1
projscale=.7,.7
offset = 72, -72
velocity = 0, 0
attr = S, HP
damage = 50,10
getpower = 0
givepower = 80
hitflag=MAFD
guardflag = MA
pausetime = 1,0
hitsound = S12,1
guardsound = S21, 2
sparkxy=-1
sparkno=-1
guard.sparkno=-1
ground.type = High
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = -20,-6
air.velocity = -20,-6
air.hittime = 30
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
p2stateno = 9040
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
palfx.time = 60
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 10
envshake.ampl = 5

[State 0, Helper]
type = Helper
triggerall = ProjHit&&P2Stateno =5000||P2stateno =5020
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

[State 0, Explod]
type = Explod
trigger1 = projhit=1
anim = 7020+(random%8)
ID =7020
pos = -20,-80
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 30,30
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = projguarded=1
anim = 7105
ID =7105
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
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 3002, 4]
type = ChangeState
trigger1 = ANIMTIME=0
value = 0
ctrl = 1

;==========================================================================
[Statedef 3250]
type = A
movetype = A
physics = A
juggle = 1
poweradd = 0
ctrl = 0
anim = 4250
sprpriority = 3

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ANIMELEM=3
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 12
;ignorehitpause =
;persistent =

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = 60
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

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
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
supermovetime = 9999
pausemovetime =  9999

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6032
anim =6032
pos = -40,0
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
trigger1 = time = 0
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -28,-94
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 3052, SuperPause]
type = SuperPause
trigger1 = AnimElem = 2
pos = -21, -85
anim = -1
sound = S40, 1
time = 45
movetime = 2
poweradd = -3000

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

[State 3052, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 3052, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,0
channel = 0

[State 3052, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2,5
value = 24,3
channel = 0

[State 3052, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,0
channel = 1

[State 3052, Velocity]
type = VelMul
trigger1 = Time = [0,85]
x = 0
y = 0.25

[State 3052, Velocity]
type = VelAdd
trigger1 = Time > 75
x = ifElse(Vel X = .3, 0,IfElse(Vel X < 0, -.3, .3))
y = 0.4

[State 3052, Position]
type = PosSet
trigger1 = Pos Y >= 25
y = 25

[State 3052, Veloctiy]
type = VelSet
trigger1 = Time > 70 && Pos Y >= -5
x = 0
y = 0

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 4401
pos = 32, -82
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
scale = .55,.55
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem=3
value = S8,1

[State 3002, 2]
type = Projectile
trigger1 = AnimElem = 3
projID = 4400
projanim = 4400
projsprpriority = 5
projpriority = 7
projremovetime=51
projhits = 18
projscale=.45,.35
offset = 40, -92
velocity = 0, 0
attr = S, HP
damage = 20,4
getpower = 0
givepower = 80
hitflag=MAF
guardflag = MA
pausetime = 2, 20
sparkxy=-1
sparkno=-1
guard.sparkno=-1
hitsound = S12,0
guardsound = S21, 2
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
air.velocity = -8, -2
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 1
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5

[State 0, Helper]
type = Helper
triggerall = ProjHit&&P2Stateno =5000||P2stateno =5020
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
trigger1 =projhit=18
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

[State 0, Explod]
type = Explod
trigger1 = projhit=18
anim = 7020+(random%8)
ID =7000
pos = 10,-60
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
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = projguarded=18
anim = 7105
ID =7000
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
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 3052, Change]
type = ChangeState
trigger1 = AnimTime = 0  ;Vel Y > 0 && Pos Y >= 0 ;
value = 51
ctrl = 1

[State 3052, Change]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0 ;
value = 52
ctrl = 1

;==========================================================================
[Statedef 3300]
type = S
movetype = A
physics = S
poweradd = 0
ctrl = 0
anim = 3300
sprpriority = 4
velset = 0,0

[State 3052, SuperPause]
type = SuperPause
trigger1 = animelem=1,2
pos = -21, -85
anim = -1
sound = S40, 0
time = 45
poweradd = -3000

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

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = 10,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = 60
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


[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
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
supermovetime = 9999
pausemovetime =  9999

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6032
anim =6032
pos = -40,0
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

[State 1200, 0]
type = NotHitBy
trigger1 = 1
value = SCA, NP, SP
time = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,2
channel = 1

[State 1200, 3]
type = HitDef
trigger1 = AnimElem = 3 && HitCount < 2
trigger2 = AnimElem = 4 && HitCount < 2
attr = S, SA
damage = 25, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 2, 44
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 2
guardsound = S21, 2
ground.type = low
ground.hittime = 44
ground.slidetime = 30
ground.velocity = -2
air.velocity = -2, -2
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
fall=1
fall.recover=0

[State 1200, 4]
type = ChangeState
trigger1 = AnimElem = 4
value = 3301
;==========================================================================
[Statedef 3301]
type = A
movetype = A
physics = A
velset = 8, -4 ;6.01, -6

[State 1201, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 1201, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S20,1

[State 1201, 3]
type = HitDef
trigger1 = AnimElem = 4 && HitCount < 2
attr = A, SA
damage = 30, 5
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 2, 22
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 2
guardsound = S21, 2
ground.type = High
ground.hittime = 44
ground.slidetime = 30
ground.velocity = -1,-3
air.velocity = -1, -3
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
fall=1
fall.recover=0

[State 1201, 4]
type = ChangeAnim
triggerall = Anim = 3300
trigger1 = Vel Y > 0
value = 1201

[State 1201, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 3302
;==========================================================================
[Statedef 3302]
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
value = 3303
ctrl = 0
;==========================================================================
[Statedef 3303]
type = S
movetype = A
physics = S
poweradd = 0
ctrl = 0
anim = 3300
sprpriority = 4
velset = 0,0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,0
channel = 0

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

[State 1200, 3]
type = HitDef
trigger1 = AnimElem = 3 && HitCount < 2
trigger2 = AnimElem = 4 && HitCount < 2
attr = S, SA
damage = 25, 6
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 22
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 2
guardsound = S21, 2
ground.type = low
ground.hittime = 44
ground.slidetime = 30
ground.velocity = -1,-4
air.velocity = -1, -4
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
fall=1
fall.recover=0


[State 1200, 4]
type = ChangeState
trigger1 = AnimElem = 4
value = 3304
;==========================================================================
[Statedef 3304]
type = A
movetype = A
physics = A
velset = 9, -6 ;6.01, -6

[State 1201, 1]
type = VelMul
trigger1 = 1
x = .92

[State 1201, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S20,1

[State 1201, 3]
type = HitDef
trigger1 = AnimElem = 4 && HitCount < 2
attr = A, SA
damage = 30, 4
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 22
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 2
guardsound = S21, 2
ground.type = High
ground.hittime = 44
ground.slidetime = 30
ground.velocity = -1,-6
air.velocity = -1, -6
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
fall=1
fall.recover=0


[State 1201, 4]
type = ChangeAnim
triggerall = Anim = 3300
trigger1 = Vel Y > 0
value = 1201

[State 1201, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 3305
;==========================================================================
[Statedef 3305]
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
value = 3306
ctrl = 0
;==========================================================================
[Statedef 3306]
type = S
movetype = A
physics = S
poweradd = 0
ctrl = 0
anim = 3300
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

[State 1200, 3]
type = HitDef
trigger1 = AnimElem = 3 && HitCount < 2
trigger2 = AnimElem = 4 && HitCount < 2
attr = S, SA
damage = 35, 5
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 22
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 2
guardsound = S21, 2
ground.type = low
ground.hittime = 44
ground.slidetime = 30
ground.velocity = -1,-3
air.velocity = -1, -3
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
fall=1
fall.recover=0

[State 1200, 4]
type = ChangeState
trigger1 = AnimElem = 4
value = 3307
;==========================================================================
[Statedef 3307]
type = A
movetype = A
physics = A
velset = 12, -8 ;6.01, -6

[State 1201, 1]
type = VelMul
trigger1 = 1
x = .92
y = 1

[State 1201, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S20,1

[State 1201, 3]
type = HitDef
trigger1 = AnimElem = 4 && HitCount < 2
attr = A, SA
damage = 40, 5
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 45
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 2
guardsound = S21, 2
ground.type = low
ground.hittime = 44
ground.slidetime = 30
ground.velocity = -1,-3
air.velocity = -1, -3
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
fall=1
fall.recover=0

[State 1201, 4]
type = ChangeAnim
triggerall = Anim = 3300
trigger1 = Vel Y > 0
value = 1201

[State 1201, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 3308
;==========================================================================
[Statedef 3308]
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
triggerall=enemy,life=0
trigger1 = AnimTime = 0
value = 0
ctrl = 1
[State 1206, 1]
type = ChangeState
triggerall=enemy,life>=1
trigger1 = AnimTime = 0
value = 3309
ctrl = 0

;----------------------------------------------------------------------------
[Statedef 3309]
type = S
movetype = A
physics = S
ctrl = 0
anim = 4001
sprpriority = 4
velset = 0,0

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

[State 3000, Explod]
type = Explod
trigger1 = time=0
removetime = -1
id =6032
anim =6032
pos = -40,0
postype = Left
scale = 1.2,1.2
sprpriority = -2
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

[State 4001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2,3
channel = 0

[State 4001, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 47,0
[State 4001, PlaySnd]
type = PlaySnd
trigger1 = animelem=4
value = 47,1

[State 0, Pause]
Type = Pause
Trigger1 = time = [0,250]
time = 4
movetime = 1

[State 4001, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
damage = 40, 6
animtype = up
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 30, 25
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S44,1
guardsound = S45, 0
ground.type = Low
ground.hittime = 999
ground.velocity = 2, -2.5
air.velocity = 2, -2.5
air.hittime = 999
envshake.ampl = 3
envshake.time = 30
envshake.freq = 180
kill = 0
fall = 0
air.fall = 0
getpower=0


[State 4001, Change]
type = ChangeState
trigger1 = AnimElem = 4
value = 3310
ctrl = 0
;------------------------------------------
[Statedef 3310]
type = A
movetype = A
physics = A
velset = 3,-14
juggle = 1


[State 4002, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 4002, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=20
trigger2 = time=40
trigger3 = time=60
value = S4,1

[State 0, Pause]
Type = Pause
Trigger1 = time = [0,30]
time = 6
movetime = 1

[State 4001, PlaySnd]
type = PlaySnd
trigger1 = time=10
value = 47,2

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 4001
trigger1 = AnimElem = 5
value = S8,1
[State 3002, 2]
type = Projectile
triggerall = anim = 4001
trigger1 = AnimElem = 5
projID = 3310
projanim = 3310
projsprpriority = 7
projpriority = 7
projremove = 1
projremovetime =38
projmiss = -1
projscale=.5,2
projhits = 6
animtype = up
offset = 0,200
velocity = 0,-6
attr = S, HP
damage =  20,4
getpower = 0
givepower = 80
hitflag=MAFD
guardflag = MA
pausetime = 3,6
sparkno = -1
guard.sparkno=-1
sparkxy = 0, -1
hitsound = S44,2
guardsound = S45,1
ground.type = High
ground.slidetime = 4
ground.hittime = 20
ground.velocity = -3,-13
air.velocity = -3, -14
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 1
fall = 1
air.fall = 1
getpower=0
;Thunder Shocked
palfx.time = 110
palfx.add = 40,-70,-200
palfx.mul = 256,256,256
palfx.sinadd = -154,-145,0,10
palfx.invertall = 0
palfx.color = 0

[State 0, Explod]
type = Explod
trigger1 = projhit=1
anim = 3902
ID = 3902
pos = 0,-10-(random%70)
postype = p2
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 120
supermove
pausemove
scale = .2+(random%1),.2+(random%1)
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

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
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = projguarded=1
anim = 7105
ID =7105
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

[State 4002, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = A, HA
damage = 25, 5
animtype = up
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 20, 8
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S44,0
guardsound = S45, 0
ground.type = High
ground.hittime = 99
ground.velocity = -1, -17
air.velocity = -1, -16
air.hittime = 99
kill = 0
fall = 1
air.fall = 1
fall.recover = 0
envshake.ampl = 3
envshake.time = 30
envshake.freq = 180
getpower=0

[State 4002, 3]
type = HitDef
trigger1 = AnimElem = 5
attr = A, HA
damage = 45, 12
animtype = Hard
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 30, 22
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S44,0
guardsound = S45, 0
ground.type = High
ground.hittime = 99
ground.velocity = -1, -15
air.velocity = -1, -15
air.hittime = 99
kill = 1
fall = 1
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
envshake.ampl = 3
envshake.time = 30
envshake.freq = 180
getpower=0

[State 4002, 4]
type = ChangeAnim
triggerall = Anim = 4001
trigger1 = Vel Y > 0
value = 4002

[State 4002, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 4009

;==========================================================================
[Statedef 3399]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 3399
poweradd = 0
sprpriority = 4

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = 80
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
trigger1 = animelem=1
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

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
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
supermovetime = 9999
pausemovetime =  9999

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6032
anim =6032
pos = -40,0
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
trigger1 = ANIMELEM=3
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -10,-48
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

[State 3000, SuperPause]
type = SuperPause
trigger1 = AnimElem = 3
pos = 8, -80
anim = -1
sound = S40,2
time = 45
movetime = 15
poweradd = -2000
Unhittable=1

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

[State 3000, Super4]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA
time = 2

[State 3000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,0
channel = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 2,1
channel = 0

[State 3000, 4]
type = ChangeState
trigger1 = animtime=0
value = 3400
ctrl = 0
;==========================================================================
[Statedef 3400]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 3400
poweradd = 0
sprpriority = 4

[State 0, VelSet]
type = VelSet
trigger1 = time=0
x = 32

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

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 15,10
attr = S, HA
hitflag = MAF
guardflag = MA
animtype = med
priority = 6, Hit
pausetime = 22,24
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -70
hitsound = S22, 0
guardsound = S21, 1
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity =0
air.hittime = 22
getpower=0
kill=0
numhits= 0
p2stateno=4058

[State 3000, 4]
type = ChangeState
trigger1 = movehit
value = 3401
ctrl = 0
[State 3000, 4]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1
;==========================================================================
[Statedef 3401]
type = S
physics = S
movetype = A
anim = 3401
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

[State 0, TargetBind]
type = TargetBind
trigger1 =time=0
pos = 30,0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 20,2
attr = S, HA
hitflag = MAF
guardflag = MA
animtype = med
priority = 7, Hit
pausetime = 2,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -70
hitsound = S22, 0
guardsound = S21, 1
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = 0
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 0
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = Animelem=4
value = 3402
ctrl = 0
;==========================================================================
[Statedef 3402]
type = S
physics = S
movetype = A
anim = 3402
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 20,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = med
priority = 7, Hit
pausetime = 2,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -80
hitsound = S22, 1
guardsound = S21, 1
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = 0
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 1
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3403
ctrl = 0
;==========================================================================
[Statedef 3403]
type = S
physics = S
movetype = A
anim = 3403
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = med
priority = 7, Hit
pausetime = 2,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -80
hitsound = S22, 2
guardsound = S21, 1
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = 0
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 2
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = Animelem=7
value = 3404
ctrl = 0

;==========================================================================
[Statedef 3404]
type = S
physics = S
movetype = A
anim = 3404
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = med
priority = 7, Hit
pausetime = 2,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -60
hitsound = S22, 1
guardsound = S21, 1
ground.type = low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = 0
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 0
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = Animelem=6
value = 3405
ctrl = 0

;==========================================================================
[Statedef 3405]
type = S
physics = S
movetype = A
anim = 3405
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = med
priority = 7, Hit
pausetime = 2,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -40
hitsound = S22, 2
guardsound = S21, 1
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = 0
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 1
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = Animelem=7
value = 3406
ctrl = 0

;==========================================================================
[Statedef 3406]
type = S
physics = S
movetype = A
anim = 3406
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 7, Hit
pausetime = 2,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -60
hitsound = S22, 3
guardsound = S21, 1
ground.type = low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = 0
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 2
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = Animelem=8
value = 3407
ctrl = 0
;==========================================================================
[Statedef 3407]
type = S
physics = S
movetype = A
anim = 3407
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 7, Hit
pausetime = 2,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -50
hitsound = S22, 4
guardsound = S21, 1
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = 0
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 1
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = Animelem=10
value = 3408
ctrl = 0
;==========================================================================
[Statedef 3408]
type = S
physics = S
movetype = A
anim = 3408
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 7, Hit
pausetime = 2,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -80
hitsound = S22, 3
guardsound = S21, 1
ground.type = low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = 0
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 2
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = Animelem=8
value = 3409
ctrl = 0
;==========================================================================
[Statedef 3409]
type = S
physics = S
movetype = A
anim = 3409
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 7, Hit
pausetime = 2,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -60
hitsound = S22, 4
guardsound = S21, 1
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = 0
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 3
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = Animelem=9
value = 3410
ctrl = 0
;==========================================================================
[Statedef 3410]
type = S
physics = S
movetype = A
anim = 3410
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = med
priority = 7, Hit
pausetime = 2,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -90
hitsound = S22, 5
guardsound = S21, 1
ground.type = High
ground.slidetime = 44
ground.hittime = 44
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = 0
air.hittime = 44
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 2
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = animtime=0
value = 3411
ctrl = 0
;==========================================================================
[Statedef 3411]
type = S
physics = S
movetype = A
anim = 3411
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = med
priority = 7, Hit
pausetime = 8,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -90
hitsound = S22, 4
guardsound = S21, 1
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = 0
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = 0
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 3
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = animelem=8
value = 3412
ctrl = 0
;==========================================================================
[Statedef 3412]
type = A
movetype = A
physics = N
velset = 0,0
poweradd = 0
ctrl = 0
sprpriority = 4
anim = 3412

[State 720, Velocity]
type = PosAdd
trigger1 = Time = 0
x = 9.5

[State 720, Velocity]
type = VelSet
trigger1 = AnimElem = 2, = 1
x = 3
y = -3

[State 720, Velocity]
type = VelAdd
trigger1 = AnimElem = 3, > 0
y = 0.35

[State 720, 2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 20, 2
channel = 1

[State 720, 2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0, 2
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S47,0

[State 0, Pause]
Type = Pause
Trigger1 = time = [0,10]
time = 4
movetime = 1

[State 720, 3]
type = HitDef
trigger1 = time=0
attr = S, NA
damage = 22, 4
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 15
guard.sparkno = s7100
sparkno = s7020+(random%8)
sparkxy = -20, -76
hitsound = S44, 0
guardsound = S45, 0
ground.type = High
ground.slidetime = 22
ground.hittime = 33
ground.velocity = -2
airguard.velocity = -2.7, -1.7
air.type = High
air.velocity = -1.8, -2.9
air.hittime = 33
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0

[State 720, Change]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 3413
;==========================================================================
[Statedef 3413]
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
value = 3414
ctrl = 0

;==========================================================================
[Statedef 3414]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
juggle = 1
anim = 3414
poweradd = 0
sprpriority = 4

[State 0, Explod]
type = Explod
trigger1 =animelem=6
anim =1110
ID = 1150
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 42
pausemovetime = 0
scale = .5,.5
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S47,1

[State 0, Pause]
Type = Pause
Trigger1 = time = [0,100]
time = 2

[State 1102, Velocity]
type = PosAdd
trigger1 = Time = 0
x = 9.562

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
trigger1 = AnimElem = 7
attr = A, SA
damage = 20, 5
animtype = light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,8
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = -20, -50
hitsound = S44, 1
guardsound = S45, 1
ground.type = High
ground.hittime = 44
ground.slidetime = 6
ground.velocity = 1
air.velocity = -1, -2.5
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0

[State 1102, 3]
type = HitDef
trigger1 = AnimElem = 13
attr = A, SA
damage = 20, 5
animtype = med
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,8
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = -20, -50
hitsound = S44, 1
guardsound = S45, 1
ground.type = High
ground.hittime = 44
ground.slidetime = 6
ground.velocity = 1
air.velocity = -1, -2.5
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0

[State 1102, 3]
type = HitDef
trigger1 = AnimElem = 19
attr = A, SA
damage = 20, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,6
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = -20, -50
hitsound = S44, 1
guardsound = S45, 1
ground.type = High
ground.hittime = 44
ground.slidetime = 6
ground.velocity = 1
air.velocity = -1, -2.5
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0

[State 1102, 3]
type = HitDef
trigger1 = AnimElem = 25
attr = A, SA
damage = 20, 5
animtype = back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6,4
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = -20, -50
hitsound = S44, 1
guardsound = S45, 1
ground.type = High
ground.hittime = 44
ground.slidetime = 12
ground.velocity = 1
air.velocity = -1, -2.5
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0

[State 1102, Velocity]
type = VelAdd
trigger1 = AnimElem = 31, > 0
y = 0.35

[State 1102, Change]
type = ChangeState
trigger1 = ((AnimElem = 31, > 0) && (Vel Y > 0) && (Pos Y >= 0))
value = 3415
;==========================================================================
[Statedef 3415]
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
value = 3416
ctrl = 0

;==========================================================================
[Statedef 3416]
type = S
movetype = A
physics = S
juggle = 1
poweradd = 0
ctrl = 0
anim = 3416
sprpriority = 4
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S47,2

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
damage = 30, 5
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 36,36
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S44, 0
guardsound = S45, 1
ground.type = low
ground.hittime = 10
ground.velocity = 1, 0
air.velocity = 1, -3
air.hittime = 10
envshake.time = 36
envshake.ampl = 5
getpower=0
kill=0

[State 0, Explod]
type = Explod
trigger1 =animelem=4
anim =1210
ID = 1230
pos = 10,-30
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .7,.7
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0

[State 1204, 4]
type = ChangeState
trigger1 = AnimElem = 4
value = 3417
;==========================================================================
[Statedef 3417]
type = A
movetype = A
physics = A
velset = 7.01, -13 ; ;10.01, -10
juggle = 1

[State 0, Pause]
Type = Pause
Trigger1 = time = [0,10]
time = 6

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
triggerall
trigger1 = AnimElem = 4 && HitCount < 2
attr = A, SA
damage = 30, 4
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,8
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -90
hitsound = S44, 2
guardsound = S21, 1
ground.type = High
ground.hittime = 2
ground.velocity = -5, -16
air.velocity = -5, -17
air.hittime = 2
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
ground.cornerpush.veloff = -20
guard.cornerpush.veloff = -12
getpower=0


[State 1205, 4]
type = ChangeAnim
triggerall = Anim = 3416
trigger1 = Vel Y > 0
value = 1201

[State 1205, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 1206

;==========================================================================
;Messa Shouryuuken
;==========================================================================
[Statedef 3450]
type = S
movetype = A
physics = S
poweradd = 0
juggle = 1
velset = 0,0
ctrl = 0
anim = 3450
sprpriority = 4

[State 0, VelSet]
type = VelSet
trigger1 = animelem= 4
x = 20
y = 0

[State 3000, Explod]
type = Explod
trigger1 = animelem=1
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
sprpriority = -5
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

[State 4000, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = 16,-80
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 4000, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1,1
pos = 16, -80
anim = -1
sound = S40,2
poweradd = -2000
darken = 0
time = 40

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

[State xxx, Explod]
type = Explod
trigger1 = AnimElem = 4
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


[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 2
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
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
supermovetime = 9999
pausemovetime =  9999

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 2
removetime = -1
id =6032
anim =6032
pos = -40,0
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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=4
value = S47,0

[State 0, Pause]
Type = Pause
Trigger1 = time = [0,250]
Triggerall = MoveHit
time = 4

[State 4000, 3]
type = HitDef
trigger1 = AnimElem = 8
attr = S, HA
damage = 50, 15
animtype = Hard
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 50, 70
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S12, 2
guardsound = S21, 2
ground.type = high
ground.hittime = 999
ground.velocity = 0
air.velocity = -1, 12
air.hittime = 999
envshake.time = 50
kill = 0
getpower=0
p2stateno=4055


[State 4000, Change]
type = ChangeState
trigger1 = movehit
value = 3500

[State 4000, Change]
type = ChangeState
trigger1 = animtime=0
value = 3505

[State 4000, Change]
type = ChangeState
trigger1 = moveguarded
value = 0
ctrl=1
;==========================================================================
[Statedef 3500]
type = S
movetype = A
physics = S
poweradd = 0
juggle = 1
velset = 0,0
ctrl = 0
anim = 3500
sprpriority = 4

[State 8888, ExShadow]
type = AfterImage
trigger1 = time = 0
time = 9999
timegap = 2
framegap =4
length = 16
palbright = 0, 40, 40
paladd = -10, -10, -10
palmul = 0, 1, 1
trans = add
ignorehitpause = 1

[State 0, TargetBind]
type = TargetBind
trigger1 =time=0
pos = 20,0

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

[State 3000, Explod]
type = Explod
trigger1 = time=0
removetime = -1
id =6032
anim =6032
pos = -40,0
postype = Left
scale = 1.2,1.2
sprpriority = -2
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

[State xxx, Explod]
type = Explod
trigger1 = AnimElem = 4
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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S55,0
volume=-2200
channel=12

[State 4000, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
damage = 80
animtype = Hard
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 50, 50
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -48
hitsound = S12, 2
guardsound = S21, 2
ground.type = Low
ground.hittime = 999
ground.velocity = 1
air.velocity = 1, -1.2
air.hittime = 999
envshake.time = 50
kill = 0
air.fall = 1
getpower=0
p2stateno=4058

[State 0, TargetBind]
type = TargetBind
trigger1 =movehit=1
pos = 20,0
ignorehitpause =1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = TIME=0
value = S0,8
IGNOREHITPAUSE=1
CHANNEL=7

[State 4000, Change]
type = ChangeState
triggerall = Anim = 3500
trigger1 = animelem=5
trigger1 = movehit
value = 3501

[State 4000, Change]
type = ChangeState
triggerall = Anim = 3500
trigger1 = animelem=5
value = 3505


[Statedef 3501]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
anim = 4001
sprpriority = 4
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S47,2
volume=-2200
channel=13

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

[State 4001, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 4001, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 4001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 4001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,0
channel = 2

[State 4001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2,3
channel = 2

[State 4001, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
damage = 55, 15
animtype = up
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 75,65
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -98
hitsound = S12, 2
guardsound = S21, 2
ground.type = high
ground.hittime = 999
ground.velocity = 0, -9
air.velocity = 0, -8
air.hittime = 999
envshake.time = 70
kill = 0
fall = 1
air.fall = 1
getpower=0

[State 4001, Change]
type = ChangeState
triggerall=anim=4001
trigger1 = AnimElem = 4
value = 3502
ctrl = 0

[Statedef 3502]
type = A
movetype = A
physics = A
velset = 3,-22
juggle = 1

[State 4002, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 4002, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 4002, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 4002, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 4002, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 0

[State 4002, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = A, HA
damage = 40, 10
animtype = up
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 3,1
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -118
hitsound = S12, 2
guardsound = S21, 2
ground.type = High
ground.hittime = 99
ground.velocity = 0, -26
air.velocity = 0, -26
air.hittime = 99
fall = 1
air.fall = 1
fall.recover = 0
envshake.ampl = 3
envshake.time = 1
envshake.freq = 180
getpower=0
kill=0

[State 4001, PlaySnd]
type = PlaySnd
trigger1 = time=10
value = 47,2

[State 3002, 2]
type = Projectile
trigger1 = AnimElem = 4
projID = 3310
projanim = 3310
projsprpriority = 7
projpriority = 7
projremove = 1
projremovetime =38
projmiss = -1
projscale=.45,2
projhits = 6
animtype = up
offset = 30,200
velocity = 0,-4
attr = S, HP
damage =  20,5
getpower = 0
givepower = 80
hitflag=MAFD
guardflag = MA
pausetime = 2,4
sparkno = -1
guard.sparkno=-1
sparkxy = 0, 0
hitsound = S60,4
guardsound = S45,1
ground.type = High
ground.slidetime = 8
ground.hittime = 20
ground.velocity = -3,-22
air.velocity = -3, -22
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 1
fall = 1
air.fall = 1
getpower=0
;Thunder Shocked
palfx.time = 140
palfx.add = 40,-70,-200
palfx.mul = 256,256,256
palfx.sinadd = -154,-145,0,10
palfx.invertall = 0
palfx.color = 0

[State 0, Explod]
type = Explod
trigger1 = projhit=1
anim = 3902
ID = 3902
pos = 0,-70
postype = p2
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,70
removetime = -2
supermove
pausemove
scale = .2+(random%1),.2+(random%1)
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = projhit=1
value = S60,4

[State 0, Explod]
type = Explod
trigger1 = projhit=1
anim = 7020+(random%8)
ID =7020
pos = 10,-140
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
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = projguarded=6
anim = 7105
ID =7105
pos = 10,-140
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
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 4002, 4]
type = ChangeAnim
triggerall = Anim = 4001
trigger1 = Vel Y > 0
value = 4002

[State 4002, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 4009

[Statedef 3505]
type = A
movetype = A
physics = A
velset = 8,-18
juggle = 1
ctrl = 0
anim=3505

[State 4005, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 4005, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 0

[State 4005, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 4005, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 4005, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 4005, 3]
type = HitDef
trigger1 = AnimElem = 1,1
trigger2 = AnimElem = 2,1
trigger3 = AnimElem = 3,1
trigger4 = AnimElem = 4,1
trigger5 = AnimElem = 5,1
attr = A, HA
damage = 28, 8
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4, 3
sparkno = s7020+(random%8)
guard.sparkno=s7105
sparkxy = 10, -118
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 16
ground.velocity = 1, -16
air.velocity = 1, -16
air.hittime = 16
fall = 1
air.fall = 1

[State 4005, 3]
type = HitDef
trigger1 = AnimElem = 1,3
trigger2 = AnimElem = 2,3
trigger3 = AnimElem = 3,3
trigger4 = AnimElem = 4,3
trigger5 = AnimElem = 5,3
attr = A, HA
damage = 30, 10
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4, 3
sparkno = s7020+(random%8)
guard.sparkno=s7105
sparkxy = 0, -118
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 16
ground.velocity = -2, -16
air.velocity = -2, -16
air.hittime = 16
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
fall = 1
air.fall = 1

[State 4002, 4]
type = ChangeAnim
triggerall = Anim = 3505
trigger1 = Vel Y > 0
value = 1201

[State 4002, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 1206

;==========================================================================
[Statedef 3550]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3550
poweradd = 0
sprpriority = 3

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
trigger1 = AnimElem = 1
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

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -14,-68
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 3002, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
pos = 8, -80
anim = -1
sound = S40,1
movetime = 40
time = 50
poweradd = -1000
UNHITTABLE= 1

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

[State 3002, Super5]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0 && Time < 45
value = SCA
time = 1

[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,5

[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 20,2

[State xxx, Explod]
type = Explod
trigger1 = AnimElem = 4
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

[State 0, VelSet]
type = VelSet
trigger1 = ANIMELEM=2
x = 14
[State 0, VelAdd]
type = VelAdd
triggerALL = ANIMELEM <=5
trigger1 = ANIMELEM >=2
x = 2
[State 0, VelSet]
type = VelSet
trigger1 = ANIMELEM=6
trigger2=movehit
x = 0


[State 4000, 3]
type = HitDef
trigger1 = TIME=0
attr = S, HA
damage = 25, 5
animtype = Hard
guardflag = M
hitflag = MAF
priority = 6, Hit
pausetime =44, 45
sparkno = s7020+(random%8)
guard.sparkno=s7105
sparkxy = -30, -55
hitsound = S44, 0
guardsound = S21, 0
ground.type = Low
ground.hittime = 999
ground.velocity = 0
air.velocity = 0
air.hittime = 999
envshake.ampl = 6
envshake.time = 44
envshake.freq = 180
kill = 0
getpower=0
P2STATENO=4055

[State 3002, 4]
type = ChangeState
trigger1 = MOVEHIT
value = 3551
ctrl = 0
[State 3002, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==========================================================================
[Statedef 3551]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3551
poweradd = 0
sprpriority = 3

[State 0, TargetBind]
type = TargetBind
trigger1 = time=0
time = 10
pos = 45,0

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 1
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

[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,0
[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 14
value = 0,2
[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 17
value = 0,4
[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 22
value = 0,6
[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 32
value = 0,3

[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6||AnimElem = 14||AnimElem = 17
value = 20,2
[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 22||AnimElem = 34
value = 20,3

[State 4000, 3]
type = HitDef
trigger1 = animelem=7
attr = S, HA
damage = 25, 5
animtype = Hard
guardflag = M
hitflag = MAF
priority = 6, Hit
pausetime =42,44
sparkno = s7020+(random%8)
guard.sparkno=s7105
sparkxy = -20, -55
hitsound = S44, 4
guardsound = S21, 0
ground.type = Low
ground.hittime = 999
ground.velocity = 0
air.velocity = 0
air.hittime = 999
envshake.ampl = 4
envshake.time = 40
envshake.freq = 180
kill = 0
getpower=0

[State 4000, 3]
type = HitDef
trigger1 = animelem=15
attr = S, HA
damage = 35, 5
animtype = Hard
guardflag = M
hitflag = MAF
priority = 6, Hit
pausetime =48,48
sparkno = s7020+(random%8)
guard.sparkno=s7105
sparkxy = -30, -85
hitsound = S44,6
guardsound = S21, 0
ground.type = high
ground.hittime = 999
ground.velocity = 0
air.velocity = 0
air.hittime = 999
envshake.ampl = 8
envshake.time = 46
envshake.freq = 180
kill = 0
getpower=0

[State 4000, 3]
type = HitDef
trigger1 = animelem=18
attr = S, HA
damage = 30, 5
animtype = Hard
guardflag = M
hitflag = MAF
priority = 6, Hit
pausetime =52,55
sparkno = s7020+(random%8)
guard.sparkno=s7105
sparkxy = -20, -45
hitsound = S44,1
guardsound = S21, 0
ground.type = low
ground.hittime = 999
ground.velocity = 0
air.velocity = 0
air.hittime = 999
envshake.ampl = 6
envshake.time = 50
envshake.freq = 180
kill = 0
getpower=0

[State 4000, 3]
type = HitDef
trigger1 = animelem=24
attr = S, HA
damage = 35, 5
animtype = Hard
guardflag = M
hitflag = MAF
priority = 6, Hit
pausetime =44,42
sparkno = s7020+(random%8)
guard.sparkno=s7105
sparkxy = -30, -95
hitsound = S44,3
guardsound = S21, 0
ground.type = high
ground.hittime = 999
ground.velocity = 0
air.velocity = 0
air.hittime = 999
envshake.ampl = 5
envshake.time = 44
envshake.freq = 180
kill = 0
getpower=0

[State 1204, 3]
type = HitDef
trigger1 = animelem=34
attr = S, HA
damage = 75, 12
animtype = diagup
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 40, 20
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = -20, -75
hitsound = S44,2
guardsound = S21, 1
ground.type = High
ground.slidetime = 50
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
envshake.time = 30
envshake.ampl = 8
getpower=0

[State 0, Pause]
Type = Pause
Trigger1 = time = [126,150]
time = 4

[State 3002, 4]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1
;==========================================================================
[Statedef 3600]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
juggle = 1
anim = 3600
poweradd = 0
sprpriority = 4

[State 0, Explod]
type = Explod
trigger1 =animelem=6
anim =1110
ID = 1130
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 80
pausemovetime = 0
scale = .55,.5
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0

[State 0, Explod]
type = Explod
trigger1 =animelem=6
anim =1110
ID = 1130
pos = 0,-25
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 80
pausemovetime = 0
scale = .25,.35
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = 60
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
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
supermovetime = 60
pausemovetime =  60

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 1
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

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
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
supermovetime = 9999
pausemovetime =  9999

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6032
anim =6032
pos = -40,0
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

[State 3102, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -9,-70
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 3102, SuperPause]
type = SuperPause
trigger1 = AnimElem = 2
pos = -29, -70
anim = -1
sound = S40, 1
time = 45
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

;[State 3102, Velocity]
;type = PosAdd
;trigger1 = Time = 0
;x = 9.5

[State 3102, Velocity]
type = VelSet
trigger1 = AnimElem = 5, = 2
;x = 3
y = -6.5

[State 3102, Velocity]
type = VelSet
trigger1 = AnimElem = 10
y = 0

[State 3102, Push]
type = PlayerPush
trigger1 = AnimElem = 8, >0 && AnimElem = 57, <0
value = 0

[State 3102, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2, 1
channel = 0

;[State 3102, PlaySnd]
;type = PlaySnd
;trigger1 = AnimElem = 7
;value = 1, 2
;channel = 1


[State 3102, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 16
trigger3 = AnimElem = 22
trigger4 = AnimElem = 28
trigger5 = AnimElem = 34
trigger6 = AnimElem = 40
trigger7 = AnimElem = 46
trigger8 = AnimElem = 12
trigger9 = AnimElem = 15
trigger10 = AnimElem = 25
trigger11 = AnimElem = 33
value = 20,3
channel = 1

[State 3102, 3]
type = HitDef
trigger1 = AnimElem = 10
trigger2 = AnimElem = 11
trigger3 = AnimElem = 16
trigger4 = AnimElem = 17
trigger5 = AnimElem = 22
trigger6 = AnimElem = 23
trigger7 = AnimElem = 28
trigger8 = AnimElem = 29
trigger9 = AnimElem = 34
trigger10 = AnimElem = 35
trigger11 = AnimElem = 40
trigger12 = AnimElem = 41
trigger13 = AnimElem = 46
trigger14 = AnimElem = 47
attr = A, HA
damage = 8,1
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 2,2
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = 13, 0
guard.velocity = 9
air.velocity = 9.8, -1
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower=0

[State 3102, 3]
type = HitDef
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 19
trigger4 = AnimElem = 25
trigger5 = AnimElem = 26
trigger6 = AnimElem = 31
trigger7 = AnimElem = 32
trigger8 = AnimElem = 37
trigger9 = AnimElem = 38
trigger10 = AnimElem = 43
trigger11 = AnimElem = 44
trigger12 = AnimElem = 49
trigger13 = AnimElem = 50
attr = A, HA
damage = 10,2
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 2,2
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = -13, 0
guard.velocity = -9
air.velocity = -9.8, -1
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower=0

[State 3102, 3]
type = HitDef
trigger1 = AnimElem = 50
attr = A, HA
damage = 20, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 2, 2
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = -20,-8
air.velocity = -20,-8
air.hittime = 30
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
envshake.time = 10
envshake.ampl = 5
getpower=0

[State 3102, Velocity]
type = VelAdd
trigger1 = AnimElem = 52, > 0
y = 0.35

[State 3102, Change]
type = ChangeState
trigger1 = ((AnimElem = 52, > 0) && (Vel Y > 0) && (Pos Y >= 0))
value = 1105

;==========================================================================
[Statedef 3700]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 3205
poweradd = 0
sprpriority = 4

[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0
time = 140
add = -20,-100,-150
mul = 256,256,256
sinadd = 30,30,0,999999
invertall = 0
color = 0
;ignorehitpause = 0
;persistent = 1

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0
time = 140
add = -50,-100,-100
mul = 256,256,256
sinadd = 30,30,0,999999
invertall = 0
color = 200
;ignorehitpause = 0
;persistent = 1


[State 0, NotHitBy]
type = NotHitBy
trigger1 = ANIMELEM=1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 159
;ignorehitpause =
;persistent =

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = 60
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
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
supermovetime = 60
pausemovetime =  60

[State 7500, portrait]
type=helper
trigger1 = AnimElem = 1
helpertype=normal
stateno=7511
ID=7511
name="Super Charge Portrait"
postype=p1
supermovetime=300
ownpal=1

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
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
supermovetime = 9999
pausemovetime =  9999

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6032
anim =6032
pos = -40,0
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

[State 3002, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = TIME=0
value = S65,2
VOLUME=255
freqmul = 255

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -25,-72
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 3002, SuperPause]
type = SuperPause
trigger1 = AnimElem = 4
pos = 8, -80
anim = -1
sound = S40, 0
time = 45
poweradd = -3000

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

[State 3002, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 65,0
channel=2

[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 65,1
channel=2

[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4,0
channel = 1

[State xxx, Explod]
type = Explod
trigger1 = AnimElem = 6
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

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 4401
pos = 52, -62
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
scale = .6,.6
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Pause]
Type = Pause
Trigger1 = time = [20,22]
time = 6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = S8,1

[State 3002, 2]
type = Projectile
trigger1 = AnimElem = 7
projID = 4400
projanim = 4400
projsprpriority = 5
projpriority = 7
projremovetime=51
projhits = 40
projscale=.5,.5
offset = 72, -72
velocity = 0, 0
attr = S, HP
damage = 5,1
getpower = 0
givepower = 80
hitflag=MAFD
guardflag = MA
pausetime = 3,0
hitsound = S12,1
guardsound = S21, 2
sparkxy=-1
sparkno=-1
guard.sparkno=-1
ground.type = High
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = -3,-3
air.velocity = -.5,-.5
air.hittime = 30
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
palfx.time = 60
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 10
envshake.ampl = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = ANIMELEM= 1
value = S55,0

[State 0, EnvShake]
type = EnvShake
trigger1 = ANIMELEM= 1
time = 134
;freq = 60
ampl = 4
;phase = 90
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 12
anim = 4401
pos = 52, -62
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
scale = .75,.75
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 3002, 2]
type = Projectile
trigger1 = AnimElem = 12
projID = 4400
projanim = 4400
projsprpriority = 5
projpriority = 7
projremovetime=51
projhits = 40
projscale=.65,.65
offset = 72, -72
velocity = 0, 0
attr = S, HP
damage = 7,2
getpower = 0
givepower = 80
hitflag=MAFD
guardflag = MA
pausetime = 2,0
hitsound = S12,1
guardsound = S21, 2
sparkxy=-1
sparkno=-1
guard.sparkno=-1
ground.type = High
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = -3,-3
air.velocity = -.5,-.5
air.hittime = 30
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
palfx.time = 60
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 10
envshake.ampl = 5

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 17
anim = 4401
pos = 52, -62
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
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 3002, 2]
type = Projectile
trigger1 = AnimElem = 17
projID = 4400
projanim = 4400
projsprpriority = 5
projpriority = 7
projremovetime=51
projhits = 30
projscale=.9,1
offset = 72, -72
velocity = 0, 0
attr = S, HP
damage = 10,2
getpower = 0
givepower = 80
hitflag=MAFD
guardflag = MA
pausetime = 1,0
hitsound = S12,1
guardsound = S21, 2
sparkxy=-1
sparkno=-1
guard.sparkno=-1
ground.type = High
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = -20,-1
air.velocity = -20,-1
air.hittime = 30
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
palfx.time = 60
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 10
envshake.ampl = 5

[State 3002, 2]
type = Projectile
trigger1 = AnimElem = 21,15
projID = 4400
projanim = 4400
projsprpriority = 5
projpriority = 7
projremovetime=15
projhits = 1
projmiss = 1
projscale=.7,.7
offset = 72, -72
velocity = 0, 0
attr = S, HP
damage = 10,2
getpower = 0
givepower = 80
hitflag=MAFD
guardflag = MA
pausetime = 1,0
hitsound = S12,1
guardsound = S21, 2
sparkxy=-1
sparkno=-1
guard.sparkno=-1
ground.type = High
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = -20,-6
air.velocity = -20,-6
air.hittime = 30
air.fall = 1
fall = 1
air.recover = 0
fall.recover = 0
p2stateno = 9040
ground.cornerpush.veloff =  0
guard.cornerpush.veloff =  0
palfx.time = 60
palfx.add = 256, 128, 0
palfx.mul = 256, 128, 0
palfx.sinadd = 128, 128, 0, 3
palfx.invertall = 1
palfx.color = 0
envshake.time = 10
envshake.ampl = 5

[State 0, Helper]
type = Helper
triggerall = ProjHit&&P2Stateno =5000||P2stateno =5020
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

[State 0, Explod]
type = Explod
trigger1 = projhit=1
anim = 7020+(random%8)
ID =7020
pos = -20,-80
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 30,30
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = projguarded=1
anim = 7105
ID =7105
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
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 3002, 4]
type = ChangeState
trigger1 = ANIMTIME=0
value = 0
ctrl = 1

;==========================================================================
[Statedef 3800]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 970
poweradd = 0
sprpriority = 4

[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0
time = 40
add = -20,-100,-150
mul = 256,256,256
sinadd = 30,30,0,999999
invertall = 0
color = 0
;ignorehitpause = 0
;persistent = 1

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0
time = 40
add = -50,-100,-100
mul = 256,256,256
sinadd = 30,30,0,999999
invertall = 0
color = 200
;ignorehitpause = 0
;persistent = 1

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = 60
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
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
supermovetime = 60
pausemovetime =  60

[State 7500, portrait]
type=helper
trigger1 = AnimElem = 1
helpertype=normal
stateno=7511
ID=7511
name="Super Charge Portrait"
postype=p1
supermovetime=300
ownpal=1

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
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
supermovetime = 9999
pausemovetime =  9999

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6032
anim =6032
pos = -40,0
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
trigger1 = ANIMELEM=3
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -14,-48
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

[State 3000, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 3000, SuperPause]
type = SuperPause
trigger1 = AnimElem = 3
pos = 8, -80
anim = -1
sound = S40, 0
time = 45
poweradd = -3000

[State 3000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,0
channel = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 2,1
channel = 0

[State 3000, 4]
type = ChangeState
trigger1 = time=25
value = 3801
ctrl = 0
;==========================================================================
[Statedef 3801]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 3400
poweradd = 0
sprpriority = 4

[State 0, VelSet]
type = VelSet
trigger1 = time=0
x = 45

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

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 0
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = med
priority = 7, Hit
pausetime = 2,2
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -70
hitsound = S22, 0
guardsound = S21, 1
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -1
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -2, 55
air.hittime = 22
getpower=0
kill=0
p2stateno=4058

[State 3000, 4]
type = ChangeState
trigger1 = movehit
value = 3802
ctrl = 0
[State 3000, 4]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1
;==========================================================================
[Statedef 3802]
type = S
physics = S
movetype = A
anim = 3401
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

[State 0, BindToTarget]
type = BindToTarget
trigger1 = 1
pos = 30,0;,"Foot";"Mid","Head"

[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0
time = 650
add = -20,-100,-150
mul = 256,256,256
sinadd = 30,30,0,999999
invertall = 0
color = 0
;ignorehitpause = 0
;persistent = 1

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0
time = 650
add = -50,-100,-100
mul = 256,256,256
sinadd = 30,30,0,999999
invertall = 0
color = 200
;ignorehitpause = 0
;persistent = 1

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

[State 0, VelSet]
type = VelSet
trigger1 = time=0
x = 2


[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = med
priority = 7, Hit
pausetime = 2,4
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -70
hitsound = S22, 0
guardsound = S21, 1
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -1,22
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -2,55
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 0
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = Animelem=4
value = 3803
ctrl = 0
;==========================================================================
[Statedef 3803]
type = S
physics = S
movetype = A
anim = 3402
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

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

[State 0, VelSet]
type = VelSet
trigger1 = time=0
x = 6

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = med
priority = 7, Hit
pausetime = 2,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -80
hitsound = S22, 1
guardsound = S21, 1
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -1
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, 55
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 1
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3804
ctrl = 0
;==========================================================================
[Statedef 3804]
type = S
physics = S
movetype = A
anim = 3403
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

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

[State 0, VelSet]
type = VelSet
trigger1 = time=0
x = 2

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = med
priority = 7, Hit
pausetime = 2,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -80
hitsound = S22, 2
guardsound = S21, 1
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -1
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 2
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = Animelem=7
value = 3805
ctrl = 0

;==========================================================================
[Statedef 3805]
type = S
physics = S
movetype = A
anim = 3404
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

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

[State 0, VelSet]
type = VelSet
trigger1 = time=0
x = 2

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = med
priority = 7, Hit
pausetime = 2,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -60
hitsound = S22, 1
guardsound = S21, 1
ground.type = low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -1
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 0
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = Animelem=6
value = 3806
ctrl = 0

;==========================================================================
[Statedef 3806]
type = S
physics = S
movetype = A
anim = 3405
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

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

[State 0, VelSet]
type = VelSet
trigger1 = time=0
x = 2

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = med
priority = 7, Hit
pausetime = 2,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -40
hitsound = S22, 2
guardsound = S21, 1
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -1
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 1
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = Animelem=7
value = 3807
ctrl = 0

;==========================================================================
[Statedef 3807]
type = S
physics = S
movetype = A
anim = 3406
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

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

[State 0, VelSet]
type = VelSet
trigger1 = time=0
x = 2

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 7, Hit
pausetime = 2,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -60
hitsound = S22, 3
guardsound = S21, 1
ground.type = low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -1
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 2
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = Animelem=8
value = 3808
ctrl = 0
;==========================================================================
[Statedef 3808]
type = S
physics = S
movetype = A
anim = 3407
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

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

[State 0, VelSet]
type = VelSet
trigger1 = time=0
x = 2

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 7, Hit
pausetime = 2,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -50
hitsound = S22, 4
guardsound = S21, 1
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -1
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 1
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = Animelem=10
value = 3809
ctrl = 0
;==========================================================================
[Statedef 3809]
type = S
physics = S
movetype = A
anim = 3408
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

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

[State 0, VelSet]
type = VelSet
trigger1 = time=0
x = 2

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 7, Hit
pausetime = 2,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -80
hitsound = S22, 3
guardsound = S21, 1
ground.type = low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -1
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 2
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = Animelem=8
value = 3810
ctrl = 0
;==========================================================================
[Statedef 3810]
type = S
physics = S
movetype = A
anim = 3409
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

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

[State 0, VelSet]
type = VelSet
trigger1 = time=0
x = 2

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 7, Hit
pausetime = 2,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -60
hitsound = S22, 4
guardsound = S21, 1
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -1
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 3
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = Animelem=9
value = 3811
ctrl = 0
;==========================================================================
[Statedef 3811]
type = S
physics = S
movetype = A
anim = 3410
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

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

[State 0, VelSet]
type = VelSet
trigger1 = time=0
x = 2

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = med
priority = 7, Hit
pausetime = 2,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -90
hitsound = S22, 5
guardsound = S21, 1
ground.type = High
ground.slidetime = 44
ground.hittime = 44
ground.velocity = -1
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 44
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 2
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = animtime=0
value = 3812
ctrl = 0
;==========================================================================
[Statedef 3812]
type = S
physics = S
movetype = A
anim = 3411
velset = 0,0
poweradd = 0
juggle = 1
sprpriority = 1
ctrl = 0

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

[State 0, VelSet]
type = VelSet
trigger1 = time=0
x = 2

[State 200, Hit]
type = HitDef
trigger1 = Time = 0
damage = 10,2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = med
priority = 7, Hit
pausetime = 8,12
sparkno = s7020+(random%8)
guard.sparkno = s7105
sparkxy = -20, -90
hitsound = S22, 4
guardsound = S21, 1
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -1
airguard.velocity = -1.7, -0.7
air.type = High
air.velocity = -1.3, -2.5
air.hittime = 22
getpower=0
kill=0
envshake.time = 10
envshake.ampl = 5

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 3
channel = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = animelem=8
value = 3813
ctrl = 0
;==========================================================================
[Statedef 3813]
type = A
movetype = A
physics = N
velset = 0,0
poweradd = 0
ctrl = 0
sprpriority = 4
anim = 3412

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

;[State 720, Change]
;type = StateTypeSet
;trigger1 = AnimElem = 2, >0
;statetype = A

[State 720, Velocity]
type = PosAdd
trigger1 = Time = 0
x = 9.5

[State 720, Velocity]
type = VelSet
trigger1 = AnimElem = 2, = 1
x = 3
y = -3

;[State 720, Velocity]
;type = Gravity
;trigger1 = Time >= 0 && Time <= 28
;ignorehitpause = 0
;persistent = 1

[State 720, Velocity]
type = VelAdd
trigger1 = AnimElem = 3, > 0
y = 0.35

[State 720, 2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 20, 2
channel = 1

[State 720, 2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0, 2
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S47,0

[State 720, 3]
type = HitDef
trigger1 = time=0
attr = S, NA
damage = 22, 4
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 15
guard.sparkno = s7100
sparkno = s7020+(random%8)
sparkxy = -20, -76
hitsound = S44, 0
guardsound = S45, 0
ground.type = High
ground.slidetime = 22
ground.hittime = 33
ground.velocity = -2
airguard.velocity = -2.7, -1.7
air.type = High
air.velocity = -1.8, -2.9
air.hittime = 33
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0

[State 720, Change]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 3814
;==========================================================================
[Statedef 3814]
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
value = 3815
ctrl = 0

;==========================================================================
[Statedef 3815]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
juggle = 1
anim = 3414
poweradd = 0
sprpriority = 4


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S47,1

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

[State 1102, Velocity]
type = PosAdd
trigger1 = Time = 0
x = 9.562

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
trigger1 = AnimElem = 7
attr = A, SA
damage = 20, 5
animtype = light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4, 4
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = -20, -50
hitsound = S44, 1
guardsound = S45, 1
ground.type = High
ground.hittime = 44
ground.slidetime = 6
ground.velocity = 1
air.velocity = -1, -2.5
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0

[State 1102, 3]
type = HitDef
trigger1 = AnimElem = 13
attr = A, SA
damage = 20, 5
animtype = med
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4, 4
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = -20, -50
hitsound = S44, 1
guardsound = S45, 1
ground.type = High
ground.hittime = 44
ground.slidetime = 6
ground.velocity = 1
air.velocity = -1, -2.5
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0

[State 1102, 3]
type = HitDef
trigger1 = AnimElem = 19
attr = A, SA
damage = 20, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4, 4
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = -20, -50
hitsound = S44, 1
guardsound = S45, 1
ground.type = High
ground.hittime = 44
ground.slidetime = 6
ground.velocity = 1
air.velocity = -1, -2.5
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0

[State 1102, 3]
type = HitDef
trigger1 = AnimElem = 25
attr = A, SA
damage = 20, 5
animtype = back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4, 4
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = -20, -50
hitsound = S44, 1
guardsound = S45, 1
ground.type = High
ground.hittime = 44
ground.slidetime = 12
ground.velocity = 1
air.velocity = -1, -2.5
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0


[State 1102, Velocity]
type = VelAdd
trigger1 = AnimElem = 31, > 0
y = 0.35

[State 1102, Change]
type = ChangeState
trigger1 = ((AnimElem = 31, > 0) && (Vel Y > 0) && (Pos Y >= 0))
value = 3816
;==========================================================================
[Statedef 3816]
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
value = 3817
ctrl = 0

;==========================================================================
[Statedef 3817]
type = S
movetype = A
physics = S
poweradd = 0
ctrl = 0
anim = 3300
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
value = 2,2
channel = 1

[State 1200, 3]
type = HitDef
trigger1 = AnimElem = 3 && HitCount < 2
trigger2 = AnimElem = 4 && HitCount < 2
attr = S, SA
damage = 20, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 2, 22
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 2
guardsound = S21, 2
ground.type = High
ground.hittime = 44
ground.velocity = -3
air.velocity = -2, -2
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0

[State 1200, 4]
type = ChangeState
trigger1 = AnimElem = 4
value = 3818
;==========================================================================
[Statedef 3818]
type = A
movetype = A
physics = A
velset = 8, -4 ;6.01, -6

[State 1201, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 1201, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S20,1

[State 1201, 3]
type = HitDef
trigger1 = AnimElem = 4 && HitCount < 2
attr = A, SA
damage = 20, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 2, 22
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 2
guardsound = S21, 2
ground.type = High
ground.hittime = 44
ground.velocity = -6
air.velocity = -5, -3
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0

[State 1201, 4]
type = ChangeAnim
triggerall = Anim = 3300
trigger1 = Vel Y > 0
value = 1201

[State 1201, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 3819
;==========================================================================
[Statedef 3819]
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
value = 3820
ctrl = 0
;==========================================================================
[Statedef 3820]
type = S
movetype = A
physics = S
poweradd = 0
ctrl = 0
anim = 3300
sprpriority = 4
velset = 0,0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,0
channel = 0

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

[State 1200, 3]
type = HitDef
trigger1 = AnimElem = 3 && HitCount < 2
trigger2 = AnimElem = 4 && HitCount < 2
attr = S, SA
damage = 20, 6
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 22
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 2
guardsound = S21, 2
ground.type = High
ground.slidetime = 44
ground.hittime = 44
ground.velocity = -3
air.velocity = -2, -4
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0

[State 1200, 4]
type = ChangeState
trigger1 = AnimElem = 4
value = 3821
;==========================================================================
[Statedef 3821]
type = A
movetype = A
physics = A
velset = 9, -6 ;6.01, -6

[State 1201, 1]
type = VelMul
trigger1 = 1
x = .92

[State 1201, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S20,1

[State 1201, 3]
type = HitDef
trigger1 = AnimElem = 4 && HitCount < 2
attr = A, SA
damage = 20, 4
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 22
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 2
guardsound = S21, 2
ground.type = High
ground.slidetime = 44
ground.hittime = 44
ground.velocity = -8
air.velocity = -1, -4
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0

[State 1201, 4]
type = ChangeAnim
triggerall = Anim = 3300
trigger1 = Vel Y > 0
value = 1201

[State 1201, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 3822
;==========================================================================
[Statedef 3822]
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
value = 3823
ctrl = 0
;==========================================================================
[Statedef 3823]
type = S
movetype = A
physics = S
poweradd = 0
ctrl = 0
anim = 3300
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

[State 1200, 3]
type = HitDef
trigger1 = AnimElem = 3 && HitCount < 2
trigger2 = AnimElem = 4 && HitCount < 2
attr = S, SA
damage = 10, 2
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 22
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 2
guardsound = S21, 2
ground.type = low
ground.slidetime = 44
ground.hittime = 44
ground.velocity = -3
air.velocity = -2
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0

[State 1200, 4]
type = ChangeState
trigger1 = AnimElem = 4
value = 3824
;==========================================================================
[Statedef 3824]
type = A
movetype = A
physics = A
velset = 12, -8 ;6.01, -6

[State 1201, 1]
type = VelMul
trigger1 = 1
x = .92
y = 1

[State 1201, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S20,1

[State 1201, 3]
type = HitDef
trigger1 = AnimElem = 4 && HitCount < 2
attr = A, SA
damage = 10, 2
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 45
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 2
guardsound = S21, 2
ground.type = low
ground.slidetime = 34
ground.hittime = 44
ground.velocity = -2
air.velocity = -2
air.hittime = 44
envshake.time = 10
envshake.ampl = 5
getpower=0
kill=0

[State 1201, 4]
type = ChangeAnim
triggerall = Anim = 3300
trigger1 = Vel Y > 0
value = 1201

[State 1201, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 3825
;==========================================================================
[Statedef 3825]
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
value = 3826
ctrl = 0

;----------------------------------------------------------------------------
[Statedef 3826]
type = S
movetype = A
physics = S
ctrl = 0
anim = 4001
sprpriority = 4
velset = 0,0

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

[State 3000, Explod]
type = Explod
trigger1 = time=0
removetime = -1
id =6032
anim =6032
pos = -40,0
postype = Left
scale = 1.2,1.2
sprpriority = -2
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

[State 4001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2,3
channel = 0

[State 4001, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 47,0
[State 4001, PlaySnd]
type = PlaySnd
trigger1 = animelem=4
value = 47,1

[State 0, Pause]
Type = Pause
Trigger1 = time = [0,250]
time = 4
movetime = 1

[State 4001, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
damage = 20, 4
animtype = up
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 30, 15
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -78
hitsound = S44,1
guardsound = S45, 0
ground.type = high
ground.hittime = 999
ground.velocity = 2
air.velocity = 2
air.hittime = 999
envshake.ampl = 3
envshake.time = 30
envshake.freq = 180
air.fall = 0
getpower=0
kill=0

[State 4001, Change]
type = ChangeState
trigger1 = AnimElem = 4
value = 3827
ctrl = 0
;------------------------------------------
[Statedef 3827]
type = A
movetype = A
physics = A
velset = 3,-14
juggle = 1


[State 4002, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 4002, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=20
trigger2 = time=40
trigger3 = time=60
value = S4,1

[State 0, Pause]
Type = Pause
Trigger1 = time = [0,30]
time = 6
movetime = 1

[State 4001, PlaySnd]
type = PlaySnd
trigger1 = time=10
value = 47,2

[State 3002, 2]
type = Projectile
triggerall = anim = 4001
trigger1 = AnimElem = 5
projID = 3310
projanim = 3310
projsprpriority = 7
projpriority = 7
projremove = 1
projremovetime =38
projmiss = -1
projscale=.5,2
projhits = 6
animtype = up
offset = 0,200
velocity = 0,-6
attr = S, HP
damage =  20,3
getpower = 0
givepower = 80
hitflag=MAFD
guardflag = MA
pausetime = 3,6
sparkno = -1
guard.sparkno=-1
sparkxy = 0, -1
hitsound = S44,2
guardsound = S45,1
ground.type = High
ground.slidetime = 4
ground.hittime = 20
ground.velocity = -3,-13
air.velocity = -3, -14
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 1
fall = 1
air.fall = 1
getpower=0
;Thunder Shocked
palfx.time = 80
palfx.add = 40,-70,-200
palfx.mul = 256,256,256
palfx.sinadd = -154,-145,0,10
palfx.invertall = 0
palfx.color = 0

[State 0, Explod]
type = Explod
trigger1 = projhit=6
anim = 7020+(random%8)
ID =7000
pos = 10,-80
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

[State 0, Explod]
type = Explod
trigger1 = projguarded=6
anim = 7105
ID =7000
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

[State 4002, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = A, HA
damage = 20, 2
animtype = UP
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 20, 5
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -78
hitsound = S44,0
guardsound = S45, 0
ground.type = low
ground.hittime = 99
ground.velocity = -1, -15
air.velocity = -1, -15
air.hittime = 99
kill = 0
fall.recover = 0
envshake.ampl = 3
envshake.time = 30
envshake.freq = 180
getpower=0
fall=1

[State 4002, 3]
type = HitDef
trigger1 = AnimElem = 5
attr = A, HA
damage = 25, 5
animtype = Hard
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 30, 30
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -88
hitsound = S44,0
guardsound = S45, 0
ground.type = High
ground.hittime = 99
ground.velocity = -1, -15
air.velocity = -1, -15
air.hittime = 99
kill = 1
fall = 1
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
envshake.ampl = 3
envshake.time = 30
envshake.freq = 180
getpower=0
kill=0

[State 4002, 4]
type = ChangeAnim
triggerall = Anim = 4001
trigger1 = Vel Y > 0
value = 4002

[State 4002, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 4009

;==========================================================================
[Statedef 3900]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
juggle = 1
anim = 3900
poweradd = 0
sprpriority = 4

[State 3100, Explod]
type = Explod
trigger1 = Time = 0
removetime = 60
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
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
supermovetime = 60
pausemovetime =  60

[State 4001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,2
channel = 2

[State 4001, PlaySnd]
type = PlaySnd
TRIGGERALL=ANIM=3900
trigger1 = AnimElem = 4
value = 2,1
channel = 2

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

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6034
anim =6034
pos = 0,-20
postype = Left
scale = 1.2,1.2
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
supermovetime = 9999
pausemovetime =  9999

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 3
removetime = -1
id =6032
anim =6032
pos = -40,0
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

[state 2100, Vacuum]
type = Helper
trigger1 = Time >= 4
ID = 22161
name = "Vacuum"
postype = P2
pos = enemynear,const(size.ground.back)-25,-ceil(enemy,pos y)
stateno = 22161
persistent = 0
size.ground.back = 5
size.ground.front = 5
size.height = 240
persistent = 0

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

[State 3102, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -29,-70
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 3102, SuperPause]
type = SuperPause
trigger1 = AnimElem = 2
pos = -29, -70
anim = -1
sound = S40,0
movetime = 6
poweradd = -3000

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

;[State 3102, Velocity]
;type = PosAdd
;trigger1 = Time = 0
;x = 9.5

[State 3102, Velocity]
type = VelSet
trigger1 = AnimElem = 5, = 2
;x = 3
y = -6.5

[State 3102, Velocity]
type = VelSet
trigger1 = AnimElem = 10
y = 0

[State 3102, Push]
type = PlayerPush
trigger1 = AnimElem = 8, >0 && AnimElem = 153, <0
value = 0

;[State 3102, PlaySnd]
;type = PlaySnd
;trigger1 = AnimElem = 7
;value = 1, 2
;channel = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 20229
pos = 0,40
postype = p1  ;p2,front,back,left,right

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 7
trigger2 = AnimElem = 7
trigger3 = AnimElem = 14
trigger4 = AnimElem = 21
trigger5 = AnimElem = 28
trigger6 = AnimElem = 35
trigger7 = AnimElem = 42
trigger8 = AnimElem = 49
trigger9 = AnimElem = 56
trigger10 = AnimElem = 63
trigger11 = AnimElem = 70
trigger12 = AnimElem = 77
trigger13 = AnimElem = 84
trigger14 = AnimElem = 91
trigger15 = AnimElem = 98
trigger16 = AnimElem = 105
trigger17 = AnimElem = 112
trigger18 = AnimElem = 119
trigger19 = AnimElem = 126
trigger20 = AnimElem = 133
anim = 1601
pos = 30,40
postype = p1
scale=.5,.5

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 10
trigger2 = AnimElem = 17
trigger3 = AnimElem = 24
trigger4 = AnimElem = 31
trigger5 = AnimElem = 38
trigger6 = AnimElem = 45
trigger7 = AnimElem = 52
trigger8 = AnimElem = 59
trigger9 = AnimElem = 66
trigger10 = AnimElem = 73
trigger11 = AnimElem = 80
trigger12 = AnimElem = 87
trigger13 = AnimElem = 94
trigger14 = AnimElem = 101
trigger15 = AnimElem = 108
trigger16 = AnimElem = 115
trigger17 = AnimElem = 122
trigger18 = AnimElem = 129
trigger19 = AnimElem = 136
trigger20 = AnimElem = 143
anim = 1602
pos = -30,40
postype = p1
scale=.5,.5

[State 3102, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 16
trigger3 = AnimElem = 22
trigger4 = AnimElem = 28
trigger5 = AnimElem = 34
trigger6 = AnimElem = 40
trigger7 = AnimElem = 46
trigger8 = AnimElem = 52
trigger9 = AnimElem = 58
trigger10 = AnimElem = 64
trigger11 = AnimElem = 70
trigger12 = AnimElem = 76
trigger13 = AnimElem = 82
trigger14 = AnimElem = 88
trigger15 = AnimElem = 94
trigger16 = AnimElem = 100
trigger17 = AnimElem = 106
trigger18 = AnimElem = 112
trigger19 = AnimElem = 118
trigger20 = AnimElem = 124
trigger21 = AnimElem = 130
trigger22 = AnimElem = 136
value = 20,3
channel = 1

[State 3102, 3]
type = HitDef
trigger1 = AnimElem = 10
trigger2 = AnimElem = 11
trigger3 = AnimElem = 16
trigger4 = AnimElem = 17
trigger5 = AnimElem = 22
trigger6 = AnimElem = 23
trigger7 = AnimElem = 28
trigger8 = AnimElem = 29
trigger9 = AnimElem = 34
trigger10 = AnimElem = 35
trigger11 = AnimElem = 40
trigger12 = AnimElem = 41
trigger13 = AnimElem = 46
trigger14 = AnimElem = 47
attr = A, HA
damage = 2,1
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 1, 1
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = 13, 0
guard.velocity = 9
air.velocity = 9.8, -1
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower=0
;Thunder Shocked
palfx.time = 150
palfx.add = 40,-70,-200
palfx.mul = 256,256,256
palfx.sinadd = -154,-145,0,10
palfx.invertall = 0
palfx.color = 0

[State 3102, 3]
type = HitDef
trigger1 = AnimElem = 52
trigger2 = AnimElem = 53
trigger3 = AnimElem = 58
trigger4 = AnimElem = 59
trigger5 = AnimElem = 64
trigger6 = AnimElem = 65
trigger7 = AnimElem = 70
trigger8 = AnimElem = 71
trigger9 = AnimElem = 76
trigger10 = AnimElem = 77
trigger11 = AnimElem = 82
trigger12 = AnimElem = 83
trigger13 = AnimElem = 88
trigger14 = AnimElem = 89
attr = A, HA
damage = 4,1
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 1, 1
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = 13, 0
guard.velocity = 9
air.velocity = 9.8, -1
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower=0
;Thunder Shocked
palfx.time = 150
palfx.add = 40,-70,-200
palfx.mul = 256,256,256
palfx.sinadd = -154,-145,0,10
palfx.invertall = 0
palfx.color = 0

[State 3102, 3]
type = HitDef
trigger1 = AnimElem = 94
trigger2 = AnimElem = 95
trigger3 = AnimElem = 100
trigger4 = AnimElem = 101
trigger5 = AnimElem = 106
trigger6 = AnimElem = 107
trigger7 = AnimElem = 112
trigger8 = AnimElem = 113
trigger9 = AnimElem = 118
trigger10 = AnimElem = 119
trigger11 = AnimElem = 124
trigger12 = AnimElem = 125
trigger13 = AnimElem = 130
trigger14 = AnimElem = 131
attr = A, HA
damage = 4,1
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 1, 1
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = 13, 0
guard.velocity = 9
air.velocity = 9.8, -1
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower=0
;Thunder Shocked
palfx.time = 150
palfx.add = 40,-70,-200
palfx.mul = 256,256,256
palfx.sinadd = -154,-145,0,10
palfx.invertall = 0
palfx.color = 0

[State 3102, 3]
type = HitDef
trigger1 = AnimElem = 136
trigger2 = AnimElem = 137
attr = A, HA
damage = 4,1
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 1, 1
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = 13, 0
guard.velocity = 9
air.velocity = 9.8, -1
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower=0
;Thunder Shocked
palfx.time = 150
palfx.add = 40,-70,-200
palfx.mul = 256,256,256
palfx.sinadd = -154,-145,0,10
palfx.invertall = 0
palfx.color = 0

[State 3102, 3]
type = HitDef
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 19
trigger4 = AnimElem = 25
trigger5 = AnimElem = 26
trigger6 = AnimElem = 31
trigger7 = AnimElem = 32
trigger8 = AnimElem = 37
trigger9 = AnimElem = 38
trigger10 = AnimElem = 43
trigger11 = AnimElem = 44
trigger12 = AnimElem = 49
trigger13 = AnimElem = 50
attr = A, HA
damage = 4,1
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 1, 1
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = -13, 0
guard.velocity = -9
air.velocity = -9.8, -1
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower=0
;Thunder Shocked
palfx.time = 150
palfx.add = 40,-70,-200
palfx.mul = 256,256,256
palfx.sinadd = -154,-145,0,10
palfx.invertall = 0
palfx.color = 0

[State 3102, 3]
type = HitDef
trigger1 = AnimElem = 55
trigger2 = AnimElem = 56
trigger3 = AnimElem = 62
trigger4 = AnimElem = 67
trigger5 = AnimElem = 68
trigger6 = AnimElem = 73
trigger7 = AnimElem = 74
trigger8 = AnimElem = 79
trigger9 = AnimElem = 80
trigger10 = AnimElem = 85
trigger11 = AnimElem = 86
trigger12 = AnimElem = 91
trigger13 = AnimElem = 92
attr = A, HA
damage = 6,1
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 1, 1
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = -13, 0
guard.velocity = -9
air.velocity = -9.8, -1
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower=0
;Thunder Shocked
palfx.time = 150
palfx.add = 40,-70,-200
palfx.mul = 256,256,256
palfx.sinadd = -154,-145,0,10
palfx.invertall = 0
palfx.color = 0

[State 3102, 3]
type = HitDef
trigger1 = AnimElem = 97
trigger2 = AnimElem = 98
trigger3 = AnimElem = 103
trigger4 = AnimElem = 104
trigger5 = AnimElem = 109
trigger6 = AnimElem = 110
trigger7 = AnimElem = 115
trigger8 = AnimElem = 116
trigger9 = AnimElem = 121
trigger10 = AnimElem = 122
trigger11 = AnimElem = 127
trigger12 = AnimElem = 128
attr = A, HA
damage = 8,1
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 1, 1
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = -13, 0
guard.velocity = -9
air.velocity = -9.8, -1
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower=0
;Thunder Shocked
palfx.time = 150
palfx.add = 40,-70,-200
palfx.mul = 256,256,256
palfx.sinadd = -154,-145,0,10
palfx.invertall = 0
palfx.color = 0

[State 3102, 3]
type = HitDef
trigger1 = AnimElem = 133
trigger2 = AnimElem = 134
attr = A, HA
damage = 8,1
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 1, 1
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
ground.hittime = 15
ground.slidetime = 15
ground.velocity = -13, 0
guard.velocity = -9
air.velocity = -9.8, -1
air.hittime = 15
fall = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5
getpower=0
;Thunder Shocked
palfx.time = 150
palfx.add = 40,-70,-200
palfx.mul = 256,256,256
palfx.sinadd = -154,-145,0,10
palfx.invertall = 0
palfx.color = 0

[State 3102, 3]
type = HitDef
trigger1 = AnimElem <= 142
attr = A, HA
damage = 30, 6
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 2, 2
guard.sparkno = s7105
sparkno = s7020+(random%8)
sparkxy = 0, -50
hitsound = S12, 0
guardsound = S21, 2
ground.type = High
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
envshake.time = 10
envshake.ampl = 5
getpower=0
;Thunder Shocked
palfx.time = 100
palfx.add = 40,-70,-200
palfx.mul = 256,256,256
palfx.sinadd = -154,-145,0,10
palfx.invertall = 0
palfx.color = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 8
helpertype = normal ;player
name = "lightning"
ID = 3901
stateno = 3901
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, Explod]
type = Explod
trigger1 = movehit=1
anim = 3902
ID = 3902
pos = 0,-70
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 40,70
removetime = -2
supermove
pausemove
scale = .3,.3
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
trigger2 = animelem = 80
value = S60,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit=1
value = S60,0+(random%3)

[State 3102, Velocity]
type = VelAdd
trigger1 = AnimElem = 148, > 0
y = 0.35

[State 3102, Change]
type = ChangeState
trigger1 = ((AnimElem = 148, > 0) && (Vel Y > 0) && (Pos Y >= 0))
value = 1105

;=======================================================================
;==========================================================================
;DX SUPER Moves
;==========================================================================
;DX Shin Shouryuuken
;==========================================================================
[Statedef 4000]
type = S
movetype = A
physics = S
poweradd = 0
juggle = 1
velset = 0,0
ctrl = 0
anim = 4000
sprpriority = 4


[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 1
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
removetime = 120
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

[State 4000, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 4000, SuperPause]
type = SuperPause
trigger1 = time = 0
pos = 16, -80
anim = -1
sound = S40, 1
poweradd = -1000
darken = 0
time = 30
movetime = 0

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -20,-60
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

[State 4000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State xxx, Explod]
type = Explod
trigger1 = AnimElem = 4
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

[State 4000, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
damage = 25, 5
animtype = Hard
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 60, 60
sparkno = s7020+(random%8)
guard.sparkno=s7105
sparkxy = -10, -85
hitsound = S22, 4
guardsound = S21, 0
ground.type = Low
ground.hittime = 999
ground.velocity = 0
air.velocity = 0
air.hittime = 999
envshake.ampl = 3
envshake.time = 60
envshake.freq = 180
kill = 0
getpower=0
P2STATENO=4057

[State 0, TargetBind]
type = TargetBind
trigger1 =movehit
pos = FLOOR(45 * const(size.xscale)), FLOOR(-25 * const(size.yscale))
ignorehitpause=1

[State 4000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,1
channel = 0

[State 4000, 4]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
damage = 50, 5
animtype = Hard
guardflag = M
hitflag = MAF
priority = 5, Hit
pausetime = 32, 38
sparkno = s7020+(random%8)
guard.sparkno=s7105
sparkxy = 0, -48
hitsound = S44,0
guardsound = S21, 0
ground.type = High
ground.hittime = 10
ground.velocity = -2, -7.5
air.velocity = -2, -5.5
air.hittime = 10
fall = 1
air.fall = 1
getpower=0

[State 4000, Change]
type = ChangeState
triggerall = Anim = 4000
trigger1 = AnimElem = 4,<= 2 && MoveHit = 1
value = 4001

[State 4000, Change]
type = ChangeState
trigger1 = AnimElem = 4 && MoveGuarded
trigger2 = AnimElem = 5
value = 4005
ctrl = 0

[Statedef 4001]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
anim = 4001
sprpriority = 4
velset = 0,0

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

[State 4001, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 4001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 4001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,2
channel = 0

[State 4001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2,3
channel = 0

[State 4001, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
damage = 55, 5
animtype = hard
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 100, 125
sparkno = s7020+(random%8)
guard.sparkno=s7105
sparkxy = 10, -95
hitsound = S44,1
guardsound = S21, 0
ground.type = low
ground.hittime = 999
ground.velocity = 4, -5.5
air.velocity = 2, -5.5
air.hittime = 999
envshake.ampl = 4
envshake.time = 100
envshake.freq = 180
kill = 0
getpower=0

[State 0, TargetBind]
type = TargetBind
trigger1 = movehit
pos = FLOOR(15 * const(size.xscale)), FLOOR(-28 * const(size.yscale))
ignorehitpause = 1

[State 0, Explod]
type = Explod
triggerall=anim=4001
trigger1 = animelem = 4
anim = 3501
ID = 3501
pos = 10,80
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 9999
pausemove = 9999
scale = .8,.8
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0
;persistent =

[State 4001, Change]
type = ChangeState
trigger1 = AnimElem = 4
value = 4002
ctrl = 0

[Statedef 4002]
type = A
movetype = A
physics = A
velset = 3,-15
juggle = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time=0
id =6036
;ignorehitpause =
;persistent =

[State 4002, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 4002, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 4002, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 4002, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 4002, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 0

[State 4002, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = A, HA
damage = 50, 20
animtype = up
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 10, 10
sparkno = s7020+(random%8)
guard.sparkno=s7105
sparkxy = 0, -98
hitsound = S44, 2
guardsound = S21, 0
ground.type = High
ground.hittime = 99
ground.velocity = -1, -18
air.velocity = -1, -18
air.hittime = 99
kill = 0
fall = 1
air.fall = 1
fall.recover = 0
envshake.ampl = 3
envshake.time = 30
envshake.freq = 180
getpower=0

[State 4002, 3]
type = HitDef
trigger1 = AnimElem = 5
attr = A, HA
damage = 100, 30
animtype = UP
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 30, 20
sparkno = s7020+(random%8)
guard.sparkno=s7105
sparkxy = 0, -110
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 99
ground.velocity = -1, -12
air.velocity = -1, -12
air.hittime = 99
kill = 1
fall = 1
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
envshake.ampl = 3
envshake.time = 30
envshake.freq = 180
getpower=0

[State 4002, 4]
type = ChangeAnim
triggerall = Anim = 4001
trigger1 = Vel Y > 0
value = 4002

[State 4002, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 4009

[Statedef 4005]
type = A
movetype = A
physics = A
velset = 6,-13
juggle = 1
ctrl = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 6035
;ignorehitpause =
;persistent =

[State 4005, 1]
type = VelMul
trigger1 = 1
x = 0.9

[State 4005, 2]
type = VelSet
trigger1 = Vel Y > 0
x = 0

[State 4005, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 4005, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 4005, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 0, Explod]
type = Explod
triggerall=anim=4000
trigger1 = animelem = 5
anim = 3501
ID = 3501
pos = 15,75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 9999
pausemove = 9999
scale = .6,1
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0
;persistent =

[State 4005, 3]
type = HitDef
trigger1 = (AnimElem = 5,1)
trigger2 = (AnimElem = 5,2)
trigger3 = (AnimElem = 5,3)
trigger4 = (AnimElem = 5,4)
trigger5 = (AnimElem = 5,5)
trigger6 = (AnimElem = 5,6)
trigger7 = (AnimElem = 5,7)
trigger8 = (AnimElem = 5,8)
trigger9 = (AnimElem = 5,9)
trigger10 = (AnimElem = 5,10)
attr = A, HA
damage = 25, 5
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4, 3
sparkno = s7020+(random%8)
guard.sparkno=s7105
sparkxy = 0, -98
hitsound = S22, 4
guardsound = S21, 0
ground.type = High
ground.hittime = 16
ground.velocity = -2, -5.5
air.velocity = -2, -5.5
air.hittime = 16
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
fall = 1
air.fall = 1
getpower=0

[State 4002, 4]
type = ChangeAnim
triggerall = Anim = 4000
trigger1 = Vel Y > 0
value = 1201

[State 4002, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -5
value = 4010

[Statedef 4009]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
anim = 4003

[State 4009, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 4009, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 4009, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 4009, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 4009, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 4010]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
anim = 1102

[State 4010, Shadows]
type = AfterImage
trigger1 = AnimElem = 1
time = 2
trans = add1

[State 4010, ShadowTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 1 && Time < 60
time = 2

[State 4010, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 4010, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 4010, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 4055]
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

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 4055  ;<=======custom animation
;---------------------------------------------------------------------------
[Statedef 4056]
type    = S
movetype= H
physics = S
juggle = 1
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 1
facep2 = 1

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 4056  ;<=======custom animation
;---------------------------------------------------------------------------
[Statedef 4057]
type    = S
movetype= H
physics = S
juggle = 1
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 1
facep2 = 1

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -35

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 4057  ;<=======custom animation

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

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 4058  ;<=======custom animation

;---------------------------------------------------------------------------
[Statedef 44059]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 0
facep2 = 1
juggle=0

[State 0, PalFx]
type = PalFX
trigger1 = 1
time = 1
add = 240,240,0
mul = 222,222,222
sinadd = -154,-145,0,10
invertall = 0
color = 0
;ignorehitpause = 0
;persistent = 1

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 1
value = -250
kill = 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 8
trigger2 = time = 22
trigger3 = time = 40
trigger4 = time = 56
trigger5 = time = 72
value = -15
kill = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 8
trigger2 = time = 22
trigger3 = time = 40
trigger4 = time = 56
trigger5 = time = 72
time = 5
freq = 40
ampl = -4
phase = 60

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 4059

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 907, 3]
type = selfstate
trigger1 = Time = 80 ;time in dizzy
ctrl = 1
value = 0

[State 907, 3]
type = selfState
trigger1 = life=0 ;time in dizzy
ctrl = 0
value = 5035
;---------------------------------------------------------------------------
[Statedef 44060]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 0
facep2 = 1
juggle=0

[State 0, PalFx]
type = PalFX
trigger1 = 1
time = 1
add = 240,240,0
mul = 222,222,222
sinadd = -154,-145,0,10
invertall = 0
color = 0
;ignorehitpause = 0
;persistent = 1

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 1
value = -250
kill = 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 8
trigger2 = time = 22
trigger3 = time = 40
trigger4 = time = 56
trigger5 = time = 72
trigger6 = time = 88
trigger7 = time = 102
trigger8 = time = 118
value = -15
kill = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 8
trigger2 = time = 22
trigger3 = time = 40
trigger4 = time = 56
trigger5 = time = 72
trigger6 = time = 88
trigger7 = time = 102
trigger8 = time = 118
time = 5
freq = 40
ampl = -4
phase = 60

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 4059

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 907, 3]
type = selfstate
trigger1 = Time = 130 ;time in dizzy
ctrl = 1
value = 0

[State 907, 3]
type = selfState
trigger1 = life=0 ;time in dizzy
ctrl = 0
value = 5035
;---------------------------------------------------------------------------
[Statedef 44061]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 0
facep2 = 1
juggle=0

[State 0, PalFx]
type = PalFX
trigger1 = 1
time = 1
add = 240,240,0
mul = 222,222,222
sinadd = -154,-145,0,10
invertall = 0
color = 0
;ignorehitpause = 0
;persistent = 1

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 1
value = -250
kill = 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 8
trigger2 = time = 22
trigger3 = time = 40
trigger4 = time = 56
trigger5 = time = 72
trigger6 = time = 88
trigger7 = time = 102
trigger8 = time = 118
trigger9 = time = 132
trigger10 = time = 148
value = -15
kill = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 8
trigger2 = time = 22
trigger3 = time = 40
trigger4 = time = 56
trigger5 = time = 72
trigger6 = time = 88
trigger7 = time = 102
trigger8 = time = 118
trigger9 = time = 132
trigger10 = time = 148
time = 5
freq = 40
ampl = -4
phase = 60

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 4059

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 907, 3]
type = selfstate
trigger1 = Time = 190 ;time in dizzy
ctrl = 1
value = 0

[State 907, 3]
type = selfState
trigger1 = life=0 ;time in dizzy
ctrl = 0
value = 5035
;---------------------------------------------------------------------------
[Statedef 44062]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 0
facep2 = 1
juggle=0

[State 0, PalFx]
type = PalFX
trigger1 = 1
time = 1
add = 240,240,0
mul = 222,222,222
sinadd = -154,-145,0,10
invertall = 0
color = 0
;ignorehitpause = 0
;persistent = 1

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 1
value = -250
kill = 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 8
trigger2 = time = 22
trigger3 = time = 40
trigger4 = time = 56
trigger5 = time = 72
trigger6 = time = 88
trigger7 = time = 102
trigger8 = time = 118
trigger9 = time = 132
trigger10 = time = 148
trigger11 = time = 164
trigger12 = time = 180
trigger13 = time = 196
value = -15
kill = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 8
trigger2 = time = 22
trigger3 = time = 40
trigger4 = time = 56
trigger5 = time = 72
trigger6 = time = 88
trigger7 = time = 102
trigger8 = time = 118
trigger9 = time = 132
trigger10 = time = 148
trigger11 = time = 164
trigger12 = time = 180
trigger13 = time = 196
time = 5
freq = 40
ampl = -4
phase = 60

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 4059

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 907, 3]
type = selfstate
trigger1 = Time = 250 ;time in dizzy
ctrl = 1
value = 0

[State 907, 3]
type = selfState
trigger1 = life=0 ;time in dizzy
ctrl = 0
value = 5035
;==========================================================================
;DX Denjin Hadouken
;==========================================================================
[Statedef 4100]
type = S
movetype = I
physics = S
anim = 4100
ctrl = 0
juggle = 1
velset = 0,0
poweradd = 0
sprpriority = 4

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

[State 4100, Width]
type = Width
trigger1 = AnimElem = 1, >= 0
value = 15, 0

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -25,-72
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 4100, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1,1
pos = 8, -80
anim = -1
sound = S40, 0
poweradd = -3000
darken = 0
time = 45
movetime = 33

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
TimeGap =2
FrameGap=5
trans = add
ignorehitpause = 0

[State 4100, Super4]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA
time = 2

[State 4100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 4100, Be_Serious!!]
type = PlaySnd
trigger1 = AnimElem = 1,2
value = 3,1
channel = 0

[State 4100, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 4101

[Statedef 4101]
type = S
movetype = A
physics = N
anim = 4101
ctrl = 0
juggle = 1
velset = 0,0
poweradd = 0
sprpriority = 4

[State 4101, Spark]
type = PlaySnd
triggerall = Time > 1
trigger1 = TimeMod = 30,0
value = 4,1
channel = 1

[State 4101, Explod]
type = Explod
trigger1 = NumExplod(4105) != 1 && Time = 1
anim = 4105
ID = 4105
pos = -16,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 0.1,0.1
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1
;persistent =

[State 4101, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 4105
scale = 0.3+(0.00475*time),0.3+(0.00475*time)

[State 1100, VarSet]
type = VarSet
triggerall = var(59) != 1
trigger1 = Time = [0,50]
var(54) = 1
[State 1100, VarSet]
type = VarSet
triggerall = var(59) != 1
trigger1 = Time = [51,100]
var(54) = 2
[State 1100, VarSet]
type = VarSet
triggerall = var(59) != 1
trigger1 = Time = [101,150]
var(54) = 3
[State 1100, VarSet]
type = VarSet
triggerall = var(59) != 1
trigger1 = Time = [151,250]
var(54) = 4

[State 1100, VarSet]
type = VarSet
triggerall = var(59) = 1
trigger1 = Time = 0
var(54) = 2

[State 4101, Cancel on Hit, Death, or Win]
type = VarSet
trigger1 = life = 0 || win = 1
trigger1 = Enemy, MoveHit = 1 || Enemy, ProjHit = 1
v = 58
value = 0


[State 4101, Release]
type = ChangeState
;triggerall = command != "hold_x" || command != "hold_y" || command != "hold_z"
triggerall = Time > 0
trigger1 = command != "hold_ax"
trigger1 = command != "hold_by"
trigger1 = command != "hold_cz"
value = 4102
ignorehitpause=1

[State 4101, Release]
type = ChangeState
;triggerall = command != "hold_x" || command != "hold_y" || command != "hold_z"
triggerall = Time > 0
trigger1 = Var(59) = 1
value = 4102
ignorehitpause=1

;[State 4101, Release]
;type = ChangeState
;triggerall = command != "hold_x" || command != "hold_y" || command != "hold_z"
;trigger1 = var(58) = [30,200]
;value = 4102

[State 4101, Release]
type = ChangeState
trigger1 = time = 200
value = 4102
ignorehitpause=1

[Statedef 4102]
type = S
movetype = A
physics = N
juggle = 1
velset = 0,0
ctrl = 0
anim = 4102
poweradd = 0
sprpriority = 2

[State 3000, Explod]
type = Explod
trigger1 = time=0
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

[State 3000, Explod]
type = Explod
trigger1 = time=0
removetime = -1
id =6032
anim =6032
pos = -40,0
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
trigger1 = Time =0
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

[State 4101, RemoveExplod]
type = RemoveExplod
trigger1 = Anim = 4102
id = 4105

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 40


[State 4102, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoJuggleCheck

[State 4102, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1, 2
value = 24,3
channel = 0

[State 4102, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,0
channel = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 4302
pos = 52, -72
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
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8,1
[State 3002, 2]
type = Projectile
triggerall=Var(54) =1
trigger1 = AnimElem = 2
projID = 4300
projanim = 4301
projsprpriority = 7
projpriority = 7
projremovetime=51
projscale=.30,.30
projhits = 6
projmiss = 6
animtype = Heavy
offset = 72, -77
velocity = 0, 0
attr = S, HP
damage =  15,3
getpower = 0
givepower = 80
hitflag=MAFD
guardflag = MA
pausetime = 1,8
sparkno = -1
sparkxy = 0, -1
guard.sparkno=-1
hitsound = S12,0
guardsound = S21, 2
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
air.velocity = -8, -2
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 0
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
p2stateno=44059

[State 3002, 2]
type = Projectile
triggerall=Var(54) =1
trigger1 = AnimElem = 3,3
projID = 4300
projanim = 4301
projsprpriority = 7
projpriority = 7
projremovetime=51
projscale=.30,.30
projhits = 6
projmiss = 6
animtype = Heavy
offset = 72, -77
velocity = 0, 0
attr = S, HP
damage =  5,1
getpower = 0
givepower = 80
hitflag=MAFD
guardflag = MA
pausetime = 1,8
sparkno = -1
sparkxy = 0, -1
guard.sparkno=-1
hitsound = S12,0
guardsound = S21, 2
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
air.velocity = -8, -2
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 0
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
p2stateno=44059

[State 3002, 2]
type = Projectile
triggerall=Var(54)=2
trigger1 = AnimElem = 2
projID = 4300
projanim = 4301
projsprpriority = 7
projpriority = 7
projremovetime=51
projscale=.30,.30
projhits = 9
projmiss = 9
animtype = Heavy
offset = 72, -77
velocity = 0, 0
attr = S, HP
damage =  15,3
getpower = 0
givepower = 80
hitflag=MAFD
guardflag = MA
pausetime = 1,8
sparkno = -1
sparkxy = 0, -1
guard.sparkno=-1
hitsound = S12,0
guardsound = S21, 2
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
air.velocity = -8, -2
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 0
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
p2stateno=44060

[State 3002, 2]
type = Projectile
triggerall=Var(54)=2
trigger1 = AnimElem = 3,3
projID = 4300
projanim = 4301
projsprpriority = 7
projpriority = 7
projremovetime=51
projscale=.30,.30
projhits = 9
projmiss = 9
animtype = Heavy
offset = 72, -77
velocity = 0, 0
attr = S, HP
damage =  5,1
getpower = 0
givepower = 80
hitflag=MAFD
guardflag = MA
pausetime = 1,8
sparkno = -1
sparkxy = 0, -1
guard.sparkno=-1
hitsound = S12,0
guardsound = S21, 2
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
air.velocity = -8, -2
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 0
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
p2stateno=44060

[State 3002, 2]
type = Projectile
triggerall=Var(54)=3
trigger1 = AnimElem = 2
projID = 4300
projanim = 4301
projsprpriority = 7
projpriority = 7
projremovetime=51
projscale=.30,.30
projhits = 12
projmiss = 12
animtype = Heavy
offset = 72, -77
velocity = 0, 0
attr = S, HP
damage =  15,3
getpower = 0
givepower = 80
hitflag=MAFD
guardflag = MA
pausetime = 1,8
sparkno = -1
sparkxy = 0, -1
guard.sparkno=-1
hitsound = S12,0
guardsound = S21, 2
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
air.velocity = -8, -2
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 0
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
p2stateno=44061

[State 3002, 2]
type = Projectile
triggerall=Var(54)=3
trigger1 = AnimElem = 3,3
projID = 4300
projanim = 4301
projsprpriority = 7
projpriority = 7
projremovetime=51
projscale=.30,.30
projhits = 12
projmiss = 12
animtype = Heavy
offset = 72, -77
velocity = 0, 0
attr = S, HP
damage =  5,1
getpower = 0
givepower = 80
hitflag=MAFD
guardflag = MA
pausetime = 1,8
sparkno = -1
sparkxy = 0, -1
guard.sparkno=-1
hitsound = S12,0
guardsound = S21, 2
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
air.velocity = -8, -2
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 0
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
p2stateno=44061

[State 3002, 2]
type = Projectile
triggerall=Var(54)=4
trigger1 = AnimElem = 2
projID = 4300
projanim = 4301
projsprpriority = 7
projpriority = 7
projremovetime=51
projscale=.30,.40
projhits = 15
projmiss = 15
animtype = Heavy
offset = 72, -77
velocity = 0, 0
attr = S, HP
damage =  15,3
getpower = 0
givepower = 80
hitflag=MAFD
guardflag = MA
pausetime = 1,8
sparkno = -1
sparkxy = 0, -1
guard.sparkno=-1
hitsound = S12,0
guardsound = S21, 2
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
air.velocity = -8, -2
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 0
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
p2stateno=44062

[State 3002, 2]
type = Projectile
triggerall=Var(54)=4
trigger1 = AnimElem = 3,3
projID = 4300
projanim = 4301
projsprpriority = 7
projpriority = 7
projremovetime=51
projscale=.30,.40
projhits = 15
projmiss = 15
animtype = Heavy
offset = 72, -77
velocity = 0, 0
attr = S, HP
damage =  5,1
getpower = 0
givepower = 80
hitflag=MAFD
guardflag = MA
pausetime = 1,8
sparkno = -1
sparkxy = 0, -1
guard.sparkno=-1
hitsound = S12,0
guardsound = S21, 2
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
air.velocity = -8, -2
airguard.velocity = -2.5, -5.5
air.velocity = -2.5, -5.5
air.juggle = 0
fall = 1
air.fall = 1
envshake.time = 10
envshake.ampl = 5
p2stateno=44062


[State 0, Explod]
type = Explod
triggerall=Var(54)=1
trigger1 = movehit=1
anim = 3902
ID = 3902
pos = -30,-70
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 40,70
removetime = 80
supermove
pausemove
scale = .3,.3
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent = 1

[State 0, Explod]
type = Explod
trigger1 = projhit=1
anim = 7020+(random%8)
ID =7020
pos = -20,-80
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 30,50
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 8
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = projguarded=1
anim = 7105
ID =7105
pos = -20,-80
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 30,50
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 8
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 4102, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 4109]
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
trigger1 = IfElse(power >= 0,(time%2),(time%4))
time = 1
pos = Ceil(-80+random%200),floor(-130+random%200)

[State 0, Explod]
type = Explod
triggerall= random < 100
trigger1 = IfElse(power >= 0,(!(time%2)),(!(time%4)))
anim = 4110
ID = 4110
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = (rootdist x -4)/15,(rootdist Y-80)/15;IfElse(rootdist Y <= 0 && vel y <= 0,0,(((rootdist Y)-60)/14))
removetime = 15
scale = 0.5,0.5
sprpriority = Ifelse(random < 800,6,-1);([-2,2])
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = (root, stateno != 4101)
id = 4110
;ignorehitpause =
;persistent =

[State 0, DestroySelf]
type = DestroySelf
trigger1 = (root, stateno != 4101)



;==========================================================================
;VS. Series Super Jump (credit to Nercomancer)
;==========================================================================
;------------------------------------------------------------------------
;--------------------------------------------------------------------------------------------------------
; Cyclone vacuum
[Statedef 22160]
type     = S
movetype = A
physics  = N
poweradd = 0
ctrl     = 0
anim     = 22160

[State 1040, Dust1]
type = Explod
trigger1 = P2BodyDist X < 3
trigger1 = !(Time%5)
anim = 2218
ownpal = 1
sprpriority = 5
pos = -6, 10
scale=.6,.2

[State 2015, PSetOnGround]
type = PosSet
trigger1 = Pos Y != 0
y = 0

[State 1150, HitBy]
type = NotHitBy
trigger1 = 1
value = SCA
[State 2015, ScrBound]
type = ScreenBound
trigger1 = 1
value = 0
[State 2015, TowardJoe]
type = Turn
trigger1 = (Facing = Parent, Facing)

[State 2015, Push]
type = PlayerPush
trigger1 = P2bodyDist X = [-5,5]
value = 1

[State 2015, VSet]
type = VelSet
trigger1 = ParentDist X >= 0
x = IfElse((Parentdist X = [0,100]), 6, IfElse((ParentDist X = [100,200]), 4.5, 3))

[State 2015, PosFix]
type = PosAdd
trigger1 = P2BodyDist X != [-5,5]
x = ceil(P2Dist X) - EnemyNear, Const(size.ground.back) - 5

[State 2015, End]
type = DestroySelf
trigger1 = Parent, Anim != 3102
trigger2 = Parent, MoveContact
;----------------------------------------------------------------------
; Cyclone vacuum
[Statedef 22161]
type     = S
movetype = A
physics  = N
poweradd = 0
ctrl     = 0
anim     = 22160

[State 1040, Dust1]
type = Explod
trigger1 = P2BodyDist X < 3
trigger1 = !(Time%5)
anim = 2218
ownpal = 1
sprpriority = 5
pos = -6, 10
scale=.6,.2

[State 2015, PSetOnGround]
type = PosSet
trigger1 = Pos Y != 0
y = 0

[State 1150, HitBy]
type = NotHitBy
trigger1 = 1
value = SCA
[State 2015, ScrBound]
type = ScreenBound
trigger1 = 1
value = 0
[State 2015, TowardJoe]
type = Turn
trigger1 = (Facing = Parent, Facing)

[State 2015, Push]
type = PlayerPush
trigger1 = P2bodyDist X = [-5,5]
value = 1

[State 2015, VSet]
type = VelSet
trigger1 = ParentDist X >= 0
x = IfElse((Parentdist X = [0,100]), 6, IfElse((ParentDist X = [100,200]), 4.5, 3))

[State 2015, PosFix]
type = PosAdd
trigger1 = P2BodyDist X != [-5,5]
x = ceil(P2Dist X) - EnemyNear, Const(size.ground.back) - 5

[State 2015, End]
type = DestroySelf
trigger1 = Parent, Anim != 3900
trigger2 = Parent, MoveContact
;----------------------------------------------------------------------
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

;--------------------------------------------------
;----------------------------------------------------------------------
[Statedef 3535]
physics=N
velset=0,0
anim=9999
sprpriority=4

[State 0, Explod]
type = Explod
trigger1 = time=0
anim = 3501
ID = 3501
pos = 0,0
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
scale = .5,.4
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 7180, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0
;--------------------------------------------------------------------------
;----------------------------------------------------------------------
[Statedef 3536]
physics=N
velset=0,0
anim=9999
sprpriority=5


[State 0, Explod]
type = Explod
trigger1 = time=0
anim = 3502
ID = 3502
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = .7,-6
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = .35,2
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 7180, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0

;---------------------------------------------------------------------------
;CAMERA FOCUS
[Statedef 6001]
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
CHARGE Efx


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
pos = -5,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
scale = .6,.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1


;Bottom, center
;time = 1
;trans=A

[State 0, Explod] ; fire efx
type = Explod
trigger1 = time = 9
anim = 8885
ID = 8885
pos = -5,5
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
scale = .7,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time >= 9
ID = 8885
scale = 0.6,0.6*power/3000

[State 0, PlaySnd] ;----- character scream
type = PlaySnd
trigger1 = time = 11
value = 0,8
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
pos = -5,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
scale = .6,.5
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
vel = (rootdist x -2)/15,(rootdist Y-50)/15;IfElse(rootdist Y <= 0 && vel y <= 0,0,(((rootdist Y)-60)/14))
removetime = 15
scale = 0.5,0.5
sprpriority = Ifelse(random < 800,2,-2);([-2,2])
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = (root, stateno != 88887)
trigger2 = (root, movetype = H)

;------------------------------------------------------------

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
;---------------------------------------------------------------------------

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

;========================<Lv3 SUPERCHARGE PORTRAIT>=============================
[Statedef 7511]
physics=N
anim=9999
[State 7511, assert]
type=assertspecial
trigger1=1
flag=invisible
flag2=nobardisplay
ignorehitpause=1
[State 7511, portrait]
type=explod
trigger1=!time
anim=7511
ID=7511
postype=back
pos=160,120
under=1
bindtime=-1
removetime=60
pausemovetime=300
supermovetime=300
[State 7511, shrink]
type=modifyexplod
trigger1=time<45
ID=7511
scale=.5,.5
[State 7511, shrink]
type=modifyexplod
trigger1=time>=45
ID=7511
scale=.5225+(.13*(time-45)),.5225+(.13*(time-45))
[State 7511, fade]
type=palfx
trigger1=time=45
time=15
sinadd=-255,-255,-255,60
[State 7511, safety]
type=removeexplod
trigger1=time>=61
[State 7511, end]
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
pos = 37, -70
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
pos = 30, -23
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
pos = 37, -70
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

;========================<P1-electricity>=============================
[Statedef 3901]
physics=N
anim=9999

[State 0, BindToParent]
type = BindToParent
trigger1 = time=0
time = 9999
;facing = 0
pos = -40,-60
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = time=0
anim = 3901
ID = 3901
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove
pausemove
scale = .3,.3
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


[State 7511, safety]
type=removeexplod
trigger1=time>=220
id=3901
[State 7511, end]
type=destroyself
trigger1=time>=220
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

;---------------------------------------------------------------------
[Statedef 9075]
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
value = 9076

;----------------------------------------------------------------------
; Hit by - flying through the air
; (a custom gethit state)
[Statedef 9076]
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
value = 9077


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
[Statedef 9077]
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
value = 9078

;----------------------------------------------------------------
; Hit by  - bounce off wall
; (a custom gethit state)
[Statedef 9078]
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
y = -4

[State 9070, Vel X]
type = VelSet
trigger1 = Time = 0
x = 4

[State 9070, Turn]
type = null;Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 9070, Gravity]
type = VelAdd
trigger1 = 1
y = .38

[State 9070, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 9070, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

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
;------------------------------------------
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

;==========================================================================
[Statedef -2]

[State -2, StopSnd]
type = StopSnd
trigger1 = stateno != 88887
channel = 21

[State -2, StopSnd]
type = StopSnd
trigger1 = stateno != 88887
channel = 20

[State 0, Explod]
type = Explod
triggerall=p2stateno= 44059
trigger1 = time=15
trigger2 = time=45
trigger3 = time=75
anim = 3902
ID = 3902
postype = p2
pos = 0,-70
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 50,80
removetime = -2
supermove
pausemove
scale = .1+(random%1),.1+(random%1)
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent = 1

[State 0, Explod]
type = Explod
triggerall=p2stateno= 44059
trigger1 = time=0
trigger2 = time=30
trigger3 = time=60
anim = 3902
ID = 3902
postype = p2
pos = 0,-70
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 50,80
removetime = -2
supermove
pausemove
scale = .15+(random%1),.15+(random%1)
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent = 1

[State 0, Explod]
type = Explod
triggerall=p2stateno= 44060
trigger1 = time=15
trigger2 = time=45
trigger3 = time=75
trigger4 = time=105
trigger5 = time=115
anim = 3902
ID = 3902
postype = p2
pos = 0,-70
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 50,80
removetime = -2
supermove
pausemove
scale = .1+(random%1),.1+(random%1)
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent = 1

[State 0, Explod]
type = Explod
triggerall=p2stateno= 44060
trigger1 = time=0
trigger2 = time=30
trigger3 = time=60
trigger4 = time=90
anim = 3902
ID = 3902
postype = p2
pos = 0,-70
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 50,80
removetime = -2
supermove
pausemove
scale = .15+(random%1),.15+(random%1)
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent = 1

[State 0, Explod]
type = Explod
triggerall=p2stateno= 44061
trigger1 = time=15
trigger2 = time=45
trigger3 = time=75
trigger4 = time=105
trigger5 = time=135
anim = 3902
ID = 3902
postype = p2
pos = 0,-70
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 50,80
removetime = -2
supermove
pausemove
scale = .1+(random%1),.1+(random%1)
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent = 1

[State 0, Explod]
type = Explod
triggerall=p2stateno= 44061
trigger1 = time=0
trigger2 = time=30
trigger3 = time=60
trigger4 = time=90
trigger5 = time=120
anim = 3902
ID = 3902
postype = p2
pos = 0,-70
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 50,80
removetime = -2
supermove
pausemove
scale = .15+(random%1),.15+(random%1)
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent = 1

[State 0, Explod]
type = Explod
triggerall=p2stateno= 44062
trigger1 = time=15
trigger2 = time=45
trigger3 = time=75
trigger4 = time=105
trigger5 = time=135
trigger6 = time=165
trigger7 = time=195
anim = 3902
ID = 3902
postype = p2
pos = 0,-70
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 50,80
removetime = -2
supermove
pausemove
scale = .1+(random%1),.1+(random%1)
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent = 1

[State 0, Explod]
type = Explod
triggerall=p2stateno= 44062
trigger1 = time=0
trigger2 = time=30
trigger3 = time=60
trigger4 = time=90
trigger5 = time=120
trigger6 = time=150
trigger7 = time=180
anim = 3902
ID = 3902
postype = p2
pos = 0,-70
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 50,80
removetime = -2
supermove
pausemove
scale = .15+(random%1),.15+(random%1)
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall=p2stateno= 44059
trigger1 = time=0
trigger2 = time=30
trigger3 = time=60
value = S4,1

[State 0, PlaySnd]
type = PlaySnd
triggerall=p2stateno= 44060
trigger1 = time=0
trigger2 = time=30
trigger3 = time=60
trigger4 = time=90
value = S4,1

[State 0, PlaySnd]
type = PlaySnd
triggerall=p2stateno= 44061
trigger1 = time=0
trigger2 = time=30
trigger3 = time=60
trigger4 = time=90
trigger5 = time=120
trigger6 = time=145
value = S4,1

[State 0, PlaySnd]
type = PlaySnd
triggerall=p2stateno= 44062
trigger1 = time=0
trigger2 = time=30
trigger3 = time=60
trigger4 = time=90
trigger5 = time=120
trigger6 = time=150
trigger7 = time=180
value = S4,1

;---------------------------------------------------------------------------
[state 5100,2]
type = playsnd
trigger1 = (gametime%13 = 0) && p2stateno = 9070
persistent = 0
ignorehitpause = 1
value = s24,2
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

;---------------------------------
[state 5100,2]
type = playsnd
trigger1 = (gametime%13 = 0) && p2stateno = 9078
persistent = 0
ignorehitpause = 1
value = s24,2
volume = 255 - (13*time)
channel = 23


;voando pela tela
[State -2]
type = ScreenBound
trigger1 = P2StateNo = [9075,9078]
value = p2bodydist x < 30 && BackEdgeDist < 30


[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = Movetype != H && Stateno != 7827
trigger1 = BackEdgeDist < -10 -const(size.ground.front)-const(size.ground.back)
trigger1 = StateType != A
value = 7827
;=-------------------------------------------------------
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
id = 6032

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
id = 6034

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
id = 6036

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = MoveType = H
trigger2 = StateNo = [0,49]
trigger3 = StateNo = [100,189]
trigger4 = StateNo = 195
trigger5 = StateNo = [200,799]
trigger6 = StateNo = [850,859]
trigger7 = StateNo = [900,999]
time = 1
;ignorehitpause =
;persistent =

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
id = 6044
;=-------------------------------------------------------
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
id = 6035

[State -2, remove]
type=removeexplod
trigger1= stateno!=1100&&stateno!=1101&&stateno!=1102&&stateno!=1150&&stateno!=1151&&stateno!=1152
id = 1110

[State -2, remove]
type=removeexplod
trigger1=stateno!=3102
id = 1120
[State -2, remove]
type=removeexplod
trigger1=stateno!=3600
id = 1130

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = (stateno != 4101)
id = 4110
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
x = .2 ; maybe you need to modify these value


[Statedef -3]

;-----------------------------------------------------------------
[State -3,veladd]
type = Veladd
triggerall =command = "holdfwd"
triggerall = prevstateno = 123 ; the superjumo state
trigger1 = stateno = 50; jump state
x = .2 ; maybe you need to modify these value

[State state-3,veladd]
type = Veladd
triggerall =command = "holdback"
triggerall = prevstateno = 123
trigger1 = stateno = 50
x = -.2
;==========================================================================
[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 106 ;Run-back land
trigger3 = stateno = 1206
trigger4 = stateno = 1105
trigger5 = stateno = 3106
trigger6 = stateno = 8005
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

;===========================================================================
[State -3, Super Background]
type = Explod
triggerall = stateno = [3000,4399]
trigger1 = WinKO=1
ID = 8000
anim = 6035
postype = Back
pos = 0, 0
scale = 1.1, 1.1
sprpriority = -5
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 10

;Coding starting from here here credited to GCNMario
[State -3, Special]
type = AssertSpecial
triggerall = NumExplod(8000)>=1
trigger1 = WinKO  ;(StateNo >= 3000)
flag = NoBarDisplay
flag2 = NoFG
flag3 = nokoslow
ignorehitpause = 1

[State -3, Silence]
type = AssertSpecial
triggerall = NumExplod(8000)>=1
trigger1 = WinKO  ;(StateNo >= 3000)
trigger1 = id
flag = NoMusic
ignorehitpause = 1
;-------------- Generated by Fighter Factory -------------

;--------------------- Variable List ----------------------

; Var(1) - StateDef 180
; Var(2) - StateDef 191, 192, 195, 196
; Var(3) - StateDef 5400
; Var(4) - StateDef 925, 926
; Var(10) - StateDef -3
; Var(11) - StateDef 4150
; Var(12) - StateDef 5400, 4150
; Var(20) - StateDef 5300, 6010, -3
; Var(21) - StateDef -2
; Var(30) - StateDef -2
; Var(34) - StateDef 4511, 4600, -2
; Var(35) - StateDef 102, 8000
; Var(40) - StateDef 4109
; Var(41) - StateDef 4109
; Var(58) - StateDef 4101, 4102

;--------------------- Float Variable List ----------------------

