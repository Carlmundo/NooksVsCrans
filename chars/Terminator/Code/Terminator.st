;Пистолет
[Statedef 200]
type = S
physics = S
movetype = A
ctrl = 0
anim =202+(var(50)*10000)
poweradd = -100
sprpriority = 2

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,8
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 32003 + (random % 3)
ID = 10006
pos = 35,-75
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 200, Projectile]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 30001
projanim = 30005
projscale = 1,1
projremove = 1
projremovetime = 30
velocity = 40,0
offset = 10,-75
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 20,10
givepower = 20,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
ground.type = High     ;Low,Trip,None
air.type = High
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,2
pausetime = 0,0
guard.pausetime = 0,0
hitsound = S200,1
guardsound = 6,0
ground.hittime = 10
guard.hittime = 10
air.hittime = 10
ground.slidetime = 10
guard.slidetime = 10
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<200,1,0)

[State 200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Узи
[Statedef 201]
type = S
physics = S
movetype = A
ctrl = 0
anim = 203+(var(50)*10000)
poweradd = -200
sprpriority = 2

[State 201, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 201, Explod]
type = Explod
trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)
anim = 32003 + (random % 3)
ID = 10006
pos = 43,-78
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 201, Projectile]
type = Projectile
trigger1 =  (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)
ProjID = 30000
projanim = 30000
projhitanim = 30001
projscale = .5,.3
projremove = 1
projremovetime = 30
velocity = 40,0
offset = 10,-77
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 20,10
givepower = 20,20
animtype = medium         ;light,medium,hard,back,up,diagup
air.animtype = medium
fall.animtype = Back
ground.type = High     ;Low,Trip,None
air.type = High
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = 1
hitsound = S200,1
guardsound = 6,0
ground.hittime = 10
guard.hittime = 10
air.hittime = 10
ground.slidetime = 10
guard.slidetime = 10
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<200,1,0)

[State 201, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Плазмовинтовка
[Statedef 202]
type = S
physics = S
movetype = A
ctrl = 0
anim = 204+(var(50)*10000)
poweradd = -300
sprpriority = 2

[State 202, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,7
channel = -1
freqmul = 1.0
loop = 0
pan = 0

;[State 202, Explod]
;type = Explod
;trigger1 = AnimElem = 2
;anim = 32003 + (random % 3)
;ID = 10006
;pos = 52,-73
;scale = 1,1 
;removetime = 2
;bindtime = 2
;postype = p1
;sprpriority = 3

[State 202, Projectile]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 30002
projanim = 30007
;projhitanim = 32401
projscale = 1.5,1.5
projremove = 1
projremovetime = 60
projpriority = 2
projsprpriority = 1
velocity = 10,0
offset = 30,-74
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 100,10
givepower = 100,20
animtype = Hard          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Back
ground.type = High     ;Low,Trip,None
air.type = High
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 100,2
pausetime = 0,0
guard.pausetime = 0,0
hitsound = S200,1
guardsound = 6,0
sparkno = S32401
guard.sparkno = S32401 
ground.hittime = 15
guard.hittime = 15
air.hittime = 15
ground.slidetime = 15
guard.slidetime = 15
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
fall = IfElse(random<250,1,0)
palfx.time = 40
palfx.mul = 200,200,120
palfx.add = 120,25,0
palfx.sinadd = 110,55,85,10
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0

[State 202, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Базука
[Statedef 203]
type = S
physics = S
movetype = A
ctrl = 0
anim = 205+(var(50)*10000)
poweradd = -600
sprpriority = 2

[State 203, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,4
channel = -1

[State 203, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 32003 + (random % 3)
ID = 10006
pos = 50,-74
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 203, Projectile]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 30003
projanim = 30002
projhitanim = 30002
projscale = .7,.7
projremove = 1
projremovetime = 100
projpriority = 2
velocity = 7,0
offset = 50,-72
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 200,10
givepower = 200,20
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
fall.animtype = Back
ground.type = High     ;Low,Trip,None
air.type = High
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 200,10
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S31000 
guard.sparkno = S31000 
hitsound = S6666,4
guardsound = S6666,4
ground.velocity = -10,-3
guard.velocity = -3
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = 1
fall.recover = 0

[State 203, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Автомат
[Statedef 204]
type = S
physics = S
movetype = A
ctrl = 0
anim = 206+(var(50)*10000)
poweradd = -400
sprpriority = 2

[State 204, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,3
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 204, Explod]
type = Explod
trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)
anim = 32003 + (random % 3)
ID = 10006
pos = 80,-78
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 204, Projectile]
type = Projectile
trigger1 =  (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)
ProjID = 30004
projanim = 30000
projhitanim = 30001
projscale = .85,.45
projremove = 1
projremovetime = 25
velocity = 40,0
projsprpriority = 1
offset = 10,-77
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 50,10
givepower = 50,20
animtype = medium          ;light,medium,hard,back,up,diagup
air.animtype = medium
fall.animtype = Back
ground.type = High     ;Low,Trip,None
air.type = High
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50,5
pausetime = 0,0
guard.pausetime = 0,0
sparkno = 2
hitsound = S200,1
guardsound = 6,0
ground.velocity = -2,-3
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<750,0,1)

;[State 204, HitDef]
;Type = HitDef
;trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)
;attr = S,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;hitflag = MAF        ;HLAFD+-
;guardflag = MA         ;HLA
;getpower = 20,10
;givepower = 20,20
;animtype = light          ;light,medium,hard,back,up,diagup
;air.animtype = light
;fall.animtype = Back
;priority = 4,Hit   ;Hit,Miss,Dodge
;damage = 10,2
;pausetime = 0,0
;sparkxy = 0, -75
;guard.pausetime = 0,0
;hitsound = S200,1
;guardsound = 6,0
;ground.velocity = -6,-3
;guard.velocity = -2
;air.velocity = -5,0
;airguard.velocity = -1,0
;fall = IfElse(random<150,0,1)

[State 204, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Плазмогранатомет
[Statedef 206]
type = S
physics = S
movetype = A
ctrl = 0
anim = 204+(var(50)*10000)
poweradd = -500*(prevstateno!=3200)
sprpriority = 2

[State 206, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,5
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 206, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 32003 + (random % 3)
ID = 10006
pos = 52,-80
scale = 1,1 
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 206, Projectile]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 10006
projanim = 30008
;projhitanim = 31000
projscale = 1.5,1
projremove = 1
projremovetime = 60
projpriority = 2
projsprpriority = 1
velocity = 10,0
offset = 30,-80
postype = p1         ;p2,front,back,left,right
attr = S,SP,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 150,10
givepower = 150,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
ground.type = High     ;Low,Trip,None
air.type = High
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 150,15
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S32400 
guard.sparkno = S32400 
hitsound = S6666,3
guardsound = S6666,3
ground.velocity = -10,-3
guard.velocity = -3
air.velocity = -5,0
airguard.velocity = -1,0
fall = IfElse(random<150,0,1)
palfx.time = 40
palfx.mul = 200,200,120
palfx.add = 120,25,0
palfx.sinadd = 110,55,85,10
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall.recover = 0

[State 206, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Дробовик
[Statedef 207]
type = S
physics = S
movetype = A
ctrl = 0
anim = 208+(var(50)*10000)
velset = 0,0
poweradd = -450
sprpriority = 2

[State 207, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,9
channel = -1

[State 207, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 32003 + (random % 3)
ID = 10006
pos = 72,-80
removetime = 2
bindtime = 2
postype = p1
scale = .8,.8
sprpriority = 2

[State 207, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 32003 + (random % 3)
ID = 10006
pos = 72,-74
removetime = 2
bindtime = 2
postype = p1
scale = .8,.8
sprpriority = 2

[State 207, Projectile]
type = Projectile
trigger1 = AnimElem = 2 
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .3,.3
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10-random%3,-74-random%7
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
fall.animtype = Back
ground.type = High     ;Low,Trip,None
air.type = High
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<800,0,1)

[State 207, Projectile]
type = Projectile
trigger1 = AnimElem = 2  
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .3,.3
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10-random%3,-74-random%7
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<800,0,1)

[State 207, Projectile]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .3,.3
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10-random%3,-74-random%7
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<800,0,1)

[State 207, Projectile]
type = Projectile
trigger1 = AnimElem = 2  
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .3,.3
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10-random%3,-74-random%7
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<800,0,1)

[State 207, Projectile]
type = Projectile
trigger1 = AnimElem = 2  
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .3,.3
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10-random%3,-74-random%7
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<800,0,1)

[State 207, Projectile]
type = Projectile
trigger1 = AnimElem = 2  
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .3,.3
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10-random%3,-74-random%7
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<800,0,1)

