;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Bomb Gas - x
;---------------------------------------------------------------------------
;Bomb Gas X
[Statedef 1000]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1000
juggle  = 1
velset = 0,0
poweradd = 100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 8400, 0
volume = 0
channel = 1

[state 220, Voice]
type = playsnd
trigger1 = animelem = 3
trigger1 = random < 1000
value = 900, 0
volumescale = 200
channel = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "Grenade"
ID = 1001
stateno = 1001
pos = 40,-70
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Bomb Gas - y
;---------------------------------------------------------------------------
;Bomb Gas Y
[Statedef 1003]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1000
juggle  = 1
velset = 0,0
poweradd = 100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 8400, 0
volume = 0
channel = 1

[state 220, Voice]
type = playsnd
trigger1 = animelem = 3
trigger1 = random < 1000
value = 900, 0
volumescale = 200
channel = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "Grenade"
ID = 1001
stateno = 1005
pos = 40,-70
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Bomb Gas - z
;---------------------------------------------------------------------------
;Bomb Gas Z
[Statedef 1004]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1000
juggle  = 1
velset = 0,0
poweradd = 100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 8400, 0
volume = 0
channel = 1

[state 220, Voice]
type = playsnd
trigger1 = animelem = 3
trigger1 = random < 1000
value = 900, 0
volumescale = 200
channel = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "Grenade"
ID = 1001
stateno = 1006
pos = 40,-70
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------
;Gas Grenade x
[Statedef 1001]
type = A
movetype = A
physics = A
ctrl = 0
anim = 1001
velset = 2,-12

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
trigger2 = Vel Y > 0 && Pos Y >= -23
value = S666666,13
volume = 0
channel = 0
persistent = 0

[State 200, HitDef]
type = HitDef
triggerall = numhelper(1022) = 0
trigger1 = time = 0
trigger1 = anim = 1001
attr = A,SP
damage = 0,0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0,5
sparkno = 1;s7770
sparkxy = 0, 25
guard.sparkno = 1;s6767
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
air.type = Low
air.hittime = 15
air.velocity = 0,0
fall = 0
air.fall = 0

[State 0, Explod]
type = Helper
trigger1 = movecontact
trigger2 = Vel Y > 0 && Pos Y >= -23
stateno = 1002
ID = 1002
pos = 0,0;20,-40
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 100
removetime = -2
scale = 1,1
sprpriority = 4
ownpal = 0
removeongethit = 0
persistent = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Vel Y > 0 && Pos Y >= -23
trigger2 = frontedgebodydist <= -15
trigger3 = movecontact;anim = 1002 && animtime = 0

;---------------------------------------------------------------------------
;Gas Grenade y
[Statedef 1005]
type = A
movetype = A
physics = A
ctrl = 0
anim = 1001
velset = 9,-9

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
trigger2 = Vel Y > 0 && Pos Y >= -23
value = S666666,13
volume = 0
channel = 0
persistent = 0

[State 200, HitDef]
type = HitDef
triggerall = numhelper(1022) = 0
trigger1 = time = 0
trigger1 = anim = 1001
attr = A,SP
damage = 0,0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0,5
sparkno = 1;s7770
sparkxy = 0, 25
guard.sparkno = 1;s6767
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
air.type = Low
air.hittime = 15
air.velocity = 0,0
fall = 0
air.fall = 0

[State 0, Explod]
type = Helper
trigger1 = movecontact
trigger2 = Vel Y > 0 && Pos Y >= -23
stateno = 1002
ID = 1002
pos = 0,0;20,-40
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 100
removetime = -2
scale = 1,1
sprpriority = 4
ownpal = 0
removeongethit = 0
persistent = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Vel Y > 0 && Pos Y >= -23
trigger2 = frontedgebodydist <= -15
trigger3 = movecontact;anim = 1002 && animtime = 0

;------------------------------------------------------------------------
;Gas Grenade z
[Statedef 1006]
type = A
movetype = A
physics = A
ctrl = 0
anim = 1001
velset = 12,-2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
trigger2 = Vel Y > 0 && Pos Y >= -23
value = S666666,13
volume = 0
channel = 0
persistent = 0

[State 200, HitDef]
type = HitDef
triggerall = numhelper(1022) = 0
trigger1 = time = 0
trigger1 = anim = 1001
attr = A,SP
damage = 0,0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0,5
sparkno = 1;s7770
sparkxy = 0, 25
guard.sparkno = 1;s6767
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
air.type = Low
air.hittime = 15
air.velocity = 0,0
fall = 0
air.fall = 0

