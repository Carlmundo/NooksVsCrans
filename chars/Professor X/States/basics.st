; States file for {character} -- Basics
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


;---------------------------------------------------------------------------
; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 13,1

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 175
velset = 0,0

[State 175,0]
type = PlaySnd
trigger1 = Time = 0
value = 13,0

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 60
pos = 15,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.75,0.75

[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 180,Winpose Magneto]
type = ChangeState
trigger1 = Time=0 && enemy,name="Magneto"
value = 183

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time=0
value = 181 + ((Random * 2) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181,0]
type = PlaySnd
trigger1 = Time = 50
value = 6,1 + ((Random * 3) / 1000)

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,240]
flag = RoundNotOver

;-----------------------
; Winpose #2 - Mission accomplished
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182,0]
type = PlaySnd
trigger1 = Time = 25
value = 6,1 + ((Random * 3) / 1000)

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,240]
flag = RoundNotOver

;-----------------------
; Winpose Against Magneto
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 0, Explod]
type = Explod
trigger1 = time = 30
anim = 184
pos = 0,15
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
scale = 1.1,1.1
ontop = 0

[State 183,1]
type = AssertSpecial
trigger1 = Time = [0,320]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 2) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 70
value = 5, 3 + ((Random * 3) / 1000)
volume = 255

[State 0, Explod]
type = Explod
trigger1 = animelem = 7 && anim = 0
anim = 60
pos = 15,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.75,0.75

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0
value = 0

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,180]
flag = Intro

;-----------------------
; Intro #2
[Statedef 192]
type = S
ctrl = 0
anim = 195
velset = 0,0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 5, 6 + ((Random * 4) / 1000)
volume = 255

[State 0, Explod]
type = Explod
trigger1 = animelem = 7 && anim = 0
anim = 60
pos = 15,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.75,0.75

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0
value = 0

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,130]
flag = Intro

;-----------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 12,0
volume = 255

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 60
pos = 15,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.75,0.75

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
anim = 200
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 30

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 20
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,10
hitsound = S15,0
guardsound = S6,0
sparkno = 0
sparkxy = 0,-85
animtype = Light
ground.type = High
ground.slidetime = 4
ground.hittime  = 10
ground.velocity = -1
guard.velocity = -0.5
air.velocity = -2

[State 0, Explod]
type = Explod
trigger1 = time = 0 
anim = 205
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
anim = 210
ctrl = 0
type = S
movetype = A
physics = S
juggle = 4
velset = 0,0
poweradd = 35

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 40
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
hitsound = S15,1
guardsound = S6,0
sparkno = 1
sparkxy = 0,-85
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -2
guard.velocity = -1
air.velocity = -3

[State 0, Explod]
type = Explod
trigger1 = time = 0 
anim = 215
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 220]
anim = 220
ctrl = 0
type = S
movetype = A
juggle = 4
physics = S
velset = 0,0
poweradd = 65

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, HitDef]
type = HitDef
trigger1 = time = 3
attr = S, NA
damage = 60
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
hitsound = S15,2
guardsound = S6,0
sparkno = 2
sparkxy = -15,-85
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5.5
guard.velocity = -5
air.velocity = -4,8

[State 0, Explod]
type = Explod
trigger1 = time = 0 
anim = 225
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
anim = 230
ctrl = 0
type = S
juggle = 4
movetype = A
physics = S
velset = 0,0
poweradd = 25

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 230, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 25
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,10
hitsound = S15,0
guardsound = S6,0
sparkno = 0
sparkxy = 0,-45
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -1
guard.velocity = -0.5
air.velocity = -2,-3

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 235
pos = 0,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
anim = 240
ctrl = 0
type = S
movetype = A
juggle = 4
physics = S
velset = 0,0
poweradd = 45

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = S, NA
damage = 40
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
hitsound = S15,1
guardsound = S6,0
sparkno = 1
sparkxy = 0,-85
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -1.5
air.velocity = -3,-6

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 245
pos = 0,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 250]
anim = 250
ctrl = 0
type = S
movetype = A
juggle= 4
physics = S
velset = 0,0
poweradd = 75

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, HitDef]
type = HitDef
trigger1 = time = 3
attr = S, NA
damage = 60
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
hitsound = S15,2
guardsound = S6,0
sparkno = 2
sparkxy = -15,-85
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -7
guard.velocity = -4
air.velocity = -4,-8

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 255
pos = 0,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
anim = 400
ctrl = 0
type = C
movetype = A
physics = C
juggle = 4
velset = 0,0
poweradd = 20

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 60
pos = 15,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.75,0.75

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C, NA
damage = 20
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6,6
hitsound = S15,0
guardsound = S6,0
sparkno = 0
sparkxy = 0,-50
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1
guard.velocity = -2
air.velocity = -3

