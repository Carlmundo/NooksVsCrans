;------------------------------------------------------------------------------------------------
;================================================================================================
;+++++++++++++++++++++++++++++++++++/-----------------------\++++++++++++++++++++++++++++++++++++
;-----------------------------------|      -=+Randy Savage+=-      |------------------------------------
;===================================|    Golpes Especiais   |====================================
;+++++++++++++++++++++++++++++++++++\-----------------------/++++++++++++++++++++++++++++++++++++
;---------------------------------------------------By: Wrestling Revolution Mugen------------------
;================================================================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;------------------------------------------------------------------------------------------------
;================================>Arremesso de Rede - Ataque em Pé<==============================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Arremesso de Rede - Fraco
;------------------------------------------------------------------------------------------------
[Statedef 700]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
velset = 0,0
anim = 700
sprpriority = 0

[State 700, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8888,6

[State 700, Dust]
type = Helper
trigger1 = AnimElem = 2
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 15,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 700,1]
type = Helper
trigger1 = animelem = 3
name = "Rede"
pos = 40, -70
postype = p1
helpertype = normal
ownpal = 1
id = 701
stateno = 701

[State 700,2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------
;Rede - Fraco
;-----------------------------------------------
[Statedef 701]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
anim = 701
sprpriority = 63

[State 701,1]
type = Velset
trigger1 = time >= 0
x = 2

[State 701,2]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
attr = S, NA
animtype  = Hard
damage    = 1, 0
getpower = 10,5
givepower = 5,2
hitflag = MAF
guardflag = MAF
pausetime = 0, 0
sparkno = -1
sparkxy = -20,-55
guard.sparkno = -1
hitsound = S8000,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0
air.hittime = 0  
air.type = Low
air.fall = 0
kill = 0
p2stateno = 703
p1stateno = 702
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 701,3]
type = DestroySelf
trigger1 = time = 100
trigger2 = moveguarded

;------------------------------------------------------------------------------------------------
;Arremesso de Rede - Medio
;------------------------------------------------------------------------------------------------
[Statedef 725]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
velset = 0,0
anim = 700
sprpriority = 0

[State 725, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8888,6

[State 725, Dust]
type = Helper
trigger1 = AnimElem = 2
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 15,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 725,1]
type = Helper
trigger1 = animelem = 3
name = "Rede"
pos = 40, -70
postype = p1
helpertype = normal
ownpal = 1
id = 726
stateno = 726

[State 725,2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------
;Rede - Médio
;-----------------------------------------------
[Statedef 726]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
anim = 701
sprpriority = 63

[State 726,1]
type = Velset
trigger1 = time >= 0
x = 4

[State 726,2]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
attr = S, NA
animtype  = Hard
damage    = 2, 0
getpower = 15,5
givepower = 10,2
hitflag = MAF
guardflag = MAF
pausetime = 0, 0
sparkno = -1
sparkxy = -20,-55
guard.sparkno = -1
hitsound = S8000,1
guardsound = S8500,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0
air.hittime = 0  
air.type = Low
air.fall = 0
kill = 0
p2stateno = 703
p1stateno = 702
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 726,3]
type = DestroySelf
trigger1 = time = 100
trigger2 = moveguarded

;------------------------------------------------------------------------------------------------
;Arremesso de Rede - Forte
;------------------------------------------------------------------------------------------------
[Statedef 750]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
velset = 0,0
anim = 700
sprpriority = 0

[State 750, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8888,6

[State 750, Dust]
type = Helper
trigger1 = AnimElem = 2
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 15,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 750,1]
type = Helper
trigger1 = animelem = 3
name = "Rede"
pos = 40, -70
postype = p1
helpertype = normal
ownpal = 1
id = 751
stateno = 751

[State 750,2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------
;Rede - Forte
;-----------------------------------------------
[Statedef 751]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
anim = 701
sprpriority = 63

[State 751,1]
type = Velset
trigger1 = time >= 0
x = 6

[State 751,2]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
attr = S, NA
animtype  = Hard
damage    = 3, 0
getpower = 20,5
givepower = 15,2
hitflag = MAF
guardflag = MAF
pausetime = 0, 0
sparkno = -1
sparkxy = -20,-55
guard.sparkno = s5402
hitsound = S8000,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0
air.hittime = 0  
air.type = Low
air.fall = 0
kill = 0
p2stateno = 703
p1stateno = 702
envshake.time = 5
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 751,3]
type = DestroySelf
trigger1 = time = 100
trigger2 = moveguarded

;------------------------------------------------------------------------------------------------
;Rede no p2 - Fraco, Médio e Forte
;------------------------------------------------------------------------------------------------
[Statedef 702]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
velset = 0,0
anim = 704
sprpriority = 0

[State 702,1]
type = Explod
trigger1 = time = 0
anim = 702
postype = p2
pos = 15,-53
ownpal = 1
bindtime = -1
removetime = 200
id = 701
sprpriority = 4364
facing = -1

[State 702,3]
type = RemoveExplod
triggerall = time > 3
trigger1 = p2movetype = H
id = 701

[State 702,4]
type = DestroySelf
triggerall = time > 0
trigger1 = p2movetype = H
trigger2 = time = 200

;------------------------------------------------------------------------------------------------
;Reação do P2 - Fraco, Médio e Forte
;------------------------------------------------------------------------------------------------
[Statedef 703]
type    = A
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 5000
sprpriority = 0

[State 703,1]
type = ChangeAnim2
trigger1 = time = 0
value = 703

[State 703,3]
type = PlaySnd
trigger1 = time = 0
value = 11,0

[State 703,6]
type = Selfstate
trigger1 = time = 200
value = ifelse(pos Y<0,5040,0)
ctrl = ifelse(pos Y<0,0,1)

;------------------------------------------------------------------------------------------------
;====================================>Tiger Kick - Ataque em Pé<=================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Tiger Kick - Fraco
;------------------------------------------------------------------------------------------------
[Statedef 800, Tiger Kick]
type = S
movetype = A
physics = S
juggle = 1
poweradd = 100
ctrl = 0
anim = 800
velset = 0,0,0
sprpriority = 2

