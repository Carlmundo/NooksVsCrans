; States file for {character} -- Basics
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
; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,1

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 175
velset = 0,0

[State 175,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,2

[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 ;+ (Random % 2) ;((Random * 1) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0



[State 3000, a8] ;Super portrait
type = Explod
trigger1 = !time
anim = 2155
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

[State 181,0]
type = PlaySnd
trigger1 = Time = 0
value = 33,0

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,120]
flag = RoundNotOver

;-----------------------
; Winpose #2 - Mission accomplished
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,1

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,80]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190,intro decider]
type = ChangeState
trigger1 = 1 ;Time = 1
value = 191 + (Random % 2) ;((Random * 1) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191;12001
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 191,0;9000,0
channel = 19

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 259
value = 2,2

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 261
value = 2,2

[State 191, Explod]
type = Null;Explod
trigger1 = Time = 0
anim = 2305
ID = 2305
pos = -48,23
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1

[State 191, RemoveExplod]
type = Null;RemoveExplod
trigger1 = Time= 100
id = 2305

[State 192, 2]             
type = AssertSpecial
trigger1 = Time = [0,3367]
flag = Intro

;-----------------------
; Intro #2
[Statedef 192]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 9000,0
channel = 19


[State 191, Explod]
type = Null;Explod
trigger1 = Time = 0
anim = 2305
ID = 2305
pos = -48,23
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1

[State 191, RemoveExplod]
type = Null;RemoveExplod
trigger1 = Time= 100
id = 2305

[State 192, 2]             
type = AssertSpecial
trigger1 = Time = [0,500]
flag = Intro


;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
anim = 200
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 30

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 30
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-99
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
anim = 210
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 65
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-100
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-6

[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 220]
anim = 220
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 85;100
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5
guard.velocity = -3
air.velocity = -4,8

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
anim = 230
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 25

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 230, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 230, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
anim = 240
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 65
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-80
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
guard.velocity = -3
air.velocity = -3,-6

[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 250]
anim = 250
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 250, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 85;96
guardflag = MA
pausetime = 6,6
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -5
guard.velocity = -3
air.velocity = -4,-8

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
anim = 400
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 30

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 400, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 30
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-400
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -2
guard.velocity = -1
air.velocity = -3,-6

[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 410]
anim = 410
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 410, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 65
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-400
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-6

[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 420, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 420, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 75
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-40
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-11

[State 420, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 455
ID = 455
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
;removetime = -2
;sprpriority = 2
ontop = 1
removeongethit = 1

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 430]
anim = 430
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 430, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,0
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3

[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
anim = 440
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 10

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 440, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 30
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-50
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -6,-6

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 450]
anim = 450
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 450, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
hitflag = M
damage = 60
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,0
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
anim = 600
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 25

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 25
guardflag = HA
pausetime = 4,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
anim = 610
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 55
guardflag = HA
pausetime = 4,8
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-70
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
anim = 620
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 96

[State 620, Width]
type = Null;Width
trigger1 = Time = 0
player = 45,0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S350,0
channel = 0

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 75
hitflag = MAFD
guardflag = HA
pausetime = 0,8
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-400
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3
ID = 620

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
anim = 630
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 22

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 630, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 22
guardflag = HA
pausetime = 4,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-400
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
anim = 640
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 640, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 35
guardflag = HA
pausetime = 4,8
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-400
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
anim = 650
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 92

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 62
guardflag = HA
pausetime = 0,8
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-400
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
;Super Jump opponent locator
[Statedef 910]
type    = A
physics = N
ctrl = 0
sprpriority = 2

[State 910, arrow]
type = ChangeAnim
trigger1 = IsHelper(0)
;trigger1 = TeamSide = 2
value = 910

[State 910, destroyself]
type = DestroySelf
triggerall = IsHelper(0)
trigger1 = RootDist Y > 0


;-----------------------
; Safe fall (from superjump, or jumping attack)
[StateDef 948]
type = A
movetype = I
physics = A
ctrl = 1

; neutral
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X = 0)
value = 48

; forwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X > 0)
value = 49

; backwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X < 0)
value = 50


[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = A
physics = S
sprpriority = 2

[State 200, 1]
type = Null;PlaySnd
trigger1 = time = 0
value = 195,0

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------

[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents KFM from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.
[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
                      ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face KFM
p1stateno = 810       ;On success, KFM changes to state 810
p2stateno = 820       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Kung Fu Throw - Throwing the opponent
; Description: In this state, KFM throws the opponent by binding him to
;     various offsets based on his current frame of animation. For
;     example, [State 810, Bind 1] binds the opponent to an offset of
;     28 pixels in front of KFM. That puts him around where KFM's hand
;     is at. Is is important to keep the opponent bound using a
;     TargetBind controller at all times, until you let him go. This
;     is especially important if your player has a Clsn2 box that
;     allows him to get hit while throwing someone. Each time a player
;     gets hit, all his bound targets will be set to a fall state. If
;     the opponent is not bound, then he may get stuck in his thrown
;     state when his attacker is knocked out of the throw halfway.
; Notes: There is a TargetLifeAdd controller to decrease the opponent's
;     life, and a TargetState controller to change his state to a
;     falling state when KFM lets go of him.
[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 0

; Here a variable, var(2), is used to remember whether or not the
; player was holding forward at the start of the state. This variable
; is checked later on to turn KFM around if necessary.
[State 810, Holding fwd?]
type = Null;VarSet
trigger1 = Time = 0
var(2) = command = "holdfwd"

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 1

[State 810, Throw Sound]
type = PlaySnd
trigger1 = AnimElemTime(2) = 3
value = 0, 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = -35, 0

[State 810, Width 2-11]
type = Null;Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
edge = 60,0

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = -6, -6

[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 10, 50

[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 10, 55

[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 44, 0

[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 2
pos = 30, -6

[State 810, holdfwd - Turn 6] ;If was holding fwd before, turn now
type = Null;Turn
trigger1 = var(2)
trigger1 = AnimElem = 1

[State 810, holdfwd - Pos 6] ;If was holding fwd before, move a little
type = Null;PosAdd
trigger1 = var(2)
trigger1 = AnimElem = 6
x = -37

[State 810, EnvShake]
type = EnvShake
trigger1 = AnimElem = 6
time = 15
ampl = 6

[State 810, holdfwd - Turn Target 6] ;If was holding fwd before, turn target too
type = Null;TargetFacing
trigger1 = var(2)
trigger1 = AnimElem = 1
value = -1

[State 810, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -78

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 810, Explod]
type = Explod
trigger1 = AnimElem = 6
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 40, 0
sprpriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)

[State 810, Throw 11]
type = TargetState
trigger1 = AnimElemTime(7) > 2
value = 821

[State 810, Turn 12]
type = Null;Turn
trigger1 = AnimElem = 12

[State 810, Pos 15]
type = Null;PosAdd
trigger1 = AnimElem = 15
x = -10

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw
; (a custom gethit state)
; Description: This is the state that the opponent changes to after being
;     hit by KFM's throw HitDef. The important thing here is to use a
;     ChangeAnim2 controller. The difference between ChangeAnim2 and
;     ChangeAnim is that ChangeAnim2 changes the player's animation to
;     an action in the AIR file of the attacker (in this case, kfm.air),
;     whereas ChangeAnim always changes the player to an action in his
;     own AIR file. Look at Action 820 in kfm.air for some extra
;     comments.
[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0
facep2 = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 820, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 821]
type    = A
movetype= H
physics = N
velset = 2.8,-10
poweradd = 40

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;Crow's crow
[Statedef 4000] ;credit: Warusaki3
type    = A
movetype = I
physics = N
ctrl = 0
anim = 4000
sprpriority = 7

[State 100, 1]
type = null;bindtoroot
triggerall = roundno != 1
trigger1 = roundstate = 0
pos = -100,-200
ignorehitpause = 1
;time = 5
persistent = 0

[State 100, 1]
type = null;bindtoroot
triggerall = roundno != 1
triggerall = parent,stateno = 182
trigger1 = roundstate = 0
trigger1 = ParentDist X <= 100 && ParentDist Y <= 200
pos = -50,-135
ignorehitpause = 1
;time = 5
persistent = 0

[State 100, 1]
type = bindtoroot
trigger1 = parent,prevstateno = [190,194]
trigger1 = time < 4
pos = -13,-94
ignorehitpause = 1

[State 1125, Velocity]
type = VelSet
trigger1 = parent,prevstateno = [190,194]
trigger1 = time >= 4
y = ifelse(parent,prevstateno = 191,0,-2.5)
persistent = 0


[State 1125, Velocity]
type = VelSet
trigger1 = ParentDist X > 40
x = 3
persistent = 1

[State 1125, Velocity]
type = VelSet
trigger1 = ParentDist X < 20
x = -2.5
persistent = 1

[State 1125, Velocity]
type = VelMul
trigger1 = Vel X > 0
trigger1 = ParentDist X > 30
trigger1 = ParentDist X <= 140
trigger2 = Vel X < 0
trigger2 = ParentDist X < 30
trigger2 = ParentDist X >= 120
x = 0.95 + (1 * Parent, Vel X >= 7.5)
persistent = 1

[State 1125, Velocity]
type = VelSet
triggerall = parent,facing * facing = 1
trigger1 = Vel X > 0
trigger1 = ParentDist X <= 13
trigger2 = Vel X < 0
trigger2 = ParentDist X >= 13
x = 0
persistent = 1

[State 1125, Velocity]
type = VelSet
;triggerall = Pos Y >= -135 || Vel Y > 0
trigger1 = ParentDist Y > 120
y = ifelse(anim = 4000,1.3,4)
persistent = 1

[State 1125, Velocity]
type = VelSet
;triggerall = Pos Y >= -135 || Vel Y < 0
trigger1 = ParentDist Y < 110
y = ifelse(anim = 4000,-3.5,-3)
persistent = 1

[State 1125, Velocity]
type = VelAdd
triggerall = Vel Y < 4
trigger1 = Vel Y != 0
y = .4
persistent = 1

[State 1125, Velocity]
type = VelSet
;triggerall = Pos Y >= -135
trigger1 = Vel Y > 0
trigger1 = ParentDist Y <= 120
trigger2 = Vel Y < 0
trigger2 = ParentDist Y >= 120
y = 0
persistent = 1

[State 0]
type = null;changeanim
triggerall = Vel Y >= 0
triggerall = anim = 4000
trigger1 = ParentDist Y > 160
value = 4001

[State 0]
type = null;changeanim
triggerall = Vel Y >= 0
triggerall = anim = 4001
trigger1 = ParentDist Y < 140
value = 4000

[State 0]
type = null;changeanim
triggerall = Vel Y <= 0
triggerall = anim = 4000
trigger1 = ParentDist Y < 110
value = 4001

[State 0]
type = null;changeanim
triggerall = Vel Y <= 0
triggerall = anim = 4001
trigger1 = ParentDist Y > 130
value = 4000

[State 3001, VarSet]
type = VarSet
trigger1 = parent,stateno != 0
trigger2 = parent,stateno = 0 && parent,anim = 5
var(1) = 0

[State 3001, VarSet]
type = VarAdd
trigger1 = parent,stateno = 0
var(1) = 1

[State 3001, VarSet]
type = ParentVarSet
trigger1 = 1
fvar(1) = ParentDist X

[State 3001, VarSet]
type = ParentVarSet
trigger1 = 1
fvar(2) = ParentDist Y

[State 5900, 3]
type = ChangeState
trigger1 = parent,stateno = 1110 && parent,animelemtime(4) = 0
value = 4300

[State 5900, 3]
type = null;ChangeState
trigger1 = parent,stateno = 1400
value = 4400

[State 5900, 3]
type = null;ChangeState
trigger1 = parent,stateno = 3000
value = 4500

[State 5900, 3]
type = null;ChangeState
trigger1 = parent,stateno = 3003 && parent,animelemtime(36) = 0
value = 4501

[State 5900, 3]
type = null;ChangeState
trigger1 = parent,stateno = 170 && parent,animelemtime(4) = 0
value = 4170

[State 5900, 3]
type = null;ChangeState
trigger1 = parent,stateno = 175
value = 4175

[State 5900, 3]
type = null;ChangeState
trigger1 = parent,stateno = 181 && parent,animelemtime(3) = 13
value = 4180

[State 5900, 3]
type = null;ChangeState
trigger1 = parent,stateno = 182
value = 4182

[State 5900, 3]
type = null;ChangeState
trigger1 = parent,stateno = 188
value = 4185

[State 5900, 3]
type = null;ChangeState
trigger1 = parent,stateno = 191 && parent,animelemtime(1) = 0
value = 4190

[State 5900, 3]
type = null;ChangeState
trigger1 = parent,stateno = 192
value = 4191

[State 5900, 3]
type = null;ChangeState
trigger1 = parent,stateno = 193 && parent,animelemtime(1) = 1
value = 4192

[State 5900, 3]
type = null;ChangeState
trigger1 = ParentDist X > 100
value = 4001

[State 5900, 3]
type = null;ChangeState
trigger1 = ParentDist X < 20
value = 4002

[State 5900, 3]
type = null;ChangeState
triggerall = ParentDist X < 60
trigger1 = parent,facing * facing = -1
value = 4005

[State 5900, 3]
type = null;ChangeState
trigger1 = var(1) >= 300;parent,stateno = 0 && parent,time >= 360
value = 4006

[State 5900, 3]
type = null;ChangeState
trigger1 = parent,facing * facing = 1
trigger1 = parent,stateno = 5150 && parent,matchover = 1
value = 4150

[State 4000, Turn]
type = Turn
triggerall = IsHelper
trigger1 = P2Dist X < 0.0
trigger2 = NumEnemy
trigger2 = ((EnemyNear, ScreenPos X - ScreenPos X) * Facing) < -1.0
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 12

[State 4000, AssertSpecial]
type = AssertSpecial
triggerall = IsHelper
trigger1 = Parent, StateNo = 3100
trigger2 = Parent, StateNo = 192
trigger3 = Parent, StateNo = [180,189]
;trigger4 = Parent, NumHelper(1610) != 0 ;Parent, StateNo = 1110 || 
;flag = intro
flag = invisible
;flag = roundnotover
;flag = nobardisplay
;flag = noBG
;flag = noFG
;flag = nostandguard
;flag = nocrouchguard
;flag = noairguard
;flag = noautoturn
;flag = nojugglecheck
;flag = noko
;flag = nokosnd
;flag = nokoslow
flag2 = noshadow
;flag = globalnoshadow
;flag = nomusic
;flag = nowalk
;flag = timerfreeze
;flag = unguardable
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 4000, DisplayToClipboard]
type = DisplayToClipboard
triggerall = IsHelper
trigger1 = NumEnemy
text = "Pos X=%d, Pos Y=%d"
params = Pos X, Pos Y
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 4000, VarSet]
type = VarSet
trigger1 = 1
var(2) = ceil(pos x)
ignorehitpause = 1
persistent = 1

[State 4000, VarSet]
type = VarSet
trigger1 = 1
var(4) = ceil(pos y)
ignorehitpause = 1
persistent = 1

[Statedef 4190]
type    = A
movetype = I
physics = N
ctrl = 0
anim = 4000
sprpriority = 7
velset = 0,0

[State 100, 1]
type = bindtoroot
trigger1 = time = 1
pos = -20,-70
ignorehitpause = 1

[State 1125, Velocity]
type = Null;VelSet
trigger1 = animelemtime(2) > 0
;trigger1 = ParentDist X < 40
x = -1.5
persistent = 1

[State 1125, Velocity]
type = Null;VelMul
trigger1 = animelemtime(2) > 0
x = .95
persistent = 1

[State 1125, Velocity]
type = Null;VelSet
triggerall = animelemtime(2) > 0
trigger1 = Vel X < 0
trigger1 = ParentDist X >= 50
x = 0
persistent = 1

[State 1125, Velocity]
type = Null;VelSet
trigger1 = animelemtime(2) > 0
y = -3.6
persistent = 1

[State 1125, Velocity]
type = Null;VelMul
trigger1 = animelemtime(2) > 0
y = .95
persistent = 1

[State 1125, Velocity]
type = Null;VelSet
triggerall = animelemtime(2) > 0
triggerall = Pos Y >= -135
trigger1 = Vel Y < 0
trigger1 = ParentDist Y >= 135
y = 0
persistent = 1

[State 4300, DisplayToClipboard]
type = DisplayToClipboard
triggerall = IsHelper
trigger1 = NumEnemy
text = "Pos X=%d, Pos Y=%d"
params = Pos X, Pos Y
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 5900, 3]
type = ChangeState
triggerall = time >= 1
trigger1 = parent,stateno != 192
value = 4000

[Statedef 4300]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 4300
sprpriority = 6

[State 4300, DisplayToClipboard]
type = DisplayToClipboard
triggerall = IsHelper
trigger1 = NumEnemy
text = "Pos X=%d, Pos Y=%d"
params = Pos X, Pos Y
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 4300, 1]
type = null;posadd
trigger1 = time = 0
pos = 0,50
ignorehitpause = 1

[State 4300, 1]
type = null;posset
trigger1 = time = 0
pos = ceil(var(2)),ceil(var(4))
ignorehitpause = 1

[State 1125, Velocity]
type = VelSet
trigger1 = animelemtime(1) = 0
x = 9;ifelse(parent,var(5)=2,13,ifelse(parent,var(5)=1,12,9))
y = 7;ifelse(parent,var(5)=2,5,ifelse(parent,var(5)=1,8,7))

[State 1125, Velocity]
type = VelSet
triggerall = animelemtime(1) > 0
trigger1 = Pos Y >= -5
x = 0
y = 0

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 0,1

[State 0, Hit]
type = HitDef
triggerall = p2movetype != H ;p2stateno != 7050
trigger1 = Time = 0
attr = A, SP
animtype = Medium
damage   = 70,2
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
triggerall = p2movetype = H ;p2stateno = 7050
trigger1 = Time = 0
attr = A, SP
animtype = Medium
damage   = 85,5
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

; Calling Crow Helper blood effect
[State -3, Explod]
type = Explod
triggerall = NumExplod(1012) = 0
trigger1 = MoveHit = 1
anim = 1012
ID = 1012
pos = 5,-15
postype = p1
bindtime = 1
removetime = -2
sprpriority = 3
supermovetime = 9999
pausemovetime = 9999
ownpal = 1
ignorehitpause = 1

[State 1110,2]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[STate 1100,3]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 4301
ignorehitpause = 1

[State 5900, 3]
type = ChangeState
triggerall = animelemtime(1) > 0
trigger1 = Pos Y >= -5
trigger2 = movecontact
trigger3 = movereversed
value = 4301
ignorehitpause = 1

[State -2, MoveContact]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[Statedef 4301]
type    = A
movetype = I
physics = N
ctrl = 0
anim = 4000
sprpriority = 7

[State 1125, Velocity]
type = VelSet
trigger1 = animelemtime(1) = 0
x = -4.5;ifelse(parent,var(5)=2,-6.5,ifelse(parent,var(5)=1,-6,-4.5))
y = -3;ifelse(parent,var(5)=2,-2,ifelse(parent,var(5)=1,-3.5,-3))

[State 5900, 3]
type = ChangeState
trigger1 = parent,vel X != 0 || parent,vel Y != 0
trigger2 = ParentDist X > 0
value = 4000