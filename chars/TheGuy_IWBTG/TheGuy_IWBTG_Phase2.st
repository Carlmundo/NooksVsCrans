;-------------------------------------------------------------------------------
; Prologue
;-------------------------------------------------------------------------------

;Rising
[Statedef 19998]
type = A
movetype = I
ctrl = 0
physics = N
anim = 5302
sprpriority = -5

[State TURN]
type = Turn
trigger1 = facing != root,facing

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State NoTouchy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State NEXT]
type = ChangeState
triggerall = root,alive
triggerall = root,var(49)
trigger1 = !numhelper(11000)
trigger2 = numhelper(11000)
trigger2 = helper(11000),time>=240
trigger2 = helper(11000),stateno=11001
value = 19999

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;Rising
[Statedef 19999]
type = A
movetype = I
ctrl = 0
physics = N
anim = 21000
sprpriority = -5

[State TURN]
type = Turn
trigger1 = facing != root,facing

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State NoTouchy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State NEXT]
type = ChangeState
trigger1 = !animtime
value = 20000

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;-------------------------------------------------------------------------------
; Head
;-------------------------------------------------------------------------------
;Part 1
[Statedef 20000]
type = A
movetype = I
ctrl = 0
physics = N
anim = 20000
sprpriority = -5

[State Shaky]
type=envshake
triggerall = time<200
trigger1= !(time%10)
time=10
freq=100
ampl=-20+(time/10)

[State BoomBoomBoomExplod]
type = Explod
trigger1 = time<50
anim = 21002
ID = 21002
pos = random%321,random%241
postype = left
trans = add
sprpriority = 4
ownpal = 1

[State SURPRISE]
type = Helper
triggerall = (root,var(50))
triggerall = enemy,var(10)!=[0,4]
trigger1 = !time
helpertype = normal
name = "SURPRISE"
id = 21030
stateno = 21030
pos = 0,-480
ownpal = 1
[State SURPRISE]
type = Helper
triggerall = (root,var(50))
triggerall = enemy,var(10)!=[0,4]
trigger1 = !time
helpertype = normal
name = "SURPRISE"
id = 21031
stateno = 21030
pos = 0,-480
facing = -1
ownpal = 1
[State SURPRISE]
type = Helper
triggerall = (root,var(50))
triggerall = enemy,var(10)!=[0,4]
trigger1 = !time
helpertype = normal
name = "SURPRISE"
id = 21031
stateno = 21030
pos = 0,-480
ownpal = 1
[State SURPRISE]
type = Helper
triggerall = (root,var(50))
triggerall = enemy,var(10)!=[0,4]
trigger1 = !time
helpertype = normal
name = "SURPRISE"
id = 21032
stateno = 21030
pos = 0,-480
facing = -1
ownpal = 1
[State SURPRISE]
type = Helper
triggerall = (root,var(50))
triggerall = enemy,var(10)!=[0,4]
trigger1 = !time
helpertype = normal
name = "SURPRISE"
id = 21032
stateno = 21030
pos = 0,-480
ownpal = 1

[State AttackTimer]
type = VarAdd
triggerall = !numhelper(3000)
triggerall = numhelper(20200)
trigger1 = helper(20200),stateno=20201
trigger1 = helper(20200),prevstateno!=20200
v = 10
value = 1

[State CRASH]
type = PlaySnd
trigger1 = !time
value = s2,10
[State MoreCrash]
type = PlaySnd
trigger1 = !time
value = s3,9

[State TURN]
type = Turn
triggerall = !time
trigger1 = facing != (root,facing)

[State POZZ]
type = PosSet
triggerall = !time
trigger1 = pos x != [-90,90]
x = (pos x > 90)*90 + (pos x < -90)*-90

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State NoTouchy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State BrokenBG]
type = Explod
triggerall = !time
trigger1 = !numexplod(21000)
anim = 21001
id = 21000
pos = 0,0
sprpriority = -6
bindtime = 1
removetime = -1
ownpal = 1

[State Light]
type = Explod
triggerall = !time
triggerall = root,var(50)
trigger1 = !numexplod(21003)
anim = 21003
id = 21003
pos = 0,-floor(pos y)
sprpriority = 1
bindtime = 1
removetime = -1
trans = sub
scale = .375,.375
ownpal = 1

[State Eye1]
type = Helper
trigger1 = !numhelper(20100)
helpertype = normal
name = "Right Eye"
id = 20100
stateno = 20100
pos = -33,10
ownpal = 1
size.ground.back = 5
size.ground.front = 5
size.air.back = 5
size.air.front = 5
[State Eye2]
type = Helper
trigger1 = !numhelper(20101)
helpertype = normal
name = "Left Eye"
id = 20101
stateno = 20100
pos = 32,10
ownpal = 1
size.ground.back = 5
size.ground.front = 5
size.air.back = 5
size.air.front = 5
[State Mouth]
type = Helper
trigger1 = !numhelper(20200)
helpertype = normal
name = "Mouth"
id = 20200
stateno = 20200
pos = 0,73
ownpal = 1
[State Eyebrows]
type = Helper
trigger1 = !numhelper(20300)
helpertype = normal
name = "Eyebrows"
id = 20300
stateno = 20300
pos = 0,0
ownpal = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 10
size.air.front = 10

;[ATTACKING]
[State FruitRain]
type = Helper
triggerall = root,facing = 1
triggerall = !numhelper(3000)
triggerall = roundstate<3
triggerall = var(10)
trigger1 = !(var(10)%600)
helpertype = normal
name = "Fruit"
ID = 3000
stateno = 6000
pos = 0,0
postype = left
facing = 1
ownpal = 1
[State FruitRain]
type = Helper
triggerall = root,facing = -1
triggerall = !numhelper(3000)
triggerall = roundstate<3
triggerall = var(10)
trigger1 = !(var(10)%600)
helpertype = normal
name = "Fruit"
ID = 3000
stateno = 6000
pos = 0,0
postype = right
facing = -1
ownpal = 1

[State Bullet1]
type = Helper
triggerall = !numhelper(3000)
triggerall = roundstate<3
triggerall = numhelper(20100)*var(10)
triggerall = helper(20100),stateno!=20103
trigger1 = !(var(10)%100)
helpertype = normal
name = "Right Eye Bullet"
id = 21000
stateno = 21000
pos = 32,10
ownpal = 1
[State Bullet2]
type = Helper
triggerall = !numhelper(3000)
triggerall = roundstate<3
triggerall = numhelper(20101)*var(10)
triggerall = helper(20101),stateno!=20103
trigger1 = !(var(10)%100)
helpertype = normal
name = "Left Eye Bullet"
id = 21000
stateno = 21000
pos = -33,10
ownpal = 1
;[/ATTACKING]

[State NEXT]
type = ChangeState
trigger1 = var(20)>1
value = 20001