[State 0, Explod]
type = Explod
trigger1 = time = 0 
anim = 405
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 410]
anim = 410
ctrl = 0
juggle = 4
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 45

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 60
pos = 15,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.75,0.75

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
damage = 40
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = S15,1
guardsound = S6,0
sparkno = 1
sparkxy = 0,-50
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -2
guard.velocity = -10
air.velocity = -3

[State 0, Explod]
type = Explod
trigger1 = time = 0 
anim = 415
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
juggle = 4
physics = C
velset = 0,0
poweradd = 65

[State 0, Explod]
type = Explod
trigger1 = time = 1
trigger3 = time = 5
trigger5 = time = 9
anim = 60
pos = 15,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.75,0.75

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = S8,0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 10
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 19
x = -5
y = 0

[State 420, HitDef]
type = HitDef
trigger1 = time = 1
attr = C, NA
damage = 60
guardflag = L
pausetime = 9,9
hitsound = S15,2
guardsound = S6,0
sparkno = 2
sparkxy = 0,-50
animtype = Heavy
ground.type = Trip
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1,-1
guard.velocity = -2
air.velocity = -2,-2
fall=1

[State 420, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 455
ID = 455
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
ontop = 1
removeongethit = 1

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 430]
anim = 430
ctrl = 0
type = C
movetype = A
juggle= 4
physics = C
velset = 0,0
poweradd = 25

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 60
pos = 15,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.75,0.75

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C, NA
damage = 20
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 6,6
hitsound = S15,0
guardsound = S6,0
sparkno = 0
sparkxy = 0,-30
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 435
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
anim = 440
ctrl = 0
type = C
movetype = A
physics = C
juggle = 4
velset = 0,0
poweradd = 30

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 60
pos = 15,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.75,0.75

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C, NA
damage = 40
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 8,8
hitsound = S15,1
guardsound = S6,0
sparkno = 1
sparkxy = 0,-30
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,-2

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 445
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 450]
anim = 450
ctrl = 0
type = C
movetype = A
juggle = 4
physics = C
velset = 0,0
poweradd = 25

[State 0, Explod]
type = Explod
trigger1 = time = 1
trigger3 = time = 5
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
x = 10
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 19
x = -5
y = 0 

[State 450, HitDef]
type = HitDef
trigger1 = time = 2
attr = C, NA
;hitflag = M
damage = 60
guardflag = L
priority = 3, Hit
pausetime = 10,10
hitsound = S15,2
guardsound = S6,0
sparkno = 2
sparkxy = 0,-50
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-11

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
anim = 600
ctrl = 0
juggle = 4
type = A
movetype = A
physics = A
poweradd = 25

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = A, NA
damage = 20
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
hitsound = S15,0
guardsound = S6,0
sparkno = 0
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,((vel y)-.2)

[State 0, Explod]
type = Explod
trigger1 = time = 0 
anim = 605
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
anim = 610
ctrl = 0
type = A
movetype = A
juggle = 4
physics = A
poweradd = 45

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = A, NA
damage = 40
guardflag = MA
priority = 3, Hit
hitflag = MAF
pausetime = 10,10
hitsound = S15,1
guardsound = S6,0
sparkno = 1
sparkxy = 0,-65
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,((vel y)-.2)

[State 0, Explod]
type = Explod
trigger1 = time = 0 
anim = 615
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
anim = 620
ctrl = 0
juggle = 4
type = A
movetype = A
physics = A
poweradd = 75

