; States file for {character} -- Specials
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;------------------------------
; Weak Special 1
[StateDef 1000]
type = S
movetype = A
physics = S
anim = 1000
poweradd = 50
velset = 0,0
ctrl = 0

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,0
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1000, beam]
type = Helper
trigger1 = AnimElem = 1
helpertype = normal
name = "beam"
ID = 1010
pos = 9,-86
postype = p1
stateno = 1010
bindtime=-1
ownpal = 1
scale = 2,2
removeongethit=1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0 & NumHelper(1010) = 0
value = 0
ctrl = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
; Weak Beam
[StateDef 1010]
type = A
movetype = A
physics = C
anim = 1002
ctrl = 0

[State 1010, ontop]
type = SprPriority
trigger1 = 1
value = 2

[State 1010, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + (22 * parent, facing)
y = parent, Pos Y - 86

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,1
volume = 20

[State 1010, hitdef]
type = HitDef
trigger1 = Time = 0
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = Medium
fall.animtype = Medium
damage = 50,5
guardflag = MA
pausetime = 3,12
hitsound = S9,2
guardsound = S6,0
sparkno = 0
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 25
palfx.add = 0,0,64

[State 1010, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent, stateno != 1000

;-------------------------------------------------------------------------------
; Medium Special 1
[StateDef 1001]
type = S
movetype = A
physics = S
anim = 1000
poweradd = 50
velset = 0,0
ctrl = 0

; voice
[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,0
channel = 0

; sfx
[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 0, beam]
type = Helper
trigger1 = AnimElem = 1
helpertype = normal
name = "beam"
ID = 1011
pos = 9,-86
postype = p1
stateno = 1011
bindtime=-1
ownpal = 1
removeongethit=1

[State 0, changestate]
type = ChangeState
trigger1 = AnimTime = 0 & NumHelper(1010) = 0
value = 0
ctrl = 1

[State 0, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------
; Medium Beam
[StateDef 1011]
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
guardflag = MA
animtype = Medium
air.animtype = Medium
fall.animtype = Medium
damage = 60,5
guardflag = MA
pausetime = 3,12
hitsound = S9,2
guardsound = S6,0
sparkno = 0
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 25
palfx.add = 0,0,64

[State 0, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent, stateno != 1001


;-------------------------------------------------------------------------------
; Strong Special 1
[StateDef 1002]
type = S
movetype = A
physics = S
anim = 1000
poweradd = 50
velset = 0,0
ctrl = 0

; voice
[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,0
channel = 0

; sfx
[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 0, beam]
type = Helper
trigger1 = AnimElem = 1
helpertype = normal
name = "beam"
ID = 1012
pos = 9,-86
postype = p1
stateno = 1012
bindtime=-1
ownpal = 1
removeongethit=1

[State 0, changestate]
type = ChangeState
trigger1 = AnimTime = 0 & NumHelper(1010) = 0
value = 0
ctrl = 1

[State 0, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------
; Strong Beam
[StateDef 1012]
type = A
movetype = A
physics = C
anim = 1001
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
damage = 45,5
pausetime = 3,12
hitsound = S9,2
guardsound = S6,0
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
P2Stateno = 1113

[State 0, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent, stateno != 1002

;-------------------------------------------------------------------------------
;Opponent Choose State
[Statedef 1113]
type    = U;A
movetype= H
physics = U;N
velset = -0.5*(statetype=A),-10*(statetype=A)

[State 1020, 1] ;Custom animation
type = ChangeAnim
trigger1 = time = 1 && statetype!=A
value = 5002

[State 1020, 2] ;Custom animation
type = Changestate
trigger1 = animtime = 0 && statetype!=A
value = 1111

[State 1020, 2] ;Self animation
type = Selfstate
trigger1 = statetype=A
value = 5020

;-------------------------------------------------------------------------------
;Opponent Dizzy State
[Statedef 1111]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5300

;[State 0, PalFXWiz]
;type = PalFX
;trigger1 = time = 0
;time = 100
;add = 0,50,240
;mul = 120,224,150
;sinadd = 85,55,110,10
;invertall = 0
;color = 0

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0

[State 0, End The Dizzy]
type = SelfState
trigger1 = Time = 100
ctrl = 1
value = 5070

;-------------------------------------------------------------------------------
; Special 2 - Dash Attack
[StateDef 1100]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 4100
id = 4100
pos = -10,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 0.85,0.85
sprpriority = 0

[State 0, Explod]
type = Explod
trigger1 = time = 1
trigger2 = time = 3
trigger3 = time = 5
trigger4 = time = 7
trigger5 = time = 9
anim = 60
pos = 15,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.75,0.75

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8,0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0 
x = 30
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 19
x = -5
y = 0 

[State 1100, hitdef]
type = HitDef
trigger1 = Time = 1
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
damage = 65,5
guardflag = MA
pausetime = 2,5
hitsound = S15,2
guardsound = S6,0
sparkno = -1 ;1
sparkxy = 15,-15
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -15,-4
guard.velocity = -8
air.velocity = -14,-8
fall = 1
kill = 1
guard.kill = 1
fall.kill = 1

[State 1100, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes)
; (taken with permission from McCready's StrongGuy char)
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 8930

;[State 8900, 1]
;type = Pause
;trigger1 = (!Time)
;time = 12
;movetime = 12

[State 8900, 1]
type = EnvShake
trigger1 = (!Time)
time = 12
freq = 120;10
ampl = -3;2
phase = 90

[State 8900, 2]
type = Explod
triggerall = (NumExplod(8900) < 1)
trigger1 = Time = 0
persistent = 0
anim = 8900
ID = 8900
postype = left
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
bindtime = -1
ontop = 1
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, 3]
type = PlaySnd
trigger1 = (NumExplod(8900) != 0)
value = 30, 0
persistent = 0
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, done]
type = DestroySelf
trigger1 = RoundState = 4
