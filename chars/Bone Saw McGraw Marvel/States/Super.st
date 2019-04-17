;------------------------------------------------------------------------------------------------
;================================================================================================
;+++++++++++++++++++++++++++++++++++/-----------------------\++++++++++++++++++++++++++++++++++++
;-----------------------------------|      -=+Randy Savage+=-      |------------------------------------
;===================================|     Golpes Supers     |====================================
;+++++++++++++++++++++++++++++++++++\-----------------------/++++++++++++++++++++++++++++++++++++
;---------------------------------------------------By: Wrestling Revolution Mugen_------------------
;================================================================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;------------------------------------------------------------------------------------------------
;===============================>Chuva de Granadas - Ataque Pulando<=============================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Chuva de Granadas
;------------------------------------------------------------------------------------------------

[Statedef 1800]
type    = A
movetype= A
physics = N
poweradd= 0
anim = 1800
ctrl = 0
sprpriority = 2

[State 1800, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 220
trans = add
TimeGap = 2
FrameGap = 2
length = 4
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

;[State 1800, assertspecial]
;type = assertspecial
;trigger1 = time = [0,40]
;flag = noBG
;flag2 = noFG
;ignorehitpause = 1

[State 1800, pos]
type = posfreeze
trigger1 = time = [0,43]

[State 1800, VelMul]
type = VelMul
trigger1 = Time = 0
x = 0.08
y = 0.08

[State 1800, VelSet]
type = VelSet
trigger1 = AnimElem = 5
trigger1 = Vel X = 0
x = 0
y = -0.15

[State 1800, VelSet]
type = VelSet
trigger1 = AnimElem = 5
trigger1 = Vel X > 0
x = 0.2
y = -0.15

[State 1800, VelSet]
type = VelSet
trigger1 = AnimElem = 5
trigger1 = Vel X < 0
x = -0.2
y = -0.15

[State 1800, VelSet]
type = VelSet
trigger1 = Pos Y >= 10
trigger1 = Vel Y > 0
y = 0

[State 1800, Fundo de Super]
type = BGPalFX
trigger1 = AnimElem = 1
time = 48
add = 256,256,256
mul = 512,512,512
sinadd = 512,512,512,1
invertall = 1
color = 256

[State 1800, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
Time = 48
postype = p1
pos = 15, -106
anim = S5413
sound = S5413,0
poweradd = -1000
movetime = 0

;[State 1800, Retrato]
;type = Explod
;trigger1 = AnimElemTime(1) = 0
;anim = 8101
;postype = Back
;pos = -150,2
;ownpal = 1
;sprpriority = -2
;supermovetime = 58
;removeongethit = 1
;bindtime = -1

[State 1800, VelSet 2]
type = VelSet
trigger1 = Pos Y >= 0
y = 0

[State 1800, Sound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
trigger5 = AnimElem = 19
trigger6 = AnimElem = 23
trigger7 = AnimElem = 27
trigger8 = AnimElem = 31
trigger9 = AnimElem = 35
trigger10 = AnimElem = 39
value = 8888,6

[State 1800, Granada 1]
type = Helper
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
trigger5 = AnimElem = 19
trigger6 = AnimElem = 23
trigger7 = AnimElem = 27
trigger8 = AnimElem = 31
trigger9 = AnimElem = 35
trigger10 = AnimElem = 39
helpertype = Normal
ID = 1801
name = "Granada"
postype = p1
pos = 45, -110 
stateno = 1801
ownpal = 1
bindtime = 0
keyctrl = 0

[State 1800, Granada 2]
type = Helper
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
trigger5 = AnimElem = 19
trigger6 = AnimElem = 23
trigger7 = AnimElem = 27
trigger8 = AnimElem = 31
trigger9 = AnimElem = 35
trigger10 = AnimElem = 39
helpertype = Normal
ID = 1801
name = "Granada"
postype = p1
pos = 30,-50 
stateno = 1801
ownpal = 1
bindtime = 0
keyctrl = 0

[State 1800, Granada 3]
type = Helper
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
trigger5 = AnimElem = 19
trigger6 = AnimElem = 23
trigger7 = AnimElem = 27
trigger8 = AnimElem = 31
trigger9 = AnimElem = 35
trigger10 = AnimElem = 39
helpertype = Normal
ID = 1801
name = "Granada"
postype = p1
pos = 0, -115
stateno = 1801
ownpal = 1
bindtime = 0
keyctrl = 0

[State 1800, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 652

;-----------------------------------------------
;Chuva de Granadas - Granada
;-----------------------------------------------
[Statedef 1801]
type = A
movetype = A
poweradd = 0
physics = N
juggle = 0
ctrl = 0
anim = 1801
sprpriority = 5

[State 1801, VelSet]
type = VelSet
trigger1 = time = 0
X = 7.5
Y = 6

[State 1801, NotHitBy]
type = NotHitBy
Trigger1 = 1
Value = SCA, NA, SA, NP, SP

[State 1801, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1802
attr = SCA, HA ; Golpe hyper
slot = 2
time = -1

[State 1801, HitOverride]
type = HitOverride
trigger1 = 1
stateno = 1802
attr = SCA, HP ; Projétil hyper
slot = 5
time = -1

[State 1801, Clarao]
type = Helper
Triggerall = Random <= 500
trigger1 = movecontact
helpertype = Normal
ID = 5412
name = "Clarao"
postype = p1
pos = 15,0
stateno = 5412
ownpal = 1
keyctrl = 0

[State 1801, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype = light
sparkno = S704
guard.sparkno = s704

[State 1801, CS]
type = ChangeState
trigger1 = time = 24 || movecontact || BackEdgeDist < -70 || FrontEdgeDist < -70 || Pos Y >= 0
ctrl = 1
value = 1802

;-----------------------------------------------
;Chuva de Granadas - Explosão da Granada
;-----------------------------------------------
[Statedef 1802]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd = 0
anim = 1802
ctrl = 0
sprpriority = 5

[State 1802, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 4
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 1802, Sound]
type = PlaySnd
trigger1 =  animelem = 1
value = 5408,0

[State 1802, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype = Heavy
getpower = 10
givepower = 10
damage = 10,8
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
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
Palfx.time = ifelse(P2StateType = A , 10 ,20)
Palfx.add = 210,10,-200
Palfx.mul = 256,256,256
Palfx.sinadd = -112,-122,-112,10
Palfx.invertall = 1

[State 1802, PosFreeze]
type = PosFreeze
trigger1 = time
time = -1

[State 1802, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------------------------------
;================================>Chutes Explosivos - Ataque em Pé<==============================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Chutes Explosivos - Correndo
;------------------------------------------------------------------------------------------------
[Statedef 1900]
type    = S
movetype= A
physics = S
anim = 1900
ctrl = 0
sprpriority = 1

[State 1900, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8888,6

[State 1900, Fundo de Super]
type = BGPalFX
trigger1 = AnimElem = 1
time = 48
add = 256,256,256
mul = 512,512,512
sinadd = 512,512,512,1
invertall = 1
color = 256

[State 1900, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
Time = 48
postype = p1
pos = 10, -80
anim = S5413
sound = S9999,6
poweradd = -1000
movetime = 0

[State 1900, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 50
trans = add
TimeGap = 2
FrameGap = 2
length = 35
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 1900, Dust]
type = Helper
trigger1 = AnimElem = 2
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 25,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 1900, Flash]
type = Explod
trigger1 = time > 4 && (time%4) = 1
ID = 5407
anim = 5407
postype = P1
pos = 10,-51
bindtime = 1
vel = -2.2
ownpal = 1
random = 18,48
removetime = -2
sprpriority = 2

[State 1900, Flash]
type = Explod
trigger1 = time > 4 && (time % 4) = 0
ID = 5407
anim = 5407
postype = p1
pos = 10,-49
bindtime = 1
vel = -2
ownpal = 1
random = 18,48
removetime = -2
sprpriority = 2

[State 1900, VelSet]
type = VelSet
triggerall = !MoveContact
trigger1 = Time >= 4
x = const(velocity.run.fwd.x)

[State 1900, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn

[State 1900, PlaySnd]
type = PlaySnd
trigger1 = (AnimElem = 5) || (AnimElem = 9)
value = 8100,0

[State 1905, Clarao]
type = Helper
trigger1 = movecontact
helpertype = Normal
ID = 5412
name = "Clarao"
postype = p1
pos = 15,0
stateno = 5412
ownpal = 1
keyctrl = 0

[State 1900, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
animtype = light
p1stateno = 1902
p2stateno = 1901
hitpause = 3
sparkno = s5408
hitsound = s5408,0
sparkxy = -12,-90

[State 1900, PlaySnd]
type = PlaySnd
trigger1 = movecontact
value = 1000,1

[State 1900, ChangeState]
type = ChangeState
triggerall = Time >= 9
trigger1 = Movecontact
ctrl = 0
value = 1902

[State 1900, ChangeState]
type = ChangeState
triggerall = Time >= 9
trigger1 = time = 30 || frontedgedist = 10 || backedgedist = -10
ctrl = 1
value = 0

;------------------------------------------------------------------------------------------------
;Chutes Explosivos - Reação do P2 á Corrida
;------------------------------------------------------------------------------------------------
[Statedef 1901]
type    = A
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 5300
sprpriority = 0

[State 1901, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 60
trans = add
TimeGap = 2
FrameGap = 2
length = 30
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 1901, ChangeState]
type = ChangeState
trigger1 = time = 78 
ctrl = 1
value = 0

;------------------------------------------------------------------------------------------------
;Chutes Explosivos - Provocação Antes da Sequencia de Chutes
;------------------------------------------------------------------------------------------------
[Statedef 1902]
type = S
ctrl = 0
anim = 199
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 1903, VelMul, corrida]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 1900
x = 1

;[State 1902, 1]
;type = CtrlSet
;trigger1 = Time = 40
;value = 1

[State 1902, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1903
ctrl = 0

;------------------------------------------------------------------------------------------------
;Chutes Explosivos - Sequencia de Chutes 1
;------------------------------------------------------------------------------------------------
[Statedef 1903]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 1901
poweradd = 15
sprpriority = 2

[State 1903, AssertSpecial]
type = AssertSpecial
trigger1 = Time
flag = unguardable

[State 1903, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 60
trans = add
TimeGap = 2
FrameGap = 2
length = 40
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 1903, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 8

[State 1904, VelAdd]
type = VelAdd
trigger1 = AnimElem = 13
x = 4

[State 1903, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,0

[State 1903, Dust]
type = Helper
trigger1 = AnimElem = 1 || AnimElem = 7 || AnimElem = 13 || AnimElem = 21 || AnimElem = 25
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 25,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 1904, Clarao]
type = Helper
trigger1 = AnimElem = 4 || AnimElem = 9 || AnimElem = 15 || AnimElem = 24 || AnimElem = 27 || AnimElem = 28
helpertype = Normal
ID = 5412
name = "Clarao"
postype = p1
pos = 15,0
stateno = 5412
ownpal = 1
keyctrl = 0

[State 1903, HitDef]
type = HitDef
trigger1 = AnimElem = 4 || AnimElem = 9 || AnimElem = 15 || AnimElem = 24 || AnimElem = 27 || AnimElem = 28
attr = S, HA
damage = 25,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = S5412
guard.sparkno = s5402
hitsound = S8200,0
guardsound = S8500,0
sparkxy = -12,-70
ground.type = High
ground.slidetime = 5
ground.hittime = 5
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
kill = 0

[State 1903, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1904
ctrl = 0

;------------------------------------------------------------------------------------------------
;Chutes Explosivos - Sequencia de Chutes 2
;------------------------------------------------------------------------------------------------

[Statedef 1904]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 1901
poweradd = 15
sprpriority = 2

[State 1904, AssertSpecial]
type = AssertSpecial
trigger1 = Time
flag = unguardable

[State 1904, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 60
trans = add
TimeGap = 2
FrameGap = 2
length = 40
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 1904, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 8

[State 1904, VelAdd]
type = VelAdd
trigger1 = AnimElem = 13
x = 4

[State 1904, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,0

[State 1904, Dust]
type = Helper
trigger1 = AnimElem = 1 || AnimElem = 7 || AnimElem = 13 || AnimElem = 21 || AnimElem = 25
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 25,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 1904, Clarao]
type = Helper
trigger1 = AnimElem = 4 || AnimElem = 9 || AnimElem = 15 || AnimElem = 24 || AnimElem = 27 || AnimElem = 28
helpertype = Normal
ID = 5412
name = "Clarao"
postype = p1
pos = 15,0
stateno = 5412
ownpal = 1
keyctrl = 0

[State 1904, HitDef]
type = HitDef
trigger1 = AnimElem = 4 || AnimElem = 9 || AnimElem = 15 || AnimElem = 24 || AnimElem = 27
attr = S, HA
damage = 30,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = S5412
guard.sparkno = s5402
hitsound = S8200,0
guardsound = S8500,0
sparkxy = -12,-70
ground.type = High
ground.slidetime = 5
ground.hittime = 5
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
kill = 0

[State 1903, HitDef]
type = HitDef
trigger1 = AnimElem = 28
attr = S,NA
damage = 35,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = S5412
guard.sparkno = s5402
hitsound = S8200,0
guardsound = S8500,0
sparkxy = -12,-70
ground.type = High
ground.slidetime = 5
ground.hittime = 5
ground.velocity = -2,0
p1stateno = 1905
p2stateno = 1901
air.type = Low
air.hittime = 3
air.velocity = -5,0
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
kill = 0

[State 1904, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1905
ctrl = 0

;------------------------------------------------------------------------------------------------
;Chutes Explosivos - Final da Sequencia de Chutes
;------------------------------------------------------------------------------------------------

[Statedef 1905]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 905
poweradd = 15
sprpriority = 2

[State 1905, AssertSpecial]
type = AssertSpecial
trigger1 = Time
flag = unguardable

[State 1905, Dust]
type = Helper
trigger1 = AnimElem = 1
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 25,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 1905, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 40
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 1905, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 10

[State 1905, 2]
type = NotHitBy
Trigger1 = Time >= 0
Trigger1 = AnimElem = 5, <0
value = SCA

[State 1905, 2]
type = Width
Trigger1 = AnimElem = 2
value = 70

[State 1905, 3]
type = Width
Trigger1 = AnimElem = 3
value = 87

[State 1905, 1]
type = PlaySnd
trigger1 = Time = 1
value = 8888,6

[State 1905, 4]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
damage    = 40
animtype  = Hard
Hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = s5408
guard.sparkno = s5402
hitsound   = s5408,0
guardsound = S8500,0
sparkxy = -6,-87
ground.type = trip
ground.slidetime = 13
ground.hittime  = 18
ground.velocity = -6.5   
air.type = High
air.velocity = -6,-5
airguard.velocity = -4 
p2getp1state = 1
p2stateno = 1906
air.fall = 1
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
Palfx.time = ifelse(P2StateType = A , 50 ,60)
Palfx.add = 210,10,-200
Palfx.mul = 256,256,256
Palfx.sinadd = -112,-122,-112,10
Palfx.invertall = 1

[State 1905, Clarao]
type = Helper
Triggerall = Random <= 500
trigger1 = movecontact
helpertype = Normal
ID = 5412
name = "Clarao"
postype = p1
pos = 15,0
stateno = 5412
ownpal = 1
keyctrl = 0

[State 1905, 1]
type = Explod
trigger1 = movehit = 1
anim = 901
sprpriority = 3
postype = p2
pos = 0,0
bindtime = -1

[State 1905, AssertSpecial]
type = AssertSpecial
trigger1 = Time
flag = unguardable

[State 1905, 1]
type = Screenbound
trigger1 = movehit = 1
value = 1
movecamera = 0,0

[State 1905, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1907
ctrl = 0

;------------------------------------------------------------------------------------------------
;Chutes Explosivos - Reação do P2 ao Ultimo Chute
;------------------------------------------------------------------------------------------------
[Statedef 1906]
type    = A
movetype= H
physics = N
velset = 0
ctrl = 0

[State 1906, 2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 903

[State 1906, 1]
type = PosSet
Trigger1 = Time = 0
y = -64

[State 1906, 1]
type = velSet
Trigger1 = Time = 0
x = -4
y = -7

[State 1906, 1] ;Acceleration
type = VelAdd
trigger1 = Time >= 0
y = .3

[State 1906, 4] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
type = SelfState
value = 5100

;------------------------------------------------------------------------------------------------
;Chutes Explosivos - Provocação Final
;------------------------------------------------------------------------------------------------
[Statedef 1907]
type = S
ctrl = 0
anim = 192
velset = 0,0
movetype = I
physics = S
sprpriority = 2

;[State 1907, 1]
;type = CtrlSet
;trigger1 = Time = 40
;value = 1

[State 1907, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------
;================================>Punhos da Justiça - Ataque em Pé<==============================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Punhos da Justiça - Correndo
;------------------------------------------------------------------------------------------------
[Statedef 2000]
type    = S
movetype= A
physics = S
anim = 1900
ctrl = 0
sprpriority = 1

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8888,6

[State 2000, Fundo de Super]
type = BGPalFX
trigger1 = AnimElem = 1
time = 48
add = 256,256,256
mul = 512,512,512
sinadd = 512,512,512,1
invertall = 1
color = 256

[State 2000, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
Time = 48
postype = p1
pos = 10, -80
anim = S5413
sound = S9999,6
poweradd = -1000
movetime = 0

[State 2000, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 50
trans = add
TimeGap = 2
FrameGap = 2
length = 35
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 2000, Dust]
type = Helper
trigger1 = AnimElem = 2
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 25,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 2000, Flash]
type = Explod
trigger1 = time > 4 && (time%4) = 1
ID = 5407
anim = 5407
postype = P1
pos = 10,-51
bindtime = 1
vel = -2.2
ownpal = 1
random = 18,48
removetime = -2
sprpriority = 2

[State 2000, Flash]
type = Explod
trigger1 = time > 4 && (time % 4) = 0
ID = 5407
anim = 5407
postype = p1
pos = 10,-49
bindtime = 1
vel = -2
ownpal = 1
random = 18,48
removetime = -2
sprpriority = 2

[State 2000, VelSet]
type = VelSet
triggerall = !MoveContact
trigger1 = Time >= 4
x = const(velocity.run.fwd.x)

[State 2000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = (AnimElem = 5) || (AnimElem = 9)
value = 8100,0

[State 2000, Clarao]
type = Helper
trigger1 = movecontact
helpertype = Normal
ID = 5412
name = "Clarao"
postype = p1
pos = 15,0
stateno = 5412
ownpal = 1
keyctrl = 0

[State 2000, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
animtype = light
p1stateno = 2002
p2stateno = 2001
hitpause = 3
sparkno = s5408
hitsound = s5408,0
sparkxy = -12,-90

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = movecontact
value = 1000,1

[State 2000, ChangeState]
type = ChangeState
triggerall = Time >= 9
trigger1 = Movecontact
ctrl = 0
value = 1902

[State 2000, ChangeState]
type = ChangeState
triggerall = Time >= 9
trigger1 = time = 30 || frontedgedist = 10 || backedgedist = -10
ctrl = 1
value = 0

;------------------------------------------------------------------------------------------------
;Punhos da Justiça - Reação do P2 á Corrida
;------------------------------------------------------------------------------------------------
[Statedef 2001]
type    = A
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 5300
sprpriority = 0

[State 2001, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 60
trans = add
TimeGap = 2
FrameGap = 2
length = 30
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 2001, ChangeState]
type = ChangeState
trigger1 = time = 115
ctrl = 1
value = 0

;------------------------------------------------------------------------------------------------
;Punhos da Justiça - Sequencia de Socos 1
;------------------------------------------------------------------------------------------------
[Statedef 2002]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 2000
poweradd = 15
sprpriority = 2

[State 2002, AssertSpecial]
type = AssertSpecial
trigger1 = Time
flag = unguardable

[State 2002, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 60
trans = add
TimeGap = 2
FrameGap = 2
length = 40
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 2002, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 6

[State 2002, VelAdd]
type = VelAdd
trigger1 = AnimElem = 16
x = 4

[State 2002, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,0

[State 2002, Dust]
type = Helper
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 11 || AnimElem = 15 || AnimElem = 22
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 25,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 2002, Clarao]
type = Helper
trigger1 = AnimElem = 2 || AnimElem = 7 || AnimElem = 8 || AnimElem = 12 || AnimElem = 18 || AnimElem = 19 || AnimElem = 24 || AnimElem = 25
helpertype = Normal
ID = 5412
name = "Clarao"
postype = p1
pos = 15,0
stateno = 5412
ownpal = 1
keyctrl = 0

[State 2002, HitDef]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 7 || AnimElem = 8 || AnimElem = 12 || AnimElem = 18 || AnimElem = 19 || AnimElem = 24 || AnimElem = 25
attr = S, HA
damage = 15,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 7,7
sparkno = S5412
guard.sparkno = s5402
hitsound = S8200,0
guardsound = S8500,0
sparkxy = -12,-70
ground.type = High
ground.slidetime = 5
ground.hittime = 5
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
kill = 0

[State 2002, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 2003
ctrl = 0

;------------------------------------------------------------------------------------------------
;Punhos da Justiça - Sequencia de Socos 2
;------------------------------------------------------------------------------------------------
[Statedef 2003]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 2000
poweradd = 15
sprpriority = 2

[State 2003, AssertSpecial]
type = AssertSpecial
trigger1 = Time
flag = unguardable

[State 2003, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 60
trans = add
TimeGap = 2
FrameGap = 2
length = 40
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 2003, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 4

[State 2003, VelAdd]
type = VelAdd
trigger1 = AnimElem = 16
x = 4

[State 2003, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,0

[State 2003, Dust]
type = Helper
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 11 || AnimElem = 15 || AnimElem = 22
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 25,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 2003, Clarao]
type = Helper
trigger1 = AnimElem = 2 || AnimElem = 7 || AnimElem = 8 || AnimElem = 12 || AnimElem = 18 || AnimElem = 19 || AnimElem = 24 || AnimElem = 25
helpertype = Normal
ID = 5412
name = "Clarao"
postype = p1
pos = 15,0
stateno = 5412
ownpal = 1
keyctrl = 0

[State 2003, HitDef]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 7 || AnimElem = 8 || AnimElem = 12 || AnimElem = 18 || AnimElem = 19 || AnimElem = 24
attr = S, HA
damage = 15,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 9,9
sparkno = S5412
guard.sparkno = s5402
hitsound = S8200,0
guardsound = S8500,0
sparkxy = -12,-70
ground.type = High
ground.slidetime = 5
ground.hittime = 5
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
kill = 0

[State 2003, HitDef]
type = HitDef
trigger1 = AnimElem = 25
attr = S, HA
damage = 15,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = S5412
guard.sparkno = s5402
hitsound = S8200,0
guardsound = S8500,0
sparkxy = -12,-70
p1stateno = 2004
p2stateno = 2001
ground.type = High
ground.slidetime = 5
ground.hittime = 5
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
kill = 0

[State 2003, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 2004
ctrl = 0

;------------------------------------------------------------------------------------------------
;Punhos da Justiça - Provocação No Meio
;------------------------------------------------------------------------------------------------
[Statedef 2004]
type = S
ctrl = 0
anim = 2001
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 2004, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 2005
ctrl = 1

;------------------------------------------------------------------------------------------------
;Punhos da Justiça - Sequencia de Socos 3
;------------------------------------------------------------------------------------------------
[Statedef 2005]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 2000
poweradd = 15
sprpriority = 2

[State 2005, AssertSpecial]
type = AssertSpecial
trigger1 = Time
flag = unguardable

[State 2005, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 60
trans = add
TimeGap = 2
FrameGap = 2
length = 40
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 2005, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 6

[State 2005, VelAdd]
type = VelAdd
trigger1 = AnimElem = 16
x = 4

[State 2005, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,0

[State 2005, Dust]
type = Helper
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 11 || AnimElem = 15 || AnimElem = 22
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 25,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 2005, Clarao]
type = Helper
trigger1 = AnimElem = 2 || AnimElem = 7 || AnimElem = 8 || AnimElem = 12 || AnimElem = 18 || AnimElem = 19 || AnimElem = 24 || AnimElem = 25
helpertype = Normal
ID = 5412
name = "Clarao"
postype = p1
pos = 15,0
stateno = 5412
ownpal = 1
keyctrl = 0

[State 2005, HitDef]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 7 || AnimElem = 8 || AnimElem = 12 || AnimElem = 18 || AnimElem = 19 || AnimElem = 24 || AnimElem = 25
attr = S, HA
damage = 15,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = S5412
guard.sparkno = s5402
hitsound = S8200,0
guardsound = S8500,0
sparkxy = -12,-70
ground.type = High
ground.slidetime = 5
ground.hittime = 5
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
kill = 0

[State 2005, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 2006
ctrl = 0

;------------------------------------------------------------------------------------------------
;Punhos da Justiça - Sequencia de Socos 4
;------------------------------------------------------------------------------------------------
[Statedef 2006]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 2000
poweradd = 15
sprpriority = 2

[State 2006, AssertSpecial]
type = AssertSpecial
trigger1 = Time
flag = unguardable

[State 2006, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 60
trans = add
TimeGap = 2
FrameGap = 2
length = 40
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 2006, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 4

[State 2006, VelAdd]
type = VelAdd
trigger1 = AnimElem = 16
x = 4

[State 2006, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,0

[State 2006, Dust]
type = Helper
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 11 || AnimElem = 15 || AnimElem = 22
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 25,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 2006, Clarao]
type = Helper
trigger1 = AnimElem = 2 || AnimElem = 7 || AnimElem = 8 || AnimElem = 12 || AnimElem = 18 || AnimElem = 19 || AnimElem = 24 || AnimElem = 25
helpertype = Normal
ID = 5412
name = "Clarao"
postype = p1
pos = 15,0
stateno = 5412
ownpal = 1
keyctrl = 0

[State 2006, HitDef]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 7 || AnimElem = 8 || AnimElem = 12 || AnimElem = 18 || AnimElem = 19 || AnimElem = 24
attr = S, HA
damage = 15,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = S5412
guard.sparkno = s5402
hitsound = S8200,0
guardsound = S8500,0
sparkxy = -12,-70
ground.type = High
ground.slidetime = 5
ground.hittime = 5
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
kill = 0

[State 2006, HitDef]
type = HitDef
trigger1 = AnimElem = 25
attr = S, HA
damage = 15,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = S5412
guard.sparkno = s5402
hitsound = S8200,0
guardsound = S8500,0
sparkxy = -12,-70
p1stateno = 2007
p2stateno = 2001
ground.type = High
ground.slidetime = 5
ground.hittime = 5
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
kill = 0

[State 2006, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 2007
ctrl = 0

;------------------------------------------------------------------------------------------------
;Punhos da Justiça - Final da Sequencia de Socos
;------------------------------------------------------------------------------------------------
[Statedef 2007]
type    = S
movetype= A
physics = S
velset = 0
anim = 904
ctrl = 0

[State 2007, AssertSpecial]
type = AssertSpecial
trigger1 = Time
flag = unguardable

[State 2007, VelAdd]
type = VelAdd
trigger1 = AnimElem = 1
x = 4

[State 2006, Dust]
type = Helper
trigger1 = AnimElem = 1
helpertype = Normal
ID = 5403
name = "Dust"
postype = p1
pos = 25,0
stateno = 5403
ownpal = 1
keyctrl = 0

[State 2007, Rastro]
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

[State 2007, 2]
type = NotHitBy
Trigger1 = Time >= 0
Trigger1 = AnimElem = 5, <0
value = SCA

[State 2007, 2]
type = Width
Trigger1 = AnimElem = 1
value = 70

[State 2007, 3]
type = Width
Trigger1 = AnimElem = 2
value = 87

[State 2007, 1]
type = PlaySnd
trigger1 = Time = 1
value = 8888,6

[State 2007, 4]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
damage    = 144
animtype  = Hard
Hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkxy = -10,-90
sparkno = s5408
guard.sparkno = s5402
hitsound   = s5408,0
guardsound = S8500,0
ground.type = trip
ground.slidetime = 13
ground.hittime  = 18
ground.velocity = -6.5   
air.type = High
air.velocity = -6,-5
airguard.velocity = -4 
p2getp1state = 1
p2stateno = 2008
envshake.time = 4
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)
air.fall = 1
Palfx.time = ifelse(P2StateType = A , 50 ,60)
Palfx.add = 210,10,-200
Palfx.mul = 256,256,256
Palfx.sinadd = -112,-122,-112,10
Palfx.invertall = 1

[State 2007, Clarao]
type = Helper
Triggerall = Random <= 500
trigger1 = movecontact
helpertype = Normal
ID = 5412
name = "Clarao"
postype = p1
pos = 15,0
stateno = 5412
ownpal = 1
keyctrl = 0

[State 2007, 1]
type = Explod
trigger1 = movehit = 1
anim = 901
sprpriority = 3
postype = p2
pos = 0,0
bindtime = -1

[State 2007, AssertSpecial]
type = AssertSpecial
trigger1 = Time
flag = unguardable

[State 2007, 1]
type = Screenbound
trigger1 = movehit = 1
value = 1
movecamera = 0,0

[State 2007, 5]
type = ChangeState
Trigger1 = AnimTime = 0
value = 2009
ctrl = 1

;------------------------------------------------------------------------------------------------
;Punhos da Justiça - Reação do P2 no Ultimo Soco
;------------------------------------------------------------------------------------------------
[Statedef 2008]
type    = A
movetype= H
physics = N
velset = 0
ctrl = 0

[State 2008, 2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 903

[State 2008, 1]
type = PosSet
Trigger1 = Time = 0
y = -64

[State 2008, 1]
type = velSet
Trigger1 = Time = 0
x = -4
y = -7

[State 2008, 1] ;Acceleration
type = VelAdd
trigger1 = Time >= 0
y = .3

[State 2008, 4] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
type = SelfState
value = 5100

;------------------------------------------------------------------------------------------------
;Punhos da Justiça - Provocação Final
;------------------------------------------------------------------------------------------------
[Statedef 2009]
type = S
ctrl = 0
anim = 192
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 2009, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