[State 207, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Гранатомет
[Statedef 208]
type = S
physics = S
movetype = A
ctrl = 0
anim = 209+(var(50)*10000)
velset = 0,0
poweradd = -500
sprpriority = 2

[State 208, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,11
channel = -1

;[State 208, Explod]
;type = Explod
;trigger1 = AnimElem = 2
;anim = 32003 + (random % 3)
;ID = 10006
;pos = 55,-75
;removetime = 2
;bindtime = 2
;postype = p1
;sprpriority = 2

[State 208, Helper]
type = Helper
trigger1 = AnimElemTime(1) = 2
helpertype = normal ;player
name = "Grenade"
ID = 10009
stateno = 10008
pos = 20,-78+4*(var(50)=2)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1.2
size.yscale = 1.2
supermovetime = 0
pausemovetime = 0

[State 208, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Винтовка
[Statedef 209]
type = S
physics = S
movetype = A
ctrl = 0
anim = 205+(var(50)*10000)
poweradd = -300
sprpriority = 2

[State 209, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,2
channel = -1

[State 209, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 32003 + (random % 3)
ID = 10006
pos = 50,-74
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 209, Projectile]
type = Projectile
trigger1 =  AnimElem = 2
ProjID = 30004
projanim = 30000
projhitanim = 30001
projscale = .90,.45
projremove = 1
projremovetime = 25
velocity = 40,0
projsprpriority = 1
offset = 10,-73
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 50,10
givepower = 50,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
ground.type = High     ;Low,Trip,None
air.type = High
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 65,5
pausetime = 0,0
guard.pausetime = 0,0
sparkno = 1
hitsound = S200,1
guardsound = 6,0
ground.velocity = -2,-3
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<750,0,1)

[State 209, ChangeState]
type = ChangeState
trigger1 = (Command = "z") && (AnimElemNo(0) = [2,3]) && (Power >= 300)
value = stateno
ctrl = 0

[State 209, ChangeState]
type = ChangeState
trigger1 = !AnimTime && Command != "z"
value = 0
ctrl = 1

;Пистолет (режим прицеливания)
[Statedef 211]
type = U
movetype = A
physics = U
ctrl = 0
Anim = IfElse(Statetype = S, (211+(var(50)*10000)), (411+(var(50)*10000)))
Velset = 0,0
poweradd = -200
sprpriority = 2

[State -3, Shoot in TS]
type = VarSet
triggerall = AILevel && !var(59) && Anim = 211+(var(50)*10000) ;&& Time > 3
trigger1 = (P2StateNo != [120,155]) ;&& Random = [100,900]
v = 59   
value = 1

[State 211, Explod] ;Фон
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (195)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (195)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (195)), 1)
trigger1 = !NumExplod(195) && (Time = 1) 
anim = 195
ID = 195
pos = 0,0
postype = left 
bindtime = 120
removetime = 120
sprpriority = 4
persistent = 1
ownpal = 1
ontop = 1
removeongethit = 1

[State 211, Explod] ;Компас
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (190)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (190)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (190)), 1)
trigger1 = !NumExplod(190) && (Time = 1) 
anim = 190
ID = 190
pos = 30,50
scale = .5,.5
postype = left 
bindtime = 120
removetime = 120
sprpriority = 5
ownpal = 1
ontop = 1
removeongethit = 1

[State 211, Explod] ;Коды
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (191)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (191)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (191)), 1)
trigger1 = !NumExplod (191) && (Time = 1) 
anim = 191
ID = 191
pos = 30,100
scale = .5,.5
postype = left 
bindtime = 120
removetime = 120
sprpriority = 5
ownpal = 1
ontop = 1
removeongethit = 1

[State 211, Explod] ;Надпись
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (197)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (197)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (197)), 1)
trigger1 = !NumExplod (197) && (Time = 1) 
anim = 197
ID = 197
pos = 100,95
postype = left 
bindtime = 120
removetime = 120
sprpriority = 5
ownpal = 1
ontop = 1
removeongethit = 1

[State 211, Turn]
type = Turn
trigger1 = P2Dist x <= 0

[State 211, RemoveExplod]
type = RemoveExplod
trigger1 = (command = "Realise_s" || var(59))||(time = 120)||(RoundState != 2)||(HitFall)||((Statetype = A))||ctrl

[State 211, PlaySnd]
type = PlaySnd
trigger1 = command = "Realise_s" || var(59) 
value = S200, 8
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 211, ChangeAnim]
type = ChangeAnim
trigger1 = command = "Realise_s" || var(59) 
trigger1 = time
value = IfElse(Statetype = S, 212+(var(50)*10000), 412+(var(50)*10000))

[State 211, Explod]
type = Explod
trigger1 =IfElse(Statetype = S, 212+(var(50)*10000), 412+(var(50)*10000))
trigger1 = AnimElem = 1 && time
anim = 32003 + (random % 3)
ID = 10006
pos = 35+5*(Statetype = C)+8*((var(50)=2)&&(Statetype = C)),-75+22*(Statetype = C)+10*((var(50)=2)&&(Statetype = C))
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 211, Projectile]
type = Projectile
trigger1 = command = "Realise_s" || var(59) 
ProjID = 30011
projanim = 30005
projscale = 1,1
projremove = 1
projremovetime = 1
velocity = 0,0
offset = facing*var(10), -GameHeight+var(11);IfElse(Facing = 1,var(10),-var(10)), -240+var(11)
postype = Left         ;p2,front,back,left,right
attr = S,SP,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 20,10
givepower = 20,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
ground.type = Trip     ;Low,Trip,None
air.type = Trip
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,2
pausetime = 0,0
sparkxy = 0,-30
guard.pausetime = 0,0
hitsound = S200,1
guardsound = 6,0
ground.velocity = -2,-3
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = 1

[State 211, ChangeState] ;Change to stand state when done
type = ChangeState
trigger1 = (Animtime = -1)||(time = 119)||(RoundState != 2)||(HitFall)||(Statetype = A)
value = 0+11*(Statetype = C)
ctrl = 1

;Удар рукой
[Statedef 220]
type = S
physics = S
movetype = A
ctrl = 0
anim = 240+(var(50)*10000)
sprpriority = 2

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S220,0
channel = -1

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem =3
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Light          ;light,medium,hard,back,up,diagup
air.animtype = Light
fall.animtype = Back
priority = 4,Hit
damage = 30,3
pausetime = 8 ,8
guard.pausetime = 0,0
sparkno = 0
;guard.sparkno = 3
sparkxy = -10, -80  
hitsound = 5,0
guardsound = 6,0
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 8
guard.slidetime = 5
ground.hittime = 8
guard.hittime = 5
air.hittime = 20
ground.velocity = -5,0
guard.velocity = -3
air.velocity = -3,0
airguard.velocity = -1,0