[State 0, Explod]
type = Helper
trigger1 = movecontact
trigger2 = Vel Y > 0 && Pos Y >= -23
stateno = 1002
ID = 1002
pos = 0,0;20,-40
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 100
removetime = -2
scale = 1,1
sprpriority = 4
ownpal = 0
removeongethit = 0
persistent = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Vel Y > 0 && Pos Y >= -23
trigger2 = frontedgebodydist <= -15
trigger3 = movecontact;anim = 1002 && animtime = 0

;------------------------------------------------------------------------
;Gas
[Statedef 1002]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1002
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S666666,18
volume = 0
channel = 2
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = S666666,31
volume = 0
channel = 1
persistent = 0

[State 200, HitDef]
type = HitDef
triggerall = numhelper(1022) = 0
trigger1 = time = 0
trigger1 = anim = 1002
attr = A,SP
damage = 0,0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0,5
sparkno = 1;s7770
sparkxy = 0, 25
guard.sparkno = 1;s6767
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
air.type = Low
air.hittime = 15
air.velocity = 0,0
fall = 0
air.fall = 0

[State 0, Explod]
type = Helper
trigger1 = movehit
stateno = 1022
ID = 1022
pos = -20,-60
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 100
removetime = -2
scale = 1,1
sprpriority = 4
ownpal = 0
removeongethit = 0
persistent = 0

[State 0, Explod]
type = Helper
trigger1 = movehit
stateno = 1023
ID = 1023
pos = 20,-40
postype = p2  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 100
removetime = -2
scale = 1,1
sprpriority = 4
ownpal = 0
removeongethit = 0
persistent = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;------------------------------------------------------------------------
;Goblin
[Statedef 1022]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1022
sprpriority = 4

[State 1800, Bind]
type = BindToTarget
trigger1 = time >= 0
time = 1
pos = -20, -60, Foot

