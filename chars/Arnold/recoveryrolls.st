;Recovery Rolls

;-------------------------------------------------------------------------------
; Near Foward Recovery Roll

[Statedef 831]
type    = C
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
ctrl = 0
anim = 831
sprpriority = -1

[State 831, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 831, 3]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 831, 4]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 831, 5]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 831, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------------------------------
; Medium Foward Recovery Roll

[Statedef 832]
type    = C
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = 8,0
ctrl = 0
anim = 832
sprpriority = -1

[State 832, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 832, 2]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 832, 3]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 832, 4]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 832, 5]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 10

[State 832, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------------------------------
; Far Foward Recovery Roll

[Statedef 840]
type    = C
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = 8,0
ctrl = 0
anim = 840
sprpriority = -1

[State 840, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 840, 2]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 840, 3]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 840, 4]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 840, 5]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 840, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------------------------------
; Near Backward Recovery Roll

[Statedef 850]
type    = C
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
ctrl = 0
anim = 850
sprpriority = -1

[State 850, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 850, 3]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 850, 4]
type = MakeDust
trigger1 = Time >= 0
pos = 16,0
spacing = 6

[State 850, 5]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 850, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------------------------------
; Medium Backward Recovery Roll

[Statedef 855]
type    = C
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = -8,0
ctrl = 0
anim = 855
sprpriority = -1

[State 855, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 855, 2]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 855, 3]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 855, 4]
type = MakeDust
trigger1 = Time >= 0
pos = 16,0
spacing = 6

[State 855, 5]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 10

[State 855, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------------------------------
; Far Backward Recovery Roll

[Statedef 860]
type    = C
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = -8,0
ctrl = 0
anim = 860
sprpriority = -1

[State 860, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 860, 2]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 860, 3]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 860, 4]
type = MakeDust
trigger1 = Time >= 0
pos = 16,0
spacing = 6

[State 860, 5]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 860, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

; Recovery Roll - Variable "Reset"
[State -2, 1]
type = VarSet
trigger1 = (StateNo != 5050) && (StateNo != 5071)
v = 30
value = 0

; A.I. - Far Foward Recovery Roll
[State -2, 2]
type = ChangeState
triggerall = (RoundState = 2)&&(Var(59) = 2)
triggerall = (StateType != S)&&(StateType != L)
triggerall = (P2Life != 0)&&(Alive = 1)
triggerall = (Pos Y = [-10,0])
triggerall = (StateNo = 5050)||(StateNo = 5071)||(StateNo = 50700)
trigger1 = (P2Dist X)+(BackEdgeDist) <= 160
trigger2 = (Enemy, NumProj > 0)
value = 840

; A.I. - Far Backward Recovery Roll
[State -2, 3]
type = ChangeState
triggerall = (RoundState = 2)&&(Var(59) = 2)
triggerall = (StateType != S)&&(StateType != L)
triggerall = (P2Life != 0)&&(Alive = 1)
triggerall = (Pos Y = [-10,0])
trigger1 = (StateNo = 5050)||(StateNo = 5071)||(StateNo = 50700)
trigger1 = (P2Dist X)+(BackEdgeDist) > 160
value = 55

; A.I. - Lie Down Forward Recovery Roll
[State -2, 4]
type = ChangeState
triggerall = (RoundState = 2)&&(Var(59) = 2)
triggerall = (StateType != S)&&(StateType = L)
triggerall = (P2Life != 0)&&(Alive = 1)
triggerall = (StateNo = 5120)&&(StateNo = 51200)
trigger1 = Time = 1
trigger1 = (P2Dist X)+(BackEdgeDist) <= 160
trigger2 = (Enemy, NumProj > 0)
value = 832

; A.I. - Lie Down Backward Recovery Roll
[State -2, 5]
type = ChangeState
triggerall = (RoundState = 2)&&(Var(59) = 2)
triggerall = (StateType != S)&&(StateType = L)
triggerall = (P2Life != 0)&&(Alive = 1)
trigger1 = (StateNo = 5120)&&(StateNo = 51200)
trigger1 = Time = 1
trigger1 = (P2Dist X)+(BackEdgeDist) > 160
value = 855

