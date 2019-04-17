;-------------------------------------------------------------------------------
; Power Charge
[Statedef 730]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 730
sprpriority = 2

[State 730, Power]
type = PowerAdd
trigger1 = Time >= 8
value = 1

[State 730, Power1]
type = PowerAdd
trigger1 = Time >= 28
value = 1

[State 730, Power2]
type = PowerAdd
trigger1 = Time >= 48
value = 1

[State 730, Power3]
type = PowerAdd
trigger1 = Time >= 68
value = 1

[State 730, Power4]
type = PowerAdd
trigger1 = Time >= 88
value = 5

[State 730, Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = S730,1
channel = 5

[State 730, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = S730,0
channel = 0

[State 730, Modify1]
type = ModifyExplod
trigger1 = NumExplod(730) && power >= 3000
ID = 730
scale = 0.75,0.5

[State 730, Stop]
type = ChangeState
triggerall = Time >= 8
trigger1 = !var(0) && (Command != "hold_y" || Command != "hold_b")
trigger2 = var(0) && RoundState = 2 && (inguarddist || P2bodydist X <= 50)
trigger3 = power >= powermax
value = 731
ctrl = 1

;-------------------------------------------------------------------------------
[Statedef 731]
type    = S
movetype= I
physics = S
anim = 731

[State 731, Stop]
type = StopSnd
trigger1 = Time = 0
channel = 5

[State 731, Stop1]
type = StopSnd
trigger1 = Time = 0
channel = 0

[State 731, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 730

[State 731, Done]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