[State 1800, No shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = unguardable

[State 200, HitDef]
type = HitDef
trigger1 = animelem = 6
trigger2 = animelem = 11
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 26
attr = S,SA
damage = 10,0
animtype = Medium
guardflag = MA
hitflag = MAFD
priority = 4, Hit
pausetime = 0,5
sparkno = 1;s8022
sparkxy = -8, -20
guard.sparkno = 1;s6767
hitsound = S8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 25
ground.velocity = 0
air.type = Low
air.hittime = 25
air.velocity = 0,0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;-----------------------------------
;Goblin 2
[Statedef 1023]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1022
sprpriority = 4

[State 1800, Bind]
type = BindToTarget
trigger1 = time >= 0
time = 1
pos = 20, -40, Foot

[State 1800, No shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = unguardable

[State 200, HitDef]
type = HitDef
trigger1 = animelem = 6
trigger2 = animelem = 11
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 26
attr = S,SA
damage = 10,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,5
sparkno = 1;s8022
sparkxy = -8, -20
guard.sparkno = 1;s6767
hitsound = S8000,0
guardsound = 6,0;S8000,1
ground.type = Low
ground.slidetime = 15
ground.hittime  = 25
ground.velocity = 0
air.type = Low
air.hittime = 25
air.velocity = 0,0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
; Air Bomb Gas - x
;---------------------------------------------------------------------------
;Air Bomb Gas X
[Statedef 1050]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 1008
juggle  = 1
poweradd = 100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 8400, 0
volume = 0
channel = 1

[state 220, Voice]
type = playsnd
trigger1 = animelem = 2
trigger1 = random < 1000
value = 900, 0
volumescale = 200
channel = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "Grenade"
ID = 1001
stateno = 1051
pos = 40,-70
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;------------------------------------------------------------------------
;Air Gas Grenade x
[Statedef 1051]
type = A
movetype = A
physics = A
ctrl = 0
anim = 1001
velset = 4,-12

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
trigger2 = Vel Y > 0 && Pos Y >= -23
value = S666666,13
volume = 0
channel = 0
persistent = 0

[State 200, HitDef]
type = HitDef
triggerall = numhelper(1022) = 0
trigger1 = time = 0
trigger1 = anim = 1001
attr = A,SP
damage = 0,0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0,5
sparkno = 1;s7770
sparkxy = 0, 25
guard.sparkno = 1;s6767
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
air.type = Low
air.hittime = 15
air.velocity = 0,0
fall = 0
air.fall = 0

[State 0, Explod]
type = Helper
trigger1 = movecontact
trigger2 = Vel Y > 0 && Pos Y >= -23
stateno = 1002
ID = 1002
pos = 0,0;20,-40
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 100
removetime = -2
scale = 1,1
sprpriority = 4
ownpal = 0
removeongethit = 0
persistent = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Vel Y > 0 && Pos Y >= -23
trigger2 = frontedgebodydist <= -15
trigger3 = movecontact;anim = 1002 && animtime = 0

;---------------------------------------------------------------------------
; Air Bomb Gas - y
;---------------------------------------------------------------------------
;Air Bomb Gas Y
[Statedef 1060]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 1008
juggle  = 1
poweradd = 100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 8400, 0
volume = 0
channel = 1

[state 220, Voice]
type = playsnd
trigger1 = animelem = 2
trigger1 = random < 1000
value = 900, 0
volumescale = 200
channel = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "Grenade"
ID = 1001
stateno = 1061
pos = 40,-70
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
;Air Gas Grenade y
[Statedef 1061]
type = A
movetype = A
physics = A
ctrl = 0
anim = 1001
velset = 12,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
trigger2 = Vel Y > 0 && Pos Y >= -23
value = S666666,13
volume = 0
channel = 0
persistent = 0

[State 200, HitDef]
type = HitDef
triggerall = numhelper(1022) = 0
trigger1 = time = 0
trigger1 = anim = 1001
attr = A,SP
damage = 0,0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0,5
sparkno = 1;s7770
sparkxy = 0, 25
guard.sparkno = 1;s6767
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
air.type = Low
air.hittime = 15
air.velocity = 0,0
fall = 0
air.fall = 0

[State 0, Explod]
type = Helper
trigger1 = movecontact
trigger2 = Vel Y > 0 && Pos Y >= -23
stateno = 1002
ID = 1002
pos = 0,0;20,-40
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 100
removetime = -2
scale = 1,1
sprpriority = 4
ownpal = 0
removeongethit = 0
persistent = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Vel Y > 0 && Pos Y >= -23
trigger2 = frontedgebodydist <= -15
trigger3 = movecontact;anim = 1002 && animtime = 0

;---------------------------------------------------------------------------
; Air Bomb Gas - z
;---------------------------------------------------------------------------
;Air Bomb Gas Z
[Statedef 1070]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 1008
juggle  = 1
poweradd = 100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 8400, 0
volume = 0
channel = 1

[state 220, Voice]
type = playsnd
trigger1 = animelem = 2
trigger1 = random < 1000
value = 900, 0
volumescale = 200
channel = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "Grenade"
ID = 1001
stateno = 1071
pos = 40,-70
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;------------------------------------------------------------------------
;Air Gas Grenade z
[Statedef 1071]
type = A
movetype = A
physics = A
ctrl = 0
anim = 1001
velset = 8,8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
trigger2 = Vel Y > 0 && Pos Y >= -23
value = S666666,13
volume = 0
channel = 0
persistent = 0

[State 200, HitDef]
type = HitDef
triggerall = numhelper(1022) = 0
trigger1 = time = 0
trigger1 = anim = 1001
attr = A,SP
damage = 0,0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0,5
sparkno = 1;s7770
sparkxy = 0, 25
guard.sparkno = 1;s6767
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
air.type = Low
air.hittime = 15
air.velocity = 0,0
fall = 0
air.fall = 0

[State 0, Explod]
type = Helper
trigger1 = movecontact
trigger2 = Vel Y > 0 && Pos Y >= -23
stateno = 1002
ID = 1002
pos = 0,0;20,-40
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 100
removetime = -2
scale = 1,1
sprpriority = 4
ownpal = 0
removeongethit = 0
persistent = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Vel Y > 0 && Pos Y >= -23
trigger2 = frontedgebodydist <= -15
trigger3 = movecontact;anim = 1002 && animtime = 0

;-----------------------------------------------------------------------------------------
;Lantern Toss - a
;-----------------------------------------------------------------------------------------
[Statedef 1008]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1010
juggle  = 1
velset = 0,0
poweradd = 100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 666666, 5
volume = 0
channel = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 8
helpertype = normal ;player
name = "lantern"
ID = 1012
stateno = 1012
pos = 70,-70
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------
;lantern A
[Statedef 1012]
type = A
movetype = A
physics = A
ctrl = 0
anim = 1012
velset = 2,7

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -5
trigger1 = Vel Y > 0
value = 1011
ignorehitpause = 1

;-----------------------------------------------------------------------------------------
;Lantern Toss - b
;-----------------------------------------------------------------------------------------
[Statedef 1009]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1010
juggle  = 1
velset = 0,0
poweradd = 100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 666666, 5
volume = 0
channel = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 8
helpertype = normal ;player
name = "lantern"
ID = 1013
stateno = 1013
pos = 70,-70
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------
;lantern B
[Statedef 1013]
type = A
movetype = A
physics = A
ctrl = 0
anim = 1012
velset = 6,7

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -5
trigger1 = Vel Y > 0
value = 1011
ignorehitpause = 1

;-----------------------------------------------------------------------------------------
;Lantern Toss - c
;-----------------------------------------------------------------------------------------
[Statedef 1010]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1010
juggle  = 1
velset = 0,0
poweradd = 100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 666666, 5
volume = 0
channel = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 8
helpertype = normal ;player
name = "lantern"
ID = 1014
stateno = 1014
pos = 70,-70
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------
;lantern C
[Statedef 1014]
type = A
movetype = A
physics = A
ctrl = 0
anim = 1012
velset = 10,7

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -5
trigger1 = Vel Y > 0
value = 1011
ignorehitpause = 1

;------------------------------------------
; Lantern lava
[Statedef 1011]
type = S
movetype = A
physics = N
anim = 1011
velset = 0,0
size.xscale = 1.3
size.yscale = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1013
ID = 1013
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-1.5
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

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1050, 3]
type = HitDef
trigger1 = time = 0
attr = S, SP
hitflag = MAFD
guardflag = MA
animtype = Hard
damage = 80, 5
pausetime = 2, 5
sparkno = 2
sparkxy = -20, -50
guard.sparkno = 2
hitsound = S8000,4
guardsound = S8000,4
animtype = Hard
ground.type = Low
ground.slidetime = 0;15
ground.hittime  = 20
ground.velocity = -3.5,-5
air.velocity = -3.5,-5
guard.velocity = -5
fall = 1
air.fall = 1
palfx.time = 24
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 1011, 4]
type = PlaySnd
trigger1 = animelem = 1
value = 666666, 14
channel = 1

