; States file for {character} -- Hypers
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
; Hyper Attacks
; 
; Hyper 1 (QCF + PP) -- state 3000
;   hyper 1
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper 1
[StateDef 3000]
type = S
movetype = A
physics = N
anim = 2158
ctrl = 0
velset = 0,0

[State 3000, Width]
type = Width
trigger1 = Time = 0
player = 45,0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S330,0
channel = 0

; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
pos = -400,-400
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Null;Explod
trigger1 = AnimElem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = 3
ownpal = 1

[State 3000, a8] ;Super portrait
type = Explod
trigger1 = !time
anim = 501
postype = back
pos = 20,10
ownpal = 1
ignorehitpause = 1
sprpriority = -1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -18

;-------------------

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) % 10 = 1
value = S350,0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(3) % 10 = 1
ProjID = 3010
projanim = 2159
projhitanim = -1
projremanim = -1
projcancelanim = -1
projremove = 1
projremovetime = 2
velocity = 0,0;20, (20 - Random/250)
offset = 0,0;0,-80
; HitDef
attr = A,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 15,5
pausetime = 4,4
sparkno = -1;S9992
guard.sparkno = -1;0
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(3) % 10 = 1
ProjID = 3010
projanim = 2159
projhitanim = -1
projremanim = -1
projcancelanim = -1
projremove = 1
projremovetime = 2
velocity = 0,0;35, (35 - Random/125)
accel = 0,0;1.25, 0-Random/500
offset = 0,0;0,-80
; HitDef
attr = A,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 10,1
pausetime = 4,4
sparkno = -1;S9992
guard.sparkno = -1;0
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(3) % 10 = 1
ProjID = 3010
projanim = 2159
projhitanim = -1
projremanim = -1
projcancelanim = -1
projremove = 1
projremovetime = 2
velocity = 0,0;15, (10 - Random/333)
accel = 0,0;1.5, 0
offset = 0,0;0,-80
; HitDef
attr = A,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 15,5
pausetime = 4,4
sparkno = -1;S9992
guard.sparkno = -1;0
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 100
value = 0
ctrl = 1

; Hyper 2
[Statedef 3100]
type = S
ctrl = 0
anim = 3100
velset = 0,0
movetype = A
physics = S
sprpriority = 2

[State 3100, Width]
type = Width
trigger1 = Time = 0
player = 45,0

[State 3100, 1]
type = PlaySnd
trigger1 = time = 0
value = 360,0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 34
value = 370,0