[State 220, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Удар ногой 
[Statedef 221]
type = S
physics = S
movetype = A
ctrl = 0
anim = 241+(var(50)*10000)
sprpriority = 2

[State 221, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S220,0
channel = -1

[State 221, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Medium 
fall.animtype = Back
priority = 4,Hit
damage = 40,4
pausetime = 8 ,8
guard.pausetime = 0,0
sparkno = 1
;guard.sparkno = 3
sparkxy = -10, -30  
hitsound = 5,1
guardsound = 6,0
ground.type = Low     ;Low,Trip,None
air.type = Low
ground.slidetime = 8
guard.slidetime = 5
ground.hittime = 8
guard.hittime = 5
air.hittime = 20
ground.velocity = -5,0
guard.velocity = -3
air.velocity = -3,0
airguard.velocity = -1,0

[State 221, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Удар оружием 
[Statedef 222]
type = S
physics = S
movetype = A
ctrl = 0
anim = 242+(var(50)*10000)
sprpriority = 2

[State 222, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S220,0
channel = -1

[State 222, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = diagup          ;light,medium,hard,back,up,diagup
air.animtype = diagup
fall.animtype = Back
priority = 4,Hit
damage = 30,3
pausetime = 8 ,8
guard.pausetime = 0,0
sparkno = 2
;guard.sparkno = 3
sparkxy = -10, -80  
hitsound = 5,2
guardsound = 6,0
ground.type =High     ;Low,Trip,None
air.type = Low
ground.slidetime = 8
guard.slidetime = 5
ground.hittime = 8
guard.hittime = 5
air.hittime = 20
ground.velocity = -5,-3
guard.velocity = -3
air.velocity = -3,0
airguard.velocity = -1,0

[State 222, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Пулемет
[Statedef 240]
type = S
physics = S
movetype = A
ctrl = 0
anim =  207+(var(50)*10000)
velset = 0,0
poweradd = -800
sprpriority = 2

[State 240, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,6 
channel = 3

[State 240, Explod]
type = Explod
trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)||(AnimElem = 8)||(AnimElem = 10)||(AnimElem = 12)||(AnimElem = 14)||(AnimElem = 16)||(AnimElem = 18)||(AnimElem = 20)
anim = 32001
ID = 10005
pos = 75,-58-(var(50)=2)*2
scale = 1,1 
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 240, Projectile]
type = Projectile
trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)||(AnimElem = 8)||(AnimElem = 10)||(AnimElem = 12)||(AnimElem = 14)||(AnimElem = 16)||(AnimElem = 18)||(AnimElem = 20)
ProjID = 30005
projanim = 30000
projhitanim = 30001
projscale = .9,.9
projremove = 1
projremovetime = 15
velocity = 40,0
projsprpriority = 1
offset = 10,-58-(var(50)=2)*2
postype = p1         ;p2,front,back,left,right
attr = S,SP, SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 40,10
givepower = 40,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 23,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = 2
hitsound = S200,1
guardsound = 6,0
ground.velocity = -2,-3
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = 1
fall.recover = 0

[State 240, ChangeState]
type = ChangeState
trigger1 = Time = 40
value = 0
ctrl = 1

;Мина
[Statedef 250]
type = U
physics = U
movetype = A
ctrl = 0
anim = 250+(var(50)*10000)+(StateType = C)
velset = 0,0
poweradd = -600
sprpriority = 2

[State 250, Helper]
type = Helper
trigger1 = StateType = S && AnimElem = 5
trigger2 = StateType = C && AnimElem = 3
helpertype = normal ;player
name = "Mine"
ID = 10250
stateno = 10250
pos = 20,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .8
size.yscale = .8
supermovetime = 0
pausemovetime = 0

[State 250, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0+(statetype=C)*11
ctrl = 1

;Беретта сидя
[Statedef 400]
type = C
physics = C
movetype = A
ctrl = 0
anim = 400+(var(50)*10000)
poweradd = -100
sprpriority = 2

[State 400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,8
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 400, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 32003 + (random % 3)
ID = 10006
pos = 41+6*(var(50)=2),-55+11*(var(50)=2)
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 400, Projectile]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 30001
projanim = 30005
projscale = 1,1
projremove = 1
projremovetime = 30
velocity = 40,0
offset = 10,-55+10*(var(50)=2)
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 20,10
givepower = 20,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
ground.type = Low      ;Low,Trip,None
air.type = Low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,2
pausetime = 0,0
guard.pausetime = 0,0
hitsound = S200,1
guardsound = 6,0
ground.hittime = 10
guard.hittime = 10
air.hittime = 10
ground.slidetime = 10
guard.slidetime = 10
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<200,1,0)

[State 400, ChangeState]
type = Changestate
trigger1 = !AnimTime
ctrl = 1
value = 11

;Узи сидя
[Statedef 401]
type = C
physics = C
movetype = A
ctrl = 0
anim = 401+(var(50)*10000)
poweradd = -200
sprpriority = 2

[State 401, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 401, Explod]
type = Explod
trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)
anim = 32003 + (random % 3)
ID = 10006
pos = 43+10*(var(50)=2),-55+10*(var(50)=2)
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 401, Projectile]
type = Projectile
trigger1 =  (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)
ProjID = 30000
projanim = 30000
projhitanim = 30001
projscale = .5,.3
projremove = 1
projremovetime = 30
velocity = 40,0
offset = 10,-55+10*(var(50)=2)
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 20,10
givepower = 20,20
animtype = medium         ;light,medium,hard,back,up,diagup
air.animtype = medium
fall.animtype = Back
ground.type = Low      ;Low,Trip,None
air.type = Low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = 1
hitsound = S200,1
guardsound = 6,0
ground.hittime = 10
guard.hittime = 10
air.hittime = 10
ground.slidetime = 10
guard.slidetime = 10
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<200,1,0)

[State 401, ChangeState]
type = ChangeState
trigger1 = !AnimTime
ctrl = 1
value = 11

;Удар рукой
[Statedef 402]
type = C
physics = C
movetype = A
ctrl = 0
anim = 402+(var(50)*10000)
sprpriority = 2

[State 402, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S220,0
channel = -1

[State 402, HitDef]
type = HitDef
trigger1 = AnimElem =3
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Light          ;light,medium,hard,back,up,diagup
air.animtype = Light
fall.animtype = Back
priority = 4,Hit
damage = 30,3
pausetime = 8 ,8
guard.pausetime = 0,0
sparkno = 0
;guard.sparkno = 3
sparkxy = -10, -55  
hitsound = 5,0
guardsound = 6,0
ground.type = Low      ;Low,Trip,None
air.type = Low
ground.slidetime = 8
guard.slidetime = 5
ground.hittime = 8
guard.hittime = 5
air.hittime = 20
ground.velocity = -5,0
guard.velocity = -3
air.velocity = -3,0
airguard.velocity = -1,0

[State 402, ChangeState]
type = ChangeState
trigger1 = !AnimTime
ctrl = 1
value = 11

;Удар оружием сидя
[Statedef 403]
type = C
physics = C
movetype = A
ctrl = 0
anim = 403+(var(50)*10000)
sprpriority = 2

[State 403, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S220,0
channel = -1

[State 403, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = diagup          ;light,medium,hard,back,up,diagup
air.animtype = diagup
fall.animtype = Back
priority = 4,Hit
damage = 30,3
pausetime = 8 ,8
guard.pausetime = 0,0
sparkno = 2
;guard.sparkno = 3
sparkxy = -10, -60  
hitsound = 5,2
guardsound = 6,0
ground.type =Low     ;Low,Trip,None
air.type = Low
ground.slidetime = 8
guard.slidetime = 5
ground.hittime = 8
guard.hittime = 5
air.hittime = 20
ground.velocity = -5,-3
guard.velocity = -3
air.velocity = -3,0
airguard.velocity = -1,0

[State 403, ChangeState]
type = ChangeState
trigger1 = !AnimTime
ctrl = 1
value = 11

;Плазмовинтовка сидя
[Statedef 404]
type = C
physics = C
movetype = A
ctrl = 0
anim = 404+(var(50)*10000)
poweradd = -300
sprpriority = 3

[State 404, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,7
channel = -1
freqmul = 1.0
loop = 0
pan = 0

;[State 404, Explod]
;type = Explod
;trigger1 = AnimElem = 2
;anim = 32003 + (random % 3)
;ID = 10006
;pos = 54+10*(var(50)=2),-50+10*(var(50)=2)
;scale = 1,1 
;removetime = 2
;bindtime = 2
;postype = p1
;sprpriority = 3

[State 404, Projectile]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 30002
projanim = 30007
projscale = 1.5,1.5
projremove = 1
projremovetime = 60
projpriority = 2
projsprpriority = 1
velocity = 10,0
offset = 30,-52+10*(var(50)=2)
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 100,10
givepower = 100,20
animtype = Hard          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Back
ground.type = High     ;Low,Trip,None
air.type = High
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 100,2
pausetime = 0,0
guard.pausetime = 0,0
hitsound = S200,1
guardsound = 6,0
sparkno = S32401
guard.sparkno = S32401 
ground.hittime = 15
guard.hittime = 15
air.hittime = 15
ground.slidetime = 15
guard.slidetime = 15
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
fall = IfElse(random<250,1,0)
palfx.time = 40
palfx.mul = 200,200,120
palfx.add = 120,25,0
palfx.sinadd = 110,55,85,10
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0

[State 404, ChangeState]
type = ChangeState
trigger1 = !AnimTime
ctrl = 1
value = 11

;Плазмограната сидя
[Statedef 405]
type = C
physics = C
movetype = A
ctrl = 0
anim = 404+(var(50)*10000)
poweradd = -500
sprpriority = 2

[State 405, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,5
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 405, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 32003 + (random % 3)
ID = 10006
pos = 56+8*(var(50)=2),-58+10*(var(50)=2)
scale = 1,1 
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 405, Projectile]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 10006
projanim = 30008
;projhitanim = 30007
projscale = 1.5,1
projremove = 1
projremovetime = 60
projpriority = 2
projsprpriority = 1
velocity = 10,0
projsprpriority = 2
offset = 30,-58+10*(var(50)=2)
postype = p1         ;p2,front,back,left,right
attr = S,SP,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 150,10
givepower = 150,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
ground.type = High     ;Low,Trip,None
air.type = High
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 150,15
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S32400 
guard.sparkno = S32400 
hitsound = S6666,3
guardsound = S6666,3
ground.velocity = -10,-3
guard.velocity = -3
air.velocity = -5,0
airguard.velocity = -1,0
fall = IfElse(random<150,0,1)
palfx.time = 40
palfx.mul = 200,200,120
palfx.add = 120,25,0
palfx.sinadd = 110,55,85,10
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall.recover = 0

[State 405, ChangeState]
type = ChangeState
trigger1 = !AnimTime
ctrl = 1
value = 11

;Дробовик сидя
[Statedef 406]
type = C
physics = C
movetype = A
ctrl = 0
anim = 405+(var(50)*10000)
velset = 0,0
poweradd = -450
sprpriority = 2

[State 406, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,9
channel = -1

[State 406, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 32003 + (random % 3)
ID = 10006
pos = 74+8*(var(50)=2),-58+10*(var(50)=2)
removetime = 2
bindtime = 2
postype = p1
scale = .8,.8
sprpriority = 2

[State 406, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 32003 + (random % 3)
ID = 10006
pos = 74+8*(var(50)=2),-52+10*(var(50)=2)
removetime = 2
bindtime = 2
postype = p1
scale = .8,.8
sprpriority = 2

[State 406, Projectile]
type = Projectile
trigger1 = AnimElem = 2 
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .3,.3
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10-random%3,-50-random%7+8*(var(50)=2)
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
fall.animtype = Back
ground.type = Low     ;Low,Trip,None
air.type = Low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<800,0,1)

[State 406, Projectile]
type = Projectile
trigger1 = AnimElem = 2 
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .3,.3
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10-random%3,-50-random%7+8*(var(50)=2)
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
ground.type = Low     ;Low,Trip,None
air.type = Low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<800,0,1)

[State 406, Projectile]
type = Projectile
trigger1 = AnimElem = 2 
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .3,.3
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10-random%3,-50-random%7+8*(var(50)=2)
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
ground.type = Low     ;Low,Trip,None
air.type = Low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<800,0,1)

[State 406, Projectile]
type = Projectile
trigger1 = AnimElem = 2 
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .3,.3
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10-random%3,-50-random%7+8*(var(50)=2)
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
ground.type = Low     ;Low,Trip,None
air.type = Low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<800,0,1)

[State 406, Projectile]
type = Projectile
trigger1 = AnimElem = 2 
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .3,.3
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10-random%3,-50-random%7+8*(var(50)=2)
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
ground.type = Low     ;Low,Trip,None
air.type = Low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<800,0,1)

[State 406, Projectile]
type = Projectile
trigger1 = AnimElem = 2 
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .3,.3
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10-random%3,-50-random%7+8*(var(50)=2)
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
ground.type = Low     ;Low,Trip,None
air.type = Low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<800,0,1)

[State 406, ChangeState]
type = ChangeState
trigger1 = !AnimTime
ctrl = 1
value = 11

;Автомат сидя
[Statedef 407]
type = C
physics = C
movetype = A
ctrl = 0
anim = 406+(var(50)*10000)
poweradd = -400
sprpriority = 2

[State 407, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,3
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 407, Explod]
type = Explod
trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)
anim = 32003 + (random % 3)
ID = 10006
pos = 80+10*(var(50)=2),-55+9*(var(50)=2)
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 407, Projectile]
type = Projectile
trigger1 =  (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)
ProjID = 30004
projanim = 30000
projhitanim = 30001
projscale = .85,.45
projremove = 1
projremovetime = 25
velocity = 40,0
projsprpriority = 1
offset = 10,-54+8*(var(50)=2)
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 50,10
givepower = 50,20
animtype = medium          ;light,medium,hard,back,up,diagup
air.animtype = medium
fall.animtype = Back
ground.type = High     ;Low,Trip,None
air.type = High
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50,5
pausetime = 0,0
guard.pausetime = 0,0
sparkno = 2
hitsound = S200,1
guardsound = 6,0
ground.velocity = -2,-3
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<750,0,1)

