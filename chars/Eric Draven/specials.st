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

;---------------------------------------------------------------------------
; Special Attacks
; 
; Special 1 (QCF + P) -- state 1000
;   fireball
;---------------------------------------------------------------------------

;------------------------------
; Special 1
[StateDef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0

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

[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1010
projanim = 1010
projhitanim = 1011
projremanim = 1010
projcancelanim = 1013
velocity = 6,0
offset = 42,-46
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 40,5
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 1000, changestate]
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


; Special 2
[StateDef 1200]
type = S
movetype = A
physics = S
anim = 5031
ctrl = 0
velset = -1,0

[State 1200, Width]
type = Width
trigger1 = Time = 0
player = 45,0

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
value = S350,0

[State 1020, fireball]
type = Projectile
triggerall = P2BodyDist X > 40
trigger1 = AnimElem = 1
ProjID = 1030
projanim = 1030
projhitanim = -1;1020
projremanim = -1;1020
projcancelanim = -1;1020
velocity = 35,0
offset = 31,-93
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = heavy  
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 45,5
pausetime = 0,4
sparkno = S9992
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = high
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 1020, fireball]
type = Projectile
triggerall = P2BodyDist X <= 40
trigger1 = AnimElem = 1
ProjID = 1030
projanim = 1030
projhitanim = -1;1020
projremanim = -1;1020
projcancelanim = -1;1020
velocity = 35,0
offset = 31,-93
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = heavy  
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 45,5
pausetime = 0,14
sparkno = S9992
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = high
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,-6
air.velocity = -2,-2
fall = 1
air.fall = 1

[State 1000, changestate]
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

; Crow
[Statedef 1110]
type = S
movetype = I
physics = S
ctrl = 0
anim = 3304
velset = 0,0
poweradd = -250
sprpriority = 2

[State 0, Width]
type = Width
trigger1 = Animelemtime(2) >= 0 && Animelemtime(3) < 0
value = 29,0

[State 0, Width]
type = Width
trigger1 = Animelemtime(3) >= 0 && Animelemtime(6) < 0
value = 58,0

[State 0, Bullet]
type = Null;helper
trigger1 = animelem = 4
helpertype = normal
stateno = 1610
ID = 1610
name = "Dart"
postype = p1
pos = 0,0
ownpal = 1
SprPriority = 4

[State 0, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1610]
type = S
physics = N
movetype = A
anim = 3302
ctrl = 0
poweradd = 15
sprpriority = 4

[State 1610 DisplayToClipboard]
type = DisplayToClipboard
triggerall = IsHelper
trigger1 = NumEnemy
text = "FrontEdgeDist=%d, FrontEdgeBodyDist=%d"
params = FrontEdgeDist, FrontEdgeBodyDist
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 0, HitOverride]
type = hitoverride
trigger1 = 1
slot = 1
time = 1
attr = SCA, SP, HP, HA
stateno = 1611
ignorehitpause = 1

[State 0, HB]
type = nothitby
trigger1 = 1
time = 1
value = SCA, NA, NT, NP, SA, ST, HT
ignorehitpause = 1

[State 0, HB]
type = hitby
trigger1 = 1
time = 1
value = SCA, SP, HP, HA
ignorehitpause = 1

[State 0, Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, Vel]
type = velset
trigger1 = time > 1
x = 8
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S7,1

[State 0, Hit]
type = HitDef
triggerall = p2stateno != 7050
trigger1 = Time = 0
attr = S, SP
animtype = Medium
damage   = 5,1
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 0,5
guard.sparkno = S7000
sparkno = -1
sparkxy = -15,-90
hitsound = s1,1
guardsound = s1,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 16
ground.velocity = 0
guard.velocity = -6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -4,-2
air.type = Low
air.hittime = 14
airguard.velocity = -3,-2.5
getpower = 100,50
givepower= 35,20
envshake.time=5
envshake.freq=60
envshake.ampl=4
p2stateno = 7050

[State 0, Hit]
type = HitDef
triggerall = p2stateno = 7050
trigger1 = Time = 0
attr = S, SP
animtype = Medium
damage   = 25,5
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 0,5
guard.sparkno = S7000
sparkno = -1
sparkxy = -15,-90
hitsound = s1,1
guardsound = s1,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 14
ground.velocity = -6
guard.velocity = -6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -3.5,-2.5
air.type = Low
air.hittime = 15
airguard.velocity = -3,-2.5
getpower = 100,50
givepower= 35,20
envshake.time=5
envshake.freq=60
envshake.ampl=4