[State NowTheExplods]
type = RemoveExplod
trigger1 = root,stateno=5901
ID = 21000
[State NowTheExplods]
type = RemoveExplod
trigger1 = root,stateno=5901
ID = 21003
[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;Part 2
[Statedef 20001]
type = A
movetype = I
ctrl = 0
physics = N
anim = 20001
sprpriority = -5

[State CALMDOWN]
type = ChangeAnim
triggerall = anim=20001
trigger1 = !animtime
value = 20000

[State RESET]
type = VarSet
trigger1 = !time
var(10) = 0
[State RESET]
type = VarSet
trigger1 = !time
var(20) = 0

[State AttackTimer]
type = VarAdd
triggerall = !numhelper(21040)
triggerall = numhelper(20200)*numhelper(20100)
trigger1 = helper(20200),stateno=20201
trigger1 = helper(20200),prevstateno!=20200
trigger1 = helper(20100),stateno!=[20104,20105]
v = 10
value = 1

[State IceAttackTimer1]
type = VarAdd
triggerall = !numhelper(21020)
triggerall = numhelper(20200)*numhelper(20100)
trigger1 = helper(20200),stateno=20201
trigger1 = helper(20200),prevstateno!=20200
trigger1 = helper(20100),stateno!=[20104,20105]
v = 11
value = 1
[State IceAttackTimer2]
type = VarAdd
triggerall = !numhelper(21021)
triggerall = numhelper(20200)*numhelper(20100)
trigger1 = helper(20200),stateno=20201
trigger1 = helper(20200),prevstateno!=20200
trigger1 = helper(20100),stateno!=[20104,20105]
v = 12
value = 1

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State NoTouchy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State RefreshEye1]
type = Helper
trigger1 = !time
helpertype = normal
name = "Right Eye"
id = 20100
stateno = 20100
pos = -33,10
ownpal = 1
size.ground.back = 5
size.ground.front = 5
size.air.back = 5
size.air.front = 5
[State RefreshEye2]
type = Helper
trigger1 = !time
helpertype = normal
name = "Left Eye"
id = 20101
stateno = 20100
pos = 32,10
ownpal = 1
size.ground.back = 5
size.ground.front = 5
size.air.back = 5
size.air.front = 5
[State RefreshMouth]
type = Helper
trigger1 = !time
helpertype = normal
name = "Mouth"
id = 20200
stateno = 20200
pos = 0,73
ownpal = 1

;[AFTER LAZERS]
[State SHOOT]
type = PlaySnd
triggerall = roundstate<3
triggerall = numhelper(20100)
triggerall = helper(20100),stateno=20105
trigger1 = helper(20100),time=635
value = s2,3
channel = 1

[State Burn]
type = Helper
triggerall = roundstate<3
triggerall = numhelper(20100)
triggerall = helper(20100),stateno=20105
trigger1 = helper(20100),time=635
helpertype = normal
name = "Right Eye Bullet"
id = 21010
stateno = 21011
pos = 32,10
ownpal = 1
[State Bullet2]
type = Helper
triggerall = roundstate<3
triggerall = numhelper(20101)
triggerall = helper(20101),stateno=20105
trigger1 = helper(20101),time=635
helpertype = normal
name = "Left Eye Bullet"
id = 21010
stateno = 21011
pos = -33,10
facing = -1
ownpal = 1
[State Burn]
type = Helper
triggerall = roundstate<3
triggerall = numhelper(20100)
triggerall = helper(20100),stateno=20105
trigger1 = helper(20100),time=635
helpertype = normal
name = "Right Eye Bullet"
id = 21011
stateno = 21011
pos = 32,10
ownpal = 1
[State Bullet2]
type = Helper
triggerall = roundstate<3
triggerall = numhelper(20101)
triggerall = helper(20101),stateno=20105
trigger1 = helper(20101),time=635
helpertype = normal
name = "Left Eye Bullet"
id = 21011
stateno = 21011
pos = -33,10
facing = -1
ownpal = 1
[State Burn]
type = Helper
triggerall = roundstate<3
triggerall = numhelper(20100)
triggerall = helper(20100),stateno=20105
trigger1 = helper(20100),time=635
helpertype = normal
name = "Right Eye Bullet"
id = 21012
stateno = 21011
pos = 32,10
ownpal = 1
[State Bullet2]
type = Helper
triggerall = roundstate<3
triggerall = numhelper(20101)
triggerall = helper(20101),stateno=20105
trigger1 = helper(20101),time=635
helpertype = normal
name = "Left Eye Bullet"
id = 21012
stateno = 21011
pos = -33,10
facing = -1
ownpal = 1
;[/AFTER LAZERS]


;[ATTACKING]
[State Bullet1]
type = Helper
triggerall = roundstate<3
triggerall = numhelper(20100)*var(10)
triggerall = var(10)%600
triggerall = helper(20100),stateno!=20103
trigger1 = !(var(10)%100)
helpertype = normal
name = "Right Eye Bullet"
id = 21000
stateno = 21000
pos = 32,10
ownpal = 1
[State Bullet2]
type = Helper
triggerall = roundstate<3
triggerall = numhelper(20101)*var(10)
triggerall = var(10)%600
triggerall = helper(20101),stateno!=20103
trigger1 = !(var(10)%100)
helpertype = normal
name = "Left Eye Bullet"
id = 21000
stateno = 21000
pos = -33,10
ownpal = 1

[State SubterraneanSpines]
type = Helper
triggerall = root,facing = 1
triggerall = !numhelper(21040)
triggerall = random%2
triggerall = roundstate<3
triggerall = var(10)
trigger1 = !(var(10)%600)
helpertype = normal
name = "Spines"
ID = 3101
stateno = 6100
pos = 0,0
postype = left
facing = 1
ownpal = 1
[State SubterraneanSpines]
type = Helper
triggerall = root,facing = -1
triggerall = !numhelper(21040)
triggerall = random%2
triggerall = roundstate<3
triggerall = var(10)
trigger1 = !(var(10)%600)
helpertype = normal
name = "Spines"
ID = 3101
stateno = 6100
pos = 0,0
postype = right
facing = -1
ownpal = 1

[State FireBreath]
type = Helper
triggerall = !numhelper(21040)
triggerall = !numhelper(3101)
triggerall = roundstate<3
triggerall = var(10)
trigger1 = !(var(10)%600)
helpertype = normal
name = "FIRE"
ID = 21040
stateno = 21040
pos = 0,73
ownpal = 1

[State IceBullet1]
type = Helper
triggerall = roundstate<3
trigger1 = var(11)>=120
trigger1 = var(11):=-1
helpertype = normal
name = "Right Ice Bullet"
id = 21020
stateno = 21020
pos = 32,10
ownpal = 1
[State IceBullet2]
type = Helper
triggerall = roundstate<3
trigger1 = var(12)>=120
trigger1 = var(12):=-1
helpertype = normal
name = "Left Ice Bullet"
id = 21021
stateno = 21020
pos = -33,10
ownpal = 1
;[/ATTACKING]

[State NEXT]
type = ChangeState
trigger1 = var(20)>1
value = 20002

[State NowTheExplods]
type = RemoveExplod
trigger1 = root,stateno=5901
ID = 21000
[State NowTheExplods]
type = RemoveExplod
trigger1 = root,stateno=5901
ID = 21003
[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;Part 3
[Statedef 20002]
type = A
movetype = I
ctrl = 0
physics = N
anim = 20001
sprpriority = -5

[State FIREFLOOR]
type = null;Helper
triggerall = (root,var(50))
triggerall = anim=20001
trigger1 = !animtime
helpertype = normal
name = "FireFloor"
id = 22000
stateno = 22000
pos = 0,-floor(pos y)
ownpal = 1

[State Shaky]
type=envshake
triggerall = anim=20000
triggerall = numhelper(20100)
triggerall = numhelper(20101)
trigger1= !(time%10)
time=10
freq=100
ampl=-3;*(1+(helper(20100),stateno=20103)+(helper(20101),stateno=20103))

[State CALMDOWN]
type = ChangeAnim
triggerall = anim=20001
trigger1 = !animtime
value = 20000

[State AttackTimer]
type = VarAdd
triggerall = !numhelper(3200)
triggerall = numhelper(20200)
trigger1 = helper(20200),stateno=20201
trigger1 = helper(20200),prevstateno!=20200
v = 10
value = 1

[State IceAttackTimer1]
type = VarAdd
triggerall = !numhelper(21020)
triggerall = numhelper(20200)
trigger1 = helper(20200),stateno=20201
trigger1 = helper(20200),prevstateno!=20200
v = 11
value = 1
[State IceAttackTimer2]
type = VarAdd
triggerall = !numhelper(21021)
triggerall = numhelper(20200)
trigger1 = helper(20200),stateno=20201
trigger1 = helper(20200),prevstateno!=20200
v = 12
value = 1

[State RESET]
type = VarSet
trigger1 = !time
trigger1 = (var(11):=-1) && (var(12):=-1)
var(10) = 0
[State RESET]
type = VarSet
trigger1 = !time
var(20) = 0

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State NoTouchy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State RefreshEye1]
type = Helper
trigger1 = !time
helpertype = normal
name = "Right Eye"
id = 20100
stateno = 20100
pos = -33,10
ownpal = 1
size.ground.back = 5
size.ground.front = 5
size.air.back = 5
size.air.front = 5
[State RefreshEye2]
type = Helper
trigger1 = !time
helpertype = normal
name = "Left Eye"
id = 20101
stateno = 20100
pos = 32,10
ownpal = 1
size.ground.back = 5
size.ground.front = 5
size.air.back = 5
size.air.front = 5
[State RefreshMouth]
type = Helper
trigger1 = !time
helpertype = normal
name = "Mouth"
id = 20200
stateno = 20200
pos = 0,73
ownpal = 1

