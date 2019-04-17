;---------------------------------------------------------------------------
; Hyper - FLAME TROWER
;---------------------------------------------------------------------------
[Statedef 2149]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
poweradd = -1000
anim = 2149
ctrl = 0
sprpriority = 2

[State 3000, 1]
type = AssertSpecial
trigger1 = time<=33
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemtime(3)=0 || AnimElemtime(3)=10 || AnimElemtime(3)=20 || AnimElemtime(3)=30 || AnimElemtime(3)=40 || AnimElemtime(3)=50 
value = 666666,14
volume = 255
channel = 8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 666666,28
volume = 255
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 666666,18
volume = 150
channel = 1

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = 0.84,1.05

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6


[State 0, Explod]
type = explod
trigger1 = animelem=3
anim=2148
ID =2148
pos = 75,-97
postype = p1
facing = 1
bindtime = -1
scale = 0.5,0.5
sprpriority = 4
ownpal = 0
removeongethit = 1

[State 0, Explod]
type = explod
trigger1 = movehit
trigger1 = AnimElemtime(3)=0 || AnimElemtime(3)=10 || AnimElemtime(3)=20 || AnimElemtime(3)=30 || AnimElemtime(3)=40 || AnimElemtime(3)=50 
anim=1013
ID =13
pos = 0,-45
postype = p2
facing = 1
bindtime = -1
sprpriority = 3
ownpal = 0
removeongethit = 1

[State 2152, HitDef]
type = HitDef
trigger1 = 1
attr = S,HA
damage = 3,0
animtype = hard
hitflag = MA
guardflag = MA
priority = 4, Hit
pausetime = 0,0
sparkno = -1
sparkxy = -15,-30
hitsound = s65535,14
guardsound = s6,0
ground.type = Low
ground.slidetime = 0
ground.hittime = 5
ground.velocity = 0,0
air.type = Low
air.hittime = 5
air.velocity = 0,0
palfx.time=2
palfx.add=100-time,100-time,-100-time

[State 2152, HitDef]
type = HitDef
trigger1 = animelem=6
attr = S,HA
damage = 100,10
animtype = hard
hitflag = MAF
guardflag = MA
fall=1
priority = 4, Hit
pausetime = 0,0
sparkno = -1
sparkxy = -15,-30
hitsound = s65535,25
guardsound = s6,0
ground.type = Low
ground.slidetime = 0
ground.hittime = 5
ground.velocity = -6,-4
air.type = Low
fall.recover=0
air.hittime = 5
air.velocity = -6,-4
palfx.time=50
palfx.add=-100,-100,-255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5 && movehit
value = 777,1
volume = 255
channel = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper - Crow Hell
;---------------------------------------------------------------------------
[Statedef 3002]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
poweradd = -1000
anim = 2150
ctrl = 0
sprpriority = 2

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 666666,29
volume = 255
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 666666,18
volume = 150
channel = 1

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = 0.84,1.05

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 123, spray]
type = Helper
trigger1 = animelem = 3
ID = 2152
pos = -13,33
postype = p1
stateno = 2152
helpertype = normal
name = "spray"
keyctrl = 0
ownpal = 1
supermovetime = 9999
size.xscale = 1.1
size.yscale = 1.1

