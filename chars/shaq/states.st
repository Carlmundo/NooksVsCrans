;Here I have a code generally used by Shaq.  I'm not going to explain here how statedefs work, but I will highlight important snippets where needed.
; Variables
; var(1) - special combo condition
; var(6) - used by Vans's cornerpush system, a number of ticks of which the cornerpush shall not kick in (like during superpauses)
; var(8) - KOF-esque throw limiter
; var(10) - fury mode
; var(12) - used by Vans's cornerpush system, reset time counter
; var(17) - used by Vans's cornerpush system,
; var(20) - for the old winquote system, it determines who Shaq is facing so he can give winquotes written especially for the opponent
; var(21) - movehit=1 "timer". It counts up in every tick Shaq has movehit=1 (just hit the opponent), resets to zero in other circumstances
; var(29) - it counts up to five times when the roundstate is 2 (after the intros, during the fight). Used for a way to stop the looping sound from one of the intros when it gets skipped
; var(31) - denotes 1 if the opponent has a movetype of A (read:is attacking), used for counter hits
; var(48) - if the AI wins a round, he'd usually taunt once, and this variable goes up if the taunt is done after a KO happens to Shaq would have to taunt only once
; var(49) - 10ov.st's state -2 sets this to 1 and all the p1 hitpauses are subtracted by this variable so hitpausetimes can be consistent with both versions

; var(50) - AI-related, it counts up whenever Shaq is guarding, counts down slowly when Shaq is not guarding, and lowered down further when Shaq actually blocks a hit.
; var(51) - AI-related, this is set to 1 by circumstances of which I shall let the AI try to interupt opponent's attack with another attack, like whenever Opponent is doing some kind of throw (when these "hit" usually instantly, this isn't that likely tho'), as well as when Shaq is guarding for too long
; var(52) - AI considerator (more in .cmd file)
; var(55) - AI simplifier. For 1.0 version (10ov.st), it's constantly set to AILevel. For Winmugen, it is set by the circumstances of Winane's AI activation as well as fvar(34)

; var(56) - winane AI variable (Winmugenplus)
; var(57) - winane AI variable (Winmugenplus)
; var(58) - winane AI variable (Winmugenplus)

; fvar(6) - used by Vans's cornerpush system,
; fvar(14) - damage prorator
; fvar(32) - from config.txt, while only really used in 10ov.st, it determines whenever the old winquote system shall be displayed in 1.0
; fvar(33) - from config.txt, this determines whenever his Shaq Attack shall use AAAAAAH as hitsounds
; fvar(34) - from config.txt, this determines the AILevel set for Winmugen versions

; Stand
; taken from common1.cns from the data folder and made an adjustment
[Statedef 0]
type = S
physics = S
sprpriority = 0
velset = 0,0

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 0

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
triggerall = fvar(6) = 0 ;Cornerpush is over. :) (Vans's cornerpush)
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
trigger3 = Time = 0
x = 0

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050 + 100*((Anim = 5120) || (Anim = 5150))


;---------------------------------------------------------------------------
; Jump Start
; taken from common1.cns from the data folder and made some adjustments
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1
facep2 = 1

; Jump attack buffer, if you press an attack button a variable is set to an aproporiate state file of an air attack done by it's aproporiate attack so in most cases (unless you want a e.g. Rising Roundhouse) pressing a punch/kick button while you're about to jump will have Shaq throw a punch as soon as he leaves the ground
[State 40, Initial Set-up]
type = VarSet
trigger1 = Time = 0
var(2) = 0
[State 40, Set Attack Buffer to Jump Punch]
type = VarSet
triggerall = command != "upper_what"
trigger1 = !var(55)
trigger1 = command = "x"
var(2) = 600
[State 40, Set Attack Buffer to Jump Punch]
type = VarSet
triggerall = command != "upper_what"
trigger1 = !var(55)
trigger1 = command = "y"
var(2) = 600
[State 40, Set Attack Buffer to Jump Kick]
type = VarSet
triggerall = command != "upper_what"
trigger1 = !var(55)
trigger1 = command = "a"
var(2) = 630
[State 40, Set Attack Buffer to Jump Kick]
type = VarSet
triggerall = command != "upper_what"
trigger1 = !var(55)
trigger1 = command = "b"
var(2) = 630
[State 40, Set Attack Buffer to Air throw]
type = VarSet
triggerall = command != "upper_what"
trigger1 = !var(55)
trigger1 = command = "z"
var(2) = 830

[State 40, 1] ; reset jump direction
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0
[State 40, 1] ; reset superjump
type = VarSet
trigger1 = Time = 0
sysvar(2) = 0
[State 40, 1] ; reset normal/low jump
type = VarSet
trigger1 = Time = 0
sysvar(3) = 0
[State 40, 1] ; reset followup
type = VarSet
trigger1 = Time = 0
sysvar(4) = 0

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
trigger2 = var(55) && (var(52) = 41 || var(52) = 44) ; if specifically called by an AI directive to jump forward, AI Shaq will do exactly that
sysvar(1) = 1

[State 40, 3]
type = VarSet
trigger1 = command = "holdback"
trigger2 = var(55) && (var(52) = 42 || var(52) = 45)
sysvar(1) = -1
[State 40, 1]
type = VarSet
trigger1 = command = "SupahJump"
trigger1 = command != "ChargedSupahJump"
trigger2 = var(55) && (var(52) = [43,45]) ; if specifically called by an AI directive to perform a superjump, this is taken
sysvar(2) = 1
[State 40, 3] ; if you hold up before leaving the ground, you do a normal jump, otherwise you'd do a KOF-esque low jump
type = VarAdd
triggerall = time
trigger1 = command = "holdup"
trigger2 = var(52) = [41,43]
sysvar(3) = 1
[State 40, 3] ; in at least a number of KOF games you can do a short jump by taping up then holding DOWN before leaving the ground
type = VarAdd
triggerall = time
triggerall = sysvar(3) > 0
trigger1 = command = "holddown"
trigger2 = var(52) = [47,49]
sysvar(3) = -1
[State 40, 2] ; a variable that checks if you jump from a basic attack that is jump cancelable
type = VarSet
trigger1 = (prevstateno = [210,419])
sysvar(4) = 1

[State 0, AfterImage] ; superjumps leave afterimages
type = AfterImage
trigger1 = sysvar(2)
trigger1 = animtime = 0
time = 42
length = 15
palcolor = 40
paladd = 10,10,10
palmul = .74,.74,.74
timegap = 1
framegap = 4
trans = add

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x))) * ifelse(sysvar(2),2.2,1) ; Superjumps increase horizontal speed
y = const(velocity.jump.y)  * ifelse(sysvar(3)<3,0.71,1) * ifelse(sysvar(2),1.01,1) ; if you don't hold up long enough the jump heigh is lowered a bit

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 5] ; LAUNCHER, this will make Shaq - if not holding back - home into his aerial opponent in a jump if he does one from a basic attack
type = VelSet
triggerall = command != "holdback"
triggerall = prevstateno >= 200
trigger1 = numtarget
trigger1 = AnimTime = 0
;trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) != -1
trigger1 = sysvar(4) = 1
trigger1 = p2statetype = A
x = ifelse(abs(p2bodydist x / 10)>=3.5,ifelse(p2dist x>=0,3.5,-3.5),(p2bodydist x / 10))

[State 40, 1] ; If a buffer variable is set, Shaq goes into an aproporiate state (basic jump attacks) instead of an default jump state
type = Changestate
triggerall = command != "upper_what"
triggerall = animtime = 0
trigger1 = var(2) != 0
value = var(2)
ctrl = 0

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1


;---------------------------------------------------------------------------
; Jump Land
; taken from common1.cns from the data folder and made some adjustments
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = ifelse(anim=42,48,47) ; Shaq has two land animations, one from a forward jump and otherwise
facep2 = (anim!=48&&anim!=42)

[State 52, 1]
type = VelMul
trigger1 = Time = 0
x = 0.9
[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 3]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 52, 4]
type = VelSet
trigger1 = abs(vel x) < 4
x = 0

[State 52, Trip Guard]
type= changestate
trigger1= inguarddist
trigger1= ctrl && command="holdback"
value= 120

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; RUN_FWD
[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1
ctrl = 0

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State -3, Running sound]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 14
trigger3 = animelem = 23
value = 3, 3

[State 100, 4]
type = ChangeState
trigger1 = command != "holdfwd"
value = 101

;---------------------------------------------------------------------------
; Stop Running
[Statedef 101]
type    = S
physics = S
anim = 101
sprpriority = 1
velset = 0,0
ctrl = 1

[State 101, Running sound]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 5
value = 3, 3

[State 0, PosAdd] ; lots of Shaq's animations move with PosAdds. You'll be seeing these a lot within Shaq's code
type = PosAdd
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
x = 5*const(size.xscale) ; it's even scaled with his size!
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 6
x = 4*const(size.xscale)
ignorehitpause = 1

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
trigger1 = animtime = 0
value = 0

;---------------------------------------------------------------------------
; Dodge
[Statedef 104]
type    = S
physics = N
ctrl = 0
anim = 104
sprpriority = 1
ctrl = 0

[State CANCEL] ; You can do this move from blocking, and of course that would cost power
type = PowerAdd
triggerall = (prevstateno = [150,156])
trigger1 = time = 0
value = -500
ignorehitpause = 1
[State CANCEL]
type = PalFX
triggerall = (prevstateno = [150,156])
trigger1 = time = 0
trigger2 = time = 3
time = 2
add = 0,100,200
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 200

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = prevstateno != 100
trigger2 = vel x = [0.1,0.1]
physics = S

[State 0, VelMul]
type = VelMul
trigger1 = prevstateno = 100
trigger1 = vel x != [0.1,0.1]
x = 0.8

[State 0, NotHitBy] ; Dodges are supposed to be vurnerable to throws
type = NotHitBy
trigger1 = animelemtime(3) > 3
trigger1 = animelemtime(15) <= 0
trigger2 = animelemtime(3) <= 3
trigger2 = (prevstateno = [150,156])
value = ,NA,NP,SA,SP,HA,HP ; "SCA,AA,AP" is not recommended because Mugen somehow inteprets it as making a character unhitable by anything, even throws for some reason
time = 1
ignorehitpause = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = 1*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 4
trigger2 = animelem = 5
trigger3 = animelem = 6
trigger4 = animelem = 7
trigger5 = animelem = 15
trigger6 = animelem = 16
trigger7 = animelem = 17
trigger8 = animelem = 18
x = 4*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 8
x = 12*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 9
trigger2 = animelem = 10
trigger3 = animelem = 11
trigger4 = animelem = 12
trigger5 = animelem = 13
x = 6*const(size.xscale)

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 19
trigger2 = animelem = 20
x = 7*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 14
x = 16*const(size.xscale)

[State 440, 5]
type = ChangeState
trigger1 = command = "holddown"
trigger1 = animelem = 15
value = 11
ctrl = 1

[State 105, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; RUN_BACK
[Statedef 105]
type    = S
physics = S
ctrl = 0
anim = 105
sprpriority = 1
ctrl = 0

[State CANCEL]
type = PowerAdd
triggerall = (prevstateno = [150,156])
trigger1 = time = 0
value = -500
ignorehitpause = 1
[State CANCEL]
type = PalFX
triggerall = (prevstateno = [150,156])
trigger1 = time = 0
trigger2 = time = 3
time = 2
add = 0,100,200
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 200

[State -3, Running sound]
type = PlaySnd
trigger1 = animelem = 10
trigger2 = animelem = 15
value = 40, 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemno(0)>=6
trigger1 = animelemno(0)<=15
trigger2 = animelemno(0) <= 6
trigger2 = (prevstateno = [120,156])
value = ,NA,NP,SA,SP,HA,HP
time = 1
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 5
x = -5*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 4
trigger2 = animelem = 6
trigger3 = animelem = 16
x = -3*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 7
x = -12*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 8
x = -9*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 9
x = -15*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 10
x = -7*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 11
trigger2 = animelem = 12
trigger3 = animelem = 13
trigger4 = animelem = 14
x = -8*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 17
x = -1*const(size.xscale)
ignorehitpause = 1

[State 105, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; RUN_BACK2 (land)
[Statedef 106]
type    = S
physics = S
ctrl = 0
anim = 47

[State 106, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 106, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 106, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 106, 4]
type = ChangeState
trigger1 = Time = 7
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Teleport
[Statedef 110]
type    = S
physics = S
anim = 110
sprpriority = 0
ctrl = 0
velset = 0,0
poweradd = -500

[State CANCEL]
type = PowerAdd
triggerall = (prevstateno = [120,156])
trigger1 = time = 0
value = -500
ignorehitpause = 1
[State CANCEL]
type = PalFX
triggerall = (prevstateno = [120,156])
trigger1 = time = 0
trigger2 = time = 3
time = 2
add = 0,100,200
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 200

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(6) >= 0
trigger1 = animelemtime(10) < 0
value = ,NA,NP,SA,SP,HA,HP
time = 1
ignorehitpause = 1

[State 0, PosAdd] ; allow to control the player where he teleports
type = PosAdd
trigger1 = animelem = 6
x = p2bodydist x - ifelse(command="holdfwd",-60,10)

[State 0, Turn]
type = Turn
trigger1 = command="holdfwd"
trigger1 = animelem = 6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S3,1

[State 100, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HIT_GETUP
; taken from common1.cns from the data folder and made some adjustments
[Statedef 5120]
type    = L
movetype= I
physics = N

[State 0, PosAdd]
type = PosAdd
triggerall = anim = 5120
trigger1 = animelem = 3
trigger2 = animelem = 4
trigger3 = animelem = 9
trigger4 = animelem = 10
trigger5 = animelem = 11
trigger6 = animelem = 12
x = -2*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
triggerall = anim = 5120
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
x = -10*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
triggerall = anim = 5120
trigger1 = animelem = 8
x = -4*const(size.xscale)

[State 0, PosAdd]
type = PosAdd
triggerall = anim = 5121
trigger1 = time = 0
trigger2 = animelem = 9
trigger3 = animelem = 10
x = 7*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
triggerall = anim = 5121
trigger1 = animelem = 2
x = 2*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
triggerall = anim = 5121
trigger1 = animelem = 3
x = 8*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
triggerall = anim = 5121
trigger1 = animelem = 4
x = 16*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
triggerall = anim = 5121
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
trigger4 = animelem = 8
x = 4*const(size.xscale)

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = ifelse(command="holdfwd",5121,5120) ; Shaq usually gets up backwards, but if forward is held, he'll get up forward

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = SCA, NT,ST,HT
time = 12

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; Cheese kill
[Statedef 5950]
type    = L
movetype = H
physics = N
vel = 0,0
anim = 170

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = 3,0

[State 130, 1]
type = StateTypeSet
trigger1 = 1
statetype = S
Physics = S

[State 132, 7]
type = ChangeState
trigger1 = time >= 100
value = 5150



;---------------------------------------------------------------------------
; Lose by Time Over
; CNS difficulty: basic
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
; CNS difficulty: basic
[Statedef 180]
type = S

[State 0, Helper]
type = Helper
trigger1 = !ishelper
trigger1 = matchover
trigger1 = numhelper(189) = 0
trigger1 = roundstate >= 2 ; to prevent the winquote screen to pop up in survival results screen
name = "Winquote"
ID = 189
stateno = 1899
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
[State 180, 1] ; Winposes for a match
type = ChangeState
trigger1 = roundstate >= 2
trigger1 = Time = 0
value = 181+random%5
[State 180, 1] ; Both of the "congratulations you've beat the arcade mode" and Survival Results have roundstates of below 2 (I think it's 0, even) so for these screens only these winposes would be displayed
type = ChangeState
trigger1 = roundstate < 2
trigger1 = Time = 0
value = ifelse(random<500,181,184)

;---------------------------------------------------------------------------
; Win pose 1 - dance
; CNS difficulty: basic
[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = -1,0

[State 0, Possibly change the velocity every second]
type = VelSet
trigger1 = (time%60)=0
x = ifelse(random<500,-1,1)

[State 0, Someone has to mute the stage's music when this winpose provides one of it's own]
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 0, youknowigotskillz.mp3]
type = PlaySnd
trigger1 = time = 0
value = S3,10+random%3
channel = 0
abspan = 0
loop = 1
;lowpriority = -1
ignorehitpause = 1

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 2 - recycle an intropose from a winpose and say something witty
; CNS difficulty: basic
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 0, your mom's right, you're indeed not man enough]
type = PlaySnd
trigger1 = time = 0
value = S180,random%3
channel = 0
volume = 255
;lowpriority = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,360]
flag = roundnotover

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 3 - lift the hand
; CNS difficulty: basic
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 3
value = 0,3

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,360]
flag = roundnotover

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S180,random%3
channel = 0
volume = 255
;lowpriority = -1
ignorehitpause = 1

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 4 - I AM KAZAAM
; CNS difficulty: basic
[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0
sprpriority = -2

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,300]
flag = roundnotover

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S4,9
volume = 255
channel = 0
;lowpriority = -1
ignorehitpause = 1

[State 0, Drop a single pattie] ; This actually happened in a movie
type = Helper
trigger1 = time = 240
helpertype = normal ;player
name = "junk food"
ID = 2100
stateno = 2101
pos = 0,-310
postype = p1
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 5 - backdash into oops
; CNS difficulty: basic
[Statedef 185]
type = S
ctrl = 0
anim = 185
velset = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,150]
flag = roundnotover

[State -3, Running sound]
type = PlaySnd
trigger1 = animelem = 10
trigger2 = animelem = 15
value = 40, 0

[State -3, Theme song]
type = PlaySnd
trigger1 = time = 0
channel = 0
loop = 1
value = 3, ifelse(random<500,22+random%2,11)
abspan = 0

[State -3, quake2/base0.pak/sound/player/male/death2.wav]
type = PlaySnd
trigger1 = animelem = 16
channel = 0
value = 11, 0

[State -3, mortalkobmat3splat.wav]
type = PlaySnd
trigger1 = animelem = 22
channel = 0
value = 3, 0

[State 0, Yeah it's copypasted from the old version's Backdash]
type = NotHitBy
trigger1 = animelemno(0)<=15
value = ,NA,NP,SA,SP,HA,HP
time = 1
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 5
x = -5*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 4
trigger2 = animelem = 6
trigger3 = animelem = 16
x = -3*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 7
x = -12*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 8
x = -9*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 9
x = -15*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 10
x = -7*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 11
trigger2 = animelem = 12
trigger3 = animelem = 13
trigger4 = animelem = 14
x = -8*const(size.xscale)

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Winquote
[Statedef 1899]
type = S
ctrl = 0
anim = 9741
velset = 0,0