[State 1011, 5]
type = PlaySnd
trigger1 = animelem = 1
value = 666666, 13
channel = 2

[State 1050, 5]
type = DestroySelf
trigger1 = animtime = 0

;-----------------------------------------------------------------------------------------
;Air Lantern Toss - a
;-----------------------------------------------------------------------------------------
[Statedef 1080]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 1015
juggle  = 1
poweradd = 100
velset = 0,-1

[State 1451]
type = VelSet
trigger1 = Time = 12
y = -3
x = -0.5

[State 1451]
type = VelAdd
trigger1 = 1
y = -0.2

[State 1451]
type = VelAdd
trigger1 = Time > 7
y = 0.2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 666666, 5
volume = 0
channel = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 5
helpertype = normal ;player
name = "lantern"
ID = 1012
stateno = 1081
pos = 70,-70
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;------------------------------------------------------------------------
;lantern A
[Statedef 1081]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1012
velset = 1,9

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -5
trigger1 = Vel Y > 0
value = 1011
ignorehitpause = 1

;-----------------------------------------------------------------------------------------
;Air Lantern Toss - b
;-----------------------------------------------------------------------------------------
[Statedef 1085]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 1015
juggle  = 1
poweradd = 100
velset = 0,-1

[State 1451]
type = VelSet
trigger1 = Time = 12
y = -3
x = -0.5

[State 1451]
type = VelAdd
trigger1 = 1
y = -0.2

[State 1451]
type = VelAdd
trigger1 = Time > 7
y = 0.2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 666666, 5
volume = 0
channel = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 5
helpertype = normal ;player
name = "lantern"
ID = 1013
stateno = 1086
pos = 70,-70
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;------------------------------------------------------------------------
;lantern B
[Statedef 1086]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1012
velset = 5,9

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -5
trigger1 = Vel Y > 0
value = 1011
ignorehitpause = 1

;-----------------------------------------------------------------------------------------
;Air Lantern Toss - c
;-----------------------------------------------------------------------------------------
[Statedef 1090]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 1015
juggle  = 1
poweradd = 100
velset = 0,-1

[State 1451]
type = VelSet
trigger1 = Time = 12
y = -3
x = -0.5

[State 1451]
type = VelAdd
trigger1 = 1
y = -0.2

