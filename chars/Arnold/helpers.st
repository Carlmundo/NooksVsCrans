;---------------------------------------------------------------------------
; Spark helper
[Statedef 2300]
type = A
movetype = I
physics = N
ctrl = 0
anim = 20000
velset = 0,0
ownpal = 1

[State 820,PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 2105, 0
persistent = 0

[State 3000, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 1
add = 0,0,0
mul = 32,32,32
sinadd = 0,0,0,1
invertall = 0
color = 256

;Super Spark left half, facing right
[State 3000, 1]
type = Explod
trigger1 = Time = 3
trigger1 = Pos X <= 0
trigger1 = Facing = 1
anim = 2105
postype = P1
pos = -30,110
facing = -1
sprpriority = 6
pausemovetime = 99999999999999
supermovetime = 99999999999999
persistent = 0

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = Time > 39

;Super Spark right half, facing right
[State 3000, 1]
type = Explod
trigger1 = Time = 3
trigger1 = Pos X > 0
trigger1 = Facing = 1
anim = 2105
postype = P1
pos = -30,110
facing = 1
sprpriority = 6
pausemovetime = 99999999999999
supermovetime = 99999999999999
persistent = 0

;Super Spark left half, facing left
[State 3000, 1]
type = Explod
trigger1 = Time = 3
trigger1 = Pos X < 0
trigger1 = Facing = -1
anim = 2105
postype = P1
pos = -30,110
facing = 1
sprpriority = 6
pausemovetime = 99999999999999
supermovetime = 99999999999999
persistent = 0

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = Time > 39

;Super Spark right half, facing left
[State 3000, 1]
type = Explod
trigger1 = Time = 3
trigger1 = Pos X > 0
trigger1 = Facing = -1
anim = 2105
postype = P1
pos = -30,110
facing = -1
sprpriority = 6
pausemovetime = 99999999999999
supermovetime = 99999999999999
persistent = 0

;Fade out
[State 4001, Fade Out]
type=palfx
trigger1= Time = 30
time=12
sinadd=-255,-255,-255,60

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = Time > 39

;-------------------------------------------------------------------------------
;Hyper Combo Helper
[Statedef 9998]
type = S
movetype = I
physics = N
anim = 9999 ;Invisible anim.

[State 9998, EnvColor]
type = EnvColor
trigger1 = (Time < 12)
value = 0,0,0
time = 1
under = 1

[State 9998, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = S9999,0
volume = 99999

[State 9998, EnvShake]
type = EnvShake
trigger1 = (!Time)
time = 12
freq = 120
ampl = -3
phase = 90

[State 9998, 1]
type = Explod
trigger1 = Time = 0
sprpriority = -2
supermovetime = -1
ID = 9998
anim = 9998
postype = Back
pos = 0,0
sprpriority = -1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = -2

[state 9998, 2]
type = Explod
trigger1 = time = 0
pausemovetime = 100
supermovetime = 100
removetime = -2
bindtime = -1
anim = 30000+(Root,Stateno)
pos = 160,120
postype = left
facing = 1
scale = 0,0
sprpriority = 300
id = 30000
removeongethit = 1

[state 9998, 3]
type = ModifyExplod
trigger1 = 1
id = 30000
scale = time/6.0,time/9.0