;[State 407, HitDef]
;Type = HitDef
;trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)
;attr = S,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;hitflag = MAF        ;HLAFD+-
;guardflag = MA         ;HLA
;getpower = 20,10
;givepower = 20,20
;animtype = light          ;light,medium,hard,back,up,diagup
;air.animtype = light
;fall.animtype = Back
;priority = 4,Hit   ;Hit,Miss,Dodge
;damage = 10,2
;pausetime = 0,0
;sparkxy = 0, -54
;guard.pausetime = 0,0
;hitsound = S200,1
;guardsound = 6,0
;ground.velocity = -6,-3
;guard.velocity = -2
;air.velocity = -5,0
;airguard.velocity = -1,0
;fall = IfElse(random<150,0,1)

[State 407, ChangeState]
type = ChangeState
trigger1 = !AnimTime
ctrl = 1
value = 11

;Базука сидя
[Statedef 408]
type = C
physics = C
movetype = A
ctrl = 0
anim =  407+(var(50)*10000)
poweradd = -600
sprpriority = 2

[State 408, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,4
channel = -1

[State 408, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 32003 + (random % 3)
ID = 10006
pos = 50+10*(var(50)=2),-50+10*(var(50)=2)
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 408, Projectile]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 30003
projanim = 30002
projhitanim = 30002
projscale = .7,.7
projremove = 1
projremovetime = 100
projpriority = 2
velocity = 7,0
offset = 50,-50+10*(var(50)=2)
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 200,10
givepower = 200,20
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
fall.animtype = Back
ground.type = High     ;Low,Trip,None
air.type = High
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 200,10
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S31000 
guard.sparkno = S31000 
hitsound = S6666,4
guardsound = S6666,4
ground.velocity = -10,-3
guard.velocity = -3
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = 1
fall.recover = 0

[State 408, ChangeState]
type = ChangeState
trigger1 = !AnimTime
ctrl = 1
value = 11

;Гранатомет сидя
[Statedef 409]
type = C
physics = C
movetype = A
ctrl = 0
anim = 408+(var(50)*10000)
velset = 0,0
poweradd = -500
sprpriority = 2

[State 409, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,11
channel = -1

;[State 409, Explod]
;type = Explod
;trigger1 = AnimElem = 2
;anim = 32003 + (random % 3)
;ID = 10006
;pos = 55+8*(var(50)=2),-53+9*(var(50)=2)
;removetime = 2
;bindtime = 2
;postype = p1
;sprpriority = 2

[State 409, Helper]
type = Helper
trigger1 = AnimElemTime(1) = 2
helpertype = normal ;player
name = "Grenade"
ID = 10009
stateno = 10008
pos = 20,-54+11*(var(50)=2)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1.2
size.yscale = 1.2
supermovetime = 0
pausemovetime = 0

[State 409, ChangeState]
type = ChangeState
trigger1 = !AnimTime
ctrl = 1
value = 11

;Винтовка сидя
[Statedef 410]
type = C
physics = C
movetype = A
ctrl = 0
anim = 407+(var(50)*10000)
poweradd = -300
sprpriority = 2

[State 410, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,2
channel = -1

[State 410, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 32003 + (random % 3)
ID = 10006
pos = 50+10*(var(50)=2),-50+10*(var(50)=2)
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 410, Projectile]
type = Projectile
trigger1 =  AnimElem = 2
ProjID = 30004
projanim = 30000
projhitanim = 30001
projscale = .90,.45
projremove = 1
projremovetime = 25
velocity = 40,0
projsprpriority = 1
offset = 10,-50+10*(var(50)=2)
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 50,10
givepower = 50,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
ground.type = High     ;Low,Trip,None
air.type = High
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 65,5
pausetime = 0,0
guard.pausetime = 0,0
sparkno = 1
hitsound = S200,1
guardsound = 6,0
ground.velocity = -2,-3
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<750,0,1)

[State 410, ChangeState]
type = ChangeState
trigger1 = (Command = "z") && (AnimElemNo(0) = [2,3]) && (Power >= 300)
value = stateno
ctrl = 0

[State 410, ChangeState]
type = ChangeState
trigger1 = !AnimTime && Command != "z"
value = 11
ctrl = 1

;Пулемет сидя
[Statedef 411]
type = C
physics = C
movetype = A
ctrl = 0
anim =  409+(var(50)*10000)
velset = 0,0
poweradd = -800
sprpriority = 2

[State 411, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,6 
channel = 3

[State 411, Explod]
type = Explod
trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)||(AnimElem = 8)||(AnimElem = 10)||(AnimElem = 12)||(AnimElem = 14)||(AnimElem = 16)||(AnimElem = 18)||(AnimElem = 20)
anim = 32001
ID = 10005
pos = 76+(var(50)=2)*9,-35+(var(50)=2)*7
scale = 1,1 
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 411, Projectile]
type = Projectile
trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)||(AnimElem = 8)||(AnimElem = 10)||(AnimElem = 12)||(AnimElem = 14)||(AnimElem = 16)||(AnimElem = 18)||(AnimElem = 20)
ProjID = 30005
projanim = 30000
projhitanim = 30001
projscale = .9,.9
projremove = 1
projremovetime = 15
velocity = 40,0
projsprpriority = 1
offset = 10,-35+(var(50)=2)*7
postype = p1         ;p2,front,back,left,right
attr = S,SP, SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 40,10
givepower = 40,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 23,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = 2
hitsound = S200,1
guardsound = 6,0
ground.velocity = -2,-3
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = 1
fall.recover = 0

[State 411, ChangeState]
type = ChangeState
trigger1 = Time = 40
value = 11
ctrl = 1

;Пистолет в прыжке
[Statedef 600]
type = A
physics = A
movetype = A
ctrl = 0
anim = 600+(var(50)*10000)
poweradd = -100
sprpriority = 2

[State 600, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,8
channel = -1

[State 600, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 32003 + (random % 3)
ID = 10006
pos = 41-10*(var(50)=2),-80
removetime = 2
bindtime = 3
postype = p1
sprpriority = 2

[State 600, Projectile]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 30001
projanim = 30005
projscale = 1,1
projremove = 1
projremovetime = 30
velocity = 40,0
offset = 10,-80
postype = p1         ;p2,front,back,left,right
attr = A,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 20,10
givepower = 20,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,2
pausetime = 0,0
guard.pausetime = 0,0
hitsound = S200,1
guardsound = 6,0
ground.hittime = 10
guard.hittime = 10
air.hittime = 10
ground.slidetime = 10
guard.slidetime = 10
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<200,1,0)

[State 600, CtrlSet]
type = CtrlSet
trigger1 = !AnimTime
value = 1


;Узи в прыжке
[Statedef 601]
type = A
physics = A
movetype = A
ctrl = 0
anim = 601+(var(50)*10000)
poweradd = -200
sprpriority = 2

[State 601, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,0
channel = -1

[State 601, Explod]
type = Explod
trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)
anim = 32003 + (random % 3)
ID = 10006
pos = 43-10*(var(50)=2),-82
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 601, Projectile]
type = Projectile
trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)
ProjID = 30601
projanim = 30000
projhitanim = 30001
projscale = .5,.3
projremove = 1
projremovetime = 30
velocity = 40,0
offset = 10,-78
postype = p1         ;p2,front,back,left,right
attr = A,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 20,10
givepower = 20,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = 1
hitsound = S200,1
guardsound = 6,0
ground.velocity = -2,-3
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<200,1,0)

[State 601, CtrlSet]
type = CtrlSet
trigger1 = !AnimTime
value = 1


;Плазмовинтовка в воздухе
[Statedef 602]
type = A
physics = A
movetype = A
ctrl = 0
anim = 606+(var(50)*10000)
poweradd = -300
sprpriority = 2

[State 602, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,7
channel = -1
freqmul = 1.0
loop = 0
pan = 0

;[State 602, Explod]
;type = Explod
;trigger1 = AnimElem = 2
;anim = 32003 + (random % 3)
;ID = 10006
;pos = 52-10*(var(50)=2),-77
;scale = 1,1 
;removetime = 2
;bindtime = 2
;postype = p1
;sprpriority = 3

[State 602, Projectile]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 30002
projanim = 30007
projscale = 1.5,1.5
projremove = 1
projremovetime = 60
projpriority = 2
projsprpriority = 1
velocity = 10,0
offset = 30,-77
postype = p1         ;p2,front,back,left,right
attr = A,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 100,10
givepower = 100,20
animtype = Hard          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 100,2
pausetime = 0,0
guard.pausetime = 0,0
hitsound = S200,1
guardsound = 6,0
sparkno = S32401
guard.sparkno = S32401 
ground.hittime = 15
guard.hittime = 15
air.hittime = 15
ground.slidetime = 15
guard.slidetime = 15
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
fall = IfElse(random<250,1,0)
palfx.time = 40
palfx.mul = 200,200,120
palfx.add = 120,25,0
palfx.sinadd = 110,55,85,10
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0

[State 602, CtrlSet]
type = CtrlSet
trigger1 = !AnimTime
value = 1

;Плазмогранатомет в воздухе
[Statedef 603]
type = A
physics = A
movetype = A
ctrl = 0
anim = 606+(var(50)*10000)
poweradd = -500
sprpriority = 2

[State 603, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,5
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 603, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 32003 + (random % 3)
ID = 10006
pos = 52-10*(var(50)=2),-84
scale = 1,1 
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 603, Projectile]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 10006
projanim = 30008
;projhitanim = 30007
projscale = 1.5,1
projremove = 1
projremovetime = 60
projpriority = 2
projsprpriority = 1
velocity = 10,0
projsprpriority = 2
offset = 30,-84
postype = p1         ;p2,front,back,left,right
attr = A,SP,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 150,10
givepower = 150,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 150,15
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S32400 
guard.sparkno = S32400 
hitsound = S6666,3
guardsound = S6666,3
ground.velocity = -10,-3
guard.velocity = -3
air.velocity = -5,0
airguard.velocity = -1,0
fall = IfElse(random<150,0,1)
palfx.time = 40
palfx.mul = 200,200,120
palfx.add = 120,25,0
palfx.sinadd = 110,55,85,10
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall.recover = 0

[State 603, CtrlSet]
type = CtrlSet
trigger1 = !AnimTime
value = 1

;Дробовик в воздухе
[Statedef 604]
type = A
physics = A
movetype = A
ctrl = 0
anim = 607+(var(50)*10000)
poweradd = -450
sprpriority = 2

[State 604, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,9
channel = -1

[State 604, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 32003 + (random % 3)
ID = 10006
pos = 71-6*(var(50)=2),-83
removetime = 2
bindtime = 2
postype = p1
scale = .8,.8
sprpriority = 2

[State 604, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 32003 + (random % 3)
ID = 10006
pos = 71-6*(var(50)=2),-78
removetime = 2
bindtime = 2
postype = p1
scale = .8,.8
sprpriority = 2

[State 604, Projectile]
type = Projectile
trigger1 = AnimElem = 2 
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .5,.5
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10,-79-random%7
postype = p1         ;p2,front,back,left,right
attr = A,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<800,0,1)

[State 604, Projectile]
type = Projectile
trigger1 = AnimElem = 2  
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .5,.5
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10,-79-random%7
postype = p1         ;p2,front,back,left,right
attr = A,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<800,0,1)

[State 604, Projectile]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .5,.5
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10,-79-random%7
postype = p1         ;p2,front,back,left,right
attr = A,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<800,0,1)

[State 604, Projectile]
type = Projectile
trigger1 = AnimElem = 2  
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .4,.4
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10,-79-random%7
postype = p1         ;p2,front,back,left,right
attr = A,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<800,0,1)

