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
type    = S
movetype = I
physics = N
anim = 100
ctrl = 0
sprpriority = 1
velset = const(velocity.run.fwd.x), 0

[State 100, PlaySnd]
type = Null;PlaySnd
trigger1 = Time = 0
value = S8,0

[State 100, lines]
type = Explod
trigger1 = timemod = 3,1
anim = 113
ID = 113
removeongethit = 1
removetime = 60
vel = -10-ceil(random/20), 0
postype = p1
pos = -20, -80
random = 0,80
xscale = 0.5
yscale = 0.5
sprpriority = -3
bindtime = 1
ownpal = 1

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
trigger1 = Command = "holdup"
value = 40
ctrl = 0

[State 100, 4]
type = ChangeState
trigger1 = Command != "holdfwd"
trigger1 = Time >= 10
value = 0 ;IfElse(Pos Y < 0, 948, 0)
ctrl = 1


;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2, StopSnd]
type = StopSnd
triggerall = StateNo != [191,192]
trigger1 = 1 
channel = 19
ignorehitpause = 1
persistent = 1


[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "PalNo: %d - Pos Y: %f, P2BDX: %d"
params = PalNo, Pos Y, P2BodyDist X

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
value = 8,1

;[State -2, fall landing sound]   ; custom fall-landing sound
;trigger1 = stateno = [5100, 5110]
;trigger1 = Time = 1
;type = PlaySnd
;persistent = 0
;value = 8,2

[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
trigger1 = anim = 5002  ; standing hard hit high
trigger2 = anim = 5012  ; stand hard hit low
trigger3 = anim = 5022  ; crouching hard hit
trigger4 = anim = 5030  ; air hit
trigger5 = anim = 5070  ; tripped
persistent = 0
value = 4,0

[State -2, superjump opponent locator]
type = Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
ID = 0
pos = 0,-120
postype = p2
stateno = 910
facing = 1


;Crow's crow
[State -2, Helper] ; credit: Warusaki3
type = Helper
triggerall = StateNo != 192
trigger1 = NumHelper(4000)=0
id = 4000
stateno = 4000 ;ifelse(roundstate = 0,4190,4000)
name = "crow"
pos = -100,-200
postype = P1
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
pausemovetime = 999999999

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]
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

;--------------------------------------------------
; Level-up sounds (uses Var(2))
[State -3, levelup var 0]
type = VarSet
trigger1 = power < 1000
v =  2
value = 0

[State -3, levelup snd 1]
type = PlaySnd
trigger1 = (power >= 1000) && (power < 2000) && (var(2) < 1) && (RoundState = 2)
value = 12,0

[State -3, levelup var 1]
type = VarSet
trigger1 = (power >= 1000) && (power < 2000)
v =  2
value = 1

[State -3, levelup snd 2]
type = PlaySnd
trigger1 = (power >= 2000) && (power < 3000) && (var(2) < 2) && (RoundState = 2)
value = 12,1

[State -3, levelup var 2]
type = VarSet
trigger1 = (power >= 2000) && (power < 3000)
v =  2
value = 2

[State -3, levelup snd 3]
type = PlaySnd
trigger1 = (power >= 3000) && (var(2) < 3) && (RoundState = 2)
value = 12,2

[State -3, levelup var 3]
type = VarSet
trigger1 = (power >= 3000)
v =  2
value = 3


;--------------------------------
; based on FlowaGirl and Ethan Lives codes
; taken with permission from McCready's Guido char
[State -3, Finish Hit Explod - Helper]
type = Helper
triggerall = WinKO && NumHelper(8900) = 0
trigger1 = RoundState = 3
helpertype = Normal
name = "Finish Hit Explod"
id = 8900
pos = 0, 0
postype = p1
facing = 0
stateno = 8900
keyctrl = 0
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1


; desperation quote
[State -3, PlaySnd]
type = PlaySnd
trigger1 = (Life <= 150) && (var(50) = 0)
value = S11,1

[State -3, VarSet]
type = VarSet
trigger1 = Life <= 150
v = 50
value = 1

; "Win by hyper" effect
[State -3, Explod]
type = Explod
trigger1 = (RoundState = 3) && (Life > 0) && (NumExplod(12000) = 0)
anim = 12000
ID = 12000
pos = 0,0
postype = left
bindtime = 100
sprpriority = -1
ownpal = 1

; knife blood effect
[State -3, Explod]
type = Explod
triggerall = NumExplod(1012) = 0
trigger1 = ProjHitTime(1010) != -1 && ProjHitTime(1010) < 7
anim = 1012
ID = 1012
pos = Floor(P2Dist X),-46
postype = p1
bindtime = 6
removetime = -2
sprpriority = 3
supermovetime = 9999
pausemovetime = 9999
ownpal = 1
ignorehitpause = 1

; gund blood effect
[State -3, Explod]
type = Explod
triggerall = NumEnemy
triggerall = EnemyNear, StateType != A && P2StateType != A
triggerall = NumExplod(1022) = 0
trigger1 = ProjHitTime(3101) != -1 && ProjHitTime(3101) < 11
anim = 1022
ID = 1022
pos = 0, EnemyNear, Const(size.head.pos.y)
postype = p2
bindtime = 6
removetime = -2
sprpriority = 3
supermovetime = 9999
pausemovetime = 9999
ownpal = 1
ignorehitpause = 1

; gund blood effect
[State -3, Explod]
type = Explod
triggerall = NumEnemy
triggerall = EnemyNear, StateType = A || P2StateType = A
triggerall = NumExplod(1022) = 0
trigger1 = ProjHitTime(3101) != -1 && ProjHitTime(3101) < 11
anim = 1022
ID = 1022
pos = 0, EnemyNear, Const(size.mid.pos.y)
postype = p2
bindtime = 6
removetime = -2
sprpriority = 3
supermovetime = 9999
pausemovetime = 9999
ownpal = 1
ignorehitpause = 1

; gund blood effect
[State -3, Explod]
type = Explod
triggerall = NumEnemy
triggerall = EnemyNear, StateType != A && P2StateType != A
triggerall = NumExplod(1022) = 0
trigger1 = ProjHitTime(3010) != -1 && ProjHitTime(3010) < 11
anim = 1022
ID = 1022
pos = 0, (EnemyNear, Const(size.head.pos.y)) + (10 + (20 * EnemyNear, StateType = C))
postype = p2
bindtime = 6
removetime = -2
sprpriority = 3
supermovetime = 9999
pausemovetime = 9999
ownpal = 1
ignorehitpause = 1

; gund blood effect
[State -3, Explod]
type = Explod
triggerall = NumEnemy
triggerall = EnemyNear, StateType = A || P2StateType = A
triggerall = NumExplod(1022) = 0
trigger1 = ProjHitTime(3010) != -1 && ProjHitTime(3010) < 11
anim = 1022
ID = 1022
pos = 0, EnemyNear, Const(size.mid.pos.y)
postype = p2
bindtime = 6
removetime = -2
sprpriority = 3
supermovetime = 9999
pausemovetime = 9999
ownpal = 1
ignorehitpause = 1

; gund blood effect
[State -3, Explod]
type = Explod
triggerall = NumEnemy
triggerall = EnemyNear, StateType != A && P2StateType != A
triggerall = NumExplod(1022) = 0
trigger1 = ProjHitTime(1030) != -1 && ProjHitTime(1030) < 11
anim = 1022
ID = 1022
pos = 0, (EnemyNear, Const(size.head.pos.y)) + (10 + (20 * EnemyNear, StateType = C))
postype = p2
bindtime = 6
removetime = -2
sprpriority = 3
supermovetime = 9999
pausemovetime = 9999
ownpal = 1
ignorehitpause = 1

; gund blood effect
[State -3, Explod]
type = Explod
triggerall = NumEnemy
triggerall = EnemyNear, StateType = A || P2StateType = A
triggerall = NumExplod(1022) = 0
trigger1 = ProjHitTime(1030) != -1 && ProjHitTime(1030) < 11
anim = 1022
ID = 1022
pos = 0, EnemyNear, Const(size.mid.pos.y)
postype = p2
bindtime = 6
removetime = -2
sprpriority = 3
supermovetime = 9999
pausemovetime = 9999
ownpal = 1
ignorehitpause = 1

; gund blood effect
[State -3, Explod]
type = Explod
triggerall = NumEnemy
triggerall = EnemyNear, StateType != A && P2StateType != A
triggerall = NumExplod(1022) = 0
trigger1 = NumTarget(620)
trigger1 = Target, Time = 0
trigger1 = Target, StateNo != [120,155]
anim = 1022
ID = 1022
pos = 0, (EnemyNear, Const(size.head.pos.y)) + (10 + (20 * EnemyNear, StateType = C))
postype = p2
bindtime = 6
removetime = -2
sprpriority = 3
supermovetime = 9999
pausemovetime = 9999
ownpal = 1
ignorehitpause = 1

; gund blood effect
[State -3, Explod]
type = Explod
triggerall = NumEnemy
triggerall = EnemyNear, StateType = A || P2StateType = A
triggerall = NumExplod(1022) = 0
trigger1 = NumTarget(620)
trigger1 = Target, Time = 0
trigger1 = Target, StateNo != [120,155]
anim = 1022
ID = 1022
pos = 0, EnemyNear, Const(size.mid.pos.y)
postype = p2
bindtime = 6
removetime = -2
sprpriority = 3
supermovetime = 9999
pausemovetime = 9999
ownpal = 1
ignorehitpause = 1

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------