[State 800, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 18
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0
afterimagetime = 9

[State 800, Vel]
type = velset
trigger1 = animelem = 2
x = 1

[State 800, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8888,6

[State 800, Explod]
type = Explod
trigger1 = animelem = 3
sprpriority = 4
anim = 803
pos = 75,50
vel = 1,-4
sprpriority = 6
removetime = 16
postype = p1
ownpal = 1
bindtime = -1

[State 800, Dust]
type = Helper
trigger1 = AnimElem = 2
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 55,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 800, Hit]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype = Med
getpower = 100
givepower = 80
damage = 60,10
guardflag = MA
hitflag = MA
pausetime = 11,12
sparkno = s5412
guard.sparkno = s5402
sparkxy = 0,-37;-10,-80
hitsound = S8000,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -5
guard.velocity = -3
air.velocity = -5,-5
airguard.velocity = -5,-5
fall = 1
fall.recover = 0
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 61,9,255 
Palfx.mul = 256,256,256
Palfx.sinadd = -112,-122,-112,10
Palfx.invertall = 1

[State 800, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 801

;-----------------------------------------------
;Tiger Kick Fraco - No ar
;-----------------------------------------------
[Statedef 801, Tiger Kick no Ar]
type = A
movetype = A
physics = A
juggle = 0
anim = 801
sprpriority = 2
ctrl = 0

[State 801, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 18
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0
afterimagetime = 6

[State 801, Explod]
type = removeExplod
trigger1 = 1
Id = 803

[State 801, Explod]
type = Explod
trigger1 = animelem = 2
sprpriority = 4
anim = 804
pos = 75,50
id = 804
sprpriority = 6
removetime = 16
postype = p1
ownpal  = 1
bindtime = -1

[State 801, Hit]
type = HitDef
trigger1 = AnimElem = 1 ||(AnimElem = 2 && MoveContact = 0 )||(AnimElem = 3 && MoveContact = 0 )
attr = A, SA
animtype = Med
getpower = 100
givepower = 80
damage = 60,10
pausetime = 11,12
guardflag = MA
hitflag = MAF
sparkno = s5412
guard.sparkno = s5402
sparkxy = 0,-37;-10,-80
hitsound = S8000,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -5
guard.velocity = -3
air.velocity = -5,-5
airguard.velocity = -5,-5
fall = 1
fall.recover = 0
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 61,9,255 
Palfx.mul = 256,256,256
Palfx.sinadd = -112,-122,-112,10
Palfx.invertall = 1

[State 801, Vel]
type = Velset
trigger1 = time = 0
y = -7
x = 4

[State 801, Vel]
type = VelAdd
trigger1 = time >= 0
trigger1 = vel x >= 0.3
x = -0.2

[State 801, Vel]
type = VelSet
trigger1 = vel x = 0.3
x = 0

[State 801, CS]
type = ChangeState
trigger1 = Time = 18
value = 852

;------------------------------------------------------------------------------------------------
;Tiger Kick - Médio
;------------------------------------------------------------------------------------------------

[Statedef 825, Tiger Kick]
type = S
movetype = A
physics = S
juggle = 1
poweradd = 100
ctrl = 0
anim = 800
velset = 0,0,0
sprpriority = 2

[State 825, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 27
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0
afterimagetime = 9

[State 825, Vel]
type = velset
trigger1 = animelem = 3
x = 2

[State 825, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8888,6

[State 825, Explod]
type = Explod
trigger1 = animelem = 3
sprpriority = 4
anim = 803
pos = 75,50
vel = 1,-4
sprpriority = 6
removetime = 16
postype = p1
ownpal = 1
bindtime = -1

[State 825, Dust]
type = Helper
trigger1 = AnimElem = 2
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 55,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 825, Hit]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype = Med
getpower = 100
givepower = 80
damage = 80,20
pausetime = 11,12
guardflag = MA
hitflag = MA
sparkno = s5412
guard.sparkno = s5402
sparkxy = 0,-37;-10,-80
hitsound = S8000,1
guardsound = S8500,0
ground.type = High
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -5
guard.velocity = -3
air.velocity = -5,-5
airguard.velocity = -5,-5
fall = 1
fall.recover = 0
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 61,9,255 
Palfx.mul = 256,256,256
Palfx.sinadd = -112,-122,-112,10
Palfx.invertall = 1

[State 825, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 826

;-----------------------------------------------
;Tiger Kick Médio - No ar
;-----------------------------------------------
[Statedef 826, Tiger Kick no Ar]
type = A
movetype = A
physics = A
juggle = 0
anim = 801
ctrl = 0
sprpriority = 2

[State 826, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 27
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0
afterimagetime = 6

[State 826, Explod]
type = removeExplod
trigger1 = 1
Id = 803

[State 826, Explod]
type = Explod
trigger1 = animelem = 2
sprpriority = 4
anim = 804
pos = 75,50
id = 804
sprpriority = 6
removetime = 16
postype = p1
ownpal  = 1
bindtime = -1

[State 826, Hit]
type = HitDef
trigger1 = AnimElem = 1 ||(AnimElem = 2 && MoveContact = 0 )||(AnimElem = 3 && MoveContact = 0 )
attr = A, SA
animtype = Med
getpower = 100
givepower = 80
damage = 80,20
pausetime = 11,12
guardflag = MA
hitflag = MAF
sparkno = s5412
guard.sparkno = s5402
sparkxy = 0,-37;-10,-80
hitsound = S8000,1
guardsound = S8500,0
ground.type = High
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -5
guard.velocity = -3
air.velocity = -5,-6
airguard.velocity = -5,-6
fall = 1
fall.recover = 0
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 61,9,255 
Palfx.mul = 256,256,256
Palfx.sinadd = -112,-122,-112,10
Palfx.invertall = 1

[State 826, Vel]
type = Velset
trigger1 = time = 0
y = -8
x = 5

[State 826, Vel]
type = VelAdd
trigger1 = time >= 0
trigger1 = vel x >= 0.3
x = -0.2

[State 826, Vel]
type = VelSet
trigger1 = vel x = 0.3
x = 0

[State 826, CS]
type = ChangeState
trigger1 = Time = 18
value = 852

;------------------------------------------------------------------------------------------------
;Tiger Kick - Forte
;------------------------------------------------------------------------------------------------

[Statedef 850, Tiger Kick]
type = S
movetype = A
physics = S
juggle = 1
poweradd = 100
ctrl = 0
anim = 800
velset = 0,0,0
sprpriority = 2

[State 850, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 36
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0
afterimagetime = 9

[State 850, Vel]
type = velset
trigger1 = animelem = 3
x = 3

[State 850, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8888,6

[State 850, Explod]
type = Explod
trigger1 = animelem = 3
sprpriority = 4
anim = 803
pos = 75,50
vel = 1,-4
sprpriority = 6
removetime = 16
postype = p1
ownpal = 1
bindtime = -1

[State 850, Dust]
type = Helper
trigger1 = AnimElem = 2
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 55,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 850, Hit]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype = Med
getpower = 120
givepower = 100
damage = 100,30
guardflag = MA
hitflag = MA
pausetime = 11,12
sparkno = s5412
guard.sparkno = s5402
sparkxy = 0,-37;-10,-80
hitsound = S8000,1
guardsound = S8500,0
ground.type = High
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -5
guard.velocity = -3
air.velocity = -5,-5
airguard.velocity = -5,-5
fall = 1
fall.recover = 0
envshake.time = 5
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 61,9,255 
Palfx.mul = 256,256,256
Palfx.sinadd = -112,-122,-112,10
Palfx.invertall = 1

[State 850, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 851

;-----------------------------------------------
;Tiger Kick Forte - No ar
;-----------------------------------------------
[Statedef 851, Tiger Kick no Ar]
type = A
movetype = A
physics = A
juggle = 0
anim = 801
ctrl = 0
sprpriority = 2

[State 851, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 36
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0
afterimagetime = 6

[State 851, Explod]
type = removeExplod
trigger1 = 1
Id = 803

[State 851, Explod]
type = Explod
trigger1 = animelem = 2
sprpriority = 4
anim = 804
pos = 75,50
id = 804
sprpriority = 6
removetime = 16
postype = p1
ownpal  = 1
bindtime = -1

[State 851, Hit]
type = HitDef
trigger1 = AnimElem = 1 ||(AnimElem = 2 && MoveContact = 0 )||(AnimElem = 3 && MoveContact = 0 )
attr = A, SA
animtype = Med
getpower = 120
givepower = 100
damage = 100,30
pausetime = 11,12
guardflag = MA
hitflag = MAF
sparkno = s5412
guard.sparkno = s5402
sparkxy = 0,-37;-10,-80
hitsound = S8000,1
guardsound = S8500,0
ground.type = High
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -5
guard.velocity = -3
air.velocity = -5,-7
airguard.velocity = -5,-7
fall = 1
fall.recover = 0
envshake.time = 5
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 61,9,255 
Palfx.mul = 256,256,256
Palfx.sinadd = -112,-122,-112,10
Palfx.invertall = 1

[State 851, Vel]
type = Velset
trigger1 = time = 0
y = -9
x = 6

[State 851, Vel]
type = VelAdd
trigger1 = time >= 0
trigger1 = vel x >= 0.3
x = -0.2

[State 851, Vel]
type = VelSet
trigger1 = vel x = 0.3
x = 0

[State 851, CS]
type = ChangeState
trigger1 = Time = 18
value = 852

;------------------------------------------------------------------------------------------------
;Tiger Kick Fraco, Médio e Forte - Aterrissando 
;------------------------------------------------------------------------------------------------
[Statedef 852, Tiger Kick Aterrissando]
type = A
movetype = A
physics = A
anim = 802
ctrl = 0
sprpriority = 2

[State 852, Pos]
type = PosSet
trigger1 = animtime = 0
y  = 0

[State 852, Vel]
type = Velset
trigger1 = AnimElem = 1
x = 0.5

[State 852, CS]
type = ChangeState
trigger1 = animtime = 0
value = 50

;------------------------------------------------------------------------------------------------
;===========================>Arremesso de Granada Aéreo - Ataque Pulando<========================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Arremesso de Granada Aéreo Fraco 
;------------------------------------------------------------------------------------------------
[StateDef 1000]
type    = A
movetype= A
physics = N
juggle  = 1
poweradd = 100
ctrl = 0
anim = 1000
sprpriority = 2

[State 1000, VelMul]
type = VelMul
trigger1 = time = 0
x = .15
y = .15

[State 1000, VelAdd]
type = VelAdd
trigger1 = time = 0
trigger1 = Vel Y = [-.1,.1]
y = ifelse(Vel Y <= 0, .1, -.1)

[State 1000, VelSet]
type = VelSet
trigger1 = Pos Y >= 4
y = 0

[State 1000, Sound]
type = PlaySnd
trigger1 = Time = 2
value = 8888,6

[State 1000, Granada]
type = Helper
trigger1 = AnimElem = 3
helpertype = Normal
ID = 1001
name = "Granada"
postype = p1
pos = 70,-40
stateno = 1001
ownpal = 1
bindtime = 0
keyctrl = 0

[State 1000, CS]
type = ChangeState
trigger1 = Animtime = 0
ctrl = 0
value = 652

;-----------------------------------------------
;Arremesso de Granada Aéreo Fraco - Projectil
;-----------------------------------------------
[Statedef 1001]
type = A
movetype = A
poweradd = 0
physics = N
juggle = 0
ctrl = 0
anim = 1001
sprpriority = 5

[State 1001, VelSet]
type = VelSet
trigger1 = time = 0
X = 3
Y = 3

[State 1001, NotHitBy]
type = NotHitBy
Trigger1 = 1
Value = SCA, AT, NA

[State 1001, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1003
attr = SCA, SA ; Golpe especial
slot = 1
time = -1

[State 1001, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1003
attr = SCA, HA ; Golpe hyper
slot = 2
time = -1

[State 1001, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1003
attr = SCA, NP ; Projétil normal
slot = 3
time = -1

[State 1001, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1003
attr = SCA, SP ; Projétil especial
slot = 4
time = -1

[State 1001, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1003
attr = SCA, HP ; Projétil hyper
slot = 5
time = -1

[State 1001, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,SP
animtype = light

[State 1001, CS]
type = ChangeState
trigger1 = time = 8 || movecontact || BackEdgeDist < -70 || FrontEdgeDist < -70 || Pos Y > -35
ctrl = 1
value = 1003

;-----------------------------------------------
;Arremesso de Granada Aéreo Fraco - Explosão
;-----------------------------------------------
[Statedef 1003]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd = 0
anim = 1003
ctrl = 0
sprpriority = 5

[State 1003, Sound]
type = PlaySnd
trigger1 =  animelem = 1
value = 5408,0

[State 1003, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,SP
animtype = Heavy
getpower = 100
givepower = 80
damage = 60,10
pausetime = 3,3
guardflag = MA
sparkxy = 0,0
sparkno = s704
guard.sparkno = s704
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1,-1
air.velocity = -5,-3
air.animtype = Back
air.juggle = 5
air.fall = 1
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
Palfx.time = ifelse(P2StateType = A , 10 ,20)
Palfx.add = 210,10,-200
Palfx.mul = 256,256,256
Palfx.sinadd = -112,-122,-112,10
Palfx.invertall = 1

[State 1003, PosFreeze]
type = PosFreeze
trigger1 = time
time = -1

[State 1003, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------------------------------
;Arremesso de Granada Aéreo Médio
;------------------------------------------------------------------------------------------------
[StateDef 1025]
type    = A
movetype= A
physics = N
juggle  = 1
poweradd = 100
ctrl = 0
anim = 1000
sprpriority = 2

[State 1025, VelMul]
type = VelMul
trigger1 = time = 0
x = .15
y = .15

[State 1025, VelAdd]
type = VelAdd
trigger1 = time = 0
trigger1 = Vel Y = [-.1,.1]
y = ifelse(Vel Y <= 0, .1, -.1)

[State 1025, VelSet]
type = VelSet
trigger1 = Pos Y >= 4
y = 0

[State 1025, Sound]
type = PlaySnd
trigger1 = Time = 2
value = 8888,6

[State 1025, Granada]
type = Helper
trigger1 = AnimElem = 3
helpertype = Normal
ID = 1026
name = "Granada"
postype = p1
pos = 70,-40
stateno = 1026
ownpal = 1
bindtime = 0
keyctrl = 0

[State 1025, CS]
type = ChangeState
trigger1 = Animtime = 0
ctrl = 0
value = 652

;-----------------------------------------------
;Arremesso de Granada Aéreo Médio - Projectil
;-----------------------------------------------
[Statedef 1026]
type = A
movetype = A
poweradd = 0
physics = N
juggle = 0
ctrl = 0
anim = 1001
sprpriority = 5

[State 1026, VelSet]
type = VelSet
trigger1 = time = 0
X = 5
Y = 5

[State 1026, NotHitBy]
type = NotHitBy
Trigger1 = 1
Value = SCA, AT, NA

[State 1026, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1028
attr = SCA, SA ; Golpe especial
slot = 1
time = -1

[State 1026, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1028
attr = SCA, HA ; Golpe hyper
slot = 2
time = -1

[State 1026, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1028
attr = SCA, NP ; Projétil normal
slot = 3
time = -1

[State 1026, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1028
attr = SCA, SP ; Projétil especial
slot = 4
time = -1

[State 1026, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1027
attr = SCA, HP ; Projétil hyper
slot = 5
time = -1

[State 1026, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,SP
animtype = light

[State 1026, CS]
type = ChangeState
trigger1 = time = 15 || movecontact || BackEdgeDist < -70 || FrontEdgeDist < -70 || Pos Y > -35
ctrl = 1
value = 1028

;-----------------------------------------------
;Arremesso de Granada Aéreo Médio - Explosão
;-----------------------------------------------
[Statedef 1028]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd = 0
anim = 1003
ctrl = 0
sprpriority = 5

[State 1028, Sound]
type = PlaySnd
trigger1 =  animelem = 1
value = 5408,0

[State 1028, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,SP
animtype = Heavy
getpower = 100
givepower = 80
damage = 80,20
pausetime = 4,4
guardflag = MA
sparkxy = 0,0
sparkno = s704
guard.sparkno = s704
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1,-1
air.velocity = -5,-3
air.animtype = Back
air.juggle = 5
air.fall = 1
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
Palfx.time = ifelse(P2StateType = A , 10 ,20)
Palfx.add = 210,10,-200
Palfx.mul = 256,256,256
Palfx.sinadd = -112,-122,-112,10
Palfx.invertall = 1

[State 1028, PosFreeze]
type = PosFreeze
trigger1 = time
time = -1

[State 1028, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------------------------------
;Arremesso de Granada Aéreo Forte
;------------------------------------------------------------------------------------------------
[StateDef 1050]
type    = A
movetype= A
physics = N
juggle  = 1
poweradd = 100
ctrl = 0
anim = 1000
sprpriority = 2

[State 1050, VelMul]
type = VelMul
trigger1 = time = 0
x = .15
y = .15

[State 1050, VelAdd]
type = VelAdd
trigger1 = time = 0
trigger1 = Vel Y = [-.1,.1]
y = ifelse(Vel Y <= 0, .1, -.1)

[State 1050, VelSet]
type = VelSet
trigger1 = Pos Y >= 4
y = 0

[State 1050, Sound]
type = PlaySnd
trigger1 = Time = 2
value = 8888,6

[State 1050, Granada]
type = Helper
trigger1 = AnimElem = 3
helpertype = Normal
ID = 1051
name = "Granada"
postype = p1
pos = 70,-40
stateno = 1051
ownpal = 1
bindtime = 0
keyctrl = 0

[State 1050, CS]
type = ChangeState
trigger1 = Animtime = 0
ctrl = 0
value = 652

;-----------------------------------------------
;Arremesso de Granada Aéreo Forte - Projectil
;-----------------------------------------------
[Statedef 1051]
type = A
movetype = A
poweradd = 0
physics = N
juggle = 0
ctrl = 0
anim = 1001
sprpriority = 5

[State 1051, VelSet]
type = VelSet
trigger1 = time = 0
X = 7
Y = 7

[State 1051, NotHitBy]
type = NotHitBy
Trigger1 = 1
Value = SCA, AT, NA

[State 1051, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1053
attr = SCA, SA ; Golpe especial
slot = 1
time = -1

[State 1051, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1053
attr = SCA, HA ; Golpe hyper
slot = 2
time = -1

[State 1051, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1053
attr = SCA, NP ; Projétil normal
slot = 3
time = -1

[State 1051, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1053
attr = SCA, SP ; Projétil especial
slot = 4
time = -1

[State 1051, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1053
attr = SCA, HP ; Projétil hyper
slot = 5
time = -1

[State 1051, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,SP
animtype = light

[State 1051, CS]
type = ChangeState
trigger1 = time = 24 || movecontact || BackEdgeDist < -70 || FrontEdgeDist < -70 || Pos Y > -35
ctrl = 1
value = 1053

;-----------------------------------------------
;Arremesso de Granada Aéreo Forte - Explosão
;-----------------------------------------------
[Statedef 1053]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd = 0
anim = 1003
ctrl = 0
sprpriority = 5

[State 1053, Sound]
type = PlaySnd
trigger1 =  animelem = 1
value = 5408,0

[State 1053, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,SP
animtype = Heavy
getpower = 120
givepower = 100
damage = 100,30
pausetime = 5,5
guardflag = MA
sparkxy = 0,0
sparkno = s704
guard.sparkno = s704
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1,-1
air.velocity = -5,-3
air.animtype = Back
air.juggle = 5
air.fall = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
Palfx.time = ifelse(P2StateType = A , 10 ,20)
Palfx.add = 210,10,-200
Palfx.mul = 256,256,256
Palfx.sinadd = -112,-122,-112,10
Palfx.invertall = 1

[State 1053, PosFreeze]
type = PosFreeze
trigger1 = time
time = -1

[State 1053, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------------------------------
;===============================>Arremesso de Granada - Ataque em Pé<============================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Arremesso de Granada Fraco
;------------------------------------------------------------------------------------------------
[StateDef 1100]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 100
anim = 1100 

[State 1100, Sound]
type = PlaySnd
trigger1 = Time = 2
value = 8888,6

[State 1100, Dust]
type = Helper
trigger1 = AnimElem = 1
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 15,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 1100, Granada]
type = Helper
trigger1 = AnimElem = 2
helpertype = Normal
ID = 1101
name = "Granada"
postype = p1
pos = 70,-65
stateno = 1101
ownpal = 0
keyctrl = 0

[State 1100, CS]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;------------------------------------------------------------------------------------------------
;Arremesso de Granada Fraco - Granada
;------------------------------------------------------------------------------------------------
[Statedef 1101]
type = S
movetype = A
poweradd = 0
physics = N
juggle = 0
ctrl = 0
anim = 1001
sprpriority = 5

[State 1101, NotHitBy]
type = NotHitBy
Trigger1 = 1
Value = SCA, AT, NA

[State 1101, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1102
attr = SCA, SA ; Golpe especial
slot = 1
time = -1

[State 1101, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1102
attr = SCA, HA ; Golpe hyper
slot = 2
time = -1

[State 1101, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1102
attr = SCA, NP ; Projétil normal
slot = 3
time = -1

[State 1101, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1102
attr = SCA, SP ; Projétil especial
slot = 4
time = -1

[State 1101, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1102
attr = SCA, HP ; Projétil hyper
slot = 5
time = -1

[State 1101, Veladd]
type = VelAdd
trigger1 = 1
x = 1
y = -0.5;y = -1

[State 1101, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,SP
animtype = light

[State 1101, CS]
type = ChangeState
trigger1 = time = 9 || movecontact || frontedgedist = 10 || backedgedist = -10
ctrl = 1
value = 1102

;------------------------------------------------------------------------------------------------
;Arremesso de Granada Fraco - Explosão
;------------------------------------------------------------------------------------------------
[Statedef 1102]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd = 0
anim = 1003
ctrl = 0
sprpriority = 5

[State 1003, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,SP
animtype = Heavy
getpower = 100
givepower = 80
damage = 60,10
pausetime = 3,3
guardflag = MA
sparkxy = 0,0
sparkno = s704
guard.sparkno = s704
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1,-1
air.velocity = -5,-3
air.animtype = Back
air.juggle = 5
air.fall = 1
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
Palfx.time = ifelse(P2StateType = S , 10 ,20)
Palfx.add = 210,10,-200
Palfx.mul = 256,256,256
Palfx.sinadd = -112,-122,-112,10
Palfx.invertall = 1

[State 1102, Sound]
type = PlaySnd
trigger1 =  animelem = 1
value = 5408,0

[State 1102, PosFreeze]
type = PosFreeze
trigger1 = time
time = -1

[State 1102, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------------------------------
;Arremesso de Granada Médio
;------------------------------------------------------------------------------------------------
[StateDef 1125]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 100
anim = 1100 

[State 1125, Sound]
type = PlaySnd
trigger1 = Time = 2
value = 8888,6

[State 1125, Dust]
type = Helper
trigger1 = AnimElem = 1
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 15,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 1125, Granada]
type = Helper
trigger1 = AnimElem = 2
helpertype = Normal
ID = 1126
name = "Granada"
postype = p1
pos = 70,-65
stateno = 1126
ownpal = 0
keyctrl = 0

[State 1125, CS]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;------------------------------------------------------------------------------------------------
;Arremesso de Granada Médio - Granada
;------------------------------------------------------------------------------------------------
[Statedef 1126]
type = S
movetype = A
poweradd = 0
physics = N
juggle = 0
ctrl = 0
anim = 1001
sprpriority = 5

[State 1126, NotHitBy]
type = NotHitBy
Trigger1 = 1
Value = SCA, AT, NA

[State 1126, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1127
attr = SCA, SA ; Golpe especial
slot = 1
time = -1

[State 1126, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1127
attr = SCA, HA ; Golpe hyper
slot = 2
time = -1

[State 1126, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1128
attr = SCA, NP ; Projétil normal
slot = 3
time = -1

[State 1126, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1127
attr = SCA, SP ; Projétil especial
slot = 4
time = -1

[State 1126, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1127
attr = SCA, HP ; Projétil hyper
slot = 5
time = -1

[State 1126, Veladd]
type = VelAdd
trigger1 = 1
x = 1
y = -0.3

[State 1126, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,SP
animtype = light

[State 1126, CS]
type = ChangeState
trigger1 = time = 16 || movecontact || frontedgedist = 10 || backedgedist = -10
ctrl = 1
value = 1127

;------------------------------------------------------------------------------------------------
;Arremesso de Granada Médio - Explosão
;------------------------------------------------------------------------------------------------
[Statedef 1127]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd = 0
anim = 1003
ctrl = 0
sprpriority = 5

[State 1028, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,SP
animtype = Heavy
getpower = 100
givepower = 80
damage = 80,20
pausetime = 4,4
guardflag = MA
sparkxy = 0,0
sparkno = s704
guard.sparkno = s704
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1,-1
air.velocity = -5,-3
air.animtype = Back
air.juggle = 5
air.fall = 1
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
Palfx.time = ifelse(P2StateType = A , 10 ,20)
Palfx.add = 210,10,-200
Palfx.mul = 256,256,256
Palfx.sinadd = -112,-122,-112,10
Palfx.invertall = 1

[State 1127, Sound]
type = PlaySnd
trigger1 =  animelem = 1
value = 5408,0

[State 1127, PosFreeze]
type = PosFreeze
trigger1 = time
time = -1

[State 1127, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------------------------------
;Arremesso de Granada Forte
;------------------------------------------------------------------------------------------------
[StateDef 1150]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 100
anim = 1100 

[State 1150, Sound]
type = PlaySnd
trigger1 = Time = 2
value = 8888,6

[State 1150, Dust]
type = Helper
trigger1 = AnimElem = 1
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 15,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 1150, Granada]
type = Helper
trigger1 = AnimElem = 2
helpertype = Normal
ID = 1151
name = "Granada"
postype = p1
pos = 70,-65
stateno = 1151
ownpal = 0
keyctrl = 0

[State 1150, CS]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;------------------------------------------------------------------------------------------------
;Arremesso de Granada Forte - Granada
;------------------------------------------------------------------------------------------------
[Statedef 1151]
type = S
movetype = A
poweradd = 0
physics = N
juggle = 0
ctrl = 0
anim = 1001
sprpriority = 5

[State 1151, NotHitBy]
type = NotHitBy
Trigger1 = 1
Value = SCA, AT, NA

[State 1151, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1152
attr = SCA, SA ; Golpe especial
slot = 1
time = -1

[State 1151, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1152
attr = SCA, HA ; Golpe hyper
slot = 2
time = -1

[State 1151, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1152
attr = SCA, NP ; Projétil normal
slot = 3
time = -1

[State 1151, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1152
attr = SCA, SP ; Projétil especial
slot = 4
time = -1

[State 1151, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1152
attr = SCA, HP ; Projétil hyper
slot = 5
time = -1

[State 1151, Veladd]
type = VelAdd
trigger1 = 1
x = 1
y = -0.2

[State 1151, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,SP
animtype = light

[State 1151, CS]
type = ChangeState
trigger1 = time = 24 || movecontact || frontedgedist = 10 || backedgedist = -10
ctrl = 1
value = 1152

;------------------------------------------------------------------------------------------------
;Arremesso de Granada Forte - Explosão
;------------------------------------------------------------------------------------------------
[Statedef 1152]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd = 0
anim = 1003
ctrl = 0
sprpriority = 5

[State 1053, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,SP
animtype = Heavy
getpower = 120
givepower = 100
damage = 100,30
pausetime = 5,5
guardflag = MA
sparkxy = 0,0
sparkno = s704
guard.sparkno = s704
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1,-1
air.velocity = -5,-3
air.animtype = Back
air.juggle = 5
air.fall = 1
envshake.time = 5
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
Palfx.time = ifelse(P2StateType = A , 10 ,20)
Palfx.add = 210,10,-200
Palfx.mul = 256,256,256
Palfx.sinadd = -112,-122,-112,10
Palfx.invertall = 1

[State 1152, Sound]
type = PlaySnd
trigger1 =  animelem = 1
value = 5408,0

[State 1152, PosFreeze]
type = PosFreeze
trigger1 = time
time = -1

[State 1152, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------------------------------
;=======================================>Pilão - Ataque em Pé<===================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Pilão - Início
;------------------------------------------------------------------------------------------------
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1200;850
sprpriority = 2

[State 1200, Dust]
type = Helper
trigger1 = AnimElem = 2
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 10,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 1200, VarSet]
type = VarSet
triggerall = Time <= 1
trigger1 = command = "PilaoNormalFraco"
v = 37
value = 8

[State 1200, VarSet]
type = VarSet
triggerall = Time <= 1
trigger1 = command = "PilaoNormalMedio"
v = 37
value = 10

[State 1200, VarSet]
type = VarSet
triggerall = Time <= 1
trigger1 = command = "PilaoNormalForte"
v = 37
value = 12

[State 1200, Width]
type = Width
trigger1 = 1
value = 10,0

[State 1200, HitDef]
type = HitDef
Trigger1 = Time = 0
attr = S, ST
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
ground.velocity = -5,-5
p2facing = 1
p1stateno = 1201
p2stateno = 1205
fall = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 8888,1
channel = 1

[State 1200, Poeira]
type = Explod
trigger1 = AnimElemTime(1) = 1
anim = 8400
ID = 8400
postype = P1
pos = 0,0
sprpriority = 3
ownpal = 1
supermovetime = 40

[State 1200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------
;Pilão - Executando
;------------------------------------------------------------------------------------------------
[Statedef 1201]
type    = A
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1201

[State 830, Explod]
type = Explod
trigger1 = time = 0
anim = 8396
ID = 8396
postype = P2
pos  =  -5,-83
sprpriority = 3
ignorehitpause = 1
ownpal = 1

[State 1201, PlaySnd]
type = PlaySnd
trigger1 = Anim = 1201
trigger1 = AnimElem = 1
value = 8600,0

[State 1201, PlaySnd]
type = PlaySnd
triggerall = Anim = 1201
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
value = 8400,2

[State 1201, Bind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40, 0

[State 1201, Bind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 25,0

[State 1201, Bind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 20, 0

[State 1201, Bind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 15, 0

[State 1201, Bind]
type = TargetBind
trigger1 = AnimElem = 5
pos = 0,0
time = 4

[State 1201, Bind]
type = TargetBind
trigger1 = AnimElem = 6
pos = 22,0
time = 4

[State 1201, Bind]
type = TargetBind
trigger1 = AnimElem = 7
pos = 26,0
time = 4

[State 1201, Bind]
type = TargetBind
trigger1 = AnimElem = 8
pos = 16,-6
time = 4

[State 1201, SprPriority]
type = SprPriority
triggerall = Anim = 1201
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
value = 2

[State 1201, SprPriority]
type = SprPriority
triggerall = Anim = 1201
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
value = -2

[State 1201, VelSet]
type = VelSet
trigger1 = Anim = 1201
trigger1 = AnimElem = 5
;x = -1
y = -var(37)

[State 1201, VelSet]
type = VelAdd
trigger1 = command = "holdback"
x = -.08

[State 1201, VelSet]
type = VelAdd
trigger1 = command = "holdfwd"
x = .08

[State 1201, VelSet]
type = VelAdd
trigger1 = Time >= 20
y = .5

[State 1201, ChangeState]
type = ChangeState
triggerall = Time >= 20
trigger1 = Vel Y > 0
trigger1 = Pos Y > 0
value = 1202

;------------------------------------------------------------------------------------------------
;Pilão - Caindo
;------------------------------------------------------------------------------------------------
[Statedef 1202]
type    = C
movetype= A
physics = C
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1202

[State 1202, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1202, SprPriority]
type = SprPriority
trigger1 = AnimElem = 1
value = 2

[State 1202, Bind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 30, 0

[State 1202, TargetState]
type = TargetState
trigger1 = AnimElem = 1
value = 1206

[State 1202, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = -100

[State 1202, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1202, PlayerPush]
type = PlayerPush
trigger1 = 1
Value = 0

[State 1202, PlaySnd]
type = PlaySnd
trigger1 = p2stateno = 1206 && time = 0
value = 8200,0

[State 3902, Explod]
type = Explod
trigger1 = p2stateno = 1206 && time = 0
anim = 8395
ID = 8395
postype = P2
pos  =  0,0
sprpriority = 2
ignorehitpause = 1
ownpal = 1

[State 1202, PosAdd]
type = PosAdd
trigger1 = Time >= 20
y = 10

[State 1202, CangeState]
type = ChangeState
trigger1 = Time >= 20
value = 1203

;------------------------------------------------------------------------------------------------
;Pilão - Pulo
;------------------------------------------------------------------------------------------------
[Statedef 1203]
type    = A
movetype= I
physics = N
juggle  = 0
velset = -12,-9
anim = 1203
ctrl = 0

[State 1203, VelSet]
type = VelAdd
trigger1 = 1
y = .4

[State 1203, ChangeState]
type = ChangeState
triggerall = Time >= 10
trigger1 = Vel Y > 0
trigger1 = Pos Y > 0
value = 52

;------------------------------------------------------------------------------------------------
;Pilão - Reação do P2
;------------------------------------------------------------------------------------------------
[Statedef 1205]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1205, Anim2]
type = ChangeAnim2
trigger1 = Anim != 1205
value = 1205

[State 1205, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 1205, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;------------------------------------------------------------------------------------------------
;Pilão - Caindo
;------------------------------------------------------------------------------------------------
[Statedef 1206]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 5110

[State 1206, Anim2]
type = ChangeAnim2
trigger1 = Anim != 856
value = 1206

[State 1206, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 20
freq = 100
ampl = -5
phase = 10

[State 1206, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1206, PosAdd]
type = null ;PosAdd
trigger1 = Time = 20
y = 20

[State 1206, HitVelSet]
type = HitVelSet
trigger1 = Time = 20
x = 1
y = 1

[State 1206, 3]
type = VelAdd
trigger1 = Time > 20
y = .4

[State 1206, 4]
type = SelfState
trigger1 = Time > 30
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

[State 1206, SelfState]
type = null ;SelfState
trigger1 = Time = 20
value = 5050

;------------------------------------------------------------------------------------------------
;===============================>Metralhadora (M-16) - Ataque em Pé<=============================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Metralhadora (M-16) Fraca
;------------------------------------------------------------------------------------------------
[StateDef 1600]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 100
anim = 1600 

[State 1600, Sound]
type = PlaySnd
trigger1 = Time = 2
value = 8888,6

[State 1600, Dust]
type = Helper
trigger1 = AnimElem = 4
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 15,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 1600, Disparo]
type = Helper
trigger1 = AnimElem = 7 || AnimElem = 9 || AnimElem = 11 || AnimElem = 13
helpertype = Normal
ID = 1601
name = "Disparo"
postype = p1
pos = 71,-73
stateno = 1601
ownpal = 0
keyctrl = 0

[State 1600, CS]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;------------------------------------------------------------------------------------------------
;Metralhadora (M-16) Média
;------------------------------------------------------------------------------------------------
[StateDef 1625]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 100
anim = 1604 

[State 1625, Sound]
type = PlaySnd
trigger1 = Time = 2
value = 8888,6

[State 1625, Dust]
type = Helper
trigger1 = AnimElem = 4
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 15,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 1625, Disparo]
type = Helper
trigger1 = AnimElem = 7 || AnimElem = 9 || AnimElem = 11 || AnimElem = 13 || AnimElem = 15
helpertype = Normal
ID = 1601
name = "Disparo"
postype = p1
pos = 71,-73
stateno = 1601
ownpal = 0
keyctrl = 0

[State 1625, CS]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;------------------------------------------------------------------------------------------------
;Metralhadora (M-16) Forte
;------------------------------------------------------------------------------------------------
[StateDef 1650]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 100
anim = 1605 

[State 1650, Sound]
type = PlaySnd
trigger1 = Time = 2
value = 8888,6

[State 1650, Dust]
type = Helper
trigger1 = AnimElem = 4
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 15,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 1650, Disparo]
type = Helper
trigger1 = AnimElem = 7 || AnimElem = 9 || AnimElem = 11 || AnimElem = 13 || AnimElem = 15 || AnimElem = 17 
helpertype = Normal
ID = 1601
name = "Disparo"
postype = p1
pos = 71,-73
stateno = 1601
ownpal = 0
keyctrl = 0

[State 1650, CS]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;------------------------------------------------------------------------------------------------
;Metralhadora (M-16) Fraca, Média e Forte - Disparo
;------------------------------------------------------------------------------------------------
[Statedef 1601]
type = S
movetype = A
poweradd = 0
physics = N
juggle = 0
ctrl = 0
anim = 1601
sprpriority = 5

[State 1601, Sound]
type = PlaySnd
trigger1 = animelem = 1
value = 1601,0

[State 1601, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 18
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 1601, Sound]
type = PlaySnd
trigger1 =  animelem = 1
value = 1603,0

[State 1601, NotHitBy]
type = NotHitBy
Trigger1 = 1
Value = SCA, NA, SA, HA, NP, SP, HP

[State 1601, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,SP
animtype = Light
getpower = 100
givepower = 80
damage = 15,10
pausetime = 5,5
guardflag = MA
sparkxy = 0,0
sparkno = s1603
guard.sparkno = s1603
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1,-1
air.velocity = -5,-3
air.animtype = Back
air.juggle = 5
air.fall = 1
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 1601, CS]
type = ChangeState
trigger1 = Animtime = 0
ctrl = 1
value = 1602

;------------------------------------------------------------------------------------------------
;Metralhadora (M-16) Fraca, Média e Forte - Disparo Acabando
;------------------------------------------------------------------------------------------------
[Statedef 1602]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd = 0
anim = 704
ctrl = 0
sprpriority = 5

[State 1602, PosFreeze]
type = PosFreeze
trigger1 = time
time = -1

[State 1602, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------------------------------
;==================================>Punho de Ferro - Ataque em Pé<===============================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Punho de Ferro Fraco
;------------------------------------------------------------------------------------------------
[StateDef 3000]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 100
anim = 3000 

[State 3000, Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 8888,6

[State 3000, Dust]
type = Helper
trigger1 = AnimElem = 1
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 15,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 3000, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 18
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0
afterimagetime = 18

[State 3000, VelAdd]
type = VelAdd
trigger1 = AnimElem = 1
x = 4

[State 3000, HitDef]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 6 || AnimElem = 7 || AnimElem = 12
attr = S, SA
animtype = Light
getpower = 20
givepower = 15
damage = 15,10
guardflag = MA
pausetime = 15,15
sparkno = S5412
guard.sparkno = s5402
hitsound = S8000,2
guardsound = S8500,0
sparkxy = -12,-70
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1,-1
air.velocity = -5,-3
air.animtype = Low
air.juggle = 5
air.fall = 1
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 3000, CS]
type = ChangeState
trigger1 = Animtime = 0
ctrl = 1
value = 0

;------------------------------------------------------------------------------------------------
;Punho de Ferro Médio
;------------------------------------------------------------------------------------------------
[StateDef 3025]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 100
anim = 3001 

[State 3025, Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 8888,6

[State 3025, Dust]
type = Helper
trigger1 = AnimElem = 1
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 15,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 3025, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 18
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0
afterimagetime = 18

[State 3025, VelAdd]
type = VelAdd
trigger1 = AnimElem = 1
x = 4

[State 3025, HitDef]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 6 || AnimElem = 7 || AnimElem = 12 || AnimElem = 18 || AnimElem = 19
attr = S, SA
animtype = Light
getpower = 20
givepower = 15
damage = 15,10
guardflag = MA
pausetime = 15,15
sparkno = S5412
guard.sparkno = s5402
hitsound = S8000,2
guardsound = S8500,0
sparkxy = -12,-70
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1,-1
air.velocity = -5,-3
air.animtype = Low
air.juggle = 5
air.fall = 1
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 3025, CS]
type = ChangeState
trigger1 = Animtime = 0
ctrl = 1
value = 0

;------------------------------------------------------------------------------------------------
;Punho de Ferro Forte
;------------------------------------------------------------------------------------------------
[StateDef 3050]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 100
anim = 3002 

[State 3050, Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 8888,6

[State 3050, Dust]
type = Helper
trigger1 = AnimElem = 1
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 15,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 3050, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 18
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0
afterimagetime = 18

[State 3050, VelAdd]
type = VelAdd
trigger1 = AnimElem = 1
x = 4

[State 3050, HitDef]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 6 || AnimElem = 7 || AnimElem = 12 || AnimElem = 18 || AnimElem = 19 || AnimElem = 24 || AnimElem = 25
attr = S, SA
animtype = Light
getpower = 20
givepower = 15
damage = 15,10
guardflag = MA
pausetime = 15,15
sparkno = S5412
guard.sparkno = s5402
hitsound = S8000,2
guardsound = S8500,0
sparkxy = -12,-70
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1,-1
air.velocity = -5,-3
air.animtype = Low
air.juggle = 5
air.fall = 1
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 3050, CS]
type = ChangeState
trigger1 = Animtime = 0
ctrl = 1
value = 0

;------------------------------------------------------------------------------------------------
;=================================>Chutes Relampago - Ataque em Pé<==============================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Chutes Relampago Fraco
;------------------------------------------------------------------------------------------------
[StateDef 3100]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 100
anim = 3100 

[State 3100, Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 8888,6

[State 3100, Dust]
type = Helper
trigger1 = AnimElem = 1
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 15,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 3100, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 18
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0
afterimagetime = 18

[State 3100, VelAdd]
type = VelAdd
trigger1 = AnimElem = 1
x = 8

[State 3100, HitDef]
type = HitDef
trigger1 = AnimElem = 4 || AnimElem = 9 || AnimElem = 15
attr = S, SA
animtype = Light
getpower = 20
givepower = 15
damage = 15,10
guardflag = MA
pausetime = 15,15
sparkno = S5412
guard.sparkno = s5402
hitsound = S8000,2
guardsound = S8500,0
sparkxy = -12,-70
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1,-1
air.velocity = -5,-3
air.animtype = Low
air.juggle = 5
air.fall = 1
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 3100, CS]
type = ChangeState
trigger1 = Animtime = 0
ctrl = 1
value = 0

;------------------------------------------------------------------------------------------------
;Chutes Relampago Médio
;------------------------------------------------------------------------------------------------
[StateDef 3125]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 100
anim = 3101 

[State 3125, Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 8888,6

[State 3125, Dust]
type = Helper
trigger1 = AnimElem = 1
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 15,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 3125, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 18
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0
afterimagetime = 18

[State 3125, VelAdd]
type = VelAdd
trigger1 = AnimElem = 1
x = 8

[State 3125, VelAdd]
type = VelAdd
trigger1 = AnimElem = 13
x = 4

[State 3125, HitDef]
type = HitDef
trigger1 = AnimElem = 4 || AnimElem = 9 || AnimElem = 15 || AnimElem = 24
attr = S, SA
animtype = Light
getpower = 20
givepower = 15
damage = 15,10
guardflag = MA
pausetime = 15,15
sparkno = S5412
guard.sparkno = s5402
hitsound = S8000,2
guardsound = S8500,0
sparkxy = -12,-70
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1,-1
air.velocity = -5,-3
air.animtype = Low
air.juggle = 5
air.fall = 1
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 3125, CS]
type = ChangeState
trigger1 = Animtime = 0
ctrl = 1
value = 0

;------------------------------------------------------------------------------------------------
;Chutes Relampago Forte
;------------------------------------------------------------------------------------------------
[StateDef 3150]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 100
anim = 3102 

[State 3150, Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 8888,6

[State 3150, Dust]
type = Helper
trigger1 = AnimElem = 1
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 15,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 3050, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 18
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0
afterimagetime = 18

[State 3150, VelAdd]
type = VelAdd
trigger1 = AnimElem = 1
x = 8

[State 3150, VelAdd]
type = VelAdd
trigger1 = AnimElem = 26
x = 8

[State 3150, HitDef]
type = HitDef
trigger1 = AnimElem = 4 || AnimElem = 9 || AnimElem = 15 || AnimElem = 24 || AnimElem = 27 || AnimElem = 28
attr = S, SA
animtype = Light
getpower = 20
givepower = 15
damage = 15,10
guardflag = MA
pausetime = 15,15
sparkno = S5412
guard.sparkno = s5402
hitsound = S8000,2
guardsound = S8500,0
sparkxy = -12,-70
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1,-1
air.velocity = -5,-3
air.animtype = Low
air.juggle = 5
air.fall = 1
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 3150, CS]
type = ChangeState
trigger1 = Animtime = 0
ctrl = 1
value = 0