[State 1451]
type = VelAdd
trigger1 = Time > 7
y = 0.2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 666666, 5
volume = 0
channel = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 5
helpertype = normal ;player
name = "lantern"
ID = 1014
stateno = 1091
pos = 70,-70
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;------------------------------------------------------------------------
;lantern C
[Statedef 1091]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1012
velset = 9,9

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -5
trigger1 = Vel Y > 0
value = 1011
ignorehitpause = 1


;-------------------------------------------------------------------------
;Vile Acid
;-------------------------------------------------------------------------
[Statedef 1020]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 1020
juggle  = 1
velset = 0,0
poweradd = 100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 666666, 3
volume = 0
channel = -1

[State 0, Helper]
type = Helper
trigger1 = animelem = 10
helpertype = normal ;player
name = "AcidSplash"
ID = 1111
stateno = 1111
pos = 90,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.6
size.yscale = 0.6

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------
; Acid Splash
[Statedef 1111]
type = A
movetype = A
physics = N

;[State 1111, 1]
;type = VarSet
;trigger1 = time = 0
;v = 0
;value = parent, var(24)

;[State 1111, 2]
;type = VelSet
;trigger1 = time = 0
;x = parent, fvar(0)

[State 1111, 3]
type = Projectile
trigger1 = 1
projanim = 1021
projremove = 0
projremovetime = 28
projsprpriority = 2
projscale = 0.6,0.6
projID = 1021
velocity = 0, 0
postype = p1
pos = 0, 0
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 20, 2
pausetime = 0, 9
guard.pausetime = 0, 10
sparkno = 1
sparkxy = -5, 0
guard.sparkno = 1
hitsound = S666666, 18
guardsound = S1, 0
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1.5,0
guard.velocity = -5
air.velocity = 0,0
;yaccel = (enemynear, const(movement.yaccel) / 2) + 0.49
guard.velocity = -8
hitonce = 1

[State 1111, 5]
type = PlaySnd
trigger1 = 1
value = 666666, 19
channel = 2

[State 1111, 5]
type = PlaySnd
trigger1 = 1
value = 666666, 20
channel = 1

[State 0, Explod]
type = Helper
trigger1 = 1
stateno = 1024
ID = 1024
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
size.xscale = 0.7
size.yscale = 0.7

[State 1111, 5]
type = DestroySelf
trigger1 = time >= var(59)

;------------------------------------------
; Acid Puddle
[Statedef 1024]
type = S
movetype = A
physics = N
anim = 1024
sprpriority = -8
velset = 0,0

[State 1024, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1050, 3]
type = HitDef
trigger1 = TimeMod = 30,0
attr = S, SP
hitflag = MAFD
guardflag = N
animtype = Light
damage = 10, 1
pausetime = 0, 4
sparkno = 1;2
sparkxy = -5, 0
guard.sparkno = 1
hitsound = S8000,0
guardsound = S8000,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 5
ground.velocity = 0,0
air.type =  Low
air.velocity = 0,0
guard.velocity = 0

[State 1050, 5]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
; Blade Twist z
;---------------------------------------------------------------------------
[Statedef 1112]
type    = S
movetype= A
physics = S
juggle  = 8
ctrl = 0
anim = 1112
poweradd = 100
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 =  1
x = 3
y = 0

[State 220, 1]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 12
trigger3 = animelem = 20
value = s666666, 11
channel = 2

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = s666666, 4
channel = 1

[State 220, HitDef]
type = HitDef
trigger1 = animelem >= 2
trigger2 = animelem <= 10
attr = S,NA
damage = 40,2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 5,10
sparkno = 1;s8002
sparkxy = -15,-79
guard.sparkno = 1;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4,-4
air.type = Low
air.hittime = 15
air.velocity = -4,-4
fall = 1

[State 220, HitDef]
type = HitDef
trigger1 = animelem >= 11
trigger2 = animelem <= 18
attr = S,NA
damage = 40,2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 5,10
sparkno = 1;s8002
sparkxy = -15,-79
guard.sparkno = 1;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5,-5
air.type = Low
air.hittime = 15
air.velocity = -5,-5
fall = 1

[State 220, HitDef]
type = HitDef
trigger1 = animelem >= 19
trigger2 = animelem <= 25
attr = S,NA
damage = 40,2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 5,10
sparkno = 1;s8002
sparkxy = -15,-79
guard.sparkno = 1;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-6
air.type = Low
air.hittime = 15
air.velocity = -6,-6
fall = 1

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Blade Twist y
;---------------------------------------------------------------------------
[Statedef 1113]
type    = S
movetype= A
physics = S
juggle  = 8
ctrl = 0
anim = 1113
poweradd = 100
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 =  1
x = 2.5
y = 0

