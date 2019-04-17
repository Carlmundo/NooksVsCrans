; States file for {character} (amalgam)
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
; {move name} (Amalgam Hyper -- QCF + HP+HK)  -- states 4000-4200
;   {move description}
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Amalgam Hyper
[StateDef 4000]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 4000
velset = 0,0
poweradd = -3000

; portrait collision
[State 4000, doom!]
type = PlaySnd
trigger1 = Time = 15
value = 10,2

[State 4000, envshake]
type = EnvShake
trigger1 = Time = 15
time = 40
;freq = 60
;ampl = -4
;phase = 

[State 4000, Char Portrait]
type = Explod
trigger1 = Time = 0
anim = 4900
postype = left
pos = 0,0
ignorehitpause = 1
sprpriority = -2
supermovetime = 40
removeongethit = 1

[State 4000, Partner Portrait]
type = Explod
trigger1 = Time = 0
anim = 4901
postype = left
pos = 0,0
ignorehitpause = 1
sprpriority = -2
supermovetime = 40
removeongethit = 1

; amalgam lightning
[State 4000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 11
value = S10,5

; amalgam lightning
[State 4000, Explod]
type = Explod
trigger1 = AnimElem = 11
anim = 8005
ID = 8005
pos = 0,0
postype = p1
sprpriority = 3
removeongethit = 1

[State 4000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 4200


; Amalgam - end
[StateDef 4200]
type    = S
MoveType = I
physics = N
VelSet = 6,0
sprpriority = 2
anim = 0

[State 4200, changestate]
type = ChangeState
trigger1 = AnimTime = 0
ctrl= 1
value = 0