[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 620, hitdef]
type = HitDef
trigger1 = time = 3
attr = A, NA
damage = 60
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = 2
sparkxy = -15,-85
hitsound = S15,2
guardsound = S6,0
animtype = Heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -15,5
ground.cornerpush.veloff = -30
air.velocity = -4,-1
air.fall=1
guard.kill = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0 
anim = 625
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
anim = 630
ctrl = 0
juggle = 4
type = A
movetype = A
physics = A
poweradd = 22

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = A, NA
damage = 20
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
hitsound = S15,0
guardsound = S6,0
sparkno = 0
sparkxy = 0,-10
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,((vel y)-.2)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 635
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
anim = 640
ctrl = 0
juggle = 4
type = A
movetype = A
physics = A
poweradd = 65

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = A, NA
damage = 40
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
hitsound = S15,1
guardsound = S6,0
sparkno = 1
sparkxy = 0,-10
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,((vel y)-.2)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 645
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
anim = 650
ctrl = 0
type = A
juggle= 4
movetype = A
physics = A
poweradd = 92

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, hitdef]
type = HitDef
trigger1 = animelem = 3
attr = A, NA
damage = 60
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = 2
sparkxy = 0,-10
hitsound = S15,2
guardsound = S6,0
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3
guard.kill = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 655
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
;Super Jump opponent locator
[Statedef 910]
type    = A
physics = N
ctrl = 0
sprpriority = 2

[State 910, arrow]
type = ChangeAnim
trigger1 = IsHelper(0)
;trigger1 = TeamSide = 2
value = 910

[State 910, destroyself]
type = DestroySelf
triggerall = IsHelper(0)
trigger1 = RootDist Y > 0

;-----------------------
; Safe fall (from superjump, or jumping attack)
[StateDef 948]
type = A
movetype = I
physics = A
ctrl = 1

; neutral
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X = 0)
value = 48

; forwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X > 0)
value = 49

; backwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X < 0)
value = 50

;----- begin of Hyper Effects Helpers-----
;;;;;###################################################################################

;----------------------------[2002 UM MAX2 BG]----------------------------------
[Statedef 40001]
anim = 9999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG

;[State 40001, Tile #1-7]
;type = Explod
;triggerall = !numexplod(15600)
;trigger1 = !time
;anim = 15600
;ID = 15600
;pos = 0,0
;postype = left  ;p2,front,back,left,right
;removetime = 10
;pausemovetime = -1
;supermovetime = -1
;scale = 1.1,1.1
;sprpriority = -20
;ownpal = 1
;ignorehitpause = 1
;bindtime = -1
;persistent = 0

[State 40001, Tile #1-7]
type = Explod
trigger1 = !time
trigger2 = numexplod(15601) = 0
anim = 15600
ID = 15601
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1.1,1.1
sprpriority = -9999
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Glass Break]
type = ChangeState
;trigger1 = root, stateno != 3300 && root, stateno != 3350
;trigger2 = root, stateno = 3300 && root,animelemtime(61) = 1  || root, stateno = 3350 && root,animelemtime(50) = 1
trigger1 = root, stateno !=[3000,4999]
;trigger2 = root, NumHelper(8400) !=0|| root, NumHelper(8420) !=0
value = stateno+1

[Statedef 40002]
anim = 9999

;[State 40002, RemoveExplod]
;type = RemoveExplod
;trigger1 = !time
;id = 15600

[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15601

[State 40002, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S14001,0
volume = 200

[State 40001, Glass Break]
type = Explod
triggerall = !numexplod(15640)
trigger1 = !time
anim = 15604
ID = 15640
pos = 0,0
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
scale = 1,1
sprpriority = -20
ownpal = 1
bindtime = -1
ignorehitpause = 1

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;--------------------------[2002 UM MAX2 PORTRAIT]------------------------------
[Statedef 40003]
anim = 9999

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,abs((240*var(0))-81)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,abs((240*var(0))-81)
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607
ID = 15660
pos = 0,abs((240*var(0))-81)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607
ID = 15661
pos = 0,abs((240*var(0))-81)
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15650
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15650
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15651
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15651
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15660
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15660
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15661
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15661
scale = 1,1

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 60

[Statedef 40004]
anim = 9999

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;------- End of Hyper effects helpers

