;------------------------------------------------------------------------------------------------
;================================================================================================
;+++++++++++++++++++++++++++++++++++/-----------------------\++++++++++++++++++++++++++++++++++++
;-----------------------------------|      -=+Randy Savage+=-      |------------------------------------
;===================================|     Golpes Normais    |====================================
;+++++++++++++++++++++++++++++++++++\-----------------------/++++++++++++++++++++++++++++++++++++
;---------------------------------------------------By: Wrestling Revolution Mugen_------------------
;================================================================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;------------------------------------------------------------------------------------------------
;==========================================>Socos em Pé<=========================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Soco Fraco em Pé
;------------------------------------------------------------------------------------------------

[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 200
poweradd = 15
sprpriority = 2

[State 200, VelMul, corrida]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 200, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,0

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S,NA
damage = 45,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,9
sparkno = S5409
guard.sparkno = s5402
hitsound = S8000,0
guardsound = S8500,0
sparkxy = -12,-70
ground.type = High
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 200, Guard Destroyer]
type = ChangeState
trigger1 = Random = [0,39]
trigger1 = MoveGuarded
value = 1400
ctrl = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------
;Soco Médio em Pé
;------------------------------------------------------------------------------------------------

[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 210
poweradd = 35
sprpriority = 2

[State 210, VelMul, corrida]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 210, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,1

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S,NA
damage = 65,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,9
sparkno = S5410
guard.sparkno = s5402
hitsound = S8000,1
guardsound = S8500,0
sparkxy = 5,-73
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 210, Guard Destroyer]
type = ChangeState
trigger1 = Random = [0,39]
trigger1 = MoveGuarded
value = 1400
ctrl = 1

