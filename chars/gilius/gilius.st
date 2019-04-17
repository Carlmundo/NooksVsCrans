;---------------------------------------------------------------------------
; LOSE (Time over)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0,0

[State 170, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

;---------------------------------------------------------------------------
; WIN
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
trigger1 = Var(19) != 1
value = 181

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
trigger1 = Var(19) = 1
value = 182

;---------------------------------------------------------------------------
; WIN1
[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0,0

[State 181,1]
type = explod
trigger1 = time = 0
anim = 181
postype = left
pos = 210,70
sprpriority = -1
bindtime = 140
removetime = 140


[State 181, 1]
type = Posset
trigger1 = time = 31
y = 300

[State 181,1]
type = PlaySnd
trigger1 = time = 0
trigger2 = time = 16
trigger3 = time = 32
trigger4 = time = 48
value = 180, 0



[State 181, 2]
type = Projectile
trigger1 = time = 30
trigger1 = Facing = 1
projanim = 020
projshadow = 68,68,68
postype = p1
offset = 0,0
velocity = 2, 0 
projremovetime = 1000

[State 181, 2]
type = Projectile
trigger1 = time = 30
trigger1 = Facing = -1
projanim = 020
projshadow = 68,68,68
postype = p1
offset = 0,0
velocity = -2, 0 
projremovetime = 1000

[State 181, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1


;---------------------------------------------------------------------------
; WIN2
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0,0

[State 182,1]
type = explod
trigger1 = time = 0
anim = 181
postype = left
pos = 210,70
sprpriority = -1
bindtime = 140
removetime = 140


[State 182, 1]
type = Posset
trigger1 = time = 31
y = 300

[State 182,1]
type = PlaySnd
trigger1 = time = 0
trigger2 = time = 16
trigger3 = time = 32
trigger4 = time = 48
value = 180, 0



[State 182, 2]
type = Projectile
trigger1 = time = 30
trigger1 = Facing = 1
projanim = 7020
projshadow = 68,68,68
postype = p1
offset = 0,0
velocity = 2, 0 
projremovetime = 1000

[State 182, 2]
type = Projectile
trigger1 = time = 30
trigger1 = Facing = -1
projanim = 7020
projshadow = 68,68,68
postype = p1
offset = 0,0
velocity = -2, 0 
projremovetime = 1000

[State 182, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1
;---------------------------------------------------------------------------


; INTRO
[Statedef 191]
type = S
ctrl = 0
anim = 9999


[State 191, 1] ;Intro not yet over
type = AssertSpecial
trigger1 = Time = [0, 100]
flag = intro

[State 191, 2]
type = Projectile
trigger1 = Time = 0
projshadow = -1
projanim = 190
projremovetime = 100
offset = 0, 0
velocity = 1.5, 0

[State 191, 3]
type = ChangeAnim
trigger1 = Time = 100
value = 0





;---------------------------------------------------------------------------
; lose (dead)
[Statedef 5150]
type = S
ctrl = 0
anim = 5151
velset = 0,0,0


[State 5150, 1]
type = PlaySnd
trigger1 = Time = 0
value = 5150, 0

[State 5150, 3]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 5150, 4]
type = Changeanim
trigger1 = time = 60
value = 9999

;---------------------------------------------------------------------------
; STAND_a-1
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd = 30
ctrl = 0
velset = 0,0,0
anim = 200


[State 200, 1]
type = PlaySnd
trigger1 = Time = 0
value = 200, 0


[State 200, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 25
guardflag = MA
pausetime = 0,40
sparkno = 1
sparkxy = -2,-20 
hitsound   = s210,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = -2.2,-3.2

[State 200, 6]
type = ChangeState
trigger1 = moveguarded = 1
value = 201

[State 200, 7]
type = ChangeState
trigger1 = movehit = 1
value = 210


[State 200, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 201
ctrl = 1


;---------------------------------------------------------------------------
; STAND_a
[Statedef 201]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 201



[State 201, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; STAND_a
[Statedef 210]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 210



[State 210, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 211
ctrl = 1

;---------------------------------------------------------------------------
; STAND_a
[Statedef 211]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 211

[State 211, 2]
type = ChangeState
trigger1 = command = "a"
value = 220
ctrl = 1

[State 211, 2]
type = ChangeState
trigger1 = var(20) = 1
value = 220
ctrl = 1


[State 211, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; STAND_a-2
[Statedef 220]
type    = S
movetype= A
physics = S
poweradd = 30
ctrl = 0
velset = 0,0,0
anim = 220

[State 220, 1]
type = PlaySnd
trigger1 = Time = 0
value = 200, 0


[State 220, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 25
guardflag = MA
pausetime = 0,30
sparkno = 1
sparkxy = -2,-20 
hitsound   = s220,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = -2.2,-3.2


[State 220, 7]
type = ChangeState
trigger1 = p2statetype != A
trigger1 = P2bodydist X >= 6
trigger1 = P2bodydist X <= 24
trigger1 = AnimTime = 0
trigger1 = movehit = 1
value = 221

[State 220, 7]
type = ChangeState
trigger1 = P2bodydist X >= 25
trigger1 = AnimTime = 0
trigger1 = movehit = 1
trigger2 = p2statetype = A
trigger2 = AnimTime = 0
trigger2 = movehit = 1
value = 222

[State 220, 7]
type = ChangeState
trigger1 = p2statetype != A
trigger1 = p2bodydist X <= 5
trigger1 = AnimTime = 0
trigger1 = movehit = 1
value = 223

[State 220, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; STAND_a
[Statedef 221]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 221

[State 221, 2]
type = ChangeState
trigger1 = command = "a"
value = 230
ctrl = 1

[State 221, 2]
type = ChangeState
trigger1 = var(20) = 1
value = 230
ctrl = 1

[State 221, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; STAND_a
[Statedef 222]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 221


[State 222, 2]
type = ChangeState
trigger1 = command = "a"
value = 240
ctrl = 1

[State 222, 2]
type = ChangeState
trigger1 = var(20) = 1
value = 240
ctrl = 1

[State 222, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; STAND_a
[Statedef 223]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 221


[State 223, 2]
type = ChangeState
trigger1 = command = "a"
value = 900
ctrl = 1

[State 223, 2]
type = ChangeState
trigger1 = var(20) = 1
value = 900
ctrl = 1

[State 223, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; STAND_a-3
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd = 30
ctrl = 0
velset = 0,0,0
anim = 230


[State 230, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 25
guardflag = MA
pausetime = 0,30
sparkno = 0
sparkxy = -2,-30 
hitsound   = s230,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = -2.2,-3.2

[State 230, 7]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = movehit = 1
value = 231

[State 230, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; STAND_a
[Statedef 231]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 231

[State 231, 2]
type = ChangeState
trigger1 = command = "a"
value = 232
ctrl = 1

[State 231, 2]
type = ChangeState
trigger1 = var(20) = 1
value = 232
ctrl = 1

[State 231, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; STAND_a-3
[Statedef 232]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd = 30
ctrl = 0
velset = 0,0,0
anim = 230


[State 232, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 25
guardflag = MA
pausetime = 0,30
sparkno = 0
sparkxy = -2,-30 
hitsound   = s230,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = -2.2,-3.2

[State 232, 2]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = movehit = 1
value = 233

[State 232, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; STAND_a
[Statedef 233]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 231

[State 233, 2]
type = ChangeState
trigger1 = command = "a"
value = 250
ctrl = 1

[State 233, 2]
type = ChangeState
trigger1 = var(20) = 1
value = 250
ctrl = 1

[State 233, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; STAND_a-4
[Statedef 240]
type    = S
movetype= A
physics = S
poweradd = 50
ctrl = 0
velset = 0,0,0
anim = 240


[State 240, 1]
type = PlaySnd
trigger1 = Time = 0
value = 200, 0


[State 240, 1] 
type = VarSet
trigger1 = time = 0
v = 20
value = 0

[State 240, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 50
guardflag = MA
pausetime = 0,0
sparkno = 1
sparkxy = 2,-30 
hitsound   = s250,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -2.2,-3.2
fall = 1
fall.animtype = Hard


[State 240, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;蹴り
[Statedef 250]
type    = S
movetype= A
physics = S
poweradd = 50
ctrl = 0
velset = 0,0,0
anim = 250

[State 250, 1] 
type = VarSet
trigger1 = time = 0
v = 20
value = 0

[State 250, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 50
guardflag = MA
pausetime = 0,0
sparkno = 2
sparkxy = -2,-30 
hitsound   = s250,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -2.2,-3.2
fall = 1
fall.animtype = Hard


[State 250, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;回転斬り
[Statedef 270]
type    = A
movetype= A
physics = S
poweradd = 50
ctrl = 0
velset = 0,0
anim = 270

[State 270, 1]
type = PlaySnd
trigger1 = Time = 0
value = 270, 0


[State 270, 1]
type = PosAdd
trigger1 = Time = [6,24] 
x = 2

[State 270, 1]
type = PosAdd
trigger1 = Time = [50,62] 
x = -3


[State 270, 1]
type = HitDef
trigger1 = Time = 0
attr = C, SA
animtype  = Medium
damage    = 100
guardflag = L
pausetime = 0,0
sparkno = 2
sparkxy = -2,-30 
hitsound   = s250,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -2.2,-3.2
fall = 1
fall.animtype = Hard


[State 270, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;タックル
[Statedef 300]
type    = A
movetype= A
physics = N
juggle  = 4
poweradd = 50
ctrl = 0
velset = 5,-5
anim = 300


[State 300, 1]
type = HitDef
trigger1 = Time = 0
attr = A, NA
animtype  = Medium
damage    = 50
guardflag = HA
pausetime = 7,0
sparkno = 2
sparkxy = -2,-20 
hitsound   = s250,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -2.2,-3.2
fall = 1

[State 300, 5]
type = velset 
trigger1 = MoveContact = 1
x = 0

[State 300,2]
type = Veladd
trigger1 = time >= 0
y = 0.35

[State 300, 4]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 820
ctrl = 0

;---------------------------------------------------------------------------
;回転蹴り
[Statedef 350]
type    = S
movetype= A
physics = S
poweradd = 50
ctrl = 0
velset = 0,0,0
anim = 350


[State 350, 1]
type = PlaySnd
trigger1 = Time = 10
value = 3000, 0

[State 350, 1]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Medium
damage    = 75
guardflag = HA
pausetime = 0,0
sparkno = 2
sparkxy = -2,-37 
hitsound   = s250,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -2.2,-3.2
fall = 1
fall.animtype = Hard

[State 350, 5]
type = velset 
trigger1 = MoveContact = 1
x = 0


[State 350, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;JUMP_A
[Statedef 600]
type    = A
movetype= A
physics = A
poweradd = 30
juggle  = 2
ctrl = 0
anim = 600

[State 600, 1]
type = PlaySnd
trigger1 = Time = 0
value = 200, 0

[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 75
getpower  = 10
givepower = 10
guardflag = HA
priority = 3
pausetime = 5,10
sparkno = 1
sparkxy = -10,-30
hitsound   = s250,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -2,-1.5   
air.velocity = -2,-3
fall = 1

[State 600, 4]
type = ChangeState
trigger1 = AnimElem = 12
value = 601
ctrl = 0

[State 600, 4]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 820
ctrl = 0

;---------------------------------------------------------------------------
; jump D
[Statedef 601]
type    = A
movetype= I
physics = A
ctrl = 0
anim = 601

[State 7041, 1] 
type = velset 
trigger1 = command = "holdfwd"
x = 1.5

[State 7041, 2]
type = velset 
trigger1 = command = "holdback"
x = -1.5

[State 800, 2]
type = ChangeState
trigger1 = command = "a"
value = 600
ctrl = 1

[State 7041, 4]
type = ChangeState
trigger1 = Time >= 10
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 820
ctrl = 0

;---------------------------------------------------------------------------
;JUMP_A
[Statedef 610]
type    = A
movetype= A
physics = N
poweradd = 50
juggle  = 2
ctrl = 0
anim = 610

[State 610, 1]
type = PlaySnd
trigger1 = Time = 0
value = 200, 0

[State 610, 1] 
type = velset 
trigger1 = command = "holdfwd"
x = 1.5

[State 610, 2]
type = velset 
trigger1 = command = "holdback"
x = -1.5

[State 610, 2]
type = HitDef
trigger1 = AnimElem = 11
attr = A, NA
damage    = 200
getpower  = 10
givepower = 10
guardflag = HA
priority = 3
pausetime = 7,8
sparkxy = -5,5
hitsound   = s250,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4   
air.velocity = -1.3,-3
fall = 1


[State 610,2]
type = Veladd
trigger1 = time >= 0
y = 0.35



[State 610, 4]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 820
ctrl = 0

;---------------------------------------------------------------------------
; 投げ

[Statedef 900]
type = S
movetype = A
physics = S
poweradd = 50
ctrl = 0
anim = 900

[State 900, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NT
Hitflag = M
priority = 2, Miss
sparkno = -1
sprpriority = 3
p1stateno = 910
p2stateno = 930
p2getp1state = 1
p2facing = 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -2.2,-3.2
fall = 1 


[State 900, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;投げる
[Statedef 910]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 260


[State 910, 2]
type = TargetBind
trigger1 = Time = 0
pos = 30,0


[State 910, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl =1



;---------------------------------------------------------------------------
; 相手側
[Statedef 930]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 930, 0]
type = Changeanim2
trigger1 = Time = 0
value = 930



[State 931, 0]
type = ChangeAnim2
trigger1 = time = 56
value = 931

[State 931, 1]
type = PosAdd
trigger1 = Time = 56
y = -60


[State 931, 1]
type = VelSet
trigger1 = Time = 56
y = -5
x = -5

[State 931, 2]
type = Veladd
trigger1 = Time >= 56
y = .35

[State 931, 3] 
type = EnvShake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
time = 12
ampl = 4
freq = 127

[State 931, 3] 
type = LifeAdd
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = -50



[State 931, 4]
type = SelfState
trigger1 = Time >= 56
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------------------------------------------------------------


;マジック


[Statedef 3000]
type    = A
movetype= A
physics = S
ctrl = 0
poweradd= -1000
anim = 3000

[State 3100, 1]
type = SuperPause
trigger1 = time = 0
pos = -11, -25


[State 3000, 1]
type = PlaySnd
trigger1 = Time = 10
value = 3000, 0


[State 3000, 3]
type = Projectile
trigger1 = time = 10
projanim = 3010
postype = p1
offset = -10,-30
velocity = 0, -6
accel = 0,0.28
projremovetime = 20

[State 3000, 1]
type = PlaySnd
trigger1 = Time = 20
value = 3000, 1

[State 3000, 1]
type = PlaySnd
trigger1 = Time = 40
value = 3000, 2

[State 3000,1]
type = explod
trigger1 = time = 40
anim = 3030
postype = p1
pos = 0,0
sprpriority = 10
bindtime = 100
removetime = 100
shadow = 68,68,68

[State 3000,3]
type = HitDef
;triggerall = MoveHit = 0
trigger1 = AnimElem = 3
;trigger1 = timemod = 5,0
attr = S, HA
damage    = 400,100
givepower = 25
getpower = 25
guardflag = MA
priority = 3
pausetime = 0,20
sparkno = -1
sparkxy = -2,-11 
hitsound   = s1111,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -4   
air.velocity = -1.3,-7
fall = 1
palfx.time = 20
palfx.add = 255,255,255
;palfx.sinadd = 255,255,255,8


[State 3000,2]
type = Helper
trigger1 = time = 41
id = 3020
name = "magic"
pos = 25, 0
postype = p1
stateno = 3010
helpertype = normal
keyctrl = 0
ownpal = 1

[State 3000,2]
type = Helper
trigger1 = time = 41
id = 3020
name = "magic"
pos = -25, 0
postype = p1
stateno = 3020
helpertype = normal
keyctrl = 0
ownpal = 1

[State 3000, 7]
type = ChangeState
trigger1 = Time = 140
value = 0
ctrl = 1

;---------------------------------------------------------------------------


[Statedef 3010]
type    = A
movetype= A
physics = N
velset = 3,0
anim = 3020



[State 3010,3]
type = HitDef
trigger1 = Time = 0
attr = S, HP
damage    = 200,50
givepower = 25
guardflag = MA
priority = 3
pausetime = 0,20
sparkno = -1
sparkxy = -2,-11
hitflag = MA
hitsound   = s1111,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -3   
air.velocity = -1.3,-3
palfx.time = 20
palfx.add = 255,255,255
;palfx.sinadd = 255,255,255,8
fall = 1

[State 3010, 7]
type = DestroySelf
trigger1 =Time = 140

;---------------------------------------------------------------------------

[Statedef 3020]
type    = A
movetype= A
velset = -3,0
anim = 3021



[State 3020,3]
type = HitDef
trigger1 = Time = 0
attr = S, HP
damage    = 200,50
givepower = 25
guardflag = MA
priority = 3
pausetime = 0,20
sparkno = -1
sparkxy = -2,-11
hitflag = MA
hitsound   = s1111,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -3   
air.velocity = -1.3,-3
palfx.time = 20
palfx.add = 255,255,255
;palfx.sinadd = 255,255,255,8
fall = 1



[State 3020, 7]
type = DestroySelf
trigger1 =Time = 140



;---------------------------------------------------------------------------------------------


;ストライカー アックス


[Statedef 2000]
type    = S
movetype= I
physics = S
poweradd = 50
ctrl = 0
anim = 0


[State 2000, 3] 
type = VarAdd
trigger1 = time = 0
trigger1 = numhelper(2000) < 1
v = 8
value = 1



[State 2000,2]
type = Helper
trigger1 = time = 1
trigger1 = numhelper(2000) < 1 
trigger1 = var(8) < 4
id = 2000
name = "ax"
pos = -100,0
postype = back
stateno = 2001
helpertype = normal
keyctrl = 0
ownpal = 1



[State 2000, 4]
type = ChangeState
trigger1 = Time = 5
value = 0
ctrl = 1


;アックスの行動


[Statedef 2001]
type    = S 
movetype= I
velset = 0,0
anim = 2000

[State 2001, 1]
type = VelSet
trigger1 = time = 10
x = 5
y = 0


[State 2001 ,3] 
type = ChangeState
trigger1 = P2Dist X <= 150
value = 2005


[State 2001, 4]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 2010

[State 2001, 5]
type = DestroySelf
trigger1 =Time = 150


;アックスジャンプ攻撃


[Statedef 2005]
type    = A
movetype= A
physics = N
velset = 5,-5,0
anim = 2010

[State 7500,1]
type = explod
trigger1 = time = 0
anim = 2222
postype = p1
pos = 10,0
sprpriority = 1
removetime = 30

[State 2005, 1]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Medium
damage    = 105
guardflag = HA
pausetime = 11,11
sparkno = 2
sparkxy = -2,-11 
hitsound   = s250,0
guardsound = 6,0
p2stateno = 2100
p2getp1state = 1
p2facing = 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -2.2,-3.2
fall = 1 

[State 300,2]
type = Veladd
trigger1 = time >= 0
y = 0.35

[State 300, 4]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 2006


[State 2005, 3]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 2010

[State 2005, 4]
type = DestroySelf
trigger1 =Time = 150

;アックスジャンプ着地後

[Statedef 2006]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 2020

[State 2006, 1]
type = VelSet
trigger1 = time = [10,100]
x = -5



[State 2006, 2]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 2010

[State 2006, 3]
type = DestroySelf 
trigger1 =Time = 150



;アックスダメージ処理


[Statedef 2010]
type = S
movetype = A
velset = -3,-10
anim = 3600

[State 2010, 1]
type = PlaySnd
trigger1 = Time = 0
value = 2010, 0
volume = 125

[State 2010, 2]
type = AfterImage
trigger1 = time = 0
time = 999
TimeGap  = 1
FrameGap = 4
length = 15

[State 2010, 1]
type = DestroySelf
trigger1 =Time = 100




;---------------------------------------------------------------------------
;相手側
[Statedef 2100]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0

[State 2100, 1]
type = Changeanim2
trigger1 = Time = 0
value = 2100

[State 2100,2]
type = PosAdd
trigger1 = time > 1
trigger1 = backedgebodydist > 0
x = -12
y = -1.2


[State 2100, 3]
type = ChangeState
trigger1 = backedgebodydist <= 3
value = 2101
ctrl = 0


[Statedef 2101]
type    = S
movetype= H
physics = N
ctrl = 0
velset = 0,0


[State 2101, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2100

[State 2101, 2]
type = PlaySnd
Trigger1 = Time = 0
value = F5,1


[State 2101, 3]
type = EnvShake
Trigger1 = Time = 0
time = 10
ampl = -5
freq = 100
phase = 50

[State 2101, 4]
type = ChangeState
trigger1 = Time = 10
value = 2102


[Statedef 2102]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 2,-5
anim = 2100

[State 2102,1]
type = SelfState
trigger1 = time = 0
value = 5050
ctrl = 0


;---------------------------------------------------------------------------------------------
;ストライカー ティルス


[Statedef 2050]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 0
poweradd = 50

[State 2050, 3] 
type = VarAdd
trigger1 = time = 0
trigger1 = numhelper(2500) < 1
v = 7
value = 1


[State 2050,2]
type = Helper
trigger1 = time = 1 
trigger1 = numhelper(2500) < 1
trigger1 = var(7) < 4
id = 2500
name = "ax"
pos = -100,0
postype = back
stateno = 2060
helpertype = normal
keyctrl = 0
ownpal = 1




[State 2050, 4]
type = ChangeState
trigger1 = Time = 5
value = 0
ctrl = 1


;ティルスの行動


[Statedef 2060]
type    = S 
movetype= A
velset = 0,0
anim = 2050

[State 2060, 1]
type = VelSet
trigger1 = time = 10
x = 5

[State 2060, 2]
type = ChangeState
trigger1 = time = 38
value = 2070


[State 2060, 4]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 2090

[State 2060, 5]
type = DestroySelf
trigger1 =Time = 100



[Statedef 2070]
type    = S 
movetype= A
velset = 0,0
anim = 2060

[State 2070, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2050, 0


;炎
[State 2070, 6]
type = Projectile
trigger1 = AnimElem = 3
projanim = 2080
projshadow = 68,68,68
projhitanim = 2090
offset = 43, -35
velocity = 4, 0
attr = S, SP
damage    = 100,30
animtype  = Hard
givepower = 10
hitflag = MA
guardflag = MA
pausetime = 2,3
sparkno = -1
sparkxy = 5, 0
hitsound   = 5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3.5   
airguard.velocity = -3.5   
air.type = Low
air.velocity = -3.5,-3
air.juggle = 6
fall = 1
palfx.time = 60
palfx.add = 255,70,0
palfx.sinadd = 100,25,0,3


[State 2070, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 2080

[State 2070, 4]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 2090


[State 2070, 5]
type = DestroySelf
trigger1 =Time = 150


;帰る

[Statedef 2080]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 2070

[State 2080, 1]
type = VelSet
trigger1 = time = [10,100]
x = -5



[State 2080, 2]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 2090

[State 2080, 3]
type = DestroySelf 
trigger1 =Time = 150


;ティルスダメージ処理


[Statedef 2090]
type = S
movetype = A
velset = -3,-10
anim = 3600



[State 2090, 1]
type = PlaySnd
trigger1 = Time = 0
value = 2000, 0
volume = 125

[State 2090, 2]
type = AfterImage
trigger1 = time = 0
time = 999
TimeGap  = 1
FrameGap = 4
length = 15

[State 2090, 1]
type = DestroySelf
trigger1 =Time = 100

;---------------------------------------------------------------------------
; STAND_a
[Statedef 1111]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd = 30
ctrl = 0
velset = 0,0,0
anim = 200


[State 1111, 1]
type = PlaySnd
trigger1 = Time = 0
value = 200, 0


[State 1111, 1] 
type = VarSet
trigger1 = time = 0
v = 20
value = 1

[State 1111, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 25
guardflag = MA
pausetime = 0,40
sparkno = 1
sparkxy = -2,-20 
hitsound   = s210,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = -2.2,-3.2

[State 1111, 6]
type = ChangeState
trigger1 = moveguarded = 1
value = 201

[State 1111, 7]
type = ChangeState
trigger1 = movehit = 1
value = 210


[State 1111, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 201
ctrl = 1


;チキン勝利
[Statedef 7171]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 7001
velset = 0,0



[State 7171, 1]
type = ChangeState
trigger1 = Time = 50
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------


; Stand
[Statedef 0]
type = S
physics = S
sprpriority = 0

;追加
[State 0, 1]
type = ChangeAnim
trigger1 = Var(19) = 1
value = 7001


;変更
[State 0, 1]
type = ChangeAnim
triggerall = Var(19) = 0 ;変更
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 0

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

;---------------------------------------------------------------------------
; RUN_BACK
[Statedef 105]
type    = A
physics = A
ctrl = 0
anim = 105

[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, 2]
type = CtrlSet
trigger1 = Time = 2
value = 1

;変更
[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 820 ;変更


;===========================================================================
[Statedef -2]
;===========================================================================

[State -2, 1]
type = SelfState
triggerall = var(21) = 1
triggerall = StateNo != 7777
trigger1 = movetype = H
value = 7777

[State -2, 1]
type = ChangeState
trigger1 = NumHelper(3501) >= 1
trigger1 = IsHelper = 0
value = 3520
ctrl = 1

[State -2, 1]
type = ChangeState
trigger1 = stateno = 120
trigger1 = Anim = 5120
value = 5120
ctrl = 1