[State 604, Projectile]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .5,.5
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10,-79-random%7
postype = p1         ;p2,front,back,left,right
attr = A,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<800,0,1)

[State 604, Projectile]
type = Projectile
trigger1 = AnimElem = 2  
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .4,.4
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10,-79-random%7
postype = p1         ;p2,front,back,left,right
attr = A,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<800,0,1)

[State 604, CtrlSet]
type = CtrlSet
trigger1 = !AnimTime
value = 1

;Автомат в воздухе
[Statedef 605]
type = A
physics = A
movetype = A
ctrl = 0
anim = 608+(var(50)*10000)
poweradd = -400
sprpriority = 2

[State 605, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,3
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 605, Explod]
type = Explod
trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)
anim = 32003 + (random % 3)
ID = 10006
pos = 80-10*(var(50)=2),-82
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 605, Projectile]
type = Projectile
trigger1 =  (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)
ProjID = 30004
projanim = 30000
projhitanim = 30001
projscale = .85,.45
projremove = 1
projremovetime = 25
velocity = 40,0
projsprpriority = 1
offset = 10,-77
postype = p1         ;p2,front,back,left,right
attr = A,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 50,10
givepower = 50,20
animtype = medium          ;light,medium,hard,back,up,diagup
air.animtype = medium
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50,5
pausetime = 0,0
guard.pausetime = 0,0
sparkno = 2
hitsound = S200,1
guardsound = 6,0
ground.velocity = -2,-3
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<750,0,1)

;[State 605, HitDef]
;Type = HitDef
;trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)
;attr = A,NP,NA       ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;hitflag = MAF        ;HLAFD+-
;guardflag = MA         ;HLA
;getpower = 20,10
;givepower = 20,20
;animtype = light          ;light,medium,hard,back,up,diagup
;air.animtype = light
;fall.animtype = Back
;priority = 4,Hit   ;Hit,Miss,Dodge
;damage = 10,2
;pausetime = 0,0
;sparkxy = 0, -75
;guard.pausetime = 0,0
;hitsound = S200,1
;guardsound = 6,0
;ground.velocity = -6,-3
;guard.velocity = -2
;air.velocity = -5,0
;airguard.velocity = -1,0
;fall = IfElse(random<150,0,1)

[State 605, CtrlSet]
type = CtrlSet
trigger1 = !AnimTime
value = 1

;Базука в воздухе
[Statedef 606]
type = A
physics = A
movetype = A
ctrl = 0
anim = 609+(var(50)*10000)
poweradd = -600
sprpriority = 2

[State 606, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,4
channel = -1

[State 606, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 32003 + (random % 3)
ID = 10006
pos = 50-10*(var(50)=2),-77
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 606, Projectile]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 30003
projanim = 30002
projhitanim = 30002
projscale = .7,.7
projremove = 1
projremovetime = 100
projpriority = 2
velocity = 7,0
offset = 50,-77
postype = p1         ;p2,front,back,left,right
attr = A,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 200,10
givepower = 200,20
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 200,10
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S31000 
guard.sparkno = S31000 
hitsound = S6666,4
guardsound = S6666,4
ground.velocity = -10,-3
guard.velocity = -3
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = 1
fall.recover = 0

[State 606, CtrlSet]
type = CtrlSet
trigger1 = !AnimTime
value = 1

;Удар рукой в воздухе
[Statedef 607]
type = A
physics = A
movetype = A
ctrl = 0
anim = 610+(var(50)*10000)
sprpriority = 2

[State 607, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S220,0
channel = -1

[State 607, HitDef]
type = HitDef
trigger1 = AnimElem =3
attr = A,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Light          ;light,medium,hard,back,up,diagup
air.animtype = Light
fall.animtype = Back
priority = 4,Hit
damage = 30,3
pausetime = 8 ,8
guard.pausetime = 0,0
sparkno = 0
;guard.sparkno = 3
sparkxy = -10, -80  
hitsound = 5,0
guardsound = 6,0
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 8
guard.slidetime = 5
ground.hittime = 8
guard.hittime = 5
air.hittime = 20
ground.velocity = -5,0
guard.velocity = -3
air.velocity = -3,0
airguard.velocity = -1,0

[State 607, CtrlSet]
type = CtrlSet
trigger1 = !AnimTime
value = 1

;Удар оружием в воздухе
[Statedef 608]
type = A
physics = A
movetype = A
ctrl = 0
anim = 611+(var(50)*10000)
sprpriority = 2

[State 608, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S220,0
channel = -1

[State 608, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = diagup          ;light,medium,hard,back,up,diagup
air.animtype = diagup
fall.animtype = Back
priority = 4,Hit
damage = 30,3
pausetime = 8 ,8
guard.pausetime = 0,0
sparkno = 2
;guard.sparkno = 3
sparkxy = -10, -80  
hitsound = 5,2
guardsound = 6,0
ground.type =High     ;Low,Trip,None
air.type = Low
ground.slidetime = 8
guard.slidetime = 5
ground.hittime = 8
guard.hittime = 5
air.hittime = 20
ground.velocity = -5,-3
guard.velocity = -3
air.velocity = -3,0
airguard.velocity = -1,0

[State 608, CtrlSet]
type = CtrlSet
trigger1 = !AnimTime
value = 1

;Гранатомет в воздухе
[Statedef 609]
type = A
physics = A
movetype = A
ctrl = 0
anim = 602+(var(50)*10000)
poweradd = -500
sprpriority = 2

[State 609, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,11
channel = -1

;[State 609, Explod]
;type = Explod
;trigger1 = AnimElem = 2
;anim = 32003 + (random % 3)
;ID = 10006
;pos = 52-10*(var(50)=2),-78
;removetime = 2
;bindtime = 2
;postype = p1
;sprpriority = 2

[State 609, Helper]
type = Helper
trigger1 = AnimElemTime(1) = 2
helpertype = normal ;player
name = "Grenade"
ID = 10009
stateno = 10008
pos = 20,-78
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1.2
size.yscale = 1.2
supermovetime = 0
pausemovetime = 0

[State 609, CtrlSet]
type = CtrlSet
trigger1 = !AnimTime
value = 1

;Винтовка в воздухе
[Statedef 610]
type = A
physics = A
movetype = A
ctrl = 0
anim =609+(var(50)*10000)
poweradd = -300
sprpriority = 2

[State 610, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,2
channel = -1

[State 610, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 32003 + (random % 3)
ID = 10006
pos = 50-10*(var(50)=2),-77
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 610, Projectile]
type = Projectile
trigger1 =  AnimElem = 2
ProjID = 30004
projanim = 30000
projhitanim = 30001
projscale = .90,.45
projremove = 1
projremovetime = 25
velocity = 40,0
projsprpriority = 1
offset = 10,-77
postype = p1         ;p2,front,back,left,right
attr = A,NP,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 50,10
givepower = 50,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
ground.type = High     ;Low,Trip,None
air.type = High
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 65,5
pausetime = 0,0
guard.pausetime = 0,0
sparkno = 1
hitsound = S200,1
guardsound = 6,0
ground.velocity = -2,-3
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<750,0,1)

[State 610, ChangeState]
type = ChangeState
trigger1 = (Command = "z") && (AnimElemNo(0) = [2,3]) && (Power >= 300)
value = stateno
ctrl = 0

[State 610, ChangeState]
type = ChangeState
trigger1 = !AnimTime && Command != "z"
value = 0
ctrl = 1

;Пулемет в воздухе
[Statedef 611]
type = A
physics = A
movetype = A
ctrl = 0
anim =  612+(var(50)*10000)
poweradd = -800
sprpriority = 2

[State 611, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,6 
channel = 3

[State 611, Explod]
type = Explod
trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)||(AnimElem = 8)||(AnimElem = 10)||(AnimElem = 12)||(AnimElem = 14)||(AnimElem = 16)||(AnimElem = 18)||(AnimElem = 20)
anim = 32001
ID = 10005
pos = 72-(var(50)=2)*3,-62-(var(50)=2)*2
scale = 1,1 
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 611, Projectile]
type = Projectile
trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)||(AnimElem = 8)||(AnimElem = 10)||(AnimElem = 12)||(AnimElem = 14)||(AnimElem = 16)||(AnimElem = 18)||(AnimElem = 20)
ProjID = 30005
projanim = 30000
projhitanim = 30001
projscale = .9,.9
projremove = 1
projremovetime = 15
velocity = 40,0
projsprpriority = 1
offset = 10,-62-(var(50)=2)*2
postype = p1         ;p2,front,back,left,right
attr = S,SP, SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 40,10
givepower = 40,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 23,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = 2
hitsound = S200,1
guardsound = 6,0
ground.velocity = -2,-3
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = 1
fall.recover = 0

[State 611, CtrlSet]
type = CtrlSet
trigger1 = Time = 40
value = 1


;Пулемет (Гипер 1)
[Statedef 3000]
type = S
physics = S
movetype = A
ctrl = 0
anim =  207+(var(50)*10000)
velset = 0,0
poweradd = -1000
sprpriority = 2

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,6 
channel = 3

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = Time < 40
value = SCA
time = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
time = 30
anim = 100
sound = 20,0
pos = 85,-60
movetime = 0
darken = 0
p2defmul = 1
poweradd = 0
unhittable = 1

[State 3000, Explod]
type = Explod
trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)||(AnimElem = 8)||(AnimElem = 10)||(AnimElem = 12)||(AnimElem = 14)||(AnimElem = 16)||(AnimElem = 18)||(AnimElem = 20)
anim = 32001
ID = 10005
pos = 75,-58-(var(50)=2)*2
scale = 1,1 
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2

[State 3000, Explod] ;Фон
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (195)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (195)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (195)), 1)
trigger1 = !NumExplod (195) && (AnimElem = 1)
anim = 195
ID = 195
pos = 0,0
postype = left 
bindtime = 200
removetime = 200
sprpriority = 4
persistent = 1
ownpal = 1
ontop = 1
removeongethit = 1
supermovetime = 30