;[ATTACKING]
[State Boulder]
type = Helper
triggerall = !numhelper(3200)
triggerall = roundstate<3
triggerall = var(10)
triggerall = numhelper(20100)+numhelper(20101)
trigger1 = !(var(10)%160)
helpertype = normal
name = "Boulder"
ID = 22100
stateno = 22100
pos = 0,floor(-(enemynear,pos y))-400
postype = p2
facing = 1
ownpal = 1
size.xscale = .35
size.yscale = .35

[State THEMOON]
type = Helper
triggerall = !numhelper(3200)
triggerall = roundstate<3
triggerall = var(10)
trigger1 = !(var(10)%600)
helpertype = normal
name = "Moon"
ID = 3200
stateno = 6200
pos = 0,0
postype = back
ownpal = 1

[State Bullet1]
type = Helper
triggerall = !numhelper(3200)
triggerall = roundstate<3
triggerall = numhelper(20100)*var(10)
triggerall = helper(20100),stateno!=20103
trigger1 = (var(10)%100)=1;(100-50*(helper(20101),stateno=20103)*!!(root,var(50))))=1
helpertype = normal
name = "Right Eye Bullet"
id = 21000
stateno = 21000
pos = 32,10
ownpal = 1
[State Bullet2]
type = Helper
triggerall = !numhelper(3200)
triggerall = roundstate<3
triggerall = numhelper(20101)*var(10)
triggerall = helper(20101),stateno!=20103
trigger1 = (var(10)%100)=1;(100-50*(helper(20101),stateno=20103)*!!(root,var(50))))=1
helpertype = normal
name = "Left Eye Bullet"
id = 21000
stateno = 21000
pos = -33,10
ownpal = 1

[State IceBullet1]
type = Helper
triggerall = roundstate<3
trigger1 = var(11)>=90
trigger1 = var(11):=-1
helpertype = normal
name = "Right Ice Bullet"
id = 21020
stateno = 21020
pos = 32,10
ownpal = 1
[State IceBullet2]
type = Helper
triggerall = roundstate<3
trigger1 = var(12)>=90
trigger1 = var(12):=-1
helpertype = normal
name = "Left Ice Bullet"
id = 21021
stateno = 21020
pos = -33,10
ownpal = 1
;[/ATTACKING]

[State NEXT]
type = ChangeState
trigger1 = var(20)>1
value = 20003

[State NowTheExplods]
type = RemoveExplod
trigger1 = root,stateno=5901
ID = 21000
[State NowTheExplods]
type = RemoveExplod
trigger1 = root,stateno=5901
ID = 21003
[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;DEAD
[Statedef 20003]
type = A
movetype = I
ctrl = 0
physics = N
anim = 20001
sprpriority = -5

[State Shaky]
type=envshake
triggerall = time<80
trigger1= !(time%10)
time=10
freq=100
ampl=-9

[State IDIED]
type = ParentVarSet
trigger1 = !time
var(1) = 1

[State CALMDOWN]
type = ChangeAnim
triggerall = anim=20001
trigger1 = time>=80
value = 20000

[State SHRINK]
type = AngleDraw
trigger1 = time>80
scale = 1-.2*(time-80),1-.2*(time-80)

[State Blood]
type = Explod
trigger1 = time=80
anim = 20002
id = 20002
sprpriority = -3
ownpal = 1
bindtime = -1
removetime = -1
scale = .5,.5
[State SHRINKIT]
type = ModifyExplod
trigger1 = numexplod(20002)
ID = 20002
scale = .5-.1*(time-80),.5-.1*(time-80)
[State DIE]
type = RemoveExplod
triggerall = numexplod(20002)
trigger1 = time>=85
ID = 20002

[State SHADDAP]
type = StopSnd
trigger1 = !time
Channel = -1

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State NoTouchy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State RefreshEye1]
type = Helper
trigger1 = !time
helpertype = normal
name = "Right Eye"
id = 20100
stateno = 20100
pos = -33,10
ownpal = 1
[State RefreshEye2]
type = Helper
trigger1 = !time
helpertype = normal
name = "Left Eye"
id = 20101
stateno = 20100
pos = 32,10
ownpal = 1
[State RefreshMouth]
type = Helper
trigger1 = !time
helpertype = normal
name = "Mouth"
id = 20200
stateno = 20200
pos = 0,73
ownpal = 1

[State THETAKINGYOUWITHMEGUY]
type = Helper
trigger1 = !time
helpertype = normal
name = "THETAKINGYOUWITHMEGUY"
id = 31000
stateno = 31000
pos = 0,0
ownpal = 1

[State DIE]
type = ChangeState
triggerall = (root,var(50))
triggerall = !(numhelper(20100)+numhelper(20101)+numhelper(20200)+numhelper(20300))
triggerall = anim=20000
trigger1 = time>=85
value = 20004

[State DIE]
type = DestroySelf
triggerall = !(root,var(50))
triggerall = !(numhelper(20100)+numhelper(20101)+numhelper(20200)+numhelper(20300))
triggerall = anim=20000
trigger1 = time>=85
value = 20004

[State NowTheExplods]
type = RemoveExplod
trigger1 = root,stateno=5901
ID = 20002
[State NowTheExplods]
type = RemoveExplod
trigger1 = root,stateno=5901
ID = 21000
[State NowTheExplods]
type = RemoveExplod
trigger1 = root,stateno=5901
ID = 21003
[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;TAKING YOU WITH ME
[Statedef 20004]
type = A
movetype = I
ctrl = 0
physics = N
anim = 9741
sprpriority = -5

[State FINALBACKGROUND]
type = Helper
trigger1 = time=80
helpertype = normal
name = "FinalBackground"
id = 30000
stateno = 30000
pos = 0,1200
postype = left
ownpal = 1

[State DIE]
type = RemoveExplod
triggerall = numexplod(21003)
trigger1 = time>=80
ID = 21003

[State DIE]
type = DestroySelf
triggerall = time>=80
trigger1 = !numhelper(30000)
trigger2 = numhelper(30000)
trigger2 = !(helper(30000),pos y)

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;-------------------------------------------------------------------------------
; Eye
;-------------------------------------------------------------------------------
;-Beginning
[Statedef 20100]
type = A
movetype = I
ctrl = 0
physics = N
anim = 20012
sprpriority = -4

[State FACING]
type = VarSet
trigger1 = !time
var(32) = facing

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State STICKY]
type = BindToParent
trigger1 = 1
time = -1
pos = (32-65*isHelper(20101)),10

[State WEARECAMERAS]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State NEXT]
type = ChangeState
trigger1 = time>=110
trigger1 = !animtime
value = 20101+3*(parent,stateno=[20001,20002])