[State 2152, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,HA
damage = 0,0
animtype = Light
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 0,0
sparkno = -1
sparkxy = -15,-10
guard.sparkno = -1;s8001
hitsound = -1;s8000,0
guardsound = -1;6,0
ground.type = Low
ground.slidetime = 0
ground.hittime = 75
ground.velocity = 0,0
air.type = Low
air.hittime = 80
air.velocity = 0,0
numhits = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Movecontact
value = 2151
ctrl = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Movecontact = 0
value = 0
ctrl = 1

;--------------------------------------------------------
[Statedef 2152]
type = S
movetype = I
physics = N
anim = 2152
sprpriority = 2
ctrl = 0

[state 1210, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 26
add = 0,0,0
mul = 256,100,20
invertall = 0
color = 256

[state 1210, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;--------------------------------------------------------
; Gas Hit - Scarecrow Laughing
;--------------------------------------------------------
[Statedef 2151]
type = S
movetype = I
physics = S
anim = 2151
sprpriority = 2
ctrl = 0

[State 1000, 2]
type = Projectile
trigger1 = time = 43
trigger2 = time = 16
trigger3 = time = 20
trigger4 = time = 24
trigger5 = time = 28
trigger6 = time = 32
trigger7 = time = 36
trigger8 = time = 40
trigger9 = time = 44
trigger10 = time = 45
trigger11 = time = 18
trigger12 = time = 22
trigger13 = time = 26
trigger14 = time = 30
trigger15 = time = 34
trigger16 = time = 38
trigger17 = time = 42
trigger18 = time = 46
ProjID = 2153
projanim = 2153
projscale = 0.5,0.5
velocity = 4.5,(4 - random/125)
offset = -50,(-67 +random/125)
attr = S,HA
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 0,Hit   ;Hit,Miss,Dodge
damage = 7,1
pausetime = 2,2
sparkno = 10
guard.sparkno = 1;s9993
sparkxy = -15,0
hitsound = s8000,1
guardsound = s8000,1
ground.type = High
ground.slidetime = 5
ground.hittime  = 22
ground.velocity = -2.5,0
air.type = Low
air.hittime = 22
air.velocity = -2,0

[State 0, Helper]
type = Helper
trigger1 = time = 10
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -25,-150
postype = Left
facing = 1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = time = 14
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -35,-220
postype = Left
facing = 1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = time = 18
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -15,-185
postype = Left
facing = 1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = time = 22
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -45,-255
postype = Left
facing = 1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = time = 26
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -28,-157
postype = Left
facing = 1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = time = 30
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -38,-212
postype = Left
facing = 1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = time = 34
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -33,-193
postype = Left
facing = 1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = time = 38
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -19,-177
postype = Left
facing = 1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = time = 42
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -29,-209
postype = Left
facing = 1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = time = 46
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -36,-188
postype = Left
facing = 1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = time = 10
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -25,-150
postype = Right
facing = -1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = time = 14
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -35,-220
postype = Right
facing = -1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = time = 18
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -15,-185
postype = Right
facing = -1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = time = 22
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -45,-255
postype = Right
facing = -1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = time = 26
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -28,-157
postype = Right
facing = -1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = time = 30
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -38,-212
postype = Right
facing = -1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = time = 34
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -33,-193
postype = Right
facing = -1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = time = 38
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -19,-177
postype = Right
facing = -1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = time = 42
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -29,-209
postype = Right
facing = -1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = time = 46
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -36,-188
postype = Right
facing = -1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = time = 4
value = S99,0
channel = 0
volume = 250

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = time = 20
trigger2 = time = 60
value = S666666,22
channel = 2
volume = 255

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = time = 15
trigger2 = time = 60
value = S666666,23
channel = 3
volume = 150

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = time = 25
trigger2 = time = 55
value = S666666,24
channel = 4
volume = 150

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------
; Crow Helper
;-----------------------------------------------------
[Statedef 2153]
type = A
movetype = A
physics = N
anim = 2153
sprpriority = 3

[State 3000, swoop down]
type = Velset
trigger1 = Time >=0 && time <=10
x = 2.5
y = 8

[State 3000, swoop down]
type = Velset
trigger1 = Time >=11 && time <=15
x = 4.5
y = 6

[State 3000, swoop down]
type = Velset
trigger1 = Time >=16 && time <=19
x = 5.5
y = 4

[State 3000, flying forward]
type = Velset
trigger1 = Time >=20
x = 8
y = -0.6

[State 2152, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,HA
damage = 7,1
animtype = Medium
hitflag = MAFD
guardflag = MA
priority = 4, Hit
pausetime = 2,2
sparkno = 11;s8002
sparkxy = -15,0
guard.sparkno = 1;s8001
hitsound = s8000,1
guardsound = s8000,1
ground.type = High
ground.slidetime = 5
ground.hittime = 22
ground.velocity = -2.5,0
air.type = Low
air.hittime = 22
air.velocity = -2,0

[State 3000, DS]
type = DestroySelf
trigger1 = time = 62

;---------------------------------------------------------------------------
; Hyper - Nightmare Horse
;---------------------------------------------------------------------------
[Statedef 2170]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 3001
ctrl = 0
sprpriority = 2
poweradd = -1000

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 666666,7
volume = 255
channel = 0

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = 0.84,1.05

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 2000, 1]
type = velset
trigger1 = Animelemtime(2) >= 0 && Animelemtime(3) <= 0
x = -3

[State 2000, 1]
type = velset
trigger1 = Animelemtime(3) >= 0 && Animelemtime(4) <= 0
x = -5

[State 2000, 1]
type = velset
trigger1 = Animelemtime(4) >= 0
x = -8

[State 2000, 1]
type = velset
trigger1 = Animelemtime(2) >= 0
y = -7

[State 2000, 1]
type = Screenbound
trigger1 = 1
value = 0

[State 2000, 4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1100, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 2171
ctrl = 0

;---------------------------------------------------------------------------
; Nightmare Horse - Running across screen
;---------------------------------------------------------------------------
[Statedef 2171]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 3002
ctrl = 0
sprpriority = -1

[State 2000, 1]
type = Screenbound
trigger1 = 1
value = 0

[State 2000, 1]
type = PosSet
trigger1 = facing = 1
trigger1 = time = 0
x = -220
y = 0

[State 2000, 1]
type = PosSet
trigger1 = facing = -1
trigger1 = time = 0
x = 220
y = 0

[State 2000, 1]
type = PlayerPush
trigger1 = 1
value = 0

[State 2000, 1]
type = velset
trigger1 = time >= 1
x = 7.5

[State 2000, 4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 18,0
value = 777,0
volume = 150
channel = 2

[State 2000, 8]
type = HitDef
triggerall = P2Life > 0
trigger1 = TimeMod = 8,0;Time = 0
attr = S, HA
animtype  = Hard
hitflag = MAFD
guardflag = MA
damage    = 30,3
priority  = 6
pausetime = 0,0
sparkno = 1;s8002
sparkxy = -15,-60
hitsound   = s8000,1
guardsound = 6,0;s8000,1
ground.type = High
ground.slidetime = 18
ground.hittime  = 30
air.hittime = 30
ground.velocity = -5,0
guard.velocity = -8
air.velocity = -3.5,0
;air.fall = 1
fall = 1
;fall.recover = 0
;air.fall.recover = 0
p1sprpriority = -1
p1stateno = 2172

[State 220, Varadd]
type = Varadd
trigger1 = frontEdgedist < -130
v = 17
value = 1

[State 220, End]
type = turn
trigger1 = frontEdgedist < -130
trigger1 = var(17) <= 1

[State 220, End]
type = changestate
trigger1 = frontEdgedist < -130
trigger1 = var(17) = 2
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Nightmare Horse - Dragging
;---------------------------------------------------------------------------
[Statedef 2172]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 3003
ctrl = 0
sprpriority = -1

[State 23051]
type = ScreenBound
trigger1 = 1
value = 0
;movecamera = 1,0

;[State 2000, 1]
;type = PlayerPush
;trigger1 = 1
;value = 0

[State 2000, 1]
type = velset
trigger1 = time >= 0
x = 6.5

[State 2000, 4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 18,0
value = 777,0
volume = 150
channel = 2

[State 2000, 8]
type = HitDef
triggerall = frontEdgedist > -10
triggerall = time <=500
triggerall = P2Life > 0
trigger1 = TimeMod = 6,0
attr = S, HA
animtype  = Hard
hitflag = MAFD
guardflag = MA
damage    = 40,2
priority  = 6
pausetime = 0,0
sparkno = 11;s8002
sparkxy = -15,-30
hitsound   = s8000,5
guardsound = 6,0;s8000,5
ground.type = High
ground.slidetime = 18
ground.hittime  = 35
air.hittime = 35
ground.velocity = -8,0
air.velocity = -5,0
down.velocity = -9,0
air.fall = 1
fall = 1
fall.recover = 0
air.fall.recover = 0
p1sprpriority = -1

[State 220, Varadd]
type = Varadd
trigger1 = frontEdgedist < -130
v = 17
value = 1

[State 220, End]
type = turn
trigger1 = frontEdgedist < -130
trigger1 = var(17) <= 1

[State 220, End]
type = changestate
trigger1 = frontEdgedist < -130
trigger1 = var(17) = 2
value = 0
ctrl = 1

;------------------------------------------------------------------------
; Hyper - Painfull Nightmare
;------------------------------------------------------------------------
[StateDef 2180]
type = S
movetype = A
physics = S
juggle = 0
anim = 2180;2220
ctrl = 0
poweradd = -1000
velset = 0,0

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 666666,29
volume = 255
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 666666,18
volume = 150
channel = 1

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = 0.84,1.05

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 123, Gas]
type = Helper
trigger1 = animelem = 3
ID = 2154
pos = -20,55;100,-80
postype = p1
stateno = 2154
helpertype = normal
name = "gas"
keyctrl = 0
ownpal = 1
supermovetime = 9999
size.xscale = 1.3
size.yscale = 1.3

[State 2152, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,HA
damage = 0,0
animtype = Light
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 15,15
sparkno = -1
sparkxy = -15,-10
guard.sparkno = -1;s8001
hitsound = -1;s8000,0
guardsound = -1;6,0
ground.type = Low
ground.slidetime = 0
ground.hittime = 75
ground.velocity = 0,0
air.type = Low
air.hittime = 80
air.velocity = 0,0
numhits = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = Movecontact
value = 2181
ctrl = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------
[Statedef 2154]
type = S
movetype = I
physics = N
anim = 2152;2154
sprpriority = 2
ctrl = 0

[state 1210, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 26
add = 0,0,0
mul = 180,180,10
;sinadd = 0,0,0,10
invertall = 0
color = 256

[state 1210, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0


;--------------------------------------------------------
[Statedef 2181]
type = S
movetype = I
physics = S
anim = 2220
sprpriority = 2
ctrl = 0

[State 3000, Distortion]
type = Explod
trigger1 = animelem = 1
anim = 2214
ID = 2214
pos = 160,120
postype = left
bindtime = 999
removetime = -2
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
Persistent = 0

[State 123, Helper]
type = Helper
trigger1 = animelem = 1
ID = 2182
pos = 0,-90
postype = p1
stateno = 2182
helpertype = normal
name = "DemonMouth"
keyctrl = 0
ownpal = 1
supermovetime = 9999

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S180,0;S99,0
channel = 0
volumescale = 200

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------
; Demon Mouth - Summoned
[Statedef 2182]
type = S
physics = S
movetype = A
anim=2215
poweradd=0
ctrl=0
velset=0,0
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 666666,41

[State 3000, Mouth Layer]
type = Explod
trigger1 = AnimElem = 2
anim = 2216
ID = 2216
pos = 0,0
postype = p1
bindtime = 999
removetime = -2
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = 1,1

[State 2000, 7]
type = posset
trigger1 = time = 0
Y = 0
x = enemynear, pos x

[State 9601, 1]
type = HitDef
trigger1 = time = 0
attr = S, HT
hitflag = MADF
guardflag = N
pausetime = 0,10
snap = 0, 0, 0
sparkno = -1
p2facing = 1
p1stateno = 9601
p2stateno = 9670
p2getp1state = 1
hitsound = S666666,42
fall = 1
fall.recover = 0
damage = 100

[State 2000, 7]
type = ChangeState
trigger1 = time = 39
value = 9669
ctrl = 0

;----------------------------------------------------
; P2 State - Dragged down Start up
[Statedef 9670]
type    = A
movetype= H
physics = N
ctrl = 0

[State 805, 1]
type = ChangeAnim2
trigger1 = time = 0
value =5000

[State 805, 0]
type = ScreenBound
trigger1 = 1
value	= 0
movecamera = 0,0

[State 805, 0]
type =posset
trigger1 =Time=10
X=0
Y=-500

[State 805, 5]
type = selfstate
trigger1 = Time = 220
value = 5050

;----------------------------------------------------
; P2 State - Dragged Down, 2nd state
[Statedef 9661]
type    = A
movetype= H
physics = N
ctrl = 0

[State 805, 1]
type = assertspecial
trigger1 = 1
flag=globalnoshadow

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 5

[State 805, 1]
type = assertspecial
trigger1 = time > 4
flag=invisible

[State 805, 0]
type =posset
trigger1 = facing = 1
trigger1 =Time= 79
X=-200
Y=-500

[State 805, 0]
type =posset
trigger1 = facing = -1
trigger1 =Time= 79
X=200
Y=-500

[State 805, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 5000

[State 805, 1]
type = ChangeAnim2
trigger1 = animtime=0
value = 5000

[State 805, 0]
type = ScreenBound
trigger1 = 1
value	= 0
movecamera = 0,0

[State 805, 5]
type = selfstate
trigger1 = time= 80
value = 5070

;----------------------------------------------------------------------------
;Demon Mouth Miss - Disappearing
[Statedef 9669]
type = S
physics = S
movetype = I
anim=2218
poweradd=0
ctrl=0
velset=0,0
sprpriority = 5

[State 2000, 7]
type = destroyself
trigger1 = animtime=0

;----------------------------------------------------------------------------
; Demon Mouth Hit - 2nd Bite
[Statedef 9601]
type = S
physics = S
movetype = A
anim=2217
poweradd=0
ctrl=0
velset=0,0
sprpriority =5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 666666,42

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 3
anim = 2219
ID = 2219
pos = 0,0
postype = p1
bindtime = 999
removetime = -2
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = 1,1

[State 2000, 7]
type = targetlifeadd
trigger1 = animelem=1
value =-50

[State 810, 1]
type = targetbind
trigger1 = animelem=1
pos=0,0;-20,0
Time=20

[State 2000, 7]
type = changestate
trigger1 = animtime = 0
value=9660

;----------------------------------------------------------------------------
; Demon Mouth - Disappear
[Statedef 9660]
type = S
physics = S
movetype = A
anim=2218
poweradd=0
ctrl=0
velset=0,0
sprpriority =5

[State 2000, 7]
type = targetstate
trigger1 = animelem = 1
value = 9661

[State 0, TargetDrop]
type = TargetDrop
trigger1 = time = 300
keepone = 1

[State 805, 1]
type = assertspecial
trigger1 = 1
flag = globalnoshadow

[State 805, 1]
type = velset
trigger1 =pos y>200
X=200
Y=0

[State 805, 1]
type = posset
trigger1 =pos y>200
X=200
Y=-1000

[State 2000, 7]
type = destroyself
trigger1= animtime=0


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; OLD HYPERS BELOW ;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Hyper - Lasso Snakes
[Statedef 3013]
type    = S
movetype = I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
sprpriority = 2
hitcountpersist = 1

[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 3020
ctrl = 1

[state 3000,a0]
type = varset
trigger1 = !time
var(14) = 0

[State 7777, corda]
type = PlaySnd
trigger1 = animelem=2
value = s666666,16
channel = 0
IgnoreHitPause = 1

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 666666,7
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = 0.84,1.05

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 3000, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = AnimElem = 5
anim = 10010
ID = 10010
pos = -60,-5
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1

[State 0, superbg RemoveExplod 1.2]
type = RemoveExplod
trigger1 = time > 200 ;time BG remains on screen
id =10010

[State 3000, a3]
type = PlaySnd
trigger1 = animelem = 1||animelem = 3||animelem = 6||animelem = 9||animelem = 12
value = 6, 3
ignorehitpause = 1
channel = 7

[state 3000,a0]
type = varset
trigger1 = animelem = 15
var(14) = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3000, mh]
type = varset
trigger1=time=20
var(16)=0
ignorehitpause=1

[State 3000, b1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3019
ctrl = 0

;------------------------------------------------------------------------
[Statedef 3019];===============attempt
type    = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
sprpriority = 2
poweradd = -1000

[state 3000,a0]
type = varset
trigger1 = !time
var(14) = 0

[State 3001, a3]
type = PlaySnd
trigger1 = !time
value = 6, 6
ignorehitpause = 1
volume = 250

[State 777, a01]
type = ChangeAnim
trigger1 = PalNo <= 3 &&!time && prevstateno != 9000
value = 3019
ctrl = 1
[State 777, a02]
type = ChangeAnim
trigger1 = PalNo >= 4 && !time && prevstateno != 9000
value = 3019
ctrl = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3001, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 7777, corda]
type = PlaySnd
trigger1 = animelem=3
value = s666666,16
channel = 1
IgnoreHitPause = 1

[State 3001, far]
type = HitDef
Trigger1 = !time
attr = S, HT
hitflag = MAF
guardflag = MA
animtype = hard
priority = 7,hit
damage = 0,0
pausetime = 0,0
sparkno = -1;Sifelse(random>500,8500,8501)
guard.sparkno = 1;ifelse(!var(55),-1,40)
sparkxy =(enemy,const(size.mid.pos.x)),-30+(enemy,const(size.mid.pos.y))
hitsound = S6,0
guardsound = S7,1
ground.type = High
ground.slidetime = 30
ground.hittime = 30
ground.velocity = 0,0
guard.velocity =-16
guard.pausetime = 0,8
air.velocity = 0,0
air.hittime = 0
guard.dist = 320
p1stateno = 3005
p2stateno = 5300
p2facing = 1
kill = 0

[State 3000, ee]
type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;tauntings ---------------------------------------------
[Statedef 3005]
type = S
movetype = A
physics = N
ctrl = 0
sprpriority = -3
velset = 0,0
hitcountpersist=1

[State 777, a01]
type = ChangeAnim
trigger1 = PalNo <= 3 &&!time && prevstateno != 9000
value = 195
ctrl = 1

[State 3005, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3005, a1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3005, b2]
type = PlayerPush
trigger1 = 1
value = 0

[State 3005, voz]
type = PlaySnd
trigger1 = AnimElem = 10||AnimElem = 29
value = 50,1
channel = 1

[State 3005, voz]
type = PlaySnd
trigger1 = AnimElem = 2||AnimElem = 20
value = s666666,18
channel = 1

[State 3005, b3]
type = PlaySnd
trigger1 = AnimElem = 3||AnimElem = 12||AnimElem = 21||AnimElem = 30
value = 40,7
channel = 4
[State 3005, ro]
type = PlaySnd
trigger1 =AnimElem = 9||AnimElem = 18||AnimElem = 27||AnimElem = 36
value = 7,2
channel = 5

[State 3005, a7]
type = HitAdd
trigger1 =AnimElem = 9||AnimElem = 18||AnimElem = 27||AnimElem = 36
value = 1

[State 3005, a4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3013, Explod]
type = explod
trigger1 = movehit = 0
anim = 3018
ID = 3018
pos = 0,-60
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
sprpriority = 2
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 1
persistent = -1

[State 0, Helper]
type = Helper
trigger1 = animtime = 0
helpertype = normal ;player
;name = "Granade1"
ID = 3015
stateno = 3015
pos = -50,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = animtime = 0
helpertype = normal ;player
;name = "Granade1"
ID = 3016
stateno = 3016
pos = 20,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = animtime = 0
helpertype = normal ;player
;name = "Granade1"
ID = 3017
stateno = 3017
pos = 80,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 3000, Distortion]
type = Explod
trigger1 = animelem = 3
anim = 3024
ID = 3024
pos = 160,120
postype = left
bindtime = 999
removetime = -2
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
Persistent = 0

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
[Statedef 3015]
type    = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
sprpriority = 2
hitcountpersist = 1
anim = 3015

[State xxx, x]
type = VelSet
trigger1 = 1
X = -1*sin(time/4.0) ; ** Originally, it was (time/4)

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 11
attr = S,NA
damage = 20,2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = 10;s8002
sparkxy = -15,-79
guard.sparkno = 1;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
air.type = Low
air.hittime = 15
air.velocity = -3,-5

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 15
attr = S,NA
damage = 20,2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = 11;s8002
sparkxy = -15,-79
guard.sparkno = 1;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
air.type = Low
air.hittime = 15
air.velocity = -3,-5

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 19
attr = S,NA
damage = 20,2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = 10;s8002
sparkxy = -15,-79
guard.sparkno = 1;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
air.type = Low
air.hittime = 15
air.velocity = -3,-5

[State 3000, a4]
type = PlaySnd
trigger1 =  time%9 = 0
value = s666666, 36
channel = 6
ignorehitpause = 1

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------
[Statedef 3017]
type    = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
sprpriority = 2
hitcountpersist = 1
anim = 3017

[State xxx, x]
type = VelSet
trigger1 = 1
X = 2*sin(time/4.0) ; ** Originally, it was (time/4)

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 10
attr = S,NA
damage = 20,2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = 11;s8002
sparkxy = -15,-79
guard.sparkno = 1;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
air.type = Low
air.hittime = 15
air.velocity = -3,-5

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 14
attr = S,NA
damage = 20,2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = 10;s8002
sparkxy = -15,-79
guard.sparkno = 1;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
air.type = Low
air.hittime = 15
air.velocity = -3,-5

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 18
attr = S,NA
damage = 20,2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = 11;s8002
sparkxy = -15,-79
guard.sparkno = 1;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
air.type = Low
air.hittime = 15
air.velocity = -3,-5

[State 3000, a4]
type = PlaySnd
trigger1 =  time%9 = 0
value = s666666, 35
channel = 6
ignorehitpause = 1

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------
[Statedef 3016]
type    = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
sprpriority = 0
hitcountpersist = 1
anim = 3016

[State xxx, x]
type = VelSet
trigger1 = 1
X = 3*sin(time/4.0) ; ** Originally, it was (time/4)

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 12
attr = S,NA
damage = 20,2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = 11;s8002
sparkxy = -15,-79
guard.sparkno = 1;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
air.type = Low
air.hittime = 15
air.velocity = -3,-5

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 16
attr = S,NA
damage = 20,2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = 10;s8002
sparkxy = -15,-79
guard.sparkno = 1;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
air.type = Low
air.hittime = 15
air.velocity = -3,-5

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