[State 3000, Explod] ;Компас
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (190)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (190)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (190)), 1)
trigger1 = !NumExplod (190) && (AnimElem = 1)
anim = 190
ID = 190
pos = 30,50
scale = .5,.5
postype = left
bindtime = 200
removetime = 200
sprpriority = 5
ownpal = 1
ontop = 1
removeongethit = 1
supermovetime = 30

[State 3000, Explod] ;Коды
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (191)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (191)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (191)), 1)
trigger1 = !NumExplod (191) && (AnimElem = 1)
anim = 191
ID = 191
pos = 30,100
scale = .5,.5
postype = left 
bindtime = 200
removetime = 200
sprpriority = 5
ownpal = 1
ontop = 1
removeongethit = 1
supermovetime = 30

[State 3000, Explod] ;Надпись
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (198)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (198)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (198)), 1)
trigger1 = !NumExplod (198) && (AnimElem = 1)
anim = 198
ID = 198
pos = 80,60
postype = left 
bindtime = 200
removetime = 200
sprpriority = 5
ownpal = 1
ontop = 1
removeongethit = 1
supermovetime = 30

[State 3000, RemoveExplod]
type = RemoveExplod
trigger1 = (time = 60) ||(RoundState != 2)||(HitFall)||(Statetype != S)||ctrl

[State 3000, Projectile]
type = Projectile
trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)||(AnimElem = 8)||(AnimElem = 10)||(AnimElem = 12)||(AnimElem = 14)||(AnimElem = 16)||(AnimElem = 18)||(AnimElem = 20)
ProjID = 30005
projanim = 30000
projhitanim = 30001
projscale = .9,.9
projremove = 1
projremovetime = 15
velocity = 40,0
projsprpriority = 1
offset = 10,-58-(var(50)=2)*2
postype = p1         ;p2,front,back,left,right
attr = S,HP,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 40,10
givepower = 40,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 23,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = 2
hitsound = S200,1
guardsound = 6,0
ground.velocity = -2,-3
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = 1
fall.recover = 0

[State 3000, ChangeState]
type = ChangeState
trigger1 = Time = 60
value = 0
ctrl = 1

;Автомат+Дробовик (Гипер 1)
[Statedef 3001]
type = S
physics = S
movetype = A
ctrl = 0
anim = 210+(var(50)*10000)
velset = 0,0
poweradd = -1000
sprpriority = 2

[State 3001, NotHitBy]
type = NotHitBy
trigger1 = Time < 40
value = SCA
time = 1

[State 3001, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
time = 30
sound = 20,0
anim = 100
pos = 87,-72
movetime = 0
darken = 0
p2defmul = 1
poweradd = 0
unhittable = 1

[State 3001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 
value = S200,3 
channel = 1

[State 3001, Explod]
type = Explod
trigger1 = (AnimElem = 2) || (AnimElem = 4) || (AnimElem = 6) 
anim = 32003 + (random % 3)
ID = 10006
pos = 80,-78
removetime = 2
bindtime = 2
postype = p1
sprpriority = 2
ownpal = 1

[State 3001, Explod] ;Фон
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (195)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (195)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (195)), 1)
trigger1 = !NumExplod (195) && (AnimElem = 1) 
anim = 195
ID = 195
pos = 0,0
postype = left 
bindtime = 140
removetime = 140
sprpriority = 4
persistent = 1
ownpal = 1
ontop = 1
removeongethit = 1
supermovetime = 20

[State 3001, Explod] ;Компас
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (190)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (190)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (190)), 1)
trigger1 = !NumExplod (190) && (AnimElem = 1) 
anim = 190
ID = 190
pos = 30,50
scale = .5,.5
postype = left 
bindtime = 140
removetime = 140
sprpriority = 5
ownpal = 1
ontop = 1
removeongethit = 1
supermovetime = 20

[State 3001, Explod] ;Коды
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (191)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (191)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (191)), 1)
trigger1 = !NumExplod (191) && (AnimElem = 1) 
anim = 191
ID = 191
pos = 30,100
scale = .5,.5
postype = left 
bindtime = 140
removetime = 140
sprpriority = 5
ownpal = 1
ontop = 1
removeongethit = 1
supermovetime = 20

[State 3001, Explod] ;Надпись
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (198)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (198)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (198)), 1)
trigger1 = !NumExplod (198) && (AnimElem = 1) 
anim = 198
ID = 198
pos = 80,60
postype = left 
bindtime = 140
removetime = 140
sprpriority = 5
ownpal = 1
ontop = 1
removeongethit = 1
supermovetime = 20

[State 3001, RemoveExplod]
type = RemoveExplod
trigger1 = time = 28 ||(RoundState != 2)||(HitFall)||(Statetype != S)||ctrl

[State 3001, Projectile]
type = Projectile
trigger1 =  (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)
ProjID = 30004
projanim = 30000
projhitanim = 30001
projscale = .85,.45
projremove = 1
projremovetime = 25
velocity = 40,0
projsprpriority = 1
offset = 10,-77
postype = p1         ;p2,front,back,left,right
attr = S,HP,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 40,10
givepower = 40,20
animtype = medium          ;light,medium,hard,back,up,diagup
air.animtype = medium
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50,5
pausetime = 0,0
guard.pausetime = 0,0
sparkno = 2
hitsound = S200,1
guardsound = 6,0
ground.velocity = -2,-3
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = 1
fall.recover = 0

[State 3001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = S200,9
channel = -1

[State 3001, Explod]
type = Explod
trigger1 = AnimElem = 8
anim = 32003 + (random % 3)
ID = 10006
pos = 84,-71
removetime = 2
bindtime = 2
postype = p1
scale = .8,.8
sprpriority = 2

[State 3001, Explod]
type = Explod
trigger1 = AnimElem = 8
anim = 32003 + (random % 3)
ID = 10006
pos = 84,-66
removetime = 2
bindtime = 2
postype = p1
scale = .8,.8
sprpriority = 2

[State 3001, Projectile]
type = Projectile
trigger1 = AnimElem = 8 
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .3,.3
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10-random%3,-66-random%7
postype = p1         ;p2,front,back,left,right
attr = S,HP,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = 1
fall.recover = 0

[State 3001, Projectile]
type = Projectile
trigger1 = AnimElem = 8 
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .3,.3
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10-random%3,-66-random%7
postype = p1         ;p2,front,back,left,right
attr = S,HP,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = 1
fall.recover = 0

[State 3001, Projectile]
type = Projectile
trigger1 = AnimElem = 8 
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .3,.3
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10-random%3,-66-random%7
postype = p1         ;p2,front,back,left,right
attr = S,HP,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = 1
fall.recover = 0

[State 3001, Projectile]
type = Projectile
trigger1 = AnimElem = 8 
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .3,.3
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10-random%3,-66-random%7
postype = p1         ;p2,front,back,left,right
attr = S,HP,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = 1
fall.recover = 0

[State 3001, Projectile]
type = Projectile
trigger1 = AnimElem = 8 
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .3,.3
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10-random%3,-66-random%7
postype = p1         ;p2,front,back,left,right
attr = S,HP,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = 1
fall.recover = 0

[State 3001, Projectile]
type = Projectile
trigger1 = AnimElem = 8 
ProjID = 30007
projanim = 30000
projhitanim = 30001
projscale = .3,.3
projremove = 1
projremovetime = 60
velocity = 40,0
projsprpriority = 2
offset = 10-random%3,-66-random%7
postype = p1         ;p2,front,back,left,right
attr = S,HP,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 30,10
givepower = 30,20
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,2
pausetime = 0,0
guard.pausetime = 0,0
sparkno = random%3
hitsound = S200,1
guardsound = 6,0
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = 1
fall.recover = 0

[State 3001, ChangeState]
type = ChangeState
trigger1 = Time = 28
value = 0
ctrl = 1

;Лазер (Гипер 2)
[Statedef 3100]
type = S
physics = S
movetype = A
ctrl = 0
anim = 213+(var(50)*10000)
velset = 0
poweradd = -2000
sprpriority = 2

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = Time < 60
value = SCA
time = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
time = 50
sound = 20,0
anim = 101
pos = 60,-72
movetime = 0
darken = 0
p2defmul = 1
poweradd = 0
unhittable = 1

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,5
channel = -1

[State 3100, Explod] ;Фон
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (195)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (195)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (195)), 1)
trigger1 = !NumExplod (195) && (AnimElem = 1) 
anim = 195
ID = 195
pos = 0,0
postype = left 
bindtime = 120
removetime = 120
sprpriority = 4
persistent = 1
ownpal = 1
ontop = 1
removeongethit = 1
supermovetime = 50