[State Dead]
type = DestroySelf
triggerall = parent,stateno=20003
trigger1 = parent,anim=20000

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;-Idle-
[Statedef 20101]
type = A
movetype = A
ctrl = 0
physics = N
sprpriority = -4

[State TURNY]
type = turn
trigger1 = facing != var(32)

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State REDNESS]
type = PalFX
trigger1 = var(20)
time = 1
add = floor(256*(var(20)/32.0)),0,0

[State UPDATE]
type = ChangeAnim
trigger1 = animexist(20010+(var(20)>=8))
value = 20010+(var(20)>=8)

[State HEAL]
type = VarAdd
triggerall = var(20)>0
triggerall = time
trigger1 = !(time%60)
v = 20
value = -2

[State HEAL]
type = VarSet
trigger1 = var(20)<0
var(20) = 0

[State BLOODY]
type = AngleDraw
trigger1 = 1
scale = (40-var(20))/(40.0-8*(var(20)>=8)),(40-var(20))/(40.0-8*(var(20)>=8))

[State FLOATY]
type = VarSet
trigger1 = 1
fvar(20) = (roundstate=2)*((P2Dist X)/(Abs(P2Dist X)+Abs(P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))
[State FLOATY]
type = VarSet
trigger1 = 1
fvar(21) = (roundstate=2)*((P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))/(Abs(P2Dist X)+Abs(P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))

[State STICKY]
type = BindToParent
trigger1 = 1
time = -1
pos = (32-65*isHelper(20101)+floor(10*!var(20)*fvar(20))),10+floor(10*!var(20)*fvar(21))

[State WEARECAMERAS]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State DTCB]
type = displaytoclipboard
trigger1 = 1
text = "Health: %d"
params = 32 - var(20)

[State AntiKid]
type = HitDef
triggerall = (root,var(50))
trigger1 = !time
attr = A,NA
hitflag = MAFD
affectteam = E
animtype = light
air.animtype = light
damage = 999,999
sparkno = -1
guard.sparkno = -1
sparkxy = 16,-88
hitsound = S1,2
guardsound = S1,2
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -4.9,-.8
air.type = High
air.velocity = -6.4,-3
air.hittime = 12
fall = 1
kill = 1
numhits = -1

[State CHANGETOGETHITSTATE]
type = HitOverride
trigger1 = !time
attr = SCA,AP,AA,AT
stateno = 20102
time = -1

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;-Hit-
[Statedef 20102]
type = A
movetype = H
ctrl = 0
physics = N
sprpriority = -1

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State STICKY]
type = BindToParent
trigger1 = 1
time = -1
pos = 32-65*isHelper(20101),10

[State WEARECAMERAS]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State HPVariable]
type = VarAdd
triggerall = !(root,var(50))||((root,var(50))*(enemy,var(10)=4))
trigger1 = !time
v = 20
value = 2;+!(root,var(50))*(!!gethitvar(animtype)+1)
[State HPVariable]
type = VarAdd
triggerall = (root,var(50))
triggerall = enemy,var(10)!=4
trigger1 = !time
v = 20
value = gethitvar(damage)/2500;+!(root,var(50))*(!!gethitvar(animtype)+1)

[State ChangeState]
type = ChangeState
trigger1 = 1
value = 20101+2*(var(20)>=32)

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;-Exploded-
[Statedef 20103]
type = A
movetype = I
ctrl = 0
physics = N
anim = 20013
sprpriority = -1

[State DeadEyes]
type = ParentVarAdd
trigger1 = time=10
v = 20
value = 1

[State BLOODY]
type = AngleDraw
trigger1 = 1
scale = ifelse(time<5,.1*time,.5),ifelse(time<5,.1*time,.5)

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State STICKY]
type = BindToParent
trigger1 = 1
time = -1
pos = (32-65*isHelper(20101)),10

[State WEARECAMERAS]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State ExplodSound]
type = PlaySnd
trigger1 = !time
value = S2,1
volume = 128
channel = 1

[State DTCB]
type = displaytoclipboard
trigger1 = 1
text = "lulz no moar eye"

[State Die]
type = DestroySelf
trigger1 = isHelper(20100)
trigger1 = numhelper(20100)>1
trigger2 = isHelper(20101)
trigger2 = numHelper(20101)>1

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;-Idle-
[Statedef 20104]
type = A
movetype = A
ctrl = 0
anim = 20014
physics = N
sprpriority = -4

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State FLOATY]
type = VarSet
trigger1 = 1
fvar(20) = (roundstate=2)*((P2Dist X)/(Abs(P2Dist X)+Abs(P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))
[State FLOATY]
type = VarSet
trigger1 = 1
fvar(21) = (roundstate=2)*((P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))/(Abs(P2Dist X)+Abs(P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))

[State STICKY]
type = BindToParent
trigger1 = 1
time = -1
pos = (32-65*isHelper(20101)+floor(10*!var(20)*fvar(20))),10+floor(10*!var(20)*fvar(21))

[State AntiKid]
type = HitDef
triggerall = (root,var(50))
trigger1 = !time
attr = A,NA
hitflag = MAFD
affectteam = E
animtype = light
air.animtype = light
damage = 999,999
sparkno = -1
guard.sparkno = -1
sparkxy = 16,-88
hitsound = S1,2
guardsound = S1,2
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -4.9,-.8
air.type = High
air.velocity = -6.4,-3
air.hittime = 12
fall = 1
kill = 1
numhits = -1

[State WEARECAMERAS]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State NOW]
type = ChangeState
triggerall = parent,stateno=20002
trigger1 = helper(20200),stateno=20202
value = 20101

[State FIYA]
type = ChangeState
trigger1 = time>=300
trigger2 = roundstate>2
value = 20101+4*(roundstate<3)

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;-Lazer Fiya
[Statedef 20105]
type = A
movetype = I
ctrl = 0
physics = N
anim = 20012
sprpriority = -4

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State TURN]
type = turn
trigger1 = !time
trigger1 = p2dist x < 0
trigger1 = var(8):=1
trigger2 = time>=660
trigger2 = var(8)

[State WEARECAMERAS]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State THEANGLE]
type = DisplayToClipboard
trigger1 = time
text = "Angle: %d"
params = floor(atan(fvar(12)/fvar(11))*(180/pi))

[State FLOATY]
type = VarSet
trigger1 = !time
fvar(11) = ((parent,P2Dist X)/(Abs(parent,P2Dist X)+Abs(P2Dist Y+10+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))
[State FLOATY]
type = VarSet
trigger1 = !time
fvar(12) = ((parent,P2Dist Y+10+(EnemyNear,Const(Size.Mid.Pos.Y)))/(Abs(parent,P2Dist X)+Abs(parent,P2Dist Y+10+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))

[State FLOATY]
type = VarSet
trigger1 = 1
fvar(20) = 7*cos(atan(fvar(12)/fvar(11))-(time*pi/300)*-facing)
[State FLOATY]
type = VarSet
trigger1 = 1
fvar(21) = abs(7*sin(atan(fvar(12)/fvar(11))-(time*pi/300)*-facing))

[State STICKY]
type = BindToParent
trigger1 = 1
time = -1
pos = (32-65*isHelper(20101)),10

[State FIRE]
type = Helper
triggerall = roundstate<3
triggerall = time<600
trigger1 = !(time%5)
helpertype = normal
name = "FAST Bullet"
id = 21010
stateno = 21010
pos = 0,0
ownpal = 1

[State NEXT]
type = ChangeState
trigger1 = time>=660
trigger1 = !animtime
trigger2 = roundstate>2
value = 20101

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901



;-------------------------------------------------------------------------------
; Mouth
;-------------------------------------------------------------------------------
;-Scream-
[Statedef 20200]
type = A
movetype = I
ctrl = 0
physics = N
anim = 20021
sprpriority = -4

[State Noize]
type = PlaySnd
trigger1 = !time
value = s6,5*(parent,stateno=20003)
channel = 0

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State STICKY]
type = BindToParent
trigger1 = 1
time = -1
pos = 0,73-((time%6)<3)

[State NEXT]
type = ChangeState
trigger1 = time>=110
value = 20201

[State Dead]
type = DestroySelf
triggerall = parent,stateno=20003
trigger1 = parent,anim=20000

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;-Resting
[Statedef 20201]
type = A
movetype = I
ctrl = 0
physics = N
anim = 20020
sprpriority = -4

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State NEXT]
type = ChangeState
trigger1 = time>=120
trigger1 = prevstateno=20200
value = 20202