[State 220, 1]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 12
value = s666666, 11
channel = 2

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = s666666, 4
channel = 1

[State 220, HitDef]
type = HitDef
trigger1 = animelem >= 2
trigger2 = animelem <= 10
attr = S,NA
damage = 60,2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 5,10
sparkno = 1;s8002
sparkxy = -15,-79
guard.sparkno = 1;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5,-5
air.type = Low
air.hittime = 15
air.velocity = -5,-5
fall = 1

[State 220, HitDef]
type = HitDef
trigger1 = animelem >= 11
trigger2 = animelem <= 17
attr = S,NA
damage = 60,2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 5,10
sparkno = 1;s8002
sparkxy = -15,-79
guard.sparkno = 1;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-6
air.type = Low
air.hittime = 15
air.velocity = -6,-6
fall = 1

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Blade Twist x
;---------------------------------------------------------------------------
[Statedef 1114]
type    = S
movetype= A
physics = S
juggle  = 8
ctrl = 0
anim = 1114
poweradd = 40
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 =  1
x = 2
y = 0

[State 220, 1]
type = PlaySnd
trigger1 = animelem = 4
value = s666666, 11
channel = 2

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = s666666, 4
channel = 1

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 90,2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 5,10
sparkno = 1;s8002
sparkxy = -15,-79
guard.sparkno = 1;s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-6
air.type = Low
air.hittime = 15
air.velocity = -6,-6
fall = 1

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Fear Gas - x
;---------------------------------------------------------------------------
;fear Gas X
[Statedef 1200]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1200
juggle  = 1
velset = 0,0
poweradd = 100

[state 220, Voice]
type = playsnd
trigger1 = animelem = 1
trigger1 = random < 1000
value = 900, 0
volumescale = 200
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S666666,18
channel = 1

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "feargas"
ID = 1201
stateno = 1201
pos = 0,24
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------
[Statedef 1201]
type = S
movetype = A
physics = N
anim = 1201
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

[State 200, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,SP
damage = 0,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,5
sparkno = 1;s7770
sparkxy = 0, -75
guard.sparkno = 1;s6767
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
air.type = Low
air.hittime = 15
air.velocity = 0,0
fall = 0
air.fall = 0

[State 0, Explod]
type = Helper
triggerall = numhelper(1202) = 0
trigger1 = movehit
helpertype = normal ;player
name = "invocador"
stateno = 1202
ID = 1202
pos = 0,0;20,-40
postype = p2  ;p2,front,back,left,right
facing = -1
;vfacing = 1
;bindtime = 100
;removetime = -2
;scale = 1,1
;sprpriority = 4
ownpal = 1
;ontop = 1
;removeongethit = 0
;persistent = 1

[state 1210, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;--------------------------------------------------------
;Invocado
[Statedef 1202]
type = S
movetype = I
physics = N
anim = 1202
sprpriority = 2
ctrl = 0

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 26
add = 0,0,0
mul = 250,250,250
;sinadd = 0,0,0,10
invertall = 0
color = 256

[state 1210, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, Explod]
type = Helper
;triggerall = numhelper(1202) = 0
trigger1 = time = 50
trigger2 = time = 200
trigger3 = time = 400
trigger4 = time = 600
trigger5 = time = 800
trigger6 = time = 1000
helpertype = normal ;player
name = "invocador"
stateno = 1203
ID = 1203
pos = 0,0;20,-40
postype = p2  ;p2,front,back,left,right
facing = -1
;vfacing = 1
;bindtime = 100
;removetime = -2
;scale = 1,1
;sprpriority = 4
ownpal = 1
;ontop = 1
;removeongethit = 0
;persistent = 1

[state 1210, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;--------------------------------------------------------
;A MORTE
[Statedef 1203]
type = S
movetype = A
physics = N
anim = 1203
sprpriority = 0
ctrl = 0

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 26
add = 0,0,0
mul = 250,250,250
;sinadd = 0,0,0,10
invertall = 0
color = 256

[state 1210, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 200, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,SP
damage = 30,3
animtype = Medium
guardflag = MA
hitflag = MAFD
priority = 4, Hit
pausetime = 0,5
sparkno = 1;s7770
sparkxy = -10, -85
guard.sparkno = 1;s6767
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
air.type = Low
air.hittime = 15
air.velocity = 0,0
fall = 0
air.fall = 0

[state 1210, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