[State 3100, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3100, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3100, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = 9999
ownpal = 1
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -19
scale = 1,1
removeongethit = 1

[State 3100, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3100, SuperPause] ; SUPER PAUSE
type = SuperPause
trigger1 = Time = 0
time = 197
endcmdbuftime = 197
movetime = 197
darken = 0
anim=S8400
pos = 0, -90
movetime = 40
poweradd = -2000
bindtime = -1
sprpriority = 34
Time = 120
p2defmul = 2
removeongethit = 1
ignorehitpause = 0

[State 3100, a8] ;Super portrait
type = Explod
trigger1 = !time
anim = 2157
postype = back
pos = 20,10
ownpal = 1
ignorehitpause = 1
sprpriority = -1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -18

[State 3100, Projectile]
type = Projectile
triggerall = NumProjID(3101) = 0
triggerall = !NumTarget(3101)
triggerall = ProjHit3101 = 0
trigger1 = AnimElem = 34
ProjID = 3101
projanim = 3101
projhitanim = -1
projremanim = -1
projcancelanim = -1
projremove = 1
projremovetime = 2
velocity = 0,0
offset = 0,0
attr = A, HA
hitflag = MAFP
damage = 400,150
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,0
animtype = Back
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6,-8
air.velocity = -6,-8
guard.velocity = -5
airguard.velocity = -5,-7
fall = 1
air.fall = 1
fall.recover = 0
ID = 3101
ground.cornerpush.veloff = 0.0
air.cornerpush.veloff = 0.0
down.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
airguard.cornerpush.veloff = 0.0
pausemovetime = 197
supermovetime = 197
ignorehitpause = 1
persistent = 1

[State 3100, 1]
type = CtrlSet
trigger1 = 1
value = 0

[State 3100, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;30 hourse of pain
;---------------------------------------------------------------------------
 [Statedef 3300]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3300
ctrl = 0
juggle =6
sprpriority = 1

[State 3300, 1]
type = PlaySnd
trigger1 = time = 0
value = 381,0

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3000, a8] ;Super portrait
type = Explod
trigger1 = !time
anim = 8950
postype = back
pos = 20,10
ownpal = 1
ignorehitpause = 1
sprpriority = -1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -18

[State 3000, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = 9999
ownpal = 1
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -19
scale = 1,1
removeongethit = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3100, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
anim=S8400
pos = 0, -90
movetime = 40
poweradd = -1500
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1

[State 3000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
id= 918
anim =918
supermove = 1
ontop = 1
removeongethit = 1

[State 3000, snd]
type = PlaySnd
trigger1 = Time = 1
value = 40,14
channel=4

[State 3000, Elec]
type = Helper
trigger1= AnimElem = 2
helpertype = normal
name = "elec"
ID = 3310
pos = 0,0
postype = P1
facing = 1
stateno = 3310
ownpal = 0
priority = 9

[State 1201,snd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 60,20
channel=8

[State 3000, 1]
type = ChangeState
trigger1 = time = 180
value = 3303
ctrl = 1
;-------------------------------------------
[StateDef 3303]
type = S
movetype = A
physics = S
anim = 3303

[State 3000, 1]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1


;-------------------------
[Statedef 3310]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3301
ctrl = 0
juggle =6
sprpriority = 9

[State 1014, ontop]
type = SprPriority
trigger1 = 1
value = 9

[State 3005, 6]
type = AssertSpecial
trigger1 = 1
flag = NoShadow


[State 1013, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + (0 * parent, facing)
y = parent, Pos Y + 0


[State 3150, HitDef]
type = HitDef
trigger1 = Time % 6 = 0 && Time < 117
attr = S, HA
damage = 25, 15
guardflag = MA
hitflag = MAFD
pausetime = 0,11
hitsound = S2,2
guardsound = S3,0
sparkno= 1
sparkxy = -15,-95
animtype = Heavy
ground.type = High
ground.slidetime = 20
guard.slidetime = 12
ground.hittime = 20
guard.hittime = 12
ground.velocity = -1,-1
guard.velocity = -6.25
airguard.velocity = -6.25,-3
air.velocity = -1,-1
down.velocity = -1,-1
priority.hit = 12;,Hit
fall=1
air.fall=1
palfx.time = 25
palfx.color = 64
palfx.invertall = 1
palfx.add = 1,1,128
palfx.mul = 256,256,256

[State 1201,snd]
type = PlaySnd
trigger1 = movehit || MoveGuarded
value = 60,20
channel=4



[State 1201,1]
type = Destroyself
trigger1 = time = 116
trigger2 = movereversed


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

[State 3002, Width]
type = Width
trigger1 = Time = 0
player = 30,0

[State 3000, 1]
type = AssertSpecial
trigger1 = MoveHit
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

[State 123, spray]
type = Null;Helper
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
damage = 0,15
animtype = Light
hitflag = MAF
guardflag = MA
priority = 7, Hit
pausetime = 0,0+(75*P2StateType=A)
guard.pausetime = 0,12
sparkno = -1
sparkxy = -15,-10
guard.sparkno = -1;s8001
hitsound = S2,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 0
guard.slidetime = 12
ground.hittime = 75
guard.hittime = 12
ground.velocity = 0,0
guard.velocity = -6.25
airguard.velocity = -6.25,-3
air.type = Low
air.hittime = 80
air.velocity = 0,0
numhits = 0
ground.cornerpush.veloff = 0.0
air.cornerpush.veloff = 0.0
down.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
airguard.cornerpush.veloff = 0.0

[State 181,0]
type = PlaySnd
trigger1 = Time = 0
value = 382,0

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = MoveHit;Movecontact
value = 2151
ctrl = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
;trigger1 = Movecontact = 0
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
trigger2 = movereversed

;--------------------------------------------------------

;--------------------------------------------------------
[Statedef 2151]
type = S
movetype = I
physics = S
anim = 2151
sprpriority = 2
ctrl = 0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 380,0

[State 3000, a8] ;Super portrait
type = Explod
trigger1 = !time
anim = 2156
postype = back
pos = 20,10
ownpal = 1
ignorehitpause = 1
sprpriority = -1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -18

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
sparkno = S1012
guard.sparkno = 1;s9993
sparkxy = 35,0
hitsound = s8000,1
guardsound = s8000,1
ground.type = High
ground.slidetime = 5
ground.hittime  = 22
ground.velocity = 0,0
air.type = Low
air.hittime = 22
air.velocity = 0,0
fall = 1

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

[State 2153, DestroySelf]
type = Null;DestroySelf
triggerall = IsHelper
trigger1 = 1
ignorehitpause = 1
persistent = 1

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
attr = A,HA
damage = 7,1
animtype = Medium
hitflag = MAFD
guardflag = MA
priority = 4, Hit
pausetime = 2,2
sparkno = S1012;11;s8002
sparkxy = 0,0
guard.sparkno = 1;s8001
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 5
ground.hittime = 22
ground.velocity = 0,0
air.type = Low
air.hittime = 22
air.velocity = 0,0
fall = 1

[State 3000, DS]
type = DestroySelf
trigger1 = time = 62
trigger2 = movereversed