[State RANDOM]
type = VarSet
trigger1 = !(time%360)
var(8)=(random%6)

[State Tooth1]
type = Helper
triggerall = roundstate<3
triggerall = parent,stateno=20002
triggerall = parent,time>=110
triggerall = prevstateno!=20200
triggerall = time
triggerall = !(time%360)
trigger1 = !var(8)
trigger2 = var(8)=1
trigger3 = var(8)=2
helpertype = normal
name = "SpikeTooth"
id = 22001
stateno = 22001
pos = 48,17
ownpal = 1
[State Tooth2]
type = Helper
triggerall = roundstate<3
triggerall = parent,stateno=20002
triggerall = parent,time>=110
triggerall = prevstateno!=20200
triggerall = time
triggerall = !(time%360)
trigger1 = !var(8)
trigger2 = var(8)=3
trigger3 = var(8)=4
helpertype = normal
name = "SpikeTooth"
id = 22001
stateno = 22001
pos = 16,17
ownpal = 1
[State Tooth3]
type = Helper
triggerall = roundstate<3
triggerall = parent,stateno=20002
triggerall = parent,time>=110
triggerall = prevstateno!=20200
triggerall = time
triggerall = !(time%360)
trigger1 = var(8)=1
trigger2 = var(8)=3
trigger3 = var(8)=5
helpertype = normal
name = "SpikeTooth"
id = 22001
stateno = 22001
pos = -16,17
ownpal = 1
[State Tooth4]
type = Helper
triggerall = roundstate<3
triggerall = parent,stateno=20002
triggerall = parent,time>=110
triggerall = prevstateno!=20200
triggerall = time
triggerall = !(time%360)
trigger1 = var(8)=2
trigger2 = var(8)=4
trigger3 = var(8)=5
helpertype = normal
name = "SpikeTooth"
id = 22001
stateno = 22001
pos = -48,17
ownpal = 1

[State STICKY]
type = BindToParent
trigger1 = 1
time = -1
pos = 0,73-((time%16)<8)*!numhelper(22001)

[State Dead]
type = DestroySelf
trigger1 = parent,stateno=20003
trigger1 = parent,anim=20000
trigger2 = numhelper(20200)>1

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;-I WILL DESTROY YOU
[Statedef 20202]
type = A
movetype = I
ctrl = 0
physics = N
anim = 20022+(parent,stateno!=20000)+2*(parent,stateno=20002)
sprpriority = -4

[State Noize]
type = PlaySnd
trigger1 = !time
value = s6,1+(parent,stateno=20001)+(parent,stateno=20002)*3
channel = 0

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State STICKY]
type = BindToParent
trigger1 = 1
time = -1
pos = 0,73-((time%16)<8)

[State NEXT]
type = ChangeState
trigger1 = anim!=20023
trigger1 = !animtime
trigger2 = anim=20023
trigger2 = numhelper(20100)
trigger2 = helper(20100),stateno=20105
trigger2 = helper(20100),time>=100
value = 20201+2*(anim=20023)

[State Dead]
type = DestroySelf
trigger1 = parent,stateno=20003
trigger1 = parent,anim=20000
trigger2 = numhelper(20200)>1

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;-YOU CAN'T ESCAPE
[Statedef 20203]
type = A
movetype = I
ctrl = 0
physics = N
anim = 20024
sprpriority = -4

[State Noize]
type = PlaySnd
trigger1 = !time
value = s6,3
channel = 0

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State STICKY]
type = BindToParent
trigger1 = 1
time = -1
pos = 0,73-((time%16)<8)

[State NEXT]
type = ChangeState
trigger1 = !animtime
value = 20201

[State Dead]
type = DestroySelf
trigger1 = parent,stateno=20003
trigger1 = parent,anim=20000
trigger2 = numhelper(20200)>1

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;-------------------------------------------------------------------------------
; Eyebrows
;-------------------------------------------------------------------------------
;-Beginning
[Statedef 20300]
type = A
movetype = A
ctrl = 0
physics = N
sprpriority = -4

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State STICKY]
type = BindToParent
trigger1 = 1
time = -1
pos = 0,-!(time%180)+5*(anim=20031)

[State BLOCK?]
type = ChangeAnim
trigger1 = anim = 20030
trigger1 = parent,time>=230
trigger1 = parent,stateno=20002
trigger2 = anim = 20031
trigger2 = parent,stateno=20003
trigger3 = prevstateno!=20301
trigger3 = parent,stateno=20000
value = 20030+(parent,stateno=20002)

[State WHOOSH]
type = PlaySnd
triggerall = prevstateno!=20301
trigger1 = anim = 20031
value = s0,2
persistent = 0

[State CHANGETOGETHITSTATE]
type = HitOverride
trigger1 = !time
attr = SCA,AP,AA,AT
stateno = 20301
time = -1

[State AntiKid]
type = HitDef
triggerall = (root,var(50))
trigger1 = !time
attr = A,NA
hitflag = MAFD
affectteam = E
animtype = light
air.animtype = light
damage = 999,999
sparkno = -1
guard.sparkno = -1
sparkxy = 16,-88
hitsound = S1,2
guardsound = S1,2
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -4.9,-.8
air.type = High
air.velocity = -6.4,-3
air.hittime = 12
fall = 1
kill = 1
numhits = -1

[State Dead]
type = DestroySelf
triggerall = parent,stateno=20003
trigger1 = parent,anim=20000

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;-Hit state-
[Statedef 20301]
type = A
movetype = I
ctrl = 0
physics = N
sprpriority = -4

[State BACK]
type = ChangeState
trigger1 = 1
value = 20300

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;-------------------------------------------------------------------------------
; Bullets
;-------------------------------------------------------------------------------
;-=Regular Fire Eye Bullet=-
[Statedef 21000]
type = A
ctrl = 0
physics = N
movetype = A
anim = 1410
velset = 5,5
sprpriority = 2

[State SHOOT]
type = PlaySnd
trigger1 = !time
value = s2,3
channel = 1