[State 1005, Sparks]
type=explod
trigger1= movehit && numtarget
trigger1= (target,movetype=H) && !(target,time)
anim=1040
ID=7002
sprpriority=5
postype=left
pos=ceil((target,pos x)-((target,const(size.ground.front)-15)*facing)+160),ceil((screenpos y)-90)
removetime=-2
ownpal=1
facing=1
ignorehitpause=1
persistent=0
pausemovetime=100
supermovetime=100

[State 0, End]
type = null;changestate
trigger1= movehit && numtarget
trigger1= (target,movetype=H) && !(target,time)
trigger2= moveguarded
value = 1611
ignorehitpause = 1

[State 0, End]
type = destroyself
trigger1 = pos x!=[-200,200]
trigger2 = pos y > 50
trigger3 = FrontEdgeBodyDist < 17
trigger4 = FrontEdgeDist < 17

; Tranq Stun State
[Statedef 7050]
type = U
movetype= H
physics = U
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, Force Stand Type]
type = StateTypeSet
trigger1 = statetype = C
statetype = S
ignorehitpause = 1

[State 0, Dizzy Anim]
type = ChangeAnim
trigger1 = statetype != A
trigger1 = !Selfanimexist(5300)
value = 5000
persistent = 0

[State 0, Dizzy Anim]
type = ChangeAnim
trigger1 = statetype != A
trigger1 = Selfanimexist(5300)
value = 5300
persistent = 0

[State 0, Hit In Air]
type = ChangeAnim
trigger1 = statetype = A
value = 5030
persistent = 0

;[State 0, Hit In Air]
;type = ChangeAnim
;triggerall = statetype = A
;triggerall = anim = 5030
;trigger1 = animtime = 0
;value = 5035
;persistent = 0

;[State 0, Hit In Air]
;type = ChangeAnim
;triggerall = statetype = A
;triggerall = anim = 5030
;trigger1 = animtime = 0
;value = 5035
;persistent = 0

[State 0, Recover In Air]
type = SelfState
triggerall = statetype = A
trigger1 = time = 15
value = 5040

[State 0, Hit In Air]
type = Velset
trigger1 = statetype = A
x = -3.5
y = -3.5
persistent = 0

;[State 0, Hit ground]
;type = SelfState
;trigger1 = Statetype = A
;trigger1 = (Vel y > 0) && (Pos y >= -10)
;value = 5100

[State 0, End]
type = SelfState
trigger1 = statetype != A
trigger1 = Time >= 80
value = 0
ctrl = 1

; heal 
;-------------------------------------------------------------------------------
[Statedef 1100]
type    = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 500
poweradd = -350
sprpriority = 2


[State 0, VarAdd]
type = VarAdd
trigger1 = time = 46
v = 5
value = 1

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 46
value = 150

[State 3000, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 30
movetime = 30
anim = -1
sound = -1
pos = 32,-80
darken = 0
unhittable = 1

[State 3000, VarSet]
type = Varset
trigger1 = time = 0
v = 12
value = -100

[State 3000, VarAdd]
type = VarAdd
trigger1 = time >= 20 && Var(12) < 0
v = 12
value = 6

[State 3000, BGColorFX]
type = BGPalFX
trigger1 = Time > 0
time = 1
add = Var(12),Var(12),Var(12)

[State 3000, Super Charge]
type = Explod
trigger1 = Time = 0
anim = 7400
ID = 7400
pos = 4,-47
sprpriority = 2
supermove = 1
removetime = -2
bindtime = -1
ownpal = 1
scale = .7,.7
removeongethit = 1
ontop = 1
supermovetime 	= 999
ignorehitpause  = 1

[State 3000, PlaySnd - Super Charge]
type = PlaySnd
trigger1 = Time = 0
value = S950,1
volume = 50

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S384,0
volume = 999
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,32
volume = 999

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 3
value = S5,16
volume = 50

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 40
value = S5,32
volume = 999

[State 200, End]
type = ChangeState
trigger1 = time = 90
value = 0
ctrl = 1

