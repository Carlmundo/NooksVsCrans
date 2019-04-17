;---------------------------------------------------------------------------
; Win state decider
;---------------------------------------------------------------------------
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
value = 181

;---------------------------------------------------------------------------
; Win pose 1 - Bow
;---------------------------------------------------------------------------
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 666666,1
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; INTRO decider
[Statedef 190]
type = S

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,100

[State 190, 2]
type = ChangeState
trigger1 = Var(1) = [0,20]
value = 191

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [21,40]
value = 191

[State 190, 4]
type = ChangeState
trigger1 = Var(1) = [41,60]
value = 192

[State 190, 4]
type = ChangeState
trigger1 = Var(1) = [61,80]
value = 192

[State 190, 4]
type = ChangeState
trigger1 = Var(1) = [81,100]
value = 192

;---------------------------------------------------------------------------
; Introduction
;---------------------------------------------------------------------------
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = s666666,39
volume = 0
channel = 8

[State 0, dark]
type = Palfx
trigger1 = Animelem = 14
time = 4
add = -150,-150,-150

[State 0, dark]
type = Palfx
trigger1 = Animelem = 15
time = 4
add = -120,-120,-120

[State 0, dark]
type = Palfx
trigger1 = Animelem = 16
time = 4
add = -90,-90,-90

[State 0, dark]
type = Palfx
trigger1 = Animelem = 17
time = 4
add = -60,-60,-60

[State 0, dark]
type = Palfx
trigger1 = Animelem = 18
time = 4
add = -25,-25,-25

[State 191, tumblez]
type = Explod
trigger1 = RoundState != 0
persistent = 0
anim = 191
postype = p1
pos = -260, 0
velocity = 4.2, 0
removetime = 148
ontop = 1

[State 191, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Introduction 2
;---------------------------------------------------------------------------
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0
sprpriority = 4

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 0, PlaySnd]
type = null;PlaySnd
trigger1 = AnimElem = 1
value = s666666,39
volume = 0
channel = 8

[State -3, Landing Sound]
type = PlaySnd
trigger1 = animelem = 21
value = 8,1

[State -3, Landing Sound]
type = PlaySnd
trigger1 = animelem = 13
value = 200,0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 193
ID = 193
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 191, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0


;---------------------------------------------------------------------------
; Taunt
;---------------------------------------------------------------------------
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 191, Snd 2]
type = PlaySnd
trigger1 = animelem = 1
value = s666666,38
volume = 255