[State AIM]
type = VelMul
trigger1 = !time
x = ((P2Dist X)/(Abs(P2Dist X)+Abs(P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))
y = ((P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))/(Abs(P2Dist X)+Abs(P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))

[State FireDoesn'tHaveShadows]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State DamageAndStuff]
type = HitDef
trigger1 = !movecontact
attr = A,NP
damage = 12,0
animtype = light
hitflag = MAF
guardflag = MA
priority = 1,Miss
pausetime = 0,1
hitsound = S1,2
guardsound = S1,2
sparkno = 3
guard.sparkno = 40
sparkxy = 0,0
ground.type = high
air.type = high
ground.slidetime = 1
ground.hittime = 1
air.hittime = 1
ground.velocity = -.5,0
air.velocity = -.5,-.5
airguard.velocity = -.5,-.25
fall.recover = 1
getpower = 0,0
persistent = 0

[State Disappear]
type = DestroySelf
trigger1 = screenpos y != [-40,280]
trigger2 = screenpos x != [-40,360]

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;-=Fast Fire Eye Bullet=-
[Statedef 21010]
type = A
ctrl = 0
physics = N
movetype = A
anim = 1410
sprpriority = 2

[State SHOOT]
type = PlaySnd
trigger1 = !time
value = s3,8
channel = 1

[State AIM]
type = VelSet
trigger1 = !time
x = (parent,fvar(20))
y = (parent,fvar(21))

[State FireDoesn'tHaveShadows]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State DamageAndStuff]
type = HitDef
trigger1 = !movecontact
attr = A,NP
damage = 5,0
animtype = light
hitflag = MAF
guardflag = MA
priority = 1,Miss
pausetime = 0,1
hitsound = S1,2
guardsound = S1,2
sparkno = 3
guard.sparkno = 40
sparkxy = 0,0
ground.type = high
air.type = high
ground.slidetime = 1
ground.hittime = 1
air.hittime = 1
ground.velocity = -.5,0
air.velocity = -.5,-.5
airguard.velocity = -.5,-.25
fall.recover = 1
getpower = 0,0
persistent = 0

[State Disappear]
type = DestroySelf
trigger1 = screenpos y != [-40,280]
trigger2 = screenpos x != [-40,360]

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;-=Floor burning Fire Bullet=-
[Statedef 21011]
type = A
ctrl = 0
physics = N
movetype = A
anim = 1410
velset = 3*(1+!isHelper(21010)+isHelper(21012)),6-.5*(!isHelper(21010)+isHelper(21012))
sprpriority = 2

[State FireDoesn'tHaveShadows]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State DamageAndStuff]
type = HitDef
trigger1 = !movecontact
attr = A,NP
damage = 20,0
animtype = light
hitflag = MAF
guardflag = MA
priority = 1,Miss
pausetime = 0,1
hitsound = S1,2
guardsound = S1,2
sparkno = 3
guard.sparkno = 40
sparkxy = 0,0
ground.type = high
air.type = high
ground.slidetime = 1
ground.hittime = 1
air.hittime = 1
ground.velocity = -.5,0
air.velocity = -.5,-.5
airguard.velocity = -.5,-.25
fall.recover = 1
getpower = 0,0
persistent = 0

[State FLOORIT]
type = PosSet
trigger1 = pos y > 0
y = 0

[State DONE]
type = ChangeState
trigger1 = !(pos y)
value = ifelse(isHelper(21012)*!!(root,var(50)),21012,1312)
ignorehitpause = 1

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

[Statedef 21012]
movetype = A
physics = N
anim = 1422
sprpriority = 1
ctrl = 0
velset = 0,0

[State FIYA]
type = PlaySnd
trigger1 = !time
value = s2,6
channel = 2

[State STICKY]
type = PosSet
trigger1 = !time
y = 0

[State BOOM]
type = HitDef
trigger1 = !MoveContact
attr = A,SA
hitflag = MAFD
damage = 3,0
animtype = light
priority = 2,miss
damage = 0,0
pausetime = 0,5
sparkno = s9741
guard.sparkno = s9741
sparkxy = 0,0
hitsound = S2,7
guardsound = S2,7
ground.velocity = -2*(P2Dist X/abs(P2Dist X + .0000001))*(P2Dist X != [-10,10]),-1*(1+(P2Dist X = [-10,10]))
air.velocity = -2*(P2Dist X/abs(P2Dist X + .0000001))*(P2Dist X != [-10,10]),-1*(1+(P2Dist X = [-10,10]))
fall = 0
guard.dist = 0
ground.hittime = 1
[State lolhitreset]
type = MoveHitReset
trigger1 = movecontact>=30

[State Done]
type = DestroySelf
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;-=Ice Eye Bullet=-
[Statedef 21020]
type = A
ctrl = 0
physics = N
movetype = A
anim = 1420
velset = 0,0
sprpriority = 2

[State SHOOT]
type = PlaySnd
trigger1 = !time
value = s3,2

[State AIM]
type = VelSet
trigger1 = !(time%45)
x = 1.125*!!(time%90)*((P2Dist X)/(Abs(P2Dist X)+Abs(P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))
y = 1.125*!!(time%90)*((P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))/(Abs(P2Dist X)+Abs(P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))

[State FireDoesn'tHaveShadows]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State DamageAndStuff]
type = HitDef
trigger1 = !movecontact
attr = A,NP
damage = 20,0
animtype = light
hitflag = MAF
guardflag = MA
priority = 1,Miss
pausetime = 0,1
hitsound = S1,2
guardsound = S1,2
sparkno = 3
guard.sparkno = 40
sparkxy = 0,0
ground.type = high
air.type = high
ground.slidetime = 1
ground.hittime = 1
air.hittime = 1
ground.velocity = -.5,0
air.velocity = -.5,-.5
airguard.velocity = -.5,-.25
fall.recover = 1
getpower = 0,0
persistent = 0
[State RESET]
type = MoveHitReset
trigger1 = movecontact>=60

[State CHANGETOGETHITSTATE]
type = HitOverride
trigger1 = !time
attr = SCA,AP,AA,AT
stateno = 1321
time = -1

[State DIE]
type = DestroySelf
trigger1 = parent,stateno=20003

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;-=SURPRISE=-
[Statedef 21030]
type = A
movetype= A
physics = N
anim = 1011
velset = 0,5
sprpriority = 2
ctrl = 0

[State VELOCITYSTUFF]
type = VelSet
trigger1 = !time
x = 7*sin((!isHelper(21030)+isHelper(21032))*pi/14.5)
y = 7*cos((!isHelper(21030)+isHelper(21032))*pi/14.5)

[State BUTT]
type = assertspecial
trigger1 = 1
flag = noshadow

[State Noize]
type = PlaySnd
trigger1 = !time
value = s2,9
channel = 2
volume = 128

[State DIEDIEDIE]
type = HitDef
trigger1 = !MoveContact
attr = A,HA
hitflag = MAFD
priority = 4
sparkno = 3
guard.sparkno = 40
pausetime = 0,12
damage = 999,999
getpower = 0,0
hitsound = S1,2
guardsound = S1,3
ground.type = hard
ground.hittime = 20
air.hittime = 20
ground.slidetime = 12
ground.velocity = -12,0
air.velocity = -5,-2
kill = 1
palfx.time = 20
palfx.add = 255,255,255
palfx.sinadd = -255,-255,-255,80

[State Done]
type = DestroySelf
trigger1 = screenpos y > 320
trigger1 = pos y > 0

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;-------------------------------------------------------------------------------
;-=Fire Breath=-
[Statedef 21040]
type = A
ctrl = 0
physics = N
movetype = A
anim = 9741
sprpriority = 2

[State Smoke]
type = Explod
trigger1 = 1
anim = 1412
ID = 1412
pos = (random%101)-50,0
postype = p1
bindtime = 1
facing = 1
accel = 0,-.0875
ownpal = 1
sprpriority = 3

[State BREATHE]
type = changestate
trigger1 = time>=40
value = 21041

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;The Breath
[Statedef 21041]
type = A
ctrl = 0
physics = N
movetype = A
anim = 9741
sprpriority = 2

[State TURNIT]
type = Turn
triggerall = !time
trigger1 = p2dist x < 0

[State BREATHE]
type = PlaySnd
trigger1 = !time
trigger2 = time=20
value = s2,7-!time
channel = 2-!time

[State MORESTUFF]
type = VarSet
trigger1 = 1
var(10) = (((time*2)+2)%5)

[State RANDOM]
type = VarSet
trigger1 = 1
fvar(10) = (((random%51)-25)*pi/300)

[State FLOATY]
type = VarSet
trigger1 = !time
fvar(11) = ((P2Dist X)/(Abs(P2Dist X)+Abs(P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))
[State FLOATY]
type = VarSet
trigger1 = !time
fvar(12) = ((P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))/(Abs(P2Dist X)+Abs(P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))

[State FLOATY]
type = VarSet
trigger1 = 1
fvar(20) = (10+var(10))*cos(atan(fvar(12)/fvar(11))-fvar(10))
[State FLOATY]
type = VarSet
trigger1 = 1
fvar(21) = (10+var(10))*sin(atan(fvar(12)/fvar(11))-fvar(10))

[State FIRE]
type = Helper
trigger1 = !(time%2)
helpertype = normal
name = "Breath"
id = 21042
stateno = 21042
pos = 0,0
ownpal = 1

[State Disappear]
type = DestroySelf
trigger1 = time>60

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;-=Fire breath bullet=-
[Statedef 21042]
type = A
ctrl = 0
physics = N
movetype = A
anim = 1410
sprpriority = 2

[State AIM]
type = VelSet
trigger1 = !time
x = (parent,fvar(20))
y = (parent,fvar(21))+1

[State SLOOOWDOWN]
type = VelMul
trigger1 = 1
x = .95
y = .95

[State Rise?]
type = VelAdd
trigger1 = 1
y = -.0875-.1*(abs(vel x)<1)

[State UP]
type = VelMul
triggerall = vel y > 0
trigger1 = pos y >= 0
y = -.01

[State FireDoesn'tHaveShadows]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State DamageAndStuff]
type = HitDef
trigger1 = !movecontact
attr = A,NP
damage = 5,4
animtype = light
hitflag = MAF
guardflag = MA
priority = 1,Miss
pausetime = 0,1
hitsound = S1,2
guardsound = S1,2
sparkno = 3
guard.sparkno = 40
sparkxy = 0,0
ground.type = high
air.type = high
ground.slidetime = 1
ground.hittime = 1
air.hittime = 1
ground.velocity = -.5,0
air.velocity = -.5,-.5
airguard.velocity = -.5,-.25
fall.recover = 1
getpower = 0,0
persistent = 0
[State RESET]
type = MoveHitReset
trigger1 = movecontact >= 40

[State FADE]
type = Trans
trigger1 = time>=44
trans = addalpha
alpha = (256-16*(time-44))*((256-16*(time-44))>=0),(16*(time-44))*(16*(time-44)>=0)

[State Disappear]
type = DestroySelf
trigger1 = time>=60

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901



;---------------------------------------------------------------------------
;BURN (not in use, maybe)
;---------------------------------------------------------------------------
[Statedef 22000]
type = A
movetype = A
physics = N
anim = 1110

[State Thump]
type = PlaySnd
trigger1 = !time
trigger2 = time=10
value = s2,7-!time
channel = 3+!time

[State DAMAGE]
type = HitDef
trigger1 = !movecontact
attr = A,NA
damage = 3,0
animtype = Light
hitflag = MF
priority = 1,miss
pausetime = 0,1
sparkno = 9741
guard.sparkno = 9741
sparkxy = 0,0
hitsound = S3,3
guardsound = S3,3
ground.type = Low
ground.slidetime = 1
ground.hittime  = 1
ground.velocity = 0,0
airguard.velocity = 0,0
air.type = Low
air.velocity = 0,0
air.hittime = 1
fall = 1
[State RESET]
type = MoveHitReset
trigger1 = movecontact>=32

[State Fire]
type = Explod
trigger1 = !time
anim = 22000
id = 22000
postype = left
pos = 160,240
sprpriority = 5
ownpal = 1
bindtime = -1
removetime = -1
scale = 2,0
[State UP]
type = ModifyExplod
triggerall = time
trigger1 = time<=10
ID = 22000
scale = 2,.2*time
[State STICKY]
type = PosSet
trigger1 = 1
x = 0

[State NOTOUCHY]
Type = NotHitBy
Trigger1 = 1
Value = SAC
Time = 1

[State Die]
type = RemoveExplod
trigger1 = parent,stateno!=20002
ID = 22000
[State Die]
type = DestroySelf
trigger1 = parent,stateno!=20002

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;-=Spike Tooth=-
[Statedef 22001]
type = A
ctrl = 0
physics = N
movetype = A
anim = 22001
sprpriority = 0

[State WhenThisIsAngled]
Type = AngleDraw
Trigger1 = animelemtime(9)>0

[State WhenThisIsAngled]
Type = AngleSet
Trigger1 = animelemtime(9)>0
Trigger1 = (Vel X)
Value = ATan(Vel Y/Vel X)*(-180.0/Pi)+((Vel X<0)*180)
[State WhenThisIsAngled]
Type = AngleSet
Trigger1 = animelemtime(9)>0
Trigger1 = !(Vel X)
Value = ifelse(Vel Y > 0, -90, 90)

[State UP]
type = PosAdd
trigger1 = animelem=9
y = -16

[State AIM]
type = VelSet
trigger1 = animelem=9
x = 5*((P2Dist X)/(Abs(P2Dist X)+Abs(P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))
y = 5*((P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))/(Abs(P2Dist X)+Abs(P2Dist Y+(EnemyNear,Const(Size.Mid.Pos.Y)))+.0000001))

[State TeethDon'tHaveShadowsForSomeReason]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State DamageAndStuff]
type = HitDef
trigger1 = !time
trigger2 = animelem=9
attr = A,SP
damage = 50,0
animtype = light
hitflag = MAF
guardflag = MA
priority = 1,Miss
pausetime = 0,1
hitsound = S3,5
guardsound = S3,5
sparkno = 3
guard.sparkno = 40
sparkxy = 0,0
ground.type = high
air.type = high
ground.slidetime = 1
ground.hittime = 1
air.hittime = 1
ground.velocity = -.5,0
air.velocity = -.5,-.5
airguard.velocity = -.5,-.25
fall.recover = 1
getpower = 0,0
persistent = 0

[State Disappear]
type = DestroySelf
trigger1 = screenpos y != [-40,280]
trigger2 = screenpos x != [-40,360]
trigger3 = parent,stateno!=20201

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;-=HUD Destroyer=-   (Maybe)
[Statedef 22002]
type = A
ctrl = 0
physics = N
movetype = A
anim = 9741

[State BoomBoomBoomExplod]
type = Explod
trigger1 = time<50
anim = 21002
ID = 21002
pos = random%321,random%241
postype = left
trans = add
sprpriority = 4
ownpal = 1


;===============================================================================
; Falling Boulder
;===============================================================================
[Statedef 22100]
type = A
ctrl = 0
physics = N
movetype = A
anim = 22100
velset = 0,0

[State FALL]
type = PlaySnd
trigger1 = !time
value = S2,0
volume = 128

[State FALL]
type = VelAdd
trigger1 = vel y < 9
y = .3

[State DIIIIEEEEEE]
type = HitDef
trigger1 = !movecontact
attr = A,SA
hitflag = MAF
guardflag = MF
animtype = back
air.animtype = DiagUp
fall.animtype = Heavy
priority = 6,Hit
damage = 40,25
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
pausetime = 0,1
hitsound = S2,2
guardsound = S2,2
ground.type = High
ground.hittime = 20
air.hittime = 20
ground.velocity = 0,10
air.velocity = 0,10
sprpriority = 1
kill = 1
fall = 1
fall.recover = 0
getpower  = 0,0
givepower = 500,500

[State Boom]
type = ChangeState
trigger1 = numtarget
trigger1 = target,name!="IWBTG"
trigger1 = target,authorname!="fhqwhgads7"
trigger2 = pos y >= 0
trigger2 = vel y
value = 22101

[State die]
type = DestroySelf
trigger1 = !numhelper(20000)
trigger2 = numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;Break
[Statedef 22101]
type = A
ctrl = 0
physics = N
movetype = I
anim = 22101
velset = 0,0

[State FLOORIT]
type = PosSet
trigger1 = !time
y = 0

[State Boom]
type = PlaySnd
trigger1 = !time
value = s3,3
channel = 2

[State Shake'n'Bake]
type = EnvShake
trigger1 = !time
time = 5
freq = 150
ampl = -15

[State okdone]
type = DestroySelf
trigger1 = !animtime
trigger2 = !numhelper(20000)
trigger3 = numhelper(20000)
trigger3 = helper(20000),stateno=20003

[State Done]
type = DestroySelf
triggerall = root,stateno=5151
trigger1 = !numhelper(20000)
trigger2 = helper(20000),stateno=20003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;TAKING YOU WITH ME
[Statedef 29999]
type = A
ctrl = 0
physics = N
movetype = I
velset = 0,0

[State NO]
type = Screenbound
trigger1 = 1
value = 0

[State INVISIBLE]
type = ChangeAnim2
trigger1 = !time
value = 9741

[State SETIT]
type = VarSet
trigger1 = !time
sysvar(1) = 4617

[State NEXT]
type = ChangeState
triggerall = numenemy
trigger1 = enemy,numhelper(30000)
value = 30001

;-=FINAL BACKGROUND=-
[Statedef 30000]
type = A
ctrl = 0
physics = N
movetype = A
anim = 30000
sprpriority = -1

[State FINALBACKGROUND]
type = Helper
trigger1 = !time
helpertype = normal
name = "AmuletThingy"
id = 10000
stateno = 30010
pos = 0,0
postype = left
ownpal = 1
size.xscale = .5
size.yscale = .5

[State SMALLER]
type = AngleDraw
trigger1 = 1
scale = .5,.5

[State TURN]
type = Turn
trigger1 = facing = -1

[State NO]
type = AssertSpecial
trigger1 = 1
flag = nobg
flag2 = nofg
flag3 = nobardisplay

[State Spikes]
type = Explod
trigger1 = !time
anim = 30001
id = 30001
pos = 0,0
sprpriority = 3
ownpal = 1
bindtime = -1
removetime = -1
scale = .5,.5
[State Spikes]
type = Explod
trigger1 = !time
anim = 30003
id = 30001
pos = 0,-399
sprpriority = 3
ownpal = 1
bindtime = -1
removetime = -1
scale = .5,.5
[State Head]
type = Explod
trigger1 = !time
anim = 30010
id = 30001
pos = 0,-399
sprpriority = -2
ownpal = 1
bindtime = -1
removetime = -1
scale = .5,.5

[State Sky]
type = Explod
trigger1 = !time
anim = 30004
id = 30001
pos = 0,-380
sprpriority = -3
ownpal = 1
bindtime = -1
removetime = -1
scale = .5,.375
[State Sky]
type = Explod
trigger1 = !time
anim = 30004
id = 30001
pos = 0,30
sprpriority = -3
ownpal = 1
bindtime = -1
removetime = -1
scale = .5,.375
[State Sky]
type = Explod
trigger1 = !time
anim = 30005
id = 30001
pos = 0,-1452
sprpriority = -3
ownpal = 1
bindtime = -1
removetime = -1
scale = .5,.5


[State IIIII'MSANTACLAUUUS.CHECKIT]
type = HitDef
trigger1 = !MoveContact
attr = A,HT
hitflag = MAFD
affectteam = E
priority = 9,hit
damage = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 16,-88
hitsound = S0,999;No
guardsound = S0,999;No
p2stateno = 30002
sprpriority = -1

[State SHADDAP]
type = StopSnd
trigger1 = movecontact=1
channel = -1

[State Amulet]
type = Explod
triggerall = enemy,stateno=183
trigger1 = !numexplod(10000)
anim = 10000
id = 10000
pos = 5,-6
postype = p2
sprpriority = 2
ownpal = 1
bindtime = -1
removetime = -1
scale = .5,.5

[State MOVEIT]
type = VelSet
triggerall = time
triggerall = numenemy
triggerall = enemy,stateno=[30001,30003]
trigger1 = !(enemy,vel y)
y = -1.8*(pos y > 0)
[State FLOORIT]
type = PosSet
trigger1 = pos y < 0
y = 0

[State NowTheExplods]
type = RemoveExplod
trigger1 = root,stateno=5901
ID = 30001
[State Die]
type = destroyself
trigger1 = root,stateno=5901


;FALL
[Statedef 30001]
type = A
ctrl = 0
physics = N
movetype = I
anim = 48;4
velset = 0,0

[State TURN]
type = Turn
trigger1 = facing = -1

[State THISWAY]
type = VelSet
trigger1 = !time
x = 1.625
y = -2.4

[State ISAIDFALL]
type = VelAdd
trigger1 = vel y < 1.8
y = .05
[State FALL]
type = VelMul
;triggerall = time
trigger1 = pos x >= 0
x = 0.875
[State STOP]
type = VelSet
trigger1 = pos y>=-50
y = 0

[State TIME]
type = DisplayToClipboard
triggerall = time
trigger1 = pos y >= -150
text = "TIME: %d"
params = time
persistent = 0

[State STICKY]
type = PosSet
trigger1 = !time
x = -140
y = -150
[State STICKY]
type = PosSet
trigger1 = pos y>-50
y = -50

[State ANGLESET]
type = AngleSet
trigger1 = time<=270
value = -(time*24)


;Sticky
[Statedef 30002]
type = A
ctrl = 0
physics = N
movetype = I

[State THUD]
type = PlaySnd
trigger1 = time=1
value = S0,3

[State INVISIBLE]
type = ChangeAnim2
trigger1 = !time
value = 9741

[State NEXT]
type = ChangeState
trigger1 = roundstate>2
value = 30003

;Walk it out
[Statedef 30003]
type = A
ctrl = 0
physics = N
movetype = I
velset = .8,0
sprpriority = 0

[State CHANGEIT]
type = ChangeAnim
trigger1 = !time
value = 20

[State STICKY]
type = PosSet
trigger1 = !time
y = 0

[State DONE]
type = SelfState
trigger1 = FrontEdgeDist < 20
value = 0
ctrl = 1


;Amulet Thingy
[Statedef 30010]
type = A
ctrl = 0
physics = N
movetype = I
anim = 10000
velset = 2.8,-2.6

[State TURN]
type = Turn
trigger1 = facing = -1

[State ISAIDFALL]
type = VelAdd
trigger1 = vel y < 2
y = .075
[State FALL]
type = VelMul
trigger1 = pos x >= 80
x = 0.9*(vel x > .005)
[State STOP]
type = VelSet
trigger1 = enemy,pos y>=-50
y = .2

[State STICKY]
type = PosSet
trigger1 = !time
x = -140
y = -170

[State GOGOGO]
type = ChangeState
trigger1 = numenemy
trigger1 = enemy,time>=270
value = 30011

;Amulet Thingy
[Statedef 30011]
type = A
ctrl = 0
physics = N
movetype = I
anim = 10000

[State GOGOGO]
type = VelSet
trigger1 = !time
trigger2 = time=50
x = !time*((p2dist x)+5)/50.0
y = !time*(p2dist y)/50.0

[State DIE]
type = DestroySelf
trigger1 = enemy,stateno!=30001


;=====THETAKINGYOUWITHMEGUY=====
[Statedef 31000]
type = A
movetype = A
physics = N
Ctrl = 0
Anim = 30002

[State FLOORIT]
type = PosSet
trigger1 = 1
x = 0
y = 0

[State TheCheck]
type = HitDef
triggerall = parent,stateno=20004
trigger1 = !MoveContact
attr = A,HT
hitflag = MAFD
affectteam = E
priority = 9,hit
damage = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 16,-88
hitsound = S0,999;No
guardsound = S0,999;No
p2stateno = 29999

[State NO]
type = DestroySelf
trigger1 = movecontact
trigger1 = target,stateno=29999

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901