[State 3100, Explod] ;Компас
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (190)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (190)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (190)), 1)
trigger1 = !NumExplod (190) && (AnimElem = 1) 
anim = 190
ID = 190
pos = 30,50
scale = .5,.5
postype = left 
bindtime = 120
removetime = 120
sprpriority = 5
ownpal = 1
ontop = 1
removeongethit = 1
supermovetime = 50

[State 3100, Explod] ;Коды
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (191)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (191)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (191)), 1)
trigger1 = !NumExplod (191) && (AnimElem = 1) 
anim = 191
ID = 191
pos = 30,100
scale = .5,.5
postype = left 
bindtime = 120
removetime = 120
sprpriority = 5
ownpal = 1
ontop = 1
removeongethit = 1
supermovetime = 50

[State 3100, Explod] ;Надпись
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (198)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (198)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (198)), 1)
trigger1 = !NumExplod (198) && (AnimElem = 1) 
anim = 198
ID = 198
pos = 80,60
postype = left 
bindtime = 120
removetime = 120
sprpriority = 5
ownpal = 1
ontop = 1
removeongethit = 1
supermovetime = 50

[State 3100, RemoveExplod]
type = RemoveExplod
trigger1 = Animtime = 0 ||(RoundState != 2)||(Anim != 213+(var(50)*10000))||(HitFall)||(Statetype != S)||ctrl

[State 3100, Helper]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal ;player
name = "Laser"
ID = 10100
stateno = 10100
pos = 50,-74
postype = p1   ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999
pausemovetime = 999999

[State 3100, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Hasta La Vista, baby (Гипер 3)
[Statedef 3200]
type = S
physics = S
movetype = A
ctrl = 0
anim = 214+(var(50)*10000)
velset = 0
poweradd = -3000
sprpriority = 2

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3200,0
channel = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = Time < 140
value = SCA
time = 1

[State 3200, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
time = 130
sound = 20,0
anim = 102
pos = 60,-72
movetime = 0
darken = 0
p2defmul = 1
poweradd = 0
unhittable = 1

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)||(AnimElem = 8)||(AnimElem = 10)||(AnimElem = 12)||(AnimElem = 14)||(AnimElem = 16)||(AnimElem = 18)||(AnimElem = 20)
value = S200,7
channel = -1

[State 3200, Explod] ;Фон
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (195)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (195)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (195)), 1)
trigger1 = !NumExplod (195) && (AnimElem = 1) 
anim = 195
ID = 195
pos = 0,0
postype = left 
bindtime = 200
removetime = 200
sprpriority = 4
persistent = 1
ownpal = 1
ontop = 1
removeongethit = 1
supermovetime = 130

[State 3200, Explod] ;Компас
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (190)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (190)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (190)), 1)
trigger1 = !NumExplod (190) && (AnimElem = 1) 
anim = 190
ID = 190
pos = 30,50
scale = .5,.5
postype = left 
bindtime = 200
removetime = 200
sprpriority = 5
ownpal = 1
ontop = 1
removeongethit = 1
supermovetime = 130

[State 3200, Explod] ;Коды
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (191)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (191)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (191)), 1)
trigger1 = !NumExplod (191) && (AnimElem = 1) 
anim = 191
ID = 191
pos = 30,100
scale = .5,.5
postype = left 
bindtime = 200
removetime = 200
sprpriority = 5
ownpal = 1
ontop = 1
removeongethit = 1
supermovetime = 130

[State 3200, Explod] ;Надпись
type = Explod
triggerall = Cond (P2Name = "Terminator", (!enemy, NumExplod (198)), 1)
triggerall = Cond (P4Name = "Terminator", (!enemy(1), NumExplod (198)), 1)
triggerall = Cond (TeamMode = Simul && (P3Name = "Terminator" || P4Name = "Terminator"), (!partner, NumExplod (198)), 1)
trigger1 = !NumExplod (198) && (AnimElem = 1) 
anim = 198
ID = 198
pos = 80,60
postype = left 
bindtime = 200
removetime = 200
sprpriority = 5
ownpal = 1
ontop = 1
removeongethit = 1
supermovetime = 130

[State 3200, RemoveExplod]
type = RemoveExplod
trigger1 = Animtime = 0 ||(RoundState != 2)||(Anim != 214+(var(50)*10000))||(HitFall)||(Statetype != S)||ctrl

;[State 3100, Explod]
;type = Explod
;trigger1 = AnimElem = 2
;anim = 32003 + (random % 3)
;ID = 10006
;pos = 52,-73
;scale = 1,1 
;removetime = 2
;bindtime = 2
;postype = p1
;sprpriority = 3

[State 3200, Projectile]
type = Projectile
trigger1 = (AnimElem = 2)||(AnimElem = 4)||(AnimElem = 6)||(AnimElem = 8)||(AnimElem = 10)||(AnimElem = 12)||(AnimElem = 14)||(AnimElem = 16)||(AnimElem = 18)||(AnimElem = 20)
ProjID = 30002
projanim = 30007
projscale = 1.5,1.5
projremove = 1
projremovetime = 60
projpriority = 2
projsprpriority = 1
velocity = 10,0
offset = 30,-74
postype = p1         ;p2,front,back,left,right
attr = S,NP,NA         ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 100,10
givepower = 100,20
animtype = Hard          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Back
ground.type = High     ;Low,Trip,None
air.type = High
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 100,2
pausetime = 0,2
guard.pausetime = 0,2
hitsound = S200,1
guardsound = 6,0
sparkno = S32401
guard.sparkno = S32401 
ground.hittime = 15
guard.hittime = 15
air.hittime = 15
ground.slidetime = 15
guard.slidetime = 15
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
fall = IfElse(random<250,1,0)
palfx.time = 40
palfx.mul = 200,200,120
palfx.add = 120,25,0
palfx.sinadd = 110,55,85,10
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0

[State 3200, ChangeState]
type = ChangeState
trigger1 = Time = 25
value = 206
ctrl = 1

;Граната - основной стейт.
[Statedef 10008]
type = A
physics = N
movetype =A
Anim = 30006
ctrl = 0

[State 10008, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AT
time = 1

;Переадресация хитов
[State 10008, HitOverride]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA, AA,AP
stateno = 10012
time = 1
ignorehitpause = 1

;Вращение
[State 10008, AngleAdd]
type = AngleAdd
trigger1 = Root, fvar(5) >= 4
value = -20

[State 10008, AngleDraw]
type = AngleDraw
trigger1 = Root, fvar(5) >= 4

[State 10008, AngleSet]
type = AngleSet
trigger1 = Root, fvar(5) < 4
value = 0

[State 10008, VelSet]
type = VelSet
trigger1 = Root, fvar(5) > 5
x = 10
y = 0

[State 10008, VelMul]
type = VelMul
trigger1 = Root, fvar(5) < 5
x = .88

[State 10008, AntiGravity]
type = veladd
trigger1 = Pos y = 0 && root, fvar(5) >= 4
trigger1 = prevstateno = 10011
y = -5

[State 10008, PosSet]
type = PosSet
trigger1 = Pos y >= 0 && root, fvar(5) < 5 
y = 0

[State 10008, Gravity]
type = veladd
trigger1 = pos y < 0 
y = 0.99*time/3

;отражение от стены
[State 10008, ChangeState]
type = ChangeState
trigger1 = frontedgebodydist <= 5 && vel X
value = 10010

;отражение от пола
[State 10008, ChangeState]
type = ChangeState
trigger1 = pos y > 0 && root, fvar(5) >= 4
value = 10011

;взрыв
[State 10008, ChangeState]
type = ChangeState
trigger1 = root, fvar(5) < 0
trigger2 = root, fvar(5) < 4 && Pos y >= 0
value = 10009

[State 10008, HitDef]
Type = HitDef
trigger1 = time
attr = S,SP,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = LA        ;HLA
getpower = 150,10
givepower = 150,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 150,20
pausetime = 0,1
guard.pausetime = 0,1
hitsound = S6666,2
guardsound = S6666,2
sparkno = -1;S32700 
guard.sparkno = -1;S32700 
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<150,0,1)
fall.recover = 0

[State 10008, Explod]
type = Explod
triggerall = !numExplod(32700)
trigger1 = movecontact
anim = 32700
ID = 32700
pos = 0,0
removetime = -2
bindtime = 1
postype = p1
sprpriority = 3
scale = 1.8,1.8 
ownpal = 1
Ignorehitpause = 1

[State 10008, DestroySelf]
type = DestroySelf
trigger1 = movecontact;time = 120 || movecontact
;trigger2 = numExplod(32700)

;Граната - взрыв
[Statedef 10009]
type = A
physics = N
movetype = A
Anim = 30006
Velset = vel x,0
ctrl = 0

;Переадресация хитов
[State 10009, HitOverride]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA, AA,AP
stateno = 10012
time = 1
ignorehitpause = 1