[State Shaq's closeup]
type = Explod
triggerall = time = 350
trigger1 = parent,stateno != 185 ; a winquote is not shown on the winpose that has Shaq trip
anim = 1899
pos = 160,200
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
sprpriority = 996
ontop = 1
ownpal = 1
[State Quote BG]
type = Explod
triggerall = time = 350
trigger1 = parent,stateno != 185
anim = 1897
pos = 0,194
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
sprpriority = 997
ontop = 1
ownpal = 1
[State 0, Frame]
type = Explod
triggerall = time = 350
trigger1 = parent,stateno != 185
anim = 1898
pos = 0,194
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
sprpriority = 998
ontop = 1
ownpal = 1
[State general quote] ; A randomly selected winquote is displayed for general audience
type = Explod
triggerall = time = 350
triggerall = parent,var(20) = 0
trigger1 = parent,stateno != 185
anim = 1800+random%22
pos = 0,194
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
sprpriority = 999
ontop = 1
ownpal = 1
[State felicia quote]
type = Explod
triggerall = time = 350
triggerall = parent,var(20) = 1
trigger1 = parent,stateno != 185
anim = 1850
pos = 0,194
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
sprpriority = 999
ontop = 1
ownpal = 1
[State glauber quote]
type = Explod
triggerall = time = 350
triggerall = parent,var(20) = 2
trigger1 = parent,stateno != 185
anim = 1851
pos = 0,194
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
sprpriority = 999
ontop = 1
ownpal = 1
[State KFM quote]
type = Explod
triggerall = time = 350
triggerall = parent,var(20) = 3
trigger1 = parent,stateno != 185
anim = 1852
pos = 0,194
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
sprpriority = 999
ontop = 1
ownpal = 1
[State 0, THWONG]
type = EnvShake
trigger1 = time = 350
trigger1 = parent,stateno != 185
time = 40
freq = 255
ampl = -156
[State 0, A poorly ripped hitsound from Galaxy Fight is hilarious]
type = PlaySnd
trigger1 = time = 350
trigger1 = parent,stateno != 185
value = S3,13
volume = 255
[State 0, MUSIC TIME]
type = PlaySnd
trigger1 = time = 390
trigger1 = parent,stateno != 185
trigger1 = parent,stateno != 181
value = S3,22+random%2
volume = 255
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,750]
trigger1 = parent,stateno != 185
flag = roundnotover
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 350
trigger1 = parent,stateno != 185
flag = nomusic
flag2 = nobardisplay


;---------------------------------------------------------------------------
; Introduction
; CNS difficulty: basic
[Statedef 190]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 190, 4]
type = ChangeState
trigger1 = 1
value = ifelse(random<500,191,192)

;---------------------------------------------------------------------------
; Shaq Fu Introduction
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 190, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 190, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, YOU NEED SOME SHAQ FU]
type = PlaySnd
trigger1 = animelem = 9
value = S4,ifelse(random<200,2,ifelse(random<500,0,10))
channel = 0
volume = 255
;lowpriority = -1
ignorehitpause = 1

[State 190, 4] ;Change to stand state
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Boombox Introduction
; CNS difficulty: basic
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 190, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 192

[State 190, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State FLASH]
type = EnvColor
trigger1 = animelem = 2
value = 255,255,255
time = 10
[State 0, SHAQIDO]
type = PlaySnd
trigger1 = time = 0
value = S3,14
channel = 1 ; fun fact, a sound on this channel will get interupted by a variable that goes up if the intros either end or get skipped
loop = 1
volume = 255
;lowpriority = -1
ignorehitpause = 1
[State 0, half-life sound]
type = PlaySnd
trigger1 = animelem = 2
value = S3,15
channel = 1
volume = 255
;lowpriority = -1
ignorehitpause = 1

[State 190, 4] ;Randomly change to either a stand state or another intropose
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(random<500,191,0)

;---------------------------------------------------------------------------
; Taunt
; CNS difficulty: easy
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
trigger1 = roundstate >= 3
var(48) = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S4,ifelse(random<500,0,5+random%2)
channel = 0
volume = 255
;lowpriority = -1
ignorehitpause = 1

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; POWER UP!
[Statedef 199]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 206 ; Yes, animation recycling from an attack
poweradd = -1000 ; This is supposed to cost meter

[State 0, Laugh]
type = PlaySnd
trigger1 = time = 0
value = S4,7
channel = 0
volume = 255
;lowpriority = -1
ignorehitpause = 1

[State 0, PalFX Flash]
type = PalFX
trigger1 = time = 0
time = 4
add = 200,200,200
color = 200

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = F20,0
freqmul = 2.0

[State 0, Set Up A Variable that controls the Power Up]
type = VarSet
trigger1 = animelem = 2
var(10) = 1

