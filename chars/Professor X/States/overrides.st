; States file for {character} -- Overrides and Common states
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   2: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

; RUN_FWD
[Statedef 100]
type    = A
movetype = I
physics = N
anim = 100
sprpriority = 1
velset = const(velocity.run.fwd.x), 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1,1
;volume = 255

;[State 0, Explod]
;type = Explod
;trigger1 = time = 0
;anim = 4100
;pos = 0,0
;postype = p1  ;p2,front,back,left,right
;facing = 1
;vfacing = 1
;bindtime = -1
;removetime = -2
;scale = 0.85,0.85
;sprpriority = 1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8,0

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 0, Explod]
type = Explod
trigger1 = animtime = 0
anim = 60
pos = 15,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.75,0.75

;[State 100, 4]
;type = ChangeState
;trigger1 = Time = 35
;value = IfElse(Pos Y < 0, 948, 0)
;ctrl = 1

[State 100, 4]
type = ChangeState
trigger1 = command != "holdfwd"
value = 0


; Air Dash
[Statedef 102]
type    = A
movetype = I
physics = N
anim = 100
sprpriority = 1
velset = const(velocity.run.fwd.x), 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1,1
;volume = 255

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
sprpriority = 1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8,0

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
trigger1 = Time = 35
value = 948
ctrl = 1

; RUN_Back
[Statedef 105]
type    = A
movetype = I
physics = N
anim = 105
sprpriority = 1
velset = const(velocity.run.back.x), 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1,1
;volume = 255

[State 105, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8,0

[State 105, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 105, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 0, Explod]
type = Explod
trigger1 = animtime = 0
anim = 60
pos = 15,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.75,0.75

[State 105, 4]
type = ChangeState
trigger1 = Time = 20
value = IfElse(Pos Y < 0, 948, 0)
ctrl = 1

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State 0, PowerSet]
type = PowerSet
triggerall = enemynear, name ="Trainingroom"
trigger1 = power != 3000
value = 3000

;---------------------------------------------------------------------------
;Exclusivo da Emma
; =============================
;zvitor resetando variaveis da projeção
[State -2, VarSet]
type = VarSet
triggerall =  var(27) != 0
trigger1 = stateno != 2500 && stateno != 2502
v = 27
value = 0

[State -2, VarSet]
type = VarSet
triggerall =  var(26) != 0
trigger1 = stateno != 2500 && stateno != 2502
v = 26
value = 0

[State -2, VarSet]
type = VarSet
triggerall =  var(25) != 0
trigger1 = stateno != 2500 && stateno != 2502
v = 25
value = 0

[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "PalNo: %d - Pos Y: %f"
params = PalNo, Pos Y

[State -2, PosSet]
type = PosSet
trigger1 = Alive
z = 0.9

[State -2, jump landing sound]   ; custom jump-landing sound
triggerall = Time = 1
trigger1 = stateno = 52
trigger2 = stateno = 106
type = PlaySnd
persistent = 0
value = 1,2 ;8,1

;[State -2, fall landing sound]   ; custom fall-landing sound
;trigger1 = stateno = [5100, 5110]
;trigger1 = Time = 1
;type = PlaySnd
;persistent = 0
;value = 8,2

;[State -2, gethits]         ; custom gethit sounds
;type = PlaySnd
;triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
;trigger1 = anim = 5002  ; standing hard hit high
;trigger2 = anim = 5012  ; stand hard hit low
;trigger3 = anim = 5022  ; crouching hard hit
;trigger4 = anim = 5030  ; air hit
;trigger5 = anim = 5070  ; tripped
;persistent = 0
;value = 4,0

;[State -2, superjump opponent locator]
;type = Helper
;triggerall = (NumHelper(0) = 0)
;trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
;ID = 0
;pos = 0,-120
;postype = p2
;stateno = 910
;facing = 1

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]

;Player 1 Indicator
[State -3]
type = Explod
triggerall = alive = 1 && var(17) < 10
trigger1 = enemynear, screenpos y <0
trigger2 = enemynear, screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y > 200
anim = 909 - ((enemy,id)<id)
id = 909
pos = ceil((enemynear,screenpos x)),20+(enemynear, screenpos y>0)*200
postype = left
sprpriority = 4
ignorehitpause = 1
ontop = 1
bindtime = -1
persistent = 1
removetime = 1
scale= const(size.xscale),const(size.yscale)

;Player 2 Indicator
[State -3]
type = Explod
triggerall = alive = 1 && var(17) < 10
trigger1 = enemynear, screenpos y <0
trigger2 = enemynear, screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y > 200
anim = 910 - ((enemy,id)<id)
id = 910
pos = ceil((enemynear,screenpos x)),20+(enemynear, screenpos y>0)*200
postype = left
sprpriority = 4
ignorehitpause = 1
ontop = 1
bindtime = -1
persistent = 1
removetime = 1
scale= const(size.xscale),const(size.yscale)

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(4100) > 0
id = 4000

;-------------------------------------------------------------------------------
; Level-up sounds (uses Var(2))
;[State -3, levelup var 0]
;type = VarSet
;trigger1 = power < 1000
;v =  2
;value = 0

;[State -3, levelup snd 1]
;type = PlaySnd
;trigger1 = (power >= 1000) && (power < 2000) && (var(2) < 1) && (RoundState = 2)
;value = 12,0

;[State -3, levelup var 1]
;type = VarSet
;trigger1 = (power >= 1000) && (power < 2000)
;v =  2
;value = 1

;[State -3, levelup snd 2]
;type = PlaySnd
;trigger1 = (power >= 2000) && (power < 3000) && (var(2) < 2) && (RoundState = 2)
;value = 12,1

;[State -3, levelup var 2]
;type = VarSet
;trigger1 = (power >= 2000) && (power < 3000)
;v =  2
;value = 2

;[State -3, levelup snd 3]
;type = PlaySnd
;trigger1 = (power >= 3000) && (var(2) < 3) && (RoundState = 2)
;value = 12,2

;[State -3, levelup var 3]
;type = VarSet
;trigger1 = (power >= 3000)
;v =  2
;value = 3

;-------------------------------------------------------------------------------

[State -3, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
triggerall = Time = 3
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fdw land
trigger3 = StateNo = 106 ;Run-back land
trigger4 = PrevStateNo = 52 && StateNo = 11 ;Jump land/crouch
persistent = 0
ID = 60
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1 && Var(20) != 2
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fwd land
trigger3 = StateNo = 106 ;Run-back land
value = 8, 1

;--------------------------------
; based on FlowaGirl and Ethan Lives codes
; taken with permission from McCready's Guido char

;[State -3, Finish Hit Explod - Helper]
;type = Helper
;triggerall = WinKO && NumHelper(8900) = 0
;trigger1 = RoundState = 3
;helpertype = Normal
;name = "Finish Hit Explod"
;id = 8900
;pos = 0, 0
;postype = p1
;facing = 0
;stateno = 8900
;keyctrl = 0
;ownpal = 1
;supermovetime = 1000
;pausemovetime = 1000
;ignorehitpause = 1

; desperation quote
;[State -3, PlaySnd]
;type = PlaySnd
;trigger1 = (Life <= 150) && (var(50) = 0)
;value = S11,1

[State -3, VarSet]
type = VarSet
trigger1 = Life <= 150
v = 50
value = 1

