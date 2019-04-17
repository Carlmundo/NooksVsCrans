;===============================================================================
;Blast from the Past!
;===============================================================================

;Hyper Begin
[Statedef 3500]
type    = S
physics = S
velset = 0,0
ctrl = 0
sprpriority = 2
hitcountpersist = 1
anim = 3511
poweradd = -1000

; Call for help
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = S11,1

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG 
flag2 = nobardisplay
flag3 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 5
Time = 80
anim =-1 ;s3012
pos = 15,-45
sound = S10,0
volume = 20
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

;------------End of Hyper Effects

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3510
ctrl = 0

;===============================================================================
;Telepathic Attack
[StateDef 3510]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0
sprpriority = -2

; sfx
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S9,1

[State 0, beam]
type = Helper
trigger1 = AnimElem = 1
helpertype = normal
name = "beam"
ID = 3511
pos = 9,-86
postype = p1
stateno = 3511
bindtime=-1
ownpal = 1
ontop = 1
sprpriority = 2

[State 0, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 3515
ctrl = 1

;--------
; Strong Beam
[StateDef 3511]
type = A
movetype = A
physics = C
anim = 1002
ctrl = 0

[State 0, ontop]
type = SprPriority
trigger1 = 1
value = 2

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + (22 * parent, facing)
y = parent, Pos Y - 86

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,1
volume = 20

[State 0, hitdef]
type = HitDef
trigger1 = Time = 0
attr = S,SA
hitflag = MAF
guardflag = MAF
animtype = Hard
air.animtype = Medium
fall.animtype = Medium
damage = 35,5
pausetime = 3,12
hitsound = S9,2
guardsound = 6,0
sparkno = 0
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -1,-8
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 20
palfx.add = 100, 100, 100
palfx.invertall = 1
palfx.sinadd = 30, 30, 0, 44
palfx.color = 0
fall = 1
p2facing=1
P2Stateno = 3512

[State 0, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent, stateno != 3510


;===============================================================================
;Opponent Dizzy State
[Statedef 3512]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5300

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 50
value = 5051

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 48
x = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = Time = 50
y = -0.5

[State 0, End The Dizzy]
type = SelfState
trigger1 = Time = 2000
ctrl = 1
value = 5070

;===============================================================================
;Opponent Dizzy State2
[Statedef 3513]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5051

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = Time = 10
y = -0.5

[State 0, End The Dizzy]
type = SelfState
trigger1 = Time = 2000
ctrl = 1
value = 5070

;===============================================================================
;"The Decider"
[statedef 3515]
type = C
movetype = I
physics = S
anim = 0
velset = 0,0
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 10 && P2StateNo = 3512
value = 3520
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 10 && P2StateNo != 3512
value = 0
ctrl = 1

;===============================================================================
;X-men Attack!
[Statedef 3520]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0
poweradd = -2000                 ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 9999                        ;Change animation (Def: no change)
sprpriority = -2                 ;Set layering priority to 2 (in front)
hitcountpersist = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
trigger2 = time = 220
value = S1,1
;volume = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = S9,4
;volume = 255

; talking
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S11,2

;Xavier Disappear
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 21
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -10,0
accel = 0,0
random = 0,0
removetime = 100
supermove
pausemove
sprpriority = 2

[State 0, PosSet]
type = PosSet
trigger1 = time = 1
x = 0
y = 0

;Angel Appear
[State 0, Explod]
type = Explod
trigger1 = time = 15
anim = 3500
pos = -100,-70
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 65
supermove
pausemove
sprpriority = -2

;Angel Dive
[State 0, Projectile]
type = Projectile
trigger1 = time = 80
projanim = 3501
projhitanim = 3501
pos = p1
offset = -80, -65
velocity = 8, 6
projremovetime = 20
attr = S, SP
damage = 50,4
sparkno = 1
sparkxy = 60, -40
hitsound = 5,1
animtype = Heavy
guardflag = MA
pausetime = 10,0
ground.type = Heavy
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = 0, 0
sprpriority = 2
p2stateno = 3513

;Angel Leave
[State 0, Explod]
type = Explod
trigger1 = time = 96
anim = 3510
pos = 12,8
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 8, 6
removetime = 15
supermove
pausemove
sprpriority = 3

;Marvel Girl
[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 3507
pos = -120,0
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
sprpriority = 2

;Cyclops
[State 0, Explod]
type = Explod
trigger1 = time = 60
anim = 3502
pos = -130,0
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
sprpriority = 1

;Optic Blast
[State 0, Projectile]
type = Projectile
trigger1 = time = 110
projanim = 3505
projhitanim = 3506
offset = -145, -10
pos = p1
projremovetime = -2
attr = S, SP
damage = 50,4
sparkno = -1
hitsound = S9,6
animtype = Heavy
guardflag = MA
pausetime = 0,4
ground.type = Heavy
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -6,-2
air.velocity = -6, 0
sprpriority = 2
ontop = 1
palfx.add = 100,0,0

;Beast Spin
[State 0, Projectile]
type = Projectile
trigger1 = time = 60
projanim = 3504
projhitanim = 3503
offset = -200, -15
pos = p1
velocity = 12, 0
projremovetime = 80
attr = S, SP
damage = 150,4
sparkno = 2
sparkxy = 35, -40
hitsound = 5,2
animtype = Heavy
guardflag = MA
pausetime = 10,0
ground.type = Heavy
sprpriority = 2
scale = 1, 1
ontop = 1
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = 0, 0
p2stateno = 3513

;Beast Leave
[State 0, Explod]
type = Explod
trigger1 = time = 7500000000
anim = 3503
pos = 67,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
removetime = -2
sprpriority = 1
supermove
pausemove

;Iceman Projectile
[State 0, Projectile]
type = Projectile
trigger1 = time = 45
projanim = 3512
projhitanim = 3512
offset = 200, 0
pos = p1
velocity = -8, 0
projremovetime = 100
attr = S, SP
damage = 150,4
sparkno = 1
sparkxy = 15, -60
hitsound = 5,0
animtype = Low
pausetime = 0,0
ground.type = Light
sprpriority = 2
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = 0, 0
p2stateno = 3513

;Iceman Appear
[State 0, Explod]
type = Explod
trigger1 = time = 45
anim = 3508
pos = 210,0
postype = p1  ;p2,front,back,left,right
facing = -1
bindtime = 1
vel = -8,0
removetime = 40
sprpriority = 2
supermove
pausemove

;Iceman Beam
[State 0, Explod]
type = Explod
trigger1 = time = 45
anim = 3509
pos = 155,20
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
vel = -8,0
removetime = 80
sprpriority = 2
supermove
pausemove

;Xavier Return
[State 0, Explod]
type = Explod
trigger1 = time = 220
anim = 100
pos = -160,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 8,0
accel = 0,0
random = 0,0
removetime = 14
supermove
pausemove
sprpriority = 2

[State 0, VarSet]
type = VarSet
trigger1 = time = 150
v = 0
value = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 235
value = 0
ctrl = 1

;===============================================================================
;End of X-men Hyper
;===============================================================================
