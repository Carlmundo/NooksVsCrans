;--------------------------------------------------------------------------------------------
; Guard Push (stand)
[Statedef 7610]
type    = S
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 7610
sprpriority = 2
facep2 = 1

[State 7610, VelMul]
type = VelMul
trigger1 = 1
x = 0.75

[State 7610, VelSet]
type = VelSet
trigger1 = Time = 10
x = 0

[State 7610, Width]
type = Width
trigger1 = 1
value = 10,0

[State 7610, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 23


[State 7610, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 30

[State 7610, voz]
type = null;PlaySnd
trigger1 = Time = 0
value = 220,0

[State 7610, Spark]
type = null;Explod
trigger1 = AnimElem = 2;Time = 0
anim = 7020
postype = p1
pos = 71,-77
ownpal = 1
vel = 0,0
;scale = 0.5,0.5
ignorehitpause = 1
sprpriority = 5

[State 7610, Guard Push Helper]
type = Helper
trigger1 = AnimElem = 2;Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 7611
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 7610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Guard Push (Helper)
[Statedef 7611]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = Parent,Anim
sprpriority = -4

[State 7611, PlayerPush]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 7611, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 7611, VelSet 1]
type = VelSet
trigger1 = Time = [0,10]
x = 30

[State 7611, VelSet 2]
type = VelSet
trigger1 = Time = [11,13]
x = 20

[State 7611, VelSet 2]
type = VelSet
trigger1 = Time >= 14
x = 10

[State 7611, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 10

[State 7611, DestroySelf]
type = DestroySelf
trigger1 = Time >= 18

;---------------------------------------------------------------------------
; Guard Push (Crouching)
[Statedef 7615]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 7615
sprpriority = 2
facep2 = 1

[State 7615, VelMul]
type = VelMul
trigger1 = 1
x = 0.75

[State 7615, VelSet]
type = VelSet
trigger1 = Time = 10
x = 0

[State 7615, Width]
type = Width
trigger1 = 1
value = 10,0

[State 7615, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 23

[State 7615, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 30

[State 7615, voz]
type = null;PlaySnd
trigger1 = Time = 0
value = 220,0

[State 7615, Spark]
type = null;Explod
trigger1 = AnimElem = 2;Time = 0
anim = 7020
postype = p1
pos = 57,-50
ownpal = 1
vel = 0,0
;scale = 0.5,0.5
ignorehitpause = 1
sprpriority = 5

[State 7615, Guard Push Helper]
type = Helper
trigger1 = AnimElem = 2;Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 7611
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 7615, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Guard Push (Air)
[Statedef 7620]
type    = A
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 7620
sprpriority = 2
facep2 = 1

[State 7620, VelMul]
type = VelMul
trigger1 = 1
x = 0.75

[State 7620, VelSet]
type = VelSet
trigger1 = Time = 10
x = 0

[State 7620, Width]
type = Width
trigger1 = 1
value = 10,0

[State 7620, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 23

[State 7620, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 30

[State 7620, voz]
type = null;PlaySnd
trigger1 = Time = 0
value = 220,0

[State 7620, Spark]
type = null;Explod
trigger1 = AnimElem = 2;Time = 0
anim = 7020
postype = p1
pos = 55,-97
ownpal = 1
vel = 0,0
;scale = 0.5,0.5
ignorehitpause = 1
sprpriority = 7

[State 7620, Guard Push Helper]
type = Helper
trigger1 = AnimElem = 2;Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 7622
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 7620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 7621

;---------------------------------------------------------------------------
; Guard Push (Air - Falling)
[Statedef 7621]
type    = A
movetype= I
physics = A
poweradd= 0
ctrl = 1
anim = 70
sprpriority = 1

[State 7621, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
; Guard Push (Air Helper)

[Statedef 7622]
type    = A
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = Parent,Anim
sprpriority = -4


[State 7622, PlayerPush]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 7622, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 7622, VelSet 1]
type = VelSet
trigger1 = Time = [0,10]
x = 30

[State 7622, VelSet 2]
type = VelSet
trigger1 = Time = [11,13]
x = 20

[State 7622, VelSet 2]
type = VelSet
trigger1 = Time >= 14
x = 10

[State 7622, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 10

[State 7622, DestroySelf]
type = DestroySelf
trigger1 = Time >= 18


;---------------------------------------------------------------------------
; Liedown Roll Forward (Author MystikBlaze)
[Statedef 8300]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 7,0
ctrl = 0
anim = 831
sprpriority = -1

[State 8300, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8300, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8300, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 8300, MakeDust]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 8300, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8300, sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30,2

[State 8300, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 8301
ctrl = 1

[Statedef 8301]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 2,0
ctrl = 0
anim = 5120
sprpriority = -1

[State 8301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Liedown Roll Backwards (Author MystikBlaze)
[Statedef 8305]
type    = C
movetype= I
physics = N
poweradd= 0
velset = -7,0
ctrl = 0
anim = 832
sprpriority = -1

[State 8305, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8305, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8305, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 8305, MakeDust]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 8305, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8305, sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30,2

[State 8305, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 8302
ctrl = 1

[Statedef 8302]
type    = C
movetype= I
physics = N
poweradd= 0
velset = -2,0
ctrl = 0
anim = 5120
sprpriority = -1

[State 8301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Hit Overrides and Extra States
;---------------------------------------------------------------------------
[StateDef 9000]
type = S
movetype= H
physics = S


[State 9000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;----------------------------
;Hyper Background
[Statedef 9744]
physics = N
anim = 9800



[State 9744, superbg]
type = Explod
trigger1 = Time = 0
anim = 10010
ID = 10010
pos = -60,-5
postype = back
bindtime = 999
removetime = -1
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = 1.1,1.1
ignorehitpause = 0


[State 9744]
type = RemoveExplod
triggerall = Numexplod(10010)
trigger1 = Root, stateno != [3000,3999]
trigger2 = p2life = 0
trigger3 = Root,MoveType = H


[State 9744]
type = Destroyself
triggerall = Numexplod(10010)= 0
;triggerall = Time > 7
trigger1 = Root, stateno != [3000,3999]
trigger2 = Root,MoveType = H