[State 195, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Punch
;---------------------------------------------------------------------------
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 200
poweradd = 10
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[state 200, Voice]
type = playsnd
trigger1 = animelem = 1
trigger1 = random < 300
value = 200, 0
volumescale = 100
channel = 0

[State 200, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 25
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = 2;s8002
sparkxy = -15,-61
guard.sparkno = 2;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -2
air.type = Low
air.hittime = 10
air.velocity = -2,-2
airguard.velocity = -2,-2

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Punch
;---------------------------------------------------------------------------
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 210
poweradd = 30
sprpriority = 2

[State 210, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[state 210, Voice]
type = playsnd
trigger1 = animelem = 2
trigger1 = random < 500
value = 200, 1
volumescale = 100
channel = 0

[State 210, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 48
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2;s8022
sparkxy = -15,-62
guard.sparkno = 2;s8001
hitsound = s8000,1
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 13
ground.velocity = -3
air.type = Low
air.hittime = 13
air.velocity = -3,-3
airguard.velocity = -3,-3

[State 210, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Punch
;---------------------------------------------------------------------------
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 220
poweradd = 50
sprpriority = 2

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[state 220, Voice]
type = playsnd
trigger1 = animelem = 2
trigger1 = random < 700
value = 200, 2
volumescale = 100
channel = 0

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 67
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-74
guard.sparkno = 2;s8001
hitsound = s8000,2
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 15
ground.velocity = -4
air.type = Low
air.hittime = 15
air.velocity = -4,-4
airguard.velocity = -4,-4

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick
;---------------------------------------------------------------------------
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 230
poweradd = 10
sprpriority = 2

[State 230, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 230, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 28
animtype = Light
guardflag = LA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = 2;s8002
sparkxy = -15,-35
guard.sparkno = 2;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 7
ground.hittime = 10
ground.velocity = -2
air.type = Low
air.hittime = 10
air.velocity = -2,-2
airguard.velocity = -2,-2

[State 230, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick
;---------------------------------------------------------------------------
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 240
poweradd = 30
sprpriority = 2

[State 240, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[state 210, Voice]
type = playsnd
trigger1 = animelem = 2
trigger1 = random < 500
value = 200, 1
volumescale = 100
channel = 0

[State 240, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 42
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2;s8022
sparkxy = -15,-75
guard.sparkno = 2;s8001
hitsound = s8000,1
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime = 13
ground.velocity = -3
air.type = Low
air.hittime = 13
air.velocity = -3,-3
airguard.velocity = -3,-3

[State 240, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
;---------------------------------------------------------------------------
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim=250
velset = 0,0
poweradd= 50
sprpriority = 2

[State 250, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[state 220, Voice]
type = playsnd
trigger1 = animelem = 1
trigger1 = random < 1000
value = 200, 1
volumescale = 100
channel = 0
[state 220, Voice]
type = playsnd
trigger1 = animelem = 3
trigger1 = random < 1000
value = 200, 2
volumescale = 100
channel = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 1.5

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 2.5

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 7

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 2

[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 63
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-45
guard.sparkno = 2;s8001
hitsound = s8000,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 16
ground.hittime = 15
ground.velocity = -4
air.type = Low
air.hittime = 15
air.velocity = -4,-4
airguard.velocity = -4,-4

[State 250, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Punch
;---------------------------------------------------------------------------
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 400
poweradd = 10
sprpriority = 2

[State 400, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[state 220, Voice]
type = playsnd
trigger1 = animelem = 1
trigger1 = random < 300
value = 200, 0
volumescale = 100
channel = 0

[State 400, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 25
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = 2;s8002
sparkxy = -15,-43
guard.sparkno = 2;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime = 10
ground.velocity = -2
air.velocity = -2,-2
airguard.velocity = -2,-2
air.type = Low
air.hittime = 10

[State 400, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch
;---------------------------------------------------------------------------
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 410
poweradd = 30
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[state 220, Voice]
type = playsnd
trigger1 = animelem = 1
trigger1 = random < 500
value = 200, 1
volumescale = 100
channel = 0

[State 410, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 47

animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2;s8022
sparkxy = -15,-34
guard.sparkno = 2;s8001
hitsound = s8000,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 13
ground.velocity = -3
air.velocity = -3,-3
airguard.velocity = -3,-3
air.hittime = 13

[State 410, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
;---------------------------------------------------------------------------
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
juggle = 1
poweradd = 50

[State 420, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

;[State 420, 1]
;type = PlaySnd
;trigger1 = Time = 6
;value = 666666, 9

[State 420, 1]
type = PlaySnd
trigger1 = Time = 6
value = 666666, 2

[State 420, HitDef]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage = 60
priority = 5, Hit
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-70
guard.sparkno = 2;s8001
hitsound = s8000,2
guardsound = 6,0
animtype = Hard
ground.type = Low
ground.slidetime = 7
ground.hittime  = 15
ground.velocity = -1.3,-12
guard.velocity = -5
air.velocity = -2,-7
air.hittime = 15

[State 420, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
;---------------------------------------------------------------------------
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 430
poweradd = 10
sprpriority = 2

[State 430, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[state 220, Voice]
type = playsnd
trigger1 = animelem = 1
trigger1 = random < 100
value = 200, 0
volumescale = 100
channel = 0

[State 430, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 27
animtype = Light
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 8,8
sparkno = 2;s8002
sparkxy = -15,-6
guard.sparkno = 2;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime = 10
ground.velocity = -2
air.type = Low
air.hittime = 10
air.velocity = -2,-2
airguard.velocity = -2,-2

[State 430, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Kick
;---------------------------------------------------------------------------
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 440
poweradd = 30
sprpriority = 2

[State 440, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[state 220, Voice]
type = playsnd
trigger1 = animelem = 1
trigger1 = random < 500
value = 200, 1
volumescale = 100
channel = 0

[State 440, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 46
animtype = Medium
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 10,10
sparkno = 2;s8022
sparkxy = -15,-23
guard.sparkno = 2;s8001
hitsound = s8000,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime = 13
ground.velocity = -3
air.type = Low
air.hittime = 13
air.velocity = -3,-3
airguard.velocity = -3,-3

[State 440, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Kick
;---------------------------------------------------------------------------
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 450
poweradd = 50
sprpriority = 2

[State 450, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 450, 1]
type = PlaySnd
trigger1 = Time = 6
value = 666666,11

[state 220, Voice]
type = playsnd
trigger1 = animelem = 2
trigger1 = random < 1000
value = 200, 2
volumescale = 100
channel = 0

[State 450, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 75
animtype = Hard
hitflag = MAF
guardflag = MA
priority = 5, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-85
guard.sparkno = 2;s8001
hitsound = s8000,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-10
guard.velocity = -5
air.velocity = -2,-7
airguard.velocity = -2.5,-2
air.hittime = 15

[State 450, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Jumping Light Punch
;---------------------------------------------------------------------------
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 600
poweradd = 10
sprpriority = 2

[State 600, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[state 220, Voice]
type = playsnd
trigger1 = animelem = 1
trigger1 = random < 300
value = 200, 0
volumescale = 100
channel = 0

[State 600, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 25
animtype = Light
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = 2;s8002
sparkxy = -15,-63
guard.sparkno = 2;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
air.type = Low
air.hittime = 10
ground.slidetime = 8
ground.hittime  = 10
ground.velocity = -2
air.velocity = -2,-2

[State 600, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Medium Punch
;---------------------------------------------------------------------------
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 610
poweradd = 30
sprpriority = 2

[State 610, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[state 220, Voice]
type = playsnd
trigger1 = animelem = 2
trigger1 = random < 500
value = 200, 1
volumescale = 100
channel = 0

[State 610, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 43
animtype = medium
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2;s8022
sparkxy = -15,-75
guard.sparkno = 2;s8001
hitsound = s8000,1
guardsound = 6,0
ground.type = High
air.type = Low
air.hittime = 13
ground.slidetime = 8
ground.hittime  = 13
ground.velocity = -3
air.velocity = -3,-3

[State 610, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Strong Punch
;---------------------------------------------------------------------------
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 620
poweradd=50
sprpriority = 2

[State 620, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 620, 1]
type = PlaySnd
trigger1 = Time = 6
value = 666666,11

[state 220, Voice]
type = playsnd
trigger1 = animelem = 3
trigger1 = random < 1000
value = 200, 2
volumescale = 100
channel = 0

[State 620, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 62
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 5, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-10
guard.sparkno = 2;s8001
hitsound = s8000,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
air.hittime = 15
ground.velocity = -1.5
guard.velocity = -5
air.velocity = -2,7
airguard.velocity = -2.5,2
air.fall = 1
fall.recover = 0

[State 620, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Light Kick
;---------------------------------------------------------------------------
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 630
poweradd = 10
sprpriority = 2

[State 630, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 630, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 23
animtype = Light
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = 2;s8002
sparkxy = -15,-78
guard.sparkno = 2;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
air.type = Low
air.hittime = 12
ground.slidetime = 8
ground.hittime  = 12
ground.velocity = -2
air.velocity = -2,-2

[State 630, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Medium Kick
;---------------------------------------------------------------------------
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 640
poweradd = 30
sprpriority = 2

[State 640, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[state 220, Voice]
type = playsnd
trigger1 = animelem = 2
trigger1 = random < 500
value = 200, 1
volumescale = 100
channel = 0

[State 640, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 40
animtype = Medium
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2;s8022
sparkxy = -15,-60
guard.sparkno = 2;s8001
hitsound = s8000,1
guardsound = 6,0
ground.type = High
air.type = Low
air.hittime = 13
ground.slidetime = 10
ground.hittime  = 13
ground.velocity = -3
air.velocity = -3,-3

[State 640, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Strong Kick
;---------------------------------------------------------------------------
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 650
poweradd= 50
sprpriority = 2

[State 650, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[state 220, Voice]
type = playsnd
trigger1 = animelem = 2
trigger1 = random < 800
value = 200, 2
volumescale = 100
channel = 0

[State 650, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 58
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 5, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-60
guard.sparkno = 2;s8001
hitsound = s8000,2
guardsound = 6,0
ground.type = High
air.type = Low
air.hittime = 17
ground.slidetime = 12
ground.hittime  = 17
ground.velocity = -4
air.velocity = -4,8
air.fall = 1

[State 650, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Throws
;---------------------------------------------------------------------------
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S666666,18
channel = -1

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1002
ID = 1002
pos = 50,-80
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
sprpriority = 8
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
pausetime = 20,70
p1facing = 1
p2facing = 1          ;Force p2 to face KFM
p1stateno = 810       ;On success, KFM changes to state 810
p2stateno = 5000      ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
;fall = 1              ;Force p2 into falling down
ground.hittime = 70
numhits = 0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Kung Fu Throw - Throwing the opponent
; Description: In this state, KFM throws the opponent by binding him to
;     various offsets based on his current frame of animation. For
;     example, [State 810, Bind 1] binds the opponent to an offset of
;     28 pixels in front of KFM. That puts him around where KFM's hand
;     is at. Is is important to keep the opponent bound using a
;     TargetBind controller at all times, until you let him go. This
;     is especially important if your player has a Clsn2 box that
;     allows him to get hit while throwing someone. Each time a player
;     gets hit, all his bound targets will be set to a fall state. If
;     the opponent is not bound, then he may get stuck in his thrown
;     state when his attacker is knocked out of the throw halfway.
; Notes: There is a TargetLifeAdd controller to decrease the opponent's
;     life, and a TargetState controller to change his state to a
;     falling state when KFM lets go of him.
[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
;poweradd = 60

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 666666,5
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

; Here a variable, var(2), is used to remember whether or not the
; player was holding forward at the start of the state. This variable
; is checked later on to turn KFM around if necessary.

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = s666666, 17

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = s666666, 32

[State 220, HitDef]
type = HitDef
trigger1 = 1
attr = S, NA
animtype  = Hard
damage    = 70
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,10
sparkno = 1;s8002
sparkxy = -15,-79
guard.sparkno = 1;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3,-7
guard.velocity = -10
air.velocity = -4,-4
ground.cornerpush.veloff = -25
air.cornerpush.veloff = -25
down.cornerpush.veloff = -25
guard.cornerpush.veloff = -25
airguard.cornerpush.veloff = -25
fall = 1
fall.recover = 1
fall.recovertime = 25
;hitcountpersist = 1

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw
; (a custom gethit state)
; Description: This is the state that the opponent changes to after being
;     hit by KFM's throw HitDef. The important thing here is to use a
;     ChangeAnim2 controller. The difference between ChangeAnim2 and
;     ChangeAnim is that ChangeAnim2 changes the player's animation to
;     an action in the AIR file of the attacker (in this case, kfm.air),
;     whereas ChangeAnim always changes the player to an action in his
;     own AIR file. Look at Action 820 in kfm.air for some extra
;     comments.
[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 820, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 821]
type    = A
movetype= H
physics = N
velset = 2.8,-7
poweradd = 40

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground
;END
