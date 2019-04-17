
;---------------------------------------------------------------------------
[Statedef 16664,FAKE GETHIT default];FAKE GETHIT
type    = U
movetype= I
physics = N
juggle  = 0
anim = anim
sprpriority = 5

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 18   ;fv = 10
value = 1

[State -3, SLUGGETHIT];SLUGGETHIT
type = PlaySnd
trigger1 = time=0
value = 4000,23
volumescale = 256
channel = -1
freqmul = 1.0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
 
[State 0, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = TIME=0
v = 21    ;fv = 10
value = VAR(21)-1

[State 0, ChangeState];GETHITSTAND
type = ChangeState
TRIGGERALL=STATETYPE=S&&var(21)>=1
trigger1 = time=0
value =0
ctrl=1

[State 0, ChangeState];GETHITAIR
type = ChangeState
TRIGGERALL=STATETYPE=A&&var(21)>=1&&var(10)!=109
trigger1 = time=0
value =2405
ctrl=1

[State 0, ChangeState];GETHITAIR
type = ChangeState
TRIGGERALL=STATETYPE=A&&var(21)>0&&var(10)=109
trigger1 = time=0
value =15126
ctrl=1



[State 0, ChangeState];GETHITCROUCH
type = ChangeState
TRIGGERALL=STATETYPE=C&&var(21)>=1
trigger1 = time=0
value =11
ctrl=1

[State 0, ChangeState];GETHITAERIALSGUNNER
type = ChangeState
TRIGGERALL=STATETYPE=a&&var(21)>=1&&var(10)=105
trigger1 = time=1
value =15062
ctrl=1


[State 0, ChangeState];GETHITAERIALSGUNNER
type = ChangeState
TRIGGERALL=STATETYPE=a&&var(21)>=1&&var(10)=107
trigger1 = time=1
value =15086
ctrl=1

[State 0, ChangeState];GETHITAERIALSGUNNER
type = ChangeState
TRIGGERALL=STATETYPE=a&&var(21)>=1&&var(10)=108
trigger1 = time=1
value =15116
ctrl=1



[State 0, ChangeState];SELFDESTRUCT SGUNNER
type = ChangeState
trigger1 = var(21)<=0&&var(10)=105
value =15066
ctrl=0


[State 0, ChangeState];SELFDESTRUCT DRILLSLUG
type = ChangeState
trigger1 = time=0&&var(21)<=0&&var(10)=103
value =15032
ctrl=0

[State 0, ChangeState];SELFDESTRUCT BLACKHOUND
type = ChangeState
trigger1 = var(21)<=0&&var(10)=106
value =15075
ctrl=0

[State 0, ChangeState];SELFDESTRUCT BRADLEY
type = ChangeState
trigger1 = var(21)<=0&&var(10)=107
value =15088
ctrl=0


[State 0, ChangeState];SELFDESTRUCT BRADLEY
type = ChangeState
trigger1 = var(21)<=0&&var(10)=108
value =15120
ctrl=0
[State 0, ChangeState];SELFDESTRUCT LVARMOR
type = ChangeState
trigger1 = var(21)<=0&&var(10)=109
value =15128
ctrl=0

[State 0, ChangeState];SELFDESTRUCT LVARMOR
type = ChangeState
trigger1 = var(21)<=0&&var(10)=110
value =15138
ctrl=0

[State 0, ChangeState];SELFDESTRUCT SLUGBALL
type = ChangeState
trigger1 = var(21)<=0&&var(10)=112&&STATETYPE=s
value =15174
ctrl=0

[State 0, ChangeState];SELFDESTRUCT SLUGBALL
type = ChangeState
trigger1 = var(21)<=0&&var(10)=112&&STATETYPE!=S
value =15175
ctrl=0


[State 0, ChangeState];SELFDESTRUCT DIKOKKA
type = ChangeState
trigger1 = var(21)<=0&&var(10)=130
value =15198
ctrl=0

[State 0, ChangeState];SELFDESTRUCT RDIKOKKA
type = ChangeState
trigger1 = var(21)<=0&&var(10)=114
value =15207
ctrl=0

;---------------------------------------------------------------------------
;EnteringSLUGFLYER
[Statedef 14998]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(var(10)=0,11047,ifelse(var(10)=15,11049,11048))
sprpriority = 5
velset = 0,0;-.1jkjkl


[State 0, PosSet]
type = PosSet
trigger1 = TIME=0&&VAR(59)
y = -33

[State 0, NotHitBy]
type = NotHitBy
trigger1 = anim=11047||anim=11048||anim=11049
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, Turn]
type = Turn
trigger1 = (facing=1)&&helper(15000),facing=-1
trigger2 = (facing=-1)&&helper(15000),facing=1


[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0
;ignorehitpause = 
;persistent = 

[State 0, PosFreeze]
type = PosFreeze
trigger1 = ANIM=11047
trigger2 = ANIM=11048
trigger3 = ANIM=11049
value = 1
;ignorehitpause = 
;persistent = 

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=1
id = 545454


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 25    ;fv = 10
value = var(10)

[State 0, PosSet]
type = PosSet
trigger1 = anim=11047&&animtime=0
trigger2 = anim=11048&&animtime=0
trigger3 = anim=11049&&animtime=0
x = pos x +13*-facing
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=11047&&animtime=0
trigger2 = anim=11048&&animtime=0
trigger3 = anim=11049&&animtime=0
value = 16101



[State 0, PosSet]
type = PosSet
trigger1 = anim=16101
y = 0


[State -3, SLUGGEEntering]
type = PlaySnd
trigger1 = (anim=16101)&&animelem=3,1;Jump land
value = 4000,24
volumescale = 256
channel = -1
freqmul = 1.0


[State 0, VarSet]
type = VarSet
trigger1 = anim=16101&&animelem=1,1
v = 10    ;fv = 10
value = 101

[State 0, VarSet]
type = VarSet
trigger1 = anim=16101&&animelem=1,1&&var(21)=0
v = 21    ;fv = 10
value = 3


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = var(10)=101
id = 9101
;ignorehitpause = 
;persistent = 


[State 0, HUDVIDACANION0]
type = RemoveExplod
triggerall=numexplod(9110)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=16101&&animelem=2,1
id = 9110


[State 0, ChangeState]
type = ChangeState
triggerall=anim=16101&&animtime=0
trigger1 = command="holddown"&&var(10)=101
value =11
ctrl = 1

[State 0, ChangeState]
type = ChangeState
triggerall=anim=16101&&animtime=0
trigger1 = command!="holddown"&&var(10)=101
value =0
ctrl = 1



;---------------------------------------------------------------------------
;EnteringSV001
[Statedef 14999]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(var(10)=0,11047,ifelse(var(10)=15,11049,11048))
sprpriority = 5
velset = 0,0;-.1jkjkl

[State 0, RemapPal]
type = RemapPal
trigger1 = palno!=4
source = 0,27
dest = 0,27

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, Turn]
type = Turn
trigger1=numhelper(15000)>0
trigger1 = (facing=1)&&helper(15000),facing=-1
trigger2=numhelper(15000)>0
trigger2 = (facing=-1)&&helper(15000),facing=1


[State 0, PosSet]
type = PosSet
trigger1 = TIME=0&&VAR(59)
y = -33


[State 0, NotHitBy]
type = NotHitBy
trigger1 = anim=11047||anim=11048||anim=11049
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1


[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0
;ignorehitpause = 
;persistent = 

[State 0, PosFreeze]
type = PosFreeze
trigger1 = ANIM=11047
trigger2 = ANIM=11048
trigger3 = ANIM=11049
value = 1
;ignorehitpause = 
;persistent = 

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=1
id = 545454


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 25    ;fv = 10
value = var(10)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=11047&&animtime=0
trigger2 = anim=11048&&animtime=0
trigger3 = ANIM=11049&&animtime=0
value = 16006

[State 0, PosSet]
type = PosSet
trigger1 = anim=16006
y = 0

[State -3, SLUGGEEntering];SLUGGETHIT
type = PlaySnd
trigger1 = (anim=16006)&&animelem=3,1;Jump land
value = 4000,24
volumescale = 256
channel = -1
freqmul = 1.0


[State 0, VarSet]
type = VarSet
trigger1 = anim=16006&&animelem=1,1
v = 10    ;fv = 10
value = 100

[State 0, VarSet]
type = VarSet
trigger1 = anim=16006&&animelem=1,1&&var(21)=0
v = 21    ;fv = 10
value = 3


[State 0, HUDVIDACANION0]
type = RemoveExplod
triggerall=numexplod(9110)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=16006&&animelem=2,1
id = 9110


[State 0, cannon]
type = RemoveExplod
triggerall=numexplod(9101)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=16006&&animelem=2,1
id = 9101

[State 0, ChangeState]
type = ChangeState
triggerall=anim=16006&&animtime=0
trigger1 = command="holddown"&&var(10)=100
value =11
ctrl = 1

[State 0, ChangeState]
type = ChangeState
triggerall=anim=16006&&animtime=0
trigger1 = command!="holddown"&&var(10)=100
value =0
ctrl = 1


;---------------------------------------------------------------------------
;SV001FALLING
[Statedef 15000]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 16005
sprpriority = 0
velset = 0,5;-.1jkjkl
poweradd=ifelse((root,var(59)=1),-2000,-floor(root,fvar(18)))


[State 0, Helper]
type = Helper
trigger1=numhelper(323232)=0&&root,palno=4
helpertype = normal ;player
name = "ALICE"
ID = 323232
stateno = 16668
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0



[State 0, ParentVarSet]
type = ParentVarSet
trigger1 =time=0
v = 27
value = random%2

[State 0, RemapPal]
type = RemapPal
triggerall=root,palno!=4
trigger1 = root,var(27)=0
source = 0,27
dest = 0,27

[State 0, RemapPal]
type = RemapPal
triggerall=root,palno!=4
trigger1 = root,var(27)=1
source = 0,27
dest = 27,2

[State 0, ALICE]
type = RemapPal
triggerall=root,palno=4
trigger1 = root,var(27)=0
source = 0,27
dest = 27,3

[State 0, ALICE-H]
type = RemapPal
triggerall=root,palno=4
trigger1 = root,var(27)=1
source = 0,27
dest = 27,5


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 24    ;fv = 10
value = 10+ifelse(root,palno=4,2,0)

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=0;pos y>0;animtime=0
value =15001
;---------------------------------------------------------------------------
;SV001ENTERHERE
[Statedef 15001]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 16005
sprpriority = 0
velset = 0,0;-.1jkjkl


[State 0, Helper]
type = Helper
trigger1=numhelper(323232)=0&&root,palno=4
helpertype = normal ;player
name = "ALICE"
ID = 323232
stateno = 16668
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, Explod]
type = Explod
trigger1 = time=0&&numexplod(545454)=0&&root,stateno!=14999
anim = 20100
ID = 545454
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 11    ;fv = 10
value = root,pos y

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,stateno=14999;&&numhelper(545454)>0
id = 545454

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, ChangeState]
type = ChangeState
triggerall=root,palno=4
trigger1 = root,movetype=h
value =17000
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall=root,palno=4
trigger1 = root,command="b"
value =16670
ctrl = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1=root,anim=16006
;---------------------------------------------------------------------------

;SV001GetHit1
[Statedef 15002]
type    = S
movetype= H
physics = N
ctrl = 0
sprpriority = 5


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time=0
value = 16012

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=16012&&animtime=0
value = 16015

[State 0, ChangeState]
type = ChangeState
triggerall=var(21)<=0
trigger1 = 1
value =15004
ctrl = 0
[State 0, ChangeState]
type = ChangeState
triggerall=var(21)!=0
trigger1 = anim=16015&&animtime=0
value =0
ctrl = 1


;SV001GetHit2
[Statedef 15003]
type    = S
movetype= H
physics = N
ctrl = 0
sprpriority = 5


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1



[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0


[State 0, VelSet]
type = VelSet
trigger1 = pos y>0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time=0
value = 16013
;elem = 1
;ignorehitpause = 
;persistent = 
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =anim=16013&&animtime=0
value = 16014

[State 0, ChangeState]
type = ChangeState
triggerall=var(21)<=0
trigger1 = 1
value =15004
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall=var(21)!=0
trigger1 = anim=16014&&animtime=0
value =0
ctrl = 1

;---------------------------------------------------------------------------
;SelfDestructSV001
[Statedef 15004]
type    = S
movetype= H
physics = N
ctrl = 0
sprpriority = 5

[State 0, Explod];OUT
type = Explod
trigger1 = time=0&&numexplod(545454)=0&&root,stateno!=14999
anim = 20101
ID = 545455
pos = 0,-60
postype = p1  ;p2,front,back,left,right
facing = ifelse(facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 0, VelSet]
type = VelSet
trigger1 = pos y<0
x = 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time=0
value = 16013
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =anim=16013&&animtime=0
value = 16014

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=16014&&animtime=0
value = 4000,22
volumescale = 256
channel = 44

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=16014&&animtime=0
value = 16002



[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, PalFXWiz]
type = PalFX
trigger1 = anim=16002&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256
[State 0, VarSet]
type = VarSet
trigger1 = command="y"
trigger2 = anim=16002&&time>210
trigger3=var(59)
v = 10
value = root,var(25)

[State 0, PalFXWiz]
type = PalFX
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
time = 1

[State 0, Helper]
type = Helper
trigger1 = command="y"
trigger2=var(59)
helpertype = normal ;player
name = "BIGEXPLOSION"
ID = 15005
stateno = 15006
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
channel = 44
;ignorehitpause = 
;persistent = 


[State 0, ChangeState]
type = ChangeState
trigger1 = command="y"
trigger2=var(59)
value =105
ctrl = 1



[State 0, Helper]
type = Helper
trigger1 = anim=16002&&time>210
helpertype = normal ;player
name = "BIGEXPLOSIONF"
ID = 15005
stateno = 15005
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = anim=16002&&time>209
trigger2 = command="y"
id = 545455



[State 0, ChangeState]
type = ChangeState
trigger1 = anim=16002&&time>210
value =0
ctrl = 1


;---------------------------------------------------------------------------
;BIGEXPLOSIONF
[Statedef 15005]
type    = s                      
movetype= a                      
physics = s
anim = 1256
sprpriority = 4
velset = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = s4000,20
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=1
value = s4000,44;s4000,20
volume = 255
channel = -1

[State 0, EnvColor]
type = EnvColor
trigger1 = time=0
value = 255,255,255
time = 1

[State 0, Helper]
type = Helper
trigger1 = (animelem=1,1)||(animelem=5,1)||(animelem=9,1)||(animelem=17,1)||(animelem=21,1)
helpertype = normal ;player
name = "SMALLEXPLOSIONUPL"
ID = 313131
stateno = 302
pos = time*2,-time*2
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
trigger1 = (animelem=1,1)||(animelem=5,1)||(animelem=9,1)||(animelem=17,1)||(animelem=21,1)
helpertype = normal ;player
name = "SMALLEXPLOSIONUPR"
ID = 313131
stateno = 302
pos = -time*2,-time*2
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
trigger1 = (animelem=1,1)||(animelem=5,1)||(animelem=9,1)||(animelem=17,1)||(animelem=21,1)
helpertype = normal ;player
name = "SMALLEXPLOSIONDL"
ID = 313131
stateno = 302
pos = -time*2,time*2
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
trigger1 = (animelem=1,1)||(animelem=5,1)||(animelem=9,1)||(animelem=17,1)||(animelem=21,1)
helpertype = normal ;player
name = "SMALLEXPLOSIONDR"
ID = 313131
stateno = 302
pos = time*2,time*2
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 251, HitDef]
type = HitDef
trigger1 = (animelem=1,1)||(animelem=2,1)||(animelem=3,1)||(animelem=4,1)
trigger2 =(animelem=5,1)||(animelem=6,1)||(animelem=7,1)||(animelem=8,1)
trigger3 =(animelem=9,1)||(animelem=10,1)||(animelem=11,1)||(animelem=12,1)
trigger4 =(animelem=13,1)||(animelem=14,1)||(animelem=15,1)||(animelem=16,1)
trigger5 =(animelem=17,1)||(animelem=18,1)||(animelem=19,1)||(animelem=20,1)
trigger6 =(animelem=21,1)||(animelem=22,1)||(animelem=23,1)||(animelem=24,1)
attr = S, SP
animtype  = Hard
damage    = 4,4;5,2
affectteam=B
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,1
guardsound =-1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 1105]
type = destroyself
trigger1 = animtime = 0


;---------------------------------------------------------------------------
;BIGEXPLOSIONG
[Statedef 15006]
type    = s                      
movetype= a                      
physics = s
anim = 1256
sprpriority = 4
velset = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = s4000,20
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=1
value = s4000,44;s4000,20
volume = 255
channel = -1


[State 0, EnvColor]
type = EnvColor
trigger1 = time=0
value = 255,255,255
time = 1

[State 0, Helper]
type = Helper
trigger1 = (animelem=1,1)||(animelem=5,1)||(animelem=9,1)||(animelem=17,1)||(animelem=21,1)
helpertype = normal ;player
name = "SMALLEXPLOSIONUPL"
ID = 313131
stateno = 302
pos = time*2,-time*2
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
trigger1 = (animelem=1,1)||(animelem=5,1)||(animelem=9,1)||(animelem=17,1)||(animelem=21,1)
helpertype = normal ;player
name = "SMALLEXPLOSIONUPR"
ID = 313131
stateno = 302
pos = -time*2,-time*2
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
trigger1 = (animelem=1,1)||(animelem=5,1)||(animelem=9,1)||(animelem=17,1)||(animelem=21,1)
helpertype = normal ;player
name = "SMALLEXPLOSIONDL"
ID = 313131
stateno = 302
pos = -time*2,time*2
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
trigger1 = (animelem=1,1)||(animelem=5,1)||(animelem=9,1)||(animelem=17,1)||(animelem=21,1)
helpertype = normal ;player
name = "SMALLEXPLOSIONDR"
ID = 313131
stateno = 302
pos = time*2,time*2
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 251, HitDef]
type = HitDef
trigger1 = (animelem=1,1)||(animelem=2,1)||(animelem=3,1)||(animelem=4,1)
trigger2 =(animelem=5,1)||(animelem=6,1)||(animelem=7,1)||(animelem=8,1)
trigger3 =(animelem=9,1)||(animelem=10,1)||(animelem=11,1)||(animelem=12,1)
trigger4 =(animelem=13,1)||(animelem=14,1)||(animelem=15,1)||(animelem=16,1)
trigger5 =(animelem=17,1)||(animelem=18,1)||(animelem=19,1)||(animelem=20,1)
trigger6 =(animelem=21,1)||(animelem=22,1)||(animelem=23,1)||(animelem=24,1)
attr = S, SP
animtype  = Hard
damage    = 4,4;5,2
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy=0,0
hitsound   =-1;s4000,1
guardsound =-1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 1105]
type = destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;Cannon Helper
[Statedef 15007]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 16020
sprpriority = 5
velset = ifelse(((root,var(27)=1)&&(root,palno!=4)||(root,palno=4)),2,1)+root,vel x,0-(root,vel y)/5;-.15-(root,vel y)/5;5,0;.15+root,vel x,-.15-(root,vel y)/5;5,0

[State 0, Explod]
type = Explod
trigger1 = TIME=0
anim = ifelse(root,anim=16021,16023,16022)
ID = 313131
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = root,anim=16021&&root,animelem=3,1
anim = 16024
ID = 313131
pos = -20,20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, EnvColor]
type = EnvColor
trigger1 = movecontact
value = 255,255,255
time = 1

[State 0, VarSet]
type = VarSet
trigger1=var(44)>360
trigger2=time=0
v = 44    ;fv = 10
value = 360

[State 0, varadd]
type = varadd
triggerall =var(44)>270&&time>8
trigger1=time
v=44
value=-2

[State 0, VarSet]
type = VarSet
trigger1=var(44)<0
v = 44    ;fv = 10
value = 359

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(44)

[State 0, ParentVarSet];Le resta a la variable canion
type = ParentVarSet
triggerall=root,var(24)>0
trigger1 = time=0
v =  24   ;fv = 
value = root,var(24)-1

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 253
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 100,50
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4;s4000,1
guardsound = s4000,4;s4000,1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1

ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1




[State 2400, 2]
type = Veladd
trigger1 =time<10
x=.15
y = -.15

[State 2400, 2]
type = Veladd
trigger1 =time>10
y = .2


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
value = 253

;SV001WIN
[Statedef 15008]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 16005
sprpriority = 0
velset = 0,0;-.1jkjkl

[State 0, Explod]
type = Explod
trigger1 = time=0&&numexplod(545454)=0
anim = 20100
ID = 545454
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0



[State 0, DestroySelf]
type = DestroySelf
trigger1=anim=16009&&animtime=0
trigger2=root,command="holddown"&&anim=16006&&root,anim=16008
;[State 0, DestroySelf]
;type = DestroySelf
;triggerall=root,var(10)>=100
;trigger1 = 1
;ignorehitpause = 
;persistent = 
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;SUICIDE SV001
[Statedef 15009]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 16003
sprpriority = 5
velset = 5+const(velocity.walk.fwd.x),0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 24    ;fv = 10
value = root,var(24)


[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0;anim=16003&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 0, VarSet]
type = VarSet
triggerall=root,palno=5&&root,var(10)=0
trigger1 = time=0
v = 3    ;fv = 10
value = ifelse(parent,anim=11200,3,ifelse(parent,anim=600,2,1))
ignorehitpause = 
persistent = 

[State 0, VarSet]
type = VarSet
triggerall=root,var(10)=5
trigger1 = time=0
v = 3    ;fv = 10
value = ifelse(parent,anim=11201,3,ifelse(parent,anim=8600,2,1))
ignorehitpause = 
persistent = 

[State 0, VarSet]
type = VarSet
triggerall=root,var(10)=5&&root,palno=5
trigger1 = pos y<root,pos y - 300
v = 3    ;fv = 10
value = 2
ignorehitpause = 
persistent = 

[State 0, PosSet]
type = PosSet
triggerall=root,var(10)=5&&root,palno=5
trigger1 = pos y<root,pos y - 300
x = enemy,pos x
y = pos y


[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 10*var(21)+5*var(24)+(root,palno=4)*20,10*var(21)+3*var(24)+(root,palno=4)*20
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 2400, 2];Avanza
type = Velset
triggerall=var(3)=1
trigger1 =1;animelem=1;animtime<
x = 6
y =0

[State 2400, 2];Baja
type = Velset
triggerall=var(3)=2
trigger1 =1;animelem=1;animtime<
x = 0
y =6

[State 2400, 2];Sube
type = Velset
triggerall=var(3)=3
trigger1 =1;animelem=1;animtime<
x = 0
y =-6


[State 0, PalFXWiz]
type = PalFX
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)

[State 0, VarSet]
type = parentVarSet
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
v = 21   ;fv = 10
value = 0


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
value = 15006
;---------------------------------------------------------------------------
;SFLYERFALLING
[Statedef 15010]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 16100
sprpriority = 0
velset = 0,5;-.1jkjkl
poweradd=ifelse((root,var(59)=1),-2000,-floor(root,fvar(18)))


[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = time=0
v = 27
value = random%2


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, VarSet]
type = parentVarSet
trigger1=time=0&&root,palno!=4
v = 24    ;fv = 10
value = 10+ifelse(root,palno=4,2,0)

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=0;pos y>0;animtime=0
value =15011

;---------------------------------------------------------------------------
;SFLYERENTERHERE
[Statedef 15011]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(win&&matchover,16102,16100)
sprpriority = 0
velset = 0,ifelse(win&&matchover,root,vel y,0);-.1jkjkl


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = win&&matchover&&anim=16102&&animtime=0
value = 16100
;elem = 1
;ignorehitpause = 
;persistent = 


[State 0, Explod]
type = Explod
trigger1 = time=0&&numexplod(545454)=0&&root,stateno!=14998
anim = 20100
ID = 545454
pos = 20,-40
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,stateno=14998
trigger2=root,var(10)=101
id = 545454


[State 0, PosSet]
type = PosSet
trigger1 = pos y >=0
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = pos y >=0
x = 0
y = 0




[State 0, DestroySelf]
type = DestroySelf
trigger1=root,anim=16101
;---------------------------------------------------------------------------
;SLUGFLYERSVF-07V
[Statedef 15012]; Hover code by NOCTIS
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 1
anim = 16104;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 4


[State 0, Helper]
type = Helper
triggerall=numhelper(515152)=0
trigger1 = pos y >-60
helpertype = normal ;player
name = "SmokeFloor"
ID = 515152
stateno = 290
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
triggerall=numhelper(515153)=0
trigger1 = 1
helpertype = normal ;player
name = "Propulsor1"
ID = 515153
stateno = 291
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
triggerall=numhelper(515154)=0
trigger1 = 1
helpertype = normal ;player
name = "Propulsor2"
ID = 515154
stateno = 292
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
triggerall=numhelper(515155)=0
trigger1 = 1
helpertype = normal ;player
name = "Propulsor2"
ID = 515155
stateno = 293
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = var(59)&&((enemy,pos x)-pos x)<0
x =-2
 
[State 0, VelAdd]
type = VelAdd
trigger1 = (var(59))&&((enemy,pos x)-pos x)<0
x = -1


[State 0, RemoveExplod];Unidad Granada/Grenade
type = RemoveExplod
triggerall=numexplod(20000)>0;&&var(17)>0
trigger1=time=0
id = 20000
ignorehitpause = 1
persistent = 

[State 0, RemoveExplod];Descena Granada/Grenade
type = RemoveExplod
triggerall=numexplod(20001)>0
trigger1=time=0
id = 20001
ignorehitpause = 1
persistent = 

[State 0, RemoveExplod];Simboloinfinito
type = RemoveExplod
triggerall=numexplod(9102)>0
trigger1=time=0
id = 9102
ignorehitpause = 1
persistent = 

[state 55]
type = velset
trigger1 = time <= 30 && (vel y >= -2.5&&vel y <= 2.5)
y = 0
ignorehitpause = 1
 
[state 55]
type = velset
trigger1 = (vel x >= -.5&&vel x <= .5)
x = 0
ignorehitpause = 1
 
[state 55]
type = veladd
triggerall=command!="holddown"&&command!="holdback"
trigger1 = vel x
x = ifelse(vel x < 0,.175,-.175)
ignorehitpause = 1
 
[state 55]
type = veladd
trigger1 = time <= 30
trigger1 = vel y > .5||vel y < -.5;vel y > 2.5||vel y < -2.5
y = ifelse(vel y < 0,.1,-.1);ifelse(vel y < 0,.4,-.4)
ignorehitpause = 1
 
[state 55]
type = velset
trigger1 = time > 30 || !Vel y
y = -.1*Sin((Time*0.1));-2*Sin((Time*0.2))
ignorehitpause = 1

[State 0, VelAdd]
type = Velset
triggerall=pos y>enemy,pos y -150
trigger1 = command="holdup"
y = -2
x=0


[State 0, VelAdd]
type = Velset
trigger1 = command="holddown"
y = 2
x=0

[state 55]
type = velset
trigger1 = command = "holdfwd"
x = 2
 
[state 55]
type = velset
trigger1 = command = "holdback"
x = -2


[State 0, ChangeAnim];arriba
type = ChangeAnim
trigger1 = command = "holdup"&&anim!=16107&&command != "holdfwd"&&anim!=16111&&command != "holdback"
value = 16107

[State 0, ChangeAnim];diagupR
type = ChangeAnim
trigger1 = command = "holdup"&&anim!=16111&&command = "holdfwd"&&anim!=16107&&command != "holdback"
value = 16111

[State 0, ChangeAnim];adelante
type = ChangeAnim
trigger1 = command != "holdup"&&anim!=16114&&command = "holdfwd"&&command != "holdback"&&command != "holddown"
value = 16114

[State 0, ChangeAnim];diagupL
type = ChangeAnim
trigger1 = command = "holdup"&&anim!=16118&&command != "holdfwd"&&anim!=16107&&command = "holdback"
value = 16118

[State 0, ChangeAnim];diagupLFROMUP
type = ChangeAnim
trigger1 = command = "holdup"&&anim=16107&&command != "holdfwd"&&anim!=16111&&command = "holdback"
value = 16120



[State 0, ChangeAnim];atras
type = ChangeAnim
trigger1 = command = "holdback"&&anim!=16116&&command != "holdup"&&command != "holdfwd"
value = 16116

[State 0, ChangeAnim];abajo
type = ChangeAnim
trigger1 = command = "holddown"&&anim!=16109&&command!="holdback"&&command!="holdfwd"
value = 16109


[State 0, ChangeAnim];abajo diagleft
type = ChangeAnim
trigger1 = command = "holddown"&&anim!=16122&&command="holdback"
value = 16122

[State 0, ChangeAnim];abajo diagleft END
type = ChangeAnim
trigger1 = command != "holddown"&&anim=16122&&command!="holdback"
value = 16123

[State 0, ChangeAnim];abajo diagright
type = ChangeAnim
trigger1 = command = "holddown"&&(anim!=16124)&&command="holdfwd"&&command!="holdup"
value = 16124

[State 0, ChangeAnim];abajo diagright
type = ChangeAnim
trigger1 = command != "holddown"&&(anim=16124)&&command!="holdfwd"
value = 16125

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=16107&&command != "holdup"
trigger2=anim=16113&&command != "holdup"
value = 16108

[State 0, ChangeAnim];diagupLEND1
type = ChangeAnim
trigger1 = command != "holdup"&&anim=16118&&command != "holdfwd"&&anim!=16107&&command != "holdback"
trigger2 = command != "holdup"&&anim=16120&&command != "holdfwd"&&anim!=16107&&command != "holdback"
value = 16119

[State 0, ChangeAnim];atras end
type = ChangeAnim
trigger1 = anim=16116&&command != "holdback"
value = 16117

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=16109&&command != "holddown"
value = 16110

[State 0, ChangeAnim];DIAGUPRTOUP
type = ChangeAnim
trigger1 = anim=16111&&command != "holdfwd"&&command = "holdup"
value = 16113

[State 0, ChangeAnim];UPTODIAGUP
type = ChangeAnim
trigger1 = (anim=16107||anim=16113)&&command != "holdfwd"&&command = "holdup"
value = 16121

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=16111&&command != "holdfwd"&&command != "holdup"
value = 16112

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=16114&&command != "holdfwd"&&command != "holdup"
value = 16115

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=16108&&animtime=0;termina arriba
trigger2 = anim=16110&&animtime=0;termina abajo
trigger3 = anim=16112&&animtime=0;termina diagupR
trigger4 = anim=16115&&animtime=0;termina adelante
trigger5 = anim=16117&&animtime=0;termina atras
trigger6 = anim=16119&&animtime=0;termina diagupL
trigger7 = anim=16123&&animtime=0;termina diagDL
trigger8 = anim=16125&&animtime=0;termina diagDR
value = 16104


[State 0, ChangeState];aterriza
type = ChangeState
trigger1 = pos y >0
value =52
ctrl = 0

[State 0, VelSet];landing after win
type = VelSet
trigger1 = win
y = 3

[State 0, ChangeState];salta del vehiculo
type = ChangeState
trigger1 = var(10)!=101
value =2400
ctrl = 1



;---------------------------------------------------------------------------
;MISSILELAUCH
[Statedef 15013]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 1233
sprpriority = 5
velset = 0,3

[State 0, Helper]
type = Helper
trigger1 = 1
helpertype = normal ;player
name = "SmokeTrail"
ID = 515151
stateno = 305
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, VarAdd]
type = parentvaradd
trigger1 = time=0
v =24
value = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S4000,8
volumescale = 256
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan = 
;ignorehitpause = 
;persistent = 



[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 30,15
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,7
guardsound = s4000,7;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;envshake.time = 8
;envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = frontedgedist <=-50
trigger3 = (pos y<root,pos y-250)
value=15015


[State 0, ChangeState]
type = changestate
trigger1=animtime=0
value=15014

;---------------------------------------------------------------------------
;MISSILEFLY
[Statedef 15014]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 1234
sprpriority = 5
velset = 0,0;-.1jkjkl


[State 0, Helper]
type = Helper
trigger1 = anim=1234
trigger1=random%2=1
trigger2=anim=1235
trigger2=random%3=1
helpertype = normal ;player
name = "SmokeTrail"
ID = 515151
stateno = 305
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State 0, Helper]
type = Helper
trigger1=1
helpertype = normal ;player
name = "MissileFire"
ID = 515152
stateno = 307
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, ChangeState]
type = changeanim
trigger1 = anim=1234&&animtime=0
value =1235

[State 0, VelSet]
type = VelSet
trigger1 = anim=1235
x = 15
y = 0


[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 30,15
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,7
guardsound = s4000,7;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;envshake.time = 8
;envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = frontedgedist <=-50
trigger3 = (pos y<root,pos y-250)
value=15015


;---------------------------------------------------------------------------
;BIGEXPLOSIONMISSILE
[Statedef 15015]
type    = s                      
movetype= a                      
physics = s
anim = 1256
sprpriority = 4
velset = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = s4000,10
volume = 255
channel = 44


;[State 0, EnvColor]
;type = EnvColor
;trigger1 = time=0
;value = 255,255,255
;time = 1

;trigger1 = (animelem=1,1)||(animelem=5,1)||(animelem=9,1)||(animelem=17,1)||(animelem=21,1)


[State 0, Helper]
type = Helper
triggerall=root,facing=1
trigger1 = (animelem=1,1)||(animelem=2,1)||(animelem=3,1)||(animelem=4,1)||(animelem=5,1)
helpertype = normal ;player
name = "SMALLEXPLOSIONUPL"
ID = 313131
stateno = 302
pos = time*10,-time*10
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
triggerall=root,facing=-1
trigger1 = (animelem=1,1)||(animelem=2,1)||(animelem=3,1)||(animelem=4,1)||(animelem=5,1)
helpertype = normal ;player
name = "SMALLEXPLOSIONUPR"
ID = 313131
stateno = 302
pos = -time*10,-time*10
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
triggerall=root,facing=-1
trigger1 = (animelem=1,1)||(animelem=2,1)||(animelem=3,1)||(animelem=4,1)||(animelem=5,1)
helpertype = normal ;player
name = "SMALLEXPLOSIONDL"
ID = 313131
stateno = 302
pos = -time*10,time*10
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
triggerall=root,facing=1
trigger1 = (animelem=1,1)||(animelem=2,1)||(animelem=3,1)||(animelem=4,1)||(animelem=5,1)
helpertype = normal ;player
name = "SMALLEXPLOSIONDR"
ID = 313131
stateno = 302
pos = time*10,time*10
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 251, HitDef]
type = HitDef
trigger1 = (animelem=1,1)||(animelem=2,1)||(animelem=3,1)||(animelem=4,1)
trigger2 =(animelem=5,1)||(animelem=6,1)||(animelem=7,1)||(animelem=8,1)
trigger3 =(animelem=9,1)||(animelem=10,1)||(animelem=11,1)||(animelem=12,1)
trigger4 =(animelem=13,1)||(animelem=14,1)||(animelem=15,1)||(animelem=16,1)
trigger5 =(animelem=17,1)||(animelem=18,1)||(animelem=19,1)||(animelem=20,1)
trigger6 =(animelem=21,1)||(animelem=22,1)||(animelem=23,1)||(animelem=24,1)
attr = S, SP
animtype  = Hard
damage    = 1,1;5,2
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy=0,0
hitsound   =-1;s4000,1
guardsound =-1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 1105]
type = destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;SelfDestructSF
[Statedef 15016]
type    = A
movetype= I
physics = N
ctrl = 0
sprpriority = 5
velset=0,3


[State 0, Explod];OUT
type = Explod
trigger1 = time=0&&numexplod(545454)=0&&root,stateno!=14999
anim = 20101
ID = 545455
pos = 20,-60
postype = p1  ;p2,front,back,left,right
facing = ifelse(facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 0, VelSet]
type = VelSet
trigger1 = pos y>0
x = 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time=0&&anim!=16103
value = 16103

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=1
value = 4000,22
volumescale = 256
channel = 44

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, PalFXWiz]
type = PalFX
trigger1 = anim=16103&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarSet]
type = VarSet
trigger1 = command="y"
trigger2 = anim=16103&&time>210
v = 10
value = root,var(25)

[State 0, PalFXWiz]
type = PalFX
trigger1 = command="y"
trigger2=time>210
time = 1

[State 0, Helper]
type = Helper
trigger1 = command="y"
helpertype = normal ;player
name = "BIGEXPLOSION"
ID = 15005
stateno = 15006
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = command="y"&&time>210
channel = 44
;ignorehitpause = 
;persistent = 


[State 0, ChangeState]
type = ChangeState
trigger1 = command="y"
value =105
ctrl = 1



[State 0, Helper]
type = Helper
trigger1 = anim=16103&&time>210
helpertype = normal ;player
name = "BIGEXPLOSIONF"
ID = 15005
stateno = 15005
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = anim=16103&&time>=209
trigger2 = command="y"
id = 545455


[State 0, ChangeState]
type = ChangeState
trigger1 = anim=16103&&time>210
value =0
ctrl = 1
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;SUICIDEFSLUG
[Statedef 15017]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 16105
sprpriority = 5
velset = 10+const(velocity.walk.fwd.x),0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 21    ;fv = 10
value = root,var(21)


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 24    ;fv = 10
value = root,var(24)



[State 0, VarAdd];remove fuel
type = parentvarset
trigger1 = time>1
v =21
value = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0;anim=16003&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 0, VarSet]
type = VarSet
triggerall=root,palno=5&&root,var(10)=0
trigger1 = time=0
v = 3    ;fv = 10
value = ifelse(parent,anim=11200,3,ifelse(parent,anim=600,2,1))
ignorehitpause = 
persistent = 

[State 0, VarSet]
type = VarSet
triggerall=root,var(10)=5
trigger1 = time=0
v = 3    ;fv = 10
value = ifelse(parent,anim=11201,3,ifelse(parent,anim=8600,2,1))
ignorehitpause = 
persistent = 

[State 0, VarSet]
type = VarSet
triggerall=root,var(10)=5&&root,palno=5
trigger1 = pos y<root,pos y - 300
v = 3    ;fv = 10
value = 2
ignorehitpause = 
persistent = 

[State 0, PosSet]
type = PosSet
triggerall=root,var(10)=5&&root,palno=5
trigger1 = pos y<root,pos y - 300
x = enemy,pos x
y = pos y
;ignorehitpause = 
;persistent = 

[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=2
trigger1 = 1
Value = 270 ;Angle must be given on degrees.
 
[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=3
trigger1 = 1
Value = 90

[State 9000, AngleDraw]
type = AngleDraw
trigger1 = 1
;FVar(0)*2pi ;Angle must be given on degrees.

;[State 0, VarSet]
;type = VarSet
;trigger1 = time=0
;fv = 3    ;fv = 10
;value = root,vel x

;[State 0, VarSet]
;type = VarSet
;trigger1 = time=0
;fv = 4    ;fv = 10
;value = root,vel y





[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)<2;cuantas veces sera golpeado hasta explotar
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 260
attr = SCA, NP, SP, HP
ignorehitpause = 1


[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)=2
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 253
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 10*var(21)+5*var(24)+(root,palno=4)*20,10*var(21)+3*var(24)+(root,palno=4)*20
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0



;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = movehit=1
;value = s4000,1
;volume = 255
;channel = 5

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = pos y>0&&var(3)=2
;value = s4000,2
;volume = 255
;channel = 5


[State 2400, 2];Avanza
type = Velset
triggerall=var(3)=1
trigger1 =1;animelem=1;animtime<
x = 6
y =0

[State 2400, 2];Baja
type = Velset
triggerall=var(3)=2
trigger1 =1;animelem=1;animtime<
x = 0
y =6

[State 2400, 2];Sube
type = Velset
triggerall=var(3)=3
trigger1 =1;animelem=1;animtime<
x = 0
y =-6


[State 0, PalFXWiz]
type = PalFX
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)

[State 0, VarSet]
type = parentVarSet
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
v = 21   ;fv = 10
value = 0


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
value = 15006

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;CAMELFALLING
[Statedef 15018]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 16200
sprpriority = 0
velset = 0,5
poweradd=ifelse((root,var(59)=1),-2000,-floor(root,fvar(18)))


[State 0, RemapPal]
type = RemapPal
trigger1 = 1
source = 0,27
dest = 0,27

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, Explod]
type = Explod
trigger1 = numexplod(545454)=0&&root,stateno!=11;&&root,stateno!=14998
anim = 20100
ID = 545454
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, VelSet]
type = VelSet
trigger1 = POS Y>=0
x = 0
y = 0

[State 0, VelSet]
type = posset
trigger1 = POS Y>=0
y = 0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,stateno=15019
trigger2 =root,var(10)=102&&root,stateno!=11
id = 545454

[State 0, ChangeState]
type = destroyself
trigger1 =root,stateno=15019;pos y>0;animtime=0
trigger2 =root,var(10)=102&&root,stateno!=11
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MARCOOENTERCAMEL
[Statedef 15019]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 16202
sprpriority = 0
VELSET=0,0


[State -3, SV001GETUP]
type = PlaySnd
trigger1 = time=0
value = 4000, 31

[State 0, PosAdd]
type = PosAdd
trigger1 = TIME=0
y = 10
;ignorehitpause = 
;persistent = 

[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=1
id = 545454


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 25    ;fv = 10
value = var(10)

[State 0, VarSet]
type = VarSet
trigger1 =time=1
v = 10    ;fv = 10
value = 102

[State 0, VarSet]
type = VarSet
trigger1 = time=2
v = 21    ;fv = 10
value = 0

[State 0, VelSet]
type = VelSet
trigger1 = POS Y =0
x = 0
y = 0


[State 0, VelSet]
type = posset
trigger1 = 1
y = 0


[State 0, ChangeState]
type = changestate
trigger1 = animtime=0;pos y>0;animtime=0
value=0
ctrl=1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;FakemarcoCamel
[Statedef 15020]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 16205
sprpriority = 6
velset = 0,0;-.1jkjkl

[State 0, BindToRoot]
type = BindToRoot
trigger1 =(anim=16205)&&animelem=1,1 
trigger2=(anim=16210)&&animelem=3,1 
time = -1
facing = 1
pos = -7,-16;21

[State 0, BindToRoot]
type = BindToRoot
trigger1 =(anim=16205)&&animelem=2,1 ;(root,anim=16202)&&(anim=16205)&&(root,animelem=1,1)
trigger2=(anim=16210)&&animelem=2,1 
time = -1
facing = 1
pos = -7,-26

[State 0, BindToRoot]
type = BindToRoot
trigger1 =(anim=16205)&&animelem=3,1
trigger2=(anim=16210)&&animelem=1,1 
trigger3=(root,anim=16206)
trigger4=(root,anim=16207)
time = -1
facing = 1
pos = -7,-31

[State 0, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, ChangeAnim];STANDTOCROUCH
type = ChangeAnim
trigger1 = (root,anim=16202)&&anim!=16205
value = 16205
 

[State 0, ChangeAnim];CROUCHTOSTAND
type = ChangeAnim
trigger1 = (root,anim=16203)&&anim!=16210
value = 16210


[State 0, ChangeAnim];WALKFWD
type = ChangeAnim
trigger1 = (root,anim=16206)&&anim!=16212
value = 16212

[State 0, ChangeAnim];WALKBACK
type = ChangeAnim
trigger1 = (root,anim=16207)&&anim!=16211
value = 16211

[State 0, ChangeAnim];CROUCHING
type = ChangeAnim
trigger1 = (root,anim=16208)&&anim!=16213
value = 16213

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=16205&&animtime=0
trigger2 = anim=16210&&animtime=0
trigger3 = anim=16211&&(root,anim!=16207)
trigger4 = anim=16212&&(root,anim!=16206)
trigger5 = anim=16213&&(root,anim!=16208)
value = 16201

[State 0, ChangeState]
type = destroyself
trigger1 =ROOT,MOVETYPE=H;pos y>0;animtime=0
trigger2=root,stateno=105
trigger3=root,var(10)!=102
;---------------------------------------------------------------------------
;FAKEARM
[Statedef 15021]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 16214
sprpriority = 2

[State 0, BindToRoot]
type = BindToRoot
trigger1 =((root,statetype=s)||(root,statetype=a))&&(root,stateno!=12)
time = -1
facing = 1
pos = 0,-50


[State 0, BindToRoot]
type = BindToRoot
trigger1 =(root,anim=16205)&&animelem=3,1
trigger2=(root,anim=16210)&&animelem=1,1 
trigger3=(root,anim=16206)
trigger4=(root,anim=16207)
time = -1
facing = 1
pos = 0,-50

[State 0, BindToRoot]
type = BindToRoot
trigger1 =(root,anim=16202)&&animelem=1,1 
trigger2=(root,anim=16203)&&animelem=3,1 
trigger3=(root,anim=16208)
time = -1
facing = 1
pos = 0,-35

[State 0, BindToRoot]
type = BindToRoot
trigger1 =(root,anim=16202)&&animelem=2,1
trigger2=(root,anim=16203)&&animelem=2,1 
time = -1
facing = 1
pos = 0,-45



[State 0, ChangeState]
type = Changeanim
trigger1 = anim=16214&&(root,command="z")
value =16214


[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing


[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0
trigger2=root,stateno=105

;---------------------------------------------------------------------------
;CAMELCROUCHING
[Statedef 15022]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 16203
sprpriority = 0
velset = 0,5;-.1jkjkl
;poweradd=-2000


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=16203&&animtime=0
value = 16200
;elem = 1
;ignorehitpause = 
;persistent = 

[State 0, RemapPal]
type = RemapPal
trigger1 = 1
source = 0,27
dest = 0,27

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, Explod]
type = Explod
trigger1 = anim=16200&&numexplod(545454)=0;&&root,stateno!=14998
anim = 20100
ID = 545454
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, VelSet]
type = VelSet
trigger1 = POS Y>=0
x = 0
y = 0

[State 0, VelSet]
type = posset
trigger1 = POS Y>=0
y = 0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,stateno=15019
id = 545454

[State 0, ChangeState]
type = destroyself
trigger1 =root,stateno=15019;pos y>0;animtime=0
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;SUICIDECAMEL
[Statedef 15023]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 16206
sprpriority = 5
velset = 10+const(velocity.walk.fwd.x),0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 21    ;fv = 10
value = root,var(21)


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 24    ;fv = 10
value = root,var(24)



[State 0, VarAdd];remove fuel
type = parentvarset
trigger1 = time>1
v =21
value = 0



[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 251, HitDef]
type = HitDef
trigger1 =1;!movecontact
attr = S, SA
animtype  = Hard
damage    = 80,40
hitflag = MA
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s0,2
guardsound = s0,2;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0
FALL=1

[State 2400, 2];Avanza
type = Velset
trigger1 =1
x = 6
y =0

[State 0, Turn]
type = Turn
trigger1 = !movecontact&&frontedgedist<=0

[State 0, VarSet]
type = parentVarSet
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
v = 21   ;fv = 10
value = 0


[State 0, DestroySelf]
type = DESTROYSELF
trigger1 = frontedgedist <=-50

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;FAKE MARCO
[Statedef 16665]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 0;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1
pos = 13,-3

[State 0, Turn]
type = Turn
trigger1=root,facing=-1&&facing=1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,command="z"&&root,stateno=11
trigger2=(root,var(59))&&root,stateno=11&&(anim!=250||(anim=250&&((animelem!=1)||(animelem!=2))))
value = 250


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime=0&&anim=250
value = 0



[State 0, DestroySelf]
type = DestroySelf
trigger1 = ROOT,VAR(10)!=101


;---------------------------------------------------------------------------
[Statedef 16666,FAKE GETHIT SLUGFLYER];FAKE GETHIT
type    = U
movetype= I
physics = N
juggle  = 0
anim = anim;+random%11
sprpriority = 5

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 18   ;fv = 10
value = 1

[State -3, SLUGGETHIT];SLUGGETHIT
type = PlaySnd
trigger1 = time=0
value = 4000,23
volumescale = 256
channel = -1
freqmul = 1.0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
 
[State 0, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = TIME=0
v = 21    ;fv = 10
value = VAR(21)-1


[State 0, ChangeState]
type = ChangeState
TRIGGERALL=STATETYPE=A&&var(21)>=1
trigger1 = time=0
value =15012;ifelse(anim=16102||anim=16104||anim=16100,15012,0)
ctrl=1

[State 0, ChangeState]
type = ChangeState
TRIGGERALL=STATETYPE=S&&var(21)>=1
trigger1 = time=0
value =0;ifelse(anim=16102||anim=16104||anim=16100,15012,0)
ctrl=1

[State 0, ChangeState]
type = ChangeState
trigger1 = time=0&&var(21)<=0
value =15016;ifelse(anim=16102||anim=16104||anim=16100,15012,0)
ctrl=0


;---------------------------------------------------------------------------
;ALICE
[Statedef 16667]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 16025;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1
pos = 0,-70



[State 0, Turn]
type = Turn
trigger1=(root,facing)!=facing

[State 0, ChangeAnim];WIN
type = ChangeAnim
triggerall=root,var(27)=0
triggerall=win
trigger1 =anim!=16026
trigger2=anim=16026&&ANIMTIME=0
value = 16026

[State 0, ChangeAnim];WIN H
type = ChangeAnim
triggerall=root,var(27)=1
triggerall=win
trigger1 =anim!=16041
value = 16041


[State 0, ChangeAnim];JUMPSTART
type = ChangeAnim
triggerall=root,var(27)=0
triggerall=ROOT,STATENO!=15004&&root,vel y<0&&anim!=16027&&root,movetype!=h
trigger1 = root,command!="z"&&anim!=16036
trigger2=(anim=16036)&&animtime=0
value = 16027

[State 0, ChangeAnim];JUMPSTART-H
type = ChangeAnim
triggerall=root,var(27)=1
triggerall=ROOT,STATENO!=15004&&root,vel y<0&&anim!=16042&&root,movetype!=h
trigger1 = root,command!="z"&&anim!=16049
trigger2=(anim=16049)&&animtime=0
value = 16042

[State 0, ChangeAnim];JUMPFALL
type = ChangeAnim
triggerall=root,var(27)=0
triggerall=ROOT,STATENO!=15004&&root,vel y>0&&anim!=16028&&root,movetype!=h
trigger1 = root,command!="z"&&anim!=16036
trigger2=(anim=16036)&&animtime=0
value = 16028

[State 0, ChangeAnim];JUMPFALL H
type = ChangeAnim
triggerall=root,var(27)=1
triggerall=ROOT,STATENO!=15004&&root,vel y>0&&anim!=16043&&root,movetype!=h
trigger1 = root,command!="z"&&anim!=16049
trigger2=(anim=16049)&&animtime=0
value = 16043

[State 0, CROUCH];CROUCH
type = ChangeAnim
triggerall=root,var(27)=0
triggerall=ROOT,STATENO!=15004&&(root,vel y=0)&&(root,vel x=0)&&anim!=16029&&root,statetype=C&&root,movetype!=h
trigger1 = root,command!="z"&&anim!=16036
trigger2=(anim=16036)&&animtime=0
value = 16029

[State 0, CROUCH];CROUCH-H
type = ChangeAnim
triggerall=root,var(27)=1
triggerall=ROOT,STATENO!=15004&&(root,vel y=0)&&(root,vel x=0)&&anim!=16044&&root,statetype=C&&root,movetype!=h
trigger1 = root,command!="z"&&anim!=16049
trigger2=(anim=16049)&&animtime=0
value = 16044

[State 0, STAND];STAND
type = ChangeAnim
triggerall=root,var(27)=0
triggerall=ROOT,STATENO!=15004&&(root,vel y=0)&&(root,vel x=0)&&anim!=16037&&anim!=16025&&root,statetype=S&&!win&&root,movetype!=h
trigger1 = root,command!="z"&&anim!=16036
trigger2=(anim=16036)&&animtime=0
value = 16025

[State 0, STAND];STAND-H
type = ChangeAnim
triggerall=root,var(27)=1
triggerall=ROOT,STATENO!=15004&&(root,vel y=0)&&(root,vel x=0)&&anim!=16050&&anim!=16040&&root,statetype=S&&!win&&root,movetype!=h
trigger1 = root,command!="z"&&anim!=16049
trigger2=(anim=16049)&&animtime=0
value = 16040

[State 0, STAND];STAND BORED
type = ChangeAnim
triggerall=root,var(27)=0
triggerall=ROOT,STATENO!=15004&&(root,vel y=0)&&(root,vel x=0)&&anim!=16037&&root,statetype=S&&!win&&root,movetype!=h
trigger1 = anim=16025&&VAR(13)>=3
value = 16037

[State 0, STAND];STAND BORED-H
type = ChangeAnim
triggerall=root,var(27)=1
triggerall=ROOT,STATENO!=15004&&(root,vel y=0)&&(root,vel x=0)&&anim!=16050&&root,statetype=S&&!win&&root,movetype!=h
trigger1 = anim=16040&&VAR(13)>=3
value = 16050

[State 0, WALK BACK];WALK BACK
type = ChangeAnim
triggerall=root,var(27)=0
triggerall=ROOT,STATENO!=15004&&(root,vel x<0)&&anim!=16030&&root,statetype=S&&root,movetype!=h
trigger1 = root,command!="z"&&anim!=16036
trigger2=(anim=16036)&&animtime=0
value = 16030

[State 0, WALK BACK];WALK BACK-H
type = ChangeAnim
triggerall=root,var(27)=1
triggerall=ROOT,STATENO!=15004&&(root,vel x<0)&&anim!=16045&&root,statetype=S&&root,movetype!=h
trigger1 = root,command!="z"&&anim!=16049
trigger2=(anim=16049)&&animtime=0
value = 16045

[State 0, WALK BACK];WALK FWD
type = ChangeAnim
triggerall=root,var(27)=0
triggerall=ROOT,STATENO!=15004&&(root,vel x>0)&&anim!=16032&&root,statetype=S&&root,movetype!=h
trigger1 =(root,command!="z")&&anim!=16036
trigger2=(anim=16036)&&animtime=0
value = 16032


[State 0, WALK BACK];WALK FWD-H
type = ChangeAnim
triggerall=root,var(27)=1
triggerall=ROOT,STATENO!=15004&&(root,vel x>0)&&anim!=16047&&root,statetype=S&&root,movetype!=h
trigger1 =(root,command!="z")&&anim!=16049
trigger2=(anim=16049)&&animtime=0
value = 16047

[State 0, WALK BACK];WHISTLE
type = ChangeAnim
triggerall=root,var(27)=0
triggerall=ROOT,STATENO!=15004&&root,statetype=S&&root,movetype!=h&&root,var(24)>0
trigger1 = (root,command="z")
value = 16036

[State 0, WALK BACK];WHISTLE-H
type = ChangeAnim
triggerall=root,var(27)=1
triggerall=ROOT,STATENO!=15004&&root,statetype=S&&root,movetype!=h&&root,var(24)>0
trigger1 = (root,command="z")
value = 16049

[State 0, WHISTLE]
type = PlaySnd
trigger1 = anim=16036&&animelem=7,1
trigger2 = anim=16049&&animelem=7,1
value = 5000,28
volumescale = 256
channel = -1


[State 0, SALUTES]
type = PlaySnd
trigger1 = anim=16031&&animelem=5,1
trigger2 = anim=16046&&animelem=5,1
value = 5000,30
volumescale = 256
channel = -1

[State 0, STAND];GETHIT
type = ChangeAnim
triggerall=root,var(27)=0
triggerall=ROOT,STATENO!=15004
trigger1 = root,movetype=h&&ANIM!=16031&&ANIM!=16033&&ANIM!=16034&&ANIM!=16035&&!win
value = 16033+var(14)

[State 0, STAND];GETHIT-H
type = ChangeAnim
triggerall=root,var(27)=1
triggerall=ROOT,STATENO!=15004
trigger1 = root,movetype=h&&ANIM!=16048&&!win
value = 16048


[State 0, GOODBYE];GOODBYE
type = ChangeAnim
triggerall=root,var(27)=0
trigger1 = ROOT,STATENO=15004&&anim!=16031
value = 16031

[State 0, GOODBYE];GOODBYE-H
type = ChangeAnim
triggerall=root,var(27)=1
trigger1 = ROOT,STATENO=15004&&anim!=16046
value = 16046

[State 0, VarSet];GETHIT RANDOMIZERS
type = VarSet
trigger1 = root,movetype=h
trigger2 = anim=[16033,16035]
v = 14    ;fv = 10
value = random%3

[State 0, VarSet];BOREDNESS LEVEL
type = VarADD
trigger1 = anim=16025&&animtime=0
trigger2 = anim=16040&&animtime=0
v = 13    ;fv = 10
value = 1

[State 0, VarSet];BOREDNESS LEVEL
type = VarSET
trigger1 = anim!=16025
trigger2 = anim!=16040
v = 13    ;fv = 10
value = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1=root,var(10)!=100&&!win


;---------------------------------------------------------------------------
;ALICE-AI
[Statedef 16668]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 16025
sprpriority = 0


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, BindToPARENT]
type = BindToPARENT
trigger1 = 1
time = -1
pos = 0,-70

[State 0, Turn]
type = Turn
trigger1=(parent,facing)!=facing

[State 0, ChangeAnim];JUMPFALL
type = ChangeAnim
triggerall=root,var(27)=0
trigger1=parent,vel y>0&&anim!=16028
value = 16028

[State 0, ChangeAnim];JUMPFALL-H
type = ChangeAnim
triggerall=root,var(27)=1
trigger1=parent,vel y>0&&anim!=16043
value = 16043

[State 0, ChangeAnim];WIN
type = ChangeAnim
triggerall=root,var(27)=0
triggerall=win
trigger1 =anim!=16026
trigger2=anim=16026&&ANIMTIME=0
value = 16026


[State 0, ChangeAnim];WIN-H
type = ChangeAnim
triggerall=root,var(27)=1
triggerall=win
trigger1 =anim!=16041
value = 16041

[State 0, STAND];STAND
type = ChangeAnim
triggerall=root,var(27)=0
triggerall=!win
trigger1=(parent,vel y=0)&&(parent,vel x=0)&&anim!=16037&&anim!=16025&&!win&&anim!=16031&&anim!=16036
trigger2=anim=16036&&animtime=0
value = 16025

[State 0, STAND];STAND-H
type = ChangeAnim
triggerall=root,var(27)=1
triggerall=!win
trigger1=(parent,vel y=0)&&(parent,vel x=0)&&anim!=16050&&anim!=16040&&!win&&anim!=16046&&anim!=16049
trigger2=anim=16049&&animtime=0
value = 16040

[State 0, STAND];STAND BORED
type = ChangeAnim
triggerall=root,var(27)=0
triggerall=!win
triggerall=(parent,vel y=0)&&(parent,vel x=0)&&anim!=16037&&!win&&anim!=16031
trigger1 = anim=16025&&VAR(13)>=3
value = 16037


[State 0, STAND];STAND BORED-H
type = ChangeAnim
triggerall=root,var(27)=1
triggerall=!win
triggerall=(parent,vel y=0)&&(parent,vel x=0)&&anim!=16050&&!win&&anim!=16046
trigger1 = anim=16040&&VAR(13)>=3
value = 16050


[State 0, WALK BACK];WALK BACK
type = ChangeAnim
triggerall=root,var(27)=0
triggerall=!win
trigger1 = parent,vel x<0&&anim!=16030&&anim!=16036
value = 16030

[State 0, WALK BACK];WALK BACK-H
type = ChangeAnim
triggerall=root,var(27)=1
triggerall=!win
trigger1 = parent,vel x<0&&anim!=16045&&anim!=16049
value = 16045

[State 0, WALK BACK];WALK FWD
type = ChangeAnim
triggerall=root,var(27)=0
triggerall=!win
trigger1 = parent,vel x>0&&anim!=16032&&anim!=16036
value = 16032

[State 0, WALK BACK];WALK FWD-H
type = ChangeAnim
triggerall=root,var(27)=1
triggerall=!win
trigger1 = parent,vel x>0&&anim!=16047&&anim!=16049
value = 16047

[State 0, VarSet];BOREDNESS LEVEL
type = VarADD
triggerall=!win
trigger1 = anim=16025&&animtime=0
trigger2 = anim=16040&&animtime=0
v = 13    ;fv = 10
value = 1

[State 0, VarSet];BOREDNESS LEVEL
type = VarSET
triggerall=root,var(27)=0
trigger1 = anim!=16025
v = 13
value = 0

[State 0, VarSet];BOREDNESS LEVEL
type = VarSET
triggerall=root,var(27)=1
trigger1 = anim!=16040
v = 13
value = 0

[State 0, WALK BACK];WHISTLE
type = ChangeAnim
triggerall=root,var(27)=0
triggerall=!win
triggerall=parent,stateno=16670&&anim!=16036
trigger1 = random%3=2
value = 16036

[State 0, WALK BACK];WHISTLE-H
type = ChangeAnim
triggerall=root,var(27)=1
triggerall=!win
triggerall=parent,stateno=16670&&anim!=16049
trigger1 = random%3=2
value = 16049

[State 0, WHISTLE]
type = PlaySnd
trigger1 = anim=16036&&animelem=7,1
trigger2 = anim=16049&&animelem=7,1
value = 5000,28
volumescale = 256
channel = -1

[State 0, SALUTES]
type = PlaySnd
trigger1 = anim=16031&&animelem=5,1
trigger2 = anim=16046&&animelem=5,1
value = 5000,30
volumescale = 256
channel = -1

[State 0, GOODBYE];GOODBYE
type = ChangeAnim
triggerall=root,var(27)=0
trigger1 = (parent,STATENO=17000)&&anim!=16031
value = 16031

[State 0, GOODBYE];GOODBYE-H
type = ChangeAnim
triggerall=root,var(27)=1
trigger1 = (parent,STATENO=17000)&&anim!=16046
value = 16046

[State 0, DestroySelf]
type = DestroySelf
trigger1 =root,numhelper(15000)=0&&parent,stateno!=17000
trigger2=parent,stateno=16669


;---------------------------------------------------------------------------
;SUICIDE MSALICE
[Statedef 16669]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 16003
sprpriority = 5
velset = ifelse(((enemynear,pos x-pos x)<0)&&facing=1,-10,ifelse(((enemynear,pos x-pos x)>0)&&facing=-1,-10,10)),0


[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = time=0
v =  26
value = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 24    ;fv = 10
value = root,var(24)


[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0;anim=16003&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)<2;cuantas veces sera golpeado hasta explotar
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 16668
attr = SCA, NP, SP, HP
ignorehitpause = 1


[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)=2
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 15006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = (10*var(21)+5*var(24)+(root,palno=4)*20)+abs(vel x)*time,abs(vel x)*time+10*var(21)+3*var(24)+(root,palno=4)*20
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 2400, 2];Avanza
type = Velset
triggerall=var(3)=1
trigger1 =1;animelem=1;animtime<
x = 6
y =0

[State 0, PalFXWiz]
type = PalFX
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)

[State 0, VarSet]
type = parentVarSet
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
v = 21   ;fv = 10
value = 0


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = frontedgedist <=-50
value = 15006
;---------------------------------------------------------------------------
;================================================================================
;MSALICE-AION
[Statedef 16670]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(anim=16015||anim=16014,16002,16006)
sprpriority = 0
velset = 0,0

[State 0, VarSet]
type = parentVarSet
trigger1 = anim=16006&&animelem=1,1&&(root,var(21)=0)
v = 21
value = 3

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP
time = -1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP
slot = 0
stateno =16671+random%2
time = -1
forceair = 0

[State 0, RemoveExplod];cartelito in
type = RemoveExplod
trigger1=1
id = 545454

[State 0, ChangeAnim];get up
type = ChangeAnim
trigger1 = ANIM=16006&&animtime=0
value = 16009



[State 0, ChangeAnim];walk fwd
type = ChangeAnim
trigger1 = vel x>0&&anim!=16003&&anim!=16038
value = 16003

[State 0, ChangeAnim];walk back
type = ChangeAnim
trigger1 = vel x<0&&anim!=16004&&anim!=16038
value = 16004


[State 0, ChangeAnim];stand
type = ChangeAnim
trigger1 = vel x=0&&anim!=16002&&anim!=16006&&anim!=16009&&anim!=16038&&anim!=16021
trigger2=anim=16009&&animtime=0
trigger3=anim=16021&&animtime=0
value = 16002


[State 0, ChangeAnim];SHOOT CANNON
type = ChangeAnim
triggerall=anim!=16009&&anim!=16006&&anim!=16038&&root,var(24)>0&&(root,numhelper(13250))<(ifelse(root,palno=4,3,1))&&(enemynear,pos x<100)&&(enemynear,pos x>0)
trigger1 =(helper(323232),anim=16036)&&anim!=16021
trigger2=anim=16021&&animelem=3,1
trigger3 =(helper(323232),anim=16049)&&anim!=16021
value = 16021


[State 0, ParentVarSet];Le resta a la variable canion
type = ParentVarSet
trigger1=anim=16021&&animelem=1,1
v =  24   ;fv = 
value = root,var(24)-1

[State 0, AIALICECANNON]
type = Helper
triggerall=root,var(27)=0
trigger1=anim=16021&&animelem=1,1
helpertype = normal ;player
name = "CANNON"
ID = 13250
stateno = 15007
pos = 25,-40
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 0, AIALICECANNON]
type = Helper
triggerall=root,var(27)=1
trigger1=anim=16021&&animelem=1,1
helpertype = normal ;player
name = "CANNON"
ID = 13250
stateno = 15057
pos = 25,-40
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0




[State 0, VarSet];velocidad de alice
type = VarSet
trigger1 = anim=21001&&animtime=0
v = 11    
value = 2

[State 0, VarSet];posicion de root
type = VarSet
trigger1 = time
fv = 10    ;fv = 10
value = root,pos x




[State 0, VarSet]
type = VarSet
triggerall = var(15);((fvar(10))=(pos x));&&(((fvar(10))+(pos x))>-3)
trigger1=time
v = 11    
value = 0

[State 0, VarSet]
type = VarSet
triggerall = !var(15);((fvar(10))!=(pos x));&&(((fvar(10))+(pos x))>-3)
trigger1=time
v = 11    
value = 2


[State 0, VarSet]
type = VarSet
triggerall=ABS(floor(fvar(10)-(pos x)))<20
trigger1=time
v = 15    
value = 1

[State 0, VarSet]
type = VarSet
triggerall=ABS(floor(fvar(10)-(pos x)))>20
trigger1=time
v = 15    
value = 0


[State 0, VelSet];facing =1
type = VelSet
triggerall=anim!=16006&&anim!=16009&&anim!=16038
triggerall = pos x>fvar(10)
triggerall=((fvar(10))!=(pos x))
triggerall=facing=1
trigger1=time
x = -var(11)
y = 0

[State 0, VelSet]
type = VelSet
triggerall=anim!=16006&&anim!=16009&&anim!=16038
triggerall = pos x<fvar(10)
triggerall=((fvar(10))!=(pos x))
triggerall=facing =1
trigger1=time
x = var(11)
y = 0

[State 0, VelSet];facing =-1
type = VelSet
triggerall=anim!=16006&&anim!=16009&&anim!=16038
triggerall = pos x>fvar(10)
triggerall=((fvar(10))!=(pos x))
triggerall=facing=-1
trigger1=time
x = var(11)
y = 0

[State 0, VelSet]
type = VelSet
triggerall=anim!=16006&&anim!=16009&&anim!=16038
triggerall = pos x<fvar(10)
triggerall=((fvar(10))!=(pos x))
triggerall=facing =-1
trigger1=time
x = -var(11)
y = 0



[State 0, VelSet]
type = VelSet
trigger1 = var(11)=0
trigger2=(floor((fvar(10)))=floor((pos x)))
trigger3=(ceil((fvar(10)))=ceil((pos x)))
trigger4=anim=16006||anim=16038||anim=16009||anim=16021
x = 0
y = 0

[State 0, Disparar]
type = Changeanim
triggerall=((anim=21002)||(anim=21006)||(((anim=21007)||(anim=21010))&&animtime=0))
trigger1=abs(enemy,pos x)>20&&root,movetype=A
value = 21007

[State 0, ChangeAnim];AI OFF1
type = ChangeAnim
trigger1 = root,command="b"&&anim!=16038&&anim!=16006&&anim!=16009
value = 16038

[State 0, VULCAN];ALICE VULCAN
type = Helper
trigger1 =numhelper(15100)=0
helpertype = normal ;player
name = "MSAVULCAN"
ID = 15100
stateno = 15100
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause=1

[State -3, SV001ENTERING];SOUND ENTERING
type = PlaySnd
triggerall =  anim=16006
trigger1 = animelem=5,1
value = 4000, 24

[State -3, SV001LEAVING];SOUND LEAVING
type = PlaySnd
triggerall =  anim=16038
trigger1 = animelem=5,1
value = 4000, 27

[State 0, ChangeState];SUICIDE ATTACK
type = ChangeState
trigger1=root,movetype=h
value = 17000
ctrl = 0

[State 0, ChangeState];AI OFF2
type = ChangeState
trigger1= anim=16038&&animtime=0
value = 15001
ctrl = 0

;================================================================================
;MSAGetHit1
[Statedef 16671]
type    = S
movetype= H
physics = N
ctrl = 0
sprpriority = 0

[State -3, SLUGGETHIT];SLUGGETHIT
type = PlaySnd
trigger1 = ishelper&&(anim=16012||anim=16013)&&animelem=1,1;Jump land
value = 4000,23
volumescale = 256
channel = -1
freqmul = 1.0


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 0, ParentVarSet]
type = ParentVarset
trigger1 =time=0 
v =  21
value = root,var(21)-1



[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time=0
value = 16012

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=16012&&animtime=0
value = 16015

[State 0, ChangeState]
type = ChangeState
triggerall=(root,var(21))<=0
trigger1 = 1
value =17000
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall=(root,var(21))!=0
trigger1 = anim=16015&&animtime=0
value =16670
ctrl = 0

;---------------------------------------------------------------------------

;================================================================================
;MSAGetHit2
[Statedef 16672]
type    = S
movetype= H
physics = N
ctrl = 0
sprpriority = 0

[State -3, SLUGGETHIT];SLUGGETHIT
type = PlaySnd
trigger1 = ishelper&&(anim=16012||anim=16013)&&animelem=1,1;Jump land
value = 4000,23
volumescale = 256
channel = -1
freqmul = 1.0


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 0, ParentVarSet]
type = ParentVarset
trigger1 =time=0 
v =  21
value = root,var(21)-1



[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time=0
value = 16013

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=16013&&animtime=0
value = 16014

[State 0, ChangeState]
type = ChangeState
triggerall=(root,var(21))<=0
trigger1 = 1
value =17000
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall=(root,var(21))!=0
trigger1 = anim=16014&&animtime=0
value =16670
ctrl = 0

;---------------------------------------------------------------------------
;SelfDestructMSALICE
[Statedef 17000]
type    = S
movetype= H
physics = N
ctrl = 0
sprpriority = 0
velset=0,0

[State 0, ParentVarSet]
type = ParentVarset
trigger1 =time=0 
v =  21
value = 0

[State -3, SLUGGETHIT];SLUGGETHIT
type = PlaySnd
trigger1 = ishelper&&(anim=16012||anim=16013)&&animelem=1,1;Jump land
value = 4000,23
volumescale = 256
channel = -1
freqmul = 1.0

[State 0, Helper]
type = Helper
trigger1=numhelper(323232)=0&&root,palno=4
helpertype = normal ;player
name = "ALICE"
ID = 323232
stateno = 16668
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=time=0;&&numhelper(545454)>0
id = 545454


[State 0, VelSet]
type = VelSet
trigger1 = pos y<0
x = 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time=0
value = 16013
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =anim=16013&&animtime=0
value = 16014

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=16014&&animtime=0
value = 4000,22
volumescale = 256
channel = 44

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=16014&&animtime=0
value = 16002

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, PalFXWiz]
type = PalFX
trigger1 = anim=16002&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, ChangeState]
type = ChangeState
trigger1 = anim=16002&&time>160
value =16669
ctrl = 0
;---------------------------------------------------------------------------
;ALICEVulcan
[Statedef 15100]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 16000;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 1

[State 0, VarSet];cantidad de disparos
type = VarSet
trigger1 = (helper(323232),anim=16036)&&(helper(323232),animelem=1,1)
v = 21    ;fv = 10
value = 1+random%3

[State 0, VarSet];cantidad de disparos
type = VarSet
trigger1 = (helper(323232),anim=16049)&&(helper(323232),animelem=1,1)
v = 21    ;fv = 10
value = 1+random%3

[State 0, Turn]
type = Turn
trigger1 = facing=-1




[State 0, VarSet];AIENEMYANGLEFINDOUTFACING 1 360° AI
type = VarSet;triggerall=parent,facing=1
trigger1 = ((root,var(10))!=101)
v = 44
value = ifelse(abs((enemy,pos x)-pos x)>(enemy,const(size.ground.front)),(atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi+360*((atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=-1)*((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))>pos y)+180*((atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))<(pos y))+180*((atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi)>0)*(enemy,facing=1)*((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))>pos y)),ifelse((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))<pos y,90,270))

;[State 0, VarSet];AIENEMYANGLEFINDOUTFACING 1 360° AI
;type = VarSet
;triggerall=parent,facing=-1
;trigger1 = ((root,var(10))!=101)
;v = 44
;value = -ifelse(abs((enemy,pos x)-pos x)>(enemy,const(size.ground.front)),(atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi+360*((atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=-1)*((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))>pos y)+180*((atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))<(pos y))+180*((atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi)>0)*(enemy,facing=1)*((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))>pos y)),ifelse((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))<pos y,90,270))



;[State 0, VarSet];AIENEMYANGLEFINDOUTFACING 1 360° AI ODL
;type = VarSet
;triggerall=parent,facing=1
;trigger1 = ((root,var(10))!=101)
;v = 44
;value = ifelse(abs((enemy,pos x)-pos x)>(enemy,const(size.ground.front)),(atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=-1)*((enemy,pos y)>pos y)+180*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)<(pos y))+180*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)>0)*(enemy,facing=1)*((enemy,pos y)>pos y)),ifelse((enemy,pos y)<pos y,90,270))

;[State 0, VarSet];AIENEMYANGLEFINDOUTFACING -1 360° AI (REPARAR)
;type = VarSet
;triggerall=facing=-1
;trigger1 = ((root,var(10))!=101)
;v = 44
;value = ifelse(abs((enemy,pos x)-pos x)>(enemy,const(size.ground.front)),(atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)>pos y)+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)<(pos y))+180*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)>0)*(enemy,facing=-1)*((enemy,pos y)>pos y)),ifelse((enemy,pos y)<pos y,90,270))

;[State 0, VarSet];AIENEMYANGLEFINDOUTFACING -1 360° AI (REPARAR) OLD
;type = VarSet
;triggerall=parent,facing=-1
;trigger1 = ((root,var(10))!=101)
;v = 44
;value = ifelse(abs((enemy,pos x)-pos x)>(enemy,const(size.ground.front)),(atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)>pos y)+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)<(pos y))+180*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*(enemy,facing=-1)*((enemy,pos y)>pos y)),ifelse((enemy,pos y)<pos y,90,270))

;[State 0, VarSet];AIENEMYANGLEFINDOUTFACING -1 360° AI (REPARAR)
;type = VarSet
;triggerall=parent,facing=-1
;trigger1 = ((root,var(10))!=101)
;v = 44
;value = ifelse(abs((enemy,pos x)-pos x)>(enemy,const(size.ground.front)),(atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi+360*((atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))>pos y)+360*((atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))<(pos y))+180*((atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*(enemy,facing=-1)*((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))>pos y)),ifelse((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))<pos y,90,270))
;


[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 43
value = (enemy,pos y)

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = time
text = "var(44) = %d var(45) = %d var(43) = %d"
params = var(44),var(45),var(43)


[State 0, VarSet]
type = VarSet
trigger1=anim=16001&&animelem=1,1
trigger2=anim=16000
trigger3=anim=16106&&animelem=1,1
v = 51    ;fv = 10
value = 0


[State 0, VarAdd]
type = parentvarset
trigger1 = 1
v =51
value = var(51)

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, RemapPal]
type = RemapPal
trigger1 =1
source = 0,17
dest = 17,0



[State 0, BindToparent]
type = BindToparent
trigger1 = 1
time = 1
facing = 1
pos = -21,-20

[State 0, VarSet]
type = VarSet
trigger1=var(44)>=360
v = 44    ;fv = 10
value = 0

[State 0, VarSet]
type = VarSet
trigger1=var(44)<0
v = 44    ;fv = 10
value = 360


[State 0, VarSet]
type = VarSet
trigger1=var(44)>45&&var(44)<180&&(root,var(10)=101)
v = 44    ;fv = 10
value = 45

[State 0, VarSet]
type = VarSet
trigger1=(var(44)<315)&&(var(44)>180)&&(root,var(10)=101)
v = 44    ;fv = 10
value = 315

[State 0, AngleDraw]
type = AngleDraw
triggerall=root,var(10)!=101
triggerall=parent,facing=1
trigger1 = 1
value=var(44)

[State 0, AngleDraw]
type = AngleDraw
triggerall=root,var(10)!=101
triggerall=parent,facing=-1
trigger1 = 1
value=-var(44)+180


[State 0, SHOOTBLUE]
type = ChangeAnim
trigger1 = (helper(323232),anim=16036)&&(helper(323232),animelem=7,1)&&anim!=16106&&var(21)=1
trigger2 = (helper(323232),anim=16036)&&((helper(323232),animelem=7,1)||(helper(323232),animelem=11,1))&&anim!=16106&&var(21)=2
trigger3 = (helper(323232),anim=16036)&&((helper(323232),animelem=7,1)||(helper(323232),animelem=11,1)||(helper(323232),animelem=13,1))&&anim!=16106&&var(21)=3
value = 16106


[State 0, SHOOTRED]
type = ChangeAnim
trigger1 = (helper(323232),anim=16049)&&(helper(323232),animelem=7,1)&&anim!=16001&&var(21)=1
trigger2 = (helper(323232),anim=16049)&&((helper(323232),animelem=7,1)||(helper(323232),animelem=11,1))&&anim!=16001&&var(21)=2
trigger3 = (helper(323232),anim=16049)&&((helper(323232),animelem=7,1)||(helper(323232),animelem=11,1)||(helper(323232),animelem=13,1))&&anim!=16001&&var(21)=3
value = 16001

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=16001&&animtime=0
trigger2 = anim=16006&&animtime=0
value = 16000

[State 0, VarSet]
type = Varadd
trigger1 = AnimElem = 1,1||animelem=5,1||animelem=9,1
v = 53   ;fv = 10
value = -1


[State 0, VarSet]
type = Varset
trigger1 = var(53)<=0
v = 53   ;fv = 10
value = 4

[State 0, Helper]
type = Helper
triggerall=anim=16001
trigger1 = (AnimElem = 1,1)||(animelem=5,1)||(animelem=9,1)
trigger2=(root,var(59))&&((AnimElem = 1,1)||(animelem=5,1)||(animelem=9,1))&&root,var(10)=100
helpertype = normal ;player
name = "vulcanbullet"
ID = 15001
stateno = 15102
pos = (cos((var(44)*pi)/180)*26),-(sin((var(44)*pi)/180)*26)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
triggerall=anim=16106
trigger1 = ((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))&&(root,var(59)=0)
trigger2=(root,var(59))&&((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))
helpertype = normal ;player
name = "vulcanbullet"
ID = 15001
stateno = 15102
pos = floor(cos((var(44)*pi)/180)*26),-floor(sin((var(44)*pi)/180)*26)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1=anim=16001
trigger1 = AnimElem = 1,1||animelem=5,1||animelem=9,1
value = 4000,19
volumescale = 256
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 =root,movetype=h
trigger2=root,numhelper(15101)>1&&time
trigger3=win
trigger4=parent,stateno=15001
trigger5=parent,stateno=17000


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Vulcan
[Statedef 15101]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 16000;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 7




;[State 0, DisplayToClipboard]
;type = DisplayToClipboard
;trigger1 = time
;text = "var(44) = %d var(45) = %d var(43) = %d"
;params = var(44),var(45),var(43)

;
;[State 0, VarSet];AIENEMYANGLEFINDOUTFACING 1 360° AI OLD
;type = VarSet
;triggerall=root,facing=1&&(root,var(59))
;trigger1 = ((root,var(10))!=101)
;v = 44
;value = ifelse(abs((enemy,pos x)-pos x)>(enemy,const(size.ground.front)),(atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=-1)*((enemy,pos y)>pos y)+180*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)<(pos y))+180*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)>0)*(enemy,facing=1)*((enemy,pos y)>pos y)),ifelse((enemy,pos y)<pos y,90,270))
;
;[State 0, VarSet];AIENEMYANGLEFINDOUTFACING -1 360° AI (REPARAR) OLD
;type = VarSet
;triggerall=root,facing=-1&&(root,var(59))
;trigger1 = ((root,var(10))!=101)
;v = 44
;value = ifelse(abs((enemy,pos x)-pos x)>(enemy,const(size.ground.front)),(atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)>pos y)+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)<(pos y))+180*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*(enemy,facing=-1)*((enemy,pos y)>pos y)),ifelse((enemy,pos y)<pos y,90,270))


[State 0, Turn]
type = Turn
triggerall=root,var(10)!=101&&root,var(59)
trigger1 = facing=-1

[State 0, VarSet];AIENEMYANGLEFINDOUTFACING 1 360° AI
type = VarSet;triggerall=parent,facing=1
triggerall=root,var(59)
trigger1 = ((root,var(10))!=101)
v = 44
value = ifelse(abs((enemy,pos x)-pos x)>(enemy,const(size.ground.front)),(atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi+360*((atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=-1)*((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))>pos y)+180*((atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))<(pos y))+180*((atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi)>0)*(enemy,facing=1)*((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))>pos y)),ifelse((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))<pos y,90,270))


[State 0, VarSet];AIENEMYANGLEFINDOUTFACING 1 45°< Y >315°
type = VarSet
triggerall=root,var(59)&&(facing=1)&&(enemy,facing=-1)&&(root,var(59))
trigger1 = (root,var(10)=101)&&((var(44)<=45)||((var(44)>=315)&&(var(44)<360)))
v = 44;5
value = atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi+360*(enemy,pos y>pos y)


[State 0, VarSet];AIENEMYANGLEFINDOUTFACING -1 45°< Y >315°
type = VarSet
triggerall=(facing=-1)&&(enemy,facing=1)&&(var(44)<360)&&(root,var(59))
trigger1 = (root,var(10)=101)&&((var(44)<=45)||((var(44)>=315)))
v = 44
value =ifelse((enemy,pos y)>pos y,-atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi+360,-atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)
;


[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 43
value = floor(enemy,pos y)


[State 0, VarSet]
type = VarSet
trigger1=anim=16001&&animelem=1,1
trigger2=anim=16000
v = 51    ;fv = 10
value = 0


[State 0, VarAdd]
type = parentvarset
trigger1 = 1
v =51
value = var(51)

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, RemapPal]
type = RemapPal
triggerall=(root,var(10)!=106)&&(root,var(10)!=107)
trigger1 =1
source = 0,17
dest = 17,0


[State 0, RemapPal]
type = RemapPal
triggerall=(root,var(10)!=106)&&(root,var(10)!=107)&&(root,var(10)!=100)
trigger1 =1
source = 0,27
dest =0,27


[State 0, RemapPal]
type = RemapPal
triggerall=root,var(10)=106
trigger1 =1
source = 0,17
dest = 0,17

[State 0, RemapPal]
type = RemapPal
triggerall=root,var(10)=106
trigger1 =1
source = 0,27
dest = 27,0

[State 0, RemapPal]
type = RemapPal
triggerall=root,var(10)=107&&root,var(27)=1
trigger1 =1
source = 0,17
dest = 0,17

[State 0, RemapPal]
type = RemapPal
triggerall=root,var(10)=107&&root,var(27)=1
trigger1 =1
source = 0,27
dest = 27,1

[State 0, RemapPal]
type = RemapPal
triggerall=root,var(10)=107&&root,var(27)=0
trigger1 =1
source = 0,17
dest = 17,0

[State 0, RemapPal]
type = RemapPal
triggerall=root,var(10)=107&&root,var(27)=0
trigger1 =1
source = 0,27
dest = 0,27

[State 0, RDIKOKKAIDLE]
type = BindToRoot
triggerall=(root,var(10)=114)
trigger1 = root,anim=18952;&&(root,animelem=1,1)
trigger2 = root,anim=18951
trigger3 = root,anim=18954&&((root,animelem=1,1)||(root,animelem=3,1)||(root,animelem=5,1))
trigger4 = root,anim=18956&&((root,animelem=6,1)||(root,animelem=4,1)||(root,animelem=2,1))
trigger5 = root,anim=18958&&((root,animelem=1,1)||(root,animelem=11,1)||(root,animelem=15,1))
trigger6 = root,anim=18959&&((root,animelem=1,1))
trigger7 = root,anim=18960&&((root,animelem=5,1))
time = -1
facing = 1
pos = -21, -27

[State 0, RDIKOKKA+1y]
type = BindToRoot
triggerall=(root,var(10)=114)
trigger1 = root,anim=18953&&((root,animelem=1,1)||(root,animelem=5,1))
trigger2 = root,anim=18954&&((root,animelem=4,1)||(root,animelem=6,1))
trigger3 = root,anim=18956&&((root,animelem=3,1)||(root,animelem=1,1))
trigger4 = root,anim=18959&&((root,animelem=8,1))
trigger5 = root,anim=18960&&((root,animelem=4,1))
time = -1
facing = 1
pos = -21, -26

[State 0, RDIKOKKA+2y]
type = BindToRoot
triggerall=(root,var(10)=114)
trigger1 = root,anim=18953&&((root,animelem=2,1)||(root,animelem=4,1))
trigger2 = root,anim=18954&&(root,animelem=2,1)
trigger3 = root,anim=18956&&(root,animelem=5,1)
trigger4 = root,anim=18955&&((root,animelem=1,1)||(root,animelem=4,1)||(root,animelem=5,1))
trigger5 = root,anim=18959&&((root,animelem=9,1))
trigger6 = root,anim=18960&&((root,animelem=3,1))
time = -1
facing = 1
pos = -21, -25

[State 0, RDIKOKKA+3y]
type = BindToRoot
triggerall=(root,var(10)=114)
trigger1 = root,anim=18959&&((root,animelem=10,1))
trigger2 = root,anim=18960&&((root,animelem=1,1))
time = -1
facing = 1
pos = -21, -24

[State 0, RDIKOKKA-1x+3y]
type = BindToRoot
triggerall=(root,var(10)=114)
trigger1 = root,anim=18953&&(root,animelem=3,1)
trigger2 = root,anim=18955&&(root,animelem=3,1)
time = -1
facing = 1
pos = -22, -24

[State 0, RDIKOKKA-1x+3y]
type = BindToRoot
triggerall=(root,var(10)=114)
trigger1 = root,anim=18958&&((root,animelem=10,1)||(root,animelem=14,1))
time = -1
facing = 1
pos = -22, -27

[State 0, DIKOKKA-1x]
type = BindToRoot
triggerall=(root,var(10)=130)
trigger1 = root,anim=18937&&((root,animelem=11,1)||(root,animelem=16,1))
trigger2 = root,anim=18945&&((root,animelem=11,1))
trigger3 = root,anim=18942&&((root,animelem=11,1)||(root,animelem=16,1)||(root,animelem=22,1))
time = -1
facing = 1
pos = -22, -27

[State 0, DIKOKKA-1x+2y]
type = BindToRoot
triggerall=(root,var(10)=130)
trigger1 = root,anim=18936&&((root,animelem=1,1)||(root,animelem=8,1))
time = -1
facing = 1
pos = -22, -25

[State 0, DIKOKKA-1x+3y]
type = BindToRoot
triggerall=(root,var(10)=130)
trigger1 = root,anim=18936&&((root,animelem=5,1))
time = -1
facing = 1
pos = -22, -24

[State 0, DIKOKKAIDLE]
type = BindToRoot
triggerall=(root,var(10)=130)
trigger1 = root,anim=18932;&&(root,animelem=1,1)
trigger2 = root,anim=18937&&((root,animelem=1,1)||(root,animelem=6,1)||(root,animelem=9,1)||(root,animelem=12,1)||(root,animelem=14,1)||(root,animelem=17,1))
trigger3 = root,anim=18931
trigger4 = root,anim=18934&&((root,animelem=1,1)||(root,animelem=3,1)||(root,animelem=5,1))
trigger5 = root,anim=18935&&((root,animelem=2,1)||(root,animelem=4,1)||(root,animelem=6,1))
trigger6 = root,anim=18945&&((root,animelem=1,1)||(root,animelem=6,1)||(root,animelem=9,1)||(root,animelem=12,1))
trigger7 = root,anim=18942&&((root,animelem=1,1)||(root,animelem=6,1)||(root,animelem=9,1)||(root,animelem=12,1)||(root,animelem=14,1)||(root,animelem=17,1)||(root,animelem=20,1)||(root,animelem=23,1))
time = -1
facing = 1
pos = -21, -27

[State 0, DIKOKKA+1y]
type = BindToRoot
triggerall=(root,var(10)=130)
trigger1 = root,anim=18937&&((root,animelem=5,1)||(root,animelem=8,1)||(root,animelem=13,1))
trigger2 = root,anim=18933&&((root,animelem=1,1)||(root,animelem=10,1))
trigger3 = root,anim=18934&&((root,animelem=2,1)||(root,animelem=4,1)||(root,animelem=6,1))
trigger4 = root,anim=18935&&((root,animelem=1,1)||(root,animelem=3,1)||(root,animelem=5,1))
trigger5 = root,anim=18945&&((root,animelem=5,1)||(root,animelem=8,1))
trigger6 = root,anim=18937&&((root,animelem=5,1)||(root,animelem=8,1)||(root,animelem=13,1)||(root,animelem=19,1))
time = -1
facing = 1
pos = -21, -26

[State 0, DIKOKKA+2y]
type = BindToRoot
triggerall=(root,var(10)=130)
trigger1 = root,anim=18933&&((root,animelem=3,1)||(root,animelem=8,1))
time = -1
facing = 1
pos = -21, -25

[State 0, DIKOKKA+3y]
type = BindToRoot
triggerall=(root,var(10)=130)
trigger1 = root,anim=18933&&((root,animelem=5,1))
time = -1
facing = 1
pos = -21, -24

[State 0,topolinobindj]
type = BindToRoot
trigger1 =(root,anim=(18810))&&((root,animelem=5,1))
time = -1
facing = 1
pos = -11, -28

[State 0,topolinobindj]
type = BindToRoot
trigger1 =(root,anim=(18810))&&((root,animelem=4,1)||(root,animelem=6,1))
time = -1
facing = 1
pos = -11, -27

[State 0,topolinobindj]
type = BindToRoot
trigger1 =(root,anim=(18810))&&((root,animelem=3,1)||(root,animelem=7,1))
time = -1
facing = 1
pos = -11, -26

[State 0,topolinobindj]
type = BindToRoot
trigger1 =(root,anim=(18810))&&((root,animelem=2,1)||(root,animelem=8,1))
time = -1
facing = 1
pos = -10, -26

[State 0,topolinobindj]
type = BindToRoot
trigger1 =(root,anim=(18810))&&((root,animelem=1,1)||(root,animelem=9,1))
time = -1
facing = 1
pos = -11, -25

[State 0,topolinobindland]
type = BindToRoot
trigger1 =(root,anim=(18811))&&(root,animelem=1,1)
time = -1
facing = 1
pos = -11, -24


[State 0,topolinobind1]
type = BindToRoot
trigger1 =(root,anim=(18802))||(root,anim=(18803))||(root,anim=(18801))
time = -1
facing = 1
pos = -13, -24


[State 0,topolinobind2]
type = BindToRoot
trigger1 =(root,anim=(18808))&&root,animelem=1,1
trigger2 =(root,anim=(18809))&&root,animelem=2,1
trigger3 =(root,anim=(18811))&&(root,animelem=3,1)
time = -1
facing = 1
pos = -13, -23

[State 0,topolinobind3]
type = BindToRoot
trigger1 =(root,anim=(18808))&&root,animelem=2,1
trigger2 =(root,anim=(18809))&&root,animelem=1,1
trigger3 =(root,anim=(18807))||(root,anim=(18806))||(root,anim=(18805))
trigger4 =(root,anim=(18811))&&(root,animelem=2,1)
time = -1
facing = 1
pos = -13, -22

[State 0, BindToRoot]
type = BindToRoot
triggerall=(root,var(10)=106)
trigger1 = 1
time = 1
facing = 1
pos = -21, -20


[State 0, BindToRoot];SV001ROOTS
type = BindToRoot
trigger1 = ((root,anim=16017))&&root,animelem=6,1
time = -1
facing = 1
pos = -20, -33

[State 0, BindToRoot];SV001ROOTS
type = BindToRoot
trigger1 = ((root,anim=16017))&&root,animelem=4,1
trigger2 = ((root,anim=16017))&&root,animelem=13,1
time = -1
facing = 1
pos = -21, -29

[State 0, BindToRoot];SV001ROOTS
type = BindToRoot
trigger1 = ((root,anim=16017))&&root,animelem=2,1
trigger2 = ((root,anim=16017))&&root,animelem=16,1
trigger3 = ((root,anim=16018))
time = -1
facing = 1
pos = -21, -28

[State 0, BindToRoot];SV001ROOTS
type = BindToRoot
trigger1 = ((root,anim=16003)||(root,anim=16010))&&root,animelem=8,1
trigger2 = ((root,anim=16003)||(root,anim=16010))&&root,animelem=18,1
trigger3 = ((root,anim=16004)||(root,anim=16011))&&root,animelem=1,1
trigger4 = ((root,anim=16004)||(root,anim=16011))&&root,animelem=10,1
time = -1
facing = 1
pos = -21, -20

[State 0, BindToRoot];SV001ROOTS
type = BindToRoot
trigger1 = ((root,anim=16003)||(root,anim=16010)||(root,anim=16021))&&root,animelem=4,1
trigger2 = ((root,anim=16003)||(root,anim=16010))&&root,animelem=14,1
trigger3 = ((root,anim=16004)||(root,anim=16011))&&root,animelem=3,1
trigger4 = ((root,anim=16004)||(root,anim=16011))&&root,animelem=13,1
time = -1
facing = 1
pos = -21, -21

[State 0, BindToRoot];SV001ROOTS
type = BindToRoot
trigger1 = ((root,anim=16007))&&root,animelem=1,1
trigger2 = ((root,anim=16009)||(root,anim=16019))&&root,animelem=2,1
trigger3 = ((root,anim=16019))&&root,animelem=8,1
trigger4 = ((root,anim=16019))&&root,animelem=16,1
time = -1
facing = 1
pos = -22, -21

[State 0, BindToRoot];SV001ROOTS
type = BindToRoot
trigger1 = ((root,anim=16007))&&root,animelem=5,1
trigger2 = ((root,anim=16009))&&root,animelem=1,1
time = -1
facing = 1
pos = -23, -21

[State 0, BindToRoot];SV001ROOTS
type = BindToRoot
trigger1 = ((root,anim=16002)||(root,anim=16008)||(root,anim=16006))
trigger2 = ((root,anim=16002)||(root,anim=16003)||(root,anim=16010)||(root,anim=16017)||(root,anim=16019)||(root,anim=16021))&&root,animelem=1,1
trigger3 = (root,anim=16002)&&root,animelem=4,1
trigger4 = ((root,anim=16003)||(root,anim=16010))&&root,animelem=11,1
trigger5 = ((root,anim=16004)||(root,anim=16011)||(root,anim=16019))&&root,animelem=7,1
trigger6 = ((root,anim=16004)||(root,anim=16011))&&root,animelem=17,1
trigger7 = (root,anim=16021)&&root,animelem=6,1
trigger8 = ((root,anim=16019))&&root,animelem=15,1
time = -1
facing = 1
pos = -21, -22


[State 0, BindToRoot]
type = BindToRoot
triggerall=root,var(10)=101
trigger1 = 1
time = 1
facing = 1
pos = 16, -16

[State 0, BindToRoot];BRADLEYROOTS01
type = BindToRoot
trigger1 = (root,anim=18614)&&(root,animelem=3,1)
trigger2 = (root,anim=18627)&&(root,animelem=1,1)
trigger3 = (root,anim=18627)&&(root,animelem=2,1)
trigger4 = (root,anim=18627)&&(root,animelem=3,1)
trigger5 = (root,anim=18627)&&(root,animelem=4,1)
trigger6 = (root,anim=18627)&&(root,animelem=7,1)
time = -1
facing = 1
pos = -16, -26

[State 0, BindToRoot];BRADLEYROOTS01
type = BindToRoot
trigger1 = (root,anim=18614)&&(root,animelem=2,1)
trigger2 = (root,anim=18614)&&(root,animelem=4,1)
trigger3 = (root,anim=18627)&&(root,animelem=5,1)
trigger4 = (root,anim=18627)&&(root,animelem=6,1)
time = -1
facing = 1
pos = -16, -25

[State 0, BindToRoot];BRADLEYROOTS01
type = BindToRoot
trigger1 = (root,anim=18612)&&(root,animelem=2,1)
trigger2 = (root,anim=18613)&&(root,animelem=5,1)
trigger3 = (root,anim=18614)&&(root,animelem=1,1)
trigger4 = (root,anim=18614)&&(root,animelem=5,1)
trigger5 = (root,anim=18615)&&(root,animelem=1,1)
time = -1
facing = 1
pos = -16, -22

[State 0, BindToRoot];BRADLEYROOTS01
type = BindToRoot
trigger1 = (root,anim=18609)&&(root,animelem=2,1)
trigger2 = (root,anim=18608)&&(root,animelem=5,1)
trigger3 = (root,anim=18612)&&(root,animelem=1,1)
trigger4 = (root,anim=18612)&&(root,animelem=3,1)
trigger5 = (root,anim=18613)&&(root,animelem=4,1)
trigger6 = (root,anim=18613)&&(root,animelem=6,1)
time = -1
facing = 1
pos = -16, -21

[State 0, BindToRoot];BRADLEYROOTS01
type = BindToRoot
trigger1 = (root,anim=18609)&&(root,animelem=1,1)
trigger2 = (root,anim=18609)&&(root,animelem=3,1)
trigger3 = (root,anim=18608)&&(root,animelem=6,1)
trigger4 = (root,anim=18608)&&(root,animelem=4,1)
time = -1
facing = 1
pos = -16, -20

[State 0, BindToRoot];BRADLEYROOTS01
type = BindToRoot
trigger1 = (root,anim=[18601,18605])
trigger2 = (root,anim=18605)&&(root,animelem=1,1)
trigger3 = (root,anim=18624)&&(root,animelem=7,1)
trigger4 = (root,anim=18619)&&(root,animelem=7,1)
trigger5 = (root,anim=18606)&&(root,animelem=1,1)
trigger6 = (root,anim=18606)&&(root,animelem=5,1)
trigger7 = (root,anim=18607)&&(root,animelem=8,1)
trigger8 = (root,anim=18607)&&(root,animelem=4,1)
trigger9 = (root,anim=18609)&&(root,animelem=4,1)
trigger10 = (root,anim=18609)&&(root,animelem=6,1)
trigger11 = (root,anim=18608)&&(root,animelem=3,1)
trigger12 = (root,anim=18608)&&(root,animelem=1,1)
trigger13 = (root,anim=18610)&&(root,animelem=1,1)
trigger14 = (root,anim=18610)&&(root,animelem=5,1)
trigger15 = (root,anim=18611)&&(root,animelem=8,1)
trigger16 = (root,anim=18611)&&(root,animelem=4,1)
trigger17 = (root,anim=18612)&&(root,animelem=6,1)
trigger18 = (root,anim=18612)&&(root,animelem=4,1)
trigger19 = (root,anim=18613)&&(root,animelem=1,1)
trigger20 = (root,anim=18613)&&(root,animelem=3,1)
time = -1
facing = 1
pos = -16, -19

[State 0, BindToRoot];BRADLEYROOTS02
type = BindToRoot
trigger1 = (root,anim=18624)&&(root,animelem=4,1)
trigger2 = (root,anim=18624)&&(root,animelem=5,1)
trigger3 = (root,anim=18624)&&(root,animelem=6,1)
trigger4 = (root,anim=18619)&&(root,animelem=4,1)
trigger5 = (root,anim=18619)&&(root,animelem=5,1)
trigger6 = (root,anim=18619)&&(root,animelem=6,1)
trigger7 = (root,anim=18606)&&(root,animelem=2,1)
trigger8 = (root,anim=18606)&&(root,animelem=4,1)
trigger9 = (root,anim=18606)&&(root,animelem=6,1)
trigger10 = (root,anim=18606)&&(root,animelem=8,1)
trigger11 = (root,anim=18607)&&(root,animelem=7,1)
trigger12 = (root,anim=18607)&&(root,animelem=5,1)
trigger13 = (root,anim=18607)&&(root,animelem=3,1)
trigger14 = (root,anim=18607)&&(root,animelem=1,1)
trigger15 = (root,anim=18609)&&(root,animelem=5,1)
trigger16 = (root,anim=18608)&&(root,animelem=2,1)
trigger17 = (root,anim=18610)&&(root,animelem=2,1)
trigger18 = (root,anim=18610)&&(root,animelem=4,1)
trigger19 = (root,anim=18610)&&(root,animelem=6,1)
trigger20 = (root,anim=18610)&&(root,animelem=8,1)
trigger21 = (root,anim=18611)&&(root,animelem=7,1)
trigger22 = (root,anim=18611)&&(root,animelem=5,1)
trigger23 = (root,anim=18611)&&(root,animelem=3,1)
trigger24 = (root,anim=18611)&&(root,animelem=1,1)
trigger25 = (root,anim=18612)&&(root,animelem=5,1)
trigger26 = (root,anim=18613)&&(root,animelem=2,1)
trigger27 = (root,anim=18615)&&(root,animelem=2,1)
trigger28 = (root,anim=18615)&&(root,animelem=4,1)
time = -1
facing = 1
pos = -16, -18

[State 0, BindToRoot];BRADLEYROOTS01
type = BindToRoot
trigger1 = (root,anim=18606)&&(root,animelem=3,1)
trigger2 = (root,anim=18606)&&(root,animelem=7,1)
trigger3 = (root,anim=18607)&&(root,animelem=6,1)
trigger4 = (root,anim=18607)&&(root,animelem=2,1)
trigger5 = (root,anim=18610)&&(root,animelem=3,1)
trigger6 = (root,anim=18610)&&(root,animelem=7,1)
trigger7 = (root,anim=18611)&&(root,animelem=6,1)
trigger8 = (root,anim=18611)&&(root,animelem=2,1)
trigger9 = (root,anim=18615)&&(root,animelem=3,1)
time = -1
facing = 1
pos = -16, -17

[State 0, BindToRoot]
type = BindToRoot
triggerall=(root,var(10)=102)
trigger1 =(root,anim=16202)&&(root,animelem=3,1) 
trigger2=(root,anim=16203)&&(root,animelem=1,1)
trigger3=(root,STATETYPE=S)
time =-1
facing = 1
pos = -12,-29

[State 0, BindToRoot]
type = BindToRoot
triggerall=(root,var(10)=102)
trigger1 =(root,anim=16202)&&(root,animelem=2,1)
trigger2=(root,anim=16203)&&(root,animelem=2,1)
time =-1
facing = 1
pos = -12,-22

[State 0, BindToRoot]
type = BindToRoot
triggerall=(root,var(10)=102)
trigger1 =(root,anim=16202)&&(root,animelem=1,1)
trigger2=(root,anim=16203)&&(root,animelem=3,1)
time = -1
facing = 1
pos = -12,-16


[State 0, DRILLSLUGBIND]
type = BindToRoot
triggerall=(root,anim!=17040)&&(root,anim!=17042)&&(root,anim!=17054)&&root,var(10)=103
trigger1 = 1
time = -1
facing=1
pos = -18, -23-64*(root,var(27))*(root,stateno!=15032)

[State 0, BindToRoot]
type = BindToRoot
triggerall=root,var(10)=103
trigger1=(root,anim=17040)&&(root,animelem=1,1);,1)
trigger2=root,anim=17042&&(root,animelem=5,1);,1)
trigger3=(root,anim=17054)&&(root,animelem=5);,1)
time =-1
pos = -18,-23-10

[State 0, BindToRoot]
type = BindToRoot
triggerall=root,var(10)=103
trigger1=root,anim=17040&&(root,animelem=2);,1)
trigger2=root,anim=17042&&(root,animelem=4);,1)
trigger3=(root,anim=17054)&&(root,animelem=4);,1)
time =-1
pos = -18,-23-26

[State 0, BindToRoot]
type = BindToRoot
triggerall=root,var(10)=103
trigger1=root,anim=17040&&(root,animelem=3);,1)
trigger2=root,anim=17042&&(root,animelem=3);,1)
trigger3=(root,anim=17054)&&(root,animelem=3);,1)
time =-1
pos = -18,-23-43

[State 0, BindToRoot]
type = BindToRoot
triggerall=root,var(10)=103
trigger1=root,anim=17040&&(root,animelem=4);,1)
trigger2=root,anim=17042&&(root,animelem=2);,1)
trigger3=(root,anim=17054)&&(root,animelem=2);,1)
time =-1
pos = -18,-23-58

[State 0, BindToRoot]
type = BindToRoot
triggerall=root,var(10)=103
trigger1=root,anim=17040&&(root,animelem=5);,1)
trigger2=root,anim=17042&&(root,animelem=1);,1)
trigger3=(root,anim=17054)&&(root,animelem=1,1);,1)
time =-1
pos = -18,-23-64

[State 0, DONKEYWALK2]
type = BindToRoot
triggerall=root,var(10)=111
trigger1=(root,anim=18835)&&((root,animelem=3,1)||(root,animelem=4,1)||(root,animelem=5,1)||(root,animelem=9,1)||(root,animelem=10,1)||(root,animelem=11,1))
trigger2=(root,anim=18836)&&((root,animelem=2,1)||(root,animelem=3,1)||(root,animelem=4,1)||(root,animelem=8,1)||(root,animelem=9,1)||(root,animelem=10,1))
trigger3=(root,anim=18844)&&((root,animelem=3,1)||(root,animelem=4,1)||(root,animelem=5,1)||(root,animelem=9,1)||(root,animelem=10,1)||(root,animelem=11,1))
time =-1
pos = -10,-22

[State 0, DONKEYWALK1]
type = BindToRoot
triggerall=root,var(10)=111
trigger1=(root,anim=18835)&&((root,animelem=2,1)||(root,animelem=6,1)||(root,animelem=8,1)||(root,animelem=12,1))
trigger2=(root,anim=18836)&&((root,animelem=1,1)||(root,animelem=5,1)||(root,animelem=7,1)||(root,animelem=11,1))
trigger3=(root,anim=18844)&&((root,animelem=2,1)||(root,animelem=6,1)||(root,animelem=8,1)||(root,animelem=12,1))
time =-1
pos = -11,-23


[State 0, DONKEYSTAND]
type = BindToRoot
triggerall=root,var(10)=111
trigger1=root,anim=18834
trigger2=(root,anim=18835)&&((root,animelem=1,1)||(root,animelem=7,1))
trigger3=(root,anim=18836)&&((root,animelem=6,1)||(root,animelem=12,1))
trigger4=(root,anim=18844)&&((root,animelem=1,1)||(root,animelem=7,1))
time =-1
pos = -12,-24

[State 0, DONKEYSTANDINGCROUCHING1]
type = BindToRoot
triggerall=root,var(10)=111
trigger1=(root,anim=18832)&&(root,animelem=4,1)
trigger2=(root,anim=18833)&&(root,animelem=3,1)
time =-1
pos = -13,-11

[State 0, DONKEYSTANDINGCROUCHING2]
type = BindToRoot
triggerall=root,var(10)=111
trigger1=(root,anim=18832)&&(root,animelem=5,1)
trigger2=(root,anim=18833)&&(root,animelem=2,1)
time =-1
pos = -13,-15

[State 0, DONKEYSTANDINGCROUCHING2]
type = BindToRoot
triggerall=root,var(10)=111
trigger1=(root,anim=18832)&&(root,animelem=6,1)
trigger2=(root,anim=18833)&&(root,animelem=1,1)
time =-1
pos = -12,-19

[State 0, DONKEYCROUCH]
type = BindToRoot
triggerall=root,var(10)=111
trigger1=(root,anim=18830)||(root,anim=18831)
trigger2=(root,anim=18832)&&((root,animelem=1,1)||(root,animelem=2,1)||(root,animelem=3,1))
trigger3=(root,anim=18833)&&((root,animelem=4,1)||(root,animelem=5,1)||(root,animelem=6,1))
time =-1
pos = -14,-10

[State 0, ELEPHANTWALK]
type = BindToRoot
triggerall=root,var(10)=113
trigger1=(root,anim=18904)&&((root,animelem=7,1)||(root,animelem=19,1))
trigger2=(root,anim=18906)&&((root,animelem=4,1)||(root,animelem=16,1))
time =-1
pos = -21,-29

[State 0, ELEPHANTWALK]
type = BindToRoot
triggerall=root,var(10)=113
trigger1=(root,anim=18904)&&((root,animelem=4,1)||(root,animelem=10,1)||(root,animelem=16,1)||(root,animelem=22,1))
trigger2=(root,anim=18906)&&((root,animelem=1,1)||(root,animelem=7,1)||(root,animelem=13,1)||(root,animelem=19,1))
time =-1
pos = -21,-28

[State 0, ELEPHANTSTAND]
type = BindToRoot
triggerall=root,var(10)=113
trigger1=(root,anim=18902)
trigger2=(root,anim=18904)&&((root,animelem=1,1)||(root,animelem=13,1))
trigger3=(root,anim=18906)&&((root,animelem=10,1)||(root,animelem=22,1))
time =-1
pos = -21,-27

[State 0, ELEPHANTCROUCH]
type = BindToRoot
triggerall=root,var(10)=113
trigger1=(root,anim=18911)
trigger2=(root,anim=18901)&&(root,animelem=1,1)
trigger3=(root,anim=18913)&&(root,animelem=6,1)
time =-1
pos = -20,-13

[State 0, ELEPHANTSTANDING1]
type = BindToRoot
triggerall=root,var(10)=113
trigger1=(root,anim=18901)&&(root,animelem=2,1)
trigger2=(root,anim=18913)&&(root,animelem=5,1)
time =-1
pos = -20,-15

[State 0, ELEPHANTSTANDING2]
type = BindToRoot
triggerall=root,var(10)=113
trigger1=(root,anim=18901)&&(root,animelem=3,1)
trigger2=(root,anim=18913)&&(root,animelem=4,1)
time =-1
pos = -20,-18

[State 0, ELEPHANTSTANDING3]
type = BindToRoot
triggerall=root,var(10)=113
trigger1=(root,anim=18901)&&(root,animelem=4,1)
trigger2=(root,anim=18913)&&(root,animelem=3,1)
time =-1
pos = -20,-21

[State 0, ELEPHANTSTANDING4]
type = BindToRoot
triggerall=root,var(10)=113
trigger1=(root,anim=18901)&&(root,animelem=5,1)
trigger2=(root,anim=18913)&&(root,animelem=2,1)
time =-1
pos = -20,-24

[State 0, ELEPHANTSTANDING5]
type = BindToRoot
triggerall=root,var(10)=113
trigger1=(root,anim=18901)&&(root,animelem=6,1)
trigger2=(root,anim=18913)&&(root,animelem=1,1)
time =-1
pos = -20,-26

[State 0, VarSet]
type = VarSet
trigger1=var(44)>=360
v = 44    ;fv = 10
value = 0

[State 0, VarSet]
type = VarSet
trigger1=var(44)<0
v = 44    ;fv = 10
value = 360


[State 0, VarSet]
type = VarSet
trigger1=var(44)>45&&var(44)<180&&(root,var(10)=101)
v = 44    ;fv = 10
value = 45

[State 0, VarSet]
type = VarSet
trigger1=(var(44)<315)&&(var(44)>180)&&(root,var(10)=101)
v = 44    ;fv = 10
value = 315

[State 0, Muevearriba1]
type = varadd
triggerall= root,command="holdup"&&(var(44)>90&&var(44)<270)&&(root,var(59))=0&&(root,var(10)!=101)
trigger1=time
v=44
value = -5

[State 0, Muevearriba2]
type = varadd
triggerall= root,command="holdup"&&(var(44)<90||var(44)>270)&&(root,var(59))=0&&(root,var(10)!=101)
trigger1=time
v=44
value =5


[State 0, MueveAdelante1]
type = varadd
triggerall= root,command="holdfwd"&&(var(44)>180)&&(root,var(59))=0
trigger1=time
v=44
value = 5;3;2

[State 0, MueveAdelante2]
type = varadd
triggerall= root,command="holdfwd"&&(var(44)<=180)&&(var(44)!=0)&&(root,var(59))=0
trigger1=time
v=44
value = -5;3;2

[State 0, MueveAtras1]
type = varadd
triggerall= root,command="holdback"&&(var(44)<180)&&(root,var(59))=0&&(root,var(10)!=101)
trigger1=time
v=44
value = 5;3;2

[State 0, MueveAtras2]
type = varadd
triggerall= root,command="holdback"&&(var(44)>=180)&&(root,var(59))=0&&(root,var(10)!=101)
trigger1=time
v=44
value = -5;3;2


[State 0, MueveAbajo1]
type = varadd
triggerall= root,command="holddown"&&(var(44)<=90||var(44)>=270)&&(root,var(59))=0&&(root,var(10)!=101)
trigger1=time
v=44
value = -5;3;2

[State 0, MueveAbajo2]
type = varadd
triggerall= root,command="holddown"&&(var(44)>=90&&var(44)<=270)&&(root,var(59))=0&&(root,var(10)!=101)
trigger1=time
v=44
value = 5;3;2

[State 0, Muevearriba1];slugflyerup1
type = varadd
triggerall= root,command="holdup"&&(var(44)<=45)&&(root,var(59))=0&&(root,var(10)=101)
trigger1=time
v=44
value =5

[State 0, Muevearriba2];slugflyerup2
type = varadd
triggerall= root,command="holdup"&&(var(44)>=315)&&(root,var(59))=0&&(root,var(10)=101)
trigger1=time
v=44
value =5

[State 0, MueveAbajo1];slugflyerdw
type = varadd
triggerall= root,command="holddown"&&(var(44)<=45||var(44)>315)&&(root,var(59))=0&&(root,var(10)=101)
trigger1=time
v=44
value = -5;3;2

[State 0, MueveAtras1];slugflyerback1
type = varadd
triggerall= root,command="holdback"&&(var(44)<45)&&(root,var(59))=0&&(root,var(10)=101)
trigger1=time
v=44
value = 5;3;2

[State 0, MueveAtras2];slugflyerback1
type = varadd
triggerall= root,command="holdback"&&(var(44)>=315)&&(root,var(59))=0&&(root,var(10)=101)
trigger1=time
v=44
value = -5;3;2


[State 0, AngleDraw]
type = AngleDraw
triggerall=root,var(10)!=101&&root,var(59)
triggerall=root,facing=1
trigger1 = 1
value=var(44)

[State 0, AngleDraw]
type = AngleDraw
triggerall=root,var(10)!=111&&root,var(10)!=113&&root,var(10)!=101&&root,var(59)
triggerall=root,facing=-1
trigger1 = 1
value=-var(44)+180

[State 0, AngleDraw]
type = AngleDraw
triggerall=((root,var(10)=113)||(root,var(10)=111))&&root,var(59)
triggerall=root,facing=-1
trigger1 = 1
value=var(44)


[State 0, AngleDraw]
type = AngleDraw
trigger1=root,var(10)=101
trigger2=root,var(10)!=101&&root,var(59)=0
value=var(44)


[State 0, ChangeAnim]
type = ChangeAnim
triggerall=(root,palno!=4)||((root,palno=4)&&(root,var(27)=1))
triggerall=roundstate=2
trigger1 = root,command="x"&&(root,var(10)=100)
trigger2=root,command="holdx"&&time*tickspersecond&&animtime=0&&root,palno=4
trigger3=root,var(59)&&time&&animtime=0&&(root,var(10)=100);time*tickspersecond&&animtime=0
trigger4 = root,command="x"&&root,var(10)=106&&root,command!="holdb"&&root,var(59)=0
trigger5=numhelper(15079)>0
trigger5=root,var(59)&&time&&animtime=0&&(root,var(10)=106)&&(helper(15079),animtime=0);time*tickspersecond&&animtime=0
value = 16001

[State 0, ChangeAnim]
type = ChangeAnim
triggerall=((root,palno=4)&&(root,var(27)=0))
triggerall=roundstate=2
trigger1 = root,command="x"&&(root,var(10)=100)
trigger2=root,command="holdx"&&time*tickspersecond&&animtime=0&&root,palno=4
trigger3=root,var(59)&&time&&animtime=0&&(root,var(10)=100);time*tickspersecond&&animtime=0
trigger4 = root,command="x"&&root,var(10)=106&&root,command!="holdb"&&root,var(59)=0
trigger5=numhelper(15079)>0
trigger5=root,var(59)&&time&&animtime=0&&(root,var(10)=106)&&(helper(15079),animtime=0);time*tickspersecond&&animtime=0
value = 16106

[State 0, ChangeAnim]
type = ChangeAnim
triggerall=roundstate=2
trigger1 = root,command="x"&&root,var(10)=101&&(root,var(27)=1)
trigger2=root,command="holdx"&&time*tickspersecond&&animtime=0&&root,palno=4
trigger3=root,var(59)&&anim!=16106
trigger4=root,command="x"&&root,var(10)=103
value = 16106

[State 0, ChangeAnim]
type = ChangeAnim
triggerall=roundstate=2
trigger1 = root,command="x"&&root,var(10)=130
trigger2=root,command="holdx"&&time*tickspersecond&&animtime=0&&root,palno=4
trigger3=root,var(59)&&anim!=16106
trigger4=root,command="x"&&root,var(10)=130
value = 16106


[State 0, ChangeAnim]
type = ChangeAnim
triggerall=roundstate=2
trigger1 = root,command="x"&&root,var(10)=114
trigger2=root,command="holdx"&&time*tickspersecond&&animtime=0&&root,palno=4
trigger3=root,var(59)&&anim!=16106
trigger4=root,command="x"&&root,var(10)=114
value = 16106

[State 0, ChangeAnim]
type = ChangeAnim
triggerall=roundstate=2
trigger1 = root,command="x"&&root,var(10)=101&&(root,var(27)=0)
trigger2=root,command="holdx"&&time*tickspersecond&&animtime=0&&root,palno=4
trigger3=root,var(59)&&anim!=16106
value = 16106

[State 0, ChangeAnim]
type = ChangeAnim
triggerall=roundstate=2
trigger1 = root,command="x"&&root,var(10)=107;&&(root,var(27)=0)
trigger2=root,command="holdx"&&time*tickspersecond&&animtime=0&&root,palno=4
trigger3=root,var(59)&&anim!=16106
value = 16106

[State 0, ChangeAnim]
type = ChangeAnim
triggerall=roundstate=2
trigger1 = root,command="x"&&root,var(10)=110;&&(root,var(27)=0)
trigger2=root,command="holdx"&&time*tickspersecond&&animtime=0&&root,palno=4
trigger3=root,var(59)&&anim!=16106
trigger4 = root,command="x"&&root,var(10)=113;&&(root,var(27)=0)
trigger5=root,command="holdx"&&time*tickspersecond&&animtime=0&&root,palno=4
trigger6=root,var(59)&&anim!=16106
value = 16106

[State 0, ChangeAnim]
type = ChangeAnim
triggerall=roundstate=2
trigger1 = root,command="x"&&((root,var(10)=102)||(root,var(10)=111))
trigger2=(root,var(59))&&anim!=16106&&time&&animtime=0
value=16106


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=16001&&animtime=0
trigger2 = anim=16106&&animtime=0
trigger3 = anim=16215&&animtime=0
value = 16000

[State 0, VarSet]
type = Varadd
trigger1 = AnimElem = 1,1||animelem=5,1||animelem=9,1
v = 53   ;fv = 10
value = -1


[State 0, VarSet]
type = Varset
trigger1 = var(53)<=0
v = 53   ;fv = 10
value = 4

[State 0, Helper]
type = Helper
trigger1=anim=16001&&(root,var(10)!=101)&&(root,var(10)!=102)&&(root,var(10)!=103)
trigger1 = (AnimElem = 1,1)||(animelem=5,1)||(animelem=9,1)
trigger2=(root,var(59))&&((AnimElem = 1,1)||(animelem=5,1)||(animelem=9,1))&&((root,var(10)=100)||(root,var(10)=106))
helpertype = normal ;player
name = "vulcanbullet"
ID = 15001
stateno = 15102
pos = floor(cos((var(44)*pi)/180)*26),-floor(sin((var(44)*pi)/180)*26)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
trigger1=anim=16106&&((root,var(10)=102)||(root,var(10)=111))
trigger1 =((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))&&(root,var(59)=0)
trigger2=((root,var(10)=102)||(root,var(10)=111))&&(root,var(59)=1)&&((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))
helpertype = normal ;player
name = "vulcanbulletcamel"
ID = 15001
stateno = 15104
pos = floor(cos((var(44)*pi)/180)*26),-floor(sin((var(44)*pi)/180)*26)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State 0, Helper]
type = Helper
trigger1=anim=16106&&((root,var(10)=100)&&(root,palno=4)&&(root,var(27)=0))
trigger1 =((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))&&(root,var(59)=0)
trigger2=((root,var(10)=100)&&(root,palno=4)&&(root,var(27)=0))&&(root,var(59)=1)&&((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))
helpertype = normal ;player
name = "VULCANALICE"
ID = 15001
stateno = 15102
pos = floor(cos((var(44)*pi)/180)*26),-floor(sin((var(44)*pi)/180)*26)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State 0, Helper]
type = Helper
trigger1=anim=16106&&((root,var(10)=130))
trigger1 =((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))&&(root,var(59)=0)
trigger2=(root,var(10)=130)&&(root,var(59)=1)&&((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))
helpertype = normal ;player
name = "VULCANDIKOKKA"
ID = 15001
stateno = 15102
pos = floor(cos((var(44)*pi)/180)*26),-floor(sin((var(44)*pi)/180)*26)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
trigger1=anim=16106&&((root,var(10)=114))
trigger1 =((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))&&(root,var(59)=0)
trigger2=(root,var(10)=114)&&(root,var(59)=1)&&((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))
helpertype = normal ;player
name = "VULCANRDIKOKKA"
ID = 15001
stateno = 15102
pos = floor(cos((var(44)*pi)/180)*26),-floor(sin((var(44)*pi)/180)*26)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State 0, Helper]
type = Helper
trigger1=anim=16106&&(root,var(10)=101)&&(root,var(27)=0)
trigger1 = ((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))&&(root,var(59)=0)
trigger2=(root,var(27)=0)&&(root,var(10)=101)&&(root,var(59))&&((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))
helpertype = normal ;player
name = "vulcanbullet"
ID = 15001
stateno = 15102
pos = floor(cos((var(44)*pi)/180)*26),-floor(sin((var(44)*pi)/180)*26)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
trigger1=anim=16106&&(root,var(10)=113)
trigger1 = ((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))&&(root,var(59)=0)
trigger2=(root,var(10)=113)&&(root,var(59))&&((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))
helpertype = normal ;player
name = "vulcanbullet"
ID = 15001
stateno = 15102
pos = floor(cos((var(44)*pi)/180)*26),-floor(sin((var(44)*pi)/180)*26)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State 0, Helper]
type = Helper
trigger1=anim=16106&&(root,var(10)=110)&&(root,var(27)=0)
trigger1 = ((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))&&(root,var(59)=0)
trigger2=(root,var(27)=0)&&(root,var(10)=110)&&(root,var(59))&&((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))
helpertype = normal ;player
name = "vulcanbullet"
ID = 15001
stateno = 15104
pos = floor(cos((var(44)*pi)/180)*26),-floor(sin((var(44)*pi)/180)*26)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper];VULCANSHOOTBRADLEY
type = Helper
trigger1=anim=16106&&(root,var(10)=107)
trigger1 = ((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))&&(root,var(59)=0)
trigger2=(root,var(10)=107)&&(root,var(59))&&((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))
helpertype = normal ;player
name = "vulcanbullet"
ID = 15001
stateno = 15102
pos = floor(cos((var(44)*pi)/180)*26),-floor(sin((var(44)*pi)/180)*26)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
trigger1=anim=16106&&root,var(10)=101&&(root,var(27)=1)
trigger1 = (AnimElem = 1,1||animelem=3,1||animelem=5,1||animelem=9,1)&&(root,var(59)=0)
trigger2 = (root,var(27)=1)&&(root,var(10)=101)&&(AnimElem = 1,1||animelem=3,1||animelem=5,1||animelem=9,1)&&(root,var(59))
helpertype = normal ;player
name = "vulcanbullet"
ID = 15001
stateno = 15103
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1=anim=16001
trigger1 = AnimElem = 1,1||animelem=5,1||animelem=9,1
trigger2=anim=16106
trigger2 = AnimElem = 1,1||animelem=5,1||animelem=9,1
trigger3=anim=16215
trigger3 = ((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))
value = 4000,19
volumescale = 256
channel = 0
freqmul = 1.0
loop = 0
pan = 0



[State 0, Helper]
type = Helper
trigger1 =((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))&&(root,var(59)=0)
trigger1=anim=16106&&(root,var(10)=103)
trigger2=(root,var(10)=103)&&(root,var(59)=1)&&((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))
helpertype = normal ;player
name = "vulcanbullet"
ID = 15001
stateno = 15102
pos = floor(cos((var(44)*pi)/180)*26),-floor(sin((var(44)*pi)/180)*26)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, DestroySelf]
type = DestroySelf;trigger1 =root,movetype=h
trigger1= root,var(10)<100&&(root,stateno!=105)
trigger2=root,numhelper(15101)>1&&time;trigger4=win
trigger3=root,stateno=105&&numhelper(15666)=0
trigger4=root,movetype=h&&((root,var(10)=102)||(root,var(10)=111)||(root,var(10)=113))
trigger5=root,stateno=15211
[State 0, ChangeState]
type = ChangeState
trigger1 = (root,stateno=15016)
trigger2=numhelper(15666)
trigger3=root,var(21)=0&&root,var(10)!=102&&root,var(10)!=111&&root,var(10)!=113
value = 15105
ctrl = 0


;---------------------------------------------------------------------------
;VulcanBullet
[Statedef 15102]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 1203
sprpriority = 5;velocidad anterior 15
velset = (cos((parent,var(44)*pi)/180)*10),(-sin((parent,var(44)*pi)/180)*10)

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 21    ;fv = 10
value = parent,var(44)

[State 0, RemapPal]
type = RemapPal
trigger1 =root,var(10)=108
source = 0,17
dest = 17,0

[State 0, VarAdd]
type = parentvarset
triggerall=projhit=1<2||movehit||projcontact=1<2||movecontact
trigger1 = 1
v =51
value = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value=var(21)

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 15,10
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,5
guardsound = s4000,6;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 0, ChangeAnim]
type = CHANGESTATE
trigger1 = pos y>=0
value = 296

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact;trigger2 = pos y>0
trigger2 = frontedgedist <=-50
trigger3 = (pos y<root,pos y-250)
trigger4 = backedgedist<=-50
value=297

;---------------------------------------------------------------------------
;VulcanBullet2
[Statedef 15103]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 1232
sprpriority = 5
velset = ifelse((root,palno=6)||(root,palno=7),(cos((parent,var(44)*pi)/180)*5),(cos((parent,var(44)*pi)/180)*25)),ifelse((root,palno=6)||(root,palno=7),(-sin((parent,var(44)*pi)/180)*5),(-sin((parent,var(44)*pi)/180)*25))


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 21    ;fv = 10
value = parent,var(44)

[State 0, RemapPal]
type = RemapPal
trigger1 =((root,palno=6)||(root,palno=7))
source = 17,0
dest = 0,17

[State 0, VarAdd]
type = parentvarset
triggerall=projhit=1<2||movehit||projcontact=1<2||movecontact
trigger1 = 1
v =51
value = 1


[State 0, AngleAdd]
type = AngleAdd
trigger1 =((root,palno!=6)&&(root,palno!=7))
value = parent,var(44)

[State 0, AngleAdd]
type = AngleAdd
trigger1 =((root,palno=6)||(root,palno=7))
value = time




[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 251, HitDef]
type = HitDef
triggerall =((root,palno!=6)&&(root,palno!=7))
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 8+(4)*(root,var(27)=1),4+(4)*(root,var(27)=1)
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,5
guardsound = s4000,6;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 251, HitDef]
type = HitDef
triggerall =((root,palno=6)||(root,palno=7))
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 10,5
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,5
guardsound = s4000,6;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 0, ChangeAnim]
type = CHANGESTATE
trigger1 = pos y>=0
value = 296

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact;trigger2 = pos y>0
trigger2 = frontedgedist <=-50
trigger3 = (pos y<root,pos y-250)
trigger4 = backedgedist<=-50
value=297

;---------------------------------------------------------------------------
;VulcanBulletCAMEL
[Statedef 15104]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 1283
sprpriority = 5;velocidad anterior 15
velset = (cos((parent,var(44)*pi)/180)*10),(-sin((parent,var(44)*pi)/180)*8)

[State 0, VarAdd]
type = parentvarset
triggerall=projhit=1<2||movehit||projcontact=1<2||movecontact
trigger1 = 1
v =51
value = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value=45*time

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 15,7
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,5
guardsound = s4000,6;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, ChangeAnim]
type = CHANGESTATE
trigger1 = pos y>=0
value = 296

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact;trigger2 = pos y>0
trigger2 = frontedgedist <=-50
trigger3 = (pos y<root,pos y-250)
trigger4 = backedgedist<=-50
value=297
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SLGNVULCANDIES
[Statedef 15105]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 16039
sprpriority = 9
velset = 0,-3.5

[State 0, BindToRoot]
type = BindToRoot
trigger1 = TIME=0
time = 1
POS=-16,-16

[State 0, RemapPal]
type = RemapPal
triggerall=root,var(10)=107&&root,var(27)=1
trigger1 =1
source = 0,17
dest = 0,17

[State 0, RemapPal]
type = RemapPal
triggerall=root,var(10)=107&&root,var(27)=1
trigger1 =1
source = 0,27
dest = 27,1

[State 0, RemapPal]
type = RemapPal
triggerall=helper(15666),stateno=15089&&root,var(27)=1
trigger1 =1
source = 0,27
dest = 27,1



[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 301
attr = SCA
ignorehitpause = 1


[State 0, DestroySelf]
type = changestate
trigger1 = animtime=0
value = 301
;--------------------------------------------------------------------------
;---------------------------------------------------------------------------
;EnteringDRILLSLUG
[Statedef 14997]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(var(10)=0,11047,ifelse(var(10)=15,11049,11048))
sprpriority = 5
velset = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 27
value = 0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=1
id = 545454

[State 0, PosSet]
type = PosSet
trigger1 = TIME=0;&&VAR(59)
y = -33


[State 0, NotHitBy]
type = NotHitBy
trigger1 = anim=11047||anim=11048||anim=11049
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1


[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0


[State 0, PosFreeze]
type = PosFreeze
trigger1 = ANIM=11047
trigger2 = ANIM=11048
trigger3 = ANIM=11049
trigger4=anim=17005
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 25    ;fv = 10
value = var(10)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=11047&&animtime=0
trigger2 = anim=11048&&animtime=0
trigger3 = ANIM=11049&&animtime=0
value = 17005

[State 0, PosSet]
type = PosSet
trigger1 = anim=17005
y = 0

[State -3, SLUGGEEntering];SLUGGETHIT
type = PlaySnd
trigger1 = time=0;(anim=17005)&&animelem=3,1;Jump land
value = 4000,25
volumescale = 256
channel = -1
freqmul = 1.0


[State 0, VarSet]
type = VarSet
trigger1 = anim=17005&&animelem=1,1
v = 10
value = 103

[State 0, VarSet]
type = VarSet
trigger1 = anim=17005&&animelem=1,1&&var(21)=0
v = 21
value = 3


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=anim=17005
id = 545453

[State 0, HUDVIDACANION0]
type = RemoveExplod
triggerall=numexplod(9110)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=17005&&animelem=2,1
id = 9110


[State 0, cannon]
type = RemoveExplod
triggerall=numexplod(9101)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=17005&&animelem=2,1
id = 9101

[State 0, ChangeState]
type = ChangeState
trigger1=anim=17005&&animtime=0&&var(10)=103
value =0
ctrl = 1


;---------------------------------------------------------------------------
;DRILLSLUGFALLING
[Statedef 15024]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 17000
sprpriority = 0
velset = 0,5;-.1jkjkl
poweradd=ifelse((root,var(59)=1),-2000,-floor(root,fvar(18)))

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, Explod]
type = Explod
trigger1 = time=0&&numexplod(545453)=0&&root,stateno!=14999
anim = 17001
ID = 545453
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1;ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 24
value = 10

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=0;pos y>0;animtime=0
value =15025
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;DRILLSLUGENTERHERE
[Statedef 15025]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 17000
sprpriority = 0
velset = 0,5

[State 0, VelSet]
type = VelSet
trigger1 = pos y>=0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0

[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing&&root,stateno=14997


[State 0, Helper]
type = Helper
triggerall=numhelper(343132)=0
trigger1 = 1
helpertype = normal ;player
name = "FAKEDRILL"
ID = 343132
stateno = 15031
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 99

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time=0
id = 545453


[State 0, PosSet]
type = PosSet
trigger1 = root,stateno=14997
x = root,pos x


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, Explod];Enter Here
type = Explod
trigger1 = numexplod(545454)=0&&root,stateno!=14999&&root,var(10)!=103
anim = 20100
ID = 545454
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 11    ;fv = 10
value = root,pos y

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,stateno=14997
id = 545454

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,anim=17002
id = 545453


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, DestroySelf]
type = DestroySelf
trigger1=(root,anim=17005)&&(root,animtime=0)
trigger2=root,stateno!=14997&&root,var(10)>99
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;FAKE MARCO
[Statedef 15026]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 0
sprpriority = -1


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, BindToRoot]
type = BindToRoot
triggerall=(root,anim!=17040)&&(root,anim!=17042)&&(root,anim!=17054)
trigger1 = 1
time = -1
pos = 0,-10-64*(root,var(27))*(root,stateno!=15032)


[State 0, BindToRoot]
type = BindToRoot
trigger1=(root,anim=17040)&&(root,animelem=1,1);,1)
trigger2=root,anim=17042&&(root,animelem=5,1);,1)
trigger3=root,anim=17054&&(root,animelem=5,1);,1)
time =-1
pos = 0,-20


[State 0, BindToRoot]
type = BindToRoot
trigger1=root,anim=17040&&(root,animelem=2);,1)
trigger2=root,anim=17042&&(root,animelem=4);,1)
trigger3=root,anim=17054&&(root,animelem=4);,1)
time =-1
pos = 0,-36

[State 0, BindToRoot]
type = BindToRoot
trigger1=root,anim=17040&&(root,animelem=3);,1)
trigger2=root,anim=17042&&(root,animelem=3);,1)
trigger3=root,anim=17054&&(root,animelem=3);,1)
time =-1
pos = 0,-53

[State 0, BindToRoot]
type = BindToRoot
trigger1=root,anim=17040&&(root,animelem=4);,1)
trigger2=root,anim=17042&&(root,animelem=2);,1)
trigger3=root,anim=17054&&(root,animelem=2);,1)
time =-1
pos = 0,-64

[State 0, BindToRoot]
type = BindToRoot
trigger1=root,anim=17040&&(root,animelem=5);,1)
trigger2=root,anim=17042&&(root,animelem=1);,1)
trigger3=root,anim=17054&&(root,animelem=1);,1)
time =-1
pos = 0,-74


[State 0, Turn]
type = Turn
trigger1=root,facing=-1&&facing=1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,command="z"&&root,stateno=11&&numhelper(4259)=0
trigger2=(root,var(59))&&root,stateno=11&&(anim!=250||(anim=250&&((animelem!=1)||(animelem!=2))))
value = 250


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime=0&&anim=250
value = 0



[State 0, DestroySelf]
type = DestroySelf
trigger1 = ROOT,VAR(10)!=103


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;DRILL
[Statedef 15027]
type    = S
movetype= a
physics = N
juggle  = 3
ctrl = 0
anim = 17006
sprpriority = 6


[State 0, PlaySnd];DRILLPENETRATING
type = PlaySnd
trigger1 = anim=17007&&movehit
trigger1=(animelem=1,1);(animelem=1,1)||(animelem=2,1)||(animelem=3,1)||(animelem=4,1)
trigger2=anim=17021&&animelem=1,1
trigger3=anim=17022&&animelem=1,1
value = S4000,32
volumescale = 256
channel =0


[State 0, PlaySnd];SUPERDRILLEND
type = PlaySnd
trigger1 =anim=17021&&animelem=14,1
trigger2=anim=17031&&animelem=14,1
trigger3=anim=17032&&animelem=15,1
trigger4=anim=17033&&animelem=16,1
trigger5=anim=17034&&animelem=17,1
trigger6=anim=17035&&animelem=18,1
trigger7=anim=17036&&animelem=19,1
trigger8=anim=17037&&animelem=20,1
trigger9=anim=17038&&animelem=21,1
trigger10=anim=17039&&animelem=22,1
value = S4000,34
volumescale = 256
channel =0


[State 0, Helper]
type = Helper
triggerall=numhelper(3113132)=0
trigger1 =anim=17021&&animelem=14,1
trigger2=anim=17031&&animelem=14,1
trigger3=anim=17032&&animelem=15,1
trigger4=anim=17033&&animelem=16,1
trigger5=anim=17034&&animelem=17,1
trigger6=anim=17035&&animelem=18,1
trigger7=anim=17036&&animelem=19,1
trigger8=anim=17037&&animelem=20,1
trigger9=anim=17038&&animelem=21,1
trigger10=anim=17039&&animelem=22,1
helpertype = normal ;player
name = "DRILLFX"
ID = 3113132
stateno = 15036
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 5


[State 0, NotHitBy];Inmunity
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[state 10000, Hit Override];ComeBackHere
type = hitoverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 15027
slot = 0
time = -1
forceair = 0

[State 0, BindToRoot]
type = BindToRoot
triggerall=(root,anim!=17040)&&(root,anim!=17042)&&(root,anim!=17054)
trigger1 = 1
time = -1
pos = 0,0-64*(root,var(27))*(root,stateno!=15032)


[State 0, BindToRoot]
type = BindToRoot
trigger1=(root,anim=17040)&&(root,animelem=1,1);,1)
trigger2=root,anim=17042&&(root,animelem=5,1);,1)
trigger3=(root,anim=17054)&&(root,animelem=5);,1)
time =-1
pos = 0,-10

[State 0, BindToRoot]
type = BindToRoot
trigger1=root,anim=17040&&(root,animelem=2);,1)
trigger2=root,anim=17042&&(root,animelem=4);,1)
trigger3=(root,anim=17054)&&(root,animelem=4);,1)
time =-1
pos = 0,-26

[State 0, BindToRoot]
type = BindToRoot
trigger1=root,anim=17040&&(root,animelem=3);,1)
trigger2=root,anim=17042&&(root,animelem=3);,1)
trigger3=(root,anim=17054)&&(root,animelem=3);,1)
time =-1
pos = 0,-43

[State 0, BindToRoot]
type = BindToRoot
trigger1=root,anim=17040&&(root,animelem=4);,1)
trigger2=root,anim=17042&&(root,animelem=2);,1)
trigger3=(root,anim=17054)&&(root,animelem=2);,1)
time =-1
pos = 0,-58

[State 0, BindToRoot]
type = BindToRoot
trigger1=root,anim=17040&&(root,animelem=5);,1)
trigger2=root,anim=17042&&(root,animelem=1);,1)
trigger3=(root,anim=17054)&&(root,animelem=1,1);,1)
time =-1
pos = 0,-64


[State 0, Turn]
type = Turn
trigger1=root,facing=-1&&facing=1


[State 0, ChangeAnim];DRILLUP
type = ChangeAnim
trigger1 = (root,anim=17040)&&(anim!=[17021,17039])&&(anim!=[17043,17044])
value = 17043

[State 0, ChangeAnim];DRILLDOWN
type = ChangeAnim
trigger1 = (root,anim=17042)&&(anim!=[17021,17039])&&(anim!=[17043,17044])
value = 17044


[State 0, ChangeAnim];DRILLCLOSE
type = ChangeAnim
triggerall=root,var(21)>0
triggerall=roundstate=2
trigger1 = (enemynear,pos x)-(root,pos x)>0&&(enemynear,pos x)-(root,pos x)<60&&anim!=17007&&root,command="holdfwd"&&anim!=[17021,17039]
trigger1=facing=1
trigger2 = (enemynear,pos x)-(root,pos x)>-60&&(enemynear,pos x)-(root,pos x)<0&&anim!=17007&&root,command="holdfwd"&&anim!=[17021,17039]
trigger2=facing=-1
value = 17007

[State 0, ChangeAnim];DRILLSTARTWALKINGFWD
type = ChangeAnim
trigger1 = anim!=17007&&((root,anim=17008))&&anim!=17009&&anim!=[17021,17039]
trigger2 = anim!=17007&&((root,anim=17045))&&anim!=17009&&anim!=[17021,17039]
value = 17009


[State 0, ChangeAnim];DRILLSTARTWALKINGBACK
type = ChangeAnim
trigger1 = anim!=17015&&((root,anim=17014))&&anim!=17009&&anim!=[17021,17039]
trigger2 = anim!=17015&&((root,anim=17048))&&anim!=17009&&anim!=[17021,17039]
value = 17015

[State 0, ChangeAnim];DRILLWALKING
type = ChangeAnim
trigger1 = ((anim=17009))&&animtime=0&&root,anim=17010&&anim!=17011&&anim!=[17021,17039]
trigger2 = ((anim=17009))&&animtime=0&&root,anim=17046&&anim!=17011&&anim!=[17021,17039]
trigger3 = ((anim=17015))&&animtime=0&&root,anim=17016&&anim!=17011&&anim!=[17021,17039]
trigger4 = ((anim=17015))&&animtime=0&&root,anim=17049&&anim!=17011&&anim!=[17021,17039]
value = 17011

[State 0, ChangeAnim];DRILLWALKINGFWDSTOP
type = ChangeAnim
trigger1 = root,anim=17012&&anim!=17013&&anim!=[17021,17039]
trigger2 = root,anim=17047&&anim!=17013&&anim!=[17021,17039]
value = 17013

[State 0, ChangeAnim];DRILLWALKINGBACKSTOP
type = ChangeAnim
trigger1 = root,anim=17017&&anim!=17055&&anim!=[17021,17039]
trigger2 = root,anim=17050&&anim!=17055&&anim!=[17021,17039]
value = 17055

[State 0, ChangeAnim];STANDFLOOR
type = ChangeAnim
trigger1 = anim!=17006&&(root,vel x=0)&&root,command!="holdfwd"&&anim!=17055&&anim!=17013&&anim!=[17021,17039]
trigger1=(anim!=[17043,17044])
trigger2=((anim=17055)||(anim=17013)||(anim=17021)||(anim=[17031,17039]))&&animtime=0
trigger3=(anim=17043)&&(root,var(27)=1)
value = 17006

[State 0, VarSet];Ammo Cannon
type = parentVarSet
trigger1 = anim=17021&&animelem=1,1
trigger2=(anim=17022)&&animelem=1,1
v = 24    ;fv = 10
value = parent,var(24)-1



[State 0, ChangeAnim];SUPERDRILLFAR
type = ChangeAnim
triggerall=roundstate=2
triggerall=root,var(21)>0
trigger1=(root,var(24)>0)&&(root,stateno!=11)
trigger1 = root,command="z"&&(enemynear,pos x)-(root,pos x)>130&&anim!=[17021,17039]
value = 17021

[State 0, ChangeAnim];SUPERDRILLCLOSESTART01
type = ChangeAnim
triggerall=roundstate=2
triggerall=root,var(21)>0
trigger1=(root,var(24)>0)&&(root,stateno!=11)
trigger1 = root,command="z"&&(enemynear,pos x)-(root,pos x)<=130&&anim!=[17021,17039]
value = 17022

[State 0, ChangeAnim];SUPERDRILLCLOSEEND01
type = ChangeAnim
trigger1 = anim=17022&&movehit=1
value = 17031

[State 0, ChangeAnim];SUPERDRILLCLOSESTART02
type = ChangeAnim
trigger1 = anim=17022&&animtime=0
value = 17023

[State 0, ChangeAnim];SUPERDRILLCLOSEEND02
type = ChangeAnim
trigger1 = anim=17023&&movehit=1
value = 17032

[State 0, ChangeAnim];SUPERDRILLCLOSESTART03
type = ChangeAnim
trigger1 = anim=17023&&animtime=0
value = 17024

[State 0, ChangeAnim];SUPERDRILLCLOSEEND03
type = ChangeAnim
trigger1 = anim=17024&&movehit=1
value = 17033


[State 0, ChangeAnim];SUPERDRILLCLOSESTART04
type = ChangeAnim
trigger1 = anim=17024&&animtime=0
value = 17025

[State 0, ChangeAnim];SUPERDRILLCLOSEEND04
type = ChangeAnim
trigger1 = anim=17025&&movehit=1
value = 17034

[State 0, ChangeAnim];SUPERDRILLCLOSESTART05
type = ChangeAnim
trigger1 = anim=17025&&animtime=0
value = 17026

[State 0, ChangeAnim];SUPERDRILLCLOSEEND05
type = ChangeAnim
trigger1 = anim=17026&&movehit=1
value = 17035

[State 0, ChangeAnim];SUPERDRILLCLOSESTART06
type = ChangeAnim
trigger1 = anim=17026&&animtime=0
value = 17027

[State 0, ChangeAnim];SUPERDRILLCLOSEEND06
type = ChangeAnim
trigger1 = anim=17027&&movehit=1
value = 17036


[State 0, ChangeAnim];SUPERDRILLCLOSESTART07
type = ChangeAnim
trigger1 = anim=17027&&animtime=0
value = 17028

[State 0, ChangeAnim];SUPERDRILLCLOSEEND07
type = ChangeAnim
trigger1 = anim=17028&&movehit=1
value = 17037

[State 0, ChangeAnim];SUPERDRILLCLOSESTART08
type = ChangeAnim
trigger1 = anim=17028&&animtime=0
value = 17029

[State 0, ChangeAnim];SUPERDRILLCLOSEEND08
type = ChangeAnim
trigger1 = anim=17029&&movehit=1
value = 17038

[State 0, ChangeAnim];SUPERDRILLCLOSESTART09
type = ChangeAnim
trigger1 = anim=17029&&animtime=0
value = 17030

[State 0, ChangeAnim];SUPERDRILLCLOSEEND09
type = ChangeAnim
trigger1 = anim=17030&&movehit=1
trigger2=anim=17030&&animtime=0
value = 17039

[State 251, HitDef]
type = HitDef
trigger1 = time
attr = S, SA
animtype  = Hard
damage    = 2+3*(anim=[17021,17039])+3*(anim=17021),1+2*(anim=[17021,17039])+2*anim=17021;5,2
guardflag = MA
pausetime = 0,0
sparkno = -1;S(3500+random%2)
sparkxy=0,-30
hitsound   =-1;s4000,1
guardsound =-1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0
p1sprpriority=6




[State 0, DestroySelf]
type = DestroySelf
trigger1 = ROOT,VAR(10)!=103
trigger2=root,stateno=105
trigger3=numexplod(545453)
trigger4=root,command="rely"&&numhelper(4259)=0&&root,statetype=C
trigger5=numhelper(15666)
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;DOMEOPENING
[Statedef 15028]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 17004;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 3




[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1
pos = 0,0-64*(root,var(27))


[State 0, Turn]
type = Turn
trigger1=root,facing=-1&&facing=1



[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0
trigger2=root,vel x!=0
trigger3=numhelper(4260)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;DOMECLOSING
[Statedef 15029]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 17005;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 3



[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1
pos = 0,0-64*(root,var(27))

[State 0, Turn]
type = Turn
trigger1=root,facing=-1&&facing=1



[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0
trigger2=root,vel x!=0
trigger3=numhelper(4259)


;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;DRILLSLUGDOWN
[Statedef 15030]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 17054
sprpriority = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, Helper]
type = Helper
triggerall=time=0&&numhelper(343132)=0
trigger1 = 1
helpertype = normal ;player
name = "FAKEDRILL"
ID = 343132
stateno = 15031
pos = 0,-64
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 99

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime=0;pos y>0;animtime=0
value =15025
;---------------------------------------------------------------------------
;FAKEDRILL
[Statedef 15031]
type    = S
movetype= a
physics = N
juggle  = 3
ctrl = 0
anim = 17044
sprpriority = 1

[State 0, BindToRoot]
type = BindToparent
trigger1=parent,anim=17054&&(parent,animelem=1,1);,1)
time =-1
pos = 0,-64

[State 0, BindToRoot]
type = BindToparent
trigger1=parent,anim=17054&&(parent,animelem=2);,1)
time =-1
pos = 0,-58

[State 0, BindToRoot]
type = BindToparent
trigger1=parent,anim=17054&&(parent,animelem=3);,1)
time =-1
pos = 0,-43


[State 0, BindToRoot]
type = BindToparent
trigger1=parent,anim=17054&&(parent,animelem=4);,1)
time =-1
pos = 0,-26

[State 0, BindToRoot]
type = BindToparent
trigger1=(parent,anim=17054)&&(parent,animelem=5);,1)
time =-1
pos = 0,-10


[State 0, BindToRoot]
type = BindToparent
trigger1=((parent,anim=17003)||(parent,anim=17000))
time =-1
pos = 0,0



[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing&&root,stateno=14997
;ignorehitpause = 
;persistent = 




[State 0, DestroySelf]
type = DestroySelf
trigger1 =parent,anim=17054&& parent,animtime=0
trigger2=root,var(10)=103&&root,var(27)=0
trigger3=(parent,stateno=15006)

;---------------------------------------------------------------------------
;SelfDestructDRILLSLUG
[Statedef 15032]
type    = S
movetype= I
physics = N
ctrl = 0
sprpriority = 5

[State 0, Explod];OUT
type = Explod
trigger1 = time=0&&numexplod(545454)=0&&root,stateno!=14999
anim = 20101
ID = 545455
pos = 0,-60
postype = p1  ;p2,front,back,left,right
facing = ifelse(facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 0, VelSet]
type = VelSet
trigger1 = pos y<0
x = 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time=0&&var(27)=1
value = 17054

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =anim=17054&&animtime=0
trigger2 = time=0&&var(27)=0
value = 17020

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=17054&&ANIMELEM=1,1
trigger2=anim=17020&&time=1&&var(27)=0
value = 4000,22
volumescale = 256
channel = 44

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, PalFXWiz]
type = PalFX
trigger1 = anim=17020&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256
[State 0, VarSet]
type = VarSet
trigger1 = command="y"
trigger2 = anim=17020&&time>210
trigger3=var(59)
v = 10
value = root,var(25)

[State 0, PalFXWiz]
type = PalFX
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
time = 1

[State 0, Helper]
type = Helper
trigger1 = command="y"
trigger2=var(59)
helpertype = normal ;player
name = "BIGEXPLOSION"
ID = 15005
stateno = 15006
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
channel = 44
;ignorehitpause = 
;persistent = 


[State 0, ChangeState]
type = ChangeState
trigger1 = command="y"
trigger2=var(59)
value =105
ctrl = 1



[State 0, Helper]
type = Helper
trigger1 = anim=17020&&time>210
helpertype = normal ;player
name = "BIGEXPLOSIONF"
ID = 15005
stateno = 15005
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = anim=17020&&time>209
trigger2 = command="y"
id = 545455



[State 0, ChangeState]
type = ChangeState
trigger1 = anim=17020&&time>210
value =0
ctrl = 1


;---------------------------------------------------------------------------;---------------------------------------------------------------------------
;SUICIDE DRILLSLUG
[Statedef 15033]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(root,var(27)=1,17054,17003)
sprpriority = 0
velset = 0,0

[State 0, Helper]
type = Helper
triggerall=time=0&&numhelper(343132)=0
trigger1 = 1
helpertype = normal ;player
name = "FAKEDRILL"
ID = 343132
stateno = 15031
pos = 0,-64
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 99


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=17054&&animtime=0
value = 17003

[State 0, Helper]
type = Helper
triggerall=numhelper(3113132)=0&&ANIM=17003
trigger1 = 1
helpertype = normal ;player
name = "FIREDRILL"
ID = 3113132
stateno = 15034
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
sprpriority = -1

[State 0, Helper]
type = Helper
triggerall=numhelper(3113133)=0&&anim=17003&&animtime=0
trigger1 = 1
helpertype = normal ;player
name = "BIGEXPLOSION"
ID = 3113133
stateno = 15035
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
sprpriority = -1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=17003&&animtime=0
value = 17000



[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 24    ;fv = 10
value = root,var(24)

[State 0, VarAdd];remove fuel
type = parentvarset
trigger1 = time>1
v =21
value = 0


[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0;anim=16003&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256


[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype  = Hard
damage    = 10*abs(vel x),5*abs(vel x)
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 2400, 2];Avanza
type = Velset
trigger1 =anim=17000
x = 12+time*.5
y =0

[State 0, PalFXWiz]
type = PalFX
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)

[State 0, VarSet]
type = parentVarSet
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
v = 21   ;fv = 10
value = 0


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
value = 15006
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;FIREDRILL
[Statedef 15034]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 17056
sprpriority = -1
velset=0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, BindToRoot]
type = BindToparent
trigger1=1
time =-1
pos = 0,0


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=17056&&parent,vel x!=0
value = 17057

[State 1105]
type = destroyself
trigger1 = parent,movecontact
trigger2 = numhelper(15666)=0
trigger3 = parent,stateno=15006
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BIGEXPLOSION
[Statedef 15035]
type    = s                      
movetype= a                      
physics = s
anim = 1256
sprpriority = 4+9*(root,var(10)=105)
velset = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = s4000,20
volume = 255
channel = 44


[State 0, EnvColor]
type = EnvColor
trigger1 = time=0
value = 255,255,255
time = 1

[State 251, HitDef]
type = HitDef
trigger1 = (animelem=1,1)||(animelem=2,1)||(animelem=3,1)||(animelem=4,1)
trigger2 =(animelem=5,1)||(animelem=6,1)||(animelem=7,1)||(animelem=8,1)
trigger3 =(animelem=9,1)||(animelem=10,1)||(animelem=11,1)||(animelem=12,1)
trigger4 =(animelem=13,1)||(animelem=14,1)||(animelem=15,1)||(animelem=16,1)
trigger5 =(animelem=17,1)||(animelem=18,1)||(animelem=19,1)||(animelem=20,1)
trigger6 =(animelem=21,1)||(animelem=22,1)||(animelem=23,1)||(animelem=24,1)
attr = S, SP
animtype  = Hard
damage    = 4,4;5,2
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy=0,0
hitsound   =-1;s4000,1
guardsound =-1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0
p1sprpriority=7

[State 1105]
type = destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;DrillSpecialEnd
[Statedef 15036]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 17058
sprpriority = 5
velset=0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 0, BindToRoot]
type = BindToRoot
triggerall=(root,anim!=17040)&&(root,anim!=17042)&&(root,anim!=17054)
trigger1 = 1
time = -1
pos = 0,0-64*(root,var(27))*(root,stateno!=15032)


[State 0, BindToRoot]
type = BindToRoot
trigger1=(root,anim=17040)&&(root,animelem=1,1);,1)
trigger2=root,anim=17042&&(root,animelem=5,1);,1)
trigger3=(root,anim=17054)&&(root,animelem=5);,1)
time =-1
pos = 0,-10

[State 0, BindToRoot]
type = BindToRoot
trigger1=root,anim=17040&&(root,animelem=2);,1)
trigger2=root,anim=17042&&(root,animelem=4);,1)
trigger3=(root,anim=17054)&&(root,animelem=4);,1)
time =-1
pos = 0,-26

[State 0, BindToRoot]
type = BindToRoot
trigger1=root,anim=17040&&(root,animelem=3);,1)
trigger2=root,anim=17042&&(root,animelem=3);,1)
trigger3=(root,anim=17054)&&(root,animelem=3);,1)
time =-1
pos = 0,-43

[State 0, BindToRoot]
type = BindToRoot
trigger1=root,anim=17040&&(root,animelem=4);,1)
trigger2=root,anim=17042&&(root,animelem=2);,1)
trigger3=(root,anim=17054)&&(root,animelem=2);,1)
time =-1
pos = 0,-58

[State 0, BindToRoot]
type = BindToRoot
trigger1=root,anim=17040&&(root,animelem=5);,1)
trigger2=root,anim=17042&&(root,animelem=1);,1)
trigger3=(root,anim=17054)&&(root,animelem=1,1);,1)
time =-1
pos = 0,-64


[State 0, Turn]
type = Turn
trigger1=root,facing=-1&&facing=1

[State 1105]
type = destroyself
trigger1 = animtime=0

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;SLUGNOIDFALLING
[Statedef 15037]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18000
sprpriority = 0
velset = 0,5
poweradd=ifelse((root,var(59)=1),-2000,-floor(root,fvar(18)))

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 24
value = 10

[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 27
value = RANDOM%6 ;PONER RANDOM%6


[State 0, RemapPal];slugnoidnormal
type = RemapPal
trigger1 = root,var(27)<=2
source = 0,48
dest = 0,48

[State 0, RemapPal];slugnoidtypeR
type = RemapPal
trigger1 = root,var(27)=3
source = 0,48
dest = 48,0

[State 0, RemapPal];slugnoidtypeB
type = RemapPal
trigger1 = root,var(27)=4
source = 0,48
dest = 48,1

[State 0, RemapPal];slugnoidtypeIKARI
type = RemapPal
trigger1 = root,var(27)=5
source = 0,48
dest = 48,2


[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0


[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=0
value =15038
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SLUGNOIDENTERHERE
[Statedef 15038]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18000
sprpriority = 0
velset = 0,5


[State 0, VelSet]
type = VelSet
trigger1 = pos y>=0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0

[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing


[State 0, PosSet]
type = PosSet
trigger1 = root,stateno=14996
x = root,pos x


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, Explod];Enter Here
type = Explod
trigger1 = numexplod(545454)=0&&root,stateno!=14999&&root,var(10)!=103
anim = 20100
ID = 545454
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 11    ;fv = 10
value = root,pos y

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,anim=18001	;ANIM OF ENTERING
id = 545454


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, DestroySelf]
type = DestroySelf 
trigger1=(root,anim=18001)	;ANIM OF ENTERING END
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;EnteringSLUGNOID
[Statedef 14996]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(var(10)=0,11047,ifelse(var(10)=15,11049,11048))
sprpriority = 5
velset = 0,0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=1
id = 545454

[State 0, PosSet]
type = PosSet
trigger1 = TIME=0;&&VAR(59)
y = -33


[State 0, NotHitBy]
type = NotHitBy
trigger1 = anim=11047||anim=11048||anim=11049
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1


[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0


[State 0, PosFreeze]
type = PosFreeze
trigger1 = ANIM=11047
trigger2 = ANIM=11048
trigger3 = ANIM=11049
trigger4=anim=18001
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 25    ;fv = 10
value = var(10)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=11047&&animtime=0
trigger2 = anim=11048&&animtime=0
trigger3 = ANIM=11049&&animtime=0
value = 18001

[State 0, PosSet]
type = PosSet
trigger1 = anim=18001
y = 0

[State -3, SLUGGEEntering];SLUGGENTERING
type = PlaySnd
trigger1 = time=0
value = 4000,28
volumescale = 256
channel = -1
freqmul = 1.0


[State 0, VarSet]
type = VarSet
trigger1 = anim=18001&&animelem=1,1
v = 10
value = 104

[State 0, VarSet]
type = VarSet
trigger1 = anim=18001&&animelem=1,1&&var(21)<=0
v = 21
value = 3


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=anim=18001
id = 545453

[State 0, HUDVIDACANION0]
type = RemoveExplod
triggerall=numexplod(9110)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18001&&animelem=2,1
id = 9110


[State 0, cannon]
type = RemoveExplod
triggerall=numexplod(9101)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18001&&animelem=2,1
id = 9101

[State 0, ChangeState]
type = ChangeState
trigger1=anim=18001&&animtime=0&&var(10)=104
value =0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;FAKE MARCO SLUGNOID
[Statedef 15039]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18002
sprpriority = 7


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1
pos = 0,0

[State 0, ChangeAnim];STAND
type = ChangeAnim
trigger1 = root,anim=18003&&root,animelem=1,1
value = 18004

[State 0, ChangeAnim];WALK R
type = ChangeAnim
trigger1 = root,anim=18005&&root,animelem=1,1
value = 18006


[State 0, ChangeAnim];WALK L
type = ChangeAnim
trigger1 = root,anim=18007&&root,animelem=1,1
value = 18008


[State 0, ChangeAnim];CROUCHING
type = ChangeAnim
trigger1 = root,anim=18010&&anim!=18011
value = 18011

[State 0, ChangeAnim];OPENING
type = ChangeAnim
trigger1 = root,anim=18009&&root,animelem=1,1
value = 18012

[State 0, ChangeAnim];CLOSING
type = ChangeAnim
trigger1 = root,anim=18001&&root,animelem=1,1
value = 18002

[State 0, ChangeAnim];JUMPUP
type = ChangeAnim
trigger1 = root,anim=18013&&root,animelem=1,1
value = 18014

[State 0, ChangeAnim];JUMPR
type = ChangeAnim
trigger1 =root,vel y!=0&&root,vel x>0&&anim!=18033
value = 18033

[State 0, ChangeAnim];JUMPR
type = ChangeAnim
trigger1 =root,vel y!=0&&root,vel x<0&&anim!=18034
value = 18034

[State 0, ChangeAnim];LANDING
type = ChangeAnim
trigger1 = root,anim=18031&&root,animelem=1,1
value = 18032

[State 0, ChangeAnim];GETHIT
type = ChangeAnim
trigger1 = root,anim=18039&&root,animelem=1,1
value = 18040

[State 0, DestroySelf]
type = DestroySelf
trigger1 = root,var(10)!=104

;---------------------------------------------------------------------------
;SLUGNOIDJUMP
[Statedef 15040]
type    = A
movetype= A
physics = A
anim = 18013
ctrl = 0
sprpriority = 6


[State 0, Helper]
type = Helper
trigger1=numhelper(515152)=0
trigger1 =time=0
helpertype = normal ;player
name = "SmokeFloor"
ID = 515152
stateno = 15041
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
trigger1=numhelper(515142)=0
trigger1 =time=0
helpertype = normal ;player
name = "BACKFIRESLUGN"
ID = 515142
stateno = 15042
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State -3, SV001JUMP]
type = PlaySnd
trigger1=time=0
value = 4000, 25

[State 2400, 2]
type = Velset
trigger1 = time<20
y = -3-2*(var(27)=4)

[State 0, VelAdd]
type = VelADD
trigger1 = time>20
y = -1.5


[State 211, 4]
type = VELSET
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 211, 5]
type = VELSET
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)


[State 0, ChangeAnim];JUMPUP
type = ChangeAnim
trigger1 = command="holdfwd"&&anim=18023&&animtime=0
trigger2= command="holdback"&&anim=18015&&animtime=0
value = 18013


[State 0, ChangeAnim];JUMPR01
type = ChangeAnim
trigger1 = command="holdfwd"&&anim=18013
trigger2= command="holdback"&&anim=18016&&animtime=0
value = 18015

[State 0, ChangeAnim];JUMPR02
type = ChangeAnim
trigger1 = command="holdfwd"&&anim=18015&&animtime=0
trigger2= command="holdback"&&anim=18017&&animtime=0
value = 18016

[State 0, ChangeAnim];JUMPR03
type = ChangeAnim
trigger1 = command="holdfwd"&&anim=18016&&animtime=0
trigger2= command="holdback"&&anim=18018&&animtime=0
value = 18017

[State 0, ChangeAnim];JUMPR04
type = ChangeAnim
trigger1 = command="holdfwd"&&anim=18017&&animtime=0
trigger2= command="holdback"&&anim=18019&&animtime=0
value = 18018

[State 0, ChangeAnim];JUMPR05
type = ChangeAnim
trigger1 = command="holdfwd"&&anim=18018&&animtime=0
trigger2= command="holdback"&&anim=18020&&animtime=0
value = 18019

[State 0, ChangeAnim];JUMPR06
type = ChangeAnim
trigger1 = command="holdfwd"&&anim=18019&&animtime=0
trigger2= command="holdback"&&anim=18021&&animtime=0
value = 18020

[State 0, ChangeAnim];JUMPR07
type = ChangeAnim
trigger1 = command="holdfwd"&&anim=18020&&animtime=0
trigger2= command="holdback"&&anim=18022&&animtime=0
value = 18021


[State 0, ChangeAnim];JUMPR08
type = ChangeAnim
trigger1 = command="holdfwd"&&anim=18021&&animtime=0
value = 18022

[State 0, ChangeAnim];JUMPL01
type = ChangeAnim
trigger1 = command="holdback"&&anim=18013
trigger2= command="holdfwd"&&anim=18024&&animtime=0
value = 18023

[State 0, ChangeAnim];JUMPL02
type = ChangeAnim
trigger1 = command="holdback"&&anim=18023&&animtime=0
trigger2= command="holdfwd"&&anim=18025&&animtime=0
value = 18024

[State 0, ChangeAnim];JUMPL03
type = ChangeAnim
trigger1 = command="holdback"&&anim=18024&&animtime=0
trigger2= command="holdfwd"&&anim=18026&&animtime=0
value = 18025

[State 0, ChangeAnim];JUMPL04
type = ChangeAnim
trigger1 = command="holdback"&&anim=18025&&animtime=0
trigger2= command="holdfwd"&&anim=18027&&animtime=0
value = 18026

[State 0, ChangeAnim];JUMPL05
type = ChangeAnim
trigger1 = command="holdback"&&anim=18026&&animtime=0
trigger2= command="holdfwd"&&anim=18028&&animtime=0
value = 18027

[State 0, ChangeAnim];JUMPL06
type = ChangeAnim
trigger1 = command="holdback"&&anim=18027&&animtime=0
trigger2= command="holdfwd"&&anim=18029&&animtime=0
value = 18028

[State 0, ChangeAnim];JUMPL06
type = ChangeAnim
trigger1 = command="holdback"&&anim=18028&&animtime=0
trigger2= command="holdfwd"&&anim=18030&&animtime=0
value = 18029

[State 0, ChangeAnim];JUMPL06
type = ChangeAnim
trigger1 = command="holdback"&&anim=18029&&animtime=0
value = 18030

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SMOKEFLOOR
[Statedef 15041]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 16127
sprpriority = 0
velset=0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1


[State 1105]
type = destroyself
trigger1=animtime=0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BACKFIRESLUGN
[Statedef 15042]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18035
sprpriority = 3
velset=0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1
pos = 0,0


[State 1105]
type = destroyself
trigger1=animtime=0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SLUGNOIDCannon
[Statedef 15043]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 16020
sprpriority = 5
velset = 0,5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = TIME=0
value = 4000,3
volumescale = 256
channel = -1

[State 0, Explod]
type = Explod
trigger1 = TIME=0
anim = 1287
ID = 313131
pos = -5,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, EnvColor]
type = EnvColor
trigger1 = movecontact
value = 255,255,255
time = 1


;==========================================================
;ANGULO SEGUN VELOCIDAD:
;==========================================================

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x>0
value=atan(-vel y/vel x)*180/pi


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y<0
value=90

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y>0
value=270


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x<0
value=atan(-vel y/vel x)*180/pi+180

;==========================================================


[State 0, ParentVarSet];Le resta a la variable canion
type = ParentVarSet
triggerall=root,var(24)>0
trigger1 = time=0
v =  24   ;fv = 
value = root,var(24)-1

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 253
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 120,60
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4;s4000,1
guardsound = s4000,4;s4000,1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1

ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
value = 253

;---------------------------------------------------------------------------
;SLUGNOIDVulcanL
[Statedef 15045]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18036
sprpriority = 7

[State 0, Turn]
type = Turn
trigger1 =ifelse(facing=-1,1,0)

;==========================================================
;AI
;==========================================================
;[State 0, VarSet];AIENEMYANGLEFINDOUTFACING 1 360° AI
;type = VarSet
;trigger1=facing=1&&(root,var(59))
;v = 44
;value = ifelse(abs((enemy,pos x)-pos x)>(enemy,const(size.ground.front)),(atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=-1)*((enemy,pos y)>pos y)+180*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)<(pos y))+180*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)>0)*(enemy,facing=1)*((enemy,pos y)>pos y)),ifelse((enemy,pos y)<pos y,90,270))
;
;[State 0, VarSet];AIENEMYANGLEFINDOUTFACING -1 360° AI (REPARAR)
;type = VarSet
;trigger1=facing=-1&&(root,var(59))
;v = 44
;value = ifelse(abs((enemy,pos x)-pos x)>(enemy,const(size.ground.front)),(atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)>pos y)+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)<(pos y))+180*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)>0)*(enemy,facing=-1)*((enemy,pos y)>pos y)),ifelse((enemy,pos y)<pos y,90,270))
;

[State 0, VarSet];AIENEMYANGLEFINDOUTFACING 1 360° AI
type = VarSet;triggerall=parent,facing=1
triggerall=root,var(59)
trigger1 = ((root,var(10))!=101)
v = 44
value = ifelse(abs((enemy,pos x)-pos x)>(enemy,const(size.ground.front)),(atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi+360*((atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=-1)*((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))>pos y)+180*((atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))<(pos y))+180*((atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi)>0)*(enemy,facing=1)*((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))>pos y)),ifelse((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))<pos y,90,270))


;==========================================================
;Posicion
;==========================================================

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18013)||(root,anim=[18015,18030]))
trigger2 = (root,anim=18031)&&(root,animelem=1,1)
time = -1
pos = -19,-44

[State 0, BindToRoot]
type = BindToRoot
trigger1 =(root,anim=18031)&&(root,animelem=2)
time = -1
pos = -19,-43

[State 0, BindToRoot]
type = BindToRoot
trigger1 =(root,anim=18031)&&(root,animelem=3)
time = -1
pos = -19,-42

[State 0, BindToRoot]
type = BindToRoot
trigger1 =(root,anim=18031)&&(root,animelem=4)
time = -1
pos = -19,-41

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18009))&&(root,animelem=7)
trigger2 = ((root,anim=18009))&&(root,animelem=8)
trigger3 = ((root,anim=18001))&&(root,animelem=5)
time = -1
pos = -19,-38

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18009))&&(root,animelem=6)
trigger2 = ((root,anim=18009))&&(root,animelem=9)
time = -1
pos = -19,-37

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18009))&&(root,animelem=2)
trigger2 = ((root,anim=18009))&&(root,animelem=5)
trigger3 = ((root,anim=18009))&&(root,animelem=10)
trigger4 = (root,anim=18001)&&(root,animelem=4)
trigger5 = (root,anim=18001)&&(root,animelem=6)
time = -1
pos = -19,-36


[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18009))&&(root,animelem=1,1)
trigger2 = ((root,anim=18009)||(root,anim=18001))&&(root,animelem=3)
trigger3 = ((root,anim=18009))&&(root,animelem=11)
trigger4 = ((root,anim=18001))&&(root,animelem=8)
trigger5 = ((root,anim=18001))&&(root,animelem=10)
time = -1
pos = -19,-35

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18003)||(root,anim=18005)||(root,anim=18007))&&(root,animelem=1,1)
trigger2=((root,anim=18001)||(root,anim=18003)||(root,anim=18005)||(root,anim=18007))&&(root,animelem=2)
trigger3 = ((root,anim=18003)||(root,anim=18031))&&(root,animelem=10)
trigger4=((root,anim=18001)||(root,anim=18005)||(root,anim=18007))&&(root,animelem=7)
trigger5=((root,anim=18005)||(root,anim=18007))&&(root,animelem=8)
trigger6 = ((root,anim=18009))&&(root,animelem=4)
trigger7 = ((root,anim=18009))&&(root,animelem=12)
trigger8 =(root,anim=18031)&&(root,animelem=11)
trigger9 = ((root,anim=18001))&&(root,animelem=9)
time = -1
pos = -19,-34

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18003)||(root,anim=18005)||(root,anim=18007))&&(root,animelem=3)
trigger2 = ((root,anim=18003)||(root,anim=18005)||(root,anim=18007)||(root,anim=18031))&&(root,animelem=9)
trigger3 = (root,anim=18001)&&(root,animelem=1,1)
time = -1
pos = -19,-33

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18003)||(root,anim=18005)||(root,anim=18007))&&(root,animelem=4)
trigger2 = ((root,anim=18003)||(root,anim=18031))&&(root,animelem=8)
trigger3=((root,anim=18005)||(root,anim=18007))&&(root,animelem=10)
trigger4 =(root,anim=18031)&&(root,animelem=5)
time = -1
pos = -19,-32

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18003)||(root,anim=18005)||(root,anim=18007))&&(root,animelem=5)
trigger2 = ((root,anim=18003)||(root,anim=18031))&&(root,animelem=7)
trigger3 = ((root,anim=18005)||(root,anim=18007))&&(root,animelem=11)
time = -1
pos = -19,-30

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18003)||(root,anim=18005)||(root,anim=18007)||(root,anim=18031))&&(root,animelem=6)
trigger2 = ((root,anim=18005)||(root,anim=18007))&&(root,animelem=12)
time = -1
pos = -19,-29

[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 43
value = (enemy,pos y)

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = time
text = "var(44) = %d var(45) = %d var(43) = %d"
params = var(44),var(45),var(43)


[State 0, VarSet]
type = VarSet
trigger1=anim=16001&&animelem=1,1
trigger2=anim=16000
v = 51    ;fv = 10
value = 0


[State 0, VarAdd]
type = parentvarset
trigger1 = 1
v =51
value = var(51)

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, VarSet]
type = VarSet
trigger1=var(44)>=360
v = 44
value = 0

[State 0, VarSet]
type = VarSet
trigger1=var(44)<0
v = 44
value = 360

[State 0, Muevearriba1]
type = varadd
triggerall= root,command="holdup"&&(var(44)>90&&var(44)<270)&&(root,var(59))=0&&(root,var(10)!=101)
trigger1=time
v=44
value = -5

[State 0, Muevearriba2]
type = varadd
triggerall= root,command="holdup"&&(var(44)<90||var(44)>270)&&(root,var(59))=0&&(root,var(10)!=101)
trigger1=time
v=44
value =5


[State 0, MueveAdelante1]
type = varadd
triggerall= root,command="holdfwd"&&((var(44)>180)||(var(44)=0))&&(root,var(59))=0
trigger1=time
v=44
value = 5

[State 0, MueveAdelante2]
type = varadd
triggerall= root,command="holdfwd"&&(var(44)<=180)&&(var(44)>5)&&(root,var(59))=0
trigger1=time
v=44
value = -5

[State 0, MueveAtras1]
type = varadd
triggerall= root,command="holdback"&&(var(44)<=180)&&(root,var(59))=0&&(root,var(10)!=101)
trigger1=time
v=44
value = 5

[State 0, MueveAtras2]
type = varadd
triggerall= root,command="holdback"&&(var(44)>180)&&(root,var(59))=0&&(root,var(10)!=101)
trigger1=time
v=44
value = -5


[State 0, MueveAbajo1]
type = varadd
triggerall= root,command="holddown"&&(var(44)<=90||var(44)>=270)&&(root,var(59))=0&&(root,var(10)!=101)
trigger1=time
v=44
value = -5

[State 0, MueveAbajo2]
type = varadd
triggerall= root,command="holddown"&&(var(44)>=90&&var(44)<=270)&&(root,var(59))=0&&(root,var(10)!=101)
trigger1=time
v=44
value = 5

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value=var(44)


[State 0, RemapPal]
type = RemapPal
trigger1 =1
source = 0,17
dest = 17,0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall=!win&&roundstate=2
trigger1 = root,command="x"
trigger2=root,command="holdx"&&time*tickspersecond&&animtime=0&&root,palno=4
trigger3=root,var(59)&&time&&animtime=0
value = 18037

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=18037&&animtime=0
value = 18036

[State 0, VarSet]
type = Varadd
trigger1 = AnimElem = 1,1||animelem=5,1||animelem=9,1
v = 53
value = -1


[State 0, VarSet]
type = Varset
trigger1 = var(53)<=0
v = 53
value = 4

[State 0, Helper]
type = Helper
trigger1=anim=18037
trigger1 = ((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))&&(root,var(59)=0)
trigger2=(root,var(59))&&((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))
helpertype = normal ;player
name = "vulcanbullet"
ID = 15001
stateno = 15102
pos = (cos((var(44)*pi)/180)*26),-(sin((var(44)*pi)/180)*26)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1=anim=18037
trigger1 = ((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))
value = 4000,19
volumescale = 256
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1=root,numhelper(15101)>1&&time;trigger3=win
trigger2=win&&matchover
trigger3=root,var(10)!=104&&numhelper(15666)=0
[State 0, ChangeState];first vulcan dies
type = ChangeState
trigger1 = root,stateno=16663
trigger2=numhelper(15666)
value = 15046
ctrl = 0

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
[Statedef 16663,SLUGNOIDGETHIT]
type    = U
movetype= I
physics = N
juggle  = 0
anim = 18039
sprpriority = 5
ctrl=0

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 18
value = 1

[State -3, SLUGGETHIT];SLUGGETHIT
type = PlaySnd
trigger1 = time=0
value = 4000,23
volumescale = 256
channel = -1
freqmul = 1.0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
 


[State 0, VarSet]
type = VarSet
trigger1 = TIME=0
v = 21    ;fv = 10
value = VAR(21)-1

[State 0, ChangeState]
type = ChangeState
TRIGGERALL=STATETYPE=S&&var(21)>=1
trigger1 = animtime=0
value =0
ctrl=1

[State 0, ChangeState]
type = ChangeState
trigger1 = time=0&&var(21)<=0
value =15049
ctrl=0




;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SLGNVULCANDIES
[Statedef 15046]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18038
sprpriority = 5
velset = 0,-3.5

[State 0, BindToRoot]
type = BindToRoot
trigger1 = TIME=0
time = 1
POS=-19,-34

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 301
attr = SCA, NP, SP, HP
ignorehitpause = 1


[State 0, DestroySelf]
type = changestate
trigger1 = animtime=0
value = 301
;--------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SLUGNOIDVulcanR
[Statedef 15047]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18036
sprpriority = 7

[State 0, Turn]
type = Turn
trigger1 =ifelse(facing=-1,1,0)



;==========================================================
;AI
;==========================================================

[State 0, VarSet];AIENEMYANGLEFINDOUTFACING 1 360° AI
type = VarSet;triggerall=parent,facing=1
triggerall=root,var(59)
trigger1 = ((root,var(10))!=101)
v = 44
value = ifelse(abs((enemy,pos x)-pos x)>(enemy,const(size.ground.front)),(atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi+360*((atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=-1)*((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))>pos y)+180*((atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))<(pos y))+180*((atan(-((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))-pos y)/((enemy,pos x)-pos x))*180/pi)>0)*(enemy,facing=1)*((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))>pos y)),ifelse((enemy,pos y+enemy,Const(Size.Mid.Pos.Y))<pos y,90,270))



;[State 0, VarSet];AIENEMYANGLEFINDOUTFACING 1 360° AI
;type = VarSet
;trigger1=facing=1&&(root,var(59))
;v = 44
;value = ifelse(abs((enemy,pos x)-pos x)>(enemy,const(size.ground.front)),(atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=-1)*((enemy,pos y)>pos y)+180*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)<(pos y))+180*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)>0)*(enemy,facing=1)*((enemy,pos y)>pos y)),ifelse((enemy,pos y)<pos y,90,270))
;
;[State 0, VarSet];AIENEMYANGLEFINDOUTFACING -1 360° AI (REPARAR)
;type = VarSet
;trigger1=facing=-1&&(root,var(59))
;v = 44
;value = ifelse(abs((enemy,pos x)-pos x)>(enemy,const(size.ground.front)),(atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)>pos y)+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)<(pos y))+180*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)>0)*(enemy,facing=-1)*((enemy,pos y)>pos y)),ifelse((enemy,pos y)<pos y,90,270))


;==========================================================
;Posicion
;==========================================================

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18013)||(root,anim=[18015,18030]))
trigger2 = (root,anim=18031)&&(root,animelem=1,1)
time = -1
pos = 21,-44

[State 0, BindToRoot]
type = BindToRoot
trigger1 =(root,anim=18031)&&(root,animelem=2)
time = -1
pos = 21,-43

[State 0, BindToRoot]
type = BindToRoot
trigger1 =(root,anim=18031)&&(root,animelem=3)
time = -1
pos = 21,-42

[State 0, BindToRoot]
type = BindToRoot
trigger1 =(root,anim=18031)&&(root,animelem=4)
time = -1
pos = 21,-41

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18009))&&(root,animelem=7)
trigger2 = ((root,anim=18009))&&(root,animelem=8)
trigger3 = ((root,anim=18001))&&(root,animelem=5)
time = -1
pos = 21,-38

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18009))&&(root,animelem=6)
trigger2 = ((root,anim=18009))&&(root,animelem=9)
time = -1
pos = 21,-37

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18009))&&(root,animelem=2)
trigger2 = ((root,anim=18009))&&(root,animelem=5)
trigger3 = ((root,anim=18009))&&(root,animelem=10)
trigger4 = (root,anim=18001)&&(root,animelem=4)
trigger5 = (root,anim=18001)&&(root,animelem=6)
time = -1
pos = 21,-36


[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18009))&&(root,animelem=1,1)
trigger2 = ((root,anim=18009)||(root,anim=18001))&&(root,animelem=3)
trigger3 = ((root,anim=18009))&&(root,animelem=11)
trigger4 = ((root,anim=18001))&&(root,animelem=8)
trigger5 = ((root,anim=18001))&&(root,animelem=10)
time = -1
pos = 21,-35

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18003)||(root,anim=18005)||(root,anim=18007))&&(root,animelem=1,1)
trigger2=((root,anim=18001)||(root,anim=18003)||(root,anim=18005)||(root,anim=18007))&&(root,animelem=2)
trigger3 = ((root,anim=18003)||(root,anim=18031))&&(root,animelem=10)
trigger4=((root,anim=18001)||(root,anim=18005)||(root,anim=18007))&&(root,animelem=7)
trigger5=((root,anim=18005)||(root,anim=18007))&&(root,animelem=8)
trigger6 = ((root,anim=18009))&&(root,animelem=4)
trigger7 = ((root,anim=18009))&&(root,animelem=12)
trigger8 =(root,anim=18031)&&(root,animelem=11)
trigger9 = ((root,anim=18001))&&(root,animelem=9)
time = -1
pos = 21,-34

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18003)||(root,anim=18005)||(root,anim=18007))&&(root,animelem=3)
trigger2 = ((root,anim=18003)||(root,anim=18005)||(root,anim=18007)||(root,anim=18031))&&(root,animelem=9)
trigger3 = (root,anim=18001)&&(root,animelem=1,1)
time = -1
pos = 21,-33

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18003)||(root,anim=18005)||(root,anim=18007))&&(root,animelem=4)
trigger2 = ((root,anim=18003)||(root,anim=18031))&&(root,animelem=8)
trigger3=((root,anim=18005)||(root,anim=18007))&&(root,animelem=10)
trigger4 =(root,anim=18031)&&(root,animelem=5)
time = -1
pos = 21,-32

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18003)||(root,anim=18005)||(root,anim=18007))&&(root,animelem=5)
trigger2 = ((root,anim=18003)||(root,anim=18031))&&(root,animelem=7)
trigger3 = ((root,anim=18005)||(root,anim=18007))&&(root,animelem=11)
time = -1
pos = 21,-30

[State 0, BindToRoot]
type = BindToRoot
trigger1 = ((root,anim=18003)||(root,anim=18005)||(root,anim=18007)||(root,anim=18031))&&(root,animelem=6)
trigger2 = ((root,anim=18005)||(root,anim=18007))&&(root,animelem=12)
time = -1
pos = 21,-29

[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 43
value = (enemy,pos y)

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = time
text = "var(44) = %d var(45) = %d var(43) = %d"
params = var(44),var(45),var(43)


[State 0, VarSet]
type = VarSet
trigger1=anim=16001&&animelem=1,1
trigger2=anim=16000
v = 51    ;fv = 10
value = 0


[State 0, VarAdd]
type = parentvarset
trigger1 = 1
v =51
value = var(51)

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, VarSet]
type = VarSet
trigger1=var(44)>=360
v = 44
value = 0

[State 0, VarSet]
type = VarSet
trigger1=var(44)<0
v = 44
value = 360

[State 0, Muevearriba1]
type = varadd
triggerall= root,command="holdup"&&(var(44)>90&&var(44)<270)&&(root,var(59))=0&&(root,var(10)!=101)
trigger1=time
v=44
value = -5

[State 0, Muevearriba2]
type = varadd
triggerall= root,command="holdup"&&(var(44)<90||var(44)>270)&&(root,var(59))=0&&(root,var(10)!=101)
trigger1=time
v=44
value =5


[State 0, MueveAdelante1]
type = varadd
triggerall= root,command="holdfwd"&&((var(44)>180))&&(root,var(59))=0
trigger1=time
v=44
value = 5

[State 0, MueveAdelante2]
type = varadd
triggerall= root,command="holdfwd"&&(var(44)<=180)&&(var(44)>0)&&(root,var(59))=0
trigger1=time
v=44
value = -5

[State 0, MueveAtras1]
type = varadd
triggerall= root,command="holdback"&&(var(44)<=180)&&(root,var(59))=0&&(root,var(10)!=101)
trigger1=time
v=44
value = 5

[State 0, MueveAtras2]
type = varadd
triggerall= root,command="holdback"&&(var(44)>180)&&(root,var(59))=0&&(root,var(10)!=101)
trigger1=time
v=44
value = -5


[State 0, MueveAbajo1]
type = varadd
triggerall= root,command="holddown"&&(var(44)<=90||var(44)>=270)&&(root,var(59))=0&&(root,var(10)!=101)
trigger1=time
v=44
value = -5

[State 0, MueveAbajo2]
type = varadd
triggerall= root,command="holddown"&&(var(44)>=90&&var(44)<=270)&&(root,var(59))=0&&(root,var(10)!=101)
trigger1=time
v=44
value = 5

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value=var(44)


[State 0, RemapPal]
type = RemapPal
trigger1 =1
source = 0,17
dest = 17,0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall=!win&&roundstate=2
trigger1 = root,command="x"
trigger2=root,command="holdx"&&time*tickspersecond&&animtime=0&&root,palno=4
trigger3=root,var(59)&&time&&animtime=0
value = 18037

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=18037&&animtime=0
value = 18036

[State 0, VarSet]
type = Varadd
trigger1 = AnimElem = 1,1||animelem=5,1||animelem=9,1
v = 53
value = -1


[State 0, VarSet]
type = Varset
trigger1 = var(53)<=0
v = 53
value = 4

[State 0, Helper]
type = Helper
trigger1=anim=18037
trigger1 = ((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))&&(root,var(59)=0)
trigger2=(root,var(59))&&((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))
helpertype = normal ;player
name = "vulcanbullet"
ID = 15001
stateno = 15102
pos = (cos((var(44)*pi)/180)*26),-(sin((var(44)*pi)/180)*26)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1=anim=18037
trigger1 = ((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1)||(animelem=9,1))
value = 4000,19
volumescale = 256
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1=root,numhelper(15111)>1&&time
trigger2=win&&matchover
trigger3=root,var(10)!=104&&numhelper(15666)=0


[State 0, ChangeState];second vulcan dies
type = ChangeState
trigger1 = root,stateno=16663&&(root,var(21)=1)
trigger2=numhelper(15666)
value = 15048
ctrl = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SLGNVULCANDIESR
[Statedef 15048]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18038
sprpriority = 5
velset = 0,-3.5

[State 0, BindToRoot]
type = BindToRoot
trigger1 = TIME=0
time = 1
POS=21,-34

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 301
attr = SCA, NP, SP, HP
ignorehitpause = 1


[State 0, DestroySelf]
type = changestate
trigger1 = animtime=0
value = 301
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;SelfDestructSLUGNOID
[Statedef 15049]
type    = S
movetype= I
physics = N
anim=18039
ctrl = 0
sprpriority = 5


[State 0, Explod];OUT
type = Explod
trigger1 = time=0&&numexplod(545455)=0&&root,stateno!=14999
anim = 20101
ID = 545455
pos = 0,-60
postype = p1  ;p2,front,back,left,right
facing = ifelse(facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 0, VelSet]
type = VelSet
trigger1 = pos y<0
x = 0
y = 0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 4000,22
volumescale = 256
channel = 44


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, PalFXWiz]
type = PalFX
trigger1 = animelem=1,1
time = 210
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256
[State 0, VarSet]
type = VarSet
trigger1 = command="y"
trigger2 = time>210
trigger3=var(59)
v = 10
value = root,var(25)

[State 0, PalFXWiz]
type = PalFX
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
time = 1

[State 0, Helper]
type = Helper
trigger1 = command="y"
trigger2=var(59)
helpertype = normal ;player
name = "BIGEXPLOSION"
ID = 15005
stateno = 15006
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
channel = 44
;ignorehitpause = 
;persistent = 


[State 0, ChangeState]
type = ChangeState
trigger1 = command="y"
trigger2=var(59)
value =105
ctrl = 1



[State 0, Helper]
type = Helper
trigger1 = time>210
helpertype = normal ;player
name = "BIGEXPLOSIONF"
ID = 15005
stateno = 15005
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time>209
trigger2 = command="y"
id = 545455



[State 0, ChangeState]
type = ChangeState
trigger1 = time>210
value =0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------;---------------------------------------------------------------------------
;SUICIDESLUGNOID
[Statedef 15050]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18041
sprpriority = 0
velset = 0,-10

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 24
value = root,var(24)

[State 0, VarAdd];remove fuel
type = parentvarset
trigger1 = time>1
v =21
value = 0


[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0;anim=16003&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256


[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype  = Hard
damage    = 80,40
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,2
guardsound = s4000,2;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 2400, 2];CAE
type = VelADD
trigger1 =1
y =.5

[State 0, PalFXWiz]
type = PalFX
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)

[State 0, VarSet]
type = parentVarSet
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
v = 21   ;fv = 10
value = 0


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
value = 15006
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SLGNDFIRECANON
[Statedef 15051]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 16020
sprpriority = 5
velset = 0,5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = TIME=0
value = 4000,3
volumescale = 256
channel = -1

[State 0, Explod]
type = Explod
trigger1 = TIME=0
anim = 1287
ID = 313131
pos = -5,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0


;==========================================================
;ANGULO SEGUN VELOCIDAD:
;==========================================================

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x>0
value=atan(-vel y/vel x)*180/pi


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y<0
value=90

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y>0
value=270


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x<0
value=atan(-vel y/vel x)*180/pi+180

;==========================================================


[State 0, ParentVarSet];Le resta a la variable canion
type = ParentVarSet
triggerall=root,var(24)>0
trigger1 = time=0
v =  24   ;fv = 
value = root,var(24)-1

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA
ignorehitpause = 1



[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 30,15
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4;s4000,1
guardsound = s4000,4;s4000,1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1

ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 0, DestroySelf]
type = changestate
trigger1 = pos y>0
value = 15052

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;FLAMEBSPAMMER
[Statedef 15052]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 1286
sprpriority = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = TIME=0
value = 4000,35
volumescale = 256
channel = -1


[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA
ignorehitpause = 1

[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 0, CANNON]
type = Helper
trigger1 = (animelem=1)||(animelem=2)||(animelem=3)||(animelem=4)||(animelem=5)
helpertype = normal
name = "BIGFLAMEBOMBR"
ID = 13251
stateno = 15053
pos = time*10,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, CANNON]
type = Helper
trigger1 = (animelem=1)||(animelem=2)||(animelem=3)||(animelem=4)||(animelem=5)
helpertype = normal
name = "BIGFLAMEBOMBL"
ID = 13251
stateno = 15053
pos = -time*10,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 0, DestroySelf]
type = destroySelf
trigger1 =animtime=0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BIGFLAMEBOMBS
[Statedef 15053]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 1284
sprpriority = 0
velset = 0,0

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA
ignorehitpause = 1

[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0



[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=1284&&animtime=0
value = 1285

[State 251, HitDef]
type = HitDef
trigger1 = time
attr = S, NA
animtype  = Hard
damage    = 1,1
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,2
guardsound = -1;s4000,2;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 0
envshake.freq = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, DestroySelf]
type = destroySelf
trigger1 = anim=1285&&animtime=0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SLUGGNRFALLING
[Statedef 15054]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18200
sprpriority = 0
velset = 0,5
poweradd=ifelse((root,var(59)=1),-2000,-floor(root,fvar(18)))

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 24
value = 10

[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 27
value = random%2


[State 0, RemapPal]
type = RemapPal
trigger1 =root,var(27)=0
source = 0,53
dest = 0,53

[State 0, RemapPal]
type = RemapPal
trigger1 =root,var(27)=1
source = 0,53
dest = 53,0




[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0


[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=0
value =15055
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SGUNNERENTERHERE
[Statedef 15055]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(root,var(10)=105,18237,18200)
sprpriority = 0
velset = 0,5


[State 0, VelSet]
type = VelSet
trigger1 = pos y>=0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=18237&&animtime=0
value = 18200


[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing&&time=0


[State 0, PosSet]
type = PosSet
trigger1 = root,stateno=14995
x = root,pos x


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, Explod];Enter Here
type = Explod
trigger1 = numexplod(545454)=0&&root,stateno!=14999&&root,var(10)!=103
anim = 20100
ID = 545454
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 11    ;fv = 10
value = root,pos y

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,anim=18201	;ANIM OF ENTERING
id = 545454


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, DestroySelf]
type = DestroySelf 
trigger1=(root,anim=18201)	;ANIM OF ENTERING END
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;EnteringSGUNNER
[Statedef 14995]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(var(10)=0,11047,ifelse(var(10)=15,11049,11048))
sprpriority = 5
velset = 0,0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=1
id = 545454

[State 0, PosSet]
type = PosSet
trigger1 = TIME=0;&&VAR(59)
y = -33


[State 0, NotHitBy]
type = NotHitBy
trigger1 = anim=11047||anim=11048||anim=11049
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1


[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0


[State 0, PosFreeze]
type = PosFreeze
trigger1 = ANIM=11047
trigger2 = ANIM=11048
trigger3 = ANIM=11049
trigger4=anim=18201
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 25    ;fv = 10
value = var(10)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=11047&&animtime=0
trigger2 = anim=11048&&animtime=0
trigger3 = ANIM=11049&&animtime=0
value = 18201

[State 0, PosSet]
type = PosSet
trigger1 = anim=18201
y = 0

[State -3, SLUGGEEntering];SLUGGENTERING
type = PlaySnd
trigger1 = time=0
value = 4000,28
volumescale = 256
channel = -1
freqmul = 1.0


[State 0, VarSet]
type = VarSet
trigger1 = anim=18201&&animelem=1,1
v = 10
value = 105

[State 0, VarSet]
type = VarSet
trigger1 = anim=18201&&animelem=1,1&&var(21)<=0
v = 21
value = 3


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=anim=18201
id = 545453

[State 0, HUDVIDACANION0]
type = RemoveExplod
triggerall=numexplod(9110)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18201&&animelem=2,1
id = 9110


[State 0, cannon]
type = RemoveExplod
triggerall=numexplod(9101)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18201&&animelem=2,1
id = 9101

[State 0, ChangeState]
type = ChangeState
trigger1=anim=18201&&animtime=0&&var(10)=105
value =11
ctrl = 0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SGUNNERCANNON
[Statedef 15056]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 18207
sprpriority = 7                  ;Set p1's sprite layering priority to 2 (in front)


[State 0, CANNON]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "CANNON"
ID = 13250
stateno = 15057
pos = 25,-45
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SGCannon Helper
[Statedef 15057]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 16020
sprpriority = 5
velset = 3+(12-5*root,statetype=a)*(root,palno=4),0

[State 0, PlaySnd];Super Grenade Sound pouwmn
type = PlaySnd
trigger1 = time=0
value = 4000,3
volumescale = 256
channel = -1

[State 0, Explod]
type = Explod
trigger1 = TIME=0
anim = 16023
ID = 313131
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = TIME=0
anim = 16024
ID = 313131
pos = 0,0;-20,20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, EnvColor]
type = EnvColor
trigger1 = movecontact
value = 255,255,255
time = 1

;==========================================================
;ANGULO SEGUN VELOCIDAD:
;==========================================================

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x>0
value=atan(-vel y/vel x)*180/pi


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y<0
value=90

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y>0
value=270


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x<0
value=atan(-vel y/vel x)*180/pi+180

;==========================================================

[State 0, ParentVarSet];Le resta a la variable canion
type = ParentVarSet
triggerall=root,var(24)>0
trigger1 = time=0
v =  24   ;fv = 
value = root,var(24)-1

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 253
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 100,50
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4;s4000,1
guardsound = s4000,4;s4000,1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1

ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1




[State 2400, 2]
type = Veladd
trigger1 =TIME<10
x=.7
y = .1
[State 2400, 2]
type = Veladd
trigger1 =TIME>10
y = 2.8



[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
value = 253

;---------------------------------------------------------------------------
;SGUNNERTURNING
[Statedef 15058]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 18208
sprpriority = 7  
                ;Set p1's sprite layering priority to 2 (in front)
[State 0, Turn]
type = Turn
trigger1 = animtime=0

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SGUNNERCANNONC
[Statedef 15059]
type    = c                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 18209
sprpriority = 7                  ;Set p1's sprite layering priority to 2 (in front)

[State 0, CANNON]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "CANNON"
ID = 13250
stateno = 15057
pos = 25,-20
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;SGUNNERCLAVO
[Statedef 15060]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0
anim = 18214
sprpriority = 7

[State 210, 2]
type = HitDef
trigger1 = animelem=9||animelem=3
attr = S, NA
animtype  = Medium
damage    = 120,60
guardflag = MA
pausetime = 0,0;12,12
sparkno = S18246;s3501
sparkxy = 20,0
hitsound   = s4000,37
guardsound = s4000,37
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0
p1sprpriority=7

[State 0, Helper]
type = Helper
trigger1 = movecontact&&numhelper(3113133)=0&&var(27)=1
helpertype = normal ;player
name = "BIGEXPLOSION"
ID = 3113133
stateno = 15035
pos = 40,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
sprpriority = -1


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = ANIM=18214&&animtime=0
trigger2 = Anim=18215&&animtime=0
value = 18216


[State 210, 5]
type = ChangeState
trigger1 =anim=18216&&AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;SGUNNERJUMPSTART
[Statedef 15061]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 18219
sprpriority = 7                  ;Set p1's sprite layering priority to 2 (in front)

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 15062
ctrl = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SGUNNERJUMP
[Statedef 15062]
type    = A
movetype= A
physics = A
anim = 18220
ctrl = 0
sprpriority = 6
velset=0,-3

[State -3, SV001JUMP]
type = PlaySnd
trigger1=time=0
value = 4000, 26

[State 0, ChangeAnim];FALLING
type = ChangeAnim
trigger1 = vel y>0&&anim!=18222&&anim!=18223&&anim!=18224&&ANIM!=18225
trigger2 = vel y>0&&anim=18224&&animtime=0&&command!="holdfwd"&&command!="holdback"
trigger3 = anim=18225&&animtime=0&&command!="holdfwd"&&command!="holdback"
value = 18221


[State 0, ChangeAnim];FALLINGFWD
type = ChangeAnim
trigger1 = command="holdfwd"&&ANIM!=18222&&anim!=18224&&ANIM!=18225
trigger2 = command="holdfwd"&&anim=18224&&animtime=0
trigger3 = command="holdfwd"&&anim=18225&&animtime=0
value = 18222

[State 0, ChangeAnim];FALLINGBACK
type = ChangeAnim
trigger1 = command="holdback"&&ANIM!=18223&&anim!=18224&&ANIM!=18225
trigger2 = command="holdback"&&anim=18224&&animtime=0
trigger3 = command="holdback"&&anim=18225&&animtime=0
value = 18223


[State 0, ChangeAnim];AIRCANNON
type = ChangeAnim
trigger1 = command="z"&&numhelper(13250)<1+2*(var(27)=1)
value = 18224


[State 0, ChangeAnim];AIRSPRINT
type = ChangeAnim
trigger1 = command="y"&&ANIM!=18225&&numhelper(11250)=0
value = 18225

[State 0, ChangeAnim];AIRSPRINT AI
type = ChangeAnim
trigger1 = var(59)&&ANIM!=18225&&numhelper(11250)=0
value = 18225

[State 0, VelAdd]
type = Velset
trigger1 =helper(11250),animelem=1,1
y = -3

[State 0, VelAdd]
type = Veladd
trigger1 =helper(11250),animelem=3,1
y = -.5




[State 0, CANNON]
type = Helper
trigger1 = anim=18225&&animelem=1,2&&numhelper(11250)=0
helpertype = normal ;player
name = "PROPULSOR"
ID = 11250
stateno = 15063
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 0, CANNON]
type = Helper
trigger1 = anim=18224&&animelem=1,1
helpertype = normal ;player
name = "CANNON"
ID = 13250
stateno = 15057
pos = 25,-50
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 2400, 2]
type = Velset
trigger1 = time<20&&prevstateno!=16664
y = -3

[State 0, VelAdd]
type = VelADD
trigger1 = time>20&&prevstateno!=16664
y = -1.5

[State 2400, 2]
type = Velset
trigger1 = prevstateno=16664
y = 5

[State 211, 4]
type = VELSET
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 211, 5]
type = VELSET
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

;---------------------------------------------------------------------------
;SGUNNERPROPULSORS
[Statedef 15063]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(root,var(27)=0,18226,18238)
sprpriority = 0
velset = 0,0

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA
ignorehitpause = 1

[State -3, GUNNERGETUP]
type = PlaySnd
trigger1 = time=0
value = 4000, 39



[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 =1 
time = 1
pos = -20,-20


[State 0, AngleDraw]
type = AngleDraw
trigger1 = root,vel x>0;root,command="holdfwd"
value = 315

[State 0, AngleDraw]
type = AngleDraw
trigger1 = root,vel x=0;root,command="holdfwd"
value = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = root,vel x<0;root,command="holdback"
value = 45


[State 251, HitDef]
type = HitDef
trigger1 = time
attr = S, NA
animtype  = Hard
damage    = 1,1
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,2
guardsound = -1;s4000,2;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 0
envshake.freq = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, DestroySelf]
type = destroySelf
trigger1 =root,pos y>=0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SGUNNERARM
[Statedef 15064]
type    = S
movetype= a
physics = N
juggle  = 3
ctrl = 0
anim = 18227
sprpriority = 1


[State 0, Turn]
type = Turn
trigger1 = facing!=(root,facing)


;==========ANIMS==================

[State 0, ChangeAnim];DUMMYANIM
type = ChangeAnim
trigger1 = root,anim=18208&&anim!=18229;turning
trigger2 = root,anim=18224&&anim!=18229;cannonair
trigger3 = root,anim=18207&&anim!=18229;cannonstand
trigger4 = root,anim=18209&&anim!=18229;cannonfloor
trigger5 = (root,anim=[18214,18216])&&anim!=18229
value = 18229


[State 0, ChangeAnim];STAND
type = ChangeAnim
trigger1 = ((root,anim=18204)||(root,anim=18202)||(root,anim=18203)||(root,anim=18205))&&anim!=18227&&(anim!=[18230,18236]);Stand
trigger2 = (anim!=[18230,18236])&&(anim!=[18240,18245])&&anim!=18227&&(root,anim=[18220,18223]);Air
trigger3 = ((root,anim=18204)||(root,anim=18202)||(root,anim=18203)||(root,anim=18205)||(root,anim=18218))&&((anim=18231)||(anim=18232)||(anim=18236)||(anim=18245))&&animtime=0
trigger4 = anim!=18233&&anim!=18230&&anim!=18231&&anim!=18232&&anim!=18227&&root,anim=[18210,18213]
trigger5 = ((anim=18231)||(anim=18232)||(anim=18236)||(anim=18242)||(anim=18245))&&animtime=0&&(root,anim=[18220,18223])
trigger6 = root,stateno=15066
value = 18227

[State 0, ChangeAnim];WALKSTAND
type = ChangeAnim
trigger1 = root,anim=18206&&anim!=18228&&anim!=[18230,18236]
value = 18228

[State 0, ChangeAnim];WALKSTAND
type = ChangeAnim
trigger1 = root,anim=18206&&anim=18231&&animtime=0
trigger2 = root,anim=18206&&anim=18232&&animtime=0
value = 18228
elem=root,animelemno(root,time)

[State 0, ChangeAnim];AIMDWSTART
type = ChangeAnim
triggerall = root,anim!=18208&&root,anim!=18224&&root,anim!=18207&&root,anim!=18209
trigger1 = root,command="holddown"&&anim!=18230&&(anim!=[18240,18245])&&anim!=18233&&anim!=18232&&anim!=18234&&anim!=18235&&root,stateno=15062
value = 18240

[State 0, ChangeAnim];AIMDOWN
type = ChangeAnim
trigger1 = root,command="holddown"&anim=18240&&animtime=0
trigger2 = root,command="holddown"&&anim=18243&&animtime=0&&root,command!="x"
value = 18241

[State 0, ChangeAnim];SHOOTDWSTART
type = ChangeAnim
triggerall = root,anim!=18208&&root,anim!=18224&&root,anim!=18207&&root,anim!=18209
trigger1 = root,command="holddown"&&anim=18232&&root,stateno=15062
value = 18243

[State 0, ChangeAnim];SHOOTDW
type = ChangeAnim
triggerall = root,anim!=18208&&root,anim!=18224&&root,anim!=18207&&root,anim!=18209&&roundstate=2
trigger1 = root,command="holddown"&&anim=18243&&animtime=0&&root,command="x"
trigger2 = root,command="holddown"&&root,command="x"&&anim=18241
value = 18244

[State 0, ChangeAnim];SHOOTDWEND
type = ChangeAnim
trigger1 = root,command!="holddown"&&anim=18244
value = 18245

[State 0, ChangeAnim];AIMUPEND
type = ChangeAnim
trigger1 = root,command!="holddown"&&anim=18241
value = 18242

[State 0, ChangeAnim];AIMUPSTART
type = ChangeAnim
triggerall = root,anim!=18208&&root,anim!=18224&&root,anim!=18207&&root,anim!=18209
trigger1 = root,command="holdup"&&anim!=18230&&anim!=18233&&anim!=18232&&anim!=18234&&anim!=18235
value = 18230

[State 0, ChangeAnim];AIMUP
type = ChangeAnim
trigger1 = root,command="holdup"&anim=18230&&animtime=0
trigger2 = root,command="holdup"&&anim=18234&&animtime=0&&root,command!="x"
trigger3 = root,command="holdup"&&anim=18235&&root,command!="x"&&animtime=0
value = 18233

[State 0, ChangeAnim];AIMUPEND
type = ChangeAnim
trigger1 = root,command!="holdup"&&anim=18233
trigger2 = root,command!="holdup"&&anim=18230
value = 18231

[State 0, ChangeAnim];SHOOTFWD
type = ChangeAnim
triggerall = root,anim!=18201&&root,anim!=18208&&root,anim!=18224&&root,anim!=18207&&root,anim!=18209&&(root,anim!=[18214,18216])
triggerall=roundstate=2
triggerall=root,var(21)>0
trigger1 = root,command="x"&&root,command!="holdup"&&(anim!=[18240,18245])
trigger2 = root,command="x"&&anim=18236&&animtime=0
value = 18232

[State 0, ChangeAnim];SHOOTUPSTART
type = ChangeAnim
triggerall = root,anim!=18208&&root,anim!=18224&&root,anim!=18207&&root,anim!=18209
trigger1 = root,command="holdup"&&anim=18232
value = 18234

[State 0, ChangeAnim];SHOOTUP
type = ChangeAnim
triggerall=roundstate=2
triggerall = root,anim!=18208&&root,anim!=18224&&root,anim!=18207&&root,anim!=18209&&roundstate=2
trigger1 = root,command="holdup"&&anim=18234&&animtime=0&&root,command="x"
trigger2 = root,command="holdup"&&root,command="x"&&anim=18233
value = 18235

[State 0, ChangeAnim];SHOOTUP AI
type = ChangeAnim
triggerall=roundstate=2
triggerall = root,anim!=18208&&root,anim!=18224&&root,anim!=18207&&root,anim!=18209&&roundstate=2
trigger1 = var(59)&&anim=18234&&animtime=0
trigger2 = var(59)&&anim=18233&&enemynear,pos y<root,pos y&&enemynear,pos x<5
value = 18235

[State 0, ChangeAnim];SHOOTUPEND
type = ChangeAnim
trigger1 = root,command!="holdup"&&anim=18235
value = 18236


[State 0, ChangeAnim];SHOOTFWD AI
type = ChangeAnim
triggerall=roundstate=2
triggerall =root,anim!=18201&&root,anim!=18208&&root,anim!=18224&&root,anim!=18207&&root,anim!=18209&&(root,anim!=[18214,18216])&&((anim!=18232)||((anim=18232)&&animtime=0))
trigger1 = root,var(59)&&root,command!="holdup"&&(anim!=[18240,18245])
trigger2 = root,var(59)&&anim=18236&&animtime=0
value = 18232
 
;==========BINTOROOT==================
[State 0, BindToRoot]
type = BindToROOT
trigger1=root,anim=18204&&root,animelem=1,1
trigger2=root,anim=18206&&root,animelem=1,1
trigger3=root,anim=18205&&root,animelem=1,1
trigger4=root,anim=18203&&root,animelem=9,1
trigger5=((root,anim=18220)||(root,anim=18204))
time =-1
pos = 41,-20

[State 0, BindToRoot]
type = BindToROOT
trigger1=root,anim=18205&&root,animelem=3,2
trigger2=root,anim=18203&&root,animelem=7,1
time =-1
pos = 37,-16


[State 0, BindToRoot]
type = BindToROOT
trigger1=root,anim=18205&&root,animelem=5,1
trigger2=root,anim=18203&&root,animelem=5,1
time =-1
pos = 35,-12

[State 0, BindToRoot]
type = BindToROOT
trigger1=root,anim=18205&&root,animelem=6,1
trigger2=root,anim=18203&&root,animelem=4,1
time =-1
pos = 35,-6

[State 0, BindToRoot]
type = BindToROOT
trigger1=root,anim=18205&&root,animelem=7,1
trigger2=root,anim=18203&&root,animelem=3,1
time =-1
pos = 35,-4

[State 0, BindToRoot]
type = BindToROOT
trigger1=root,anim=18205&&root,animelem=8,1
trigger2=root,anim=18203&&root,animelem=2,1
time =-1
pos = 38,-4

;==========bullets==================

[State 0, hmgbulletFWRD]
type = Projectile
triggerall=anim=18232
trigger1 = AnimElem = 3,1
trigger2 = AnimElem = 5,1
trigger3 = AnimElem = 7,1
trigger4 = AnimElem = 9,1
trigger5 = AnimElem = 11,1
postype = p1
projanim = 1201
projhitanim = 1998
projpriority = 1
projheightbound = 0,0
projedgebound = 100
projscale=1,1
ProjHits = 1;1+ifelse( p2name="abyss",10,0)
velocity = 10+VEL X,0;15+const(velocity.walk.fwd.x),0
offset =20,ifelse(animelem=1,1,0,ifelse(animelem=3,1,-5,ifelse(animelem=5,1,-10,ifelse(animelem=7,1,0,ifelse(animelem=9,1,-5,ifelse(animelem=11,1,-10,-10))))));97,-104
attr = S, SP
damage   = 11,6
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 0,0
hitsound   = s4000,5
sparkxy = 0,0
guardsound = s4000,6
ground.type = low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.animtype = Back
air.velocity = 0,0
air.fall = 0
down.velocity = 0,0
down.hittime = 0
down.bounce = 0
palfx.time = 3
palfx.add = 248,56,0
numhits=1

[State 0, HMGUP];hmg up
type = Helper
triggerall = anim=18235
trigger1 =animelem=3||animelem=5||animelem=7||animelem=9||animelem=11
helpertype = normal ;player
name = "SGHMG"
ID = 3000;default helper projectile id
stateno = 15065
pos = 0+ifelse((animelem=1)||(animelem=7),-16,ifelse((animelem=3)||(animelem=9),-20,-24)),-57 ;8,-25
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, HMGULUP];hmg transition L up
type = Helper
triggerall = anim=18234;&&vel x=0
trigger1 = animelem=1,1
trigger2=animelem=2,1
trigger3=animelem=3,1
trigger4=animelem=4,1
helpertype = normal ;player
name = "HMG"
ID = 3000;default helper projectile id
stateno = 15065
pos = ifelse((animelem=1,1),25,ifelse((animelem=2,1),15,5)),ifelse((animelem=1,1),-25,ifelse((animelem=2,1),-35,-45)) ;8,-25
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, HMGUUPL];hmg transition up L
type = Helper
triggerall = anim=18236;&&vel x=0
trigger1 = animelem=1,1
trigger2=animelem=2,1
trigger3=animelem=3,1
trigger4=animelem=4,1
helpertype = normal ;player
name = "HMG"
ID = 3000;default helper projectile id
stateno = 15065
pos = ifelse((animelem=1,1),5,ifelse((animelem=2,1),15,25)),ifelse((animelem=1,1),-45,ifelse((animelem=2,1),-35,-25)) ;8,-25
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State 0, HMGUUPL];hmg transition L DW
type = Helper
triggerall = anim=18243;&&vel x=0
trigger1 = animelem=1,1
trigger2=animelem=2,1
trigger3=animelem=3,1
trigger4=animelem=4,1
helpertype = normal ;player
name = "HMG"
ID = 3000;default helper projectile id
stateno = 15065
pos = ifelse((animelem=1,1),25,ifelse((animelem=2,1),15,5)),ifelse((animelem=1,1),25,ifelse((animelem=2,1),35,45))
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State 0, HMGUUPL];hmg transition DW L
type = Helper
triggerall = anim=18245;&&vel x=0
trigger1 = animelem=1,1
trigger2=animelem=2,1
trigger3=animelem=3,1
trigger4=animelem=4,1
helpertype = normal ;player
name = "HMG"
ID = 3000;default helper projectile id
stateno = 15065
pos = ifelse((animelem=1,1),5,ifelse((animelem=2,1),15,25)),ifelse((animelem=1,1),45,ifelse((animelem=2,1),35,25))
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, HMGUUPL];hmg DW
type = Helper
triggerall = anim=18244;&&vel x=0
trigger1 =animelem=3||animelem=5||animelem=7||animelem=9||animelem=11
helpertype = normal ;player
name = "HMG"
ID = 3000;default helper projectile id
stateno = 15065
pos = 0+ifelse((animelem=1)||(animelem=7),-16,ifelse((animelem=3)||(animelem=9),-20,-24)),57 ;8,-25
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;==========sounds==================

[State 0, PlaySnd];hmg Sounds
type = PlaySnd
triggerall=Animelem=1,2
trigger1=anim=18232
trigger2=anim=18236
trigger3=anim=18234
trigger4=anim=18235
trigger5=anim=18243
trigger6=anim=18244
trigger7=anim=18245
value = 4000,9
volumescale = 256
channel = 0


[State 0, Helper]
type = Helper
triggerall = (AnimElem = 3,1)||(AnimElem = 5,1)||(AnimElem = 7,1)||(AnimElem = 9,1)||(AnimElem = 11,1)
trigger1 =anim=18244
trigger2 =anim=18245
trigger3 =anim=18243
trigger4 =anim=18236
trigger5 =anim=18235
trigger6 =anim=18234
trigger7 =anim=18232
helpertype = normal ;player
name = "CARTUCHO"
ID = 525252
stateno = 15070
pos = -55,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1= root,var(10)<100
trigger2=root,numhelper(15101)>1&&time;trigger4=win
trigger3=root,stateno=105
;---------------------------------------------------------------------------
;SGUNNERHMG
[Statedef 15065]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(((parent,anim=18235)||(root,anim=8604)),1202,ifelse(((parent,anim=18234)||(parent,anim=18236)),1203,1203))
sprpriority = 5
velset = 10,0

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 0, VarSet];UP
type = VarSet
triggerall=parent,anim=18235
trigger1 = time=0
v = 3    ;fv = 10
value = 3
ignorehitpause = 
persistent = 

[State 0, VarSet];DIAGUP
type = VarSet
triggerall=parent,anim=18234
trigger1 = time=0
v = 3    ;fv = 10
value = ifelse((parent,anim=18234&&parent,animelem=1,1),4,ifelse((parent,anim=18234&&parent,animelem=2,1),5,6))
ignorehitpause = 
persistent = 


[State 0, VarSet];DIAGUPEND
type = VarSet
triggerall=parent,anim=18236
trigger1 = time=0
v = 3    ;fv = 10
value = ifelse((parent,anim=18236&&parent,animelem=1,1),6,ifelse((parent,anim=18236&&parent,animelem=2,1),5,4))
ignorehitpause = 
persistent = 

[State 0, VarSet]
type = VarSet
triggerall=parent,anim=18244
trigger1 = time=0
v = 3    ;fv = 10
value = 2
ignorehitpause = 
persistent = 


[State 0, VarSet];LTO DOWN
type = VarSet
triggerall=parent,anim=18243
trigger1 = time=0
v = 3    ;fv = 10
value = ifelse((parent,anim=18243&&parent,animelem=1,1),9,ifelse((parent,anim=18243&&parent,animelem=2,1),8,7))
ignorehitpause = 
persistent = 


[State 0, VarSet]
type = VarSet
triggerall=parent,anim=18245
trigger1 = time=0
v = 3    ;fv = 10
value = ifelse((parent,anim=18245&&parent,animelem=1,1),7,ifelse((parent,anim=18245&&parent,animelem=2,1),8,9))
ignorehitpause = 
persistent = 


[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=2
trigger1 = 1
Value = 270 ;Angle must be given on degrees.
 
[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=3
trigger1 = 1
Value = 90

[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=4
trigger1 = 1
Value = 25

[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=5
trigger1 = 1
Value = 45

[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=6
trigger1 = 1
Value = 75

[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=7
trigger1 = 1
Value = 295

[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=8
trigger1 = 1
Value = 315

[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=9
trigger1 = 1
Value = 345

[State 9000, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)<2;cuantas veces sera golpeado hasta explotar
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 260
attr = SCA, NP, SP, HP
ignorehitpause = 1


[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)=2
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 253
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 11,6
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,5
guardsound = s4000,6;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0



[State 0, PosSet]
type = PosSet
triggerall = root,var(10)=5&&root,palno=5
trigger1=frontedgebodydist<=0
x = -backedgedist
y = pos y
;ignorehitpause = 
;persistent = 

[State 2400, 2];Avanza
type = Velset
triggerall=var(3)=1
trigger1 =1;animelem=1;animtime<
x = 10
y =0

[State 2400, 2];Baja
type = Velset
triggerall=var(3)=2
trigger1 =1;animelem=1;animtime<
x = 0
y =10

[State 2400, 2];Sube
type = Velset
triggerall=var(3)=3
trigger1 =1;animelem=1;animtime<
x = 0
y =-10

[State 2400, 2];25 grados
type = Velset
triggerall=var(3)=4
trigger1 =1;animelem=1;animtime<
x = 10
y =-5

[State 2400, 2];45 grados
type = Velset
triggerall=var(3)=5
trigger1 =1;animelem=1;animtime<
x = 10
y =-10

[State 2400, 2];75 grados
type = Velset
triggerall=var(3)=6
trigger1 =1;animelem=1;animtime<
x = 2
y =-10

[State 2400, 2];295 grados
type = Velset
triggerall=var(3)=7
trigger1 =1;animelem=1;animtime<
x = 5
y = 10

[State 2400, 2];315 grados
type = Velset
triggerall=var(3)=8
trigger1 =1;animelem=1;animtime<
x = 10
y = 10

[State 2400, 2];345 grados
type = Velset
triggerall=var(3)=9
trigger1 =1;animelem=1;animtime<
x = 10
y = 2

[State 2400, 2];piso
type = Velset
trigger1 =pos y>0
x = 0
y = 0



[State 0, ChangeAnim]
type = CHANGESTATE
trigger1 = pos y>=0
value = 296

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = anim=1999&&animtime=0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)
value=297
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SelfDestructSGUNNER
[Statedef 15066]
type    = A
movetype= i
physics = N
anim=18204
ctrl = 0
sprpriority = 5
velset=0,5

[State 0, Explod];OUT
type = Explod
trigger1 = time=0&&numexplod(545455)=0&&root,stateno!=14999
anim = 20101
ID = 545455
pos = 0,-60
postype = p1  ;p2,front,back,left,right
facing = ifelse(facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 0, VelSet]
type = VelSet
trigger1 = pos y>0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 4000,22
volumescale = 256
channel = 44


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, PalFXWiz]
type = PalFX
trigger1 = animelem=1,1
time = 210
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarSet]
type = VarSet
trigger1 = command="y"
trigger2 = time>210
trigger3=var(59)
v = 10
value = root,var(25)

[State 0, PalFXWiz]
type = PalFX
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
time = 1

[State 0, Helper]
type = Helper
trigger1 = command="y"
trigger2=var(59)
helpertype = normal ;player
name = "BIGEXPLOSION"
ID = 15005
stateno = 15006
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
channel = 44
;ignorehitpause = 
;persistent = 


[State 0, ChangeState]
type = ChangeState
trigger1 = command="y"
trigger2=var(59)
value =105
ctrl = 1



[State 0, Helper]
type = Helper
trigger1 = time>210
helpertype = normal ;player
name = "BIGEXPLOSIONF"
ID = 15005
stateno = 15005
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time>209
trigger2 = command="y"
id = 545455



[State 0, ChangeState]
type = ChangeState
trigger1 = time>210
value =0
ctrl = 1


;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;SUICIDEPROPULSORSGUNNER
[Statedef 15067]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18238
sprpriority = 0
velset = 0,0

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA
ignorehitpause = 1

[State -3, GUNNERGETUP]
type = PlaySnd
trigger1 = time=0
value = 4000, 39



[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 0, BindToRoot]
type = BindToparent
trigger1 =1 
time = 1
pos = -20,-20


[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 315

[State 251, HitDef]
type = HitDef
trigger1 = time
attr = S, NA
animtype  = Hard
damage    = 1,1
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,2
guardsound = -1;s4000,2;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 0
envshake.freq = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, DestroySelf]
type = destroySelf
trigger1 =parent,stateno!=15068

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SUICIDESGUNNER
[Statedef 15068]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18239
sprpriority = 5
velset =1.5,-6

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, CANNON]
type = Helper
trigger1 = TIME=0&&numhelper(11251)=0
helpertype = normal ;player
name = "PROPULSOR"
ID = 11251
stateno = 15067
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 24    ;fv = 10
value = root,var(24)


[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0;anim=16003&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 10*var(21)+5*var(24)+(root,palno=4)*20,10*var(21)+3*var(24)+(root,palno=4)*20
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 0, PalFXWiz]
type = PalFX
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)
trigger5= animtime=0

[State 0, VarSet]
type = parentVarSet
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
trigger5= 1
v = 21   ;fv = 10
value = 0


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
trigger5= animtime=0
value = 15006
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;CLAVORELOADCARTUCHO
[Statedef 15069]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18247
sprpriority = 3
velset=0,1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 0, VelSet]
type = VelSet
trigger1 = pos y>0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = pos y>=0&&anim!=18248
value = 18248


[State 1105]
type = destroyself
trigger1=anim=18248&&animtime=0


;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;CARTUCHOSSGUNNER
[Statedef 15070]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18249+random%3
sprpriority = -1
velset=-random%3-(random%10)/10,1+(random%10)/10

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1


[State 1105]
type = destroyself
trigger1=pos y>=0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BHOUNDFALLING
[Statedef 15071]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18500
sprpriority = 0
velset = 0,5
poweradd=ifelse((root,var(59)=1),-2000,-floor(root,fvar(18)))

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 5



[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 24
value = 10

[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 27
value = random%2

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=0
value =15072
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BHOUNDENTERHERE
[Statedef 15072]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18500
sprpriority = 0
velset = 0,5

[State 0, VelSet]
type = VelSet
trigger1 = pos y>=0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0


[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing&&time=0


[State 0, PosSet]
type = PosSet
trigger1 = root,stateno=14995
x = root,pos x


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, Explod];Enter Here
type = Explod
trigger1 = numexplod(545454)=0&&root,stateno!=14994&&root,var(10)!=106
anim = 20100
ID = 545454
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 11    ;fv = 10
value = root,pos y

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,anim=18501	;ANIM OF ENTERING
id = 545454


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, DestroySelf]
type = DestroySelf 
trigger1=(root,anim=18501)	;ANIM OF ENTERING END
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;EnteringBLACKHOUND
[Statedef 14994]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(var(10)=0,11047,ifelse(var(10)=15,11049,11048))
sprpriority = 5
velset = 0,0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=1
id = 545454

[State 0, PosSet]
type = PosSet
trigger1 = TIME=0;&&VAR(59)
y = -33


[State 0, NotHitBy]
type = NotHitBy
trigger1 = anim=11047||anim=11048||anim=11049
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1


[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0


[State 0, PosFreeze]
type = PosFreeze
trigger1 = ANIM=11047
trigger2 = ANIM=11048
trigger3 = ANIM=11049
trigger4=anim=18501
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 25    ;fv = 10
value = var(10)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=11047&&animtime=0
trigger2 = anim=11048&&animtime=0
trigger3 = ANIM=11049&&animtime=0
value = 18501

[State 0, PosSet]
type = PosSet
trigger1 = anim=18501
y = 0

[State -3, SLUGGEEntering];SLUGGENTERING
type = PlaySnd
trigger1 = time=0
value = 4000,24
volumescale = 256
channel = -1
freqmul = 1.0


[State 0, VarSet]
type = VarSet
trigger1 = anim=18501&&animelem=1,1
v = 10
value = 106

[State 0, VarSet]
type = VarSet
trigger1 = anim=18501&&animelem=1,1&&var(21)<=0
v = 21
value = 3


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=anim=18501
id = 545453

[State 0, HUDVIDACANION0]
type = RemoveExplod
triggerall=numexplod(9110)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18501&&animelem=2,1
id = 9110


[State 0, cannon]
type = RemoveExplod
triggerall=numexplod(9101)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18501&&animelem=2,1
id = 9101

[State 0, ChangeState]
type = ChangeState
trigger1=anim=18501&&animtime=0&&var(10)=106
value =11
ctrl = 0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MISSILEVulcan
[Statedef 15111]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18506;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 7


[State 0, VarSet];AIENEMYANGLEFINDOUTFACING 1 360° AI
type = VarSet
trigger1=facing=1&&(root,var(59))
v = 44
value = ifelse(abs((enemy,pos x)-pos x)>(enemy,const(size.ground.front)),(atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=-1)*((enemy,pos y)>pos y)+180*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)<(pos y))+180*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)>0)*(enemy,facing=1)*((enemy,pos y)>pos y)),ifelse((enemy,pos y)<pos y,90,270))

[State 0, VarSet];AIENEMYANGLEFINDOUTFACING -1 360° AI (REPARAR)
type = VarSet
trigger1=facing=-1&&(root,var(59))
v = 44
value = ifelse(abs((enemy,pos x)-pos x)>(enemy,const(size.ground.front)),(atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)>pos y)+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)<(pos y))+180*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)>0)*(enemy,facing=-1)*((enemy,pos y)>pos y)),ifelse((enemy,pos y)<pos y,90,270))

[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 43
value = floor(enemy,pos y)

;[State 0, DisplayToClipboard]
;type = DisplayToClipboard
;trigger1 = time
;text = "var(44) = %d var(45) = %d var(43) = %d"
;params = var(44),var(45),var(43)


[State 0, VarSet]
type = VarSet
trigger1=anim=18507&&animelem=1,1
trigger2=anim=18506
v = 51    ;fv = 10
value = 0


[State 0, VarAdd]
type = parentvarset
trigger1 = 1
v =51
value = var(51)

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, RemapPal]
type = RemapPal
trigger1 =1
source = 0,17
dest = 17,0


;BINDSSTART====================================
[State 0, BindToRoot]
type = BindToRoot
triggerall=root,anim!=18511
trigger1 = 1
time = -1
facing = 1
pos = -21, -22

[State 0, BindToRoot]
type = BindToRoot
trigger1=root,anim=18511&&root,animelem=2,1
trigger2=root,anim=18511&&root,animelem=15,1
time = -1
facing = 1
pos = -21, -28

[State 0, BindToRoot]
type = BindToRoot
trigger1=root,anim=18511&&root,animelem=4,1
trigger2=root,anim=18511&&root,animelem=13,1
time = -1
facing = 1
pos = -21, -29

[State 0, BindToRoot]
type = BindToRoot
trigger1=root,anim=18511&&root,animelem=6,1
time = -1
facing = 1
pos = -21, -33

;BINDSEND====================================


[State 0, VarSet]
type = VarSet
trigger1=var(44)>=360
v = 44    ;fv = 10
value = 0

[State 0, VarSet]
type = VarSet
trigger1=var(44)<0
v = 44    ;fv = 10
value = 360


[State 0, VarSet]
type = VarSet
trigger1=var(44)>45&&var(44)<180&&(root,var(10)=101)
v = 44    ;fv = 10
value = 45

[State 0, VarSet]
type = VarSet
trigger1=(var(44)<315)&&(var(44)>180)&&(root,var(10)=101)
v = 44    ;fv = 10
value = 315

[State 0, Muevearriba1]
type = varadd
triggerall= root,command="holdup"&&(var(44)>90&&var(44)<270)&&(root,var(59))=0
trigger1=time
v=44
value = -5

[State 0, Muevearriba2]
type = varadd
triggerall= root,command="holdup"&&(var(44)<90||var(44)>270)&&(root,var(59))=0
trigger1=time
v=44
value =5


[State 0, MueveAdelante1]
type = varadd
triggerall= root,command="holdfwd"&&(var(44)>180)&&(root,var(59))=0
trigger1=time
v=44
value = 5;3;2

[State 0, MueveAdelante2]
type = varadd
triggerall= root,command="holdfwd"&&(var(44)<=180)&&(var(44)!=0)&&(root,var(59))=0
trigger1=time
v=44
value = -5;3;2

[State 0, MueveAtras1]
type = varadd
triggerall= root,command="holdback"&&(var(44)<180)&&(root,var(59))=0
trigger1=time
v=44
value = 5;3;2

[State 0, MueveAtras2]
type = varadd
triggerall= root,command="holdback"&&(var(44)>=180)&&(root,var(59))=0
trigger1=time
v=44
value = -5;3;2


[State 0, MueveAbajo1]
type = varadd
triggerall= root,command="holddown"&&(var(44)<=90||var(44)>=270)&&(root,var(59))=0&&(root,var(10)!=101)
trigger1=time
v=44
value = -5;3;2

[State 0, MueveAbajo2]
type = varadd
triggerall= root,command="holddown"&&(var(44)>=90&&var(44)<=270)&&(root,var(59))=0
trigger1=time
v=44
value = 5;3;2


[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value=var(44)


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=18507&&animtime=0
value = 18506


[State 0, ChangeAnim]
type = ChangeAnim
triggerall=roundstate=2
trigger1 = root,command="x"
trigger2=root,command="holdx"&&time*tickspersecond&&animtime=0&&root,palno=4
trigger3=root,var(59)&&time&&animtime=0;time*tickspersecond&&animtime=0
value = 18507



[State 0, VarSet]
type = Varadd
trigger1 = AnimElem = 1,1||animelem=5,1||animelem=9,1
v = 53   ;fv = 10
value = -1


[State 0, VarSet]
type = Varset
trigger1 = var(53)<=0
v = 53   ;fv = 10
value = 4

[State 0, Helper]
type = Helper
trigger1=anim=18507
trigger1 = (AnimElem = 1,1)
helpertype = normal ;player
name = "ENEMYCHASER"
ID = 15001
stateno = 15112
pos = (cos(((var(44)+45)*pi)/180)*26),-(sin(((var(44)+45)*pi)/180)*26);-(sin((var(44)*pi)/180)*26)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1=anim=18507
trigger1 = AnimElem = 1,1
value = 4000,8
volumescale = 256
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 0, DestroySelf]
type = DestroySelf;trigger1 =root,movetype=htrigger1= root,var(10)<100
trigger1=root,numhelper(15101)>1&&time;trigger4=win
trigger2=numhelper(15000)
trigger3=root,var(10)<100
;trigger4=root,stateno=15016 ;STATENO DE SELFDESTRUCT


[State 0, ChangeState]
type = ChangeState
trigger1 = root,stateno=15075
trigger2 = numhelper(15666)
value =301
ctrl = 0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BHOUNCHASER
[Statedef 15112]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 1221
sprpriority = 5
velset = (cos((parent,var(44)*pi)/180)*10),(-sin((parent,var(44)*pi)/180)*10)


[State 0, RemapPal]
type = RemapPal
trigger1 =1
source = 0,24
dest = 24,0



[State 0, Helper]
type = Helper
trigger1 = animelem=1,1
helpertype = normal ;player
name = "SmokeTrail"
ID = 515151
stateno = 305
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = time=0&&(parent,var(44)>=90)
v = 3    ;fv = 10
value = 1
ignorehitpause = 
persistent = 


;==========================================================
;ANGULO SEGUN VELOCIDAD:
;==========================================================

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x>0
value=atan(-vel y/vel x)*180/pi


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y<0
value=90

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y>0
value=270


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x<0
value=atan(-vel y/vel x)*180/pi+180

;==========================================================





[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)<2;cuantas veces sera golpeado hasta explotar
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 302
attr = SCA, NP, SP, HP
ignorehitpause = 1


[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)=2
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 302
attr = SCA, NP, SP, HP
ignorehitpause = 1

;HOMING PROJECTILE
;
;[State ****: Turn]
;type = Turn
;trigger1 = (P2Dist X < 10)

[State ****: VelSet]
type = VelSet
trigger1 = (!Time)
x = 3

[State ****: VelAdd]
type = VelAdd
trigger1 = (P2Dist X < 0) && (Vel X > -8);-6)
x = -.8;.4;0.2

[State ****: VelAdd]
type = VelAdd
trigger1 = (P2Dist X > 0) && (Vel X < 8);6)
x = .8;.4;0.2

[State ****: VelAdd]
type = VelAdd
trigger1 = (EnemyNear, Pos Y -25> Pos Y) && (Vel Y < 3);6)
y = .6;0.2

[State ****: VelAdd]
type = VelAdd
trigger1 = (EnemyNear, Pos Y -25<= Pos Y) && (Vel Y > -3);6)
y = -.6;.2;0.2

;HOMING PROJECTILE END
[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 25,12
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,7
guardsound = s4000,7;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 2400, 2];angulo bajo
type = Velset
triggerall=var(3)=1&&time<5
trigger1 =1;animelem=1;animtime<
x = (cos((parent,var(44)*pi)/180)*10)
y =(-sin((parent,var(44)*pi)/180)*10)


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = frontedgedist <=-50
trigger3 = (pos y<root,pos y-250)
trigger4=enemy,alive=0&&numenemy=1
trigger5=pos y>0
trigger6=time>200
value = ifelse(var(3)=1,302,ifelse(var(3)=2,304,303))



;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BHOUNDCannon
[Statedef 15073]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 16020
sprpriority = 5
velset = ifelse(root,var(27)=1,7,ifelse(root,vel x>0,root,vel x,0)),0-(root,vel y)/5;-.15-(root,vel y)/5;5,0;.15+root,vel x,-.15-(root,vel y)/5;5,0

[State 0, PlaySnd];Super Grenade Sound pouwmn
type = PlaySnd
trigger1 = time=0
value = 4000,3
volumescale = 256
channel = -1


[State 0, Explod]
type = Explod
trigger1 = TIME=0
anim = ifelse(root,anim=18508,16023,16022)
ID = 313131
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = TIME=0
trigger1 = root,anim=18508
anim = 16024
ID = 313131
pos = -20,20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, EnvColor]
type = EnvColor
trigger1 = movecontact
value = 255,255,255
time = 1

[State 0, VarSet]
type = VarSet
trigger1=var(44)>360
trigger2=time=0
v = 44    ;fv = 10
value = 360

[State 0, varadd]
type = varadd
triggerall =var(44)>270&&time>8
trigger1=time
v=44
value=-2

[State 0, VarSet]
type = VarSet
trigger1=var(44)<0
v = 44    ;fv = 10
value = 359

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(44)

[State 0, ParentVarSet];Le resta a la variable canion
type = ParentVarSet
triggerall=root,var(24)>0
trigger1 = time=0
v =  24   ;fv = 
value = root,var(24)-1

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 253
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 100,50
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4;s4000,1
guardsound = s4000,4;s4000,1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1

ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1




[State 2400, 2]
type = Veladd
trigger1 =time<10
x=.15
y = -.15


[State 2400, 2]
type = Veladd
triggerall=root,var(27)=0
trigger1 =time>10
y = .15





[State 2400, 2]
type = Veladd
triggerall=root,var(27)=1
trigger1 =time>10
y = 1


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
value = 253

;---------------------------------------------------------------------------
;BHOUNDCANNONSHOOT
[Statedef 15074]
type    = U                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 18508


[State 0, CANNON]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "BHCANNON"
ID = 13250
stateno = 15073
pos = 25,-45
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 200, 3]
type = ChangeState
trigger1 = command="holdfwd"||command="holdback"
value = 20
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SelfDestructBLACKGHOUND
[Statedef 15075]
type    = A
movetype= i
physics = N
anim=18515
ctrl = 0
sprpriority = 5
velset=0,5

[State 0, Explod];OUT
type = Explod
trigger1 = time=0&&numexplod(545455)=0&&root,stateno!=14994
anim = 20101
ID = 545455
pos = 0,-60
postype = p1  ;p2,front,back,left,right
facing = ifelse(facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 0, VelSet]
type = VelSet
trigger1 = pos y>0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 4000,22
volumescale = 256
channel = 44


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, PalFXWiz]
type = PalFX
trigger1 = animelem=1,1
time = 210
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarSet]
type = VarSet
trigger1 = command="y"
trigger2 = time>210
trigger3=var(59)
v = 10
value = root,var(25)

[State 0, PalFXWiz]
type = PalFX
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
time = 1

[State 0, Helper]
type = Helper
trigger1 = command="y"
trigger2=var(59)
helpertype = normal ;player
name = "BIGEXPLOSION"
ID = 15005
stateno = 15006
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
channel = 44
;ignorehitpause = 
;persistent = 


[State 0, ChangeState]
type = ChangeState
trigger1 = command="y"
trigger2=var(59)
value =105
ctrl = 1



[State 0, Helper]
type = Helper
trigger1 = time>210
helpertype = normal ;player
name = "BIGEXPLOSIONF"
ID = 15005
stateno = 15005
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time>209
trigger2 = command="y"
id = 545455



[State 0, ChangeState]
type = ChangeState
trigger1 = time>210
value =0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SUICIDEBLACKHOUND
[Statedef 15076]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18516
sprpriority = 5
velset = 7,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 24    ;fv = 10
value = root,var(24)


[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0;anim=16003&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 10*var(21)+5*var(24)+(root,palno=4)*20,10*var(21)+3*var(24)+(root,palno=4)*20
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 2400, 2];Avanza
type = Velset
triggerall=var(3)=1
trigger1 =1;animelem=1;animtime<
x = 6
y =0

[State 2400, 2];Baja
type = Velset
triggerall=var(3)=2
trigger1 =1;animelem=1;animtime<
x = 0
y =6

[State 2400, 2];Sube
type = Velset
triggerall=var(3)=3
trigger1 =1;animelem=1;animtime<
x = 0
y =-6


[State 0, PalFXWiz]
type = PalFX
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)

[State 0, VarSet]
type = parentVarSet
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
v = 21   ;fv = 10
value = 0


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
value = 15006
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;LEAVINGBLACKHOUND
[Statedef 15077]
type    = c
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18517
sprpriority = 5
velset = 0,0


[State 0, VLeavingVehicle2b]
type = VarSet
trigger1 = animtime=0
v = 10    ;fv = 10
value = var(25)

[State 0, PosAdd]
type = PosAdd
trigger1 = animtime=0
y = -20




[State 0, ChangeState]
type = ChangeState
trigger1 = animtime=0
value =105

;---------------------------------------------------------------------------
;MORTARBLACKHOUND
[Statedef 15078]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18518
sprpriority = 7


[State 0, VarSet];AIENEMYANGLEFINDOUTFACING 1 360° AI
type = VarSet
trigger1=facing=1&&(root,var(59))
v = 44
value = ifelse(abs((enemy,pos x)-pos x)>(enemy,const(size.ground.front)),(atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=-1)*((enemy,pos y)>pos y)+180*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)<(pos y))+180*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)>0)*(enemy,facing=1)*((enemy,pos y)>pos y)),ifelse((enemy,pos y)<pos y,90,270))

[State 0, VarSet];AIENEMYANGLEFINDOUTFACING -1 360° AI (REPARAR)
type = VarSet
trigger1=facing=-1&&(root,var(59))
v = 44
value = ifelse(abs((enemy,pos x)-pos x)>(enemy,const(size.ground.front)),(atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)>pos y)+360*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)<0)*((enemy,facing)=1)*((enemy,pos y)<(pos y))+180*((atan(-((enemy,pos y)-pos y)/((enemy,pos x)-pos x))*180/pi)>0)*(enemy,facing=-1)*((enemy,pos y)>pos y)),ifelse((enemy,pos y)<pos y,90,270))

[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 43
value = floor(enemy,pos y)

;[State 0, DisplayToClipboard]
;type = DisplayToClipboard
;trigger1 = time
;text = "var(44) = %d var(45) = %d var(43) = %d"
;params = var(44),var(45),var(43)


[State 0, VarSet]
type = VarSet
trigger1=anim=18507&&animelem=1,1
trigger2=anim=18506
v = 51    ;fv = 10
value = 0


[State 0, VarAdd]
type = parentvarset
trigger1 = 1
v =51
value = var(51)

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
facing = 1
pos = -26, -6

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=18519&&animtime=0
value = 18518

[State 0, ChangeAnim]
type = ChangeAnim
triggerall=numhelper(15079)<3
triggerall=roundstate=2
trigger1 = root,command="x"&&root,command="holdb"
trigger2=root,var(59)&&time&&animtime=0;time*tickspersecond&&animtime=0
value = 18519



[State 0, VarSet]
type = Varadd
trigger1 = AnimElem = 1,1||animelem=5,1||animelem=9,1
v = 53   ;fv = 10
value = -1


[State 0, VarSet]
type = Varset
trigger1 = var(53)<=0
v = 53   ;fv = 10
value = 4

[State 0, Helper]
type = Helper
trigger1=anim=18519
trigger1 = (AnimElem = 1,1)
helpertype = normal ;player
name = "MORTAR"
ID = 15079
stateno = 15079
pos = 0,-40
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1=anim=18507
trigger1 = AnimElem = 1,1
value = 4000,8
volumescale = 256
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 0, DestroySelf]
type = DestroySelf;trigger1 =root,movetype=htrigger1= root,var(10)<100
trigger1=root,numhelper(15101)>1&&time;trigger4=win
trigger2=numhelper(15000)
trigger3=parent,var(10)<100

[State 0, ChangeState]
type = ChangeState
trigger1 = root,stateno=15075
trigger2 = numhelper(15666)
value =301
ctrl = 0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MORTAR
[Statedef 15079]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18520
sprpriority = 5
velset = ifelse(root,vel x>0,root,vel x,0),-4

[State 0, PlaySnd];mortar sound
type = PlaySnd;
trigger1 = time=0
value = s4000,40
channel = 5

[State 0, Helper]
type = Helper
trigger1 = animelem=1,1
helpertype = normal ;player
name = "SmokeTrail"
ID = 515151
stateno = 305
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = time=0&&(parent,var(44)>=90)
v = 3    ;fv = 10
value = 1
ignorehitpause = 
persistent = 


;==========================================================
;ANGULO SEGUN VELOCIDAD:
;==========================================================

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x>0
value=atan(-vel y/vel x)*180/pi


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y<0
value=90

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y>0
value=270


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x<0
value=atan(-vel y/vel x)*180/pi+180

;==========================================================





[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)<2;cuantas veces sera golpeado hasta explotar
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 302
attr = SCA, NP, SP, HP
ignorehitpause = 1


[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)=2
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 302
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 65,32
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 0, VelAdd]
type = VelAdd
trigger1 = time<20
x = .1


[State 0, VelAdd]
type = VelAdd
trigger1 = time>20
y = .2


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = frontedgedist <=-50
trigger3 = (pos y<root,pos y-250)
trigger4=enemy,alive=0&&numenemy=1
trigger5=pos y>0
trigger6=time>200
value = 15080



;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MORTARExplosionL
[Statedef 15080]
type    = s                      
movetype= a                      
physics = s
anim = 1291
sprpriority = 4
velset = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 9000, AngleDraw]
type = AngleDraw
value=0
scale=.7,.7
trigger1 = 1

[State 0, PlaySnd]
type = PlaySnd;
trigger1 = time=0
value = s4000,4
volume = 255
channel = 5

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0



[State 251, HitDef]
type = HitDef
trigger1 = (animelem=1,1)||(animelem=2,1)||(animelem=3,1)||(animelem=4,1)
trigger2 =(animelem=5,1)||(animelem=6,1)||(animelem=7,1)||(animelem=8,1)
trigger3 =(animelem=9,1)||(animelem=10,1)||(animelem=11,1)||(animelem=12,1)
trigger4 =(animelem=13,1)||(animelem=14,1)||(animelem=15,1)||(animelem=16,1)
trigger5 =(animelem=17,1)||(animelem=18,1)||(animelem=19,1)
attr = S, SP
animtype  = Hard
damage    = 1,1
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy=0,0
hitsound   =-1;s4000,1
guardsound =-1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;envshake.time = 8
;envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 1105]
type = destroyself
trigger1 = animtime = 0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BHOUNDLASERT
[Statedef 15081]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 18521

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S4000,24
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=18522&&animelem=1,1
value = S4000,24
channel = 0

[State 0, VarSet];Le resta a la variable canion
type =VarSet
triggerall=var(24)>0
trigger1 = time=0
v =  24   ;fv = 
value = var(24)-1

[State 0, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1


[State 0, CANNON]
type = Helper
trigger1 = anim=18521&&animelem=2,1
helpertype = normal ;player
name = "BHLASERGUN"
ID = 13250
stateno = 15082
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = ANIM=18521&&animelem=4&&numhelper(13250)=0
trigger2 = ANIM=18521&&animelem=5&&numhelper(13250)=0
value = 18522

[State 200, 3]
type = ChangeState
trigger1 = ANIM=18522&&AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;LASERGUNBH
[Statedef 15082]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18523
sprpriority = 7


[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1
pos = 0,0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=18523&&animelem=1,1
trigger2 = anim=18523&&animelem=20,1
value = S4000,41
channel = 31

[State 0, PlaySnd]
type = stopsnd
trigger1 = anim=18523&&animtime=0
channel = 31

[State 0, VarSet]
type = VarSet
trigger1=anim=18523&&animelem=1,1
v = 51
value = 0


[State 0, VarAdd]
type = parentvarset
trigger1 = 1
v =51
value = var(51)

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1



[State 0, Helper]
type = Helper
trigger1=anim=18523&&NUMHELPER(15083)=0
trigger1 = (AnimElem = 12)
helpertype = normal ;player
name = "LASERBH"
ID = 15083
stateno = 15083
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State 0, DestroySelf]
type = DestroySelf
trigger1=animtime=0

[State 0, ChangeState]
type = ChangeState
trigger1 = root,stateno=15075
trigger2 = numhelper(15666)
trigger3 = root,stateno=16664
trigger4 = root,var(10)<100
value =301
ctrl = 0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;LASERBH
[Statedef 15083]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18524
sprpriority = 5

[State 0, BindToRoot]
type = BindToparent
trigger1 = 1
time = -1
pos = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S4000,42
channel = 0


[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 15083
attr = SCA
ignorehitpause = 1


[State 251, HitDef]
type = HitDef
trigger1 = 1
attr = S, HA
animtype  = Hard
damage    = 8,4
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1
guardsound = -1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = animtime=0
channel = 0



[State 0, DestroySelf]
type = destroyself
trigger1 =animtime=0
trigger2=numhelper(15000)
trigger3 = root,stateno=15075
trigger4 = numhelper(15666)
trigger5 = root,stateno=16664
trigger6 = numhelper(13250)=0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BRADLEYFALLING
[Statedef 15084]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18600
sprpriority = 0
velset = 0,5
poweradd=ifelse((root,var(59)=1),-2000,-floor(root,fvar(18)))

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 24
value = 10

[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 27
value = random%2

[State 0, RemapPal]
type = RemapPal
triggerall=((root,palno!=6)&&(root,palno!=7))
trigger1 = root,var(27)=0
source = 0,56
dest = 56,0

[State 0, RemapPal]
type = RemapPal
triggerall=((root,palno=6)||(root,palno=7))
trigger1 = root,var(27)=0
source = 0,56
dest = 0,56


[State 0, RemapPal]
type = RemapPal
trigger1 = root,var(27)=1
source = 0,56
dest = 56,1



[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=0
value =15085
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BRADLEYENTERHERE
[Statedef 15085]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18600
sprpriority = 0
velset = 0,5



[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing&&time=0


[State 0, RemapPal]
type = RemapPal
triggerall=((root,palno!=6)&&(root,palno!=7))
trigger1 = root,var(27)=0
source = 0,56
dest = 56,0

[State 0, RemapPal]
type = RemapPal
triggerall=((root,palno=6)||(root,palno=7))
trigger1 = root,var(27)=0
source = 0,56
dest = 0,56


[State 0, RemapPal]
type = RemapPal
trigger1 = root,var(27)=1
source = 0,56
dest = 56,1

;[State 0, PosSet]
;type = PosSet
;trigger1 = root,stateno=14993
;x = root,pos x
[State 0, PosSet]
type =velset
trigger1 = pos y>=0
y=0
[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y=0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, Explod];Enter Here
type = Explod
trigger1 = numexplod(545454)=0&&root,stateno!=14993&&root,var(10)!=106
anim = 20100
ID = 545454
pos = 15,-40
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 11    ;fv = 10
value = root,pos y

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,anim=18601	;ANIM OF ENTERING
id = 545454


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, DestroySelf]
type = DestroySelf 
trigger1=(root,anim=18601)&&root,animelem=1,2	;ANIM OF ENTERING END
trigger2=root,var(10)=107
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BRADLEYJUMP
[Statedef 15086]
type    = A
movetype= A
physics = A
anim = 18614
ctrl = 0
sprpriority = 6
velset=0,-3

[State 0, Helper]
type = Helper
trigger1=numhelper(515252)=0&&time=0
trigger1 =time=0
helpertype = normal ;player
name = "Propulsor"
ID = 515252
stateno = 15087
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 2400, 2]
type = Velset
trigger1 = time<20&&prevstateno!=16664
y = -2-1*(var(27)=1)

[State 0, VelAdd]
type = VelADD
trigger1 = time>20&&prevstateno!=16664
y = -1.5

[State 2400, 2]
type = Velset
trigger1 = prevstateno=16664
y = 5

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = command="z"
trigger1=numhelper(13250)<1+(var(27)=1)
trigger1=var(24)>0
value = 18627


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =anim=18527&&animtime=0
value = 18628

;var(24)=10,6,2================================================
[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 = anim=18627
trigger1 = animelem=1,1
trigger1 = ((var(24)%(10))=(0))||((var(24)%(10))=(6))||((var(24)%(10))=(2));(var(24)=(10))||(var(24)=(6)||(var(24)=2)
helpertype = normal ;player
name = "Missilefx1Pos1"
ID = 115252
stateno = 15091
pos = -36,-40
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 = anim=18627
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(0))||((var(24)%(10))=(6))||((var(24)%(10))=(2));(var(24)=(10))||(var(24)=(6)||(var(24)=2)
helpertype = normal ;player
name = "Missilefx2Pos1"
ID = 125252
stateno = 15092
pos = 46,-121
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 = anim=18627
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(0))||((var(24)%(10))=(6))||((var(24)%(10))=(2));(var(24)=(10))||(var(24)=(6)||(var(24)=2)
helpertype = normal ;player
name = "MissileBradleyPos1"
ID = 13250
stateno = 15093
pos = 21,-93
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;var(24)=9,5,1================================================

[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 = anim=18627
trigger1 = animelem=1,1
trigger1 = ((var(24)%(10))=(9))||((var(24)%(10))=(5))||((var(24)%(10))=(1));(var(24)=9)||(var(24)=5)||(var(24)=1)
helpertype = normal ;player
name = "Missilefx1Pos2"
ID = 115252
stateno = 15091
pos = -33,-35
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 = anim=18627
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(9))||((var(24)%(10))=(5))||((var(24)%(10))=(1));(var(24)=9)||(var(24)=5)||(var(24)=1)
helpertype = normal ;player
name = "Missilefx2Pos2"
ID = 125252
stateno = 15092
pos = 53,-113
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 = anim=18627
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(9))||((var(24)%(10))=(5))||((var(24)%(10))=(1));(var(24)=9)||(var(24)=5)||(var(24)=1)
helpertype = normal ;player
name = "MissileBradleyPos2"
ID = 13250
stateno = 15093
pos = 28,-85
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;var(24)=8,4================================================

[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 = anim=18627
trigger1 = animelem=1,1
trigger1 = ((var(24)%(10))=(8))||((var(24)%(10))=(4));(var(24)=8)||(var(24)=4)
helpertype = normal ;player
name = "Missilefx1Pos3"
ID = 115252
stateno = 15091
pos = -30,-40
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 = anim=18627
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(8))||((var(24)%(10))=(4));(var(24)=8)||(var(24)=4)
helpertype = normal ;player
name = "Missilefx2Pos3"
ID = 125252
stateno = 15092
pos = 54,-119
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 = anim=18627
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(8))||((var(24)%(10))=(4));(var(24)=8)||(var(24)=4)
helpertype = normal ;player
name = "MissileBradleyPos3"
ID = 13250
stateno = 15093
pos = 29,-91
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;var(24)=7,3================================================

[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 = anim=18627
trigger1 = animelem=1,1
trigger1 = ((var(24)%(10))=(7))||((var(24)%(10))=(3));(var(24)=7)||(var(24)=3)
helpertype = normal ;player
name = "Missilefx1Pos4"
ID = 115252
stateno = 15091
pos = -30,-35
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 = anim=18627
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(7))||((var(24)%(10))=(3));(var(24)=7)||(var(24)=3)
helpertype = normal ;player
name = "Missilefx2Pos4"
ID = 125252
stateno = 15092
pos = 61,-112
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 = anim=18627
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(7))||((var(24)%(10))=(3));(var(24)=7)||(var(24)=3)
helpertype = normal ;player
name = "MissileBradleyPos4"
ID = 13250
stateno = 15093
pos = 36,-84
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 211, 4]
type = VELSET
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)/2+const(velocity.walk.fwd.x)/3*(var(27)=1)

[State 211, 5]
type = VELSET
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)/2+const(velocity.walk.back.x)/3*(var(27)=1)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BRADLEYPROPULSOR
[Statedef 15087]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18616
sprpriority = 5
velset=0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = TIME=0
value = 4000,43
volumescale = 256
channel = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1;facing = 0
pos = 0,0
;ignorehitpause = 
;persistent = 


[State 1105]
type = destroyself
trigger1=animtime=0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SelfDestructBRADLEY
[Statedef 15088]
type    = A
movetype= i
physics = N
anim=18605
ctrl = 0
sprpriority = 5
velset=0,5

[State 0, Explod];OUT
type = Explod
trigger1 = time=0&&numexplod(545455)=0&&root,stateno!=14993
anim = 20101
ID = 545455
pos = 15,-25
postype = p1  ;p2,front,back,left,right
facing = ifelse(facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 0, VelSet]
type = VelSet
trigger1 = pos y>0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 4000,22
volumescale = 256
channel = 44


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, PalFXWiz]
type = PalFX
trigger1 = animelem=1,1
time = 210
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarSet]
type = VarSet
trigger1 = command="y"
trigger2 = time>210
trigger3=var(59)
v = 10
value = root,var(25)

[State 0, PalFXWiz]
type = PalFX
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
time = 1

[State 0, Helper]
type = Helper
trigger1 = command="y"
trigger2=var(59)
helpertype = normal ;player
name = "BIGEXPLOSION"
ID = 15005
stateno = 15006
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
channel = 44
;ignorehitpause = 
;persistent = 


[State 0, ChangeState]
type = ChangeState
trigger1 = command="y"
trigger2=var(59)
value =105
ctrl = 1



[State 0, Helper]
type = Helper
trigger1 = time>210
helpertype = normal ;player
name = "BIGEXPLOSIONF"
ID = 15005
stateno = 15005
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time>209
trigger2 = command="y"
id = 545455



[State 0, ChangeState]
type = ChangeState
trigger1 = time>210
value =0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SUICIDE BRADLEY
[Statedef 15089]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18617
sprpriority = 5
velset = 5+const(velocity.walk.fwd.x),0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 24    ;fv = 10
value = root,var(24)


[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0;anim=16003&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 0, VarSet]
type = VarSet
triggerall=root,palno=5&&root,var(10)=0
trigger1 = time=0
v = 3    ;fv = 10
value = ifelse(parent,anim=11200,3,ifelse(parent,anim=600,2,1))
ignorehitpause = 
persistent = 

[State 0, VarSet]
type = VarSet
triggerall=root,var(10)=5
trigger1 = time=0
v = 3    ;fv = 10
value = ifelse(parent,anim=11201,3,ifelse(parent,anim=8600,2,1))
ignorehitpause = 
persistent = 

[State 0, VarSet]
type = VarSet
triggerall=root,var(10)=5&&root,palno=5
trigger1 = pos y<root,pos y - 300
v = 3    ;fv = 10
value = 2
ignorehitpause = 
persistent = 

[State 0, PosSet]
type = PosSet
triggerall=root,var(10)=5&&root,palno=5
trigger1 = pos y<root,pos y - 300
x = enemy,pos x
y = pos y


[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 13*var(21)+5*var(24)+(root,palno=4)*20,10*var(21)+3*var(24)+(root,palno=4)*20
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 2400, 2];Avanza
type = Velset
triggerall=var(3)=1
trigger1 =1;animelem=1;animtime<
x = 6
y =0

[State 2400, 2];Baja
type = Velset
triggerall=var(3)=2
trigger1 =1;animelem=1;animtime<
x = 0
y =6

[State 2400, 2];Sube
type = Velset
triggerall=var(3)=3
trigger1 =1;animelem=1;animtime<
x = 0
y =-6


[State 0, PalFXWiz]
type = PalFX
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)

[State 0, VarSet]
type = parentVarSet
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
v = 21   ;fv = 10
value = 0


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
value = 15006
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;LEAVINGBRADLEY
[Statedef 15090]
type    = c
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18618
sprpriority = 5
velset = 0,0


[State 0, VLeavingVehicle2b]
type = VarSet
trigger1 = animtime=0
v = 10    ;fv = 10
value = var(25)

[State 0, PosAdd]
type = PosAdd
trigger1 = animtime=0
y = -20




[State 0, ChangeState]
type = ChangeState
trigger1 = animtime=0
value =105

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;EnteringBRADLEY
[Statedef 14993]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(var(10)=0,11047,ifelse(var(10)=15,11049,11048))
sprpriority = 5
velset = 0,0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=1
id = 545454

[State 0, PosSet]
type = PosSet
trigger1 = TIME=0;&&VAR(59)
y = -25

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, Turn]
type = Turn
trigger1 = (facing=1)&&helper(15000),facing=-1
trigger2 = (facing=-1)&&helper(15000),facing=1



[State 0, NotHitBy]
type = NotHitBy
trigger1 = anim=11047||anim=11048||anim=11049
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1


[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0


[State 0, PosFreeze]
type = PosFreeze
trigger1 = ANIM=11047
trigger2 = ANIM=11048
trigger3 = ANIM=11049
trigger4=anim=18601
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 25    ;fv = 10
value = var(10)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=11047&&animtime=0
trigger2 = anim=11048&&animtime=0
trigger3 = ANIM=11049&&animtime=0
value = 18601

;[State 0, PosSet]
;type = PosSet
;trigger1 = anim=18601
;y = 0

[State 0, PosSet]
type = PosSet
trigger1 = anim=18601
y = 0
[State 0, PosSet]
type = PosSet
trigger1 = numhelper(15000)
x = helper(15000),pos x

;[State 0, PosSet]
;type = PosSet
;trigger1 = anim=18601&&animelem=1,1
;x = pos x-10*facing

[State -3, SLUGGEEntering];SLUGGENTERING
type = PlaySnd
trigger1 = time=0
value = 4000,24
volumescale = 256
channel = -1
freqmul = 1.0


[State 0, VarSet]
type = VarSet
trigger1 = anim=18601&&animelem=1,1
v = 10
value = 107

[State 0, VarSet]
type = VarSet
trigger1 = anim=18601&&animelem=1,1&&var(21)<=0
v = 21
value = 3


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=anim=18601
id = 545453

[State 0, HUDVIDACANION0]
type = RemoveExplod
triggerall=numexplod(9110)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18601&&animelem=2,1
id = 9110


[State 0, cannon]
type = RemoveExplod
triggerall=numexplod(9101)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18601&&animelem=2,1
id = 9101

[State 0, ChangeState]
type = ChangeState
trigger1=anim=18601&&animtime=0&&var(10)=107
value =11
ctrl = 0
;---------------------------------------------------------------------------
;BRADLEYFXS1
[Statedef 15091]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18621
sprpriority = 5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1


[State 1105]
type = destroyself
trigger1=animtime=0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BRADLEYFXS2
[Statedef 15092]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18622
sprpriority = 7

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S4000,45
volumescale = 256
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1


[State 1105]
type = destroyself
trigger1=animtime=0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MissileDIAG
[Statedef 15093]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18623
sprpriority = 8
velset = 2+(root,var(27)=1)+((parent,ishelper)&&(parent,var(56))),-2-(root,var(27)=1);-((parent,ishelper)&&(parent,var(56)))



[State 0, ParentVarSet];Le resta a la variable canion
type = ParentVarSet
triggerall=root,var(24)>0
triggerall=!parent,ishelper
trigger1 = time=0
v =  24   ;fv = 
value = root,var(24)-1

[State 0, ParentVarSet];Le resta a la variable canion
type = ParentVarSet
triggerall=parent,ishelper
trigger1 = time=0
v =  24   ;fv = 
value = parent,var(24)-1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time=1
id = 20000

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time=1
id = 20001

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time=1
id = 20002

[State 0, Helper]
type = Helper
trigger1 = animelem=1,1
trigger2 = animelem=3,1
trigger3 = animelem=5,1
trigger4 = animelem=7,1
trigger5 = animelem=9,1
helpertype = normal ;player
name = "SmokeTrail"
ID = 515151
stateno = 305
pos = -10,-5
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA
ignorehitpause = 1


[State 1030, endfromproj]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 302
attr = SCA
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = 1;time = 0
attr = S, SP
animtype  = Hard
damage    = 90,45
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


;==========================================================
;ANGULO SEGUN VELOCIDAD:
;==========================================================

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x>0
value=atan(-vel y/vel x)*180/pi


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y<0
value=90

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y>0
value=270


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x<0
value=atan(-vel y/vel x)*180/pi+180

;==========================================================


[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = .1

[State 0, VelAdd]
type = VelAdd
trigger1 = vel x>0&&pos y>-70
x = -.1



[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)
value = 15080


;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BRADLEYCANNONSHOOTSTAND
[Statedef 15094]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 18619
sprpriority = 6


;var(24)=10,6,2================================================
[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 =time=0
trigger1 = ((var(24)%(10))=(0))||((var(24)%(10))=(6))||((var(24)%(10))=(2));(var(24)=(10))||(var(24)=(6)||(var(24)=2)
helpertype = normal ;player
name = "Missilefx1Pos1"
ID = 115252
stateno = 15091
pos = -35,-34
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(0))||((var(24)%(10))=(6))||((var(24)%(10))=(2));(var(24)=(10))||(var(24)=(6)||(var(24)=2)
helpertype = normal ;player
name = "Missilefx2Pos1"
ID = 125252
stateno = 15092
pos = 48,-115
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(0))||((var(24)%(10))=(6))||((var(24)%(10))=(2));(var(24)=(10))||(var(24)=(6)||(var(24)=2)
helpertype = normal ;player
name = "MissileBradleyPos1"
ID = 13250
stateno = 15093
pos = 24,-86
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;var(24)=9,5,1================================================

[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 =time=0
trigger1 = ((var(24)%(10))=(9))||((var(24)%(10))=(5))||((var(24)%(10))=(1));(var(24)=9)||(var(24)=5)||(var(24)=1)
helpertype = normal ;player
name = "Missilefx1Pos2"
ID = 115252
stateno = 15091
pos = -31,-27
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(9))||((var(24)%(10))=(5))||((var(24)%(10))=(1));(var(24)=9)||(var(24)=5)||(var(24)=1)
helpertype = normal ;player
name = "Missilefx2Pos2"
ID = 125252
stateno = 15092
pos = 55,-108
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(9))||((var(24)%(10))=(5))||((var(24)%(10))=(1));(var(24)=9)||(var(24)=5)||(var(24)=1)
helpertype = normal ;player
name = "MissileBradleyPos2"
ID = 13250
stateno = 15093
pos = 30,-81
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;var(24)=8,4================================================

[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 =time=0
trigger1 = ((var(24)%(10))=(8))||((var(24)%(10))=(4));(var(24)=8)||(var(24)=4)
helpertype = normal ;player
name = "Missilefx1Pos3"
ID = 115252
stateno = 15091
pos = -31,-36
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(8))||((var(24)%(10))=(4));(var(24)=8)||(var(24)=4)
helpertype = normal ;player
name = "Missilefx2Pos3"
ID = 125252
stateno = 15092
pos = 56,-115
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(8))||((var(24)%(10))=(4));(var(24)=8)||(var(24)=4)
helpertype = normal ;player
name = "MissileBradleyPos3"
ID = 13250
stateno = 15093
pos = 30,-86
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;var(24)=7,3================================================

[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 =time=0
trigger1 = ((var(24)%(10))=(7))||((var(24)%(10))=(3));(var(24)=7)||(var(24)=3)
helpertype = normal ;player
name = "Missilefx1Pos4"
ID = 115252
stateno = 15091
pos = -27,-32
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(7))||((var(24)%(10))=(3));(var(24)=7)||(var(24)=3)
helpertype = normal ;player
name = "Missilefx2Pos4"
ID = 125252
stateno = 15092
pos = 63,-107
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(7))||((var(24)%(10))=(3));(var(24)=7)||(var(24)=3)
helpertype = normal ;player
name = "MissileBradleyPos4"
ID = 13250
stateno = 15093
pos = 37,-79
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State 20, 1];
type = VelSet
trigger1=command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, 2];
type = VelSet
trigger1=command = "holdback"
x = const(velocity.walk.back.x)




[State 200, 3]
type = ChangeState
trigger1 = command="holdfwd"||command="holdback"
trigger1 =animtime=0
value = 20
ctrl = 1

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BRADLEYCANNONSHOOTCROUCH
[Statedef 15095]
type    = C                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 18624
sprpriority = 6


;var(24)=10,6,2================================================
[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 =time=0
trigger1 = ((var(24)%(10))=(0))||((var(24)%(10))=(6))||((var(24)%(10))=(2));(var(24)=10)||(var(24)=6)||(var(24)=2)
helpertype = normal ;player
name = "Missilefx1Pos1"
ID = 115252
stateno = 15096
pos = -33,-44
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(0))||((var(24)%(10))=(6))||((var(24)%(10))=(2));(var(24)=10)||(var(24)=6)||(var(24)=2)
helpertype = normal ;player
name = "Missilefx2Pos1"
ID = 125252
stateno = 15097
pos = 79,-44
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(0))||((var(24)%(10))=(6))||((var(24)%(10))=(2));(var(24)=10)||(var(24)=6)||(var(24)=2)
helpertype = normal ;player
name = "MissileBradleyPos1"
ID = 13250
stateno = 15098
pos = 45,-43
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;var(24)=9,5,1================================================

[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 =time=0
trigger1 = ((var(24)%(10))=(9))||((var(24)%(10))=(5))||((var(24)%(10))=(1));(var(24)=9)||(var(24)=5)||(var(24)=1)
helpertype = normal ;player
name = "Missilefx1Pos2"
ID = 115252
stateno = 15096
pos = -33,-33
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(9))||((var(24)%(10))=(5))||((var(24)%(10))=(1));(var(24)=9)||(var(24)=5)||(var(24)=1)
helpertype = normal ;player
name = "Missilefx2Pos2"
ID = 125252
stateno = 15097
pos = 79,-34
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(9))||((var(24)%(10))=(5))||((var(24)%(10))=(1));(var(24)=9)||(var(24)=5)||(var(24)=1)
helpertype = normal ;player
name = "MissileBradleyPos2"
ID = 13250
stateno = 15098
pos = 44,-33
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;var(24)=8,4================================================

[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 =time=0
trigger1 = ((var(24)%(10))=(8))||((var(24)%(10))=(4));(var(24)=8)||(var(24)=4)
helpertype = normal ;player
name = "Missilefx1Pos3"
ID = 115252
stateno = 15096
pos = -27,-41
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(8))||((var(24)%(10))=(4));(var(24)=8)||(var(24)=4)
helpertype = normal ;player
name = "Missilefx2Pos3"
ID = 125252
stateno = 15097
pos = 85,-42
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(8))||((var(24)%(10))=(4));(var(24)=8)||(var(24)=4)
helpertype = normal ;player
name = "MissileBradleyPos3"
ID = 13250
stateno = 15098
pos = 50,-41
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;var(24)=7,3================================================

[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 =time=0
trigger1 = ((var(24)%(10))=(7))||((var(24)%(10))=(3));(var(24)=7)||(var(24)=3)
helpertype = normal ;player
name = "Missilefx1Pos4"
ID = 115252
stateno = 15096
pos = -27,-32
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(7))||((var(24)%(10))=(3));(var(24)=7)||(var(24)=3)
helpertype = normal ;player
name = "Missilefx2Pos4"
ID = 125252
stateno = 15097
pos = 85,-33
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(7))||((var(24)%(10))=(3));(var(24)=7)||(var(24)=3)
helpertype = normal ;player
name = "MissileBradleyPos4"
ID = 13250
stateno = 15098
pos = 50,-33
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State 20, 1];
type = VelSet
trigger1=command = "holdfwd"
trigger1= var(27)=1
x = const(velocity.walk.fwd.x)

[State 20, 2];
type = VelSet
trigger1=command = "holdback"
trigger1= var(27)=1
x = const(velocity.walk.back.x)




[State 200, 3]
type = ChangeState
trigger1 = command="holdfwd"||command="holdback"
trigger1 =animtime=0
trigger1 =var(27)=1
value = 1100
ctrl = 1

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
;BRADLEYFXC1
[Statedef 15096]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18625
sprpriority = 5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1


[State 1105]
type = destroyself
trigger1=animtime=0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BRADLEYFXC2
[Statedef 15097]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18626
sprpriority = 7

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S4000,45
volumescale = 256
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1


[State 1105]
type = destroyself
trigger1=animtime=0

;---------------------------------------------------------------------------
;MissileFRONT
[Statedef 15098]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18623
sprpriority = 8
velset = 5+(5)*(root,var(27)=1)+((5)*(parent,ishelper)&&(parent,var(56))),0

[State 0, ParentVarSet];Le resta a la variable canion
type = ParentVarSet
triggerall=root,var(24)>0
trigger1 = time=0
v =  24   ;fv = 
value = root,var(24)-1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time=1
id = 20000

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time=1
id = 20001

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time=1
id = 20002

[State 0, Helper]
type = Helper
trigger1 = animelem=1,1
trigger2 = animelem=3,1
trigger3 = animelem=5,1
trigger4 = animelem=7,1
trigger5 = animelem=9,1
helpertype = normal ;player
name = "SmokeTrail"
ID = 515151
stateno = 305
pos = -10,-5
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA
ignorehitpause = 1


[State 1030, endfromproj]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 302
attr = SCA
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = 1;time = 0
attr = S, SP
animtype  = Hard
damage    = 90,45
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


;==========================================================
;ANGULO SEGUN VELOCIDAD:
;==========================================================

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x>0
value=atan(-vel y/vel x)*180/pi


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y<0
value=90

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y>0
value=270


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x<0
value=atan(-vel y/vel x)*180/pi+180

;==========================================================


[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = .1

[State 0, VelAdd]
type = VelAdd
trigger1 = vel x>0&&pos y>-70
x = -.1



[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)
value = 15080


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SLGARMORFALLING
[Statedef 15106]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18650
sprpriority = 0
velset = 0,5
poweradd=ifelse((root,var(59)=1),-2000,-floor(root,fvar(18)))

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 24
value = 10

[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 27
value = random%2

[State 0, RemapPal]
type = RemapPal
trigger1 = root,var(27)=0
source = 0,73
dest = 0,73

[State 0, RemapPal]
type = RemapPal
trigger1 = root,var(27)=1
source = 0,73
dest = 73,0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=0
value =15107
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SLGARMORENTERHERE
[Statedef 15107]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(root,var(10)=108,18651,18650)
sprpriority = 0
velset = 0,5


[State 0, VelSet]
type = VelSet
trigger1 = pos y>=0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=18651&&animtime=0
value = 18650


[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing&&time=0


;[State 0, PosSet]
;type = PosSet
;trigger1 = root,stateno=14992
;x = root,pos x


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, Explod];Enter Here
type = Explod
trigger1 = numexplod(545454)=0&&root,stateno!=14992&&root,var(10)!=108
anim = 20100
ID = 545454
pos = 15,-40
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 11    ;fv = 10
value = root,pos y

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,anim=18651	;ANIM OF ENTERING
id = 545454


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, DestroySelf]
type = DestroySelf 
trigger1=(root,anim=18651)	;ANIM OF ENTERING END
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;DUMMYPUSHSLUGARMOR
[Statedef 15108]
type    = s                      
movetype= a                      
physics = s
anim = 18664
sprpriority = 0
velset = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1
pos = 0,0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,command="holdfwd"
value = 18664

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,command="holdback"
value = 18665

[State 0, VarSet]
type = VarSet
trigger1 = !movecontact
v = 31    ;fv = 10
value = 1

[State 0, VarSet]
type = VarSet
trigger1 = movecontact
v = 31    ;fv = 10
value = 0

[State 251, HitDef]
type = HitDef
trigger1 = 1
attr = S, NA
animtype  = Hard
damage    = 20*(abs(root,vel x)),10*(abs(root,vel x));5,2
hitflag = MA
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy=0,0
hitsound   =s4000,36
guardsound =s4000,36
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = -(root,vel x)
air.juggle = 0
air.velocity = -(root,vel x),0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0
p1sprpriority=2
fall=1



[State 1105]
type = destroyself
trigger1 = parent,stateno!=1100

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SLUGARMORSPRINTFX
[Statedef 15109]
type    = s                      
movetype= a                      
physics = s
anim = 18666
sprpriority = 0
velset = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1
pos = 0,0

[State 0, ChangeAnim];FWD
type = ChangeAnim
trigger1 = (root,anim=18658)&&anim!=18666
value = 18666

[State 0, ChangeAnim];FWD FROM BACK
type = ChangeAnim
trigger1 = (root,anim=18660)&&anim!=18668
value = 18668

[State 0, ChangeAnim];FWD END
type = ChangeAnim
trigger1 = (root,anim=18659)&&anim!=18670
value = 18670

[State 0, ChangeAnim];BACK
type = ChangeAnim
trigger1 = (root,anim=18661)&&anim!=18667
value = 18667

[State 0, ChangeAnim];BACK FROM FWD
type = ChangeAnim
trigger1 = (root,anim=18663)&&anim!=18669
value = 18669

[State 0, ChangeAnim];BACK END
type = ChangeAnim
trigger1 = (root,anim=18662)&&anim!=18671
value = 18671

[State 0, SprPriority];FWD
type = SprPriority
trigger1 =(root,anim=[18658,18660])
value = 0

[State 0, SprPriority];BACK
type = SprPriority
trigger1 =(root,anim=[18661,18663])
value = 3

[State -3, BOOSTFX]
type = PlaySnd
trigger1 = animelem=1,1
trigger1 = anim=[18666,18669]
value = 4000, 61

[State 251, HitDef]
type = HitDef
trigger1 = time
attr = S, NA
animtype  = Hard
damage    = 3,3
hitflag = MA
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy=0,0
hitsound   =-1;s4000,36
guardsound =-1;s4000,36
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = (root,vel x)
air.juggle = 0
air.velocity = (root,vel x),0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0
p1sprpriority=ifelse((root,anim=18661),3,0)

[State 1105]
type = destroyself
trigger1 = anim=18670&&animtime=0
trigger2 = anim=18671&&animtime=0
trigger3 = root,statetype!=c
trigger4 = root,anim=18652
trigger5 = root,anim=18653
trigger6 = root,var(10)<100
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;EnteringSLGARMOR
[Statedef 14992]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(var(10)=0,11047,ifelse(var(10)=15,11049,11048))
sprpriority = 5
velset = 0,0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=1
id = 545454

[State 0, PosSet]
type = PosSet
trigger1 = TIME=0;&&VAR(59)
y = -35

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, Turn]
type = Turn
trigger1 = (facing=1)&&helper(15000),facing=-1
trigger2 = (facing=-1)&&helper(15000),facing=1



[State 0, NotHitBy]
type = NotHitBy
trigger1 = anim=11047||anim=11048||anim=11049
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1


[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0


[State 0, PosFreeze]
type = PosFreeze
trigger1 = ANIM=11047
trigger2 = ANIM=11048
trigger3 = ANIM=11049
trigger4=anim=18651
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 25    ;fv = 10
value = var(10)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=11047&&animtime=0
trigger2 = anim=11048&&animtime=0
trigger3 = ANIM=11049&&animtime=0
value = 18651

[State 0, PosSet]
type = PosSet
trigger1 = anim=18651
y = 0

[State 0, PosSet]
type = null;PosSet
trigger1 = anim=18651&&animelem=1,1
x = pos x-5*facing

[State 0, PosSet]
type = PosSet
trigger1 =anim=18651&&numhelper(15000)
x =(helper(15000),pos x)
y =helper(15000),pos y


[State -3, SLUGGEEntering];SLUGGENTERING
type = PlaySnd
trigger1 = time=0
value = 4000,24
volumescale = 256
channel = -1
freqmul = 1.0


[State 0, VarSet]
type = VarSet
trigger1 = anim=18651&&animelem=1,1
v = 10
value = 108

[State 0, VarSet]
type = VarSet
trigger1 = anim=18651&&animelem=1,1&&var(21)<=0
v = 21
value = 3


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=anim=18651
id = 545453

[State 0, HUDVIDACANION0]
type = RemoveExplod
triggerall=numexplod(9110)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18651&&animelem=2,1
id = 9110


[State 0, cannon]
type = RemoveExplod
triggerall=numexplod(9101)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18651&&animelem=2,1
id = 9101

[State 0, ChangeState]
type = ChangeState
trigger1=anim=18651&&animtime=0&&var(10)=108
value =11
ctrl = 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SLUGARMORMELEE
[Statedef 15110]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0
anim = 18672
sprpriority = 7

[State 210, 2]
type = HitDef
trigger1 = movehit=0
attr = S, NA
animtype  = Medium
damage    = 80,40
guardflag = MA
pausetime = 0,0;12,12
sparkno = -1;18246;s3501
sparkxy = 20,0
hitsound   = s4000,36
guardsound = s4000,36
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0
p1sprpriority=7

[State 210, 5]
type = ChangeState
trigger1 =anim=18672&&AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SARMORCANNON
[Statedef 15113]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 18673
sprpriority = 7                  ;Set p1's sprite layering priority to 2 (in front)


[State 0, CANNON]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "CANNON"
ID = 13250
stateno = 15057
pos = 15,-65
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SARMORCANNONC
[Statedef 15114]
type    = c                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 18674
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 0, CANNON]
type = Helper
trigger1 = time=0
helpertype = normal ;player
name = "CANNON"
ID = 13250
stateno = 15057
pos = 15,-55
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0&&command!="holdfwd"&&command!="holdback"
value = 11
ctrl = 1

[State 0, Velset]
type = Velset
trigger1 = (command="holdfwd")&&(var(10)=108)
trigger1 = (vel x) <((const(velocity.walk.fwd.x))*2)
x = vel x+const(velocity.walk.fwd.x)*(.5)


[State 0, Velset]
type = Velset
trigger1 = (command="holdback")&&(var(10)=108)
trigger1 = (vel x)>((const(velocity.walk.back.x))*2)
x = vel x+const(velocity.walk.back.x)*(.5)

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0&&((command="holdfwd")||(command="holdback"))
value = 1100
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SARMORJUMPSTART
[Statedef 15115]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = vel x,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 18675
sprpriority = 7                  ;Set p1's sprite layering priority to 2 (in front)

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 15116
ctrl = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SARMORJUMP
[Statedef 15116]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = A                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = vel x,-4                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 18677
sprpriority = 7                  ;Set p1's sprite layering priority to 2 (in front)

[State 0, Pistol];jumpstart
type = PlaySnd
trigger1=time=0
value = 4000,62
volumescale = 256
channel = -1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = command="z"
trigger1=numhelper(13250)<1+2*(var(27)=1)
value = 18678

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =anim=18678&&animtime=0
value = 18677

[State 0, CANNON]
type = Helper
trigger1 = anim=18678&&ANIMELEM=1,1
helpertype = normal ;player
name = "CANNON"
ID = 13250
stateno = 15057
pos = 15,-65
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, Velset]
type = Velset
trigger1 = (command="holdfwd")
trigger1 = (vel x) <const(velocity.walk.fwd.x)
x = vel x+const(velocity.walk.fwd.x)*(.5)


[State 0, Velset]
type = Velset
trigger1 = (command="holdback")
trigger1 = (vel x)>const(velocity.walk.back.x)
x = vel x+const(velocity.walk.back.x)*(.5)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =command="holddown"&&command="x"
value = 18695


[State 0, VelAdd]
type = VelAdd
trigger1 = time<30&&prevstateno!=16664
y = -1.5

[State 0, VelAdd]
type = VelAdd
trigger1 = time>30&&prevstateno!=16664
y = -.5

[State 2400, 2]
type = Velset
trigger1 = prevstateno=16664
y = 5

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SARMORARM
[Statedef 15117]
type    = S
movetype= a
physics = N
juggle  = 3
ctrl = 0
anim = 18681
sprpriority = 1


[State 0, hmg];hmg Sounds
type = PlaySnd
trigger1=anim=18683&&animelem=1,1
trigger2=anim=18690&&animelem=1,1
trigger3=anim=18689&&animelem=1,1
trigger4=anim=18688&&animelem=1,1
trigger5=anim=18692&&animelem=1,1
trigger6=anim=18694&&animelem=1,1
value = 4000,63
volumescale = 256
channel = 0


[State 0, Turn]
type = Turn
trigger1 = facing!=(root,facing)


[State 0, VarSet];angulo del brazito
type = VarSet
trigger1 = time=0
v = 44
value = 0

;
;[State 0, RemapPal]
;type = RemapPal
;trigger1 =1
;source = 0,17
;dest = 17,0

;==========ANIMS==================

[State 0, ChangeAnim];DUMMYANIM
type = ChangeAnim
trigger1 = root,anim=18672&&anim!=18229;MELEE
trigger2 = root,anim=18673&&anim!=18229;CANNONSTAND
trigger3 = root,anim=18674&&anim!=18229;CANNONSTAND
trigger4 = root,anim=18678&&anim!=18229;CANNONJUMP
trigger5 = root,stateno=14992&&anim!=18229
value = 18229


[State 0, ChangeAnim];STAND
type = ChangeAnim
trigger1 = ((root,anim=18655)||(root,anim=18676))&&anim!=18681&&anim!=18683&&anim!=[18685,18690]
trigger2 = (root,anim=18655)&&anim=18683&&animtime=0
trigger3 = (root,anim=18655)&&anim=18686&&animtime=0
trigger4 = (root,anim=18655)&&anim=18690&&root,command!="x"&&animtime=0
trigger5 = ((root,stateno=10)||(root,stateno=12))&&anim=18690&&root,command!="x"&&animtime=0
trigger6 = ((root,stateno=10)||(root,stateno=12))&&anim=18686&&animtime=0
value = 18681


[State 0, ChangeAnim];CROUCH
type = ChangeAnim
trigger1 = ((root,anim=18652)||(root,anim=[18658,18653]))&&anim!=18691&&anim!=18683
trigger2 = anim=18683&&animtime=0&&command!="x"
trigger3 = root,stateno=1100&&anim=18690&&root,command!="x"&&animtime=0
trigger4 = root,stateno=1100&&anim=18686&&animtime=0
value = 18691



[State 0, ChangeAnim];WALK FWD
type =ChangeAnim
trigger1 = ((root,anim=18656)||(root,anim=18657))&&anim!=[18682,18690]
trigger2 = ((root,anim=18656)||(root,anim=18657))&&anim=18683&&animtime=0
trigger3 = ((root,anim=18656)||(root,anim=18657))&&anim=18686&&animtime=0
trigger4 = ((root,anim=18656)||(root,anim=18657))&&anim=18690&&root,command!="x"&&animtime=0
value = 18682

[State 0, ChangeAnim];JUMP
type = ChangeAnim
trigger1 = (root,anim=18677)&&anim!=18684&&anim!=18683&&anim!=18685&&anim!=18687&&anim!=18686&&anim!=[18688,18690]
trigger2 = (root,anim=18677)&&anim=18686&&animtime=0
trigger3 = (root,anim=18677)&&anim=18690&&animtime=0
value = 18684

;[State 0, ChangeAnim];AIMDWSTART
;type = ChangeAnim
;trigger1 = (root,anim=18695)&&root,command="holddown"&&root,command!="x"&&anim!=18692&&anim!=18696&&anim!=18698&&anim!=18694
;value = 18696

[State 0, ChangeAnim];AIMDOWN
type = ChangeAnim
trigger1 =anim=18696&&animtime=0
trigger2 = root,command="holddown"&&anim=18698&&animtime=0&&root,command!="x"
trigger3 = anim=18692&&animtime=0&&root,command!="x"
trigger4 = anim=18694&&animtime=0&&root,command!="x"&&root,command="holddown"
value = 18698

[State 0, ChangeAnim];AIMDWEND
type = ChangeAnim
trigger1 = anim=18698&&root,command!="holddown"&&root,command!="x"&&anim!=18692&&anim!=18696&&anim!=18694
value = 18697

[State 0, ChangeAnim];SHOOTDWSTART
type =ChangeAnim
TRIGGERALL=root,stateno=15116
trigger1 = (root,anim=18695)&&root,command="holddown"&&root,command="x"&&anim!=18692&&anim!=18698&&anim!=18694
value = 18692

[State 0, ChangeAnim];SHOOTDW
type =ChangeAnim
TRIGGERALL=root,stateno=15116
trigger1 = anim=18692&&animtime=0&&root,command="x"
trigger2 = root,command="holddown"&&root,command="x"&&anim=18694
trigger3 = anim=18698&&root,command="holddown"&&root,command="x"
value = 18694

[State 0, ChangeAnim];SHOOTDWEND
type = NULL;ChangeAnim
trigger1 = root,command!="holddown"&&anim=18244
value = 18245

[State 0, ChangeAnim];AIMUPEND
type = ChangeAnim
trigger1 = root,command!="holdup"&&anim=18687&&anim!=18688&&anim!=18690
value = 18686

[State 0, ChangeAnim];AIMUPSTART
type = ChangeAnim
triggerall=anim!=18229
trigger1 = root,command="holdup"&&anim!=18683&&anim!=18685&&anim!=18687&&anim!=18688&&anim!=18689&&root,command!="x"
value = 18685

[State 0, ChangeAnim];AIMUP
type = ChangeAnim
trigger1 =((anim=18685)||(anim=18689))&&animtime=0
trigger2 = root,command="holdup"&&anim=18687&&animtime=0&&root,command!="x"
trigger3 = (anim=18688)&&root,command="holdup"&&animtime=0
value = 18687


[State 0, ChangeAnim];SHOOTFWD
type =ChangeAnim
triggerall=roundstate=2
trigger1 = root,command!="holdup"&&(((root,stateno!=15116))||((root,command!="holddown")&&root,stateno=15116))&&root,command="x"&&anim!=18229&&(root,anim!=18695)&&anim!=18692
value = 18683

[State 0, ChangeAnim];SHOOTUPSTART
type =ChangeAnim
triggerall=roundstate=2
trigger1 = root,command="holdup"&&anim=18683&&anim!=18685&&anim!=18687&&anim!=18688
value = 18689


[State 0, ChangeAnim];SHOOTUP
type = ChangeAnim
triggerall=roundstate=2
trigger1 = root,command="holdup"&&root,command="x"&&anim=18687
value = 18688

[State 0, ChangeAnim];SHOOTUP AI
type = NULL;ChangeAnim
triggerall=roundstate=2
triggerall = root,anim!=18208&&root,anim!=18224&&root,anim!=18207&&root,anim!=18209&&roundstate=2
trigger1 = var(59)&&anim=18234&&animtime=0
trigger2 = var(59)&&anim=18233&&enemynear,pos y<root,pos y&&enemynear,pos x<5
value = 18235

[State 0, ChangeAnim];SHOOTUPEND
type = ChangeAnim
trigger1 = root,command!="holdup"&&anim=18688
value = 18690


[State 0, ChangeAnim];SHOOTFWD AI
type =ChangeAnim
triggerall=roundstate=2
trigger1 = root,command!="holdup"&&(((root,stateno!=15116))||((root,command!="holddown")&&root,stateno=15116))&&root,var(59)&&anim!=18229&&(root,anim!=18695)&&anim!=18692
trigger1 = ((anim!=18683)||((anim=18683)&&animtime=0))
trigger1 = enemynear,pos x>22
value = 18683


[State 0, ChangeAnim];SHOOTUP AI
type = ChangeAnim
triggerall=roundstate=2
trigger1 = root,command="holdup"&&root,var(59)&&enemynear,pos y<root,pos y&&enemynear,pos x<5
trigger1 = ((anim!=18688)||((anim=18688)&&animtime=0))
value = 18688

;==========BINTOROOT==================
[State 0, BindToRoot]
type = BindToROOT
trigger1=root,anim=18655
trigger2=((root,anim=18656)||(root,anim=18657))&&root,animelem=1,1
trigger3=((root,anim=18656)||(root,anim=18657))&&root,animelem=16,1
trigger4=root,anim=18677
trigger5=root,statetype=c
time =-1
pos = 0,0

[State 0, BindToRoot]
type = BindToROOT
trigger1=((root,anim=18656)||(root,anim=18657))&&root,animelem=2,1
trigger2=((root,anim=18656)||(root,anim=18657))&&root,animelem=15,1
time =-1
pos = -2,2

[State 0, BindToRoot]
type = BindToROOT
trigger1=((root,anim=18656)||(root,anim=18657))&&root,animelem=3,1
trigger2=((root,anim=18656)||(root,anim=18657))&&root,animelem=14,1
time =-1
pos = -4,6

[State 0, BindToRoot]
type = BindToROOT
trigger1=((root,anim=18656)||(root,anim=18657))&&root,animelem=4,1
trigger2=((root,anim=18656)||(root,anim=18657))&&root,animelem=13,1
time =-1
pos = -5,7

[State 0, BindToRoot]
type = BindToROOT
trigger1=((root,anim=18656)||(root,anim=18657))&&root,animelem=5,1
trigger2=((root,anim=18656)||(root,anim=18657))&&root,animelem=12,1
time =-1
pos = -6,8

[State 0, BindToRoot]
type = BindToROOT
trigger1=((root,anim=18656)||(root,anim=18657))&&root,animelem=6,1
trigger2=((root,anim=18656)||(root,anim=18657))&&root,animelem=11,1
time =-1
pos = -7,9

[State 0, BindToRoot]
type = BindToROOT
trigger1=((root,anim=18656)||(root,anim=18657))&&root,animelem=7,1
trigger2=((root,anim=18656)||(root,anim=18657))&&root,animelem=10,1
time =-1
pos = -8,10

[State 0, BindToRoot]
type = BindToROOT
trigger1=((root,anim=18656)||(root,anim=18657))&&root,animelem=8,1
trigger2=((root,anim=18656)||(root,anim=18657))&&root,animelem=9,1
time =-1
pos = -9,11
;==========angle==================

[State 0, VarSet]
type = VarSet
trigger1 = anim=18688
v = 44
value = 90

[State 0, VarSet]
type = VarSet
trigger1 = anim=18683
v = 44
value = 0

;UP
[State 0, VarSet]
type = VarSet
trigger1 = anim=18689&&animelem=1
v = 44
value = 11

[State 0, VarSet]
type = VarSet
trigger1 = anim=18689&&animelem=3
v = 44
value = 22

[State 0, VarSet]
type = VarSet
trigger1 = anim=18689&&animelem=5
v = 44
value = 45

[State 0, VarSet]
type = VarSet
trigger1 = anim=18689&&animelem=7
v = 44
value = 67

[State 0, VarSet]
type = VarSet
trigger1 = anim=18690&&animelem=7
v = 44
value = 11

[State 0, VarSet]
type = VarSet
trigger1 = anim=18690&&animelem=5
v = 44
value = 22

[State 0, VarSet]
type = VarSet
trigger1 = anim=18690&&animelem=3
v = 44
value = 45

[State 0, VarSet]
type = VarSet
trigger1 = anim=18690&&animelem=1
v = 44
value = 67
;DOWN

[State 0, VarSet]
type = VarSet
trigger1 = anim=18692&&animelem=1
v = 44
value = 349

[State 0, VarSet]
type = VarSet
trigger1 = anim=18692&&animelem=3
v = 44
value = 338

[State 0, VarSet]
type = VarSet
trigger1 = anim=18692&&animelem=5
v = 44
value = 315

[State 0, VarSet]
type = VarSet
trigger1 = anim=18692&&animelem=7
v = 44
value = 293


[State 0, VarSet]
type = VarSet
trigger1 = anim=18694
v = 44
value = 270
;==========bullets==================

;[State 0, hmgbulletFWRD]
;type = Projectile
;triggerall=anim=18683
;trigger1 = AnimElem = 1,1
;trigger2 = AnimElem = 3,1
;trigger3 = AnimElem = 5,1
;trigger4 = AnimElem = 7,1
;postype = p1
;projanim = 1201
;projhitanim = 1998
;projpriority = 1
;projheightbound = 0,0
;projedgebound = 100
;projscale=1,1
;ProjHits = 1;1+ifelse( p2name="abyss",10,0)
;velocity = 10+VEL X,0;15+const(velocity.walk.fwd.x),0
;offset =40,-25+ifelse(animelem=1,1,0,ifelse(animelem=3,1,-5,ifelse(animelem=5,1,-10,0)));97,-104
;attr = S, SP
;damage   = 15,10
;animtype = heavy
;guardflag = MA
;hitflag = MAFDP
;pausetime = 0,0
;hitsound   = s4000,5
;sparkxy = 0,0
;guardsound = s4000,6
;ground.type = low
;ground.slidetime = 0
;ground.hittime  = 0
;ground.velocity = 0
;air.animtype = Back
;air.velocity = 0,0
;air.fall = 0
;down.velocity = 0,0
;down.hittime = 0
;down.bounce = 0
;palfx.time = 3
;palfx.add = 248,56,0
;numhits=1

[State 0, HMGUP];hmg fwd
type = Helper
triggerall = anim=18683
trigger1 =animelem=1||animelem=3||animelem=5||animelem=7||animelem=9
helpertype = normal ;player
name = "VULCANBULLET"
ID = 3000;default helper projectile id
stateno = 15102
pos =40,-30+ifelse(animelem=1,1,0,ifelse(animelem=3,1,-5,ifelse(animelem=5,1,-10,0)));97,-104
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 0, HMGUP];hmg up
type = Helper
triggerall = anim=18688
trigger1 =animelem=1||animelem=3||animelem=5||animelem=7||animelem=9
helpertype = normal ;player
name = "VULCANBULLET"
ID = 3000;default helper projectile id
stateno = 15102
pos = 30+ifelse((animelem=1)||(animelem=7),-16,ifelse((animelem=3)||(animelem=9),-20,-24)),-57 ;8,-25
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
trigger1 =((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1))
trigger1=((anim=18689)||(anim=18690))
trigger2=(root,var(59)=1)&&((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1))&&((anim=18689)||(anim=18690))
helpertype = normal ;player
name = "vulcanbullet"
ID = 15001
stateno = 15102
pos = floor(cos((var(44)*pi)/180)*40),-25-floor(sin((var(44)*pi)/180)*25)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 0, Helper]
type = Helper
trigger1 =((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1))
trigger1=((anim=18692)||(anim=18694))
trigger2=(root,var(59)=1)&&((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1)||(animelem=7,1))&&((anim=18692)||(anim=18694))
helpertype = normal ;player
name = "vulcanbullet"
ID = 15001
stateno = 15102
pos = 15+floor(cos((var(44)*pi)/180)*40),-25-floor(sin((var(44)*pi)/180)*25)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0


;==========sounds==================

[State 0, PlaySnd];hmg Sounds
type = PlaySnd
triggerall=Animelem=1,2
trigger1=anim=18232
trigger2=anim=18236
trigger3=anim=18234
trigger4=anim=18235
trigger5=anim=18243
trigger6=anim=18244
trigger7=anim=18245
value = 4000,9
volumescale = 256
channel = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = root,stateno=15110
channel = 0


[State 0, DestroySelf]
type = DestroySelf
trigger1= root,var(10)<100
trigger2=root,numhelper(15101)>1&&time;trigger4=win
trigger3=root,stateno=105
trigger4=root,stateno=15118

[State 0, ChangeState]
type = ChangeState
trigger1 = root,stateno=15120
value = 301

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;LEAVINGSARMOR
[Statedef 15118]
type    = c
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18679
sprpriority = 5
velset = 0,0


[State 0, VLeavingVehicle2b]
type = VarSet
trigger1 = animtime=0
v = 10    ;fv = 10
value = var(25)

[State 0, PosAdd]
type = PosAdd
trigger1 = animtime=0
x = 15
y = -20

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime=0
value =105

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SUICIDE SARMOR
[Statedef 15119]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18680
sprpriority = 5
velset = 5+const(velocity.walk.fwd.x),0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State -3, BOOSTFX]
type = PlaySnd
trigger1 = time=0
value = 4000, 61

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 24    ;fv = 10
value = root,var(24)



[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0;anim=16003&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 0, VarSet]
type = VarSet
triggerall=root,palno=5&&root,var(10)=0
trigger1 = time=0
v = 3    ;fv = 10
value = ifelse(parent,anim=11200,3,ifelse(parent,anim=600,2,1))
ignorehitpause = 
persistent = 

[State 0, VarSet]
type = VarSet
triggerall=root,var(10)=5
trigger1 = time=0
v = 3    ;fv = 10
value = ifelse(parent,anim=11201,3,ifelse(parent,anim=8600,2,1))
ignorehitpause = 
persistent = 

[State 0, VarSet]
type = VarSet
triggerall=root,var(10)=5&&root,palno=5
trigger1 = pos y<root,pos y - 300
v = 3    ;fv = 10
value = 2
ignorehitpause = 
persistent = 

[State 0, PosSet]
type = PosSet
triggerall=root,var(10)=5&&root,palno=5
trigger1 = pos y<root,pos y - 300
x = enemy,pos x
y = pos y


[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 13*var(21)+5*var(24)+(root,palno=4)*20,10*var(21)+3*var(24)+(root,palno=4)*20
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 2400, 2];Avanza
type = Velset
triggerall=var(3)=1
trigger1 =1;animelem=1;animtime<
x = 6
y =0

[State 2400, 2];Baja
type = Velset
triggerall=var(3)=2
trigger1 =1;animelem=1;animtime<
x = 0
y =6

[State 2400, 2];Sube
type = Velset
triggerall=var(3)=3
trigger1 =1;animelem=1;animtime<
x = 0
y =-6


[State 0, PalFXWiz]
type = PalFX
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)

[State 0, VarSet]
type = parentVarSet
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
v = 21   ;fv = 10
value = 0


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
value = 15006
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SelfDestructSARMOR
[Statedef 15120]
type    = A
movetype= i
physics = N
anim=18655
ctrl = 0
sprpriority = 5
velset=0,5

[State 0, Explod];OUT
type = Explod
trigger1 = time=0&&numexplod(545455)=0&&root,stateno!=14993
anim = 20101
ID = 545455
pos = 15,-65
postype = p1  ;p2,front,back,left,right
facing = ifelse(facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 0, VelSet]
type = VelSet
trigger1 = pos y>0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 4000,22
volumescale = 256
channel = 44


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, PalFXWiz]
type = PalFX
trigger1 = animelem=1,1
time = 210
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarSet]
type = VarSet
trigger1 = command="y"
trigger2 = time>210
trigger3=var(59)
v = 10
value = root,var(25)

[State 0, PalFXWiz]
type = PalFX
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
time = 1

[State 0, Helper]
type = Helper
triggerall=var(27)=0
trigger1 = command="y"
trigger2=var(59)
helpertype = normal ;player
name = "BIGEXPLOSION"
ID = 15005
stateno = 15006
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State 0, SUICIDE]
type = Helper
triggerall=var(27)=1
trigger1 = command="y"
trigger2=var(59)
helpertype = normal ;player
name = "SARMORSUICIDE"
ID = 15666
stateno = 15119
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
channel = 44
;ignorehitpause = 
;persistent = 


[State 0, ChangeState]
type = ChangeState
trigger1 = command="y"
trigger2=var(59)
value =105
ctrl = 1



[State 0, Helper]
type = Helper
trigger1 = time>210
helpertype = normal ;player
name = "BIGEXPLOSIONF"
ID = 15005
stateno = 15005
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time>209
trigger2 = command="y"
id = 545455



[State 0, ChangeState]
type = ChangeState
trigger1 = time>210
value =0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;LVARMORFALLING
[Statedef 15121]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18700
sprpriority = 0
velset = 0,5
poweradd=ifelse((root,var(59)=1),-2000,-floor(root,fvar(18)))

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 24
value = 10

[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 33    ;fv = 10
value = floor(root,fvar(10))

[State 0, VarSet]
type = parentVarSet
trigger1 = time=0
v = 27    ;fv = 10
value = random%4


[State 0, RemapPal];paletas normales
type = RemapPal
trigger1 =root,var(27)=0
source = 0,75
dest = 75,(root,palno)


[State 0, RemapPal];paletas GOLD
type = RemapPal
trigger1 =root,var(27)=1
source = 0,75
dest = 75,12+(root,palno)

[State 0, RemapPal];paletas FLAME
type = RemapPal
trigger1 =root,var(27)=2
source = 0,75
dest = 75,24+(root,palno)

[State 0, RemapPal];paletas FLAME
type = RemapPal
trigger1 =root,var(27)=3
source = 0,75
dest = 75,24+(root,palno)

[State 0, VarSet];ADDAMMOLV
type = parentVarSet
triggerall=(var(33)!=18)&&(var(33)!=51)&&(var(33)!=19)&&(var(33)!=20)&&(root,var(27)!=1)
trigger1=1
fv = 24
value =(ifelse((var(33)=1)||(var(33)=10)||(var(33)=11)||(var(33)=14)||(var(33)=15),200,0)+ifelse((var(33)=9),10,0)+ifelse((var(33)=4)||(var(33)=2)||(var(33)=8)||(var(33)=16)||(var(33)=17)||(var(33)=7),30,0)+ifelse((var(33)=5)||(var(33)=3)||(var(33)=12),20,0)+ifelse((var(33)=6),40,0)+ifelse((var(33)=13),15,0))

[State 0, VarSet];ADDAMMOLV
type = parentVarSet
triggerall=(var(33)=18)||(var(33)=51)||(var(33)=19)||(var(33)=20)&&(root,var(27)!=1)
trigger1=1
fv = 24
value =ifelse(var(33)=18,30,0)+ifelse(var(33)=51,40,0)+ifelse(var(33)=19,20,0)+ifelse(var(33)=20,200,0)


[State 0, VarSet];ADDAMMOLV
type = parentVarSet
triggerall=(var(33)!=18)&&(var(33)!=51)&&(var(33)!=19)&&(var(33)!=20)&&(root,var(27)=1)
trigger1=1
fv = 24
value =(ifelse((var(33)=1)||(var(33)=10)||(var(33)=11)||(var(33)=14)||(var(33)=15),200,0)+ifelse((var(33)=9),10,0)+ifelse((var(33)=4)||(var(33)=2)||(var(33)=8)||(var(33)=16)||(var(33)=17)||(var(33)=7),30,0)+ifelse((var(33)=5)||(var(33)=3)||(var(33)=12),20,0)+ifelse((var(33)=6),40,0)+ifelse((var(33)=13),15,0))*1.5

[State 0, VarSet];ADDAMMOLV
type = parentVarSet
triggerall=(var(33)=18)||(var(33)=51)||(var(33)=19)||(var(33)=20)&&(root,var(27)!=1)
trigger1=1
fv = 24
value =(ifelse(var(33)=18,30,0)+ifelse(var(33)=51,40,0)+ifelse(var(33)=19,20,0)+ifelse(var(33)=20,200,0))*1.5




[State 0, VarSet];ADDWEAPONLV
type = parentVarSet
trigger1=time=0
fv = 10
value = 1+random%20

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=0
value =15122
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;LVARMORENTERHERE
[Statedef 15122]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18700
sprpriority = 0
velset = 0,5


[State 0, VelSet]
type = VelSet
trigger1 = pos y>=0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=18651&&animtime=0
value = 18650


[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing&&time=0


[State 0, PosSet]
type = PosSet
trigger1 = root,stateno=14992
x = root,pos x


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, Explod];Enter Here
type = Explod
trigger1 = numexplod(545454)=0&&root,stateno!=14992&&root,var(10)!=108
anim = 20100
ID = 545454
pos = 15,-40
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 11    ;fv = 10
value = root,pos y

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,anim=18701	;ANIM OF ENTERING
id = 545454


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, DestroySelf]
type = DestroySelf 
trigger1=(root,anim=18701)	;ANIM OF ENTERING END
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;EnteringLVARMOR
[Statedef 14991]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18701;ifelse(var(10)=0,18701,ifelse(var(10)=15,11049,11048))
sprpriority = 5
velset = 0,0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=1
id = 545454

;[State 0, PosSet]
;type = PosSet
;trigger1 = TIME=0;&&VAR(59)
;y = -35

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, Turn]
type = Turn
trigger1 = (facing=1)&&helper(15000),facing=-1
trigger2 = (facing=-1)&&helper(15000),facing=1



[State 0, NotHitBy]
type = NotHitBy
trigger1 = 18701
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1


[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0


[State 0, PosFreeze]
type = PosFreeze
trigger1 = 18701
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 25    ;fv = 10
value = var(10)

;[State 0, ChangeAnim]
;type = ChangeAnim
;trigger1 = anim=11047&&animtime=0
;trigger2 = anim=11048&&animtime=0
;trigger3 = ANIM=11049&&animtime=0
;value = 18651

[State 0, PosSet]
type = PosSet
trigger1 =numhelper(15000)
x =helper(15000),pos x
y =helper(15000),pos y

[State -3, SLUGGEEntering];SLUGGENTERING
type = PlaySnd
trigger1 = time=0
value = 4000,24
volumescale = 256
channel = -1
freqmul = 1.0


[State 0, VarSet]
type = VarSet
trigger1 = anim=18701&&animelem=1,1
v = 10
value = 109

[State 0, VarSet]
type = VarSet
trigger1 = anim=18701&&animelem=1,1&&var(21)<=0
v = 21
value = 3


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=anim=18701
id = 545453

[State 0, HUDVIDACANION0]
type = RemoveExplod
triggerall=numexplod(9110)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18701&&animelem=2,1
id = 9110


[State 0, cannon]
type = RemoveExplod
triggerall=numexplod(9101)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18701&&animelem=2,1
id = 9101

[State 0, ChangeState]
type = ChangeState
trigger1=anim=18701&&animtime=0&&var(10)=109
value =11
ctrl = 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;LVARMORKNIFE
[Statedef 15123]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0
anim = 18717
sprpriority = 4


[State 210, 2]
type = HitDef
triggerall=var(38)=0
trigger1 = animelem=5
attr = S, NA
animtype  = Medium
damage    = ifelse(palno=7,60,30),ifelse(palno=7,30,15)
guardflag = MA
pausetime = 0,0;12,12
sparkno = s3501;ifelse(var(38)=-1,-1,3501)
sparkxy = 0,-30
hitsound   = s0,0
guardsound = s0,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0
p1sprpriority=5


[State 210, 2]
type = HitDef
triggerall=var(38)=1
trigger1 = animelem=5
attr = S, NA
animtype  = Medium
damage    = ifelse(palno=7,60,30),ifelse(palno=7,30,15)
guardflag = MA
pausetime = 0,0;12,12
sparkno = -1;s3501;ifelse(var(38)=-1,-1,3501)
sparkxy = 0,-30
hitsound   = s0,0
guardsound = s0,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0
p1sprpriority=5





[State 210, 4]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;LVARMORMELEE
[Statedef 15124]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0
anim = 18719
sprpriority = 7

[State 210, 2]
type = HitDef
trigger1 = movehit=0
attr = S, NA
animtype  = Medium
damage    = 60+((30)*(var(27)=1)),30+((15)*(var(27)=1))
guardflag = MA
pausetime = 0,0;12,12
sparkno = -1;18246;s3501
sparkxy = 20,0
hitsound   = s4000,65;36
guardsound = s4000,65;36
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0
p1sprpriority=7

[State 210, 5]
type = ChangeState
trigger1 =anim=18719&&AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;LVARMORJUMPSTART
[Statedef 15125]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 18720
sprpriority = 7                  ;Set p1's sprite layering priority to 2 (in front)

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 15126
ctrl = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;LVARMORJUMP
[Statedef 15126]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = A                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,-3                    ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 18721
sprpriority = 7                  ;Set p1's sprite layering priority to 2 (in front)

[State 0, Pistol];jumpstart
type = PlaySnd
trigger1=time=0
value = 4000,64
volumescale = 256
channel = -1

[State 0, ChangeAnim];FALLING
type = ChangeAnim
trigger1 = anim=18721&&vel y>0
value = 18722 

[State 0, ChangeAnim];BOOSTFWD
type = ChangeAnim
trigger1 =((anim=18721)||(anim=18722))&&command="y"&&command="holdfwd"
value = 18724

[State 0, ChangeAnim];BOOSTBACK
type = ChangeAnim
trigger1 =((anim=18721)||(anim=18722))&&command="y"&&command="holdback"
value = 18725

[State 0, ChangeAnim];SHOOTDOWN
type = ChangeAnim
trigger1 = command="holddown"&&command="x"&&anim!=18744
value = 18744


[State 0, CANNON]
type = Helper
trigger1 = command="y"&&numhelper(11250)=0
helpertype = normal ;player
name = "PROPULSOR"
ID = 11250
stateno = 15127
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, Velset]
type = Velset
trigger1 = (command="holdfwd")
trigger1 = (vel x) <const(velocity.walk.fwd.x)
x = vel x+const(velocity.walk.fwd.x)*(.5)


[State 0, Velset]
type = Velset
trigger1 = (command="holdback")
trigger1 = (vel x)>const(velocity.walk.back.x)
x = vel x+const(velocity.walk.back.x)*(.5)


[State 0, VelAdd]
type = Velset
trigger1=numhelper(11250)>0
trigger1=helper(11250),var(12)=1
y = 1

[State 0, VelAdd]
type = Velset
trigger1=numhelper(11250)>0
trigger1=helper(11250),var(12)=0
y = -5


;[State 0, VelAdd]
;type = VelAdd
;trigger1=numhelper(11250)
;trigger1 =prevstateno!=16664
;y = -.5


[State 0, VelAdd]
type = VelAdd
trigger1 = time<30&&prevstateno!=16664
y = -1.5

[State 0, VelAdd]
type = VelAdd
triggerall=numhelper(11250)=0
trigger1 = time>30&&prevstateno!=16664
y = -.5

[State 2400, 2]
type = Velset
trigger1 = prevstateno=16664
y = 5

[State 0, ChangeState];SELFDESTRUCT LVARMOR
type = ChangeState
trigger1 = (var(21)<=0)&&var(10)=109
value =15128
ctrl=0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;LVARMORPROPULSOR
[Statedef 15127]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(root,var(27)=0,18726,18727)
sprpriority = 0
velset = 0,0

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA
ignorehitpause = 1

[State -3, GUNNERGETUP]
type = PlaySnd
trigger1 = time=0
value = 4000, 39

[State 0, VarSet]
type = VarSet
trigger1 = time>3
v = 12    ;fv = 10
value = 1

[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 =1 
time = 1
pos = -20,-22


[State 0, AngleDraw]
type = AngleDraw
trigger1 = root,vel x>0;root,command="holdfwd"
value = 315

[State 0, AngleDraw]
type = AngleDraw
trigger1 = root,vel x=0;root,command="holdfwd"
value = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = root,vel x<0;root,command="holdback"
value = 45


[State 251, HitDef]
type = HitDef
trigger1 = time
attr = S, NA
animtype  = Hard
damage    = 1,1
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,2
guardsound = -1;s4000,2;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 0
envshake.freq = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, DestroySelf]
type = destroySelf
trigger1 =root,pos y>=0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SELFDESTRUCTLVARMOR
[Statedef 15128]
type    = S
movetype= i
physics = N
ctrl = 0
sprpriority = 5

[State 0, Explod];OUT
type = Explod
trigger1 = time=0&&numexplod(545455)=0&&root,stateno!=14991
anim = 20101
ID = 545455
pos = 15,-40
postype = p1  ;p2,front,back,left,right
facing = ifelse(facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0

[State 0, VelSet]
type = VelSet
trigger1 = pos y>0
x = 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim!=18728
value = 18728

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=18728&&animelem=1,1
value = 4000,22
volumescale = 256
channel = 44

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, PalFXWiz]
type = PalFX
trigger1 = anim=18728&&animelem=1,1;anim=16002&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarSet]
type = VarSet
trigger1 = command="y"
trigger2 = time>210
trigger3=var(59)
v = 10
value = root,var(25)

[State 0, PalFXWiz]
type = PalFX
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
time = 1

[State 0, Helper]
type = Helper
trigger1 = command="y"
trigger2=var(59)
helpertype = normal ;player
name = "BIGEXPLOSION"
ID = 15005
stateno = 15006
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
channel = 44



[State 0, ChangeState]
type = ChangeState
trigger1 = command="y"
trigger2=var(59)
value =105
ctrl = 1



[State 0, Helper]
type = Helper
trigger1 = time>210
helpertype = normal ;player
name = "BIGEXPLOSIONF"
ID = 15005
stateno = 15005
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time>209
trigger2 = command="y"
id = 545455



[State 0, ChangeState]
type = ChangeState
trigger1 = time>210
value =0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SUICIDELVARMOR
[Statedef 15129]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18729
sprpriority = 5
velset =5,-5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=18729&&animtime=0
value = 18730

[State 0, VelSet]
type = VelSet
trigger1 = anim=18730
x = 3
y = 3


[State 0, CANNON]
type = Helper
trigger1 = TIME=0&&numhelper(11251)=0
helpertype = normal ;player
name = "PROPULSOR"
ID = 11251
stateno = 15067
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 24    ;fv = 10
value = root,var(24)



[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0;anim=16003&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 8*var(21)+4*var(24),4*var(21)+2*var(24)
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 0, PalFXWiz]
type = PalFX
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)
trigger5= animtime=0

[State 0, VarSet]
type = parentVarSet
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
trigger5= 1
v = 21   ;fv = 10
value = 0


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
trigger5= animtime=0
value = 15006
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;LVARMORARM
[Statedef 15130]
type    = S
movetype= a
physics = N
juggle  = 3
ctrl = 0
anim = 18731
sprpriority = 1

[State 0, Turn]
type = Turn
trigger1 = facing!=(root,facing)


[State 0, VarSet];angulo del brazito
type = VarSet
trigger1 = time=0
v = 44
value = 0

[State 0, Explod]
type = Explod
trigger1 = anim=18733&&animelem=1,1
anim = 18735
ID = 313131
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Helper];EMPTYFWD
type = Helper
trigger1=numhelper(5151252)=0
trigger1 =anim=18742&&animelem=1,1
trigger1 =root,fvar(24)=0
trigger1 =((root,palno!=6)&&(root,palno!=7))
helpertype = normal ;player
name = "EMPTY"
ID = 5151252
stateno = 15132
pos = 27,-25
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper];EMPTYUP
type = Helper
trigger1=numhelper(5151252)=0
trigger1 =anim=18743&&animelem=1,1
trigger1 =root,fvar(24)=0
trigger1 =((root,palno!=6)&&(root,palno!=7))
helpertype = normal ;player
name = "EMPTY"
ID = 5151252
stateno = 15132
pos = 27,-65
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper];EMPTYDW
type = Helper
trigger1=numhelper(5151252)=0
trigger1 =anim=18746&&animelem=1,1
trigger1 =root,fvar(24)=0
trigger1 =((root,palno!=6)&&(root,palno!=7))
helpertype = normal ;player
name = "EMPTY"
ID = 5151252
stateno = 15132
pos = 27,-45
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;ANIMS---------------------------------------------------------------------------

[State 0, ChangeAnim];DUMMYANIM
type = ChangeAnim
trigger1 = root,anim=18719&&anim!=18229;MELEE
trigger2 = root,stateno=15124
value = 18229


[State 0, ChangeAnim];STAND
type = ChangeAnim
trigger1=(anim!=18757)&&(anim!=18733)&&(anim!=18736)&&(anim!=[18738,18743])&&(anim!=[18749,18754])
trigger1 = (root,anim=18704)&&anim!=18731
trigger2 = ((root,anim=18704)||(root,anim=18737))&&anim=18733&&animtime=0
trigger3 = (root,anim=18704)&&anim=18736&&animtime=0;LEFT HMG
trigger4 = (root,anim=18704)&&anim=18739&&animtime=0
trigger5 = (root,anim=18704)&&anim=18742&&animtime=0;LEFT LASER
trigger6 = anim=18748&&animtime=0
trigger7 = ((root,anim=18704)||(root,anim=18737))&&anim=18749&&animtime=0;SHOOT LEFT PUSH
trigger8 = root,stateno=15126&&anim=18742&&animtime=0;LEFT LASER AIR
trigger9 = root,stateno=15126&&anim=18736&&animtime=0;LEFT HMG AIR
trigger10 = root,stateno=15126&&anim=18749&&animtime=0;SHOOT LEFT PUSH AIR
trigger11 = ((root,anim=18704)||(root,anim=18737))&&anim=18752&&animtime=0;SHOOT LEFT NO PUSH
trigger12 = root,stateno=15126&&anim=18752&&animtime=0;SHOOT LEFT NO PUSH AIR
trigger13=  root,stateno=15126&&anim=18733&&animtime=0
trigger14=  root,stateno=15126&&anim=18739&&animtime=0
trigger15 = ((root,anim=18704)||(root,anim=18737))&&anim=18757&&animtime=0
trigger16=  root,stateno=15126&&anim=18757&&animtime=0
value = 18731

[State 0, ChangeAnim];STANDING
type = ChangeAnim
trigger1 = (root,anim=18703)
trigger1=(anim!=18757)&&(anim!=18756)&&(anim!=18733)&&(anim!=18736)&&(anim!=[18738,18743])&&(anim!=[18749,18754])
trigger2 = (root,stateno=12)&&anim=18733&&animtime=0
value = 18756


[State 0, ChangeAnim];CROUCHING
type = ChangeAnim
trigger1 = (root,anim=18702)
trigger1=(anim!=18757)&&(anim!=18733)&&(anim!=18736)&&(anim!=[18738,18743])&&(anim!=[18749,18754])
trigger1=anim!=18755
trigger2 = (root,stateno=10)&&anim=18733&&animtime=0
trigger3 = (root,anim=18702)&&anim=18739&&animtime=0
trigger4 = (root,stateno=10)&&anim=18757&&animtime=0
value = 18755

[State 0, ChangeAnim];CROUCH
type = ChangeAnim
trigger1=(anim!=18757)&&(anim!=18733)&&(anim!=18736)&&(anim!=[18738,18743])&&(anim!=[18749,18754])
trigger1 = (root,stateno=11)&&anim!=18747
trigger2 = (root,stateno=11)&&anim=18742&&animtime=0
trigger3 = (root,stateno=11)&&anim=18749&&animtime=0
trigger4 = (root,stateno=11)&&anim=18752&&animtime=0
trigger5 = (root,stateno=11)&&anim=18736&&animtime=0
trigger6 = (root,stateno=11)&&anim=18733&&animtime=0
trigger7 = (root,stateno=11)&&anim=18757&&animtime=0
value = 18747

[State 0, ChangeAnim];STARTINGJUMPLANDING
type = ChangeAnim
trigger1 = ((root,anim=18720)||(root,anim=18723))
trigger1 = (anim=18731)||(anim=18731)
value = 18748


[State 0, ChangeAnim];WALK
type = ChangeAnim
trigger1=(anim!=18757)&&(anim!=18733)&&(anim!=18736)&&(anim!=[18738,18743])&&(anim!=[18749,18754])
trigger1 = ((root,anim=18705)||(root,anim=18706))&&anim!=18732
trigger2 = ((root,anim=18705)||(root,anim=18706))&&anim=18733&&animtime=0
trigger3 = ((root,anim=18705)||(root,anim=18706))&&anim=18736&&animtime=0
trigger4 = ((root,anim=18705)||(root,anim=18706))&&anim=18742&&animtime=0
trigger5 = ((root,anim=18705)||(root,anim=18706))&&anim=18739&&animtime=0
trigger6 = ((root,anim=18705)||(root,anim=18706))&&anim=18749&&animtime=0
trigger7 = ((root,anim=18705)||(root,anim=18706))&&anim=18752&&animtime=0
trigger8 = ((root,anim=18705)||(root,anim=18706))&&anim=18757&&animtime=0
value = 18731

[State 0, ChangeAnim];AIMUPSTART
type = ChangeAnim
trigger1 = root,command="holdup"&&root,command!="x"
trigger1 = (anim!=18738)&&(anim!=18740)&&(anim!=18733)&&(anim!=18757)&&(anim!=18741)&&(anim!=18743)&&(anim!=18753)
trigger1 = anim!=18750
value = 18738

[State 0, ChangeAnim];AIMINGUP
type = ChangeAnim
trigger1 = anim=18738&&animtime=0
trigger2 = anim!=18750&&anim!=18738&&anim!=18753
trigger2 = anim!=18757&&anim!=18733&&anim!=18743&&((anim!=18741)||((anim=18741)&&(animtime=0)))&&(root,command="holdup")
trigger3 = anim!=18757&&anim!=18733&&anim!=18741&&((anim!=18743)||((anim=18743)&&(animtime=0)))&&(root,command="holdup")
trigger3 = anim!=18750&&anim!=18738&&anim!=18753
trigger4 = anim=18750&&animtime=0
trigger5 = anim=18753&&animtime=0
value = 18740

[State 0, ChangeAnim];AIMUPEND
type = ChangeAnim
trigger1 = root,command!="holdup"&&((anim=18740)||(anim=18741)||(anim=18743))
value = 18739


[State 0, ChangeAnim];SHOOTFLAMESTREAM
type = ChangeAnim
triggerall=root,statetype!=C
triggerall=roundstate=2
triggerall=root,var(27)=3
trigger1 = (root,command="z")&&(root,var(24)>0);&&anim!=18733
trigger1 = ((anim!=18757)||((anim=18757)&&((animelem=5)||(animelem=6)||(animelem=7)||(animelem=8))))
trigger1 = anim!=18736
value = 18757


[State 0, ChangeAnim];SHOOTFLAMESTREAMAI
type = ChangeAnim
triggerall=root,statetype!=C
triggerall=roundstate=2
triggerall=root,stateno!=15124
triggerall=root,var(27)=3
trigger1 = (root,var(59))&&(root,var(24)>0);&&anim!=18733
trigger1 = ((anim!=18757)||((anim=18757)&&((animelem=5)||(animelem=6)||(animelem=7)||(animelem=8))))
trigger1 = anim!=18736
trigger1 = ((random%10)<5)
trigger1 = ((root,facing=1&&p2bodydist X>30&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>30&&enemy,facing=1))
value = 18757

[State 0, ChangeAnim];SHOOTCANNON
type = ChangeAnim
triggerall=root,statetype!=C
triggerall=roundstate=2
triggerall=root,var(27)!=3
trigger1 = (root,command="z")&&(root,var(24)>0);&&anim!=18733
trigger1 = ((anim!=18733)||((anim=18733)&&((animelem=5)||(animelem=6)||(animelem=7)||(animelem=8))))
trigger1 = anim!=18736
value = 18733

[State 0, ChangeAnim];SHOOTCANNONAI
type = ChangeAnim
triggerall=root,statetype!=C
triggerall=roundstate=2
triggerall=root,stateno!=15124
triggerall=root,var(27)!=3
trigger1 = (root,var(59))&&(root,var(24)>0);&&anim!=18733
trigger1 = ((anim!=18733)||((anim=18733)&&((animelem=5)||(animelem=6)||(animelem=7)||(animelem=8))))
trigger1 = anim!=18736
trigger1 = ((random%10)<5)
trigger1 = ((root,facing=1&&p2bodydist X>30&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>30&&enemy,facing=1))
value = 18733

[State 0, ChangeAnim];SHOOTFWDFREE
type = ChangeAnim
triggerall=((root,palno=6)||(root,palno=7))&&anim!=18736&&anim!=18738&&anim!=18740&&anim!=18741
triggerall=roundstate=2
trigger1 = (root,command="x")&&(root,fvar(24)=0)
trigger1=((root,facing=1&&p2bodydist X>22&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>22&&enemy,facing=1))&&(root,statetype=s)
trigger2 = (root,command="x")&&(root,fvar(24)=0)
trigger2 = (root,statetype=a)
trigger3 = (root,command="x")&&(root,fvar(24)=0)
trigger3=((root,facing=1&&p2bodydist X>30&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>30&&enemy,facing=1))&&(root,statetype=c)
value = 18736

[State 0, ChangeAnim];SHOOTFWDFREEAI
type = ChangeAnim
triggerall=((root,palno=6)||(root,palno=7))&&anim!=18736&&anim!=18738&&anim!=18740&&anim!=18741
triggerall=roundstate=2
trigger1 = (root,var(59))&&(anim!=18736)&&(root,fvar(24)=0)
trigger1=((root,facing=1&&p2bodydist X>22&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>22&&enemy,facing=1))&&(root,statetype=s)
trigger2 = (root,var(59))&&(anim!=18736)&&(root,fvar(24)=0)
trigger2 = (root,statetype=a)
trigger3 = (root,var(59))&&(anim!=18736)&&(root,fvar(24)=0)
trigger3=((root,facing=1&&p2bodydist X>30&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>30&&enemy,facing=1))&&(root,statetype=c)
value = 18736


[State 0, ChangeAnim];SHOOTUPFREE
type = ChangeAnim
triggerall=root,statetype!=C
triggerall=((root,palno=6)||(root,palno=7))
triggerall=roundstate=2
trigger1 = anim=18740&&root,command="x"&&(root,fvar(24)=0)
value = 18741


[State 0, ChangeAnim];SHOOTDWFREE
type = ChangeAnim
triggerall=root,statetype!=C
triggerall=((root,palno=6)||(root,palno=7))
triggerall=roundstate=2
trigger1 = (root,anim=18744)&&(root,command="holddown")&&(root,command="x")&&(root,fvar(24)=0)
value = 18745


[State 0, ChangeAnim];SHOOTFWDNOAMMO
type = ChangeAnim
triggerall=((root,palno!=6)&&(root,palno!=7))&&anim!=18736&&anim!=18738&&anim!=18740&&anim!=18741&&anim!=18743
triggerall=roundstate=2
trigger1 = (root,command="x")&&(root,fvar(24)=0)
value = 18742


[State 0, ChangeAnim];SHOOTUPNOAMMO
type = ChangeAnim
triggerall=root,statetype!=C
triggerall=((root,palno!=6)&&(root,palno!=7))
triggerall=roundstate=2
trigger1 = anim=18740&&root,command="x"&&(root,fvar(24)=0)
value = 18743

[State 0, ChangeAnim];SHOOTDWNOAMMO
type = ChangeAnim
triggerall=root,statetype!=C
triggerall=((root,palno!=6)&&(root,palno!=7))
triggerall=roundstate=2
trigger1 = (root,anim=18744)&&(root,command="holddown")&&(root,command="x")&&(root,fvar(24)=0)
value = 18746

[State 0, ChangeAnim];SHOOTFWDHMG
type = ChangeAnim
triggerall=anim!=18736&&anim!=18738&&anim!=18740&&anim!=18741
triggerall=roundstate=2
trigger1=((root,facing=1&&p2bodydist X>22&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>22&&enemy,facing=1))&&(root,statetype=s)
trigger1 = (root,command="x")&&((root,fvar(10)=1)||(root,fvar(10)=14)||(root,fvar(10)=15))
trigger2 = (root,command="x")&&((root,fvar(10)=1)||(root,fvar(10)=14)||(root,fvar(10)=15))
trigger2 = (root,statetype=a)
trigger3=((root,facing=1&&p2bodydist X>30&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>30&&enemy,facing=1))&&(root,statetype=c)
trigger3 = (root,command="x")&&((root,fvar(10)=1)||(root,fvar(10)=14)||(root,fvar(10)=15))
value = 18736

[State 0, ChangeAnim];SHOOTFWDHMGAI
type = ChangeAnim
triggerall=anim!=18736&&anim!=18738&&anim!=18740&&anim!=18741
triggerall=roundstate=2
trigger1=((root,facing=1&&p2bodydist X>22&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>22&&enemy,facing=1))&&(root,statetype=s)
trigger1 = (root,var(59))&&(anim!=18736)&&((root,fvar(10)=1)||(root,fvar(10)=14)||(root,fvar(10)=15))
trigger2 = (root,var(59))&&(anim!=18736)&&((root,fvar(10)=1)||(root,fvar(10)=14)||(root,fvar(10)=15))
trigger2 = (root,statetype=a)
trigger3=((root,facing=1&&p2bodydist X>30&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>30&&enemy,facing=1))&&(root,statetype=c)
trigger3 = (root,var(59))&&(anim!=18736)&&((root,fvar(10)=1)||(root,fvar(10)=14)||(root,fvar(10)=15))
value = 18736

[State 0, ChangeAnim];SHOOTUPHMG
type = ChangeAnim
triggerall=root,statetype!=C
triggerall=roundstate=2
trigger1 = anim=18740&&root,command="x"&&((root,fvar(10)=1)||(root,fvar(10)=14)||(root,fvar(10)=15))
value = 18741

[State 0, ChangeAnim];SHOOTDWHMG
type = ChangeAnim
triggerall=root,statetype!=C
triggerall=roundstate=2
trigger1 = (root,anim=18744)&&(root,command="holddown")&&(root,command="x")&&((root,fvar(10)=1)||(root,fvar(10)=14)||(root,fvar(10)=15))
value = 18745



[State 0, ChangeAnim];SHOOTFWDLASER
type = ChangeAnim
triggerall=anim!=18736&&anim!=18738&&anim!=18740&&anim!=18741&&anim!=18743
triggerall=roundstate=2
trigger1 = (root,command="x")&&((root,fvar(10)=10)||(root,fvar(10)=11))
trigger1=((root,facing=1&&p2bodydist X>22&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>22&&enemy,facing=1))&&(root,statetype=s)
trigger2 = (root,command="x")&&((root,fvar(10)=10)||(root,fvar(10)=11))
trigger2 = (root,statetype=a)
trigger3 = (root,command="x")&&((root,fvar(10)=10)||(root,fvar(10)=11))
trigger3=((root,facing=1&&p2bodydist X>30&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>30&&enemy,facing=1))&&(root,statetype=c)
value = 18742

[State 0, ChangeAnim];SHOOTFWDLASERAI
type = ChangeAnim
triggerall=anim!=18736&&anim!=18738&&anim!=18740&&anim!=18741&&anim!=18743
triggerall=roundstate=2
trigger1 = (root,var(59))&&(anim!=18742)&&((root,fvar(10)=10)||(root,fvar(10)=11))
trigger1=((root,facing=1&&p2bodydist X>22&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>22&&enemy,facing=1))&&(root,statetype=s)
trigger2 = (root,var(59))&&(anim!=18742)&&((root,fvar(10)=10)||(root,fvar(10)=11))
trigger2 = (root,statetype=a)
trigger3 = (root,var(59))&&(anim!=18742)&&((root,fvar(10)=10)||(root,fvar(10)=11))
trigger3=((root,facing=1&&p2bodydist X>30&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>30&&enemy,facing=1))&&(root,statetype=c)
value = 18742

[State 0, ChangeAnim];SHOOTUPLASER
type = ChangeAnim
triggerall=root,statetype!=C
triggerall=roundstate=2
trigger1 = ((anim=18740)||(anim=18743))&&root,command="x"&&((root,fvar(10)=10)||(root,fvar(10)=11))
value = 18743

[State 0, ChangeAnim];SHOOTDWLASER
type = ChangeAnim;triggerall=root,statetype!=C
triggerall=roundstate=2
trigger1 = (root,anim=18744)&&((root,fvar(10)=10)||(root,fvar(10)=11))&&anim!=18746
value = 18746



[State 0, ChangeAnim];SHOOTFWDPUSH
type = ChangeAnim
triggerall=anim!=18736&&anim!=18738&&anim!=18740&&anim!=18741&&anim!=18743
triggerall=roundstate=2
trigger1 = (root,command="x")&&((root,fvar(10)=3)||(root,fvar(10)=12)||(root,fvar(10)=13)||(root,fvar(10)=8)||(root,fvar(10)=16)||(root,fvar(10)=17))
trigger1=1>numhelper(3000)+root,numproj	;OTHERPUSH
trigger1=((root,facing=1&&p2bodydist X>22&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>22&&enemy,facing=1))&&(root,statetype=s)
trigger2 = (root,command="x")&&((root,fvar(10)=5));sgrenade
trigger2=(2+2*((root,palno=7)||(root,palno=5)))>(numhelper(3000)+root,numproj)
trigger2=((root,facing=1&&p2bodydist X>22&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>22&&enemy,facing=1))&&(root,statetype=s)
trigger3 = (root,command="x")&&((root,fvar(10)=5));sgrenade
trigger3=(2+2*((root,palno=7)||(root,palno=5)))>(numhelper(3000)+root,numproj)
trigger3=((root,facing=1&&p2bodydist X>30&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>30&&enemy,facing=1))&&(root,statetype=c)
trigger4 = (root,command="x")&&((root,fvar(10)=5));sgrenade
trigger4=(2+2*((root,palno=7)||(root,palno=5)))>(numhelper(3000)+root,numproj)
trigger4=(root,statetype=a)
trigger5 = (root,command="x")&&((root,fvar(10)=3)||(root,fvar(10)=12)||(root,fvar(10)=13)||(root,fvar(10)=8)||(root,fvar(10)=16)||(root,fvar(10)=17))
trigger5=1>numhelper(3000)+root,numproj	;OTHERPUSH
trigger5=((root,facing=1&&p2bodydist X>30&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>30&&enemy,facing=1))&&(root,statetype=C)
trigger6 = (root,command="x")&&((root,fvar(10)=3)||(root,fvar(10)=12)||(root,fvar(10)=13)||(root,fvar(10)=8)||(root,fvar(10)=16)||(root,fvar(10)=17))
trigger6=1>numhelper(3000)+root,numproj	;OTHERPUSH
trigger6=(root,statetype=A)
value = 18749

[State 0, ChangeAnim];SHOOTFWDPUSHAI
type = ChangeAnim
triggerall=anim!=18736&&anim!=18738&&anim!=18740&&anim!=18741&&anim!=18743
triggerall=roundstate=2
trigger1 = (root,var(59))&&(anim!=18749)&&((root,fvar(10)=3)||(root,fvar(10)=12)||(root,fvar(10)=13)||(root,fvar(10)=8)||(root,fvar(10)=16)||(root,fvar(10)=17))
trigger1=1>numhelper(3000)+root,numproj	;OTHERPUSH
trigger1=((root,facing=1&&p2bodydist X>22&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>22&&enemy,facing=1))&&(root,statetype=s)
trigger2 = (root,var(59))&&(anim!=18749)&&((root,fvar(10)=5));sgrenade
trigger2=(2+2*((root,palno=7)||(root,palno=5)))>(numhelper(3000)+root,numproj)
trigger2=((root,facing=1&&p2bodydist X>22&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>22&&enemy,facing=1))&&(root,statetype=s)
trigger3 = (root,var(59))&&(anim!=18749)&&((root,fvar(10)=5));sgrenade
trigger3=(2+2*((root,palno=7)||(root,palno=5)))>(numhelper(3000)+root,numproj)
trigger3=((root,facing=1&&p2bodydist X>30&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>30&&enemy,facing=1))&&(root,statetype=c)
trigger4 = (root,var(59))&&(anim!=18749)&&((root,fvar(10)=5));sgrenade
trigger4=(2+2*((root,palno=7)||(root,palno=5)))>(numhelper(3000)+root,numproj)
trigger4=(root,statetype=a)
trigger5 = (root,var(59))&&(anim!=18749)&&((root,fvar(10)=3)||(root,fvar(10)=12)||(root,fvar(10)=13)||(root,fvar(10)=8)||(root,fvar(10)=16)||(root,fvar(10)=17))
trigger5=1>numhelper(3000)+root,numproj	;OTHERPUSH
trigger5=((root,facing=1&&p2bodydist X>30&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>30&&enemy,facing=1))&&(root,statetype=C)
trigger6 = (root,var(59))&&(anim!=18749)&&((root,fvar(10)=3)||(root,fvar(10)=12)||(root,fvar(10)=13)||(root,fvar(10)=8)||(root,fvar(10)=16)||(root,fvar(10)=17))
trigger6=1>numhelper(3000)+root,numproj	;OTHERPUSH
trigger6=(root,statetype=A)
value = 18749

[State 0, ChangeAnim];SHOOTUPPUSH
type = ChangeAnim
triggerall=root,statetype!=C
triggerall=roundstate=2
trigger1=1>numhelper(3000)+root,numproj
trigger1 = ((anim=18740)||(anim=18750))&&root,command="x"&&((root,fvar(10)=3)||(root,fvar(10)=12)||(root,fvar(10)=13)||(root,fvar(10)=8)||(root,fvar(10)=16)||(root,fvar(10)=17))
trigger2=(2+2*((root,palno=7)||(root,palno=5)))>(numhelper(3000)+root,numproj)
trigger2 = ((anim=18740)||(anim=18750))&&root,command="x"&&((root,fvar(10)=5));sgrenade
value = 18750

[State 0, ChangeAnim];SHOOTDWPUSH
type = ChangeAnim
triggerall=roundstate=2;trigger1=1>numhelper(3000)+root,numproj
trigger1 = (root,anim=18744)&&((root,fvar(10)=3)||(root,fvar(10)=12)||(root,fvar(10)=13)||(root,fvar(10)=8)||(root,fvar(10)=16)||(root,fvar(10)=17))&&anim!=18751
trigger2=(2+2*((root,palno=7)||(root,palno=5)))>(numhelper(3000)+root,numproj)
trigger2 = (root,anim=18744)&&((root,fvar(10)=5))&&anim!=18751
value = 18751



[State 0, ChangeAnim];SHOOTFWDNOPUSH
type = ChangeAnim
triggerall=anim!=18736&&anim!=18738&&anim!=18740&&anim!=18741&&anim!=18743
triggerall=roundstate=2
trigger1 = (root,command="x")&&((root,fvar(10)=2)||(root,fvar(10)=4)||(root,fvar(10)=6)||(root,fvar(10)=7)||(root,fvar(10)=18))
trigger1=(2+2*((root,palno=7)||(root,palno=5)))>(numhelper(3000)+root,numproj);OTHERWEAPONOPUSH
trigger1=((root,facing=1&&p2bodydist X>22&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>22&&enemy,facing=1))&&(root,statetype=s)
trigger2 = (root,command="x")&&((root,fvar(10)=9));ZANTETSU
trigger2=(1)>(numhelper(3000)+root,numproj)
trigger2=((root,facing=1&&p2bodydist X>22&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>22&&enemy,facing=1))&&(root,statetype=s)
trigger3 = (root,command="x")&&((root,fvar(10)=9));ZANTETSU
trigger3=(1)>(numhelper(3000)+root,numproj)
trigger3=((root,facing=1&&p2bodydist X>30&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>30&&enemy,facing=1))&&(root,statetype=C)
trigger4 = (root,command="x")&&((root,fvar(10)=9));ZANTETSU
trigger4=(1)>(numhelper(3000)+root,numproj)
trigger4=(root,statetype=a)
trigger5 = (root,command="x")&&((root,fvar(10)=2)||(root,fvar(10)=4)||(root,fvar(10)=6)||(root,fvar(10)=7)||(root,fvar(10)=18))
trigger5=(2+2*((root,palno=7)||(root,palno=5)))>(numhelper(3000)+root,numproj);OTHERWEAPONOPUSH
trigger5=((root,facing=1&&p2bodydist X>30&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>30&&enemy,facing=1))&&(root,statetype=C)
trigger6 = (root,command="x")&&((root,fvar(10)=2)||(root,fvar(10)=4)||(root,fvar(10)=6)||(root,fvar(10)=7)||(root,fvar(10)=18))
trigger6=(2+2*((root,palno=7)||(root,palno=5)))>(numhelper(3000)+root,numproj);OTHERWEAPONOPUSH
trigger6=(root,statetype=a)
value = 18752

[State 0, ChangeAnim];SHOOTFWDNOPUSHAI
type = ChangeAnim
triggerall=anim!=18736&&anim!=18738&&anim!=18740&&anim!=18741&&anim!=18743
triggerall=roundstate=2
trigger1 = (root,var(59))&&(anim!=18752)&&((root,fvar(10)=2)||(root,fvar(10)=4)||(root,fvar(10)=6)||(root,fvar(10)=7)||(root,fvar(10)=18))
trigger1=(2+2*((root,palno=7)||(root,palno=5)))>(numhelper(3000)+root,numproj);OTHERWEAPONOPUSH
trigger1=((root,facing=1&&p2bodydist X>22&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>22&&enemy,facing=1))&&(root,statetype=s)
trigger2 = (root,var(59))&&(anim!=18752)&&((root,fvar(10)=9));ZANTETSU
trigger2=(1)>(numhelper(3000)+root,numproj)
trigger2=((root,facing=1&&p2bodydist X>22&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>22&&enemy,facing=1))&&(root,statetype=s)
trigger3 = (root,var(59))&&(anim!=18752)&&((root,fvar(10)=9));ZANTETSU
trigger3=(1)>(numhelper(3000)+root,numproj)
trigger3=((root,facing=1&&p2bodydist X>30&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>30&&enemy,facing=1))&&(root,statetype=C)
trigger4 = (root,var(59))&&(anim!=18752)&&((root,fvar(10)=9));ZANTETSU
trigger4=(1)>(numhelper(3000)+root,numproj)
trigger4=(root,statetype=a)
trigger5 = (root,var(59))&&(anim!=18752)&&((root,fvar(10)=2)||(root,fvar(10)=4)||(root,fvar(10)=6)||(root,fvar(10)=7)||(root,fvar(10)=18))
trigger5=(2+2*((root,palno=7)||(root,palno=5)))>(numhelper(3000)+root,numproj);OTHERWEAPONOPUSH
trigger5=((root,facing=1&&p2bodydist X>30&&enemy,facing=-1)||(root,facing=-1&&p2bodydist X>30&&enemy,facing=1))&&(root,statetype=C)
trigger6 = (root,var(59))&&(anim!=18752)&&((root,fvar(10)=2)||(root,fvar(10)=4)||(root,fvar(10)=6)||(root,fvar(10)=7)||(root,fvar(10)=18))
trigger6=(2+2*((root,palno=7)||(root,palno=5)))>(numhelper(3000)+root,numproj);OTHERWEAPONOPUSH
trigger6=(root,statetype=a)
value = 18752

[State 0, ChangeAnim];SHOOTUPNOPUSH
type = ChangeAnim
triggerall=root,statetype!=C
triggerall=roundstate=2
trigger1=(2+2*((root,palno=7)||(root,palno=5)))>(numhelper(3000)+root,numproj)
trigger1 = ((anim=18740)||(anim=18750))&&root,command="x"&&((root,fvar(10)=2)||(root,fvar(10)=4)||(root,fvar(10)=6)||(root,fvar(10)=7)||(root,fvar(10)=18))
trigger2=(1)>(numhelper(3000)+root,numproj)
trigger2 = ((anim=18740)||(anim=18750))&&root,command="x"&&((root,fvar(10)=9))
value = 18753

[State 0, ChangeAnim];SHOOTDWNOPUSH
type = ChangeAnim
triggerall=roundstate=2
trigger1=(2+2*((root,palno=7)||(root,palno=5)))>(numhelper(3000)+root,numproj)
trigger1 = (root,anim=18744)&&((root,fvar(10)=2)||(root,fvar(10)=4)||(root,fvar(10)=6)||(root,fvar(10)=7)||(root,fvar(10)=18))&&anim!=18754
trigger2=(1)>(numhelper(3000)+root,numproj)
trigger2 = (root,anim=18744)&&((root,fvar(10)=9))&&anim!=18754
value = 18754

;BINDS---------------------------------------------------------------------------

[State 0, BindToRoot];STAND
type = BindToROOT
trigger1=root,anim=18704
trigger2=((root,anim=18705)||(root,anim=18706))&&root,animelem=1,1
trigger3=((root,anim=18705)||(root,anim=18706))&&root,animelem=16,1
trigger4=root,anim=18677;trigger5=root,statetype=c
trigger5=root,stateno=52
trigger6=((anim=18745)||(anim=18746)||(anim=18751)||(anim=18754))
time =-1
pos = 0,0


[State 0, BindToRoot];CROUCHING/STANDING 1
type = BindToROOT
trigger1=root,anim=18702
trigger1=root,animelem=1,1
trigger2=root,anim=18703
trigger2=root,animelem=7,1
time =-1
pos = 0,3

[State 0, BindToRoot];CROUCHING/STANDING 2
type = BindToROOT
trigger1=root,anim=18702
trigger1=root,animelem=2,1
trigger2=root,anim=18703
trigger2=root,animelem=6,1
time =-1
pos = 0,4
[State 0, BindToRoot];CROUCHING/STANDING 3
type = BindToROOT
trigger1=root,anim=18702
trigger1=root,animelem=3,1
trigger2=root,anim=18703
trigger2=root,animelem=5,1
time =-1
pos = 0,5
[State 0, BindToRoot];CROUCHING/STANDING 4
type = BindToROOT
trigger1=root,anim=18702
trigger1=root,animelem=4,1
trigger2=root,anim=18703
trigger2=root,animelem=4,1
time =-1
pos = 0,6
[State 0, BindToRoot];CROUCHING/STANDING 5
type = BindToROOT
trigger1=root,anim=18702
trigger1=root,animelem=5,1
trigger2=root,anim=18703
trigger2=root,animelem=3,1
time =-1
pos = 0,7
[State 0, BindToRoot];CROUCHING/STANDING 6
type = BindToROOT
trigger1=root,anim=18702
trigger1=root,animelem=6,1
trigger2=root,anim=18703
trigger2=root,animelem=2,1
time =-1
pos = 0,8
[State 0, BindToRoot];CROUCHING/STANDING 7
type = BindToROOT
trigger1=root,anim=18702
trigger1=root,animelem=7,1
trigger2=root,anim=18703
trigger2=root,animelem=1,1
time =-1
pos = 0,9
[State 0, BindToRoot];CROUCH
type = BindToROOT
trigger1=root,stateno=11
time =-1
pos = 0,10

[State 0, BindToRoot];WALK01
type = BindToROOT
trigger1=((root,anim=18705)||(root,anim=18706))&&root,animelem=2,1
trigger2=((root,anim=18705)||(root,anim=18706))&&root,animelem=15,1
time =-1
pos = -2,1

[State 0, BindToRoot];WALK02
type = BindToROOT
trigger1=((root,anim=18705)||(root,anim=18706))&&root,animelem=3,1
trigger2=((root,anim=18705)||(root,anim=18706))&&root,animelem=14,1
time =-1
pos = -4,2

[State 0, BindToRoot];WALK03
type = BindToROOT
trigger1=((root,anim=18705)||(root,anim=18706))&&root,animelem=4,1
trigger2=((root,anim=18705)||(root,anim=18706))&&root,animelem=13,1
time =-1
pos = -5,3

[State 0, BindToRoot];WALK04
type = BindToROOT
trigger1=((root,anim=18705)||(root,anim=18706))&&root,animelem=5,1
trigger2=((root,anim=18705)||(root,anim=18706))&&root,animelem=12,1
time =-1
pos = -6,4

[State 0, BindToRoot];WALK05
type = BindToROOT
trigger1=((root,anim=18705)||(root,anim=18706))&&root,animelem=6,1
trigger2=((root,anim=18705)||(root,anim=18706))&&root,animelem=11,1
time =-1
pos = -7,5

[State 0, BindToRoot];WALK06
type = BindToROOT
trigger1=((root,anim=18705)||(root,anim=18706))&&root,animelem=7,1
trigger2=((root,anim=18705)||(root,anim=18706))&&root,animelem=10,1
time =-1
pos = -8,6

[State 0, BindToRoot];WALK07
type = BindToROOT
trigger1=((root,anim=18705)||(root,anim=18706))&&root,animelem=8,1
trigger2=((root,anim=18705)||(root,anim=18706))&&root,animelem=9,1
time =-1
pos = -9,7

[State 0, BindToRoot];JUMPING
type = BindToRoot
trigger1 = (root,stateno=15126)&&(anim!=18745)&&(anim!=18746)&&(anim!=18751)&&(anim!=18754)
time = -1
pos = 0,-10


;ANGLES---------------------------------------------------------------------------

[State 0, VarSet]
type = VarSet
trigger1 = anim=18736
v = 44
value = 0

[State 0, VarSet]
type = VarSet
trigger1 = anim=18741
v = 44
value = 90

[State 0, VarSet]
type = VarSet
trigger1 = anim=18745
v = 44
value = 270

[State 0, ParentVarSet]
type = parentvaradd
trigger1 = anim=18757&&animelem=1,1
v = 24
value = -1


;BULLETS---------------------------------------------------------------------------

[State 0, Helper];FREESHOOTFWD
type = Helper
trigger1 =((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1))
trigger1=anim=18736
trigger1=(root,fvar(24)=0)
helpertype = normal ;player
name = "FREESHOOT"
ID = 15001
stateno = 15103
pos =35,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper];FREESHOOTUP
type = Helper
trigger1 =((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1))
trigger1=anim=18741
trigger1=(root,fvar(24)=0)
helpertype = normal ;player
name = "FREESHOOT"
ID = 15001
stateno = 15103
pos =17,-60
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper];FREESHOOTUP
type = Helper
trigger1 =((AnimElem = 1,1)||(AnimElem = 3,1)||(animelem=5,1))
trigger1=anim=18745
trigger1=(root,fvar(24)=0)
helpertype = normal ;player
name = "FREESHOOT"
ID = 15001
stateno = 15103
pos =17,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0,HMGFWD]
type = Projectile
triggerall=((floor(root,fvar(10)))=1)&&(anim=18736)
trigger1 = AnimElem = 1,1
trigger2 = AnimElem = 3,1
trigger3 = AnimElem = 5,1
trigger4 = AnimElem = 7,1
postype = p1
projanim = 1201
projhitanim = 1998
projpriority = 1
projheightbound = 0,0
projedgebound = 100
projscale=1,1
ProjHits = 1;1+ifelse( p2name="abyss",10,0)
velocity = 10+VEL X,0;15+const(velocity.walk.fwd.x),0
offset =35,-10+ifelse(animelem=1,1,-12,ifelse(animelem=3,1,-17,ifelse(animelem=5,1,-22,ifelse(animelem=7,1,-12,ifelse(animelem=9,1,-17,ifelse(animelem=11,1,-22,-22))))));97,-104
attr = S, SP
damage   = 11,6
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 0,0
hitsound   = s4000,5
sparkxy = 0,0
guardsound = s4000,6
ground.type = low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.animtype = Back
air.velocity = 0,0
air.fall = 0
down.velocity = 0,0
down.hittime = 0
down.bounce = 0
palfx.time = 3
palfx.add = 248,56,0
numhits=1


[State 0,HMGUP]
type = Helper
triggerall =((floor(root,fvar(10)))=1)&&anim=18741
trigger1 = AnimElem = 1,1
trigger2 = AnimElem = 3,1
trigger3 = AnimElem = 5,1
trigger4 = AnimElem = 7,1
helpertype = normal ;player
name = "HMG"
ID = 3000;default helper projectile id
stateno = 255
pos = 19+ifelse((animelem=1)||(animelem=7),4,ifelse((animelem=3)||(animelem=9),0,-4)),-60 ;8,-25
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, HMGDW];hmg saltando down
type = Helper
triggerall =((floor(root,fvar(10)))=1)&&anim=18745
trigger1 = AnimElem = 1,1
trigger2 = AnimElem = 3,1
trigger3 = AnimElem = 5,1
trigger4 = AnimElem = 7,1
helpertype = normal ;player
name = "HMG"
ID = 3000;default helper projectile id
stateno = 255
pos =17+ifelse((animelem=1)||(animelem=7),-4,ifelse((animelem=3)||(animelem=9),0,4)),0
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 2000, ZantetsuLV];ZantetsuSwordStand
type = Projectile
trigger1 = root,fvar(10)=9
trigger1 = AnimElem = 1,1
trigger1= (anim=18752)||(anim=18754)
postype = p1
projremovetime=ifelse(root,palno=5,-1,16)
projanim = 1225
projhitanim = -1
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscale=1,1
ProjHits = 99;1+ifelse( p2name="abyss",10,0)
velocity = ifelse(root,palno=5,15,3)+vel x,0
offset = 27,-26;97,-104
attr = S, SA
damage   = ifelse(root,palno=5,12,6),ifelse(palno=5,12,6)
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 0,0;10,10
hitsound   = s0,1
sparkxy = 0,0;500,500
guardsound = s4000,18
ground.type = low
ground.slidetime = 0;25
ground.hittime  = 0;25
ground.velocity = 0;-6
air.animtype = Back
air.velocity = 0,0;-4,-6
air.fall = 0
down.velocity = 0,0;-4,-6
down.hittime = 0
down.bounce = 0
palfx.time = 3
palfx.add = 248,56,0;255,255,255


[State 0, SBIGhmgbulletFWRD]
type = Projectile
triggerall=root,fvar(10)=14
triggerall=(anim=18736)
trigger1 = AnimElem = 1,1
trigger2 = AnimElem = 3,1
trigger3 = AnimElem = 5,1
trigger4 = AnimElem = 7,1
trigger5 = AnimElem = 9,1
trigger6 = AnimElem = 11,1
postype = p1
projanim = 1261
projhitanim = 1998
projpriority = 1
projheightbound = 0,0
projedgebound = 100
projscale=1,1
ProjHits = 1;1+ifelse( p2name="abyss",10,0)
velocity = 12+root,const(velocity.walk.fwd.x),0
offset =45,-10+ifelse(animelem=1,1,-12,ifelse(animelem=3,1,-17,ifelse(animelem=5,1,-22,ifelse(animelem=7,1,-12,ifelse(animelem=9,1,-17,ifelse(animelem=11,1,-22,-22))))));97,-104
attr = S, SP
damage   = 13,7
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 0,0
hitsound   = s4000,5
sparkxy = 0,0
guardsound = s4000,6
ground.type = low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.animtype = Back
air.velocity = 0,0
air.fall = 0
down.velocity = 0,0
down.hittime = 0
down.bounce = 0
palfx.time = 3
palfx.add = 248,56,0
numhits=1

[State 0, SHMGJD2];Shmg saltando down
type = Helper
triggerall = root,fvar(10)=14&&anim=18745
trigger1 = animelem=1||animelem=3||animelem=5||animelem=7||animelem=9||animelem=11
helpertype = normal ;player
name = "SHMG"
ID = 3000;default helper projectile id
stateno = 283
pos =17+ifelse((animelem=1)||(animelem=7),-4,ifelse((animelem=3)||(animelem=9),0,4)),0
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, SHMGUP];Shmg caminando up
type = Helper
triggerall = root,fvar(10)=14&&anim=18741
trigger1 = animelem=1||animelem=3||animelem=5||animelem=7||animelem=9||animelem=11
helpertype = normal ;player
name = "SHMG"
ID = 3000;default helper projectile id
stateno = 283
pos = 19+ifelse((animelem=1)||(animelem=7),4,ifelse((animelem=3)||(animelem=9),0,-4)),-60 ;8,-25
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State 0, 2hmgbulletFWRD1]
type = Projectile
triggerall=root,fvar(10)=15&&((ANIM=18736))
trigger1 = AnimElem = 1,1
trigger2 = AnimElem = 3,1
trigger3 = AnimElem = 5,1
trigger4 = AnimElem = 7,1
postype = p1
projanim = 1264
projhitanim = 1998
projpriority = 1
projheightbound = 0,0
projedgebound = 100
projscale=1,1
ProjHits = 1;1+ifelse( p2name="abyss",10,0)
velocity = 10+VEL X,0
offset =48,-24
attr = S, SP
damage   = 11,6
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 0,0
hitsound   = s4000,5
sparkxy = 0,0
guardsound = s4000,6
ground.type = low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.animtype = Back
air.velocity = 0,0
air.fall = 0
down.velocity = 0,0
down.hittime = 0
down.bounce = 0
palfx.time = 3
palfx.add = 248,56,0
numhits=1

[State 0, 2hmgbulletFWRD2]
type = Projectile
triggerall=root,fvar(10)=15&&((ANIM=18736))
trigger1 = AnimElem = 2,1
trigger2 = AnimElem = 4,1
trigger3 = AnimElem = 6,1
trigger4 = AnimElem = 8,1
postype = p1
projanim = 1264
projhitanim = 1998
projpriority = 1
projheightbound = 0,0
projedgebound = 100
projscale=1,1
ProjHits = 1;1+ifelse( p2name="abyss",10,0)
velocity = 10+VEL X,0
offset =48,-31;97,-104
attr = S, SP
damage   = 11,6
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 0,0
hitsound   = s4000,5
sparkxy = 0,0
guardsound = s4000,6
ground.type = low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.animtype = Back
air.velocity = 0,0
air.fall = 0
down.velocity = 0,0
down.hittime = 0
down.bounce = 0
palfx.time = 3
palfx.add = 248,56,0
numhits=1

[State 0, 2hmgbulletUP1]
type = Projectile
triggerall=root,fvar(10)=15&&anim=18741
trigger1 = AnimElem = 1,1
trigger2 = AnimElem = 3,1
trigger3 = AnimElem = 5,1
trigger4 = AnimElem = 7,1
postype = p1
projanim = 1265
projhitanim = 1998
projpriority = 1
projheightbound = -240,100
projedgebound = 100
projscale=1,1
ProjHits = 1;1+ifelse( p2name="abyss",10,0)
velocity = 0,-10-ABS(vel y)
offset =15,-78
attr = S, SP
damage   = 11,6
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 0,0
hitsound   = s4000,5
sparkxy = 0,0
guardsound = s4000,6
ground.type = low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.animtype = Back
air.velocity = 0,0
air.fall = 0
down.velocity = 0,0
down.hittime = 0
down.bounce = 0
palfx.time = 3
palfx.add = 248,56,0
numhits=1


[State 0, 2hmgbulletUP2]
type = Projectile
triggerall=root,fvar(10)=15&&anim=18741
trigger1 = AnimElem = 2,1
trigger2 = AnimElem = 4,1
trigger3 = AnimElem = 6,1
trigger4 = AnimElem = 8,1
postype = p1
projanim = 1265
projhitanim = 1998
projpriority = 1
projheightbound = -240,100
projedgebound = 100
projscale=1,1
ProjHits = 1;1+ifelse( p2name="abyss",10,0)
velocity = 0,-10-ABS(vel y)
offset =25,-78
attr = S, SP
damage   = 11,6
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 0,0
hitsound   = s4000,5
sparkxy = 0,0
guardsound = s4000,6
ground.type = low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.animtype = Back
air.velocity = 0,0
air.fall = 0
down.velocity = 0,0
down.hittime = 0
down.bounce = 0
palfx.time = 3
palfx.add = 248,56,0
numhits=1


[State 0, 2hmgbulletDOWN1]
type = Projectile
triggerall=root,fvar(10)=15&&anim=18745
trigger1 = AnimElem = 1,1
trigger2 = AnimElem = 3,1
trigger3 = AnimElem = 5,1
trigger4 = AnimElem = 7,1
postype = p1
projanim = 1266
projhitanim = 1998
projpriority = 1
projremanim=1999
projheightbound = -240,0
projedgebound = 100
projscale=1,1
ProjHits = 1
velocity = 0,10+ABS(vel y)
offset =14,20
attr = S, SP
damage   = 11,6
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 0,0
hitsound   = s4000,5
sparkxy = 0,0
guardsound = s4000,6
ground.type = low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.animtype = Back
air.velocity = 0,0
air.fall = 0
down.velocity = 0,0
down.hittime = 0
down.bounce = 0
palfx.time = 3
palfx.add = 248,56,0
numhits=1

[State 0, 2hmgbulletDOWN2]
type = Projectile
triggerall=root,fvar(10)=15&&anim=18745
trigger1 = AnimElem = 2,1
trigger2 = AnimElem = 4,1
trigger3 = AnimElem = 6,1
trigger4 = AnimElem = 8,1
postype = p1
projanim = 1266
projhitanim = 1998
projpriority = 1
projremanim=1999
projheightbound = -240,0
projedgebound = 100
projscale=1,1
ProjHits = 1
velocity = 0,10+ABS(vel y)
offset =24,20
attr = S, SP
damage   = 11,6
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 0,0
hitsound   = s4000,5
sparkxy = 0,0
guardsound = s4000,6
ground.type = low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.animtype = Back
air.velocity = 0,0
air.fall = 0
down.velocity = 0,0
down.hittime = 0
down.bounce = 0
palfx.time = 3
palfx.add = 248,56,0
numhits=1


[State 0, THUNDERSHOTLV];THUNDERSHOT
type = Helper
triggerall = root,fvar(10)=12&&numhelper(3000)=0&&((anim=[18749,18751]));<2
trigger1 = animelem=1,1
helpertype = normal ;player
name = "THUNDERSHOT";ifelse((anim=8202),25,ifelse(anim=12204,28,0)),ifelse((anim=8202),-20,ifelse(anim=11202,-60,ifelse(anim=12204,-20,0)))
ID = 3000;default helper projectile id
stateno = 280;278
pos = ifelse((anim=8202),32,ifelse(anim=12204,28,ifelse(anim=8107,42,0))),ifelse((anim=8202),-14,ifelse(anim=11202,-60,ifelse(anim=12204,-20,ifelse(anim=8107,-10,0))))
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

;SOUNDS---------------------------------------------------------------------------
[State 0, hmg];hmg Sounds
type = PlaySnd
triggerall =(root,fvar(10)=1)||(root,fvar(10)=14)||(root,fvar(10)=15)
trigger1=(Anim=18741)||(Anim=18736)
trigger1=Animelem=1,2
value = 4000,9
volumescale = 256
channel = 0

[State 0, hmg];hmg Sounds free
type = PlaySnd
triggerall =(root,fvar(10)=0)
triggerall = (root,palno=6)||(root,palno=7)
trigger1=(Anim=18741)||(Anim=18736)
trigger1=Animelem=1,2
value = 4000,9
volumescale = 256
channel = 0


[State 0, Zantetsu];Zantetsu Sounds
type = PlaySnd
triggerall = root,fvar(10)=9
trigger1= (anim=18752)||(anim=18754)
trigger1=Animelem=1,1
value = 4000,16
volumescale = 256
channel = -1


;[State 0, laser];laser Sounds
;type = PlaySnd
;triggerall = ((root,var(10)=109))&&roundstate=2
;trigger1=anim=18742&&root,fvar(24)>0&&animelem=1,1;||(Anim=11203)||(Anim=12205)||(Anim=8604)
;value = 4000,29
;volumescale = 256
;channel = 0
;
;
;[State 0, stoplaser];stop laser Sounds
;type = stopsnd
;triggerall = ((root,var(10)=109))
;trigger1=anim!=18742;&&anim!=8203;||(Anim=11203)||(Anim=12205)||(Anim=8604)
;trigger2=root,fvar(24)=0
;channel = 0


;AMMOSYSTEM---------------------------------------------------------------------------

[State 0, ParentVarAdd]
type = ParentVarAdd
triggerall=(floor(root,fvar(10)))>0
trigger1 = root,fvar(10)!=12
trigger1 = (Anim=18741)||(Anim=18736)||(anim=18745)||(anim=18743)||(anim=18742)||(anim=18746)
trigger1 = ((AnimElem = 1,1)||(AnimElem = 3,1)||(AnimElem = 5,1)||(AnimElem = 7,1))
trigger2 = (Anim=[18749,18754])
trigger2 = (AnimElem = 1,1)
trigger3 = root,fvar(10)=12
trigger3 = (anim=18742)||(anim=18743)||(anim=18746)
trigger3 = (AnimElem = 1,1)
fv =24     ;fv = 
value = -1

[State 0, ParentVarAdd]
type = ParentVarAdd
triggerall=(floor(root,fvar(10)))=15
triggerall=(anim=18741)||(anim=18736)||(anim=18745)
trigger1 = AnimElem = 2,1
trigger2 = AnimElem = 4,1
trigger3 = AnimElem = 6,1
trigger4 = AnimElem = 8,1
fv =24     ;fv = 
value = -1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 =(floor(root,fvar(24)))<=0
fv = 10    ;fv = 
value = 0

;END---------------------------------------------------------------------------

[State 0, DestroySelf]
type = DestroySelf
trigger1= root,var(10)<100
trigger2=root,numhelper(15101)>1&&time;trigger4=win
trigger3=root,stateno=105

[State 0, ChangeState]
type = ChangeState
trigger1 = root,stateno=15128
value = 301

;---------------------------------------------------------------------------
;LVARMORCANNON
[Statedef 15131]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18734
sprpriority = 5
velset = 12,0

[State 0, PlaySnd];Super Grenade Sound pouwmn
type = PlaySnd
trigger1 = time=0
value = 4000,3
volumescale = 256
channel = -1


[State 0, EnvColor]
type = EnvColor
trigger1 = movecontact
value = 255,255,255
time = 1

[State 0, ParentVarSet];Le resta a la variable canion
type = ParentVarSet
triggerall=root,var(24)>0
trigger1 = time=0
v =  24   ;fv = 
value = root,var(24)-1

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 253
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 75+((25)*(root,var(27)=1)),35+((25)*(root,var(27)=1))
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4;s4000,1
guardsound = s4000,4;s4000,1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
value = 253

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;EMPTY
[Statedef 15132]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 20102
sprpriority = 99

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 0, ChangeAnim];BLINK
type = ChangeAnim
trigger1 = anim!=20103&&time>45
value = 20103

[State 0, VelAdd]
type = Veladd
trigger1 = time<16
y = -.1

[State 0, VelAdd]
type = Veladd
trigger1 = (time>=16)&&(time<45)
y = .1

[State 0, VelAdd]
type = Veladd
trigger1 = time>=45
y = -.1

[State 1105]
type = destroyself
trigger1=time>100

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SMOBILEFALLING
[Statedef 15133]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18800
sprpriority = 0
velset = 0,5
poweradd=ifelse((root,var(59)=1),-2000,-floor(root,fvar(18)))

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 24
value = 10

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=0
value =15134
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SMOBILEENTERHERE
[Statedef 15134]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18800
sprpriority = 0
velset = 0,5


[State 0, VelSet]
type = VelSet
trigger1 = pos y>=0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0


[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing&&time=0


[State 0, PosSet]
type = PosSet
trigger1 = root,stateno=14990
x = root,pos x


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, Explod];Enter Here
type = Explod
trigger1 = numexplod(545454)=0&&root,stateno!=14990&&root,var(10)!=110
anim = 20100
ID = 545454
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 11    ;fv = 10
value = root,pos y

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,anim=18801	;ANIM OF ENTERING
id = 545454


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, DestroySelf]
type = DestroySelf 
trigger1=(root,anim=18801)	;ANIM OF ENTERING END
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;EnteringSMOBILE
[Statedef 14990]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(var(10)=0,18815,ifelse(var(10)=15,18817,18816))
sprpriority = 5
velset = 0,0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=1
id = 545454

[State 0, PosSet]
type = PosSet
trigger1 = TIME=0;&&VAR(59)
y = -35

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, Turn]
type = Turn
trigger1 = (facing=1)&&helper(15000),facing=-1
trigger2 = (facing=-1)&&helper(15000),facing=1

[State 0, PosSet]
type = PosSet
trigger1 =numhelper(15000)
x =helper(15000),pos x
y =helper(15000),pos y

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ANIM=18815
trigger2 = ANIM=18816
trigger3 = ANIM=18817
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1



[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0


[State 0, PosFreeze]
type = PosFreeze
trigger1 = ANIM=18815
trigger2 = ANIM=18816
trigger3 = ANIM=18817
trigger4 =anim=18801
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 25    ;fv = 10
value = var(10)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = ANIM=18815
trigger2 = ANIM=18816
trigger3 = ANIM=18817
value = 18801

[State 0, PosSet]
type = PosSet
trigger1 = anim=18801
y = 0



[State -3, SLUGGEEntering];SLUGGENTERING
type = PlaySnd
trigger1 = time=0
value = 4000,24
volumescale = 256
channel = -1
freqmul = 1.0


[State 0, VarSet]
type = VarSet
trigger1 = anim=18801&&animelem=1,1
v = 10
value = 110

[State 0, VarSet]
type = VarSet
trigger1 = anim=18801&&animelem=1,1&&var(21)<=0
v = 21
value = 3


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=anim=18801
id = 545453

[State 0, HUDVIDACANION0]
type = RemoveExplod
triggerall=numexplod(9110)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18801&&animelem=2,1
id = 9110


[State 0, cannon]
type = RemoveExplod
triggerall=numexplod(9101)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18801&&animelem=2,1
id = 9101

[State 0, ChangeState]
type = ChangeState
trigger1=anim=18801&&animtime=0&&var(10)=110
value =0
ctrl = 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SMOBILEJUMP
[Statedef 15135]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = A                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = vel x,-6                    ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 18810
sprpriority = 3                  ;Set p1's sprite layering priority to 2 (in front)


[State 0, VelAdd]
type = VelAdd
trigger1 = TIME
y = -1.5




;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SUICIDESMOBILE
[Statedef 15136]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18812
sprpriority = 5
velset = 8,0

[State -3, SMOBILEMOVE]
type = PlaySnd
trigger1 = time=0
value = 4000, 72

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 24    ;fv = 10
value = root,var(24)


[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0;anim=16003&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, na
animtype  = Hard
damage    = 10*var(21)+5*var(24)+(root,palno=4)*20,10*var(21)+3*var(24)+(root,palno=4)*20
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 2400, 2];Avanza
type = Velset
triggerall=var(3)=1
trigger1 =1;animelem=1;animtime<
x = 8
y =0

[State 2400, 2];Baja
type = Velset
triggerall=var(3)=2
trigger1 =1;animelem=1;animtime<
x = 0
y =8

[State 2400, 2];Sube
type = Velset
triggerall=var(3)=3
trigger1 =1;animelem=1;animtime<
x = 0
y =-8


[State 0, PalFXWiz]
type = PalFX
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)

[State 0, VarSet]
type = parentVarSet
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
v = 21   ;fv = 10
value = 0


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
value = 15006
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;FakemarcoSMOBILE
[Statedef 15137]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18814
sprpriority = 6
velset = 0,0;-.1jkjkl


;[State 0, RemapPal]
;type = RemapPal
;trigger1 =1
;source =0,1
;dest = 2,(root,palno)



[State 0, BindToRoot];ROOTIDLE
type = BindToRoot
trigger1 =root,stateno=0
trigger2 = root,stateno=20
time = -1
facing = 1
pos = 0,0

[State 0, BindToRoot];BINDCROUCHING/STANDING
type = BindToRoot
trigger1 =root,anim=18808
trigger1 =root,animelem=1,1
trigger2 =(root,anim=18809)
trigger2 =root,animelem=2,1
time = -1
facing = 1
pos = 0,1

[State 0, BindToRoot];BINDCROUCHING/STANDING
type = BindToRoot
trigger1 =(root,anim=18808)
trigger1 =root,animelem=2,1
trigger2 =(root,anim=18809)
trigger2 =root,animelem=1,1
time = -1
facing = 1
pos = 0,2

[State 0, BindToRoot];BINDCROUCH
type = BindToRoot
trigger1 =root,stateno=11
trigger2 =root,stateno=1100
time = -1
facing = 1
pos = 0,3

[State 0, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, ChangeAnim];ENTERINGSMOBILE
type = ChangeAnim
trigger1 = root,anim=18801&&anim!=18813
value = 18813


[State 0, ChangeAnim];IDLE
type = ChangeAnim
trigger1 = anim=18813&&animtime=0
value = 18814

[State 0, ChangeState]
type = destroyself
trigger1 =ROOT,MOVETYPE=H;pos y>0;animtime=0
trigger2=root,stateno=105
trigger3=root,var(10)!=110
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SELFDESTRUCSMOBILE
[Statedef 15138]
type    = A
movetype= i
physics = N
anim=18802
ctrl = 0
sprpriority = 5
velset=0,5

[State 0, Explod];OUT
type = Explod
trigger1 = time=0&&numexplod(545455)=0&&root,stateno!=14990
anim = 20101
ID = 545455
pos = 0,-45
postype = p1  ;p2,front,back,left,right
facing = ifelse(facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 0, VelSet]
type = VelSet
trigger1 = pos y>0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 4000,22
volumescale = 256
channel = 44


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, PalFXWiz]
type = PalFX
trigger1 = animelem=1,1
time = 210
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarSet]
type = VarSet
trigger1 = command="y"
trigger2 = time>210
trigger3=var(59)
v = 10
value = root,var(25)

[State 0, PalFXWiz]
type = PalFX
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
time = 1

[State 0, Helper]
type = Helper
trigger1 = command="y"
trigger2=var(59)
helpertype = normal ;player
name = "BIGEXPLOSION"
ID = 15005
stateno = 15006
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
channel = 44
;ignorehitpause = 
;persistent = 


[State 0, ChangeState]
type = ChangeState
trigger1 = command="y"
trigger2=var(59)
value =105
ctrl = 1



[State 0, Helper]
type = Helper
trigger1 = time>210
helpertype = normal ;player
name = "BIGEXPLOSIONF"
ID = 15005
stateno = 15005
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time>209
trigger2 = command="y"
id = 545455



[State 0, ChangeState]
type = ChangeState
trigger1 = time>210
value =0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SMOBILECRASHSYSTEM
[Statedef 15139]; Hover code by NOCTIS
type    = S
movetype= a
physics = N
juggle  = 3
ctrl = 1
anim = 18818;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 4


[State 0, VarSet]
type = VarSet
trigger1 = !movecontact
v = 31    ;fv = 10
value = 1

[State 0, VarSet]
type = VarSet
trigger1 = movecontact
v = 31    ;fv = 10
value = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1;facing = 0
pos = 0,0

;[State 0, VarSet]
;type = VarSet
;trigger1 = movecontact
;v = 31    ;fv = 10
;value = 0
;
;[State 0, VarSet]
;type = VarSet
;trigger1 = !movecontact
;v = 31    ;fv = 10
;value = 1

;trigger1 = var(31)
;trigger1 = (abs(root,vel x)>0)||(abs(root,vel y)>0)
[State 251, HitDef]
type = HitDef
trigger1 = (abs(root,vel x)>.5)||(abs(root,vel y)>.5)
attr = S, NA
animtype  = Hard
damage    = floor(10*(abs(root,vel x)+abs(root,vel y))),floor(5*(abs(root,vel x)+abs(root,vel y)));5,2
hitflag = MA
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,ifelse(random%2,68,36);36
guardsound =s4000,ifelse(random%2,68,36);36
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = -(root,vel x)
air.juggle = 0
air.velocity = -(root,vel x),-root,vel y;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0
p1sprpriority=2
fall=1

;[State 0, ChangeState]
;type = ChangeState
;trigger1 = movecontact
;value = 15139
;ctrl = 0

[State 0, DestroySelf];DESTROY
type = DestroySelf
trigger1 = root,var(10)!=110


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;LEAVINGSMOBILE
[Statedef 15140]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18819
sprpriority = 6
velset = 0,0;-.1jkjkl

[State 0, LEAVINGSMOBILE]
type = VarSet
trigger1 = 1
v = 10    ;fv = 10
value = var(25)



[State 0, ChangeState]
type = ChangeState
trigger1 = animtime=0
value =105
;---------------------------------------------------------------------------
;DONKEYFALLING
[Statedef 15141]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18830
sprpriority = 0
velset = 0,5
poweradd=ifelse((root,var(59)=1),-2000,-floor(root,fvar(18)))


;[State 0, RemapPal]
;type = RemapPal
;trigger1 = 1
;source = 0,27
;dest = 0,27

[State 0, VARIADOR]
type = PARENTVarSet
trigger1 = time=0
v = 27
value = random%2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, Explod]
type = Explod
trigger1 = numexplod(545454)=0&&root,stateno!=11;&&root,stateno!=14998
anim = 20100
ID = 545454
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, VelSet]
type = VelSet
trigger1 = POS Y>=0
x = 0
y = 0

[State 0, VelSet]
type = posset
trigger1 = POS Y>=0
y = 0

[State 0, Helper]
type = Helper
trigger1=root,var(27)=1&&numhelper(313133)=0
helpertype = normal ;player
name = "FAKEHOUSE"
ID = 313133
stateno = 15153
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,stateno=15142
trigger2 =root,var(10)=111&&root,stateno!=11
id = 545454

[State 0, ChangeState]
type = destroyself
trigger1 =root,stateno=15142;pos y>0;animtime=0
trigger2 =root,var(10)=111&&root,stateno!=11
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MARCOOENTERCAMEL
[Statedef 15142]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18832
sprpriority = 0
VELSET=0,0


[State -3, SV001GETUP]
type = PlaySnd
trigger1 = time=0
value = 4000, 31

[State 0, PosAdd]
type = PosAdd
trigger1 = TIME=0
y = 10

[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=1
id = 545454

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, Turn]
type = Turn
trigger1 = (facing=1)&&helper(15000),facing=-1
trigger2 = (facing=-1)&&helper(15000),facing=1

[State 0, PosSet]
type = PosSet
trigger1 =numhelper(15000)
x =helper(15000),pos x
y =helper(15000),pos y
[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 25    ;fv = 10
value = var(10)

[State 0, VarSet]
type = VarSet
trigger1 =time=1
v = 10    ;fv = 10
value = 111

[State 0, VarSet]
type = VarSet
trigger1 = time=2
v = 21    ;fv = 10
value = 0

[State 0, VelSet]
type = VelSet
trigger1 = POS Y =0
x = 0
y = 0


[State 0, VelSet]
type = posset
trigger1 = 1
y = 0



[State 0, ChangeState]
type = changestate
trigger1 = animtime=0;pos y>0;animtime=0
value=0
ctrl=1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;FakemarcoDONKEY
[Statedef 15143]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18840
sprpriority = 6
velset = 0,0;-.1jkjkl

;[State 0, STANDINGCROUCHING1]
;type = BindToRoot
;trigger1 =(anim=18840)&&animelem=1,1 
;trigger2=(anim=16210)&&animelem=4,1 
;time = -1
;facing = 1
;pos = -4,-7;6;21
;
;[State 0, STANDINGCROUCHING2]
;type = BindToRoot
;trigger1 =(anim=18840)&&animelem=2,1 ;(root,anim=16202)&&(anim=16205)&&(root,animelem=1,1)
;trigger2=(anim=16210)&&animelem=3,1 
;time = -1
;facing = 1
;pos = -4,-17
;
;[State 0, STANDINGCROUCHING3]
;type = BindToRoot
;trigger1 =(anim=18840)&&animelem=4,1
;trigger2=(anim=16210)&&animelem=1,1
;time = -1
;facing = 1
;pos = -4,-22

[State 0, CROUCHDONKEY]
type = BindToRoot
trigger1 =((root,anim=18830)||(root,anim=18831))
trigger2 =((root,anim=18832)&&(root,animelem=1,1))
trigger3 =((root,anim=18833)&&(root,animelem=7,1))
time = -1
facing = 1
pos = -5,-8

[State 0, CROUCHDONKEY2]
type = BindToRoot
trigger1 =((root,anim=18832)&&(root,animelem=3,1))
trigger2 =((root,anim=18833)&&(root,animelem=4,1))
time = -1
facing = 1
pos = -5,-9

[State 0, CROUCHDONKEY3]
type = BindToRoot
trigger1 =((root,anim=18832)&&(root,animelem=4,1))
trigger2 =((root,anim=18833)&&(root,animelem=3,1))
time = -1
facing = 1
pos = -5,-10

[State 0, CROUCHDONKEY3]
type = BindToRoot
trigger1 =((root,anim=18832)&&(root,animelem=5,1))
trigger2 =((root,anim=18833)&&(root,animelem=2,1))
time = -1
facing = 1
pos = -4,-11


[State 0, CROUCHDONKEY3]
type = BindToRoot
trigger1 =((root,anim=18832)&&(root,animelem=6,1))
trigger2 =((root,anim=18833)&&(root,animelem=1,1))
time = -1
facing = 1
pos = -4,-17

[State 0, DONKEWALK01]
type = BindToRoot
trigger1 =(root,anim=18835)&&((root,animelem=1,1)||(root,animelem=7,1))
trigger2 =(root,anim=18836)&&((root,animelem=6,1)||(root,animelem=12,1))
trigger3 =(root,anim=18834)
trigger4 =(root,anim=18844)&&((root,animelem=1,1)||(root,animelem=7,1))
time = -1
facing = 1
pos = -4,-21

[State 0, DONKEWALK02]
type = BindToRoot
trigger1 =(root,anim=18835)&&((root,animelem=2,1)||(root,animelem=6,1)||(root,animelem=8,1)||(root,animelem=12,1))
trigger2 =(root,anim=18836)&&((root,animelem=1,1)||(root,animelem=5,1)||(root,animelem=7,1)||(root,animelem=11,1))
trigger3 =(root,anim=18844)&&((root,animelem=2,1)||(root,animelem=6,1)||(root,animelem=8,1)||(root,animelem=12,1))
time = -1
facing = 1
pos = -3,-21

[State 0, DONKEWALK03]
type = BindToRoot
trigger1=(root,anim=18835)&&((root,animelem=3,1)||(root,animelem=4,1)||(root,animelem=5,1)||(root,animelem=9,1)||(root,animelem=10,1)||(root,animelem=11,1))
trigger2=(root,anim=18836)&&((root,animelem=2,1)||(root,animelem=3,1)||(root,animelem=4,1)||(root,animelem=9,1)||(root,animelem=10,1)||(root,animelem=8,1))
trigger3=(root,anim=18844)&&((root,animelem=3,1)||(root,animelem=4,1)||(root,animelem=5,1)||(root,animelem=9,1)||(root,animelem=10,1)||(root,animelem=11,1))
time = -1
facing = 1
pos = -1,-20

[State 0, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, ChangeAnim];CROUCHTOSTAND
type = ChangeAnim
trigger1 = (root,anim=18832)&&anim!=18840
value = 18840
 

[State 0, ChangeAnim];STANDTOCROUCH
type = ChangeAnim
trigger1 = (root,anim=18833)&&anim!=18840
value = 18843


[State 0, ChangeAnim];WALKFWD
type = ChangeAnim
trigger1 = (root,anim=18835)&&anim!=18841
trigger2 = (root,anim=18844)&&anim!=18841
value = 18841

[State 0, ChangeAnim];WALKBACK
type = ChangeAnim
trigger1 = (root,anim=18836)&&anim!=18842
value = 18842

[State 0, ChangeAnim];CROUCHING
type = ChangeAnim
trigger1 = (root,anim=16208)&&anim!=16213
value = 16213

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=18840&&animtime=0
trigger2 = anim=18843&&animtime=0
trigger3 = anim=18841&&(root,anim!=18835)
trigger4 = anim=18842&&(root,anim!=18836)
trigger5 = anim=16213&&(root,anim!=16208)
trigger6 = ((root,anim=18834)||(root,anim=18830)||(root,anim=18831))&&anim!=16201
value = 16201

[State 0, ChangeState]
type = destroyself
trigger1 =ROOT,MOVETYPE=H;pos y>0;animtime=0
trigger2=root,stateno=105
trigger3=root,var(10)!=111
;--------------------------------------------------------------------------
;---------------------------------------------------------------------------
;DONKEYJUMP
[Statedef 15144]
type    = A
movetype= I
physics = S
anim = 18844
ctrl = 0
sprpriority = 1
velset=VEL X,-1

[State 0, VelAdd]
type = VelAdd
trigger1 =time<5&&vel y>-2
y = -.2

[State 0, VelAdd]
type = VelAdd
trigger1 =time>5&&vel y<2
y = .2

[State 0, PosSet]
type = PosSet
trigger1 =pos y>=0&&time>1
y = 0

[State 0, VelSet]
type = VelSet
trigger1 =pos y>=0&&time>1
y = 0

[State 20, 1];DONKEYWALKF
type = VelSet
trigger1=command = "holdfwd"
x = (const(velocity.walk.fwd.x)/2)

[State 20, 2];DONKEYWALKB
type = VelSet
trigger1=command = "holdback"
x = (const(velocity.walk.back.x)/2)


[State 0, TOWALK]
type = ChangeState
trigger1 = pos y>=0&&time>1&&vel x!=0
value =52
ctrl = 1

[State 0, TOIDLE]
type = ChangeState
trigger1 = pos y>=0&&time>1&&vel x=0
value =52
ctrl = 1



;---------------------------------------------------------------------------
;DONKEYCROUCHING
[Statedef 15145]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18833
sprpriority = 0
velset = 0,5;-.1jkjkl
;poweradd=-2000

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=18833&&animtime=0
value = 18830
;elem = 1
;ignorehitpause = 
;persistent = 
;
;[State 0, RemapPal]
;type = RemapPal
;trigger1 = 1
;source = 0,27
;dest = 0,27

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, Explod]
type = Explod
trigger1 = anim=18830&&numexplod(545454)=0;&&root,stateno!=14998
anim = 20100
ID = 545454
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, VelSet]
type = VelSet
trigger1 = POS Y>=0
x = 0
y = 0

[State 0, VelSet]
type = posset
trigger1 = POS Y>=0
y = 0

[State 0, Helper]
type = Helper
trigger1=root,var(27)=1&&numhelper(313133)=0
helpertype = normal ;player
name = "FAKEHOUSE"
ID = 313133
stateno = 15153
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0



[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,stateno=15142
id = 545454

[State 0, ChangeState]
type = destroyself
trigger1 =root,stateno=15142;pos y>0;animtime=0
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;SUICIDEDONKEY
[Statedef 15146]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18837
sprpriority = 5
velset = const(velocity.walk.fwd.x)*3/4,0

[State 0, Yihaa]
type = PlaySnd;triggerall=roundstate=2||roundstate=1
trigger1 = time=0
value = 4000,87
volumescale = 256
channel = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 21    ;fv = 10
value = root,var(21)


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 24    ;fv = 10
value = root,var(24)



[State 0, VarAdd];remove fuel
type = parentvarset
trigger1 = time>1
v =21
value = 0



[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 251, HitDef]
type = HitDef
trigger1 = 1;!movecontact
attr = S, SA
animtype  = Hard
damage    = 80,40
hitflag = MA
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s0,2
guardsound = s0,2;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0
FALL=1

[State 2400, 2];Avanza
type = Velset
trigger1 =1
x = 3
y =0

[State 0, Turn]
type = Turn
trigger1 = !movecontact&&frontedgedist<=0


[State 0, VarSet]
type = parentVarSet
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
v = 21   ;fv = 10
value = 0


[State 0, DestroySelf]
type = DESTROYSELF
trigger1 = frontedgedist <=-50

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;FAKEARMDONKEY
[Statedef 15147]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 16214
sprpriority = 2

[State 0, DONKEYWALK2]
type = BindToRoot
triggerall=root,var(10)=111
trigger1=(root,anim=18835)&&((root,animelem=3,1)||(root,animelem=4,1)||(root,animelem=5,1)||(root,animelem=9,1)||(root,animelem=10,1)||(root,animelem=11,1))
trigger2=(root,anim=18836)&&((root,animelem=2,1)||(root,animelem=3,1)||(root,animelem=4,1)||(root,animelem=8,1)||(root,animelem=9,1)||(root,animelem=10,1))
trigger3=(root,anim=18844)&&((root,animelem=3,1)||(root,animelem=4,1)||(root,animelem=5,1)||(root,animelem=9,1)||(root,animelem=10,1)||(root,animelem=11,1))
time =-1
pos = 0,-37

[State 0, DONKEYWALK1]
type = BindToRoot
triggerall=root,var(10)=111
trigger1=(root,anim=18835)&&((root,animelem=2,1)||(root,animelem=6,1)||(root,animelem=8,1)||(root,animelem=12,1))
trigger2=(root,anim=18836)&&((root,animelem=1,1)||(root,animelem=5,1)||(root,animelem=7,1)||(root,animelem=11,1))
trigger3=(root,anim=18844)&&((root,animelem=2,1)||(root,animelem=6,1)||(root,animelem=8,1)||(root,animelem=12,1))
time =-1
pos = 0,-39

[State 0, STAND]
type = BindToRoot
trigger1 =(root,anim=18834)
trigger2=(root,anim=18835)&&((root,animelem=1,1)||(root,animelem=7,1))
trigger3=(root,anim=18836)&&((root,animelem=6,1)||(root,animelem=12,1))
trigger4=(root,anim=18844)&&((root,animelem=1,1)||(root,animelem=7,1))
time = -1
facing = 1
pos = 0,-40

[State 0, DONKEYSTANDINGCROUCHING1]
type = BindToRoot
triggerall=root,var(10)=111
trigger1=(root,anim=18832)&&(root,animelem=4,1)
trigger2=(root,anim=18833)&&(root,animelem=3,1)
time =-1
pos = 0,-18

[State 0, DONKEYSTANDINGCROUCHING2]
type = BindToRoot
triggerall=root,var(10)=111
trigger1=(root,anim=18832)&&(root,animelem=5,1)
trigger2=(root,anim=18833)&&(root,animelem=2,1)
time =-1
pos = 0,-25

[State 0, DONKEYSTANDINGCROUCHING2]
type = BindToRoot
triggerall=root,var(10)=111
trigger1=(root,anim=18832)&&(root,animelem=6,1)
trigger2=(root,anim=18833)&&(root,animelem=1,1)
time =-1
pos = 0,-32


[State 0, CROUCH]
type = BindToRoot
trigger1=(root,anim=18830)||(root,anim=18831)
trigger2=(root,anim=18832)&&((root,animelem=1,1)||(root,animelem=2,1)||(root,animelem=3,1))
trigger3=(root,anim=18833)&&((root,animelem=4,1)||(root,animelem=5,1)||(root,animelem=6,1))
time = -1
facing = 1
pos = 0,-27

[State 0, ChangeState]
type = Changeanim
trigger1 = anim=16214&&(root,command="z")
value =16214


[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing


[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0
trigger2=root,stateno=105

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;DONKEYCROUCH
[Statedef 15148]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18830
sprpriority = 0
velset = 0,5;-.1jkjkl
;poweradd=-2000

;elem = 1
;ignorehitpause = 
;persistent = 
;
;[State 0, RemapPal]
;type = RemapPal
;trigger1 = 1
;source = 0,27
;dest = 0,27

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, Explod]
type = Explod
trigger1 = anim=18830&&numexplod(545454)=0;&&root,stateno!=14998
anim = 20100
ID = 545454
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, VelSet]
type = VelSet
trigger1 = POS Y>=0
x = 0
y = 0

[State 0, VelSet]
type = posset
trigger1 = POS Y>=0
y = 0

[State 0, Helper]
type = Helper
trigger1=root,var(27)=1&&numhelper(313133)=0
helpertype = normal ;player
name = "FAKEHOUSE"
ID = 313133
stateno = 15153
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,stateno=15142
id = 545454

[State 0, ChangeState]
type = destroyself
trigger1 =root,stateno=15142;pos y>0;animtime=0
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;HOUSESTART
[Statedef 15149]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18839
sprpriority = -1

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time =1
facing = 1
pos = 0-((numhelper(15666))*(50))-((50)*(time>1&&VAR(10)<=0)),0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 0, LIFE]
type = DisplayToClipboard
trigger1 = 1
text = "LIFE = %d "
params = var(10)

;[State 0, SMOKEIDLE]
;type = Helper
;trigger1 = animelem=1,1
;helpertype = normal ;player
;name = "SmokeTrail"
;ID = 515151
;stateno = 305
;pos = -80,-68
;postype = p1    ;p2,front,back,left,right
;facing = 1
;keyctrl = 0
;ownpal = 0
;supermovetime = 0
;pausemovetime = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,NT,ST,HT
time = -1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP
time = -1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno =15152
time = -1
forceair = 0

[State 0, AMMO]
type = ParentVarADD
trigger1 = var(15)
v =  24   ;fv = 
value = -1

[State 0, AMMORESET]
type = VarSet
trigger1 = 1
v = 15
value = 0

[State 0, DISABLE]
type = ParentVARSET
trigger1 = time>1&&var(10)<=0
v =  27   ;fv = 
value =0

[State 0, LIFE]
type = VarSet
trigger1 = TIME=0
v = 10
value = 500

;[State 0, LIFE]
;type = varadd
;trigger1 = TIME=0
;v = 10
;value = -gethitvar(damage)

[State 0, STAND]
type = ChangeAnim
triggerall=anim!=18839&&((anim!=18847)||((anim=18847)&&(animtime=0)))
trigger1 = ((root,anim=18834)||(root,anim=18831)||(root,anim=18832)||(root,anim=18833))
value = 18839

[State 0, LAND]
type = ChangeAnim
triggerall=anim!=18847
trigger1 = numhelper(515152)
value = 18847

[State 0, WALKFWD]
type = ChangeAnim
trigger1 =anim!=18846&&((root,anim=18835)||(root,anim=18844))&&((anim!=18847)||((anim=18847)&&(animtime=0)))
value = 18846

[State 0, WALKBACK]
type = ChangeAnim
trigger1 = anim!=18845&&root,anim=18836&&((anim!=18847)||((anim=18847)&&(animtime=0)))
value = 18845

[State 0, Helper]
type = Helper
triggerall=numhelper(313232)=0
trigger1 = 1
helpertype = normal ;player
name = "HOUSECANNON"
ID = 313232
stateno = 15150
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 0, DestroySelf]
type = DestroySelf;trigger1 =root,movetype=h
trigger1= root,var(10)<100&&(root,stateno!=105)
trigger2=root,numhelper(15101)>1&&time;trigger4=win
trigger3=root,movetype=h&&((root,var(10)=102)||(root,var(10)=111))
trigger4=root,stateno=105&&NUMHELPER(15666)=0


[State 0, DestroySelf]
type = changestate;trigger1 =root,movetype=h
trigger1=time>1&&VAR(10)<=0
trigger2=root,stateno=105&&NUMHELPER(15666)
value=15151
;---------------------------------------------------------------------------
;HOUSECANNON
[Statedef 15150]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18848
sprpriority = 0



[State 0, AMMO]
type = ParentVarSet
trigger1 = anim=18851&&animelem=4,1
v =  15   ;fv = 
value = 1


[State 0, IDLE]
type = ChangeAnim
triggerall=((anim!=18851)||((anim=18851)&&(animtime=0)))
trigger1 = anim!=18848&&parent,anim=18839
value = 18848

[State 0, WALK]
type = ChangeAnim
triggerall=((anim!=18851)||((anim=18851)&&(animtime=0)))
trigger1 = anim!=18849&&parent,anim=18846
trigger2 = anim!=18849&&parent,anim=18845
value = 18849

[State 0,LAND]
type = ChangeAnim
triggerall=((anim!=18851)||((anim=18851)&&(animtime=0)))
trigger1 = anim!=18850&&parent,anim=18847
value = 18850


[State 0, SHOOT]
type = ChangeAnim
trigger1 = anim!=18851&&root,command="z"&&root,var(24)>0
value = 18851

[State 0, STANDBIND]
type = BindToParent
trigger1 = parent,anim=18839
trigger2 = (parent,anim=18847)&&((parent,animelem=1,1)||(parent,animelem=7,1))
Time = -1
facing=1
pos = -41,-57


[State 0, LANDBIND]
type = BindToParent
trigger1 = (parent,anim=18847)&&((parent,animelem=2,1))
Time = -1
facing=1
pos = -42,-53

[State 0, LANDBIND]
type = BindToParent
trigger1 = (parent,anim=18847)&&((parent,animelem=3,1))
Time = -1
facing=1
pos = -46,-51

[State 0, LANDBIND]
type = BindToParent
trigger1 = (parent,anim=18847)&&((parent,animelem=4,1))
Time = -1
facing=1
pos = -45,-52

[State 0, LANDBIND]
type = BindToParent
trigger1 = (parent,anim=18847)&&((parent,animelem=5,1))
Time = -1
facing=1
pos = -41,-53

[State 0, LANDBIND]
type = BindToParent
trigger1 = (parent,anim=18847)&&((parent,animelem=6,1))
Time = -1
facing=1
pos = -38,-52

[State 0, DONKEYCANNON]
type = Helper
trigger1 =anim=18851&&animelem=4,1
helpertype = normal ;player
name = "DONKEYCANNON"
ID = 13250
stateno = 15057
pos = 20,-18
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, DestroySelf]
type = DestroySelf;trigger1 =root,movetype=h
trigger1= root,var(10)<100&&(root,stateno!=105)
trigger2=root,numhelper(15101)>1&&time;trigger4=win
trigger3=root,stateno=105
trigger4=root,movetype=h&&((root,var(10)=102)||(root,var(10)=111))
trigger5=root,var(27)=0
;---------------------------------------------------------------------------
;BIGEXPLOSIONG
[Statedef 15151]
type    = s                      
movetype= a                      
physics = s
anim = 1256
sprpriority = 4
velset = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = s4000,20
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=1
value = s4000,44;s4000,20
volume = 255
channel = -1


[State 0, EnvColor]
type = EnvColor
trigger1 = time=0
value = 255,255,255
time = 1

[State 0, Helper]
type = Helper
trigger1 = (animelem=1,1)||(animelem=5,1)||(animelem=9,1)||(animelem=17,1)||(animelem=21,1)
helpertype = normal ;player
name = "SMALLEXPLOSIONUPL"
ID = 313131
stateno = 302
pos = time*2,-time*2
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
trigger1 = (animelem=1,1)||(animelem=5,1)||(animelem=9,1)||(animelem=17,1)||(animelem=21,1)
helpertype = normal ;player
name = "SMALLEXPLOSIONUPR"
ID = 313131
stateno = 302
pos = -time*2,-time*2
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
trigger1 = (animelem=1,1)||(animelem=5,1)||(animelem=9,1)||(animelem=17,1)||(animelem=21,1)
helpertype = normal ;player
name = "SMALLEXPLOSIONDL"
ID = 313131
stateno = 302
pos = -time*2,time*2
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
trigger1 = (animelem=1,1)||(animelem=5,1)||(animelem=9,1)||(animelem=17,1)||(animelem=21,1)
helpertype = normal ;player
name = "SMALLEXPLOSIONDR"
ID = 313131
stateno = 302
pos = time*2,time*2
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 251, HitDef]
type = HitDef
trigger1 = (animelem=1,1)||(animelem=2,1)||(animelem=3,1)||(animelem=4,1)
trigger2 =(animelem=5,1)||(animelem=6,1)||(animelem=7,1)||(animelem=8,1)
trigger3 =(animelem=9,1)||(animelem=10,1)||(animelem=11,1)||(animelem=12,1)
trigger4 =(animelem=13,1)||(animelem=14,1)||(animelem=15,1)||(animelem=16,1)
trigger5 =(animelem=17,1)||(animelem=18,1)||(animelem=19,1)||(animelem=20,1)
trigger6 =(animelem=21,1)||(animelem=22,1)||(animelem=23,1)||(animelem=24,1)
attr = S, SP
animtype  = Hard
damage    = 4,4;5,2
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy=0,0
hitsound   =-1;s4000,1
guardsound =-1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 1105]
type = destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;HOUSEGETHIT
[Statedef 15152]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18839
sprpriority = -1

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time =1
facing = 1
pos = 0-((numhelper(15666))*(50))-((50)*(time>1&&VAR(10)<=0)),0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 0, LIFE]
type = DisplayToClipboard
trigger1 = 1
text = "LIFE = %d "
params = var(10)


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,NT,ST,HT
time = -1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP
time = -1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno =15152
time = -1
forceair = 0

[State 0, AMMO]
type = ParentVarADD
trigger1 = var(15)
v =  24   ;fv = 
value = -1

[State 0, DISABLE]
type = ParentVARSET
trigger1 = var(10)<=0
v =  27   ;fv = 
value =0

[State 0, AMMORESET]
type = VarSet
trigger1 = 1
v = 15
value = 0

[State 0, LIFE]
type = varadd
trigger1 = TIME=0
v = 10
value = -gethitvar(damage)

[State 0, STAND]
type = ChangeAnim
triggerall=anim!=18839&&((anim!=18847)||((anim=18847)&&(animtime=0)))
trigger1 = ((root,anim=18834)||(root,anim=18831)||(root,anim=18832)||(root,anim=18833))
value = 18839

[State 0, LAND]
type = ChangeAnim
triggerall=anim!=18847
trigger1 = numhelper(515152)
value = 18847

[State 0, WALKFWD]
type = ChangeAnim
trigger1 =anim!=18846&&((root,anim=18835)||(root,anim=18844))&&((anim!=18847)||((anim=18847)&&(animtime=0)))
value = 18846

[State 0, WALKBACK]
type = ChangeAnim
trigger1 = anim!=18845&&root,anim=18836&&((anim!=18847)||((anim=18847)&&(animtime=0)))
value = 18845

[State 0, Helper]
type = Helper
triggerall=numhelper(313232)=0
trigger1 = 1
helpertype = normal ;player
name = "HOUSECANNON"
ID = 313232
stateno = 15150
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 0, DestroySelf]
type = DestroySelf;trigger1 =root,movetype=h
trigger1= root,var(10)<100&&(root,stateno!=105)
trigger2=root,numhelper(15101)>1&&time;trigger4=win
trigger3=root,movetype=h&&((root,var(10)=102)||(root,var(10)=111))
trigger4=root,stateno=105&&NUMHELPER(15666)=0


[State 0, DestroySelf]
type = changestate;trigger1 =root,movetype=h
trigger1=time>1&&VAR(10)<=0
trigger2=root,stateno=105&&NUMHELPER(15666)
value=15151
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;HOUSEFAKE
[Statedef 15153]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18839
sprpriority = -1

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time =-1
facing = 1
pos = 0,0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
VALUE = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, STAND]
type = ChangeAnim
triggerall=anim!=18839&&((anim!=18847)||((anim=18847)&&(animtime=0)))
trigger1 = root,anim=18834
value = 18839

[State 0, Helper]
type = Helper
trigger1=root,var(27)=1&&numhelper(113133)=0
helpertype = normal ;player
name = "FAKECANNON"
ID = 113133
stateno = 15154
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, DestroySelf]
type = DestroySelf;trigger1 =root,movetype=h
trigger1= root,var(10)=111&&root,movetype!=h
trigger2= root,var(27)=0
trigger3=numhelper(15000)=0&&root,anim!=18832

;---------------------------------------------------------------------------;---------------------------------------------------------------------------
;HOUSEFAKECANNON
[Statedef 15154]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18848
sprpriority = 0



[State 0, IDLE]
type = ChangeAnim
triggerall=((anim!=18851)||((anim=18851)&&(animtime=0)))
trigger1 = anim!=18848&&parent,anim=18839
value = 18848

[State 0, STANDBIND]
type = BindToParent
trigger1 = parent,anim=18839
trigger2 = (parent,anim=18847)&&((parent,animelem=1,1)||(parent,animelem=7,1))
Time = -1
facing=1
pos = -41,-57

[State 0, DestroySelf]
type = DestroySelf;trigger1 =root,movetype=h
trigger1= root,var(10)=111&&root,movetype!=h
trigger2= root,var(27)=0
trigger3=numhelper(15000)=0&&root,anim!=18832
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;FLAMEREBELCANNON
[Statedef 15155]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 1404
sprpriority = 5
velset = root,vel x+(root,command="holdfwd")*3,(-(root,vel y)/5)-(root,anim=11200)*(1.5)+(root,anim=600)*(1.5);-.15-(root,vel y)/5;5,0;.15+root,vel x,-.15-(root,vel y)/5;5,0

[State 0, PlaySnd];Super Grenade Sound pouwmn
type = PlaySnd
trigger1 =time=0
value = 4000,45
volumescale = 256
channel = -1

[State 0, EnvColor]
type = EnvColor
trigger1 = movecontact
value = 255,255,255
time = 1

[State 0, ParentVarSet];Le resta a la variable canion
type = ParentVarSet
triggerall=root,var(24)>0
trigger1 = time=0
v =  24   ;fv = 
value = root,var(24)-1

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 15157
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = animelem=1,1
helpertype = normal ;player
name = "FLAMES"
ID = 515151
stateno = 15156
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, EnvColor]
type = EnvColor
trigger1 = movecontact
value = 255,255,255
time = 1

[State 0, VarSet]
type = VarSet
triggerall=var(21)=0
trigger1=var(44)>360
trigger2=time=0
v = 44    ;fv = 10
value = 360

[State 0, varadd]
type = varadd
triggerall=var(21)=0
triggerall =var(44)>270&&time>8
trigger1=time
v=44
value=-2

[State 0, VarSet]
type = VarSet
triggerall=var(21)=0
trigger1=var(44)<0
v = 44    ;fv = 10
value = 359

[State 9000, AngleDraw]
type = AngleDraw
triggerall=var(21)
trigger1 =vel x>0
value=atan(-vel y/vel x)*180/pi


[State 9000, AngleDraw]
type = AngleDraw
triggerall=var(21)
trigger1 =vel x=0&&vel y<0
value=90

[State 9000, AngleDraw]
type = AngleDraw
triggerall=var(21)
trigger1 =vel x=0&&vel y>0
value=270

[State 0, AngleDraw]
type = AngleDraw
trigger1 = var(21)=0
value = var(44)

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 253
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 35,15
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4;s4000,1
guardsound = s4000,4;s4000,1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1

ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 0, VarSet];FWD
type = VarSet
trigger1 = (time=0)&&((root,anim=200)||(root,anim=12200)||(root,anim=202))
v = 21    ;fv = 10
value = 0

[State 0, VarSet];UP
type = VarSet
trigger1 = (time=0)&&((root,anim=11200))
v = 21    ;fv = 10
value = 1

[State 0, VarSet];DW
type = VarSet
trigger1 = (time=0)&&((root,anim=600))
v = 21    ;fv = 10
value = 2

[State 2400, 2]
type = Veladd
triggerall=var(21)=0
trigger1 =time<10
x=.15
y = -.15

[State 2400, 2]
type = Veladd
triggerall=var(21)=1
trigger1 =time<10
y = -.15

[State 2400, 2]
type = Veladd
triggerall=var(21)=2
trigger1 =time<10
y = .15

[State 2400, 2]
type = Veladd
trigger1 =time>10
y = .2


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
value = 15157
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;FLAMES
[Statedef 15156]
type    = s                      
movetype= a                      
physics = s
anim = 1405
sprpriority = 4
velset = 0,0

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = time=0
;value = s4000,2
;volume = 255
;channel = 5


[State 251, HitDef]
type = HitDef
trigger1 = (animelem=1,1)||(animelem=2,1)||(animelem=3,1)||(animelem=4,1)
trigger2 =(animelem=5,1)||(animelem=6,1)||(animelem=7,1)||(animelem=8,1)
trigger3 =(animelem=9,1)||(animelem=10,1)||(animelem=11,1)||(animelem=12,1)
trigger4 =(animelem=13,1)||(animelem=14,1)||(animelem=15,1)||(animelem=16,1)
trigger5 =(animelem=17,1)||(animelem=18,1)||(animelem=19,1)||(animelem=20,1)
trigger6 =(animelem=21,1)||(animelem=22,1)||(animelem=23,1);||(animelem=20,1)
attr = S, SP
animtype  = Hard
damage    = 1,1;5,2
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,1
guardsound =-1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;envshake.time = 8
;envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 1105]
type = destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;HUGEEXPLOSION
[Statedef 15157]
type    = s                      
movetype= a                      
physics = s
anim = 1406
sprpriority = 4
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = s4000,88
volume = 255
channel = 5

[State 251, HitDef]
type = HitDef
trigger1 = (animelem=1,1)
attr = S, SP
animtype  = Hard
damage    = 50,25;5,2
guardflag = MA
pausetime = 0,0
sparkno =-1; S9107
sparkxy=0,0
hitsound   =-1;s4000,1
guardsound =-1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;envshake.time = 8
;envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 251, HitDef]
type = HitDef
trigger1 =(animelem=2,1)||(animelem=3,1)||(animelem=4,1)
trigger2 =(animelem=5,1)||(animelem=6,1)||(animelem=7,1)||(animelem=8,1)
trigger3 =(animelem=9,1)||(animelem=10,1)||(animelem=11,1)||(animelem=12,1)
trigger4 =(animelem=13,1)||(animelem=14,1)||(animelem=15,1)||(animelem=16,1)
trigger5 =(animelem=17,1)||(animelem=18,1)||(animelem=19,1)||(animelem=20,1)
trigger6 =(animelem=21,1)||(animelem=22,1)||(animelem=23,1);||(animelem=20,1)
attr = S, SP
animtype  = Hard
damage    = 2,2;5,2
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy=0,0
hitsound   =-1;s4000,1
guardsound =-1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;envshake.time = 8
;envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 1105]
type = destroyself
trigger1 = animtime = 0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;FLAMESTHROW
[Statedef 15158]
type    = A                      
movetype= a                      
physics = N
anim = 1405
sprpriority = 4
velset = 3,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = s4000,15
volume = 255
channel = 0

[State 251, HitDef]
type = HitDef
trigger1 = (animelem=1,1)||(animelem=2,1)||(animelem=3,1)||(animelem=4,1)
trigger2 =(animelem=5,1)||(animelem=6,1)||(animelem=7,1)||(animelem=8,1)
trigger3 =(animelem=9,1)||(animelem=10,1)||(animelem=11,1)||(animelem=12,1)
trigger4 =(animelem=13,1)||(animelem=14,1)||(animelem=15,1)||(animelem=16,1)
trigger5 =(animelem=17,1)||(animelem=18,1)||(animelem=19,1)||(animelem=20,1)
trigger6 =(animelem=21,1)||(animelem=22,1)||(animelem=23,1);||(animelem=20,1)
attr = S, SP
animtype  = Hard
damage    = 2,1;5,2
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,1
guardsound =-1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;envshake.time = 8
;envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 1105]
type = destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BALLSLUGFALLING
[Statedef 15159]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18860
sprpriority = 0
velset = 0,5
poweradd=ifelse((root,var(59)=1),-2000,-floor(root,fvar(18)))

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 24
value = 10

;[State 0, VarSet]
;type = parentVarSet
;trigger1=time=0
;v = 27
;value = random%2

;[State 0, RemapPal]
;type = RemapPal
;trigger1 = root,var(27)=0
;source = 0,73
;dest = 0,73
;
;[State 0, RemapPal]
;type = RemapPal
;trigger1 = root,var(27)=1
;source = 0,73
;dest = 73,0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=0
value =15160
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BALLSLUGENTERHERE
[Statedef 15160]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18860
sprpriority = 0
velset = 0,5


[State 0, VelSet]
type = VelSet
trigger1 = pos y>=0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0


[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing&&time=0


[State 0, PosSet]
type = PosSet
trigger1 = root,stateno=14989
x = root,pos x


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, Explod];Enter Here
type = Explod
trigger1 = numexplod(545454)=0&&root,stateno!=14989&&root,var(10)!=112
anim = 20100
ID = 545454
pos = 15,-60
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 11    ;fv = 10
value = root,pos y

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,anim=18861	;ANIM OF ENTERING
id = 545454


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, DestroySelf]
type = DestroySelf 
trigger1=(root,anim=18861)	;ANIM OF ENTERING END
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ENTERINGBALLSLUG
[Statedef 14989]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18861;ifelse(var(10)=0,18701,ifelse(var(10)=15,11049,11048))
sprpriority = 5
velset = 0,0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=1
id = 545454

;[State 0, PosSet]
;type = PosSet
;trigger1 = TIME=0;&&VAR(59)
;y = -35

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, Turn]
type = Turn
trigger1 = (facing=1)&&helper(15000),facing=-1
trigger2 = (facing=-1)&&helper(15000),facing=1



[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1


[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0


[State 0, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 25    ;fv = 10
value = var(10)

;[State 0, ChangeAnim]
;type = ChangeAnim
;trigger1 = anim=11047&&animtime=0
;trigger2 = anim=11048&&animtime=0
;trigger3 = ANIM=11049&&animtime=0
;value = 18651

[State 0, PosSet]
type = PosSet
trigger1 =numhelper(15000)
x =helper(15000),pos x
y =helper(15000),pos y

[State -3, SLUGGEEntering];SLUGGENTERING
type = PlaySnd
trigger1 = time=0
value = 4000,24
volumescale = 256
channel = -1
freqmul = 1.0


[State 0, VarSet]
type = VarSet
trigger1 = anim=18861&&animelem=1,1
v = 10
value = 112

[State 0, VarSet]
type = VarSet
trigger1 = anim=18861&&animelem=1,1&&var(21)<=0
v = 21
value = 3


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=anim=18861
id = 545453

[State 0, HUDVIDACANION0]
type = RemoveExplod
triggerall=numexplod(9110)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18861&&animelem=2,1
id = 9110


[State 0, cannon]
type = RemoveExplod
triggerall=numexplod(9101)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18861&&animelem=2,1
id = 9101

[State 0, ChangeState]
type = ChangeState
trigger1=anim=18861&&animtime=0&&var(10)=112
value =0
ctrl = 1
;---------------------------------------------------------------------------
;BALLJUMP
[Statedef 15161]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = C                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = vel x,-5                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = ifelse(command="holdback",18883,18869)
sprpriority = 7   

[State 0, BALLWALK]
type = PlaySnd
trigger1 = time=0
value = 4000,27
volumescale = 128
channel = -1

[State 20, 1];FWD
type = VelSet
trigger1=command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, 2];BACK
type = VelSet
trigger1=command = "holdback"
x = const(velocity.walk.back.x)

[State 0, VelAdd]
type = VelAdd
trigger1 = time<15&&vel y>-5
y = -.5

[State 0, VelAdd]
type = VelAdd
trigger1 = time>15&&vel y<5
y = .5

[State 0, PosSet]
type = PosSet
trigger1 = POS Y>=0&&TIME>15
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = POS Y>=0&&TIME>15
y = 0

;[State 0, BALLLAND]
;type = PlaySnd
;trigger1 =POS Y>=0&&TIME>15
;value = 4000,90
;volumescale = 256
;channel =0

;[State 251, HitDef]
;type = HitDef
;trigger1 = (abs(vel x)>.5)||(abs(vel y)>.5)
;attr = S, NA
;animtype  = Hard
;damage    = 10*(abs(vel x)+abs(vel y)),5*(abs(vel x)+abs(vel y));5,2
;hitflag = MA
;guardflag = MA
;pausetime = 0,0
;sparkno = -1;S9107
;sparkxy=0,0
;hitsound   =s4000,ifelse(random%2,68,36);36
;guardsound =s4000,ifelse(random%2,68,36);36
;guard.sparkno = -1;s9101;;;s7004
;ground.type = low
;ground.slidetime = 0;5
;;guard.sparkno; = S449
;ground.hittime  = 0;15
;ground.velocity = -(root,vel x)
;air.juggle = 0
;air.velocity = -(root,vel x),-root,vel y;-10,-8
;fall.xvelocity =0
;fall.yvelocity =0
;yaccel = .9
;ground.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
;palfx.time = 3
;palfx.add = 240,50,0
;palfx.mul = 250,224,120
;palfx.sinadd = 110,55,85,10
;palfx.invertall = 0
;palfx.color = 0
;p1sprpriority=2
;fall=1

[State 200, 1]
type = HitDef
trigger1 = (abs(vel x)>.5)||(abs(vel y)>.5)
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = floor(15*(abs(vel x)+abs(vel y))),floor(8*(abs(vel x)+abs(vel y)));5,2                  ;Damage that move inflicts, guard damage
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MA                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
affectteam=B
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0, 8                 ;Time attacker pauses, time opponent shakes
sparkno = -1;S3940
guard.sparkno = -1;S3940                     ;Spark anim no (Def: set above)
sparkxy = -15+(random%30),-30+(random%20)               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound   =s4000,ifelse(random%2,68,36);36
guardsound =s4000,ifelse(random%2,68,36);36               ;Sound to play on guard
ground.type = Low               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -4             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12                 ;Time before opponent regains control in air
fall = 1
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0
p1sprpriority=7


[State 0, ChangeState]
type = ChangeState
trigger1 = POS Y>=0&&TIME>15
value =52
ctrl = 0

;---------------------------------------------------------------------------
;Canon x2
[Statedef 15162]
type    = S
movetype= A
physics = s
juggle  = 1
poweradd= 0
ctrl = 0
anim = 18873
sprpriority = 2

[State 1000, IN]
type = Explod
trigger1 = AnimElem = 3
anim = 18882
postype = p1
sprpriority = 5
pos = -10,0

[State 6000, 2]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "Smoke45"
ID = 1340
stateno = 15163
pos = 12,-87
postype = p1
ownpal = 0
scale = 1,1
size.xscale = 1
size.yscale = 1

[State 1500]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal ;player
name = "Canon shot"
ID = 13250
stateno = 15164
pos = 12,-87
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 6000, 2]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "Smoke45"
ID = 1340
stateno = 15163
pos = 0,-84
postype = p1
ownpal = 0
scale = 1,1
size.xscale = 1
size.yscale = 1

[State 1500]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal ;player
name = "Canon shot"
ID = 13250
stateno = 15164
pos = 0,-84
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 704]
type=VelSet
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
x=-2

[State 400, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;==================================================================================
;---------------------------------------------------------------------------
;Smoke-45
[Statedef 15163]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 18876
sprpriority = 6

[State 0, AngleDraw] 
type = AngleDraw 
trigger1 = 1
[State 0, AngleSet] 
type = AngleSet 
trigger1 = 1
value = 45

[State -2, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 290]
type = DestroySelf
trigger1=animtime=0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BSLUGCANNONP
[Statedef 15164]
type = A
physics=N
Movetype=A
anim=18877
facep2=0
sprpriority = 4

[State 0, PlaySnd];Super Grenade Sound pouwmn
type = PlaySnd
trigger1 =time=0
value = 4000,3
volumescale = 256
channel = -1

[State 2231,AssertSpecial]
type= AssertSpecial
trigger1= 1
flag= NoShadow

[State 191,FX1]
type = Explod
trigger1 = gametime%6 = 1
anim = 18878
postype = p1
pos = 0,0
removetime = 6
bindtime = 6
sprpriority = 3
pausemovetime = 2147483647

[State 191,FX2]
type = Explod
trigger1 = gametime%6 = 1
anim = 18879
postype = p1
pos = 0,0
removetime = 6
bindtime = 4
sprpriority = 2
pausemovetime = 2147483647

[State 191,FX3]
type = Explod
trigger1 = gametime%6 = 1
anim = 18880
postype = p1
pos = 0,0
removetime = 6
bindtime = 2
sprpriority = 1
pausemovetime = 2147483647

[State 206]
type=VelSet
trigger1=!Time
;x=ifelse(P2dist x>0,(P2dist x/80),2)
x=1.5+(random%3=1)*(.5)+(random%3=2)*1
y=-4-(Numhelper(601)>1)*1

[State 206]
type=VelAdd
trigger1=Time>0
y=.1+(abs(p2dist x)<200)*.05
;y=0.1

[State 801]
type=HitDef
trigger1=!time
attr=S,HP
damage=70,35
animtype=hard
getpower=5,0
givepower=0,0
guardflag=MA
pausetime=1,10
sparkno=-1
sparkxy=0,-9
ground.slidetime=5
ground.hittime=1
ground.velocity=-3,-3
guard.velocity=-2
air.velocity=-3,-1
airguard.velocity=-2,-1
ground.type=Low
air.type=Low
envshake.time=10
envshake.ampl=5
envshake.freq=70
palfx.time=50
palfx.mul=240-(Root,PalNo=10)*130,220-(Root,PalNo=10)*204,128+(Root,PalNo=10)*4
palfx.sinadd=32-(Root,PalNo=10)*15,128+(Root,PalNo=10)*55,190-(Root,PalNo=10)*30,16
palfx.add=190-(Root,PalNo=10)*140,180-(Root,PalNo=10)*50,84+(Root,PalNo=10)*100

[State 202]
type=ChangeState
trigger1=MoveContact||Pos y>=0
trigger2 = time = 250
value=15165;15035;252

[State 202,HitBy]
type=HitBy
trigger1=1
time=-1
value=SCA,AA,AP

[State 202,HitOverR]
type=HitOverride
trigger1=1
stateno=15165;15035;252
attr=SCA,AA,AP
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BIGEXPLOSION
[Statedef 15165]
type    = s                      
movetype= a                      
physics = s
anim = 18881
sprpriority = 4+9*(root,var(10)=105)
velset = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = s4000,20
volume = 255
channel = 44


[State 0, EnvColor]
type = EnvColor
trigger1 = time=0
value = 255,255,255
time = 1

[State 251, HitDef]
type = HitDef
trigger1 = (animelem=1,1)||(animelem=2,1)||(animelem=3,1)||(animelem=4,1)
trigger2 =(animelem=5,1)||(animelem=6,1)||(animelem=7,1)||(animelem=8,1)
trigger3 =(animelem=9,1)||(animelem=10,1)||(animelem=11,1)||(animelem=12,1)
trigger4 =(animelem=13,1)||(animelem=14,1)||(animelem=15,1)||(animelem=16,1)
trigger5 =(animelem=17,1)||(animelem=18,1)||(animelem=19,1)||(animelem=20,1)
trigger6 =(animelem=21,1)||(animelem=22,1)||(animelem=23,1)||(animelem=24,1)
attr = S, SP
animtype  = Hard
damage    = 2,1;5,2
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,1
guardsound =-1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0
p1sprpriority=7


[State 1105]
type = destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
[Statedef 15166, - BALLDRIFT]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18884
sprpriority = 5
velset = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 27    ;fv = 10
value = 0

[State 0, VarSet]
type = varadd
trigger1 = time
v = 27    ;fv = 10
value = 1

[State 0, BALLLAND]
type = PlaySnd
trigger1 =animelem=1,1
value = 4000,92
volumescale = 25
channel =-1

[State 0, fast]
type = ChangeAnim
trigger1 = var(27)>100&&anim!=18871
value = 18871


[State 0, ChangeState]
type = ChangeState
trigger1 = command="relz"
trigger2 = var(59)&&random%30=29
value =15167
ctrl = 0
;---------------------------------------------------------------------------
[Statedef 15167, - BALLDRIFTMOVE]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(command="holdback",18872,18871)
sprpriority = 5
velset = 0,0

[State 201];Dust
type=Explod
triggerall = vel x > 0
trigger1=Timemod=3,0
anim=2121
ownpal=1
accel=.01,-.01
scale=1,1
sprpriority=2
pos=-25,0
removetime=-2
postype = p1

[State 201];Dust
type=Explod
triggerall = vel x < 0
trigger1=Timemod=3,0
anim=2122
ownpal=1
accel=-.01,-.01
scale=1,1
sprpriority=2
pos=25,0
removetime=-2
postype = p1

[State 0, BALLWALK]
type = PlaySnd
trigger1 = time=0
value = 4000,93
volumescale = 128
channel = -1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0



[State 0, VelAdd]
type = VelAdd
trigger1 = anim=18871&&vel x<ifelse(var(27)/10>12,15,3+var(27)/10)
x = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = anim=18872&&vel x>-ifelse(var(27)/10>12,15,3+var(27)/10)
x = -1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
;ignorehitpause = 
;persistent = 


[State 0, BALLLAND]
type = PlaySnd
trigger1 =animelem=1,1
value = 4000,92
volumescale = 25
channel =-1

[State 200, 1]
type = HitDef
trigger1 = (abs(vel x)>.5)||(abs(vel y)>.5)
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = ifelse(var(27)<150,var(27),150),ifelse(var(27)<150,var(27),150)/2;15*(abs(vel x)+abs(vel y)),8*(abs(vel x)+abs(vel y));5,2                  ;Damage that move inflicts, guard damage
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MA                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0, 8                 ;Time attacker pauses, time opponent shakes
sparkno = -1;S3940
guard.sparkno = -1;S3940                     ;Spark anim no (Def: set above)
sparkxy = -15+(random%30),-30+(random%20)               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound   =s4000,ifelse(random%2,68,36);36
guardsound =s4000,ifelse(random%2,68,36);36               ;Sound to play on guard
ground.type = Low               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = 4*(enemy,facing)             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12                 ;Time before opponent regains control in air
fall = 1
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0
p1sprpriority=5


[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
trigger2 = backedgedist =0
trigger3 = frontedgedist = 0
;trigger4 = floor(abs(pos x -enemy,pos x))=0
;trigger5 = command="y"
value =0
ctrl = 1

;---------------------------------------------------------------------------
;BSLUGSUPERAIR
[Statedef 15168]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 0
ctrl = 0
anim = 18885
sprpriority = 2
velset=0,0

[State 0, VarSet]
type = VARADD
trigger1 = time=0
v = 24    ;fv = 10
value = -1



[State 0, VelSet]
type = VelSet
trigger1 = time < 180
x = 0
y = 0

[State 6000, 2]
type = Helper
trigger1 = anim=18885&&animelem=8
helpertype = normal
name = "SOLRAE"
ID = 2181
stateno = 15169
pos = 0,0
postype = p1
ownpal = 0
scale = 1,1
size.xscale = 1
size.yscale = 1

[State 0, FALL]
type = ChangeAnim
trigger1 = anim=18885&&animtime=0
value = 18874
;---------------------------------------------------------------------------
;BALLSUPERFX
[Statedef 15169]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 18886
sprpriority = 3

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 4000,94
channel = 9

[State 191, 2] 
type = AssertSpecial
trigger1 = 1
flag = noshadow
;flag2 = NoAutoTurn
ignorehitpause=1


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 15    ;fv = 10
value = 3+random%8

[state 2000, 1]
type = Helper
trigger1 = time >= 55
trigger1 = time <= 100
trigger1 = (time%4) = 0
pos = -64,-32
postype = p1
stateno = 15170
helpertype = normal
name = "bullet"
keyctrl = 0
ownpal = 1


[state 2000, 1]
type = Helper
trigger1 = time >= 55
trigger1 = time <= 100
trigger1 = (time%5) = 0
pos = -64,-32
postype = p1
stateno = 15170
helpertype = normal
name = "bullet"
keyctrl = 0
ownpal = 1

[state 2000, 1]
type = Helper
trigger1 = time >= 55
trigger1 = time <= 100
trigger1 = (time%6) = 0
pos = -64,-32
postype = p1
stateno = 15170
helpertype = normal
name = "bullet"
keyctrl = 0
ownpal = 1

[state 2000, 1]
type = Helper
trigger1 = time >= 55
trigger1 = time <= 100
trigger1 = (time%6) = 0
pos = 18,-32
postype = p1
stateno = 15170
helpertype = normal
name = "bullet"
keyctrl = 0
ownpal = 1

[state 2000, 1]
type = Helper
trigger1 = time >= 55
trigger1 = time <= 100
trigger1 = (time%7) = 0
pos = 18,-32
postype = p1
stateno = 15170
helpertype = normal
name = "bullet"
keyctrl = 0
ownpal = 1

[state 2000, 1]
type = Helper
trigger1 = time >= 55
trigger1 = time <= 100
trigger1 = (time%8) = 0
pos = 18,-32
postype = p1
stateno = 15170
helpertype = normal
name = "bullet"
keyctrl = 0
ownpal = 1

[state 2000, 1]
type = Helper
trigger1 = time >= 55
trigger1 = time <= 100
trigger1 = (time%7) = 0
pos = 29,-32
postype = p1
stateno = 15170
helpertype = normal
name = "bullet"
keyctrl = 0
ownpal = 1

[state 2000, 1]
type = Helper
trigger1 = time >= 55
trigger1 = time <= 100
trigger1 = (time%8) = 0
pos = 29,-32
postype = p1
stateno = 15170
helpertype = normal
name = "bullet"
keyctrl = 0
ownpal = 1

[state 2000, 1]
type = Helper
trigger1 = time >= 55
trigger1 = time <= 100
trigger1 = (time%9) = 0
pos = 29,-32
postype = p1
stateno = 15170
helpertype = normal
name = "bullet"
keyctrl = 0
ownpal = 1

[State 1065, 3]
type = bindtoparent
trigger1 = 1
pos = 0,0
time = 1
ignorehitpause = 1
;°Êµe¦ì¸m

[state 231,zturn]
type=turn
trigger1=Facing!=root,Facing

[State 231,bind]
type=bindtoroot
trigger1=1
time=-1
pos=0,0

[State 290]
type = DestroySelf
trigger1=animtime=0
trigger2=LOSE
;-----------------------------------------------------

;---------------------------------------------------------------------------
;SOLRAEBULLETF
[Statedef 15170]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18887
sprpriority = 5;velocidad anterior 15
velset = 0,0;(cos((parent,var(44)*pi)/180)*10),(-sin((parent,var(44)*pi)/180)*10)

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 15    ;fv = 10
value = parent,var(15)

[State 200, 1]
type = PlaySnd
trigger1 = time=0
value = 4000,95
channel = -1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 21    ;fv = 10
value = random%361;parent,var(44)

[State 0, RemapPal]
type = RemapPal
trigger1 =root,var(10)=108
source = 0,17
dest = 17,0

[State 0, VarAdd]
type = parentvarset
triggerall=projhit=1<2||movehit||projcontact=1<2||movecontact
trigger1 = 1
v =51
value = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value=var(21)

[State 0, VelSet]
type = VelSet
trigger1 = time>0
x = cos((var(21)*pi)/180)*(var(15))
y = (-sin((var(21)*pi)/180)*(var(15)))


[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 30,15
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,5
guardsound = s4000,6;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 0, ChangeAnim]
type = CHANGESTATE
trigger1 = pos y>=0
value = 15171

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact;trigger2 = pos y>0
trigger2 = frontedgedist <=-50
trigger3 = (pos y<root,pos y-250)
trigger4 = backedgedist<=-50
value=15171

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;SOLRAEBULLETEND
[Statedef 15171]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18888
sprpriority = 3
velset=0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 1105]
type = destroyself
trigger1=animtime=0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BSLUGSUPERLAND
[Statedef 15172]
type    = c
movetype= A
physics = N
juggle  = 1
poweradd= 0
ctrl = 0
anim = 18885
sprpriority = 2
velset=0,0

[State 0, VarSet]
type = VARADD
trigger1 = time=0
v = 24    ;fv = 10
value = -1



[State 0, VelSet]
type = VelSet
trigger1 = time < 180
x = 0
y = 0

[State 6000, 2]
type = Helper
trigger1 = anim=18885&&animelem=8
helpertype = normal
name = "SOLRAE"
ID = 2181
stateno = 15169
pos = 0,0
postype = p1
ownpal = 0
scale = 1,1
size.xscale = 1
size.yscale = 1

[State 0, FALL]
type = changestate
trigger1 = anim=18885&&animtime=0
value = 11
;---------------------------------------------------------------------------
[Statedef 15173, - LEAVINGBALLSLUG]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18889
sprpriority = 5
velset = 0,0

[State -3, SLUGGEEntering];SLUGGENTERING
type = PlaySnd
trigger1 = time=0
value = 4000,24
volumescale = 256
channel = -1
freqmul = 1.0


[State 0, VLeavingVehicle2b]
type = VarSet
trigger1 = animtime=0
v = 10    ;fv = 10
value = var(25)

[State 0, PosAdd]
type = PosAdd
trigger1 = animtime=0
x = 20
y = -60


[State 0, ChangeState]
type = ChangeState
trigger1 = ANIMTIME=0
value =105
ctrl = 1
;---------------------------------------------------------------------------
;SelfDestructBALLSLUG
[Statedef 15174]
type    = A
movetype= i
physics = N
anim=18862
ctrl = 0
sprpriority = 5
velset=0,5

[State 0, Explod];OUT
type = Explod
trigger1 = time=0&&numexplod(545455)=0&&root,stateno!=14989
anim = 20101
ID = 545455
pos = 15,-75
postype = p1  ;p2,front,back,left,right
facing = ifelse(facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 0, VelSet]
type = VelSet
trigger1 = pos y>0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 4000,22
volumescale = 256
channel = 44


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, PalFXWiz]
type = PalFX
trigger1 = animelem=1,1
time = 210
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarSet]
type = VarSet
trigger1 = command="y"
trigger2 = time>210
trigger3=var(59)
v = 10
value = root,var(25)

[State 0, PalFXWiz]
type = PalFX
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
time = 1

[State 0, Helper]
type = Helper
trigger1 = command="y"
trigger2=var(59)
helpertype = normal ;player
name = "BIGEXPLOSION"
ID = 15005
stateno = 15006
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
channel = 44
;ignorehitpause = 
;persistent = 


[State 0, ChangeState]
type = ChangeState
trigger1 = command="y"
trigger2=var(59)
value =105
ctrl = 1



[State 0, Helper]
type = Helper
trigger1 = time>210
helpertype = normal ;player
name = "BIGEXPLOSIONF"
ID = 15005
stateno = 15005
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time>209
trigger2 = command="y"
id = 545455



[State 0, ChangeState]
type = ChangeState
trigger1 = time>210
value =0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SelfDestructBALLSLUG
[Statedef 15175]
type    = A
movetype= i
physics = N
anim=18866
ctrl = 0
sprpriority = 5
velset=0,5


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=18866&&animtime=0
value = 18862
;elem = 1
;ignorehitpause = 
;persistent = 


[State 0, Explod];OUT
type = Explod
trigger1 = time=0&&numexplod(545455)=0&&root,stateno!=14989
anim = 20101
ID = 545455
pos = 15,-75
postype = p1  ;p2,front,back,left,right
facing = ifelse(facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 0, VelSet]
type = VelSet
trigger1 = pos y>0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 4000,22
volumescale = 256
channel = 44


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, PalFXWiz]
type = PalFX
trigger1 = animelem=1,1
time = 210
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarSet]
type = VarSet
trigger1 = command="y"
trigger2 = time>210
trigger3=var(59)
v = 10
value = root,var(25)

[State 0, PalFXWiz]
type = PalFX
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
time = 1

[State 0, Helper]
type = Helper
trigger1 = command="y"
trigger2=var(59)
helpertype = normal ;player
name = "BIGEXPLOSION"
ID = 15005
stateno = 15006
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
channel = 44
;ignorehitpause = 
;persistent = 


[State 0, ChangeState]
type = ChangeState
trigger1 = command="y"
trigger2=var(59)
value =105
ctrl = 1



[State 0, Helper]
type = Helper
trigger1 = time>210
helpertype = normal ;player
name = "BIGEXPLOSIONF"
ID = 15005
stateno = 15005
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time>209
trigger2 = command="y"
id = 545455



[State 0, ChangeState]
type = ChangeState
trigger1 = time>210
value =0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SUICIDEBALLSLUG1
[Statedef 15176]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18890
sprpriority = 5
velset = 15,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 201];Dust
type=Explod
triggerall = vel x > 0
trigger1=Timemod=3,0
anim=2121
ownpal=1
accel=.01,-.01
scale=1,1
sprpriority=2
pos=-25,0
removetime=-2
postype = p1

[State 201];Dust
type=Explod
triggerall = vel x < 0
trigger1=Timemod=3,0
anim=2122
ownpal=1
accel=-.01,-.01
scale=1,1
sprpriority=2
pos=25,0
removetime=-2
postype = p1

[State 0, BALLWALK]
type = PlaySnd
trigger1 = time=0
value = 4000,93
volumescale = 128
channel = -1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 24    ;fv = 10
value = root,var(24)


[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0;anim=16003&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 10*var(21)+5*var(24)+(root,palno=4)*20,10*var(21)+3*var(24)+(root,palno=4)*20
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 2400, 2];Avanza
type = Velset
triggerall=var(3)=1
trigger1 =1;animelem=1;animtime<
x = 6
y =0

[State 2400, 2];Baja
type = Velset
triggerall=var(3)=2
trigger1 =1;animelem=1;animtime<
x = 0
y =6

[State 2400, 2];Sube
type = Velset
triggerall=var(3)=3
trigger1 =1;animelem=1;animtime<
x = 0
y =-6


[State 0, PalFXWiz]
type = PalFX
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)

[State 0, VarSet]
type = parentVarSet
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
v = 21   ;fv = 10
value = 0


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
value = 15006
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ELEPHANTFALL
[Statedef 15177]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18900
sprpriority = 0
velset = 0,5
poweradd=ifelse((root,var(59)=1),-2000,-floor(root,fvar(18)))

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 24
value = 10

[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 27
value = random%4
;0-NOTHING
;1-BOLT
;2-FLAME
;3-ICE
[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0

[State -3, SLUGGEEntering];SLUGGENTERING
type = PlaySnd
trigger1 = pos y>=0
value = 4000,99
volumescale = 256
channel = -1

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=0
value =15178
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ELEPHANTENTERHERE
[Statedef 15178]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18900
sprpriority = 0
velset = 0,5



[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing&&time=0


;[State 0, PosSet]
;type = PosSet
;trigger1 = root,stateno=14993
;x = root,pos x
[State 0, PosSet]
type =velset
trigger1 = pos y>=0
y=0
[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y=0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, Explod];Enter Here
type = Explod
trigger1 = numexplod(545454)=0&&root,stateno!=14988&&root,var(10)!=113
anim = 20100
ID = 545454
pos = 5,-60
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 11    ;fv = 10
value = root,pos y

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,anim=18901	;ANIM OF ENTERING
id = 545454


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, DestroySelf]
type = DestroySelf 
trigger1=(root,anim=18901)&&root,animelem=1,2	;ANIM OF ENTERING END
trigger2=root,var(10)=113
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ENTERINGELEPHANT
[Statedef 14988]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18901;ifelse(var(10)=0,18701,ifelse(var(10)=15,11049,11048))
sprpriority = 5
velset = 0,0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=1
id = 545454

;[State 0, PosSet]
;type = PosSet
;trigger1 = TIME=0;&&VAR(59)
;y = -35

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, Turn]
type = Turn
trigger1 = (facing=1)&&helper(15000),facing=-1
trigger2 = (facing=-1)&&helper(15000),facing=1



[State 0, NotHitBy]
type = NotHitBy
trigger1 = 18901
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1


[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0


[State 0, PosFreeze]
type = PosFreeze
trigger1 = 18901
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 25    ;fv = 10
value = var(10)

;[State 0, ChangeAnim]
;type = ChangeAnim
;trigger1 = anim=11047&&animtime=0
;trigger2 = anim=11048&&animtime=0
;trigger3 = ANIM=11049&&animtime=0
;value = 18651

[State 0, PosSet]
type = PosSet
trigger1 =numhelper(15000)
x =helper(15000),pos x
y =helper(15000),pos y

[State -3, SLUGGEEntering];SLUGGENTERING
type = PlaySnd
trigger1 = time=0
value = 4000,98
volumescale = 256
channel = -1
freqmul = 1.0


[State 0, VarSet]
type = VarSet
trigger1 = anim=18901&&animelem=1,1
v = 10
value = 113

;[State 0, VarSet]
;type = VarSet
;trigger1 = anim=18901&&animelem=1,1&&var(21)<=0
;v = 21
;value = 3


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=anim=18901
id = 545453

[State 0, HUDVIDACANION0]
type = RemoveExplod
triggerall=numexplod(9110)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18901&&animelem=2,1
id = 9110


[State 0, cannon]
type = RemoveExplod
triggerall=numexplod(9101)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18901&&animelem=2,1
id = 9101

[State 0, ChangeState]
type = ChangeState
trigger1=anim=18901&&animtime=0&&var(10)=113
value =0
ctrl = 0
;---------------------------------------------------------------------------
[Statedef 15179,ELEPHANTHEAD]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18903
sprpriority = 4
velset = 0,0;-.1jkjkl

;==SYSTEM
[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1
pos = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, ParentVarAdd]
type = ParentVarAdd
trigger1 = anim=18909&&animelem=4,1
trigger2 = anim=18914&&animelem=4,1
trigger3 = anim=18908&&animelem=8,1
trigger4 = anim=18916&&animelem=8,1
v = 24    ;fv = 
value = -1

[State 0, Trans]
type = Trans
trigger1 = ((root,anim=18913)||(root,anim=18901))
trans = addalpha ;none, add, addalpha, add1, sub
alpha = 0,256


[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing

;===ANIMS
[State 0, IDLE]
type = ChangeAnim
triggerall=((anim!=18914)||((anim=18914)&&(animtime=0)))&&((anim!=18909)||((anim=18909)&&(animtime=0)))&&((anim!=18908)||((anim=18908)&&(animtime=0)))&&((anim!=18919)||((anim=18919)&&(animtime=0)))
trigger1 = (root,anim=18902)&&(anim!=18903);&&(root,animelem=1,1)
value = 18903

[State 0, CROUCH]
type = ChangeAnim
triggerall=((anim!=18914)||((anim=18914)&&(animtime=0)))&&((anim!=18909)||((anim=18909)&&(animtime=0)))&&((anim!=18908)||((anim=18908)&&(animtime=0)))&&((anim!=18919)||((anim=18919)&&(animtime=0)))
trigger1 = (root,anim=18911)&&(anim!=18912);&&(root,animelem=1,1)
value = 18912

[State 0, WALKFWD]
type = ChangeAnim
triggerall=((anim!=18914)||((anim=18914)&&(animtime=0)))&&((anim!=18909)||((anim=18909)&&(animtime=0)))&&((anim!=18908)||((anim=18908)&&(animtime=0)))&&((anim!=18919)||((anim=18919)&&(animtime=0)))
trigger1 = (root,anim=18904)&&(anim!=18905);&&(root,animelem=1,1)
value = 18905

[State 0, WALKBACK]
type = ChangeAnim
triggerall=((anim!=18914)||((anim=18914)&&(animtime=0)))&&((anim!=18909)||((anim=18909)&&(animtime=0)))&&((anim!=18908)||((anim=18908)&&(animtime=0)))&&((anim!=18919)||((anim=18919)&&(animtime=0)))
trigger1 = (root,anim=18906)&&(anim!=18907);&&(root,animelem=1,1)
value = 18907

[State 0, SHOOTRAYSTAND]
type = ChangeAnim
triggerall=((anim!=18914)||((anim=18914)&&(animtime=0)))&&((anim!=18909)||((anim=18909)&&(animtime=0)))&&((anim!=18908)||((anim=18908)&&(animtime=0)))&&((anim!=18919)||((anim=18919)&&(animtime=0)))
trigger1 = ((root,stateno=0)||(root,stateno=20))&&(root,command="z")&&(anim!=18909)&&(root,var(24)>0)&&root,var(27)=1;&&(root,animelem=1,1)
value = 18909

[State 0, SHOOTRAYCROUCH]
type = ChangeAnim
triggerall=((anim!=18914)||((anim=18914)&&(animtime=0)))&&((anim!=18909)||((anim=18909)&&(animtime=0)))&&((anim!=18908)||((anim=18908)&&(animtime=0)))&&((anim!=18919)||((anim=18919)&&(animtime=0)))
trigger1 = ((root,stateno=11))&&(root,command="z")&&(anim!=18914)&&(root,var(24)>0)&&root,var(27)=1;&&(root,animelem=1,1)
value = 18914

[State 0, SHOOTFIRESTAND]
type = ChangeAnim
triggerall=((anim!=18914)||((anim=18914)&&(animtime=0)))&&((anim!=18909)||((anim=18909)&&(animtime=0)))&&((anim!=18908)||((anim=18908)&&(animtime=0)))&&((anim!=18919)||((anim=18919)&&(animtime=0)))
trigger1 = ((root,stateno=0)||(root,stateno=20))&&(root,command="z")&&(anim!=18908)&&(root,var(24)>0)&&((root,var(27)=2)||(root,var(27)=3));&&(root,animelem=1,1)
value = 18908

[State 0, SHOOTFIRECROUCH]
type = ChangeAnim
triggerall=((anim!=18914)||((anim=18914)&&(animtime=0)))&&((anim!=18909)||((anim=18909)&&(animtime=0)))&&((anim!=18908)||((anim=18908)&&(animtime=0)))&&((anim!=18919)||((anim=18919)&&(animtime=0)))
trigger1 = ((root,stateno=11))&&(root,command="z")&&(anim!=18919)&&(root,var(24)>0)&&((root,var(27)=2)||(root,var(27)=3));&&(root,animelem=1,1)
value = 18919



[State 0, BOLT]
type = Helper
trigger1 = anim=18909
trigger1 = animelem=4,1
name = "BOLTSTREAM"
ID = 13250
stateno = 15180
pos = 74,-26
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, BOLT]
type = Helper
trigger1 = anim=18914
trigger1 = animelem=4,1
name = "BOLTSTREAM"
ID = 13250
stateno = 15180
pos = 74,-11
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, HELLFLAMESHOT]
type = Helper
triggerall=root,var(27)=2
trigger1 = anim=18908
trigger1 = animelem=8,1
name = "HELLFLAMESHOT"
ID = 13250
stateno = 15185
pos = 68,-28
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, HELLFLAMESHOT]
type = Helper
triggerall=root,var(27)=2
trigger1 = anim=18919
trigger1 = animelem=8,1
name = "HELLFLAMESHOT"
ID = 13250
stateno = 15185
pos = 69,-12
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, ICESHOT]
type = Helper
triggerall=root,var(27)=3
trigger1 = anim=18908
trigger1 = animelem=8,1
name = "ICESHOT"
ID = 13250
stateno = 15186
pos = 68,-28
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, ICESHOT]
type = Helper
triggerall=root,var(27)=3
trigger1 = anim=18919
trigger1 = animelem=8,1
name = "ICESHOT"
ID = 13250
stateno = 15186
pos = 69,-12
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0


;===END
[State 0, DestroySelf]
type = DestroySelf
trigger1 =ROOT,MOVETYPE=H;pos y>0;animtime=0
trigger2=root,stateno=105
trigger3=root,var(10)!=113
;---------------------------------------------------------------------------
[Statedef 15180,BOLTSTREAM];BY Loganir & Verz36 
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 70
sprpriority = 2
juggle = 4
velset = 0,0
anim = 18910


[State 0, BindToRoot]
type = Bindtoparent
trigger1 = parent,anim=18909
time = -1
pos = 74,-27

[State 0, BindToRoot]
type = BindToparent
trigger1 = parent,anim=18914
time = -1
pos = 74,-11

[State 0, RemapPal]
type = RemapPal
trigger1 =1
source = 0,102
dest = 102,1+random%3


[State -3, SLUGGEEntering];SLUGGENTERING
type = PlaySnd
trigger1 = time=0
value = 4000,100
volumescale = 256
channel = -1

[State 1110, 6]
type = HitDef
trigger1 =1;var(15)<=4
attr = S, SP
hitflag = MAFD
guardflag = MA
pausetime = 0,12
guard.pausetime =0,8
animtype = hard
air.animtype = hard
damage = 7,3
priority = 4, Hit 
p1sprpriority =4
sparkno = -1;Sifelse(!var(1),8523,1)
guard.sparkno = ifelse(!var(1),-1,40)   
sparkxy = 0,0  
hitsound = -1;S4000,101                   
guardsound = -1;S4000,101     
ground.type = high
air.type = high
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -8,0
air.velocity = -3, -2
air.hittime = 18
guard.slidetime = 14
guard.hittime = 14
guard.velocity = -8
envshake.time=18
envshake.freq=120
envshake.ampl = 3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower=1,1
givepower=1,0
guard.dist = 320
palfx.time = 34
palfx.color = 77
palfx.sinadd = 77,77,77,7


[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0
trigger2 = numhelper(15000)

;---------------------------------------------------------------------------
;FakemarcoELEPHANT
[Statedef 15181]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18915
sprpriority = 6
velset = 0,0




[State 0, STAND]
type = BindToRoot
trigger1 =((root,anim=18902)||(root,anim=18904)||(root,anim=18906))
time = -1
facing = 1
pos = 0,0

[State 0, STANDIN01]
type = BindToRoot
trigger1 =(root,anim=18911)
trigger2 =(root,anim=18901)&&(root,animelem=1,1)
trigger3 =(root,anim=18913)&&(root,animelem=6,1)
time = -1
facing = 1
pos = 0,16

[State 0, STANDIN02]
type = BindToRoot
trigger1 =(root,anim=18901)&&(root,animelem=2,1)
trigger2 =(root,anim=18913)&&(root,animelem=5,1)
time = -1
facing = 1
pos = 0,13

[State 0, STANDIN03]
type = BindToRoot
trigger1 =(root,anim=18901)&&(root,animelem=3,1)
trigger2 =(root,anim=18913)&&(root,animelem=4,1)
time = -1
facing = 1
pos = 0,10

[State 0, STANDIN04]
type = BindToRoot
trigger1 =(root,anim=18901)&&(root,animelem=4,1)
trigger2 =(root,anim=18913)&&(root,animelem=3,1)
time = -1
facing = 1
pos = 0,8

[State 0, STANDIN04]
type = BindToRoot
trigger1 =(root,anim=18901)&&(root,animelem=5,1)
trigger2 =(root,anim=18913)&&(root,animelem=2,1)
time = -1
facing = 1
pos = 0,5

[State 0, STANDIN04]
type = BindToRoot
trigger1 =(root,anim=18901)&&(root,animelem=6,1)
trigger2 =(root,anim=18913)&&(root,animelem=1,1)
time = -1
facing = 1
pos = 0,2


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing


[State 0, IDLE]
type = ChangeAnim
trigger1 = (root,anim=18902)&&(anim!=18915);&&(root,animelem=1,1)
trigger2 = (root,anim=18911)&&(anim!=18915);&&(root,animelem=1,1)
value = 18915


[State 0, WALKFWD]
type = ChangeAnim
trigger1 = (root,anim=18904)&&(anim!=18916);&&(root,animelem=1,1)
value = 18916

[State 0, WALKBACK]
type = ChangeAnim
trigger1 = (root,anim=18906)&&(anim!=18917);&&(root,animelem=1,1)
value = 18917

[State 0, STANDING]
type = ChangeAnim
trigger1 = (root,anim=18913)&&(anim!=18918);&&(root,animelem=1,1)
trigger2 = (root,anim=18901)&&(anim!=18918);&&(root,animelem=1,1)
value = 18918


[State 0, ChangeState]
type = destroyself
trigger1 =ROOT,MOVETYPE=H;pos y>0;animtime=0
trigger2=root,stateno=105
trigger3=root,var(10)!=113
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ELEPHANTCROUCHING
[Statedef 15182]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18913
sprpriority = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing&&time=0

[State 0, CROUCH]
type = ChangeAnim
trigger1 = anim=18913&&animtime=0
value = 18900


;[State 0, PosSet]
;type = PosSet
;trigger1 = root,stateno=14993
;x = root,pos x
[State 0, PosSet]
type =velset
trigger1 = pos y>=0
y=0
[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y=0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, Explod];Enter Here
type = Explod
trigger1 = numexplod(545454)=0&&root,stateno!=14988&&root,var(10)!=113
anim = 20100
ID = 545454
pos = 5,-60
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 11    ;fv = 10
value = root,pos y

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,anim=18901	;ANIM OF ENTERING
id = 545454


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, ChangeState]
type = destroyself
trigger1 =root,stateno=14988;pos y>0;animtime=0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ELEPHANTCROUCHING
[Statedef 15183]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18900
sprpriority = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0



[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing&&time=0

[State 0, CROUCH]
type = ChangeAnim
trigger1 = anim=18913&&animtime=0
value = 18900


;[State 0, PosSet]
;type = PosSet
;trigger1 = root,stateno=14993
;x = root,pos x
[State 0, PosSet]
type =velset
trigger1 = pos y>=0
y=0
[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y=0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, Explod];Enter Here
type = Explod
trigger1 = numexplod(545454)=0&&root,stateno!=14988&&root,var(10)!=113
anim = 20100
ID = 545454
pos = 5,-60
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 11    ;fv = 10
value = root,pos y

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,anim=18901	;ANIM OF ENTERING
id = 545454


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, ChangeState]
type = destroyself
trigger1 =root,stateno=14988;pos y>0;animtime=0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;SUICIDEELEPHANT
[Statedef 15184]
type    = A
movetype= A
physics = N
juggle  = 0
ctrl = 0
anim = 18920
sprpriority = 5
velset = const(velocity.walk.fwd.x),0

[State 0, Yihaa]
type = PlaySnd;triggerall=roundstate=2||roundstate=1
trigger1 = time=0
value = 4000,97
volumescale = 256
channel = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 21    ;fv = 10
value = root,var(21)


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 24    ;fv = 10
value = root,var(24)

[State 0, ELEPHANTWALK]
type = PlaySnd
trigger1 =anim=18920&&((animelem=3,1)||(animelem=13,1))
value = 4000,99
volumescale = 256
channel =-1

[State -2, sh]
type = EnvShake
trigger1 =anim=18920&&((animelem=3,1)||(animelem=13,1))
freq = 110
time = 15
ampl = -3;10

[State 0, VarAdd];remove fuel
type = parentvarset
trigger1 = time>1
v =21
value = 0



[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 251, HitDef]
type = HitDef
trigger1 = 1;!movecontact
attr = S, SA
animtype  = Hard
damage    = 250,8
hitflag = MAD
guardflag = MAD
pausetime = 0,5
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,101
guardsound = s4000,101;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = HIGH
ground.slidetime = 5
;guard.sparkno; = S449
ground.hittime  = 15
ground.velocity = -10
air.juggle = 0
air.velocity = -8,10;-10,-8
fall.xvelocity =-5
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0
FALL=1
envshake.time = 8
envshake.freq = 100

[State 2400, 2];Avanza
type = Velset
trigger1 =1
x = 3
y =0

[State 0, Turn]
type = Turn
trigger1 = !movecontact&&frontedgedist =0


[State 0, VarSet]
type = parentVarSet
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
v = 21   ;fv = 10
value = 0


[State 0, DestroySelf]
type = DESTROYSELF
trigger1 = frontedgedist <=-50

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;HELLFLAMESHOT
[Statedef 15185]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18921
sprpriority = 5
velset = 1.2,-.6

[State 0, FLAME];FLAME Sounds
type = PlaySnd
trigger1=time=0
value = 4000,15
volumescale = 256
channel = 0

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT,AP
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
trigger1 = 1
slot = 1
time = 1
stateno = 15185
attr = SCA, NA, SA, HA, NT, ST, HT,AP
ignorehitpause = 1


[State 251, HitDef]
type = HitDef
trigger1 = time
attr = S, HA
animtype  = Hard
damage    = 3,3
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,2
guardsound = -1;s4000,2;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 0
envshake.freq = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 2400, 2];Avanza
type = Velset
trigger1 =1;animelem=1;animtime<
x = 1.2
y =-.6

[State 0, DestroySelf]
type = destroyself
trigger1 = animtime=0
trigger2 = frontedgedist <=-50

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ICESHOT
[Statedef 15186]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18922
sprpriority = 5
velset = 2.4,-.6

[State 0, ICE];ICE Sounds
type = PlaySnd
trigger1=time=0
value = 4000,102
volumescale = 256
channel = 0

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, Helper]
type = Helper
trigger1 = (GameTime % 3) = 0
helpertype = normal ;player
name = "ICEFX"
ID = 515151
stateno = 15187
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT,AP
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
trigger1 = 1
slot = 1
time = 1
stateno = 15186
attr = SCA, NA, SA, HA, NT, ST, HT,AP
ignorehitpause = 1


[State 251, HitDef]
type = HitDef
trigger1 = time
attr = S, HA
animtype  = Hard
damage    = 6,5
hitflag = MAFD
guardflag = MAFD
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,2
guardsound = -1;s4000,2;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 0
envshake.freq = 0
palfx.time = 3
palfx.add = 0,50,240
palfx.mul = 120,224,150
palfx.sinadd = 85,55,110,10
palfx.invertall = 0
palfx.color = 0
getpower=1,0



[State 2400, 2];Avanza
type = Veladd
trigger1 =1;animelem=1;animtime<
x = .35
y =-.1

[State 0, DestroySelf]
type = destroyself
trigger1 = frontedgedist <=-50

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;ICESHOTFX
[Statedef 15187]
type    = s                      
movetype= a                      
physics = s
anim = 18923
sprpriority = 4
velset = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, VelSet]
type = Veladd
trigger1 = 1
y = .1


[State 251, HitDef]
type = HitDef
trigger1 = (animelem=1,1)||(animelem=2,1)||(animelem=3,1)||(animelem=4,1)
trigger2 =(animelem=5,1)||(animelem=6,1)||(animelem=7,1)||(animelem=8,1)
trigger3 =(animelem=9,1)||(animelem=10,1)||(animelem=11,1)||(animelem=12,1)
trigger4 =(animelem=13,1)||(animelem=14,1)||(animelem=15,1)||(animelem=16,1)
trigger5 =(animelem=17,1)||(animelem=18,1)||(animelem=19,1)||(animelem=20,1)
trigger6 =(animelem=21,1)||(animelem=22,1)||(animelem=23,1);||(animelem=20,1)
attr = S, SP
animtype  = Hard
damage    = 1,1;5,2
hitflag = MAFD
guardflag = MAFD
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,1
guardsound =-1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;envshake.time = 8
;envshake.freq = 100
palfx.time = 3
palfx.add = 0,50,240
palfx.mul = 120,224,150
palfx.sinadd = 85,55,110,10
palfx.invertall = 0
palfx.color = 0
getpower=1,0


[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 1105]
type = destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;FAKEARMELEPHANT
[Statedef 15188]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 16214
sprpriority = 2

[State 0, STANDIDLE]
type = BindToRoot
trigger1=((root,anim=18902)||(root,anim=18904)||(root,anim=18906))
time =-1
pos = 3,-72

[State 0, CROUCHIDLE]
type = BindToRoot
trigger1 =(root,anim=18911)
trigger2 =(root,anim=18901)&&(root,animelem=1,1)
trigger3 =(root,anim=18913)&&(root,animelem=6,1)
time =-1
pos = 3,-56

[State 0, STANDIN02]
type = BindToRoot
trigger1 =(root,anim=18901)&&(root,animelem=2,1)
trigger2 =(root,anim=18913)&&(root,animelem=5,1)
time = -1
facing = 1
pos = 3,-59

[State 0, STANDIN03]
type = BindToRoot
trigger1 =(root,anim=18901)&&(root,animelem=3,1)
trigger2 =(root,anim=18913)&&(root,animelem=4,1)
time = -1
facing = 1
pos = 3,-62

[State 0, STANDIN04]
type = BindToRoot
trigger1 =(root,anim=18901)&&(root,animelem=4,1)
trigger2 =(root,anim=18913)&&(root,animelem=3,1)
time = -1
facing = 1
pos = 3,-64

[State 0, STANDIN04]
type = BindToRoot
trigger1 =(root,anim=18901)&&(root,animelem=5,1)
trigger2 =(root,anim=18913)&&(root,animelem=2,1)
time = -1
facing = 1
pos = 3,-67

[State 0, STANDIN04]
type = BindToRoot
trigger1 =(root,anim=18901)&&(root,animelem=6,1)
trigger2 =(root,anim=18913)&&(root,animelem=1,1)
time = -1
facing = 1
pos = 3,-70

[State 0, THROW]
type = Changeanim
trigger1 = anim=16214&&(root,command="z")
value =16214

[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing



[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0
trigger2=root,stateno=105

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BSLUGSLOWJUMP
[Statedef 15189]
type    = c
movetype= A
physics = N
juggle  = 1
poweradd= 0
ctrl = 0
anim = 18865
sprpriority = 2
velset=0,0


[State 0, ChangeState]
type = ChangeState
trigger1 = animtime=0
value =15161
ctrl = 0
;---------------------------------------------------------------------------
;SV001FALLING
[Statedef 15190]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 16005
sprpriority = 0
velset = 0,5;-.1jkjkl


[State 0, Helper]
type = Helper
trigger1=numhelper(323232)=0&&root,palno=4
helpertype = normal ;player
name = "ALICE"
ID = 323232
stateno = 16668
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, RemapPal]
type = RemapPal
triggerall=root,palno!=4
trigger1 = root,var(27)=0
source = 0,27
dest = 0,27

[State 0, RemapPal]
type = RemapPal
triggerall=root,palno!=4
trigger1 = root,var(27)=1
source = 0,27
dest = 27,2

[State 0, ALICE]
type = RemapPal
triggerall=root,palno=4
trigger1 = root,var(27)=0
source = 0,27
dest = 27,3

[State 0, ALICE-H]
type = RemapPal
triggerall=root,palno=4
trigger1 = root,var(27)=1
source = 0,27
dest = 27,5


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 24    ;fv = 10
value = 10+ifelse(root,palno=4,2,0)

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=0;pos y>0;animtime=0
value =15001
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;DIKOKKAFALLING
[Statedef 15191]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18930
sprpriority = 0
velset = 0,5
poweradd=ifelse((root,var(59)=1),-2000,-floor(root,fvar(18)))

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 24
value = 10

[State 0, MODESEL]
type = parentVarSet
trigger1=time=0
v = 27
value = random%4


[State 0, RemapPal]
type = RemapPal
trigger1 =1
source = 0,113
dest = 113,root,var(27)



[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=0
value =15192
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;DIKOKKAENTERHERE
[Statedef 15192]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18930
sprpriority = 0
velset = 0,5

[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing&&time=0

[State 0, PosSet]
type =velset
trigger1 = pos y>=0
y=0
[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y=0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, Explod];Enter Here
type = Explod
trigger1 = numexplod(545454)=0&&root,stateno!=14987&&root,var(10)!=130
anim = 20100
ID = 545454
pos = 0,-60
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 11    ;fv = 10
value = root,pos y

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,anim=18931	;ANIM OF ENTERING
id = 545454


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, DestroySelf]
type = DestroySelf 
trigger1=(root,anim=18931)&&root,animelem=1,2	;ANIM OF ENTERING END
trigger2=root,var(10)=130
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;ENTERINGDIKOKKA
[Statedef 14987]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(var(10)=0,11047,ifelse(var(10)=15,11049,11048))
sprpriority = 5
velset = 0,0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=1
id = 545454

[State 0, PosSet]
type = PosSet
trigger1 = TIME=0;&&VAR(59)
y = -52


[State 0, NotHitBy]
type = NotHitBy
trigger1 = anim=11047||anim=11048||anim=11049
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, Turn]
type = Turn
trigger1 = (facing=1)&&helper(15000),facing=-1
trigger2 = (facing=-1)&&helper(15000),facing=1

[State 0, PosSet]
type = PosSet
trigger1 =numhelper(15000)
x =helper(15000),pos x

[State 0, PosSet]
type = PosSet
trigger1 =anim=18931&&numhelper(15000)
y =helper(15000),pos y

[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0


[State 0, PosFreeze]
type = PosFreeze
trigger1 = ANIM=11047
trigger2 = ANIM=11048
trigger3 = ANIM=11049
trigger4=anim=18931
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 25    ;fv = 10
value = var(10)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=11047&&animtime=0
trigger2 = anim=11048&&animtime=0
trigger3 = ANIM=11049&&animtime=0
value = 18931

[State 0, PosSet]
type = PosSet
trigger1 = anim=18931
y = 0

[State -3, SLUGGEEntering];SLUGGENTERING
type = PlaySnd
trigger1 = time=0
value = 4000,24
volumescale = 256
channel = -1
freqmul = 1.0


[State 0, VarSet]
type = VarSet
trigger1 = anim=18931&&animelem=1,1
v = 10
value = 130

[State 0, VarSet]
type = VarSet
trigger1 = anim=18931&&animelem=1,1&&var(21)<=0
v = 21
value = 3


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=anim=18931
id = 545453

[State 0, HUDVIDACANION0]
type = RemoveExplod
triggerall=numexplod(9110)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18931&&animelem=2,1
id = 9110


[State 0, cannon]
type = RemoveExplod
triggerall=numexplod(9101)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18931&&animelem=2,1
id = 9101

[State 0, ChangeState]
type = ChangeState
trigger1=anim=18931&&animtime=0&&var(10)=130
value =0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;DICOKKASHOOT
[Statedef 15193]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = ifelse((var(27)=1)||(var(27)=3),18942,ifelse(var(27)=2,18945,18937))
sprpriority = 5                  ;Set p1's sprite layering priority to 2 (in front)

;======EFFECTS
[State 0, FX1]
type = Explod
triggerall=var(24)>0
triggerall=anim=18945
trigger1 = animelem=6,1
anim = 18939
ID = 545454
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 6
ontop = 0
ownpal = 1

[State 0, FX1]
type = Explod
triggerall=var(24)>0
triggerall=anim=18937
trigger1 = animelem=6,1
trigger2 = animelem=7,12
anim = 18939
ID = 545454
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 6
ontop = 0
ownpal = 1

[State 0, FX1]
type = Explod
triggerall=var(24)>0
triggerall=anim=18942
trigger1 = animelem=6,1
trigger2 = animelem=7,12
trigger3 = animelem=12,1
anim = 18939
ID = 545454
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 6
ontop = 0
ownpal = 1
;======PROJECTILE

[State 0, FCANNONX2]
type = Helper
triggerall=var(24)>0
triggerall=anim=18945
trigger1 = animelem=7,19
name = "FDIKKOKACANNON"
ID = 13250
stateno = 15196
pos = 35,-45
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, CANNONX2]
type = Helper
triggerall=var(24)>0
triggerall=anim=18937
trigger1 = animelem=7,19
trigger2 = animelem=12,1
name = "DIKKOKACANNON"
ID = 13250
stateno = 15194
pos = 35,-45
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, CANNONX3]
type = Helper
triggerall=var(24)>0
triggerall=anim=18942
trigger1 = animelem=7,19
trigger2 = animelem=12,1
trigger3 = animelem=18,1
name = "DIKKOKACANNON"
ID = 13250
stateno = 15194
pos = 35,-45
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 0, END]
type = ChangeState
trigger1 = animtime=0
value =0
ctrl = 1

;---------------------------------------------------------------------------
;DICOKKAPROJ
[Statedef 15194]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18938
sprpriority = 5
velset = 3,0

[State 0, ParentVarAdd]
type = ParentVarAdd
trigger1 = time=0
v = 24
value = -1

[State 0, SMOKE]
type = Explod
trigger1 = TIME=0
anim = 18941
ID = 313131
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 6
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, SPARK]
type = Explod
trigger1 = TIME=0
anim = 18940
ID = 313131
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 7
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0



[State 0, PlaySnd]
type = PlaySnd
triggerall=root,var(10)=130
trigger1 = time=0
value = 4000,48
volume = 64
channel = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall=root,var(10)=114
trigger1 = time=0
value = 4000,48
volume = 32
channel = 0

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "vel x = %d "
params = vel x

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 15195
time = -1

[State 251, HitDef]
type = HitDef
trigger1 = 1
attr = S, SP
animtype  = Hard
damage    = 55+((root,var(27)=3)*20),25+((root,var(27)=3)*15)
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,2
guardsound = -1;s4000,2;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = LOW
ground.slidetime = 1;.4;5
;guard.sparkno; = S449
ground.hittime  = 1;.4;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)
value = 15197
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;SMALLEXPLPSIONCENTERED
[Statedef 15195]
type    = s                      
movetype= a                      
physics = s
anim = 1407
sprpriority = 4
velset = 0,0



[State 251, HitDef]
type = HitDef
trigger1 = (animelem=1,1)||(animelem=2,1)||(animelem=3,1)||(animelem=4,1)
trigger2 =(animelem=5,1)||(animelem=6,1)||(animelem=7,1)||(animelem=8,1)
trigger3 =(animelem=9,1)||(animelem=10,1)||(animelem=11,1)||(animelem=12,1)
trigger4 =(animelem=13,1)||(animelem=14,1)||(animelem=15,1)||(animelem=16,1)
trigger5 =(animelem=17,1)||(animelem=18,1)||(animelem=19,1)
attr = S, SP
animtype  = Hard
damage    = 1,1;5,2
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy=0,0
hitsound   =-1;s4000,1
guardsound =-1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;envshake.time = 8
;envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 1105]
type = destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;FUTUREDIKOKKAPROJ
[Statedef 15196]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18943
sprpriority = 5
velset = 3,0


[State 0, ParentVarAdd]
type = ParentVarAdd
trigger1 = time=0
v = 24
value = -1


[State 0, SMOKE]
type = Explod
trigger1 = TIME=0
anim = 18944
ID = 313131
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 6
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 4000,48
volume = 64
channel = 0

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "vel x = %d "
params = vel x

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 15195
time = -1

[State 251, HitDef]
type = HitDef
trigger1 = 1
attr = S, SP
animtype  = Hard
damage    = 150,75
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,2
guardsound = -1;s4000,2;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = LOW
ground.slidetime = 1;.4;5
;guard.sparkno; = S449
ground.hittime  = 1;.4;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)
value = 15197
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MEDIUMEXPLOSIONCENTER
[Statedef 15197]
type    = s                      
movetype= a                      
physics = s
anim = 1291
sprpriority = 4
velset = 0,0

[State 0, PosAdd]
type = PosAdd
trigger1 =time=0
x = 40

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 9000, AngleDraw]
type = AngleDraw
value=0
scale=.7,.7
trigger1 = 1

[State 0, PlaySnd]
type = PlaySnd;
triggerall=parent,stateno!=15209
trigger1 = time=0
value = s4000,4
volume = 256
channel = 5


[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0



[State 251, HitDef]
type = HitDef
trigger1 = (animelem=1,1)||(animelem=2,1)||(animelem=3,1)||(animelem=4,1)
trigger2 =(animelem=5,1)||(animelem=6,1)||(animelem=7,1)||(animelem=8,1)
trigger3 =(animelem=9,1)||(animelem=10,1)||(animelem=11,1)||(animelem=12,1)
trigger4 =(animelem=13,1)||(animelem=14,1)||(animelem=15,1)||(animelem=16,1)
trigger5 =(animelem=17,1)||(animelem=18,1)||(animelem=19,1)
attr = S, SP
animtype  = Hard
damage    = 1,1
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy=0,0
hitsound   =-1;s4000,1
guardsound =-1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;envshake.time = 8
;envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 1105]
type = destroyself
trigger1 = animtime = 0


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;SELFDESTRUCTDIKOKKA
[Statedef 15198]
type    = S
movetype= I
physics = N
ctrl = 0
sprpriority = 5

[State 0, Explod];OUT
type = Explod
trigger1 = time=0&&numexplod(545454)=0&&root,stateno!=14999
anim = 20101
ID = 545455
pos = 0,-60
postype = p1  ;p2,front,back,left,right
facing = ifelse(facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 0, VelSet]
type = VelSet
trigger1 = pos y<0
x = 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time=0
value = 18932

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 4000,22
volumescale = 256
channel = 44

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, PalFXWiz]
type = PalFX
trigger1 = anim=18932&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256
[State 0, VarSet]
type = VarSet
trigger1 = command="y"
trigger2 = anim=18932&&time>210
trigger3=var(59)
v = 10
value = root,var(25)

[State 0, PalFXWiz]
type = PalFX
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
time = 1

[State 0, Helper]
type = Helper
trigger1 = command="y"
trigger2=var(59)
helpertype = normal ;player
name = "BIGEXPLOSION"
ID = 15005
stateno = 15006
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
channel = 44
;ignorehitpause = 
;persistent = 


[State 0, ChangeState]
type = ChangeState
trigger1 = command="y"
trigger2=var(59)
value =105
ctrl = 1



[State 0, Helper]
type = Helper
trigger1 = anim=18932&&time>210
helpertype = normal ;player
name = "BIGEXPLOSIONF"
ID = 15005
stateno = 15005
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = anim=18932&&time>209
trigger2 = command="y"
id = 545455



[State 0, ChangeState]
type = ChangeState
trigger1 = anim=18932&&time>210
value =0
ctrl = 1


;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;SUICIDEDICOKKA
[Statedef 15199]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18946
sprpriority = 5
velset = ((2)*(const(velocity.walk.fwd.x)))+(root,var(27)=3),0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 24    ;fv = 10
value = root,var(24)


[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0;anim=16003&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 10*var(21)+5*var(24)+(root,palno=4)*20,10*var(21)+3*var(24)+(root,palno=4)*20
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 0, PalFXWiz]
type = PalFX
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)

[State 0, VarSet]
type = parentVarSet
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
v = 21   ;fv = 10
value = 0


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
value = 15006
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;LEAVINGDIKOKKA
[Statedef 15200]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18947
sprpriority = 5
velset = 0,0


[State 0, VLeavingVehicle2b]
type = VarSet
trigger1 = animtime=0
v = 10    ;fv = 10
value = var(25)

[State -3, SLUGGEEntering];SLUGGENTERING
type = PlaySnd
trigger1 = time=0
value = 4000,24
volumescale = 256
channel = -1
freqmul = 1.0

[State 0, PosAdd]
type = PosAdd
trigger1 = animtime=0
y = -40

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime=0
value =105

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;RDIKOKKAFALLING
[Statedef 15201]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18950
sprpriority = 0
velset = 0,5
poweradd=ifelse((root,var(59)=1),-2000,-floor(root,fvar(18)))

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 0, VarSet]
type = parentVarSet
trigger1=time=0
v = 24
value = 10

[State 0, MODESEL]
type = parentVarSet
trigger1=time=0
v = 27
value = random%2


[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=0
value =15202
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;RDIKOKKAENTERHERE
[Statedef 15202]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18950
sprpriority = 0
velset = 0,5

[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing&&time=0

[State 0, PosSet]
type =velset
trigger1 = pos y>=0
y=0
[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y=0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, Explod];Enter Here
type = Explod
trigger1 = numexplod(545454)=0&&root,stateno!=14986&&root,var(10)!=114
anim = 20100
ID = 545454
pos = 0,-60
postype = p1  ;p2,front,back,left,right
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 11    ;fv = 10
value = root,pos y

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,anim=18951	;ANIM OF ENTERING
id = 545454


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, DestroySelf]
type = DestroySelf 
trigger1=(root,anim=18951)&&root,animelem=1,2	;ANIM OF ENTERING END
trigger2=root,var(10)=114
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;ENTERINGRDIKOKKA
[Statedef 14986]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(var(10)=0,11047,ifelse(var(10)=15,11049,11048))
sprpriority = 5
velset = 0,0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=1
id = 545454

[State 0, PosSet]
type = PosSet
trigger1 = TIME=0;&&VAR(59)
y = -52


[State 0, NotHitBy]
type = NotHitBy
trigger1 = anim=11047||anim=11048||anim=11049
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn

[State 0, Turn]
type = Turn
trigger1 = (facing=1)&&helper(15000),facing=-1
trigger2 = (facing=-1)&&helper(15000),facing=1

[State 0, PosSet]
type = PosSet
trigger1 =numhelper(15000)
x =helper(15000),pos x

[State 0, PosSet]
type = PosSet
trigger1 =anim=18951&&numhelper(15000)
y =helper(15000),pos y

[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0


[State 0, PosFreeze]
type = PosFreeze
trigger1 = ANIM=11047
trigger2 = ANIM=11048
trigger3 = ANIM=11049
trigger4=anim=18951
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 25    ;fv = 10
value = var(10)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=11047&&animtime=0
trigger2 = anim=11048&&animtime=0
trigger3 = ANIM=11049&&animtime=0
value = 18951

[State 0, PosSet]
type = PosSet
trigger1 = anim=18951
y = 0

[State -3, SLUGGEEntering];SLUGGENTERING
type = PlaySnd
trigger1 = time=0
value = 4000,24
volumescale = 256
channel = -1
freqmul = 1.0


[State 0, VarSet]
type = VarSet
trigger1 = anim=18951&&animelem=1,1
v = 10
value = 114

[State 0, VarSet]
type = VarSet
trigger1 = anim=18951&&animelem=1,1&&var(21)<=0
v = 21
value = 3


[State 0, RemoveExplod]
type = RemoveExplod
trigger1=anim=18951
id = 545453

[State 0, HUDVIDACANION0]
type = RemoveExplod
triggerall=numexplod(9110)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18951&&animelem=2,1
id = 9110


[State 0, cannon]
type = RemoveExplod
triggerall=numexplod(9101)>0;&&;anim=16006&&animelem=5,1
trigger1=anim=18951&&animelem=2,1
id = 9101

[State 0, ChangeState]
type = ChangeState
trigger1=anim=18951&&animtime=0&&var(10)=114
value =0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;RDCKKSHOOTCANNON
[Statedef 15203]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 18958
sprpriority = 5                  ;Set p1's sprite layering priority to 2 (in front)

;======EFFECTS


[State 0, FXA]
type = Explod
triggerall=var(24)>0
triggerall=anim=18958
trigger1 = animelem=6,1
trigger2 = animelem=7,12
anim = 18939
ID = 545454
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 6
ontop = 0
ownpal = 1

[State 0, FXA]
type = Explod
triggerall=var(24)>0
triggerall=anim=18958
trigger1 = animelem=6,1
trigger2 = animelem=7,12
anim = 18939
ID = 545454
pos = 5,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 6
ontop = 0
ownpal = 1

;======PROJECTILE

[State 0, CANNONA]
type = Helper
triggerall=var(24)>0
triggerall=anim=18958
trigger1 = animelem=7,19
trigger2 = animelem=12,1
name = "DIKKOKACANNON"
ID = 13250
stateno = 15194
pos = 35,-45
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, CANNONB]
type = Helper
triggerall=var(24)>0
triggerall=anim=18958
trigger1 = animelem=7,19
trigger2 = animelem=12,1
name = "DIKKOKACANNON"
ID = 13250
stateno = 15204
pos = 40,-40
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 0, END]
type = ChangeState
trigger1 = animtime=0
value =0
ctrl = 1

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;DICOKKAPROJB
[Statedef 15204]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18938
sprpriority = 4
velset = 3,0

[State 0, ParentVarAdd]
type = ParentVarAdd
trigger1 = time=0
v = 24
value = -1

[State 0, SMOKE]
type = Explod
trigger1 = TIME=0
anim = 18941
ID = 313131
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, SPARK]
type = Explod
trigger1 = TIME=0
anim = 18940
ID = 313131
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 6
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0



[State 0, PlaySnd]
type = PlaySnd
triggerall=root,var(10)=130
trigger1 = time=0
value = 4000,48
volume = 64
channel = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall=root,var(10)=114
trigger1 = time=0
value = 4000,48
volume = 32
channel = 0

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "vel x = %d "
params = vel x

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 15195
time = -1

[State 251, HitDef]
type = HitDef
trigger1 = 1
attr = S, SP
animtype  = Hard
damage    = 55+((root,var(27)=3)*20),25+((root,var(27)=3)*15)
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,2
guardsound = -1;s4000,2;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = LOW
ground.slidetime = 1;.4;5
;guard.sparkno; = S449
ground.hittime  = 1;.4;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)
value = 15197
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;SUICIDERDICOKKA
[Statedef 15205]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18961
sprpriority = 5
velset = ((2)*(const(velocity.walk.fwd.x))),0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 24    ;fv = 10
value = root,var(24)


[State 0, PalFXWiz]
type = PalFX
trigger1 = time=0;anim=16003&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 10*var(21)+5*var(24)+(root,palno=4)*20,10*var(21)+3*var(24)+(root,palno=4)*20
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 8
envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 0, PalFXWiz]
type = PalFX
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)

[State 0, VarSet]
type = parentVarSet
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
v = 21   ;fv = 10
value = 0


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4= (pos y<root,pos y-250)
value = 15006
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;LEAVINGRDIKOKKA
[Statedef 15206]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 18957
sprpriority = 5
velset = 0,0


[State 0, VLeavingVehicle2b]
type = VarSet
trigger1 = animtime=0
v = 10    ;fv = 10
value = var(25)

[State -3, SLUGGEEntering];SLUGGENTERING
type = PlaySnd
trigger1 = time=0
value = 4000,24
volumescale = 256
channel = -1
freqmul = 1.0

[State 0, PosAdd]
type = PosAdd
trigger1 = animtime=0
y = -40

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime=0
value =105

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;SELFDESTRUCTDIKOKKA
[Statedef 15207]
type    = S
movetype= I
physics = N
ctrl = 0
sprpriority = 5

[State 0, Explod];OUT
type = Explod
trigger1 = time=0&&numexplod(545454)=0&&root,stateno!=14999
anim = 20101
ID = 545455
pos = 0,-60
postype = p1  ;p2,front,back,left,right
facing = ifelse(facing=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 0, VelSet]
type = VelSet
trigger1 = pos y<0
x = 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time=0
value = 18952

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 4000,22
volumescale = 256
channel = 44

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, PalFXWiz]
type = PalFX
trigger1 = anim=18952&&animelem=1,1
time = 120
add = 256,0,0
mul = 256,256,256
sinadd = -256,-256,-256,10
invertall = 0
color = 256
[State 0, VarSet]
type = VarSet
trigger1 = command="y"
trigger2 = anim=18952&&time>210
trigger3=var(59)
v = 10
value = root,var(25)

[State 0, PalFXWiz]
type = PalFX
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
time = 1

[State 0, Helper]
type = Helper
trigger1 = command="y"
trigger2=var(59)
helpertype = normal ;player
name = "BIGEXPLOSION"
ID = 15005
stateno = 15006
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = command="y"
trigger2=time>210
trigger3=var(59)
channel = 44
;ignorehitpause = 
;persistent = 


[State 0, ChangeState]
type = ChangeState
trigger1 = command="y"
trigger2=var(59)
value =105
ctrl = 1



[State 0, Helper]
type = Helper
trigger1 = anim=18952&&time>210
helpertype = normal ;player
name = "BIGEXPLOSIONF"
ID = 15005
stateno = 15005
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = anim=18952&&time>209
trigger2 = command="y"
id = 545455



[State 0, ChangeState]
type = ChangeState
trigger1 = anim=18952&&time>210
value =0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;RDCKKSHOOTLASER
[Statedef 15208]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 18959
sprpriority = 5                  ;Set p1's sprite layering priority to 2 (in front)

;======EFFECTS


[State 0, FXA]
type = null;Explod
triggerall=var(24)>0
triggerall=anim=18958
trigger1 = animelem=6,1
trigger2 = animelem=7,12
anim = 18939
ID = 545454
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 6
ontop = 0
ownpal = 1

[State 0, FXA]
type = null;Explod
triggerall=var(24)>0
triggerall=anim=18958
trigger1 = animelem=6,1
trigger2 = animelem=7,12
anim = 18939
ID = 545454
pos = 5,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 6
ontop = 0
ownpal = 1

;======PROJECTILE

[State 0, LASERBREED]
type = Helper
triggerall=var(24)>0
triggerall=anim=18959
trigger1 = animelem=10
name = "DIKKOKACANNON"
ID = 13250
stateno = 15209
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 0, ENDANIM]
type = ChangeAnim
trigger1 = anim=18959&&animtime=0&&numhelper(13250)=0
value = 18960



[State 0, END]
type = ChangeState
trigger1 = anim=18960&&animtime=0
value =0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;RDKKALASERSPM
[Statedef 15209]
type    = s                      
movetype= a                      
physics = s
anim = 18962
sprpriority = 6
velset =0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 4000,100
volume = 64
channel = -1

[State 0, ParentVarAdd]
type = ParentVarAdd
trigger1 = time=0
v = 24
value = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr =SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 15209
time = -1

[State 0, BindToParent]
type = BindToParent
triggerall=1
trigger1 =1 
pos = 0,0



[State 251, HitDef]
type = HitDef
trigger1 = time
attr = S, SA
animtype  = Hard
damage    = 1,1
guardflag = MA
pausetime = 0,0
sparkno = s1229;S9107
sparkxy=0,-40
hitsound   =-1;s4000,2
guardsound = -1;s4000,2;S5546,0
guard.sparkno = s1229;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 0
envshake.freq = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0
p1sprpriority=6



[State 0, LaserGun];LaserGun
type = Helper
triggerall=numhelper(3001)<ifelse((floor(abs(frontedgedist)/16))<15,floor(abs(frontedgedist)/16),15);15;*(backedgedist)/frontedgedist;*frontedgedist/backedgedist);backedgedist/frontedgedist);&&parent,!movecontact
trigger1 = anim=18962&&animelem=4
trigger2 = (anim=[18969,18972])&&time
helpertype = normal ;player
name = "LASER"
ID = 3001;default helper projectile id
stateno = 15210
pos =0,0
facing = 1
keyctrl = 1
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=18962&&animtime=0
trigger2 = anim=18972&&animtime=0
value = 18969

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=18969&&animtime=0
value = 18970

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=18970&&animtime=0
value = 18971

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=18971&&animtime=0
value = 18972

[State 0, PlaySnd]
type = PlaySnd;
trigger1 = (anim=[18969,18972]);_&&animtime=0
trigger1 = time>50
value = s4000,1
volume = 256
channel = 5

[State 1105]
type = destroyself
trigger1 = (anim=[18969,18972]);_&&animtime=0
trigger1 = time>50
trigger2 = root,var(10)<100
trigger3 = root,stateno!=15208
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;RDKKLASER
[Statedef 15210]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18964;ifelse(((root,anim=11203)||(root,anim=8604)),1202,ifelse(((root,anim=11006)||(root,anim=11007)),1203,1203))
sprpriority = 5
velset =root,vel x,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 4000,96
volume = 64
channel = 0

[State 0, VarAdd]
type = parentvarset
trigger1 = 1
v =51
value = 1;var(51)



[State 0, BindToRoot]
type = BindToRoot
trigger1 = time=0
time = 1
pos = -16+(16)*(numhelper(3001)),0


[State 0, LASER1]
type = ChangeAnim
trigger1 = parent,anim=18969
value = 18965

[State 0, LASER1]
type = ChangeAnim
trigger1 = parent,anim=18970
value = 18966

[State 0, LASER1]
type = ChangeAnim
trigger1 = parent,anim=18971
value = 18967

[State 0, LASER1]
type = ChangeAnim
trigger1 = parent,anim=18972
value = 18968

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr =SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 15210
time = -1


[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1



[State 251, HitDef]
type = HitDef
trigger1 = time%2=0;time*tickspersecond
attr = S, HA
animtype  = Hard
damage    = 1,1
guardflag = MA
pausetime = 0,0
sparkno = s1229;S9107
sparkxy=0,-40
hitsound   =-1;s4000,5
guardsound = -1;s4000,6;S5546,0
guard.sparkno =s1229;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0
getpower=5


[State 0, PosSet]
type = PosSet
trigger1 =root,anim=18960
trigger2 =numhelper(13250)=0
y = -40


[State 0, Trans]
type = Trans
trigger1 =root,anim=18960
trigger2 =numhelper(13250)=0
trans = addalpha ;none, add, addalpha, add1, sub
alpha = 0,256


[State 0, DestroySelf]
type = changestate
trigger1 =root,anim=18960
trigger2 =numhelper(13250)=0
trigger3 = root,var(10)<100
trigger4 = root,stateno!=15208
value=15197
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;DICOKKA-TURN
[Statedef 15211]
type    = S
movetype= I
physics = N
ctrl = 0
sprpriority = 5
anim=18948
velset=0,0

[State 0, Turn]
type = Turn
trigger1 = animtime=0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime=0
value =0
ctrl = 1





