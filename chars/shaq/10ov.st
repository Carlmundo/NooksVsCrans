; This shows the code that is loaded by the .def file meant for use in Mugen 1.0. As this file is loaded before states.st, the states in this file override the states used by the other file
; These are mostly copypasted from the regular states.st and modified to make use of 1.0's capabilities
; If you are developing for both at least two Mugen versions (WinMugen and 1.0) and want to make the best of both of the versions, I'd recomend you to write primarly for the oldest version you'd develop for (winMugen in this case) and when you'd be mostly/pretty much done coding, into a new file copy, paste, and modify the states you'd like to ulitize 1.0's capabilities with
; Also as I'm kinda lazy only changes from the WinMugen version are commented on
;----------------------------------------------------------------------
[Statedef 821]
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

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= const(movement.air.gethit.groundlevel) ; a common change for 1.0+ versions is to have the opponent in custom states hit the ground by one's own parameters
value = 5100 ;Hit ground

;---------------------------------------------------------------------------
; Winquote
[Statedef 1899]
type = S
ctrl = 0
anim = 9741
velset = 0,0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 0
trigger1 = parent,fvar(32) = 0

[State Shaq's closeup]
type = Explod
triggerall = time = 350
trigger1 = parent,stateno != 185
anim = 1899
pos = 160,ceil(gameheight * 0.83)
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
pos = 0,ceil(gameheight * 0.805)
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
pos = 0,ceil(gameheight * 0.805)
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
sprpriority = 998
ontop = 1
ownpal = 1
[State general quote]
type = Explod
triggerall = time = 350
triggerall = parent,var(20) = 0
trigger1 = parent,stateno != 185
anim = 1800+random%22
pos = 0,ceil(gameheight * 0.805)
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
pos = 0,ceil(gameheight * 0.805)
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
pos = 0,ceil(gameheight * 0.805)
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
pos = 0,ceil(gameheight * 0.805)
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
sprpriority = 999
ontop = 1
ownpal = 1
[State 0, EnvShake]
type = EnvShake
trigger1 = time = 350
trigger1 = parent,stateno != 185
time = 40
freq = 255
ampl = -156
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 350
trigger1 = parent,stateno != 185
value = S3,13
volume = 255
[State 0, PlaySnd]
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
trigger1 = (Vel y > 0) && (Pos y >= Const(movement.down.bounce.groundlevel))
value = 5100

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
trigger1 = (Vel y > 0) && (Pos y >= const(movement.air.gethit.groundlevel))
value = 5100

;----------------------------------------------------------------------
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
trigger1 = pos y >= const(movement.air.gethit.groundlevel)
value = 5100
ctrl = 0

[Statedef 2890]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
velset = 0,0
anim = 9741

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(0) = random%3
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(1) = 39
[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = parent,stateno = 2000
trigger2 = parent,stateno = 2202
var(1) = 40
[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = parent,stateno = 2100
trigger2 = parent,stateno = 2200
var(1) = 60

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
;value = 3030+var(0),random%(var(0)+1)
value = 3032,random%3

[State 0, VarSet]
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

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 2890+random%2
ID = 2890
pos = 160,ceil(gameheight/2) ; thanks to ceil(gameheight/2) we can have this explod centered for every aspect ratio
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

[State 0, Explod]
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

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !numexplod(2890)
trigger1 = time
trigger1 = fvar(0) >= 1


[Statedef 2999]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
velset = 0,0
anim = 9741

[State 0, VarAdd]
type = VarAdd
trigger1 = time <= 200
var(0) = -3
[State 0, VarAdd]
type = VarAdd
trigger1 = time <= 200
fvar(0) = 0.1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 2999
ID = 2999
pos = 160,ceil(gameheight/2)
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
pos = 160,ceil(gameheight/2)
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
pos = 160,ceil(gameheight/2)
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

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[StateDef -2]

; This sets the hitpause decrementor to 1 so the hitpauses for 1.0 version can be the same as with the winmugen version
[State ME AM USING 1.0]
type = VarSet
trigger1 = var(49) != 1
var(49) = 1
ignorehitpause = 1

[State -2, Movehitoner]
type = VarSet
trigger1 = 1
var(21) = ifelse(movehit=1,var(21)+1,0)
ignorehitpause = 1
[State -2, Counter?]
type = VarSet
trigger1 = var(21) != 1
var(31) = (p2movetype=A)
ignorehitpause = 1
[State -2, COUNTER!]
type = PlaySnd
trigger1 = stateno != 207
trigger1 = stateno != [800,899]
trigger1 = var(31) = 1
trigger1 = var(21) = 1
value = S5,10
ignorehitpause = 1
[State 0, Helper]
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

[State 0, ]
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
trigger5 = p2name = "Baby Bonnie Hood" || p4name = "Baby Bonnie Hood"
trigger5 = (var(20) := 3)
trigger5 = p2name = "Bulleta" || p4name = "Bulleta"
trigger5 = (var(20) := 3)
ignorehitpause = 1
[State 1.0 quote]
type = VictoryQuote
trigger1 = time = 1
trigger1 = var(20) = 0
value = random%28
ignorehitpause = 1
[State 1.0 quote]
type = VictoryQuote
trigger1 = time = 1
trigger1 = var(20) = 2
value = 27
ignorehitpause = 1
[State 1.0 quote]
type = VictoryQuote
trigger1 = time = 1
trigger1 = var(20) = 1
value = 28+random%2
ignorehitpause = 1
[State 1.0 quote]
type = VictoryQuote
trigger1 = time = 1
trigger1 = var(20) = 3
value = 30
ignorehitpause = 1


[State -1, Cheese Kill Check]
type = ChangeState
trigger1 = PrevStateNo = [120,140]
trigger1 = !alive
trigger1 = statetype != A
trigger1 = stateno = [5000,5070]
value = 5950

[State 0, Helper]
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

[State 0, ]
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

[State 0, ]
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
[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = 1
time = 2
value = ( ifelse((stateno=[2000,3900]), 0.25+(fvar(13)*0.75) ,fvar(13))  ) * ifelse((p2statetype=A&&p2movetype!=H)||var(31),1.25,1) * ifelse(var(10)=1,2,1)
ignorehitpause = 1


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
trigger1 = 1
var(55) = ifelse((roundstate<=2),ailevel,0) ; this is different from WinMugen version too
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
[State ANTI-MINDGAME-TH]
type = VarSet
trigger1 = numenemy
trigger1 = var(55)
var(51) = (enemynear,HitDefAttr = SCA,AT) || (var(50) > 20) || ((abs(enemynear,animtime) <= enemynear,moveguarded ))
ignorehitpause = 1


;[State DEBUG]
;type = VarSet
;trigger1 = movetype = A
;trigger1 = time = 1
;var(51) = floor(p2bodydist x)

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