[State 10009, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AT
time = 1

[State 10009, VelMul]
type = VelMul
trigger1 = Root, fvar(5) < 5
x = .88

[State 10009, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S200,10
channel = -1

[State 10009, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 10009, PalFXWiz]
type = PalFX
trigger1 = !time
time = 9
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,20
invertall = 0
color = 0

[State 10009, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = S6666,2
channel = -1

;[State 10009, ChangeAnim]
;type = ChangeAnim
;trigger1 = Time = 10
;value = 32700

[State 10009, HitDef]
Type = HitDef
trigger1 = AnimElem = 1
attr = S,SP,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = LA        ;HLA
getpower = 150,10
givepower = 150,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 150,20
pausetime = 0,1
guard.pausetime = 0,1
hitsound = S6666,2
guardsound = S6666,2
sparkno = -1;S32700 
guard.sparkno = -1;S32700 
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<150,0,1)
fall.recover = 0

[State 10009, Explod]
type = Explod
triggerall = !numExplod(32700)
trigger1 = movecontact
trigger2 = Time = 10
anim = 32700
ID = 32700
pos = 0,0
removetime = -2
bindtime = 1
postype = p1
sprpriority = 3
scale = 1.8,1.8 
ownpal = 1
Ignorehitpause = 1

[State 10009, DestroySelf]
type = DestroySelf
trigger1 = movecontact;time = 120 || movecontact
trigger2 = numExplod(32700)

;Граната - отражение от стен
[Statedef 10010]
type = A
physics = N
movetype = I
Anim = 30006
movehitpersist = 1
ctrl = 0

[State 10010, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AT
time = 1

;Переадресация хитов
[State 10010, HitOverride]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA, AA,AP
stateno = 10012
time = 1
ignorehitpause = 1

[State 10010, PosSet]
type = PosSet
trigger1 = Pos y >= 0 
y = 0

[State 10010, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S200,10
channel = -1

[State 10010, Turn]
type = Turn
trigger1 = !time

[State 10010, VelSet]
type = VelSet
trigger1 = !time
x = -vel x

[State 10010, ChangeState]
type = ChangeState
trigger1 = Time
value = IfElse((root, fvar(5) > 0), 10008, 10009)

[State 10010, Explod]
type = Explod
triggerall = !numExplod(32700)
trigger1 = movecontact
anim = 32700
ID = 32700
pos = 0,0
removetime = -2
bindtime = 1
postype = p1
sprpriority = 3
scale = 1.8,1.8 
ownpal = 1
Ignorehitpause = 1

[State 10010, DestroySelf]
type = DestroySelf
trigger1 = movecontact;time = 120 || movecontact
;trigger2 = numExplod(32700)

;Граната - отражение от пола
[Statedef 10011]
type = A
physics = N
movetype = I
Anim = 30006
movehitpersist = 1
ctrl = 0

;Переадресация хитов
[State 10011, HitOverride]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA, AA,AP
stateno = 10012
time = 1
ignorehitpause = 1

[State 10011, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AT
time = 1

[State 10011, PosSet]
type = PosSet
trigger1 = !time && Pos y > 0
y = 0

[State 10011, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S200,10
channel = -1

[State 10011, VelSet]
type = VelSet
trigger1 = !time && root, fvar(5) > 3
y = -vel y

[State 10011, ChangeState]
type = ChangeState
trigger1 = Time
value = IfElse((root, fvar(5) > 0), 10008, 10009)

[State 10011, Explod]
type = Explod
triggerall = !numExplod(32700)
trigger1 = movecontact
anim = 32700
ID = 32700
pos = 0,0
removetime = -2
bindtime = 1
postype = p1
sprpriority = 3
scale = 1.8,1.8 
ownpal = 1
Ignorehitpause = 1

[State 10011, DestroySelf]
type = DestroySelf
trigger1 = movecontact;time = 120 || movecontact
;trigger2 = numExplod(32700)

;Граната - попадание в гранату
[Statedef 10012]
type = A
physics = N
movetype = A
Anim = 30006
movehitpersist = 1
ctrl = 0

[State 10012, HitDef]
Type = HitDef
trigger1 = AnimElem = 1
attr = A,SP,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = LA        ;HLA
getpower = 150,10
givepower = 150,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 150,20
pausetime = 0,0
guard.pausetime = 0,0
hitsound = S6666,2
guardsound = S6666,2
sparkno = S31000 
guard.sparkno = S31000 
ground.velocity = -5,-3
guard.velocity = -2
air.velocity = -5,0
airguard.velocity = -1,0
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = IfElse(random<150,0,1)
fall.recover = 0

[State 10009, Explod]
type = Explod
triggerall = !numExplod(32700)
trigger1 = movecontact
anim = 32700
ID = 32700
pos = 0,0
removetime = -2
bindtime = 1
postype = p1
sprpriority = 3
scale = 1.8,1.8 
ownpal = 1
Ignorehitpause = 1

[State 10012, DestroySelf]
type = DestroySelf
trigger1 = movecontact;time = 120 || movecontact
;trigger2 = numExplod(32700)

;Луч лазера
[Statedef 10100]
movetype = A
Anim = 30003
ctrl = 0

[State 10010, Trans]
type = Trans
trigger1 = Time<=6
trans = addalpha
alpha = time*40,256
ignorehitpause = 1

[State 10010, Trans]
type = Trans
trigger1 = Time>6
trans = addalpha
alpha = 256-(time*25),256
ignorehitpause = 1

[State 10010, HitDef] 
type = HitDef
trigger1 = Time=6
attr = S,HP,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 100,10
givepower = 100,20
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 500,10
pausetime = 0,5
guard.pausetime = 0,5
sparkxy = 0,0
hitsound = S200,1
guardsound = 6,0
ground.velocity = -2,-3
guard.velocity = -1
air.velocity = -2,0
airguard.velocity = -1,0
palfx.time = 40
palfx.mul = 200,200,120
palfx.add = 120,25,0
palfx.sinadd = 110,55,85,10
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = 1
fall.recover = 0

[State 10010, HitAdd]
type = HitAdd
trigger1 = movehit
value = 3 

[State 10010, DestroySelf]
type = DestroySelf
trigger1 = !Animtime

;Мина 
[Statedef 10250]
type = C
movetype = A
Anim = 32500
ctrl = 0
sprpriority = 2

[State 10250, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 10250, PlaySnd]
type = PlaySnd
trigger1 = time = 3
value = S10250,0
channel = -1

[State 10250, Explod]
type = Explod
triggerall = !numExplod(32600)
trigger1 = movecontact
anim = 32600
ID = 32600
pos = 0,0
removetime = -2
bindtime = 1
postype = p1
sprpriority = 3
scale = 1.5,1.5 
Ignorehitpause = 1

[State 10250, HitDef]
Type = HitDef
trigger1 = Time
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = LA        ;HLA
getpower = 150,10
givepower = 150,20
animtype = diagup         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 200,20
pausetime = 0,0
guard.pausetime = 0,0
hitsound = S6666,5
guardsound = S6666,5
sparkno = -1;S31000 
guard.sparkno = -1;S31000 
ground.velocity = -6,-5
guard.velocity = -4
air.velocity = -5,-2
airguard.velocity = -2,-1
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = 1
fall.recover = 0

[State 10250, PlaySnd]
type = PlaySnd
trigger1 = Time = 340
value = S10250,1
channel = -1

[State 10250, ChangeState]
type = ChangeState
trigger1 = Time = 360
value = 10251

[State 10250, DestroySelf]
type = DestroySelf
trigger1 = Movecontact

;Мина 
[Statedef 10251]
type = C
movetype = A
Anim = 32600
ctrl = 0
sprpriority = 2

[State 10251, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 10251, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S6666,5
channel = -1

[State 10251, HitDef]
Type = HitDef
trigger1 = AnimElem = 2
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = LA        ;HLA
getpower = 150,10
givepower = 150,20
animtype = diagup         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 200,20
pausetime = 0,0
guard.pausetime = 0,0
hitsound = S6666,5
guardsound = S6666,5
sparkno = -1;S31000 
guard.sparkno = -1;S31000 
ground.velocity = -6,-5
guard.velocity = -4
air.velocity = -5,-2
airguard.velocity = -2,-1
envshake.time = 10 
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 0
fall = 1
fall.recover = 0

[State 10250, Explod]
type = Explod
triggerall = !numExplod(32600)
trigger1 = AnimElem = 2
trigger2 = movecontact
anim = 32600
ID = 32600
pos = 0,0
removetime = -2
bindtime = 1
postype = p1
sprpriority = 3
scale = 1.5,1.5 
Ignorehitpause = 1

[State 10251, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = Movecontact

;Переход из 1 во 2 || 3 форму
[Statedef 6666] 
type     = U
movetype = I
Velset = 0,0
ctrl = 0
anim = 6666

[State 6666,1]
type = NotHitBy
trigger1 = 1 
time = 1
value = SCA

[State 6666,2]
type = ChangeAnim
trigger1 = Life <= Lifemax/100*34 && !Time && !Var(50)
value = 8888
ignorehitpause = 1

[State 6666,3]
type = ChangeState
trigger1 = var(50) != 0 && !Time
value = 0
ctrl = 1
ignorehitpause = 1

[State 6666,4]
type = VarSet
trigger1 = (Life = (Lifemax/100*34, Lifemax/100*67]) && !Time && !Var(50)

v = 50
value = 1
ignorehitpause = 1

[State 6666,5]
type = VarSet
trigger1 = Life <= Lifemax/100*34 && !Time && !Var(50)
v = 50
value = 2
ignorehitpause = 1

[State 6666,6]
type = PlaySnd
trigger1 = AnimElem = 2
value = 6666,6

[State 6666,7]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
ignorehitpause = 1

;Переход из 2 в 3 форму
[Statedef 7777] 
type     = U
movetype = H
Velset = 0,0
ctrl = 0
anim = 7777

[State 7777,1]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA

[State 7777, HitFallSet]
type = HitFallSet
trigger1 = !hitfall
value = 1

;[State 7777,2]
;type = ChangeState
;trigger1 = var(50) != 1 && !Time
;value = 0
;ctrl = 1
;ignorehitpause = 1

[State 7777,3]
type = VarSet
trigger1 = Life <= Lifemax/100*34 && !Time
v = 50
value = 2
ignorehitpause = 1

[State 7777,6]
type = ChangeState
trigger1 = Anim = 7777 && AnimTime = 0
value = 0
ctrl = 1
ignorehitpause = 1
