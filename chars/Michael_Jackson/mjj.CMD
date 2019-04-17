[Command]
name = "AI_1"
command = U,D,F,F,B,B,U,D,F,F,B,B
time = 1

[Command]
name = "AI_2"
command = U,F,D,B,U,F,U,F,D,B,U,F
time = 1

[Command]
name = "AI_3"
command = B,F,B,F,D,U,B,F,B,F,D,U
time = 1

[Command]
name = "AI_4"
command = D,F,B,U,U,D,D,F,B,U,U,D
time = 1

[Command]
name = "AI_5"
command = D,F,a,b,c,D,F,a,b,c
time = 1

[Command]
name = "AI_6"
command = D,B,x,y,z,D,B,x,y,z
time = 1

[Command]
name = "AI_7"
command = U,U,U,U,U,U,U,U,U,U,U,U
time = 1

[Command]
name = "AI_8"
command = D,D,D,D,D,D,D,D,D,D,D,D
time = 1

[Command]
name = "AI_9"
command = F,F,F,F,F,F,F,F,F,F,F,F
time = 1

[Command]
name = "AI_10"
command = B,B,B,B,B,B,B,B,B,B,B,B
time = 1
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Single Button |---------------------------------------------------------

[Command]
name = "U"
command = $U
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "hold-a"
command = /a
time = 1

[Command]
name = "hold-b"
command = /b
time = 1

[Command]
name = "hold-x"
command = /x
time = 1

[Command]
name = "hold-y"
command = /y
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "start~"
command = /s
time = 1

;---------------------------------------------------------------------------

[Statedef -1]
;---------------------------------------------------------------------------

[State -1, 3]
type = turn
trigger1 = var(50) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2dist X < 0

;점프 스타트
[state -1]
type = ChangeState
value = 40
triggerall = var(50) = 1
triggerall = statetype != A
triggerall = ctrl
trigger1 = enemy,statetype = A
trigger1 = random <= 300
trigger2 = enemy,HitDefAttr = C,NA
trigger2 = ctrl
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = life <= 200
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Kung Fu Throw]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = p2bodydist X >= 0 && p2bodydist X <= 30
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 240
triggerall = command = "a"
trigger1 = life <= 200
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;지능
[state -1]
type = ChangeState
value = 200
trigger1 = var(50) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X <= 100
trigger1 = random <= 300
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl

[state -1]
type = ChangeState
value = 400
triggerall = var(50) = 1
triggerall = ctrl
triggerall = statetype != A
triggerall = random <= 100
trigger1 = statetype = C
trigger2 = enemy,statetype != A
trigger2 = p2bodydist X <= 100
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno = 50

[state -1]
type = ChangeState
value = 610
trigger1 = var(50) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno = 50
trigger1 = random <= 500
;---------------------------------------------------------------------------
;guard start
[State -1, Jump Light Punch]
type = ChangeState
value = 120
trigger1 = command = "y" && ctrl

[State -1, Jump Light Punch]
type = ChangeState
value = 120
triggerall = var(50) = 1
trigger1 = NumProj >= 1
trigger1 = ctrl

[State -1, Jump Light Punch]
type = ChangeState
value = 120
triggerall = var(50) = 1 && enemy,movetype = A
trigger1 = enemy,HitDefAttr != A,HT
trigger1 = ctrl

;---------------------------------------------------------------------------