[State 200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Punch
; CNS difficulty: easy
[Statedef 200]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  = 1				;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 200				;Change animation (Def: no change)
poweradd = 20			;Power to add (Def: 0)
sprpriority = 2			;Set layering priority to 2 (in front)
facep2 = 1

; a piece of code you'd be seeing a lot of, this character uses an Arcana Heart-esque proration system, with moves lessening down an amout of damage the subsequent moves would do in a combo.
[State ProRation]
type = VarSet
trigger1 = var(21) = 1 ; a proration kicks in as soon as Shaq just succesfully hits with this attack, in a first frame of his hitpause
fvar(13) = fvar(13) * 0.9 ; in this case, a damage is prorated by 90% after hit
ignorehitpause = 1 ; important

[State 0, PosAdd] ; move a bit forward if canceled from a standing short
type = PosAdd
trigger1 = prevstateno = 230
x = 8*const(size.xscale)
ignorehitpause = 1
persistent = 0
[State 810, Holding fwd?]
type = VarSet
trigger1 = Time = 0
var(2) = command = "holdfwd"
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
trigger2 = animelem = 3
x = 2*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
triggerall = !var(2)
trigger1 = animelem = 4
trigger2 = animelem = 5
x = -2*const(size.xscale)
ignorehitpause = 1

[State 0, Whoosh]
type = PlaySnd
trigger1 = animelem = 2
value = S0,0
ignorehitpause = 1
[State 200, 1]
type = HitDef
trigger1 = animelem = 3 ; considering the counter hit system, a trigger that would kick in as soon as you want to hit is much more recommended than "time = 0"
attr = S, NA
damage = 17, 0
animtype = Light
guardflag = MA
hitflag = MAF
pausetime = 8-var(49), 8 ; as WinMugen for strange reason actually intrepets p1 hitpause values -1 less than you type it in and 1.0 fixes this, the p1 hitpause would be counted down if used with a 1.0 version so hitpauses can be consistent within mugen versions
sparkno = 0
sparkxy = ceil(-10*const(size.xscale)),ceil(-57*const(size.yscale)) ; hitspark positions are scaled acordingly with Shaq's scale
hitsound = S5, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = ceil(14*ifelse(var(31),1.2,1))
ground.hittime = ceil(14*ifelse(var(31),1.2,1)) ; upon counter hits the hitstuntimes would increase
ground.velocity = -3.5*const(size.xscale) ; scaled acordingly with Shaq's scale
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4*const(size.xscale),-7.7
air.hittime = 14
air.fall = 1 ; I felt attacks always knocking down aerial oppotents is important as the juggle points aren't actually decreased if you hit opponent's that aren't "falling" down
fall.recovertime = 40 ; Kinda like in Melty-Blood
yaccel = .88 ; heavy gravity is always nice
ground.cornerpush.veloff = 0 ; as Vans's cornerpush system is used, we will not use Mugen's own faulty cornerpush system

[State 0, StateTypeSet] ; You should always be nice and set movetype to I after your move can't hit anymore, it helps AIs make better decisions.
type = StateTypeSet
trigger1 = animelem = 4
movetype = I

[State 200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Elbow To Punch
; CNS difficulty: easy
[Statedef 205]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 205
facep2 = 1

[State VEL]
type = VelSet
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(5) < 0
trigger2 = animelemtime(7) >= 0
trigger2 = animelemtime(9) < 0
x = 1*const(size.xscale)
ignorehitpause = 1
[State UNVEL]
type = VelSet
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(9) = 0
x = 0
ignorehitpause = 1

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.9
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = 6*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 4
trigger2 = animelem = 8
x = 1*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 7
x = 4*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 9
x = 2*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 5
x = 11*const(size.xscale)
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 9
value = S0,3
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = animelem = 5
attr = S, NA
damage = 25, 0
animtype = light
guardflag = MA
hitflag = MAF
pausetime = 4-var(49), 4
sparkno = 0
sparkxy = ceil(-10*const(size.xscale)),ceil(-42*const(size.yscale))
hitsound = S5, 0
guardsound = S6, 0
ground.type = low
ground.slidetime = ceil(18*ifelse(var(31),1.15,1))
ground.hittime = ceil(18*ifelse(var(31),1.15,1))
ground.velocity = -3*const(size.xscale)
airguard.velocity = -1.9,-.8
air.type = low
air.velocity = -2*const(size.xscale),-6.6
air.hittime = 18
air.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0


[State 200, 1]
type = HitDef
trigger1 = animelem = 9
attr = S, NA
damage = 30, 0
animtype = medium
guardflag = MA
hitflag = MAF
pausetime = 10-var(49), 10
sparkno = 1
sparkxy = ceil(-10*const(size.xscale)),ceil(-61*const(size.yscale))
hitsound = S5, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = ceil(19*ifelse(var(31),1.15,1))
ground.hittime  = ceil(19*ifelse(var(31),1.15,1))
guard.ctrltime = 15
ground.velocity = -4.1*const(size.xscale)
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1*const(size.xscale),-8.8
air.hittime = 19
air.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 10
movetype = I

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Upward Punch
[Statedef 206]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
ctrl = 0
anim = 206
poweradd = 40
sprpriority = 2
facep2 = 1

[State 0, ReversalDef] ; yes, this move can parry. Time window is very strict however
type = ReversalDef
trigger1 = animelemtime(2) < 0
reversal.attr = SCA,NA,SA,HA,NP,SP,HP
sparkno = -1
hitsound = -1
p1stateno = 207
;p2stateno =
;ignorehitpause =
;persistent =

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.9
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = prevstateno = 230
x = 8*const(size.xscale)
ignorehitpause = 1
persistent = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S0,0
ignorehitpause = 1
[State 200, 1]
type = HitDef
trigger1 = animelem = 2
attr = S, NA
damage = 24, 0
animtype = Light
guardflag = MA
hitflag = MAF
pausetime = 8-var(49), 8
sparkno = 0
sparkxy = ceil(-10*const(size.xscale)),ceil(-61*const(size.yscale))
hitsound = S5, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = ceil(16*ifelse(var(31),1.15,1))
ground.hittime  = ceil(16*ifelse(var(31),1.15,1))
ground.velocity = -4*const(size.xscale)
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.2*const(size.xscale),-8.8
air.hittime = 22
air.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
movetype = I

[State 200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; The_None honestly thought giving Shaq a parry move was a good idea
[Statedef 207]
type = S
movetype= I
physics = N
anim = 207
sprpriority = 3
velset = 0,0

[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 10
add = 100,100,180
mul = 256,256,256
sinadd = -80,-80,-80,10
invertall = 0
color = 0
[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 17
anim = -1
pos = 0,0
movetime = 17
darken = 0
p2defmul = 1
poweradd = 222
unhittable = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 900
ID = 900
pos = ceil(31*const(size.xscale)),ceil(-61*const(size.yscale))
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
scale = .5,.5
sprpriority = 65535
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time = 11
value = 1

[State 0, Shake It Baby]
type = Offset
trigger1 = time < 10
x = random%3 * ifelse(random<500,-1,1)
y = random%3 * ifelse(random<500,-1,1)
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3,16
volume = 255
volumescale = 255
abspan = 0

[State 910, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Standing Strong Punch
; CNS difficulty: easy
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 210
facep2 = 1

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.85
ignorehitpause = 1

[State 810, Holding back?] ; Shaq Fu has two variants of the strong punch with the "backwards" one not moving forward
type = VarSet
trigger1 = Time = 0
var(2) = (var(55)<5 && command = "holdback")
[State 0, PosAdd]
type = PosAdd
triggerall = !var(2)
trigger1 = animelem = 3
x = 6*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
triggerall = !var(2)
trigger1 = animelem = 4
x = 2*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
triggerall = !var(2)
trigger1 = animelem = 5
x = 1*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
triggerall = !var(2)
trigger1 = animelem = 7
x = -1*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
triggerall = !var(2)
trigger1 = animelem = 8
x = -2*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
triggerall = !var(2)
trigger1 = animelem = 9
x = -5*const(size.xscale)
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S0,2
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = animelem = 4
attr = S, NA
damage = 60, 0
animtype = medium
guardflag = MA
hitflag = MAF
pausetime = 12-var(49), 12
sparkno = 1
sparkxy = ceil(-10*const(size.xscale)),ceil(-61*const(size.yscale))
hitsound = S5, 2
guardsound = S6, 0
ground.type = High
ground.slidetime = ceil(24*ifelse(var(31),1.42,1))
ground.hittime  = ceil(24*ifelse(var(31),1.42,1))
guard.ctrltime = 20
ground.velocity = -4.5*const(size.xscale)
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4*const(size.xscale),-8.8
air.hittime = 18+(10*var(31))
air.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 5
movetype = I

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick
; CNS difficulty: easy
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 22
ctrl = 0
velset = 0,0
anim = 230
facep2 = 1

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.9
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S0,1
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = animelem = 5
attr = S, NA
damage = 35, 0
animtype = light
guardflag = MA
hitflag = MAF
pausetime = 10-var(49), 10
sparkno = 0
sparkxy = ceil(-10*const(size.xscale)),ceil(-45*const(size.yscale))
hitsound = S5, 1
guardsound = S6, 0
ground.type = low
ground.slidetime = ceil(20*ifelse(var(31),1.15,1))
ground.hittime  = ceil(20*ifelse(var(31),1.15,1))
guard.ctrltime = 15
ground.velocity = -3.8*const(size.xscale)
airguard.velocity = -1.9,-.8
air.type = low
air.velocity = -1.3*const(size.xscale),-8.8
air.hittime = 18
air.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 6
movetype = I

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Forward Kick
; CNS difficulty: easy
[Statedef 235]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 45
ctrl = 0
anim = 235
facep2 = 1

[State 0, VelSet] ; this move can preserve momentum from running
type = VelSet
trigger1 = prevstateno != 100
trigger1 = time = 0
x = 0

[State 0, VelSet] ; reseting the y velocity is still a must however
type = VelSet
trigger1 = time = 0
y = 0

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.8
ignorehitpause = 1

[State -3, Running sound]
type = PlaySnd
trigger1 = animelem = 8
value = 3, 3

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
trigger2 = animelem = 3
x = 6*const(size.xscale)
ignorehitpause 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 4
trigger2 = animelem = 5
x = 3*const(size.xscale)
ignorehitpause 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 6
trigger2 = animelem = 8
x = 8*const(size.xscale)
ignorehitpause 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 7
x = 9*const(size.xscale)
ignorehitpause 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 14
x = 1*const(size.xscale)
ignorehitpause 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = S0,3
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = animelem = 8
attr = S, NA
damage = 65, 0
animtype = light
guardflag = MA
hitflag = MAF
pausetime = 10-var(49), 10
sparkno = 1
sparkxy = ceil(-10*const(size.xscale)),ceil(-47*const(size.yscale))
hitsound = S5, 3
guardsound = S6, 0
ground.type = low
ground.slidetime = ceil(23*ifelse(var(31),1.15,1))
ground.hittime  = ceil(23*ifelse(var(31),1.15,1))
guard.ctrltime = 18
ground.velocity = -4.2*const(size.xscale)
airguard.velocity = -1.9,-.8
air.type = low
air.velocity = -1.3*const(size.xscale),-7.7
air.hittime = 21
air.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 9
movetype = I

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Hard Kick
; CNS difficulty: easy
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 240
facep2 = 1

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.8
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S0,3
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = animelem = 5
attr = S, NA
damage = 68, 0
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 12-var(49), 12
sparkno = 1
sparkxy = ceil(-10*const(size.xscale)),ceil(-62*const(size.yscale))
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = ceil(28*ifelse(var(31),1.15,1))
ground.hittime  = ceil(28*ifelse(var(31),1.15,1))
guard.ctrltime  = 22
ground.velocity = -6*const(size.xscale)
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.8*const(size.xscale),-8.8
air.hittime = 23
air.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 6
movetype = I

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Rising Houndhouse
[Statedef 245]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 245
facep2 = 1

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.85
ignorehitpause = 1

[State -3, Landing Sound]
type = PlaySnd
trigger1 = animelem = 11
trigger2 = animelem = 16
value = 40, 0

[State 0, StateTypeSet] ; it is important to set the statetype to air before you put in a sctrl that makes Shaq leave the ground, as otherwise "Shaq gets hit just as he's left the ground and he's now floating slightly above the ground" would happen
type = StateTypeSet
trigger1 = animelem = 4
statetype = A
movetype = A
physics = N
ignorehitpause = 1
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 1
y = -4.6
ignorehitpause = 1
[State 0, Gravity]
type = VelAdd
trigger1 = animelemtime(4) >= 0
trigger1 = animelemtime(11) < 0
y = .44
[State 0, StateTypeSet] ; Set the postype back
type = StateTypeSet
trigger1 = animelemtime(11) >= 0
statetype = S
movetype = I
physics = S
ignorehitpause = 1
[State 0, PosSet] ; and reset the position just in case
type = PosSet
trigger1 = statetype = S
y = 0
ignorehitpause = 1
[State 0, PosSet] ; that too
type = VelSet
trigger1 = statetype = S
y = 0
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 13
x = -1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 14
trigger2 = animelem = 15
trigger3 = animelem = 16
trigger4 = animelem = 17
x = -2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S0,3
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = animelem = 4
attr = S, NA
damage = 80, 0
animtype = diagup
guardflag = MA
hitflag = MAF
pausetime = 12-var(49), 12
sparkno = 2
sparkxy = ceil(-10*const(size.xscale)),ceil(-62*const(size.yscale))
hitsound = S5, 4
guardsound = S6, 0
ground.type = High
ground.slidetime = ceil(28*ifelse(var(31),1.15,1))
ground.hittime  = ceil(28*ifelse(var(31),1.15,1))
guard.ctrltime = 20
ground.velocity = -2.9,-17.13
air.type = High
air.velocity = -2.9,-17.13
air.hittime = 28
guard.velocity = -6*const(size.xscale)
fall = 1
air.fall = 1
fall.recovertime = 55
yaccel = .88
ground.cornerpush.veloff = 0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 7
movetype = I

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Punch
; CNS difficulty: easy
; Description: Simple crouching attack. The HitDef's guardflag parameter
;     is set to "L", meaning that the move can only be guarded low
;     (crouching), and not by standing or jumping opponents.
;     Like for all light attacks, it's a good idea to keep the slidetime
;     and hittime parameters at a smaller number, so the opponent isn't
;     stunned for too long. For all crouching attacks you have to
;     remember to set the attr parameter to indicate that it is crouching
;     attack. In this case, "C, NA" stands for "crouching, normal attack".
;     The HitDef's priority is set at 3, instead of the default of 4,
;     so this attack has a lower priority than most others, meaning the
;     player will get hit instead of trading hits with the opponent if
;     their attack collision boxes (Clsn1) intersect each other's Clsn2
;     boxes at the same time.
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 15
ctrl = 0
anim = ifelse(prevstateno=430,401,400) ; this move has an uniquie anim if canceled from his kick
facep2 = 1

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.9
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S0,0
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = anim = 401
trigger1 = animelem = 2
x = 5*const(size.xscale)
ignorehitpause = 1
[State 200, 1]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
damage = 15, 0
animtype = Light
guardflag = L
hitflag = MAF
pausetime = 8-var(49), 8
sparkno = 0
sparkxy = ceil(-10*const(size.xscale)),ceil(-25*const(size.yscale))
hitsound = S5, 0
guardsound = S6, 0
ground.type = low
ground.slidetime = ceil(11*ifelse(var(31),1.15,1))
ground.hittime  = ceil(11*ifelse(var(31),1.15,1))
guard.ctrltime = 10
ground.velocity = -3*const(size.xscale)
airguard.velocity = -1.9,-.8
air.type = low
air.velocity = -1.4*const(size.xscale),-7.7
air.hittime = 14
air.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 3
movetype = I

[State 400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 410
facep2 = 1

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.9
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S0,2
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S0,5
ignorehitpause = 1
[State 200, 1]
type = HitDef
trigger1 = animelem = 3
attr = C, NA
damage = 42, 0
animtype = medium
guardflag = L
hitflag = MAF
pausetime = 10-var(49), 10
sparkno = 1
sparkxy = ceil(-10*const(size.xscale)),ceil(-28*const(size.yscale))
hitsound = S5, 2
guardsound = S6, 0
ground.type = low
ground.slidetime = ceil(16*ifelse(var(31),1.15,1))
ground.hittime = ceil(16*ifelse(var(31),1.15,1))
guard.ctrltime = 15
ground.velocity = -3.4*const(size.xscale)
airguard.velocity = -1.9,-.8
air.type = low
air.velocity = -1.4*const(size.xscale),-7.7
air.hittime = 14
air.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0
palfx.time = 16
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.color = 0

[State 410, SMOKEY ATTACK]
type = HitDef
trigger1 = animelem = 5
trigger1 = !movecontact
attr = C, NA
damage = 11, 0
animtype = light
guardflag = M
hitflag = MAF
pausetime = 0, 0
sparkno = -1
guard.sparkno = -1
sparkxy = 0, 0
hitsound = -1
guardsound = -1
ground.type = low
ground.slidetime = ceil(11*ifelse(var(31),1.15,1))
ground.hittime = ceil(11*ifelse(var(31),1.15,1))
ground.velocity = -2*const(size.xscale)
air.type = low
air.velocity = -1*const(size.xscale),-7.7
air.hittime = 14
air.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0
palfx.time = 6
palfx.add = -100,-100,-100
palfx.mul = 250,224,120
palfx.sinadd = -10,-10,-10,10
palfx.invertall = 1
palfx.color = 0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 7
movetype = I

[State 410, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Punch-you-to-the-balls
; Excuse my immaturity
[Statedef 415]
type    = S
movetype= A
physics = S
juggle  = 7
poweradd= 50
ctrl = 0
anim = 415
facep2 = 1

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.85
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 2
statetype = C
movetype = A
physics = C
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 5
statetype = S
movetype = I
physics = S
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 6
trigger2 = animelem = 9
trigger3 = animelem = 10
x = -3*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 7
x = -5*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 8
x = -6*const(size.xscale)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S0,2
ignorehitpause = 1
[State 200, 1]
type = HitDef
trigger1 = animelem = 3
attr = C, NA
damage = 43, 0
animtype = medium
guardflag = L
hitflag = MAFD
pausetime = 10-var(49), 10
sparkno = 1
sparkxy = ceil(-10*const(size.xscale)),ceil(-6*const(size.yscale))
hitsound = S5, 2
guardsound = S6, 0
ground.type = low
ground.slidetime = ceil(32*ifelse(var(31),1.15,1))
ground.hittime = ceil(32*ifelse(var(31),1.15,1))
guard.ctrltime = 20
ground.velocity = -3.4*const(size.xscale)
airguard.velocity = -1.9,-.8
air.type = low
air.velocity = -1.4*const(size.xscale),-7.7
air.hittime = 20
down.time = 19
down.vel = 0,0
down.bounce = 0
air.fall = 1
down.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
movetype = I

[State 410, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
; CNS difficulty: easy
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 22
ctrl = 0
anim = 430
facep2 = 1

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.9
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,1
ignorehitpause = 1
[State 200, 1]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
damage = 28, 0
animtype = Light
guardflag = L
hitflag = MAF
pausetime = 10-var(49), 10
sparkno = 0
sparkxy = ceil(-10*const(size.xscale)),ceil(-27*const(size.yscale))
hitsound = S5, 1
guardsound = S6, 0
ground.type = low
ground.slidetime = ceil(16*ifelse(var(31),1.15,1))
ground.hittime = ceil(16*ifelse(var(31),1.15,1))
guard.ctrltime = 15
ground.velocity = -3.8*const(size.xscale)
airguard.velocity = -1.9,-.8
air.type = low
air.velocity = -1.5*const(size.xscale),-7.7
air.hittime = 16
air.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelemtime(2) = 4
movetype = I

[State 430, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Kick
; CNS difficulty: easy
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 22
ctrl = 0
anim = 440
facep2 = 1

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.8
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animtime = 0
x = 4*const(size.xscale)
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S0,3
ignorehitpause = 1
[State 200, 1]
type = HitDef
trigger1 = animelem = 6
attr = C, NA
damage = 55, 0
animtype = hard
guardflag = L
hitflag = MAFD
pausetime = 12-var(49), 12
sparkno = 1
sparkxy = ceil(-10*const(size.xscale)),ceil(-16*const(size.yscale))
hitsound = S5, 3
guardsound = S6, 0
ground.type = trip
ground.slidetime = ceil(19*ifelse(var(31),1.15,1))
ground.hittime = ceil(19*ifelse(var(31),1.15,1))
ground.velocity = -3.3,-8.8
air.type = trip
air.velocity = -3.3,-8.8
air.hittime = 19
guard.velocity = -6*const(size.xscale)
fall = 1
air.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 7
movetype = I

[State 440, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching high kick
[Statedef 445]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 22
ctrl = 0
anim = 445
facep2 = 1

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.85
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S0,1
ignorehitpause = 1
[State 200, 1]
type = HitDef
trigger1 = animelem = 3
attr = C, NA
damage = 52, 0
animtype = hard
guardflag = M
hitflag = MAFD
pausetime = 12-var(49), 12
sparkno = 1
sparkxy = ceil(-10*const(size.xscale)),ceil(-46*const(size.yscale))
hitsound = S5, 3
guardsound = S6, 0
ground.type = low
ground.slidetime = ceil(25*ifelse(var(31),1.15,1))
ground.hittime = ceil(25*ifelse(var(31),1.15,1))
guard.ctrltime = 20
ground.velocity = -4.1*const(size.xscale)
air.type = low
air.velocity = -1.2*const(size.xscale),-8.8
air.hittime = 19
air.fall = 1
yaccel = .88
fall.recovertime = 40
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
movetype = I

[State 440, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Jump Light Punch
; CNS difficulty: easy
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 11
ctrl = 0
anim = 600

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.9
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S0,0
ignorehitpause = 1
[State 200, 1]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
damage = 40, 0
animtype = medium
guardflag = MA
hitflag = MAF
pausetime = 8-var(49), 8
sparkno = 0
sparkxy = ceil(-10*const(size.xscale)),ceil(-27*const(size.yscale))
hitsound = S5, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = ceil(18*ifelse(var(31),1.15,1))
ground.hittime  = ceil(18*ifelse(var(31),1.15,1))
guard.ctrltime = 15
ground.velocity = -2.6*const(size.xscale)
airguard.velocity = -1.9*const(size.xscale),-.8
air.type = High
air.velocity = -1.4*const(size.xscale),-9.9
air.hittime = 18
air.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
movetype = I

;---------------------------------------------------------------------------
; Jump Light Kick
; CNS difficulty: easy
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 20
ctrl = 0
anim = ifelse(vel x!=0,640,630) ; This move has two ariants, depending on whenever Shaq is flying horizontally or not

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.9
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S0,1
ignorehitpause = 1
[State 200, 1]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
damage = 55, 0
animtype = medium
guardflag = MA
hitflag = MAF
pausetime = 12-var(49), 12
sparkno = 1
sparkxy = ceil(-10*const(size.xscale)), ceil( ifelse(anim=630,-28,-54) *const(size.yscale) )
hitsound = S5, 1
guardsound = S6, 0
ground.type = High
ground.slidetime = ceil(20*ifelse(var(31),1.15,1))
ground.hittime  = ceil(20*ifelse(var(31),1.15,1))
guard.ctrltime = 15
ground.velocity = -3.2*const(size.xscale)
airguard.velocity = -1.9*const(size.xscale),-.8
air.type = High
air.velocity = -1.4*const(size.xscale),-9.9
air.hittime = 20
air.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
movetype = I

;---------------------------------------------------------------------------
; "Alpha Counter"
[Statedef 700]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 700
ctrl = 0
sprpriority = 2
poweradd = -500

[State CANCEL]
type = PalFX
triggerall = (prevstateno = [120,156])
trigger1 = time = 0
trigger2 = time = 3
time = 2
add = 0,100,200
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 200

[State 0, NotHitBy]
type = NotHitBy
trigger1 = movetype != I
value = SCA,AA,AP,AT
time = 2
ignorehitpause = 1

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 11
anim = -1
sound = -1
movetime = 11
darken = 0
p2defmul = 1
unhittable = 1
pausebg = 0
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = time = 0
attr = S, SA
damage = 100, 10
animtype = hard
guardflag = M
hitflag = MAFP
pausetime = 12-var(49), 11
sparkno = 3
sparkxy = ceil(-10*const(size.xscale)),ceil(-62*const(size.yscale))
hitsound = S5,4
guardsound = S6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 20
guard.velocity = -11
guard.ctrltime = 10
ground.velocity = -11.9,-12.8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -11.9,-12.8
air.hittime = 20
fall = 1
fall.recover = 0
yaccel = .88
ground.cornerpush.veloff = 0
getpower = 0
id = 700

; This is a much better method than the p2stateno hitdef parameter as the move can then hit helpers too, so this move can hit people, Apocalypse's hand and even put the Rox Howard clones into wallbounce state
[State that puts his opponent into wallbounce]
type = TargetState
trigger1 = numtarget(700)
trigger1 = var(21) = 1
trigger1 = !(target(700),ishelper) || (PlayerIDExist((target(700),id)) )
value = 1125
ID = 700
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 12
movetype = I

[State 200, 1]
type = PlaySnd
trigger1 = time = 1
value = 0, 3
[State 200, 1]
type = PlaySnd
trigger1 = time = 1
value = 4, ifelse(random<500,7,8)
channel = 0

[State 1010, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Throw - Attempt
; CNS difficulty: medium-advanced
; Description: Throws are not difficult to make, although then can be
;     tedious at times. Throw attempt states have a HitDef of a
;     special format. The key parameters in a throw are p1stateno
;     and p2stateno. If the HitDef successfully connects, then
;     the attacker will change to the state number specified by
;     p1stateno, and the opponent will be change to the state
;     number assigned to p2stateno. The special thing about p2stateno
;     is that the opponent will be temporarily brought into the
;     attacker's state file. In this case, no matter who the
;     opponent is, he will be taken to state 820 of this file (kfm.cns)
;     and remain here until the end of the throw (look at his debug
;     information when he is being thrown; the text changes to yellow
;     to mean that he is in another player's state file).
[Statedef 800]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 800
facep2 = 1

[State 0, DAAMN]
type = PlaySnd
trigger1 = animelem = 3
value = S4,23
channel = 0
ignorehitpause = 1

[State 800, 1] ; If the throw isn't "limited"
type = HitDef
trigger1 = !var(8)
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 810
;p2stateno = 820
fall = 1
id = 800
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 800, 1] ; If done with the throw limiter kicking in, his throw is guardable
type = HitDef
trigger1 = !movecontact
Trigger1 = Time = 1
attr = S, NT
hitflag = M
guardflag = M
priority = 1, Miss
guardsound = S6,0
guard.pausetime = 9,0
guard.hittime = 6
guard.slidetime = 6
guard.velocity = -9*const(size.xscale)
sparkxy = -10,floor(-44*const(size.yscale))
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 810
;p2stateno = 820
fall = 1
id = 800
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 3
movetype = I

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; When throw hits, go here
[Statedef 810]
type = S
movetype= A
physics = N
anim = 810
poweradd = 60

; This puts the opponent into "thrown" state
; This is much preferred to the p2stateno hitdef parameter as otherwise when Shaq would get hit at the same time he'd grab his opponent, then his opponent would get stuck even after Shaq is hit out of the throw
[State 0, TargetState]
type = TargetState
trigger1 = time = 0
value = 820
id = 800

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S5,9
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = 0,4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random < 500
trigger1 = animelem = 6
value = S4,ifelse(random<500,7,1)
channel = 0
volume = 255
;lowpriority = -1
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
trigger2 = animelem = 7
x = -2*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 4
x = -4*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 5
x = -19*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 6
x = -3*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 9
trigger2 = animelem = 17
trigger3 = animelem = 18
x = 7*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 10
x = 2*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 11
x = 8*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 12
x = 16*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 13
trigger2 = animelem = 14
trigger3 = animelem = 15
trigger4 = animelem = 16
x = 4*const(size.xscale)

[State 810, Bind 1]
type = TargetBind
trigger1 = time = [0,15]
trigger1 = animelemno(0)<2
pos = 18*const(size.xscale), 0

[State 810, Bind 2]
type = TargetBind
trigger1 = animelemno(0)>=2
trigger1 = animelemno(0)<3
pos = 22*const(size.xscale), 0

[State 810, Bind 3]
type = TargetBind
trigger1 = animelemno(0)>=3
trigger1 = animelemno(0)<4
pos = 18*const(size.xscale), -6*const(size.yscale)

[State 810, Bind 4]
type = TargetBind
trigger1 = animelemno(0)>=4
trigger1 = animelemno(0)<5
pos = 18*const(size.xscale), -42*const(size.yscale)

[State 810, Bind 5]
type = TargetBind
trigger1 = animelemno(0)>=5
trigger1 = animelemno(0)<6
pos = 0, -37*const(size.yscale)

[State 810, Bind 6]
type = TargetBind
trigger1 = animelemno(0)>=6
trigger1 = animelemno(0)<7
pos = -10*const(size.xscale), -30*const(size.yscale)

[State 810, Bind 7]
type = TargetBind
trigger1 = AnimElem = 7
pos = -20*const(size.xscale), -35*const(size.yscale)

[State 810, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 7
value = -78

[State 810, Throw]
type = TargetState
trigger1 = AnimElem = 7
value = 821

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
[Statedef 820] ; The enemy goes here if grabbed via Shaq's Targetstate
type = A
movetype = H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

[State 0, SelfState]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

;----------------------------------------------------------------------
[Statedef 821] ; The enemy goes here if thrown via Shaq's Targetstate
type = A
movetype = H
physics = N
velset = 6,-9
poweradd = 40

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .88

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 4] ;If you send your enemy into your own code, you need selfstate or they'll never go back.
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;---------------------------------------------------------------------------
; Air Throw
[Statedef 830]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 830
sprpriority = 2

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = A, NT
animtype = up
hitflag = AF
priority = 2, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 840
;p2stateno = 880
guard.dist = 0
fall = 1
fall.recover = 0
fall.damage = 0

[State 0, Gravity] ; ......actually, using VelAdd of Y = 0.88 instead is a better idea, but....
type = Gravity
trigger1 = 1

[State 0, PlaySnd] ; Missed? SCREAM AS YOU FALL TO YOUR....
type = PlaySnd
trigger1 = animelem = 2
value = S11,0
channel = 0

[State 0, StopSnd] ; Stop screaming if you hit the ground
type = StopSnd
trigger1 = vel y > 0
trigger1 = vel y + pos y > 15
channel = 0

[State 0, SelfState] ; and actually hit the ground
type = SelfState
trigger1 = vel y > 0
trigger1 = vel y + pos y > 15
value = 5100

;---------------------------------------------------------------------------
; Basketcase
[Statedef 839]
type    = S
movetype= A
physics = N
anim = 839
sprpriority = 4

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno = 830

[State 0, PosAdd] ; home the basketcase slowly to the position
type = PosAdd
trigger1 = parent,stateno = [840,841]
x = (70 - backedgedist)*0.09
[State 0, PosAdd]
type = PosSet
trigger1 = 1
y = 0

[State 0, VelSet] ; If Shaq is done doing the air throw, have the hoop slowly go backwards
type = VelSet
trigger1 = parent,stateno != [840,841]
x = -4.7

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno != [840,841]
trigger1 = backedgedist < -72


;---------------------------------------------------------------------------
; Throw
[Statedef 840]
type    = A
movetype= A
physics = N
anim = 840
poweradd = 60
velset = 0,-9
sprpriority = 6

[State 0, DO YOU WANT ME TO SLAM]
type = PlaySnd
trigger1 = time = 0
value = S4,31
channel = 0

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Basket"
ID = 839
stateno = 839
pos = -32,0
postype = front
facing = -1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S5,9

[State 0, TargetState]
type = TargetState
trigger1 = time = 0
value = 850
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = vel y < 0
trigger1 = pos y > -90*const(size.yscale) ; keep rising up until you're higher than the (scaled) basket
y = -9
[State 0, PosAdd]
type = PosAdd
trigger1 = 1
x = (frontedgedist - 70)*0.05
[State 0, Gravity]
type = VelAdd
trigger1 = anim = 840
y = 0.44

[State 810, Bind 1]
type = TargetBind
trigger1 = animelemtime(2) < 0
pos = 27*const(size.xscale), -32*const(size.yscale)

[State 810, Bind 2]
type = TargetBind
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(3) < 0
pos = 28*const(size.xscale), -22*const(size.yscale)

[State 810, Bind 3]
type = TargetBind
trigger1 = animelemtime(3) >= 0
pos = 6*const(size.xscale), -40*const(size.yscale)

[State 0, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -86*const(size.yscale)
value = 841
ctrl = 0


;---------------------------------------------------------------------------
; Throw
[Statedef 841]
type    = A
movetype= A
physics = N
anim = 841
velset = 0,0
sprpriority = 6

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3,17

[State 810, Bind 3]
type = TargetBind
trigger1 = time = 0
pos = -1*const(size.xscale), -7*const(size.yscale)
[State 0, TargetState]
type = TargetState
trigger1 = time = 0
value = 851
ignorehitpause = 1

[State WHAM]
type = PlaySnd
trigger1 = numtarget
trigger1 = target,stateno = 852
trigger1 = target,time = 1
trigger1 = target,movetype = H
value = S5,4
freqmul = 1.0
ignorehitpause = 1
[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = numtarget
trigger1 = target,stateno = 852
trigger1 = target,time = 1
trigger1 = target,movetype = H
value = 0-ceil(140*fvar(13))
;value = -140
kill = 1
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = numtarget
trigger1 = target,stateno = 852
trigger1 = target,time = 1
trigger1 = target,movetype = H
fvar(13) = fvar(13) * 0.75
[State 0, Explod]
type = Explod
trigger1 = numtarget
trigger1 = target,stateno = 852
trigger1 = target,time = 1
trigger1 = target,movetype = H
anim = F3
pos = 0,0
postype = p2
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = 65535
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(3) = 0
x = 7
y = -4

[State 0, VelMul]
type = VelMul
trigger1 = animelemtime(3) >= 0
x = 0.97

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelemtime(3) = 0
statetype = A
physics = A


;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw
[Statedef 850]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 5

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 850

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 820, 2]
type = SelfState
trigger1 = time>180;!gethitvar(isbound);
value = 5050

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 851]
type    = A
movetype= H
physics = N
velset = 0,24
poweradd = 60
sprpriority = 2

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 851

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 821, 1] ;Gravity
type = VelAdd
trigger1 = time > 8
y = .61

[State 821, 4] ;Hit ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 852 ;Hit ground

;---------------------------------------------------------------------------
; SANTANA
[Statedef 852]
type    = L
movetype= H
physics = N

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State COLLISION DAMAGE]
type = EnvShake
trigger1 = time = 0
time = 12
freq = 255
ampl = -7
[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0 || !hitshakeover
trigger1 = !selfanimexist(5101)
value = 5100
[State 5100, 3]
type = ChangeAnim
trigger1 = time = 0 || !hitshakeover
trigger1 = selfanimexist(5101)
value = 5101
[State 5100, 2]
type = ChangeAnim
trigger1 = (anim = [5100,5109]) || (anim = [5170,5179])
trigger1 = animtime = 0
trigger1 = !selfanimexist(5111)
value = ifelse(selfanimexist(5170)&&(anim!=[5170,5179]),5170,5110)
[State 5100, 2]
type = ChangeAnim
trigger1 = (anim = [5100,5109]) || (anim = [5170,5179])
trigger1 = animtime = 0
trigger1 = selfanimexist(5111)
value = ifelse(selfanimexist(5171)&&(anim!=[5170,5179]),5171,5111)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0
[State 5100, 5]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 5100, 8]
type = Explod
trigger1 = Time = 1
anim = F62
pos = 0, 0
sprpriority = -2
supermovetime = 65535
pausemovetime = 65535
scale = 1,1

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, 2

[State 0, VarSet]
type = VarSet
trigger1 = time >= 40
sysvar(0) = 1
[State 5100, 12]
type = SelfState
trigger1 = time >= 40
value = 5110


;---------------------------------------------------------------------------
; That flaming overhead roundhouse kick
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 1000
facep2 = 1

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.75
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S4,24
channel = 0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S0,7
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = animelem = 11
attr = S, SA
damage = 125, 15
priority = 6
animtype = hard
guardflag = H
hitflag = MAF
pausetime = 12-var(49), 12
sparkno = 3
sparkxy = ceil(-10*const(size.xscale)),ceil(-66*const(size.yscale))
hitsound = S5, 4
guardsound = S6, 0
ground.type = High
ground.slidetime = ceil(26*ifelse(var(31),1.2,1))
ground.hittime  = ceil(26*ifelse(var(31),1.2,1))
guard.ctrltime = 20
ground.velocity = -5*const(size.xscale)
airguard.velocity = -1.9*const(size.xscale),-.8
air.type = High
air.velocity = -4*const(size.xscale),-13.13
air.hittime = 25
air.fall = 1
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.color = 0
guard.hittime = 6
guard.velocity = -6*const(size.xscale)
air.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 17
movetype = I

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Shadow Kick that doesn't knock down
[Statedef 1100]
type    = S
movetype= A
physics = N
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 1100
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S4,19
channel = 0
ignorehitpause = 1

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.8
ignorehitpause = 1

[State 1020, Afterimage]
type = AfterImage
trigger1 = Time = 0
length = 13
PalBright   =  0, 0,  30
PalContrast =  20, 20, 200
PalAdd      = -10,-10,-10
PalMul      = .50,.50,.80
TimeGap  = 1
FrameGap = 4
Trans = Add
time = 40

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 4.242
y = 0
[State 0, VelSet]
type = VelMul
trigger1 = animelemtime(11) < 0
x = ifelse(animelemtime(9) > 0||movecontact,0.94,0.99)
[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(11) = 0
x = 0
[State 0, VelMul]
type = VelMul
trigger1 = movecontact
x = ifelse(!moveguarded,-0.25,-0.75)
ignorehitpause = 1
persistent = 0


[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
trigger2 = animelem = 3
x = 6*const(size.xscale)
ignorehitpause 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 4
trigger2 = animelem = 5
x = 3*const(size.xscale)
ignorehitpause 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 6
trigger2 = animelem = 8
x = 8*const(size.xscale)
ignorehitpause 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 7
x = 9*const(size.xscale)
ignorehitpause 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 14
x = 1*const(size.xscale)
ignorehitpause 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S0,4
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = animelem = 8
attr = S, SA
damage = 44, 3
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 12-var(49), 12
sparkno = 2
sparkxy = ceil(-10*const(size.xscale)),ceil(-48*const(size.yscale))
hitsound = S5, 1
guardsound = S6, 0
ground.type = low
ground.slidetime = 30+(10*var(31))
ground.hittime  = 30+(10*var(31))
guard.ctrltime = 25
ground.velocity = -1.5*const(size.xscale)
air.type = low
air.velocity = -4*const(size.xscale),-7.7
air.hittime = 24
guard.velocity = -7*const(size.xscale)
air.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 11
movetype = I

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Shadow Kick that does knock down (to the wall)
[Statedef 1101]
type    = S
movetype= A
physics = N
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 1100
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S4,19
channel = 0
ignorehitpause = 1

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.8
ignorehitpause = 1

[State 1020, Afterimage]
type = AfterImage
trigger1 = Time = 0
length = 16
PalBright   =  0, 0,  30
PalContrast =  20, 20, 200
PalAdd      = -10,-10,-10
PalMul      = .50,.50,.80
TimeGap  = 1
FrameGap = 4
Trans = Add
time = 40

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 6.242
y = 0
[State 0, VelSet]
type = VelMul
trigger1 = animelemtime(11) < 0
x = ifelse(animelemtime(9) > 0||movecontact,0.94,0.99)
[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(11) = 0
x = 0
[State 0, VelMul]
type = VelMul
trigger1 = movecontact
x = ifelse(!moveguarded,-0.25,-0.75)
ignorehitpause = 1
persistent = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
trigger2 = animelem = 3
x = 6*const(size.xscale)
ignorehitpause 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 4
trigger2 = animelem = 5
x = 3*const(size.xscale)
ignorehitpause 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 6
trigger2 = animelem = 8
x = 8*const(size.xscale)
ignorehitpause 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 7
x = 9*const(size.xscale)
ignorehitpause 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 14
x = 1*const(size.xscale)
ignorehitpause 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S0,4
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = animelem = 8
attr = S, SA
damage = 70, 5
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 12-var(49), 12
sparkno = 2
sparkxy = ceil(-10*const(size.xscale)),ceil(-48*const(size.yscale))
hitsound = S5, 1
guardsound = S6, 0
ground.type = low
ground.slidetime = 30+(10*var(31))
ground.hittime  = 30+(10*var(31))
guard.ctrltime = 25
ground.velocity = -9,-8.8
airguard.velocity = -1.9,-.8
air.type = low
air.velocity = -9,-8.8
air.hittime = 21
fall = 1
guard.velocity = -7*const(size.xscale)
air.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0
id = 1101

[State WallBounce]
type = TargetState
trigger1 = numtarget(1101)
trigger1 = var(21) = 1
trigger1 = !(target(1101),ishelper) || (PlayerIDExist((target(1101),id)) )
value = 1125
ID = 1101
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 11
movetype = I

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------
; Hit by Fast Kung Fu Palm - shaking from the hit, taken from Kung Fu Man's Wallbounce code with few adjustments
; (a custom gethit state)
; See State 1020 for details
[Statedef 1125]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1025, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 1125

[State 1025, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1126

;------------------
; Hit by Fast Kung Fu Palm - flying through the air
; (a custom gethit state)
[Statedef 1126]
type    = A
movetype= H
physics = N

[State 1026, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1026, Gravity]
type = VelAdd
trigger1 = 1
y = .66

[State 1026, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1026, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 1127

[State 1026, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 1127]
type    = A
movetype= H
physics = N

[State 1027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1127

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 1128

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 1128]
type    = A
movetype= H
physics = N

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -12.12

[State 1028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 1.6

[State 1028, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 1028, Gravity]
type = VelAdd
trigger1 = 1
y = .88

[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;---------------------------------------------------------------------------
; Shaq friggin' rips off Kuririn
[Statedef 1200]
type    = S
movetype= A
physics = S
poweradd= 65
ctrl = 0
velset = 0,0
anim = 1200
facep2 = 1

[State 0, VarSet] ; reset the hold variable
type = VarSet
trigger1 = time = 0
var(0) = 0
[State 0, VarSet] ; checks if Shaq was holding
type = VarSet
trigger1 = animelem = 15
trigger1 = !var(0)
trigger1 = (var(55)<5 && (command = "holdx" || command = "holdy")) || var(52) = 1234 ; both player input and the AI directive to hold
var(0) = 1
[State 0, ChangeAnim] ; if Shaq is holding, let's jump to a frame earlier
type = ChangeAnim
triggerall = animelem = 16
triggerall = var(0)
triggerall = time <= 150 ; Shaq can't hold for too long
trigger1 = (var(55)<5 && (command = "holdx" || command = "holdy")) || var(52) = 1234
value = 1200
elem = 12
[State 0, ChangeAnim] ; if Shaq was holding but stopped, skip to the frame where Shaq throws the disc
type = ChangeAnim
triggerall = animelemtime(16) < 0
triggerall = var(0)
trigger1 = (command != "holdx" && command != "holdy") && var(52) != 1234
value = 1200
elem = 16

[State 0, StateTypeSet] ; among things this lets the opponent's AI think that it may be safe to run at Shaq when he's holding
type = StateTypeSet
trigger1 = animelem = 13
trigger1 = var(0)
movetype = I
[State 0, StateTypeSet] ; among things this lets the opponent's AI know it's time to block
type = StateTypeSet
trigger1 = animelem = 16
movetype = A

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S4,3+random%2
channel = 0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 19
value = S3,2
ignorehitpause = 1

[State 0, ]
type = Width
trigger1 = animelemtime(19) >= 0
trigger1 = animelemtime(20) < 0
value = floor(30*const(size.xscale)),floor(-9*const(size.xscale))

[State 0, Helper]
type = Helper
trigger1 = animelem = 19
helpertype = normal ;player
name = "destrutcto disc"
ID = 1200
stateno = 1201
pos = floor(38*const(size.xscale)),floor(-28*const(size.yscale)) ; quite a number of positions are scaled with Shaq's scale
postype = p1
facing = 1
ownpal = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; The Disc
[Statedef 1201]
type    = A
movetype= A
physics = N
velset = 6,0
anim = 1201

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, AttackMulSet] ; If Shaq has DOUBLE Power, have it transfer to this projectile too
type = AttackMulSet
trigger1 = time = 0
trigger1 = parent,var(10)=1
time = 999
value = 2
ignorehitpause = 1

[State 0, ] ; holding an verticle direction during the throw would let Shaq throw at an angle
type = VelSet
trigger1 = time = 0
trigger1 = parent,command = "holdup"
y = -1.6

[State 0, ]
type = VelSet
trigger1 = time = 0
trigger1 = parent,command = "holddown"
y = 1.6

[State 200, 1]
type = HitDef
trigger1 = Time = 1
attr = S, SP
damage = 90, 0
animtype = medium
guardflag = MA
hitflag = MAF
pausetime = 0, 0
sparkno = 2
sparkxy = 0, 0
hitsound = S5, 2
guardsound = S6, 0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -5*const(size.xscale)
airguard.velocity = -1.9,-.8
air.type = Low
air.velocity = -1.8*const(size.xscale),-8.8
air.hittime = 18
air.fall = 1
guard.ctrltime = 3
guard.velocity = -9*const(size.xscale)
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 210, 5] ; important
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 1202
time = -1

[State 210, 5]
type = ChangeState
trigger1 = frontedgedist < -15
trigger1 = time >= 3 ; important, the disc needs to hit even if thrown close to the corner
trigger2 = movecontact
trigger3 = pos y >= 0 ; because yeah, you can throw it downwards
ignorehitpause = 1
value = 1202

[Statedef 1202]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 1202

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3,5
ignorehitpause = 1

[State 210, 5]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
; Kangaroo kick
[Statedef 1300]
type    = S
movetype= A
physics = S
juggle = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 1300
facep2 = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = abs(vel x)>=2
value = SC,NT,ST
time = 2
ignorehitpause = 1

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.8
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 10
statetype = A
movetype = A
physics = N
ignorehitpause = 1
[State 0, VelAdd]
type = VelAdd
trigger1 = animelemtime(10) > 0
y = 0.44
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 10
x = 2
y = -6.4
[State 0, VelMul]
type = VelMul
trigger1 = statetype = A
x = 0.96
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = 1*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 4
trigger2 = animelem = 5
trigger3 = animelem = 6
trigger4 = animelem = 7
trigger5 = animelem = 10
x = 4*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 8
trigger2 = animelem = 9
x = 12*const(size.xscale)
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S0,6
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S4,21+random%2
channel = 0
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = animelem = 10
attr = A, SA
damage = 70, 0
animtype = up
guardflag = MA
hitflag = MAF
pausetime = 12-var(49), 12
sparkno = 1
sparkxy = ceil(-10*const(size.xscale)),ceil(-60*const(size.yscale))
hitsound = S5, 4
guardsound = S6, 0
ground.type = High
ground.slidetime = 26
ground.hittime  = 26
ground.velocity = -1,-10
airguard.velocity = -1.9,-2
air.type = High
air.velocity = -1,-10.7
air.hittime = 25
fall = 1
fall.recover = 0
guard.ctrltime = 6
guard.velocity = -8*const(size.xscale)
yaccel = .40
ground.cornerpush.veloff = 0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 13
movetype = I

; ..........why the hell am I reusing a default land state for this special move?
[State 0, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = vel y + pos y >= 0
trigger1 = statetype = A
value = 52
ctrl = 0

; A Higher Kangaroo Kick
[Statedef 1301]
type    = S
movetype= A
physics = S
juggle = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 1301
facep2 = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = abs(vel x)>=2
value = SC,NT,ST
time = 2
ignorehitpause = 1

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.8
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 10
statetype = A
movetype = A
physics = N
ignorehitpause = 1
[State 0, VelAdd]
type = VelAdd
trigger1 = animelemtime(10) > 0
y = 0.44
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 10
x = 1.3
y = -7.7
[State 0, VelMul]
type = VelMul
trigger1 = statetype = A
x = 0.97
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = 1*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 4
trigger2 = animelem = 5
trigger3 = animelem = 6
trigger4 = animelem = 7
trigger5 = animelem = 7
trigger6 = animelem = 10
x = 4*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 8
trigger2 = animelem = 9
x = 12*const(size.xscale)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S0,6
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S4,21+random%2
channel = 0
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = animelem = 10
attr = A, SA
damage = 82, 0
animtype = up
guardflag = MA
hitflag = MAF
pausetime = 12-var(49), 12
sparkno = 1
sparkxy = ceil(-10*const(size.xscale)),ceil(-60*const(size.yscale))
hitsound = S5, 4
guardsound = S6, 0
ground.type = High
ground.slidetime = 26
ground.hittime  = 26
ground.velocity = -1,-11
airguard.velocity = -1.9,-2
air.type = High
air.velocity = -1,-12.2
air.hittime = 25
fall = 1
yaccel = .40
fall.recover = 0
guard.ctrltime = 6
guard.velocity = -8*const(size.xscale)
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 13
movetype = I

[State 0, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = vel y + pos y >= 0
trigger1 = statetype = A
value = 52
ctrl = 0


;---------------------------------------------------------------------------
; Overhead hop, to be honest I'm not quite sure what I was thinking when I conceived this move
[Statedef 1400]
type    = S
movetype = A
physics = S
juggle = 7
ctrl = 0
anim = 1400
sprpriority = 2
ctrl = 0
facep2 = 1

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.8
ignorehitpause = 1

[State -3, Running sound]
type = PlaySnd
trigger1 = animelem = 12
value = 40, 0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 16
trigger2 = animelem = 15
trigger3 = animelem = 13
x = 5*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 14
trigger2 = animelem = 12
trigger3 = animelem = 2
x = 3*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 11
x = 12*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 10
x = 9*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 9
x = 15*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 8
x = 7*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 6
trigger2 = animelem = 5
trigger3 = animelem = 4
trigger4 = animelem = 3
x = 8*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 1
x = 1*const(size.xscale)
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = 70, 0
animtype = high
guardflag = HA
hitflag = MAFD
pausetime = 12-var(49), 12
sparkno = 1
sparkxy = -10, -33
hitsound = S5, 3
guardsound = S6, 0
ground.type = low
ground.slidetime = 28
ground.hittime  = 28
guard.ctrltime = 15
ground.velocity = -4.8*const(size.xscale)
airguard.velocity = -1.9,-.8
air.type = low
air.velocity = -1.8,5
air.hittime = 23
air.fall = 1
fall.recover = 0
down.bounce = 0
down.velocity = 0,0
down.hittime = 10
air.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 13
movetype = I

[State 0, Sorry]
type = PlaySnd
trigger1 = random < 500
trigger1 = movehit
value = S4,1
channel = 0
volume = 255
;lowpriority = -1
ignorehitpause = 1
persistent = 0

[State 105, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; free throw, point blank
; All of the variants for Free Throw are pretty much indentical, code-wise.
; The arc of the throw is set by the ball itself (stateno 1505), based on from which stateno Shaq himself spawns the ball in
[Statedef 1500]
type    = S
movetype= I
physics = S
poweradd= 30
ctrl = 0
velset = 0,0
anim = 1500
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S4,ifelse(random<500,20,25)
channel = 0
lowpriority = 1
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 11*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 5
x = -7*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 6
x = 3*const(size.xscale)
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S0,3
ignorehitpause = 1

; The ball is spawned pretty early as it would be shown in Shaq's hand before getting thrown
[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal ;player
name = "B-ball"
ID = 1500
stateno = 1505
pos = floor(9*const(size.xscale)),floor(-35*const(size.yscale))
postype = p1
facing = 1
ownpal = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; free throw, near
[Statedef 1501]
type    = S
movetype= I
physics = S
poweradd= 30
ctrl = 0
velset = 0,0
anim = 1500
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S4,ifelse(random<500,20,25)
channel = 0
lowpriority = 1
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 11*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 5
x = -7*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 6
x = 3*const(size.xscale)
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S0,3
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal ;player
name = "B-ball"
ID = 1500
stateno = 1505
pos = floor(9*const(size.xscale)),floor(-35*const(size.yscale))
postype = p1
facing = 1
ownpal = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; free throw, mir
[Statedef 1502]
type    = S
movetype= I
physics = S
poweradd= 30
ctrl = 0
velset = 0,0
anim = 1500
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S4,ifelse(random<500,20,25)
channel = 0
lowpriority = 1
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 11*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 5
x = -7*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 6
x = 3*const(size.xscale)
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S0,3
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal ;player
name = "B-ball"
ID = 1500
stateno = 1505
pos = floor(9*const(size.xscale)),floor(-35*const(size.yscale))
postype = p1
facing = 1
ownpal = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; free throw, far
[Statedef 1503]
type    = S
movetype= I
physics = S
poweradd= 30
ctrl = 0
velset = 0,0
anim = 1500
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S4,ifelse(random<500,20,25)
channel = 0
lowpriority = 1
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 11*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 5
x = -7*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 6
x = 3*const(size.xscale)
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S0,3
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal ;player
name = "B-ball"
ID = 1500
stateno = 1505
pos = floor(9*const(size.xscale)),floor(-35*const(size.yscale))
postype = p1
facing = 1
ownpal = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; The ball is simply in Shaq's hands, is yet to be thrown up
[Statedef 1505]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 0,0
anim = 1506
sprpriority = 3

; Might be a good idea to asign the ball it's own hitstate now
[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 1509
time = -1
forceair = 1
ignorehitpause = 1

; even if the ball would be invincible until it would leave shaq's hand
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 2
ignorehitpause = 1

; time to accordingly glue the ball to his hands
[State 0, BindToParent]
type = BindToParent
trigger1 = parent,anim = 1500
trigger1 = parent,animelemno(0)=2
time = 1
facing = 1
pos = floor(9*const(size.xscale)),floor(-35*const(size.yscale))

[State 0, BindToParent]
type = BindToParent
trigger1 = parent,anim = 1500
trigger1 = parent,animelemno(0)=3
time = 1
facing = 1
pos = floor(21*const(size.xscale)),floor(-61*const(size.yscale))

[State 0, BindToParent]
type = BindToParent
trigger1 = parent,anim = 1500
trigger1 = parent,animelemno(0)=4
time = 1
facing = 1
pos = floor(16*const(size.xscale)),floor(-68*const(size.yscale))

[State 0, BindToParent]
type = BindToParent
trigger1 = parent,anim = 1500
trigger1 = parent,animelemno(0)=5
time = 1
facing = 1
pos = floor(12*const(size.xscale)),floor(-57*const(size.yscale))

[State 0, BindToParent]
type = BindToParent
trigger1 = parent,anim = 1500
trigger1 = parent,animelemtime(6)>=0
time = 1
facing = 1
pos = floor(32*const(size.xscale)),floor(-64*const(size.yscale))

; time to throw it
[State 0, ChangeState]
type = ChangeState
trigger1 = parent,anim = 1500
trigger1 = parent,animelemtime(6)>=0
value = 1506
ctrl = 0

; if Shaq somehow leaves the Free Throw animation before the Ball goes off (read:Shaq gets hit), just drop the ball
[State 0, ChangeState]
type = ChangeState
trigger1 = parent,anim != 1500
value = 1508
ctrl = 0

;---------------------------------------------------------------------------
; In this state the Ball can actually hit now
[Statedef 1506]
type    = A
movetype= A
physics = N
ctrl = 0
sprpriority = 3

; inherit the proration from Shaq himself
[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = 1
time = 2
value = (parent,fvar(13)) * ifelse((p2statetype=A&&p2movetype!=H)||(parent,var(31)),1.25,1) * ifelse((parent,var(10)=1),2,1)
ignorehitpause = 1

; See what I mean about Ball basing the velocity on Shaq's stateno?
[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0.1+((parent,stateno-1500)*1.5)
y = -12
[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5
[State 200, 1]
type = HitDef
trigger1 = time = 1
attr = A, SP
damage = 40, 0
animtype = Light
guardflag = HA
hitflag = MAF
pausetime = 0, 0
sparkno = 0
sparkxy = 0,0
hitsound = S5, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -1
guard.ctrltime = 10
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.2,-9.9
air.hittime = 25
air.fall = 1
fall.recovertime = 40
yaccel = .88
ground.cornerpush.veloff = 0

; for helpers, use ParentVarSet to prorate
[State ProRation]
type = ParentVarSet
trigger1 = movehit
fvar(13) = (parent,fvar(13)) * 0.95
ignorehitpause = 1
persistent = 0

[State 0, Bounce Sound]
type = PlaySnd
trigger1 = vel y > 0
trigger1 = pos y >= 0
trigger2 = frontedgedist < 0
trigger2 = vel x > 0
trigger3 = backedgedist < 0
trigger3 = vel x < 0
value = S3,3
[State 0, I just bounced]
type = VarAdd
trigger1 = vel y > 0
trigger1 = pos y >= 0
trigger2 = var(6) >= 1
var(6) = 1
[State 0, Time to fade]
type = AssertSpecial
trigger1 = var(6)>0
trigger1 = (var(6)%3)=0
flag = invisible
[State 0, Vertical Bounce]
type = VelMul
trigger1 = vel y > 0
trigger1 = pos y >= 0
x = 0.9
y = -0.8
[State 0, Horizontal Bounce]
type = VelMul
trigger1 = frontedgedist < 0
trigger1 = vel x > 0
trigger2 = backedgedist < 0
trigger2 = vel x < 0
x = -0.97
[State 0, VelMul] ; scale the velocity for a more Arc-Like movement
type = VelMul
trigger1 = 1
x = 0.99
[State 0, The Ball Shouldn't hit after bounce]
type = StateTypeSet
trigger1 = var(6) >= 1
movetype = I
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 1507
ctrl = 0
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(6) >= 40

;---------------------------------------------------------------------------
; A state for ball that just hits the opponent
[Statedef 1507]
type    = A
movetype= I
physics = N
ctrl = 0
sprpriority = 3

; These blocks cause the Ball to set the velocity away from the opponent's midpoint like if it's actually bouncing off it's target
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = p2dist x
[State 0, VarSet] ; probably hit a helper?
type = VarSet
trigger1 = time = 0
trigger1 = !numtarget
fvar(1) = p2dist y
[State 0, VarSet] ;
type = VarSet
trigger1 = time = 0
trigger1 = numtarget
fvar(1) = p2dist y + (target,const(size.mid.pos.y))
[State ****: Null]
type = Null
trigger1 = time = 0
trigger1 = (FVar(2) := (fvar(0) * 24) / (Exp(0.5*ln((fvar(0) * fvar(0)) + (fvar(1) * fvar(1))))))
trigger1 = (FVar(3) := (fvar(1) * 24) / (Exp(0.5*ln((fvar(0) * fvar(0)) + (fvar(1) * fvar(1))))))
[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = fvar(2) * -0.5
y = fvar(3) * -0.5
ignorehitpause = 1


[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = vel y > 0
trigger1 = pos y >= 0
trigger2 = frontedgedist < 0
trigger2 = vel x > 0
trigger3 = backedgedist < 0
trigger3 = vel x < 0
value = S3,3
[State 0, VarAdd]
type = VarAdd
trigger1 = vel y > 0
trigger1 = pos y >= 0
trigger2 = var(6) >= 1
var(6) = 1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = var(6)>0
trigger1 = (var(6)%3)=0
flag = invisible
[State 0, VelMul]
type = VelMul
trigger1 = vel y > 0
trigger1 = pos y >= 0
x = 0.9
y = -0.8
[State 0, VelMul]
type = VelMul
trigger1 = frontedgedist < 0
trigger1 = vel x > 0
trigger2 = backedgedist < 0
trigger2 = vel x < 0
x = -0.97
[State 0, VelMul]
type = VelMul
trigger1 = 1
x = 0.99

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(6) >= 40

;---------------------------------------------------------------------------
; A state for a ball that is just dropped, presumably after Shaq was not able to throw it before getting hit
[Statedef 1508]
type    = A
movetype= I
physics = N
ctrl = 0
sprpriority = 3

[State 0, VelSet] ; with this I probably tried to have the ball inherit shaq's velocity after he gets hit but apparently it just makes it stop most of the time
type = VelSet
trigger1 = time = 0
x = parent,vel x
y = parent,vel y
[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = vel y > 0
trigger1 = pos y >= 0
trigger2 = frontedgedist < 0
trigger2 = vel x > 0
trigger3 = backedgedist < 0
trigger3 = vel x < 0
value = S3,3
[State 0, VarAdd]
type = VarAdd
trigger1 = vel y > 0
trigger1 = pos y >= 0
trigger2 = var(6) >= 1
var(6) = 1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = var(6)>0
trigger1 = (var(6)%3)=0
flag = invisible
[State 0, VelMul]
type = VelMul
trigger1 = vel y > 0
trigger1 = pos y >= 0
x = 0.9
y = -0.8
[State 0, VelMul]
type = VelMul
trigger1 = frontedgedist < 0
trigger1 = vel x > 0
trigger2 = backedgedist < 0
trigger2 = vel x < 0
x = -0.97
[State 0, VelMul]
type = VelMul
trigger1 = 1
x = 0.99

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(6) >= 40

;---------------------------------------------------------------------------
; A state for a ball that just got hit by an opponent
[Statedef 1509]
type    = A
movetype= H
physics = N
ctrl = 0
sprpriority = 3
velset = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 2
ignorehitpause = 1

; take the opponent attack's hitvels and gravity into consideration
[State 0, HitVelSet]
type = HitVelSet
trigger1 = time = 0
x = 1
y = 1
[State 0, VelAdd]
type = VelAdd
trigger1 = hitshakeover
y = gethitvar(yaccel)
[State 0, PosFreeze] ; pause it
type = PosFreeze
trigger1 = !hitshakeover
value = 1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = vel y > 0
trigger1 = pos y >= 0
trigger2 = frontedgedist < 0
trigger2 = vel x > 0
trigger3 = backedgedist < 0
trigger3 = vel x < 0
value = S3,3
[State 0, VarAdd]
type = VarAdd
trigger1 = 1
var(6) = 1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = var(6)>0
trigger1 = (var(6)%3)=0
flag = invisible
[State 0, VelMul]
type = VelMul
trigger1 = vel y > 0
trigger1 = pos y >= 0
x = 0.9
y = -0.8
[State 0, VelMul]
type = VelMul
trigger1 = frontedgedist < 0
trigger1 = vel x > 0
trigger2 = backedgedist < 0
trigger2 = vel x < 0
x = -0.97
[State 0, VelMul]
type = VelMul
trigger1 = 1
x = 0.99

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(6) >= 40



;---------------------------------------------------------------------------
; Super Powered Killer Disc
[Statedef 2000]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim = 2000

; Similar charge stuff as with the regular Shaquriqin (1200)
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(0) = 0
[State 0, VarSet]
type = VarSet
trigger1 = animelem = 15
trigger1 = !var(0)
trigger1 = (var(55)<5 && (command = "holdx" || command = "holdy")) || var(52) = 1234
var(0) = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = animelem = 16
triggerall = var(0)
triggerall = time <= 150
trigger1 = (var(55)<5 && (command = "holdx" || command = "holdy")) || var(52) = 1234
value = 2000
elem = 12
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = animelemtime(16) < 0
triggerall = var(0)
trigger1 = (command != "holdx" && command != "holdy") && var(52) != 1234
value = 2000
elem = 16

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 13
trigger1 = var(0)
movetype = I
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 16
movetype = A

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(6) = 40 ; this may be best last as long as the superpause's movetime itself
[State 0, SuperFX]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "OH MY GOD SHAQ'S GONNA EAT ME"
ID = 2890
stateno = 2890
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
[State 0, ]
type = SuperPause
trigger1 = time = 0
time = 40
anim = F100
sound = F20,0
pos = floor(-19*const(size.xscale)),floor(-72*const(size.yscale))
movetime = 40
poweradd = -1000
endcmdbuftime = 8 ; better let your opponent have some buffer so one would, I dunno, do a Super afterwards as well for some Super vs Super action ( http://www.youtube.com/watch?v=4HGRBeFWxxk )
darken = 0 ; the Super FX Helper (2890) fades the stage so it's not neccersary for the default Superpause darkening

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S4,ifelse(random<500,13,17+random%2)
channel = 0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 19
value = S3,4
ignorehitpause = 1

[State 0, ]
type = Width
trigger1 = animelemtime(19) >= 0
trigger1 = animelemtime(20) < 0
value = ceil(33*const(size.xscale)),ceil(-9*const(size.xscale))

[State 0, Helper]
type = Helper
trigger1 = animelem = 19
helpertype = normal ;player
name = "destrutcto disc"
ID = 2000
stateno = 2001
pos = floor(42*const(size.xscale)),floor(-28*const(size.yscale))
postype = p1
facing = 1
ownpal = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Killer Disc
[Statedef 2001]
type    = A
movetype= A
physics = N
velset = 10,0
anim = 2001

[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = 1
time = 2
value = 0.25+((parent,fvar(13))*0.75) * ifelse((p2statetype=A&&p2movetype!=H)||(parent,var(31)),1.25,1) * ifelse((parent,var(10)=1),2,1)
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = time = 0
trigger1 = parent,var(10)=1
time = 999
value = 1.5
ignorehitpause = 1

[State 0, ]
type = VelSet
trigger1 = time = 0
trigger1 = parent,command = "holdup"
y = -1.6

[State 0, ]
type = VelSet
trigger1 = time = 0
trigger1 = parent,command = "holddown"
y = 1.6

[State 200, 1]
type = HitDef
trigger1 = Time = 1
attr = A, HP
damage = 208, 15
animtype = diagup
guardflag = M
hitflag = MAF
pausetime = 8-(parent,var(49)), 8 ; for helpers be sure to uhmm.... man, my Enlgish isn't any good, but I hope you understand why helpers states have "parent," stuff when it wants to use Shaq's own variables, right?
guard.pausetime = 0,0
sparkno = 2
sparkxy = 0, 0
hitsound = S5, 4
guardsound = S6, 0
ground.type = Low
ground.slidetime = 9
ground.hittime  = 22
ground.velocity = -6,-5
air.type = Low
air.velocity = -6,-5
air.hittime = 22
fall = 1
fall.recover = 0
getpower = 0

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State ProRation]
type = ParentVarSet
trigger1 = movehit
fvar(13) = (parent,fvar(13)) * 0.6
ignorehitpause = 1
persistent = 0

[State 210, 5]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 2002

[State 210, 5]
type = ChangeState
trigger1 = frontedgedist < -12
trigger1 = time >= 3
trigger2 = pos y >= 0
trigger3 = moveguarded ; it's supposed to cut through opponents
ignorehitpause = 1
value = 2002

; Disc goes bye bye
[Statedef 2002]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 2002
sprpriority = 10

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3,5
;ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3,5
freqmul = 1.5
;ignorehitpause = 1

[State 0, PlaySnd]
type = VarAdd
trigger1 = 1
fvar(0) = 0.08
[State 0, PlaySnd]
type = Trans
trigger1 = 1
trans = add
[State 0, PlaySnd]
type = AngleDraw
trigger1 = 1
scale = 1-fvar(0),1+fvar(0)
[State 210, 5]
type = DestroySelf
trigger1 = fvar(0) >= 0.9


;---------------------------------------------------------------------------
; I AM, KAZAAAAAAM!
[Statedef 2100]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim = 2100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S4,ifelse(random<500,9,12)
channel = 0
volume = 255

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(6) = 18
[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "OH MY GOD SHAQ'S GONNA EAT ME"
ID = 2890
stateno = 2890
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
[State 0, ]
type = SuperPause
trigger1 = time = 0
time = 60
anim = F100
sound = F20,0
pos = 0,floor(-60*const(size.yscale))
movetime = 18
poweradd = -1000
endcmdbuftime = 8
darken = 0

[State 0, VarRandom] ; .....why did I use an archaic method to set the randomized offset of the drop
type = VarRandom
trigger1 = 1
v = 5
range = ifelse(p2movetype!=H,-8,-4),ifelse(p2movetype!=H,25,4)
[State LOL] ; set the initial distance from shaq to drop junk food on
type = VarSet
trigger1 = time = 0
fvar(5)=20
[State LOL] ; steadily move the point of junk drop forwards
type = VarAdd
trigger1 = animelemtime(6) >= 0
trigger1 = animelemtime(7) < 0
fvar(5)=0.2

[State 0, Helper]
type = Helper
trigger1 = animelemtime(6) >= 0
trigger1 = animelemtime(7) < 0
trigger1 = (animelemtime(6)%10)=0
helpertype = normal
name = "junk food"
ID = 2100
stateno = 2101
pos = ceil(ifelse(p2movetype=H,p2dist X,fvar(5))+var(5)),-310 ; if the opponent is in hitstate, junk food is dropped right in the opponent's position instead of in front of Shaq and further
postype = p1
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Junk Food
[Statedef 2101]
type    = A
movetype= A
physics = N
velset = 0,2
anim = 2110

; Have the junk food inherit Shaq's proration
[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = 1
time = 2
value = 0.25+((parent,fvar(13))*0.75) * ifelse((p2statetype=A&&p2movetype!=H)||(parent,var(31)),1.25,1) * ifelse((parent,var(10)=1),2,1)
ignorehitpause = 1

[State determining sprite]
type = VarRandom
trigger1 = time = 0
v = 1
range = 0,9
[State determining horizontal speed]
type = VarRandom
trigger1 = time = 0
v = 2
range = 0,1
[State determining vertical speed]
type = VarRandom
trigger1 = time = 0
v = 3
range = 2,9
[State determining rotation]
type = VarRandom
trigger1 = time = 0
v = 4
range = 1,10
[State 0, set the apearance of the projectile]
type = ChangeAnim
trigger1 = time = 0
value = 2110 + var(1)
ignorehitpause = 1
[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = var(2)
y = var(3)
ignorehitpause = 1
[State 0, Gravity]
type = Gravity
trigger1 = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
ignorehitpause = 1
[State 0, AngleAdd]
type = AngleAdd
trigger1 = 1
value = var(4)
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = Time = 1
attr = A, HP
damage = 18, ifelse(random<500,1,0)
animtype = hard
guardflag = H ; it falls from the sky, of course it has to be an overhead
hitflag = MAFPD ; it has OTG properties too!
pausetime = 0, 0
sparkno = 1
guard.sparkno = -1
sparkxy = 0, 0
hitsound = S5, 2
guardsound = S6, 0
ground.type = Low
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -1.8
air.type = Low
air.velocity = -1.4,9
air.hittime = 22
air.fall = 1
guard.ctrltime = 18
fall.recover = 0
getpower = 0
down.bounce = 0
down.velocity = -2,0
down.hittime = 32
id = 2100

[State ProRation]
type = ParentVarSet
trigger1 = movehit
fvar(13) = (parent,fvar(13)) * 0.95
ignorehitpause = 1
persistent = 0

; If the projectile hits the opponent Mid-air, (s)he shall go down, into the next "gets hit lying down slide a bit" state
; The reason for both of these TargetStates is to make juggling into the Junk Food Rain actually reliable, as with normal Mugen liedown states the opponent tends to get up any time, wasting this super mid-process
[State smack down]
type = TargetState
trigger1 = numtarget(2100)
trigger1 = movehit
trigger1 = !(target(2100),ishelper) || (PlayerIDExist((target(2100),id)) )
trigger1 = target(2100),statetype=A
value = 2105
ID = 2100
ignorehitpause = 1
; Hey, lying down non-helper target, slide some more
[State this method is superior]
type = TargetState
trigger1 = numtarget(2100)
trigger1 = movehit
trigger1 = !(target(2100),ishelper) || (PlayerIDExist((target(2100),id)) )
trigger1 = target(2100),statetype=L
value = 2106
ID = 2100
ignorehitpause = 1

; Bounce off
[State 210, 5]
type = ChangeState
trigger1 = movecontact
trigger2 = pos y >= 0
value = 2102

; Junk food bounces off
[Statedef 2102]
type    = A
movetype= I
physics = N
velset = 0,0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 5
freq = 50
ampl = -3
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
;trigger1 = pos y = [-9,19]
anim = F60
pos = 0,0
postype = p1
facing = 1
sprpriority = -2
ownpal = 1
ignorehitpause = 1
[State 0, fight.snd ground bounce]
type = PlaySnd
trigger1 = time = 0
value = F7,0
[State determining horizontal speed]
type = VarRandom
trigger1 = time = 0
v = 2
range = 2,6
[State determining vertical speed]
type = VarRandom
trigger1 = time = 0
v = 3
range = -7,-1
[State determining rotation]
type = VarRandom
trigger1 = time = 0
v = 4
range = -20,20
[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = var(2)
y = var(3)
ignorehitpause = 1
[State 0, Gravity]
type = Gravity
trigger1 = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
ignorehitpause = 1
[State 0, AngleAdd]
type = AngleAdd
trigger1 = 1
value = var(4)
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = (time%3)=0
flag = invisible
ignorehitpause = 1
[State 0, AssertSpecial] ; remove shadows shall you "Sink" below the ground
type = AssertSpecial
trigger1 = pos y > 0
flag = noshadow
ignorehitpause = 1

[State 210, 5] ; okay, you got deep enough, time to go away
type = DestroySelf
trigger1 = screenpos y >= 300
trigger1 = pos y >= 0

;----------------------------------------------------------------------
; A state for the opponent that goes straight down after getting hit by a junk food
[Statedef 2105]
type = A
movetype = H
physics = N

; pick an animation, preferably a "guy goes down after getting hit straight up to the air" one
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(selfanimexist(5061),5061,5050)
; this will hopefully skip to the last frame of the animation we just picked
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = anim
elem = animelemno(90)
; freeze the animation in case the animation loops
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time
trigger1 = !hitshakeover
value = anim
elem = animelemno(0)

[State 0, HitVelSet]
type = HitVelSet
trigger1 = time = 0
x = 1
y = 1
ignorehitpause = 1

[State 3321, 1] ;Gravity
type = VelAdd
Trigger1 = hitshakeover
y = .88

[State 3321, 4] ; transit straight to the next state when you hit the ground
type = ChangeState
Trigger1 = hitshakeover
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 2106 ;Hit ground

;---------------------------------------------------------------------------
; State for opponent that gets a taste of Burger King while lying down
[Statedef 2106]
type    = L
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0

[State 0, HitVelSet]
type = VelSet
trigger1 = time = 0
trigger1 = prevstateno = 2105
x = -2.2
y = 0

[State 0, HitVelSet]
type = HitVelSet
trigger1 = time = 0
trigger1 = gethitvar(xvel)
x = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, PosFreeze]
type = PosFreeze
trigger1 = !hitshakeover
value = 1
[State 0, VelMul]
type = VelMul
trigger1 = hitshakeover
x = 0.9
[State 0, ChangeAnim] ; display the hit from bounce anim
type = ChangeAnim
trigger1 = !hitshakeover
trigger2 = abs(vel x) >= 1
trigger3 = time = 0
value = ifelse(selfanimexist(5171),5171,5170)
[State 0, ChangeAnim] ; then jump to the liedown anim
type = ChangeAnim
trigger1 = hitshakeover
trigger1 = anim = [5170,5179]
trigger1 = animtime = 0
value = ifelse(selfanimexist(5110+(anim%10)),5110+(anim%10),5110)

[State 0, VarSet] ; so common1.cns's state 5110 wouldn't bother displaying the ground bounce anim again after transiting to it
type = VarSet
trigger1 = time >= 24
sysvar(0) = 1
[State 0, SelfState]
type = SelfState
trigger1 = time >= 24
value = ifelse(!alive,5150,5110) ; if dead, jump to the "dead" state

;---------------------------------------------------------------------------
; SHAQ ATTACK!
; A multi-part super attack that two points you can extend for every single power stock
[Statedef 2200]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 2200

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time < 49
value = ,NA,SA,NP,SP,NT,ST
time = 1
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(6) = 40
[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "OH MY GOD SHAQ'S GONNA EAT ME"
ID = 2890
stateno = 2890
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
[State 0, ]
type = SuperPause
trigger1 = time = 0
time = 60
anim = F100
sound = F20,0
pos = floor(23*const(size.xscale)),floor(-45*const(size.yscale))
movetime = 39
poweradd = -1000
endcmdbuftime = 8
darken = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S4,ifelse(random<500,15,18)
channel = 0
volume = 255
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 19
statetype = A
movetype = A
physics = N
[State 0, VelAdd]
type = VelAdd
trigger1 = statetype = A
y = 0.44
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 19
x = 7
y = -4

[State 0, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,HA
hitflag = MAF
guardflag = MA
getpower = 0,0
givepower = 0,0
animtype = light
damage = 7,0
pausetime = 0,0
sparkno = 0
sparkxy = 0, ceil(-45*const(size.yscale))
hitsound = S5,1
guardsound = S6,0
ground.type = High
ground.slide = 10
ground.hittime = 90
air.hittime = 20
ground.velocity = -2,0
air.velocity = -2,0
guard.hittime = 3
guard.velocity = -12
mindist = ceil(5*const(size.xscale)),0
maxdist = ceil(20*const(size.xscale)),0
p2facing = 1
;snap = 20,0
;mindist = 20,0
;maxdist = 40,25
;p1stateno = 2201
;p2stateno = 0
forcestand = 1
fall = 0
down.bounce = 0
kill = 0
ground.cornerpush.veloff = 0

[State 0, ChangeState] ; gonna kick some ass shall you hit
type = ChangeState
trigger1 = movehit
value = 2201
ignorehitpause = 1

[State 0, ChangeState] ; bounce off and fall on your ass shall you get blocked
type = ChangeState
trigger1 = moveguarded
value = 2209
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = vel y + pos y >= 0
trigger1 = statetype = A
value = 52
ctrl = 0

;---------------------------------------------------------------------------
; SHAQ ATTACK!
[Statedef 2201]
type    = S
movetype= A
physics = S
velset = 2,0
anim = 2201

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.94
ignorehitpause = 1
[State FUQIN SHAQ ATTACK]
type = PlaySnd
trigger1 = anim = 2201
trigger1 = var(21) = 1
trigger1 = fvar(33) >= 1 ; ; only played if the user desires so in the enclosed config.txt
value = S5000,4
channel = 1
ignorehitpause = 1

[State 0, TargetState] ; put the opponnent into a state that puts him/her into a ground state so the super wouldn't be as akward to hit on aerial opponents
type = TargetState
trigger1 = time = 0
trigger1 = !(target,ishelper)
value = 2208
ignorehitpause = 1
persistent = 0
[State 0, TargetState] ; put the opponent in position too
type = TargetBind
trigger1 = time = 0
trigger1 = !(target,ishelper)
pos = ceil(20*const(size.xscale)),0
ignorehitpause = 1
persistent = 0

[State GETREADYFORTHEFOLLOWUP] ; flash to let the player know about the best moment to cancel into the next phase, as the player can go into part deux any time, even waaay too early
type = PalFX
trigger1 = anim = 2201
trigger1 = animelem = 77
time = 8
add = 55,33,11
mul = 256,256,256
sinadd = 100,63,33,3
invertall = 0
color = 220
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S4,28
channel = 0
loop = 1
volume = 255
ignorehitpause = 1

[State 0, WA-PSSSSH]
type = PlaySnd
trigger1 =  anim = 1000
value = S4,11
channel = 0
ignorehitpause = 1
persistent = 0
[State 0, PosSet] ; this is important too, Shaq did hop earlier after all
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1
[State 0, VelSet] ; slide along during the autocombo part
type = VelSet
trigger1 = anim = 2201
x = 2

; these blocks set the variable used for setting the vertical position of the hitspark in acordance of the hits
[State 0, VarSet]
type = VarSet
trigger1 = animelem = 7
trigger2 = animelem = 16
trigger3 = animelem = 38
trigger4 = animelem = 75
var(0) = -61
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = animelem = 12
trigger2 = animelem = 29
trigger3 = animelem = 62
var(0) = -45
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = animelem = 65
trigger2 = animelem = 67
var(0) = -26
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = animelem = 2
var(0) = -57
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = animelem = 53
var(0) = -16
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = animelem = 70
var(0) = -5
ignorehitpause = 1

[State 200, 1]
type = HitDef
triggerall = anim = 2201
trigger1 = animelem = 3
trigger2 = animelem = 8
trigger3 = animelem = 13
trigger4 = animelem = 17
trigger5 = animelem = 24
trigger6 = animelem = 30
trigger7 = animelem = 39
trigger8 = animelem = 54
trigger9 = animelem = 63
trigger10 = animelem = 66
trigger11 = animelem = 68
trigger12 = animelem = 71
trigger13 = animelem = 76
attr = S, HA
damage = 20+hitcount, 0
animtype = hard
guardflag =
hitflag = MAFD
pausetime = 4-var(49), 3
sparkno = 1
sparkxy = ceil(-10*const(size.yscale)), ceil(var(0)*const(size.yscale))
hitsound = S5, ifelse(fvar(33)>=1,99,2)
guardsound = S5, 1
forcestand = 1
mindist = ceil(5*const(size.xscale)),0
maxdist = ceil(20*const(size.xscale)),0 ; keep it close
ground.type = low
ground.slidetime = 5
ground.hittime = 60
ground.velocity = 0
air.type = low
air.velocity = 0,0
air.hittime = 60
fall = 0
air.fall = 0
getpower = 0
envshake.time = 4
envshake.freq = 255
envshake.ampl = -2
kill = 0
ground.cornerpush.veloff = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
trigger1 = anim = 1000
value = S0,7
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = animelem = 10
trigger1 = anim = 1000
attr = S, HA
damage = 50, 0
priority = 6
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 26-var(49), 26
sparkno = 2
sparkxy = ceil(-10*const(size.yscale)), ceil(-66*const(size.yscale))
hitsound = S5, 4
guardsound = S6, 0
ground.type = High
ground.slidetime = 18
ground.hittime  = 26
ground.velocity = -6,-16
air.type = High
air.velocity = -6,-16
air.hittime = 25
yaccel = .88
fall = 1
fall.recover = 0
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.color = 0
getpower = 0
envshake.time = 26
envshake.freq = 200
envshake.ampl = -5
ground.cornerpush.veloff = 0

[State 240, 5]
type = ChangeAnim
trigger1 = anim != 1000
trigger1 = AnimTime = 0
value = 1000

[State 240, 5]
type = ChangeState
trigger1 = anim = 1000
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 2nd Wave!
[Statedef 2202]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 2200

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "OH MY GOD SHAQ'S GONNA EAT ME"
ID = 2890
stateno = 2890
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
[State 0, ]
type = SuperPause
trigger1 = time = 0
time = 40
anim = F101
sound = F20,0
pos = 23,-45
pos = floor(23*const(size.xscale)),floor(-45*const(size.yscale))
movetime = 40
poweradd = -1000
darken = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S4,ifelse(random<500,26,7)
channel = 0
volume = 255
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 19
statetype = A
movetype = A
physics = N
[State 0, VelAdd]
type = VelAdd
trigger1 = statetype = A
y = 0.44
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 19
x = 6
y = -4

[State 0, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,HA
hitflag = MAF
guardflag = MA
getpower = 0,0
givepower = 0,0
animtype = light
damage = 5,0
pausetime = 0,0
sparkno = 0
sparkxy = 0, ceil(-45*const(size.yscale))
hitsound = S5,1
guardsound = S6,0
ground.type = High
ground.slide = 10
ground.hittime = 90
air.hittime = 20
ground.velocity = -2,0
air.velocity = -2,0
mindist = ceil(5*const(size.xscale)),0
maxdist = ceil(28*const(size.xscale)),0
p2facing = 1
;p1stateno = 2203
;p2stateno = 0
forcestand = 1
fall = 0
down.bounce = 0
kill = 0
ground.cornerpush.veloff = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit
value = 2203
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = moveguarded
value = 2209
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = vel y + pos y >= 0
trigger1 = statetype = A
value = 52
ctrl = 0

;---------------------------------------------------------------------------
; Yet another wave
[Statedef 2203]
type    = S
movetype= A
physics = S
velset = 2,0
anim = 2203

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.99
ignorehitpause = 1
[State FUQIN SHAQ ATTACK]
type = PlaySnd
trigger1 = anim = 2203
trigger1 = var(21) = 1
trigger1 = fvar(33) >= 1
value = S5000,4
channel = 1
ignorehitpause = 1

[State 0, TargetState]
type = TargetState
trigger1 = time = 0
trigger1 = !(target,ishelper)
value = 2208
ignorehitpause = 1
persistent = 0
[State 0, TargetState]
type = TargetBind
trigger1 = time = 0
trigger1 = !(target,ishelper)
pos = ceil(20*const(size.xscale)),0
ignorehitpause = 1
persistent = 0

[State GETREADYFORTHEFOLLOWUP]
type = PalFX
trigger1 = anim = 2203
trigger1 = animelem = 99
time = 12
add = 55,33,11
mul = 256,256,256
sinadd = 100,63,33,3
invertall = 0
color = 220
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1
[State 0, VelSet]
type = VelSet
trigger1 = anim = 2203
x = 2
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S4,29
channel = 0
loop = 1
volume = 255
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 =  anim = 1000
value = S4,11
channel = 0
ignorehitpause = 1
persistent = 0
[State 0, VarSet]
type = VarSet
trigger1 = animelem = 6
trigger2 = animelem = 12
trigger3 = animelem = 40
trigger4 = animelem = 48
var(0) = -46
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = animelem = 19
trigger2 = animelem = 27
trigger3 = animelem = 97
var(0) = -61
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = animelem = 54
var(0) = -7
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = animelem = 63
var(0) = -16
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = animelem = 72
trigger2 = animelem = 75
trigger3 = animelem = 77
trigger4 = animelem = 82
var(0) = -46
ignorehitpause = 1

[State 200, 1]
type = HitDef
triggerall = anim = 2203
trigger1 = animelem = 7
trigger2 = animelem = 13
trigger3 = animelem = 20
trigger4 = animelem = 28
trigger5 = animelem = 41
trigger6 = animelem = 49
trigger7 = animelem = 55
trigger8 = animelem = 64
trigger9 = animelem = 73
trigger10 = animelem = 76
trigger11 = animelem = 78
trigger12 = animelem = 83
trigger13 = animelem = 98
attr = S, HA
damage = 30+hitcount, 0
animtype = hard
guardflag =
hitflag = MAFD
pausetime = 4-var(49), 3
sparkno = 2
sparkxy = ceil(-10*const(size.yscale)), ceil(var(0)*const(size.yscale))
hitsound = S5, ifelse(fvar(33)>=1,99,2)
guardsound = S5, 1
forcestand = 1
mindist = ceil(5*const(size.xscale)),0
maxdist = ceil(28*const(size.xscale)),0
ground.type = low
ground.slidetime = 5
ground.hittime = 60
ground.velocity = 0
air.type = low
air.velocity = 0,0
air.hittime = 60
fall = 0
air.fall = 0
getpower = 0
envshake.time = 4
envshake.freq = 255
envshake.ampl = -2
kill = 0
ground.cornerpush.veloff = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
trigger1 = anim = 1000
value = S0,7
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = animelem = 10
trigger1 = anim = 1000
attr = S, HA
damage = 75, 0
priority = 6
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 26-var(49), 26
sparkno = 2
sparkxy = ceil(-10*const(size.yscale)), ceil(-66*const(size.yscale))
hitsound = S5, 4
guardsound = S6, 0
ground.type = High
ground.slidetime = 18
ground.hittime  = 26
ground.velocity = -6,-16
air.type = High
air.velocity = -6,-16
air.hittime = 25
yaccel = .88
fall = 1
fall.recover = 0
palfx.time = 30
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.color = 0
getpower = 0
envshake.time = 26
envshake.freq = 200
envshake.ampl = -5
ground.cornerpush.veloff = 0

[State 240, 5]
type = ChangeAnim
trigger1 = anim != 1000
trigger1 = AnimTime = 0
value = 1000

[State 240, 5]
type = ChangeState
trigger1 = anim = 1000
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; A part of the super in which Shaq turns into a cropped Screencap of Steel and shoots the hell out of the opponent
[Statedef 2204]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 2204
sprpriority = -10
juggle = 0

[State ProRation]
type = VarSet
trigger1 = movehit = 2 ; the hits have no hitpauses so this trigger (which normally kicks in a tick after p1's hitpause ends) is used instead
fvar(13) = fvar(13) * 0.99
ignorehitpause = 1

[State 0, AngleDraw] ; the pic is kinda huge, so let's shrink yourself once you become that pic, okay?
type = AngleDraw
trigger1 = anim = 2205
scale = .5,.5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = anim = 2205
value = SCA
time = 1
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "OH MY GOD SHAQ'S GONNA EAT ME"
ID = 2890
stateno = 2890
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
[State 0, ]
type = SuperPause
trigger1 = time = 0
time = 40
anim = F102
sound = F20,0
pos = 0,-60
pos = 0,floor(-60*const(size.yscale))
movetime = 18
poweradd = -1000
darken = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S4,16
channel = 0
volume = 255
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 2205
trigger1 = Animelemtime(1) = 1
value = S3,8

[State 0, PlayerPush]
type = PlayerPush
trigger1 = anim = 2205
value = 0

[State 0, Explod] ; display a giant effin' fightfx hitspark in front of the muzzle
type = Explod
trigger1 = anim = 2205
trigger1 = Animelemtime(1) = 1
anim = F3
pos = ceil(-76*const(size.xscale)),ceil(-34*const(size.yscale))
postype = p1
scale = 2.5,2.5
sprpriority = -5
ownpal = 1

[State 0, Turn] ; turn in the other direction to make it look like Shaq is spraying wildly
type = Turn
trigger1 = anim = 2205
trigger1 = AnimTime = 0

[State 200, 1]
type = HitDef
trigger1 = anim = 2205
trigger1 = Animelemtime(1) = 1
attr = S, HP
damage = ifelse(prevstateno!=2203,28,27), 0
animtype = diagup
guardflag = M
hitflag = MAFD
pausetime = 0, 0
sparkno = -1
hitsound = 5, 3
guardsound = S5,1
ground.type = low
ground.slidetime = 3
ground.hittime = 60
ground.velocity = -80,-2
air.type = low
air.velocity = -80,-2
air.hittime = 60
fall = 0
air.fall = 1
fall.recover = 0
getpower = 0
sprpriority = -10
p2facing = 1 ; I tried to have the opponent bounce to the left and right sides of the screen as (s)he's getting shot
;p2getp1facing = -1
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
id = 2204

[State WallBounce]
type = TargetState
trigger1 = numtarget(2204)
trigger1 = var(21) = 1
trigger1 = !(target(2204),ishelper) || (PlayerIDExist((target(2204),id)) )
value = 2225
ID = 2204
ignorehitpause = 1

[State 240, 5] ; this will make Shaq actually start blasting out
type = ChangeAnim
trigger1 = anim = 2204
trigger1 = AnimTime = 0
value = 2205

[State 240, 5] ; okay, stop it
type = ChangeState
trigger1 = time >= 200
trigger2 = win
value = 2205
ctrl = 0

; Time to go back to normal
[Statedef 2205]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim = 2206
sprpriority = -10

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; A state meant for the opponent that puts him/her to the ground and makes it no longer "falling"
[Statedef 2208]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 0, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 0
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = 1
statetype = S
physics = S
ignorehitpause = 1

[State 5070, 1]
type = ChangeAnim
trigger1 = time = 0
value = 5000
ignorehitpause = 1

[State 5070, 1]
type = ChangeAnim
trigger1 = anim = 5000
trigger1 = animtime = 0
value = 5005
ignorehitpause = 1

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1

[State 5070, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140

[State 5071, 3]
trigger1 = time >= 45
type = ChangeState
value = 5110

; Shaq bounces back and falls on his bum after getting his super blocked
[Statedef 2209]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 5070

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 4,30
channel = 0
;value = S5000,ifelse(random<500,0,1)

[State 5070, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = -3
y = -4.5
ignorehitpause = 1

[State 0, PosFreeze]
type = PosFreeze
trigger1 = !hitshakeover
value = 1
ignorehitpause = 1

[State 5070, 1]
type = ChangeAnim
trigger1 = !hitshakeover
value = 5070

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = hitshakeover
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
trigger1 = hitshakeover
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = ChangeState
value = 5110

;------------------
; Hit by Steel Shootout - shaking from the hit
; (a custom gethit state)
[Statedef 2225]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1025, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 2225

[State 1025, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 2226

;------------------
; Hit by Steel Shootout - flying through the air
; (a custom gethit state)
[Statedef 2226]
type    = A
movetype= H
physics = N

[State 1026, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1026, Gravity]
type = VelAdd
trigger1 = 1
y = .66

[State 1026, No scroll]
type = ScreenBound
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1026, Hit wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 20
value = 2227

[State 1026, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------
; Hit by Steel Shootout - hit wall
; (a custom gethit state)
[Statedef 2227]
type    = A
movetype= H
physics = N

[State 1027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 2227

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 2228

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 2228]
type    = A
movetype= H
physics = N

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -12.12

[State 1028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 1.6

[State 1028, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 1028, Gravity]
type = VelAdd
trigger1 = 1
y = .88

[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100


; CHAOS DUNK
[Statedef 3000]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3000
facep2 = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time < 49
value = ,NA,SA,NP,SP,NT,ST
time = 1
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(6) = 40
[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "OH MY GOD SHAQ'S GONNA EAT ME"
ID = 2890
stateno = 2890
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
[State 0, ]
type = SuperPause
trigger1 = time = 0
time = 39
anim = F102
sound = F20,0
pos = floor(23*const(size.xscale)),floor(-45*const(size.yscale))
movetime = 39
poweradd = -3000
endcmdbuftime = 8
darken = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S4,18
channel = 0
volume = 255
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 22
value = S11,0
channel = 0
ignorehitpause = 1

; It's a grab you can combo into, hopy c---
[State 800, 1]
type = HitDef
Trigger1 = animelem = 19
attr = S, HT
hitflag = M
priority = 3, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3010
fall = 1
id = 3000
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 0, StateTypeSet] ; CHANCE LOST
type = StateTypeSet
trigger1 = animelem = 20
movetype = I

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 28
value = S3,0
channel = 0
ignorehitpause = 1

; upon miss, Shaq has to pay by rolling back on his bum
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 18
x = 14*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 20
trigger2 = animelem = 21
x = 6*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 22
trigger2 = animelem = 23
trigger3 = animelem = 25
trigger4 = animelem = 26
x = -12*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 24
x = -8*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 29
x = -2*const(size.xscale)
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 27
trigger2 = animelem = 28
x = -4*const(size.xscale)
ignorehitpause = 1

; GET UP AND FIGHT
[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 5120
ctrl = 0

;----------------------------------------------------------------------
; Shaq just grabbed the opponent and shit will go real
[Statedef 3010]
type = A
movetype= A
physics = N
anim = 3010

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

[State 0, TargetState]
type = TargetState
trigger1 = time = 0
value = 3020
id = 3000

[State 0, Grab Sound]
type = PlaySnd
trigger1 = time = 0
value = S5,9

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
trigger2 = animelem = 6
x = -2*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = -4*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 4
x = -19*const(size.xscale)
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 5
x = -3*const(size.xscale)

[State 810, Bind 2]
type = TargetBind
trigger1 = animelemno(0)<2
pos = 22*const(size.xscale), 0

[State 810, Bind 3]
type = TargetBind
trigger1 = animelemno(0)>=2
trigger1 = animelemno(0)<3
pos = 18*const(size.xscale), -6*const(size.yscale)

[State 810, Bind 4]
type = TargetBind
trigger1 = animelemno(0)>=3
trigger1 = animelemno(0)<4
pos = 18*const(size.xscale), -42*const(size.yscale)

[State 810, Bind 5]
type = TargetBind
trigger1 = animelemno(0)>=4
trigger1 = animelemno(0)<5
pos = 0, -37*const(size.yscale)

[State 810, Bind 6]
type = TargetBind
trigger1 = animelemno(0)>=5
pos = -10*const(size.xscale), -11*const(size.yscale)

[State 0, The Puff of Smoke]
type = Explod
trigger1 = animelemtime(6) > 0
trigger1 = vel y < 0
trigger1 = (time%3)=0 || (screenpos y = [0,240])
anim = 3030
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 0, The Fart of Fire for falling down as if Shaq is supposed to be on fire]
type = Explod
trigger1 = animelemtime(6) > 0
trigger1 = vel y > 0
trigger1 = (time%3)=0 || (screenpos y = [0,240])
anim = 3031
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = -3
ownpal = 1
ignorehitpause = 1


[State 0, CHAOS DUUUUUUUUUUUUUUUUUUUUUUUUUUU]
type = PlaySnd
trigger1 = animelem = 6
value = S4,27
channel = 0
persistent = 0
[State 0, WHOOSH]
type = PlaySnd
trigger1 = animelem = 6
value = S0,4
persistent = 0

[State 0, RISE UP]
type = VelSet
trigger1 = animelem = 6
x = -2
y = -47
persistent = 0

[State 0, VelMul]
type = VelMul
trigger1 = animelemtime(6) > 0
x = 0.92

[State 0, Gravity]
type = VelAdd
trigger1 = animelemtime(6) > 0
y = 0.44

[State 0, SLAM]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 3011
ctrl = 0

;----------------------------------------------------------------------
; Shaq effin' explodes
[Statedef 3011]
type = A
movetype= A
physics = N
anim = 3011
velset = 0,0

[State 0, Raining Blood, or.... not quite like that]
type = BgPalFX
trigger1 = (time%8)=0
time = 10
add = 40,-70,-200
mul = 256,256,256
sinadd = 20,15,0,10
;invertall = 1
color = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = F3
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = 65535
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 0, Big Explod]
type = Explod
trigger1 = time = 0
anim = 3035
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
scale = const(size.xscale),const(size.yscale)
sprpriority = 20
ownpal = 1
ignorehitpause = 1
[State 0, BOOOOOOOOM]
type = PlaySnd
trigger1 = time = 0
value = S3030,0
channel = 0

[State Random Explosion around p1]
type = Explod
trigger1 = (time%10) = 0
anim = 3034
pos = -16+random%32,-16+random%32
postype = p1
facing = ifelse(random<500,-1,1)
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = -15+random%30
ownpal = 1
ignorehitpause = 1
[State Random Explosion around p2]
type = Explod
trigger1 = (time%10) = 5
anim = 3034
pos = -16+random%32,-16+random%32
postype = p2
facing = ifelse(random<500,-1,1)
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = -15+random%30
ownpal = 1
ignorehitpause = 1
[State 0, EnvShake]
type = EnvShake
triggerall = time >= 30
trigger1 = (time%10) = 0
trigger2 = (time%10) = 5
time = 16
freq = 255
ampl = -4
[State BOO-BOO-BOO-BOO-BOOM]
type = PlaySnd
trigger1 = (time%10) = 0
trigger2 = (time%10) = 5
value = S3031,random%2
channel = 1

[State Random explosions everywhere]
type = Explod
trigger1 = (time%7) = 0
anim = 3033
pos = random%320,random%240
postype = left
facing = ifelse(random<500,-1,1)
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = 10
ownpal = 1
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = (time%7) = 0
value = S3032,random%3
channel = 2

[State Random smoke everywhere]
type = Explod
trigger1 = (time%6) = 0
anim = 3032
pos = 0,0
postype = p1
facing = ifelse(random<500,-1,1)
vfacing = ifelse(random<500,-1,1)
bindtime = 1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = -3
ownpal = 1
ignorehitpause = 1


[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 77
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 0
color = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State Yeah, don't forget about the damage. And yes, it being not prorated is intentional]
type = TargetLifeAdd
trigger1 = time = 0
value = -777

[State And letting the opponent go]
type = TargetState
trigger1 = time = 0
value = 3021
id = 3000

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 30
freq = 255
ampl = -12

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S5,4

[State 810, Bind 2]
type = TargetBind
trigger1 = animelemtime(2)<0
pos = 0, 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = -2.5
y = -11
persistent = 0

[State 0, VelMul]
type = VelMul
trigger1 = animelemtime(2) > 0
x = 0.99

[State 0, VelMul]
type = VelAdd
trigger1 = animelemtime(2) > 0
y = 0.44

[State 0, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100
ctrl = 0



;----------------------------------------------------------------------
; P2 is doomed
[Statedef 3020]
type = A
movetype = H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3020

[State 0, SelfState]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

;----------------------------------------------------------------------
; P2 is blown up
[Statedef 3021]
type = A
movetype = H
physics = N
velset = 0,0

[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 77
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 0
color = 0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3021

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = -2.5
y = -12
persistent = 0

[State 0, VelMul]
type = VelMul
trigger1 = animelemtime(2) > 0
x = 0.99

[State 0, VelMul]
type = VelAdd
trigger1 = animelemtime(2) > 0
y = 0.47

[State 0, ChangeState]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100
ctrl = 0

; Super BG Effect
[Statedef 2890]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
velset = 0,0
anim = 9741

[State Pick a face]
type = VarSet
trigger1 = time = 0
var(0) = random%3
[State A default duration]
type = VarSet
trigger1 = time = 0
var(1) = 39
[State A duration for select supers to match with their superpausetimes]
type = VarSet
triggerall = time = 0
trigger1 = parent,stateno = 2000
trigger2 = parent,stateno = 2202
var(1) = 40
[State A duration for select supers to match with their superpausetimes]
type = VarSet
triggerall = time = 0
trigger1 = parent,stateno = 2100
trigger2 = parent,stateno = 2200
var(1) = 60

[State 0, Random sound]
type = PlaySnd
trigger1 = time = 0
;value = 3030+var(0),random%(var(0)+1)
value = 3032,random%3

; The fvar(0) is a value that actually gets subtracted from 1 for the explod's scale as this method is easier for me to animate a scaling in a "start growing up fast and go increasingly slower" fashion
[State initial Scale]
type = VarSet
trigger1 = time = 0
fvar(0) = 1
[State 0, VarSet]
type = VarSet
trigger1 = numexplod(2890)
fvar(0) = fvar(0) * 0.95
[State 0, VarSet]
type = VarAdd
trigger1 = !numexplod(2890)
fvar(0) = 0.05

[State 0, Create the Explod]
type = Explod
trigger1 = time = 0
anim = 2890+random%2 ; oh wait var(0) isn't actually used nevermind
ID = 2890
pos = 160,120
postype = left
facing = 1
vfacing = 1
bindtime = 1
random = ceil(48*fvar(0)),ceil(48*fvar(0))
removetime = var(1)
pausemovetime = 65535
supermovetime = 65535
scale = 1-fvar(0),1-fvar(0)
sprpriority = -100
ownpal = 1

[State 0, Update the explod]
type = ModifyExplod
trigger1 = numexplod(2890)
ID = 2890
pos = 160,120
postype = left
facing = 1
vfacing = 1
bindtime = 1
random = ceil(48*fvar(0)),ceil(48*fvar(0))
scale = 1-fvar(0),1-fvar(0)

[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 6
mul = ceil(256*fvar(0)),ceil(256*fvar(0)),ceil(256*fvar(0))
;color = 1+ceil(255*fvar(0))

[State Okay I'm done]
type = DestroySelf
trigger1 = !numexplod(2890)
trigger1 = time
trigger1 = fvar(0) >= 1

; Super K.O. finnish
; An effect that consist of 3 explods that scale differently at the same interval or how I would describe it with my limited english skills, emulating a blur-like effect
[Statedef 2999]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
velset = 0,0
anim = 9741

[State fade away]
type = VarAdd
trigger1 = time <= 200
var(0) = -3
[State increase scale]
type = VarAdd
trigger1 = time <= 200
fvar(0) = 0.1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 2999
ID = 2999
pos = 160,120
postype = left
bindtime = -1
removetime = 85
supermovetime = 65535
pausemovetime = 65535
scale = 1,1
sprpriority = 100
ontop = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 2999
ID = 2998
pos = 160,120
postype = left
bindtime = -1
removetime = 85
supermovetime = 65535
pausemovetime = 65535
scale = 1,1
sprpriority = 100
ontop = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 2999
ID = 2997
pos = 160,120
postype = left
bindtime = -1
removetime = 85
supermovetime = 65535
pausemovetime = 65535
scale = 1,1
sprpriority = 100
ontop = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(2999)
ID = 2999
scale = 1+(fvar(0)/4),1+(fvar(0)/4)
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(2998)
ID = 2998
scale = 1-(fvar(0)/8),1-(fvar(0)/8)
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(2997)
ID = 2997
scale = 1+(fvar(0)/20),1+(fvar(0)/20)
[State 0, PalFX]
type = PalFX
trigger1 = time <= 85
time = 3
add = var(0),var(0),var(0)
color = 256+floor(var(0)/2)
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S3,9
volume = 255
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S5,4
volume = 100
freqmul = 0.5


;==================================================================================
;======| RELACIONADO À AI - AI RELATED |===========================================
;==================================================================================

; (Credit to ANMC, Bagaliao, and FlowaGirl for the basic helper method concept.)
;
;------------------
; AI Activation Helper State - Primary Version
; (Credit to YongMing for the basic HitPause bugfix concept.)
;
; var(1) - First tick button activation prevention.
; var(2) - Used for pause/superpause and custom state check, basically.
; var(3) - (Super/)Pause & custom state-triggered dir detection disabler.
; var(4) - Persistent direction command detection enabler (due to 2002.04.14).
; var(9) - AutoTurn bug fixer.
; parent's var(57) - Parent's GameTime var, for pause and custom state check.
; parent's var(59) - Parent's primary AI variable.
;
; The code in this state is mostly simply copy/pasteable.
; But if you're using different indices for the parent's variables,
; or if you change your character's basic commands' names, you'll
; of course need to change the code in this state accordingly.

[StateDef 9741]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9741, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 0

[State 9741, UglyHack]
type = VarSet
trigger1 = !var(1)
var(2) = 2

[State 9741, PauseCheck]
type = VarSet
trigger1 = GameTime > Parent,var(57)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2
trigger4 = Parent,var(58)
trigger5 = var(3):=0
var(2) = (var(3):=1)+(var(4):=0)

[State 9741, Facing]
type = Turn
trigger1 = var(9):=(Facing != Parent,Facing)
trigger1 = !(var(4):=0)

[State 9741, DirTurnOnAI]
type = ParentVarSet
triggerall = !(var(3) || var(9))
trigger1 = Parent,command = "holdfwd"
trigger2 = Parent,command = "holdback"
trigger3 = Parent,command = "holdup"
trigger4 = Parent,command = "holddown"
trigger5 = !(var(4):=1)
var(58) = var(4)

[State 9741, DirTurnOffAI]
type = ParentVarSet
triggerall = !var(3)
triggerall = Parent,var(58)
trigger1 = command = "holdfwd"
trigger1 = Parent,command = "holdfwd"
trigger2 = command = "holdback"
trigger2 = Parent,command = "holdback"
trigger3 = command = "holdup"
trigger3 = Parent,command = "holdup"
trigger4 = command = "holddown"
trigger4 = Parent,command = "holddown"
var(58) = var(4):=0

[State 9741, ButtonTurnOnAI]
type = ParentVarSet
triggerall = !var(2)
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
var(58) = 1

[State 9741, ButtonTurnOffAI]
type = ParentVarSet
triggerall = !var(2)
trigger1 = command = "a"
trigger1 = Parent,command = "a"
trigger2 = command = "b"
trigger2 = Parent,command = "b"
trigger3 = command = "c"
trigger3 = Parent,command = "c"
trigger4 = command = "x"
trigger4 = Parent,command = "x"
trigger5 = command = "y"
trigger5 = Parent,command = "y"
trigger6 = command = "z"
trigger6 = Parent,command = "z"
trigger7 = command = "start"
trigger7 = Parent,command = "start"
var(58) = -1

[State 9741, UnPauseCheck]
type = VarSet
triggerall = var(2)
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
trigger8 = var(2) = 2
trigger8 = var(2):=0
var(2) = 2

[State 9741, Goodbye]
type = DestroySelf
triggerall = var(1):=1
trigger1 = Parent,var(58)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2

;------------------
; AI Activation Helper State - Compatibly Partnered Version
;
; var(1) - First tick dir activation prevention
; var(2) - Used for pause/superpause and custom state check, basically.
; var(3) - (Super/)Pause & custom state-triggered dir detection disabler.
; var(4) - Hitpause check.
; var(5) - No button on previous tick.
; var(6) - Any dir on this tick.
; var(7) - Any button on this tick.
; var(8) - Matching partner button detected.
; var(9) - AutoTurn bug fixer.
; parent's var(57) - Parent's GameTime var, for pause and custom state check.
; parent's var(59) - Parent's primary AI variable.
;
; The code in this state is mostly simply copy/pasteable.
; But if you're using different indices for the parent's variables,
; or if you change your character's basic commands' names, you'll
; of course need to change the code in this state accordingly.

[StateDef 9742]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9742, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 0

[State 9742, UglyHack]
type = VarSet
trigger1 = !var(1)
var(2) = var(3):=2

[State 9742, PauseCheck]
type = VarSet
trigger1 = GameTime > Parent,var(57)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2
trigger4 = Parent,var(58)
trigger5 = var(3):=0
var(2) = var(3):=1

[State 9742, Facing]
type = Turn
trigger1 = var(9):=(Facing != Parent,Facing)

[State 9742, ParentDirCheck]
type = VarSet
trigger1 = Parent,command = "holdfwd"
trigger2 = Parent,command = "holdback"
trigger3 = Parent,command = "holdup"
trigger4 = Parent,command = "holddown"
trigger5 = var(6):=0
var(6) = 1

[State 9742, BufferCheck]
type = VarSet
trigger1 = var(3) || var(4) || var(10)
var(10) = var(6)

[State 9742, ParentButtonCheck]
type = VarSet
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
trigger8 = var(7):=0
var(7) = 1

[State 9742, SameButtonCheck]
type = VarSet
triggerall = var(7)
triggerall = !var(2)
triggerall = NumPartner
trigger1 = Parent,command = "a"
trigger1 = Partner,command = "a"
trigger2 = Parent,command = "b"
trigger2 = Partner,command = "b"
trigger3 = Parent,command = "c"
trigger3 = Partner,command = "c"
trigger4 = Parent,command = "x"
trigger4 = Partner,command = "x"
trigger5 = Parent,command = "y"
trigger5 = Partner,command = "y"
trigger6 = Parent,command = "z"
trigger6 = Partner,command = "z"
trigger7 = Parent,command = "start"
trigger7 = Partner,command = "start"
trigger8 = var(8):=0
var(8) = 1

[State 9742, DirTurnOnAI]
type = ParentVarSet
trigger1 = var(6)
trigger1 = !(var(9) || var(10))
var(58) = 1

[State 9742, DirTurnOffAI]
type = ParentVarSet
triggerall = var(6)
triggerall = !var(3)
triggerall = Parent,var(58)
trigger1 = command = "holdfwd"
trigger1 = Parent,command = "holdfwd"
trigger2 = command = "holdback"
trigger2 = Parent,command = "holdback"
trigger3 = command = "holdup"
trigger3 = Parent,command = "holdup"
trigger4 = command = "holddown"
trigger4 = Parent,command = "holddown"
var(58) = 0

[State 9742, ButtonTurnOnAI]
type = ParentVarSet
trigger1 = var(5) && var(7)
trigger1 = !(var(2) || var(8))
var(58) = 1

[State 9742, ButtonTurnOffAI]
type = ParentVarSet
triggerall = var(7)
triggerall = !(var(2) || var(8))
trigger1 = command = "a"
trigger1 = Parent,command = "a"
trigger2 = command = "b"
trigger2 = Parent,command = "b"
trigger3 = command = "c"
trigger3 = Parent,command = "c"
trigger4 = command = "x"
trigger4 = Parent,command = "x"
trigger5 = command = "y"
trigger5 = Parent,command = "y"
trigger6 = command = "z"
trigger6 = Parent,command = "z"
trigger7 = command = "start"
trigger7 = Parent,command = "start"
var(58) = -1

[State 9742, UnPauseCheck]
type = VarSet
triggerall = var(2)
triggerall = !var(4)
trigger1 = var(7)
trigger2 = var(2) = 2
trigger2 = var(2):=0
var(2) = 2

[State 9742, Goodbye]
type = DestroySelf
trigger1 = Parent,var(58)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2

[State 9742, HitPauseCheck]
type = VarSet
trigger1 = var(6) || var(7)
trigger2 = !(Parent,HitPauseTime)
var(4) = Parent,HitPauseTime

[State 9742, Delay]
type = VarSet
trigger1 = var(1):=1
var(5) = !var(7)

;------------------
; XOR Method's HitPauseTime Helper State

[StateDef 9743]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9743, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 0

[State 9743, HitPauseTime]
type = VarSet
trigger1 = !(Parent,HitPauseTime)
trigger2 = (GameTime>Parent,var(57))
var(1) = Parent,HitPauseTime

[State 9742, Goodbye]
type = DestroySelf
trigger1 = (Parent,var(59) = 1)
trigger2 = !(Parent,Alive)
trigger3 = (RoundState != 2)

; A helper of a pulsing red shadow behind Shaq that denotes that he has the double attack power
[Statedef 666]
statetype = S
movetype = I
physics = N
sprpriority = -30

; As the animations will all have the collision boxes, the helpers has to be unhittable
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add1

; This will make the shadow have the exact same frame Shaq is in
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = parent,anim
elem = parent,animelemno(0)

; Turn the shadow with Shaq
[State 0, Turn]
type = Turn
trigger1 = facing!=parent,facing

; This makes the shadow change his size in a pulsing way
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1.15 + (sin(gametime*.16)*.1),1.15 + (sin(gametime*.16)*.1)

; Make it all red
[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 2
add = 256,0,0
mul = 128,0,0
invertall = 0
color = 0

; just in case, the shadow cannot push
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

; make the shadow stick to Shaq's position
[State 0, PosAdd]
type = PosAdd
trigger1 = 1
x = parentdist x
y = parentdist y

; Shadow, chances are I may die, use up my power or just win/lose the battle. Either way, I won't need you
[State 0, DestroySelf]
type = DestroySelf
trigger1 = !parent,alive
trigger2 = parent,var(10)=0
trigger3 = roundstate!=2



;==================================================================================
;==================================================================================
;==================================================================================

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[StateDef -2]

; if you're making a 10ov.st and copied the statedef -2 in it's entirety, uncomment this strcl so e.g. the hitpauses in both mugen versions would be the same
;[State ME AM USING 1.0]
;type = VarSet
;trigger1 = var(49) != 1
;var(49) = 1
;ignorehitpause = 1

[State -2, Movehitoner] ; this variable counts up when Shaq is in a hitpause, otherwise it resets to zero
type = VarSet
trigger1 = 1
var(21) = ifelse(movehit=1,var(21)+1,0)
ignorehitpause = 1
[State -2, Counter?] ; if Shaq isn't just hitting the opponent, this variable changes whenever his opponent is attacking or not
type = VarSet
trigger1 = var(21) != 1
var(31) = (p2movetype=A)
ignorehitpause = 1
[State -2, COUNTER!] ; denote a counter hit with an audio cue
type = PlaySnd
trigger1 = stateno != 207
trigger1 = stateno != [800,899]
trigger1 = var(31) = 1
trigger1 = var(21) = 1
value = S5,10
ignorehitpause = 1
[State 0, Helper] ; this spawns the config.txt helper so the settings here can have any effect
type = Helper
trigger1 = roundstate < 2
trigger1 = !numhelper(444)
helpertype = normal
name = "CONFIG"
ID = 444
stateno = 444
pos = 444,444
postype = p1
facing = 1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

; Stop one sound (the Boombox music in this case) if the intro is skipped
[State IntroSkip]
type = VarAdd
trigger1 = var(29) < 5
trigger1 = roundstate = 2
var(29) = 1
[State IntroSkip]
type = StopSnd
trigger1 = var(29) = 1
channel = 1
ignorehitpause = 1

; A KOF-esque KOF limiter that kicks in for at least 12 ticks after Shaq jumps, whenever his opponent his mid-air or when his opponent is guarding
[State Limiter]
type = VarSet
trigger1 = stateno = 40
trigger2 = statetype = A
trigger2 = movecontact
trigger3 = p2stateno = [120,169]
var(8) = 12
[State Limiter]
type = VarAdd
trigger1 = var(8) > 0
var(8) = -1

[State 0, ] ; This picks the winquote for certain characters
type = Null
triggerall = !var(20)
trigger1 = p2name = "Felicia" || p4name = "Felicia"
trigger1 = (var(20) := 1)
trigger2 = p2name = "Lucky Glauber" || p4name = "Lucky Glauber"
trigger2 = (var(20) := 2)
trigger3 = p2name = "cvsfelicia" || p4name = "cvsfelicia"
trigger3 = (var(20) := 1)
trigger4 = p2name = "Kung Fu Man" || p4name = "Kung Fu Man"
trigger4 = (var(20) := 1)
ignorehitpause = 1

[State -1, Cheese Kill Check] ; for some reason this doesn't work
type = ChangeState
trigger1 = PrevStateNo = [120,140]
trigger1 = !alive
trigger1 = statetype != A
trigger1 = stateno = [5000,5070]
value = 5950

[State 0, Helper] ; this spawns a shadow whenever Shaq has the Double Power up
type = Helper
trigger1 = var(10) = 1
trigger1 = numhelper(666)=0
helpertype = normal ;player
name = "FURRIES!!!"
ID = 666
stateno = 666
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State 0, OUCH]
type = PlaySnd
triggerall = alive
trigger1 = (stateno = 5000) || (stateno = 5010) || (stateno = 5020) || (stateno = 5070)
trigger1 = time = 0
trigger2 = (stateno != 5000) && (stateno != 5010) && (stateno != 5020) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
value = 5000,0+random%7
volume = 255
channel = 0
ignorehitpause = 1

[State 0, Complain after getting up]
type = PlaySnd
trigger1 = stateno = 5120
trigger1 = time = 1
trigger1 = random < 500
trigger1 = roundstate < 3
value = 5120,random%4
channel = 0
volume = 255

[State Prevent the prorator from going too low. You can change the minimal proration rate if you want, just make sure the value in the trigger and actual varset match]
type = VarSet
trigger1 = fvar(13) < 0.15
fvar(13) = 0.15
ignorehitpause = 1
[State Prorator Reset]
type = VarSet
trigger1 = !numenemy
trigger2 = p2movetype != H || (!enemynear,gethitvar(hitcount))
trigger2 = !movehit || movereversed
trigger3 = p2stateno = 5120
fvar(13) = 1
ignorehitpause = 1
; this sets the attack power. It's based on proration (with a special formula that makes the proration affect only 75% of total damage during supers), boosted 25% upon counter hits or upon hitting an aerial opponent, and further boosted 200% with the Double Power Up On
[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = 1
time = 2
value = ( ifelse((stateno=[2000,3900]), 0.25+(fvar(13)*0.75) ,fvar(13))  ) * ifelse((p2statetype=A&&p2movetype!=H)||var(31),1.25,1) * ifelse(var(10)=1,2,1)
ignorehitpause = 1

; this makes the double power wear off after hitting, reaching to the end of the attack, and canceling
[State 0, VarSet]
type = VarSet
triggerall = var(10) = 1
trigger1 = movecontact
trigger1 = (stateno != 2200) && (stateno != 2201)
trigger2 = prevstateno = [200,4999]
trigger2 = (prevstateno != 2200) && (stateno != 2201)
trigger3 = stateno = [200,4999]
trigger3 = animtime = 0
var(10) = 0
ignorehitpause = 1

; Within StateDef -2, none of your own AI-related code should be placed
; above these next two controllers.

; There was no air-blocking in Shaq Fu
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
ignorehitpause = 1
flag = noairguard

[State -2, StopAI]
type = VarSet
triggerall = var(58) > 0 && !IsHelper
trigger1 = RoundState != 2
trigger2 = !Alive
var(58) = -2
IgnoreHitPause = 1

; This controller is optional.  It allows you treat the AI flag as a boolean
; value rather than an integer value, letting you trigger your AI directives
; with "var(0)" instead of "var(58)>0", and letting you make moves usable only
; by humans by using "!var(0)" instead of "var(58)<1", thus slightly improving
; the size and efficiency of your code.
; Another benefit is that it makes it much easier for users to disable your AI,
; if they so choose.
[State -2, Simplifier]
type = VarSet
triggerall = !IsHelper
trigger1 = var(58) = 1
trigger2 = var(55):=0
var(55) = floor(fvar(34)) ;  In case you are about to make a 10ov.st and copy the statedef -2, replace the value of this varset to ifelse((roundstate<=2),ailevel,0). Also don't forget to replace the triggers with just !ishelper
IgnoreHitPause = 1

[State ANTI-MINDGAME-GUARD]
type = VarAdd
triggerall = var(50) < 120
trigger1 = p2movetype = A
trigger1 = stateno = [120,169]
var(50) = 1
ignorehitpause = 1
[State ANTI-MINDGAME-GUARD]
type = VarSet
triggerall = var(50) > 0
trigger1 = stateno = [150,155]
trigger1 = time = 1
var(50) = ceil(var(50)*0.8)
ignorehitpause = 1
[State ANTI-MINDGAME-GUARD]
type = VarAdd
triggerall = var(50) > 0
triggerall = (gametime%3)=0
trigger1 = p2movetype != A
trigger2 = stateno != [120,169]
var(50) = -1
ignorehitpause = 1
[State ANTI-MINDGAME-TH] ; circumstances in which the best defense is assumed to be offense
type = VarSet
trigger1 = numenemy
trigger1 = var(55)
var(51) = (enemynear,HitDefAttr = SCA,AT) || (var(50) > 20) || ((abs(enemynear,animtime) <= enemynear,moveguarded ))
ignorehitpause = 1

[State 0, ]
type = DisplayToClipboard
trigger1 = 1
text = "pro = %f, x = %f | y = %f | real = %f"
params = fvar(13),(p2bodydist x / const(size.xscale)),(p2bodydist y / const(size.yscale)),p2bodydist x
ignorehitpause = 1

;================================================================================
; ------- KOF Cornerpush System by Vans --------
;===============================================================================
[State -2, Superpause Check]
type = VarAdd
trigger1 = Var(6)
var(6) = -1

[State -2, Reset Time counter]
type = VarSet
trigger1 = movecontact = 1
var(12) = 0

[State -2, Accel]
type = VarSet
triggerall = roundstate = 2
triggerall = Var(6) <= 0
triggerall = numtarget >= 1
trigger1 = target, hitshakeover
fvar(6) = (target, gethitvar(xvel)*exp((-0.1886)*((var(12)))))
[State -2, Push]
type = PosAdd
triggerall = roundstate = 2
triggerall = !var(6)
triggerall = numtarget >= 1
triggerall = (target, BackEdgeBodyDist <= 0) || (target, FrontEdgeBodyDist <= 0)
triggerall = ProjContact = 0, < 50
triggerall = stateno != [801,899]
triggerall = stateno != [2200,2209]
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
trigger1 = Statetype != A
trigger2 = stateno = 235
trigger3 = stateno = 1300
trigger4 = stateno = 240
x = ifelse(facing = -1,fvar(6),-fvar(6))

[State -2, Increase]
type = VarSet
triggerall = Var(6) <= 0
triggerall = var(12)
trigger1 = numtarget >= 1
trigger1 = target, hitshakeover
var(12) = var(12)+1

[State -2, Time counter]
type = VarSet
trigger1 = !var(12)
trigger1 = fvar(6)
var(12) = 1

[State -2, Freeze Pos During Superpause]
type = PosFreeze
trigger1 = Var(6)
value = 1

[State -2, Drop]
type = VarSet
triggerall = fvar(6)
trigger1 = !numtarget
trigger2 = projcontact = 1
trigger3 = movecontact = 1
fvar(6) = 0
ignorehitpause = 1

[State -2, Drop]
type = VarSet
triggerall = fvar(8)
trigger1 = !numtarget
trigger2 = projcontact = 1
trigger3 = numtarget >= 1 && target, gethitvar(xvel) = 0
var(17) = 0

; Spawn a super hyper combo finish effect in case Shaq wins by a super
[State 0, Helper]
type = Helper
triggerall = winko
triggerall = !numhelper(2999)
triggerall = roundstate != 4
trigger1 = stateno = [2000,3011]
trigger2 = numhelper(2000) || numhelper(2100)
helpertype = normal
name = "Super Finish FX"
ID = 2999
stateno = 2999
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1


;==================================================================================
;==================================================================================
;==================================================================================


;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

; Straight outta POTS
[State -3, Prevent Undergound Juggles]
type= targetbind
trigger1 =stateno!=[800,890] ; better exclude this happening during throws
trigger1 =stateno!=[415,440] ; as well as attacks that can OTG
trigger1 =stateno!=3010
trigger1= movehit=1
trigger1= numtarget=1 && numenemy
trigger1= (target,time<=1) && (target,ID=enemynear,ID); this is just to prevent Simul issues as usual
trigger1= !(target,hitshakeover) && (target, hitfall) && (target, pos y>0)
trigger1= !(target,statetype=L) && !(target,stateno=[5080,5120])
pos= ceil(p2dist x), ceil(-pos y); keeps P2 at the same horizontal distance, but resets his Y position
ignorehitpause= 1

[State -3, Variable Height]
type= playerpush
triggerall= statetype=A && movetype!=H && numenemy
triggerall= p2bodydist x = [-(enemynear,const(size.ground.back) + enemynear,const(size.ground.front)), 0]; checks if both characters are within each other's width
trigger1= p2statetype=S
trigger1= p2dist y >= (enemynear,const(size.height) - 22)
trigger2= p2statetype=C
trigger2= p2dist y >= (enemynear,const(size.height) - 48)
trigger3= p2statetype=L
trigger3= p2dist y >= 11
value= 0
ignorehitpause= 1



;==================================================================================
;======| RELACIONADO À AI - AI RELATED |===========================================
;==================================================================================

[State -3, SetAI]
type = VarSet
triggerall = Alive && !IsHelper
triggerall = IsHomeTeam
trigger1 = TeamSide = 2
trigger2 = MatchNo > 1
var(58) = 1

[State -3, AI Helper - Compatibly Partnered Version]
type = Helper
trigger1 = !var(58) && !IsHelper
trigger1 = !NumHelper(9742)
trigger1 = Alive && RoundState = 2
trigger1 = NumPartner
trigger1 = Partner,SelfAnimExist(9741)
HelperType = normal
name = "AI Helper (Simul Version)"
ID = 9742
pos = 9999999,99999
StateNo = 9742
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

; If you want to use the Guard mode, Dummy mode, Distance, or Button jam dummy
; control options in Training mode without activating the dummy's AI while
; working on the character, then all you need to do is temporarily disable
; this controller.  Or, if you want to permanently disable this controller in
; Training mode, then you could use the Training mode detection code available
; from my site ( http://www.mugenguild.net/~winane/ ), and then just add a
; "(var(59)&63)>30" triggerall to this controller.
; Alternatively, you can just set "Dummy control" to "Manual", press a P2 button
; to kill the AI helper, and then set dummy control back to "Cooperative".  (In
; fact, setting dummy control to manual isn't even necessary, if you press the
; P2 button prior to the first time you pause.)
[State -3, AI Helper]
type = Helper
triggerall = !var(58) && !IsHelper
triggerall = !NumHelper(9741)
triggerall = Alive && RoundState = 2
trigger1 = !NumPartner
trigger2 = !(Partner,SelfAnimExist(9741))
HelperType = normal
name = "AI Helper"
ID = 9741
pos = 9999999,99999
StateNo = 9741
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, TurnBackOnAI]
type = VarSet
trigger1 = var(58) = -2 && !IsHelper
trigger1 = Alive && RoundState = 2
var(58) = 1

; This method works somewhat in Linux Mugen version 2002.04.14,
; whereas the old humanly-impossible commands method does not.
; It is very important that this controller NOT be moved to State -2.
; Note that this part won't work nearly as well if AI.Cheat is turned off
; in mugen.cfg.
[State -3, XOR]
type = VarSet
triggerall = var(58)!=1 && !IsHelper
triggerall = !var(56)
triggerall = var(57) = GameTime-1
trigger1 = command = "a" ^^ command = "a2"
trigger2 = command = "b" ^^ command = "b2"
trigger3 = command = "c" ^^ command = "c2"
trigger4 = command = "x" ^^ command = "x2"
trigger5 = command = "y" ^^ command = "y2"
trigger6 = command = "z" ^^ command = "z2"
trigger7 = command = "start" ^^ command = "start2"
trigger8 = command = "holda" ^^ command = "holda2"
trigger9 = command = "holdb" ^^ command = "holdb2"
trigger10 = command = "holdc" ^^ command = "holdc2"
trigger11 = command = "holdx" ^^ command = "holdx2"
trigger12 = command = "holdy" ^^ command = "holdy2"
trigger13 = command = "holdz" ^^ command = "holdz2"
trigger14 = command = "holdstart" ^^ command = "holdstart2"
trigger15 = command = "holdfwd" ^^ command = "holdfwd2"
trigger16 = command = "holdback" ^^ command = "holdback2"
trigger17 = command = "holdup" ^^ command = "holdup2"
trigger18 = command = "holddown" ^^ command = "holddown2"
trigger19 = command = "recovery" ^^ command = "recovery2"
;Add more as desired. (See my notes in the CMD.)
var(58) = 1

; These next two controllers must be placed here, after the above XOR
; VarSet controller and before the below GameTime VarSet controller.
[State -3, fiXOR]
type = VarAdd
trigger1 = var(56) > 0 && !IsHelper
var(56) = -1

[State -3, fuXOR]
type = VarSet
trigger1 = var(57) < GameTime-1 && !IsHelper
var(56) = 31
IgnoreHitPause = 1

; It is very important that this controller NOT be moved to State -2, as putting
; it there would defeat the entire purpose of the controller, allowing the
; helper method or the XOR method to erroneously set the AI variable.
; And within State -3, don't put any ChangeState controllers before this
; controller, lest you unnecessarily delay your character's AI activation.
[State -3, GameTimeVar]
type = VarSet
trigger1 = !IsHelper
var(57) = GameTime
IgnoreHitPause = 1


;==================================================================================
;==================================================================================
;==================================================================================

;This controller plays a sound everytime the player lands from a jump, or
;from a back-dash.
[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 106 ;Run-back land
value = 40, 0