[State 210, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------
;Soco Forte em Pé
;------------------------------------------------------------------------------------------------

[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 220
poweradd = 55
sprpriority = 2

[State 220, VelMul, corrida]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 220, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,2

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 3 || AnimElem = 4
attr = S,NA
damage = 85,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,9
sparkno = S5411
guard.sparkno = s5402
hitsound = S8000,2
guardsound = S8500,0
sparkxy = 17,-97
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -7,0
air.type = Low
air.hittime = 5
air.velocity = -7,0
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 220, Guard Destroyer]
type = ChangeState
trigger1 = Random = [0,39]
trigger1 = MoveGuarded
value = 1400
ctrl = 1

[State 220, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------
;Soco Forte Perto em Pé
;------------------------------------------------------------------------------------------------

[Statedef 221]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 221
poweradd = 55
sprpriority = 2

[State 221, VelMul, corrida]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 221, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,2

[State 221, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S,NA
damage = 85,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,9
sparkno = S5411
guard.sparkno = s5402
sparkxy = 17,-97
hitsound = S8000,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -7,0
air.type = Low
air.hittime = 5
air.velocity = -7,0
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 221, Guard Destroyer]
type = ChangeState
trigger1 = Random = [0,39]
trigger1 = MoveGuarded
value = 1400
ctrl = 1

[State 221, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------
;=========================================>Chutes em Pé<=========================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Chute fraco em Pé
;------------------------------------------------------------------------------------------------

[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 230
poweradd = 15
sprpriority = 2

[State 230, VelMul, corrida]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 230, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,0

[State 230, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S,NA
damage = 45,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,9
sparkno = S5409
guard.sparkno = s5402
sparkxy = -5,-20
hitsound = S8000,3
guardsound = S8500,0
ground.type = High
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 230, Guard Destroyer]
type = ChangeState
trigger1 = Random = [0,39]
trigger1 = MoveGuarded
value = 1400
ctrl = 1

[State 230, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------
;F,F + Chute Fraco em Pé
;------------------------------------------------------------------------------------------------

[Statedef 231]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 231
poweradd = 25
sprpriority = 2

[State 231, VelAdd]            
type = VelAdd		       
trigger1 = AnimElem = 1	       
X = 4			       
Y = 0

[State 231, Rastro]
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

[State 231, Dust]
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

[State 231, VelMul, corrida]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 231, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8888,6

[State 231, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S,NA
damage = 55,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,9
sparkno = S5409
guard.sparkno = s5402
sparkxy = -20,-43
hitsound = S8000,3
guardsound = S8500,0
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -10,-1
fall = 1                
fall.recovery = 0       
air.velocity = -5,-3
air.animtype = Back
air.juggle = 5
air.fall = 1
envshake.time = 3
envshake.freq = 70
envshake.ampl = ifelse(Random <500,-4,4)
ground.cornerpush.veloff = 0 
air.cornerpush.veloff = 0

[State 231, Guard Destroyer]
type = ChangeState
trigger1 = Random = [0,39]
trigger1 = MoveGuarded
value = 1400
ctrl = 1

[State 231, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------
;Chute Médio em Pé
;------------------------------------------------------------------------------------------------

[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 240
poweradd = 35
sprpriority = 2

[State 240, VelMul, corrida]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 240, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,1

[State 240, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 8
value = 8100,0

[State 240, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S,NA
damage = 65,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,9
sparkno = S5410
guard.sparkno = s5402
sparkxy = -28,-108
hitsound = S8000,4
guardsound = S8500,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 240, Guard Destroyer]
type = ChangeState
trigger1 = Random = [0,39]
trigger1 = MoveGuarded
value = 1400
ctrl = 1

[State 240, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------
;F,F + Chute Médio em Pé
;------------------------------------------------------------------------------------------------

[Statedef 241]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 231
poweradd = 45
sprpriority = 2

[State 241, VelAdd]            
type = VelAdd		       
trigger1 = AnimElem = 1	       
X = 5			       
Y = 0

[State 241, Rastro]
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

[State 241, Dust]
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

[State 241, VelMul, corrida]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 241, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8888,6

[State 241, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S,NA
damage = 75,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,9
sparkno = S5410
guard.sparkno = s5402
hitsound = S8000,3
guardsound = S8500,0
sparkxy = -20,-43
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -20,-1.5
fall = 1                
fall.recovery = 0       
air.velocity = -5,-3
air.animtype = Back
air.juggle = 5
air.fall = 1
envshake.time = 3
envshake.freq = 80
envshake.ampl = ifelse(Random <500,-4,4)
ground.cornerpush.veloff = 0 
air.cornerpush.veloff = 0

[State 241, Guard Destroyer]
type = ChangeState
trigger1 = Random = [0,39]
trigger1 = MoveGuarded
value = 1400
ctrl = 1

[State 241, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------
;Chute forte de pé
;------------------------------------------------------------------------------------------------

[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 250
poweradd = 55
sprpriority = 2

[State 250, VelMul, corrida]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 250, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,2

[State 250, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S,NA
damage = 85,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,9
sparkno = S5411
guard.sparkno = s5402
sparkxy = 5,-73
hitsound = S8000,5
guardsound = S8500,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -8,0
air.type = Low
air.hittime = 5
air.velocity = -7,0
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 250, Guard Destroyer]
type = ChangeState
trigger1 = Random = [0,39]
trigger1 = MoveGuarded
value = 1400
ctrl = 1

[State 250, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------
;F,F + Chute Forte em Pé
;------------------------------------------------------------------------------------------------

[Statedef 251]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 231
poweradd = 65
sprpriority = 2

[State 251, VelAdd]            
type = VelAdd		       
trigger1 = AnimElem = 1	       
X = 6			       
Y = 0

[State 251, Rastro]
type = AfterImage
trigger1 = Time = 0
time = 40
trans = add
TimeGap = 2
FrameGap = 2
length = 32
PalBright = 0, 0, 0
PalContrast = 100,100,100
PalAdd = 0, 0, 0
PalMul = 0, 0, 0

[State 251, Dust]
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

[State 251, VelMul, corrida]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 251, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8888,6

[State 251, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S,NA
damage = 95,1
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,9
sparkno = S5411
guard.sparkno = s5402
sparkxy = -20,-43
hitsound = S8000,3
guardsound = S8500,0
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -30,-2  
fall = 1                
fall.recovery = 0       
air.velocity = -5,-3
air.animtype = Back
air.juggle = 5
air.fall = 1
envshake.time = 3
envshake.freq = 90
envshake.ampl = ifelse(Random <500,-4,4)
ground.cornerpush.veloff = 0 
air.cornerpush.veloff = 0

[State 251, Guard Destroyer]
type = ChangeState
trigger1 = Random = [0,39]
trigger1 = MoveGuarded
value = 1400
ctrl = 1

[State 251, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------
;========================================>Socos Abaixado<========================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Soco Fraco Abaixado
;------------------------------------------------------------------------------------------------

[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 400
poweradd = 15
sprpriority = 2

[State 400, VelMul, corrida]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 400, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,0

[State 400, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = C,NA
damage = 45,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,9
sparkno = S5409
guard.sparkno = S8010
hitsound = S8000,0
guardsound = S8500,0
sparkxy = -12,-38
ground.type = High
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 400, Guard Destroyer]
type = ChangeState
trigger1 = Random = [0,39]
trigger1 = MoveGuarded
value = 1400
ctrl = 1

[State 400, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;------------------------------------------------------------------------------------------------
;Soco Médio Abaixado
;------------------------------------------------------------------------------------------------

[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 410
poweradd = 35
sprpriority = 2

[State 410, VelMul, corrida]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 410, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,1

[State 410, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = C,NA
damage = 65,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,9
sparkno = S5410
guard.sparkno = S8010
hitsound = S8000,1
guardsound = S8500,0
sparkxy = -20,-38
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 410, Guard Destroyer]
type = ChangeState
trigger1 = Random = [0,39]
trigger1 = MoveGuarded
value = 1400
ctrl = 1

[State 410, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;------------------------------------------------------------------------------------------------
;Soco Forte Abaixado\Launcher
;------------------------------------------------------------------------------------------------

[Statedef 420]
type    = C
movetype= A
physics = C
poweradd = 80
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 420

[State 420, VelMul, corrida]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 420, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,2 

[State 420, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = C, NA
damage = 55
animtype = Up
getpower = 30,15
guardflag = L
hitflag = MAFD
pausetime = 13,15
guard.sparkno=s5402
sparkno = s5401
hitsound = s300, 3
guardsound = 6,0
sparkxy = -5,-46
ground.type = High
ground.slidetime = 6
ground.hittime  = 17
ground.velocity = 0,-11.5
air.velocity = -2,-10 
down.velocity = 0,-11.5
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 420, Guard Destroyer]
type = ChangeState
trigger1 = Random = [0,39]
trigger1 = MoveGuarded
value = 1400
ctrl = 1

[State 420, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;------------------------------------------------------------------------------------------------
;=======================================>Chutes Abaixado<========================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Chute Fraco Abaixado
;------------------------------------------------------------------------------------------------

[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 430
poweradd = 15
sprpriority = 2

[State 430, VelMul, corrida]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 430, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,0

[State 430, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = C,NA
damage = 45,1
animtype = Light
hitflag = MA
guardflag = L
priority = 4, Hit
pausetime = 8,9
sparkno = S5409
guard.sparkno = S8010
hitsound = S8000,5
guardsound = S8500,0
sparkxy = -15,-18
ground.type = High
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 430, Guard Destroyer]
type = ChangeState
trigger1 = Random = [0,39]
trigger1 = MoveGuarded
value = 1400
ctrl = 1

[State 430, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;------------------------------------------------------------------------------------------------
;Chute Médio Abaixado
;------------------------------------------------------------------------------------------------

[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 440
poweradd = 35
sprpriority = 2

[State 440, VelMul, corrida]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 440, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,1

[State 440, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 8
value = 8100,0

[State 440, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = C,NA
damage = 65,1
animtype = Medium
hitflag = MA
guardflag = L
priority = 4, Hit
pausetime = 8,9
sparkno = S5410
guard.sparkno = S8010
hitsound = S8000,4
guardsound = S8500,0
sparkxy = 12,-18
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 440, Guard Destroyer]
type = ChangeState
trigger1 = Random = [0,39]
trigger1 = MoveGuarded
value = 1400
ctrl = 1

[State 440, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;------------------------------------------------------------------------------------------------
;Chute Forte Abaixado
;------------------------------------------------------------------------------------------------

[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 450
poweradd = 55
sprpriority = 2

[State 450, VelMul, corrida]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 450, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,2

[State 450, HitDef]
type = HitDef
trigger1 = Animelem = 2
attr = C,NA
damage = 72
animtype = Medium
hitflag = MA
guardflag = L
priority = 4, Hit
pausetime = 8,10
sparkno = S5411
guard.sparkno = S8010
sparkxy = -30,-13
hitsound = S8000,5
guardsound = S8500,0
ground.type = trip
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,-2
air.type = Low
air.hittime = 5
air.velocity = -7,3
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 450, Guard Destroyer]
type = ChangeState
trigger1 = Random = [0,39]
trigger1 = MoveGuarded
value = 1400
ctrl = 1

[State 450, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;------------------------------------------------------------------------------------------------
;=========================================>Socos Pulando<========================================
;------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------
;Soco Fraco Pulando
;------------------------------------------------------------------------------------------------

[Statedef 600]
type = A
movetype = A
poweradd = 50
physics = A
;velset = 0,-2
anim = 600
juggle = 0
ctrl = 0

[State 600, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8400,0

[State 600, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 30
animtype = Light
guardflag = HA
hitflag = MAF
pausetime = 6,7 ;9,10
sparkno = S5409
guard.sparkno = S8010
hitsound = S8000,0
guardsound = S8500,0
sparkxy = 0,-36
ground.type = High
ground.slidetime = 3
ground.hittime  = 11
ground.velocity = -4
air.type = Low
air.velocity = -1,-3 
;air.hittime = 30
fall = 0
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 600, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 652
ctrl = 1

;------------------------------------------------------------------------------------------------
;Soco Médio Pulando
;------------------------------------------------------------------------------------------------
[Statedef 610]
type    = A
movetype= A
physics = A
poweradd = 60
juggle  = 0
ctrl = 0
anim = 610

[State 610, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,1

[State 610, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 40
animtype = Medium
guardflag = HA
hitflag = MAF
pausetime = 7,8 ;9,10
sparkno = S5410
guard.sparkno = S8010
hitsound = S8000,1
guardsound = S8500,0
sparkxy = 0,-36
ground.type = High
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2,-3 
;air.hittime = 30
fall = 0
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 610, VarAdd]
type = VarAdd
trigger1 = HitCount = 1
var(9) = 1
ignorehitpause = 1
persistent = 10

[State 610, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 652
ctrl = 1

;------------------------------------------------------------------------------------------------
;Soco Forte Pulando
;------------------------------------------------------------------------------------------------
[Statedef 620]
type    = A
movetype= A
physics = A
poweradd = 80
juggle  = 4
ctrl = 0
anim = 620

[State 620, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,2

[State 620, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 55
animtype = Hard
guardflag = HA
hitflag = MAF
pausetime = 9,10
sparkno = S5411
guard.sparkno = s5402
hitsound = S8000,2
guardsound = S8500,0
sparkxy = 0,-36
ground.type = High
ground.slidetime = 7
ground.hittime  = 17
ground.velocity = -5
air.velocity = -2,-3 
;air.hittime = 30
fall = 0
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 620, VarAdd]
type = VarAdd
trigger1 = HitCount = 1
var(9) = 1
ignorehitpause = 1
persistent = 50

[State 620, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 652
ctrl = 1

;------------------------------------------------------------------------------------------------
;Chute Fraco Pulando
;------------------------------------------------------------------------------------------------
[Statedef 630]
type = A
movetype = A
physics = A
poweradd = 50
anim = 630
juggle = 1
ctrl = 0

[State 630, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,0 

[State 630, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 30
animtype = Light
guardflag = HA
hitflag = MAF
pausetime = 6,7 ;9,10
sparkno = S5409
guard.sparkno = s5402
hitsound = S8000,0
guardsound = S8500,0
sparkxy = 0,-36
ground.type = High
ground.slidetime = 3
ground.hittime  = 11
ground.velocity = -4
air.velocity = -1.3,-3 
;air.hittime = 30
fall = 0
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 630, VarAdd]
type = VarAdd
trigger1 = HitCount = 1
var(9) = 1
ignorehitpause = 1
persistent = 20

[State 630, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 652
ctrl = 1

;------------------------------------------------------------------------------------------------
;Chute Fraco Pulando Perto
;------------------------------------------------------------------------------------------------
[Statedef 631]
type = A
movetype = A
physics = A
poweradd = 50
anim = 631
juggle = 1
ctrl = 0

[State 631, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,0 

[State 631, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 30
animtype = Light
guardflag = HA
hitflag = MAF
pausetime = 6,7 ;9,10
sparkno = S5409
guard.sparkno = s5402
hitsound = S8000,0
guardsound = S8500,0
sparkxy = 0,-36
ground.type = High
ground.slidetime = 3
ground.hittime  = 11
ground.velocity = -4
air.velocity = -1.3,-3 
;air.hittime = 30
fall = 0
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 631, VarAdd]
type = VarAdd
trigger1 = HitCount = 1
var(9) = 1
ignorehitpause = 1
persistent = 20

[State 631, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 652
ctrl = 1

;------------------------------------------------------------------------------------------------
;Chute Médio Pulando
;------------------------------------------------------------------------------------------------
[Statedef 640]
type    = A
movetype= A
physics = A
poweradd = 60
juggle  = 1
ctrl = 0
anim = 640

[State 640, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,1

[State 640, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 40
animtype = Medium
guardflag = HA
hitflag = MAF
pausetime = 8,9 ;9,10
sparkno = S5410
guard.sparkno = s5402
hitsound = S8000,1
guardsound = S8500,0
sparkxy = 0,-36
ground.type = High
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2,-3 
;air.hittime = 30
fall = 0
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 640, VarAdd]
type = VarAdd
trigger1 = HitCount = 1
var(9) = 1
ignorehitpause = 1
persistent = 10

[State 640, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 652
ctrl = 1

;------------------------------------------------------------------------------------------------
;Chute Forte Pulando
;------------------------------------------------------------------------------------------------
[Statedef 650]
type = A
movetype= A
physics = A
poweradd = 80
juggle  = 4
ctrl = 0
anim = 650

[State 650, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,2 

[State 650, 1]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 3
attr = A, NA
damage = 27
animtype = heavy
guardflag = HA
hitflag = MAF
pausetime = 9,10
sparkno = S5410
guard.sparkno = s5402
hitsound = S8000,3
guardsound = S8500,0
sparkxy = 0,-36
ground.type = High
ground.slidetime = 7
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2,-3 
;air.hittime = 30
envshake.time = 3
envshake.freq = 60
envshake.ampl = ifelse(Random <500,-4,4)

[State 650, VarAdd]
type = VarAdd
trigger1 = HitCount = 1
var(9) = 1
ignorehitpause = 1
persistent = 60

[State 650, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 652
ctrl = 1

;------------------------------------------------------------------------------------------------
;================================>Aterrissagem dos Golpes Aéreos<================================
;------------------------------------------------------------------------------------------------

[Statedef 652]
type    = A
movetype= I
physics = A
anim = 44
sprpriority = 1
ctrl = 1

[State 652, Turn]
type = Turn
trigger1 = P2Dist X < -5

[State 652, VelSet]
type = VelSet
trigger1 = FrontEdgeBodyDist <= 0
x = 0

[State 652, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52
