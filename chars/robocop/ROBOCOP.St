;fvar(8) 
;fvar(9) 
;fvar(10) 
;fvar(11) 
;fvar(12) 
;fvar(13) 
;fvar(14) 
;sysvar(1) = 0
;var(1) 
;var(2) 
;var(3) 
;var(4) 
;var(5) 
;var(6) 
;var(7) 
;var(9) 
;var(8) 
;var(10)
;var(11)
;var(12) 
;var(13) 
;var(14) 
;var(15) 
;var(16)
;var(17)
;var(18)
;var(19)
;var(20)
;var(21)
;var(23)
;------------------------------------------
[Statedef 0]
type = S
physics = S
sprpriority = 0

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5 && Anim != 6000 
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 0 + (facing=-1)*6000

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3]; leave victim
type = Targetdrop
triggerall = numtarget != 0
trigger1 = target, stateno=820
trigger1 = stateno=[800,810]
trigger2 = target, stateno=[870,880]
trigger2 = stateno=[850,860]
trigger3 = target, stateno=[2500,2550]
trigger3 = stateno=[2560,2565]
trigger4 = target, stateno=4020
trigger4 = stateno=[4000,4010]

[State 0, 4] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

;---------------------------------------------------------------------------
; Walk
[Statedef 20]
type    = S
physics = S
sprpriority = 0

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 + 6000*(facing=-1) && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20 + 6000*(facing=-1)

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 + 6000*(facing=-1) && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21 + 6000*(facing=-1)

;---------------------------------------------------------------------------
; Jump Start
[Statedef 40]
type    = S
physics = S
anim = 40 + 6000*(facing=-1)
ctrl = 0
sprpriority = 1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
; Jump Up
[Statedef 50]
type    = A
physics = A

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41 + 6000*(facing=-1), ifelse((vel x)>0, 42+ 6000*(facing=-1), 43+ 6000*(facing=-1)))

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3 
;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47 + 6000*(facing=-1)

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
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Lose by Time Over

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
[Statedef 180]
type = S

[State 180, arrest mode]
type = Explod
trigger1 = time = 0
anim = 183
id=3002
pos = (var(10)!=1)*160, 225
postype = Left
removetime = 290
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 180, Cursor]
type = Explod
trigger1 = time = 0
trigger2 = (time%30) = 0
anim = 275
pos = (var(10)!=1)*160+88, 225
postype = Left
removetime = 190
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 180, computer bip]
type = playsnd
trigger1=time=0
value=270,0
volume=64

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
value = 181 + (random > 500)

;---------------------------------------------------------------------------
; Win pose 1 - Guarda a arma
[Statedef 181]
type = S
ctrl = 0
anim = 181 + 6000 * (facing=-1)
velset = 0,0

;som - guarda arma
[State 181, 1]
type = PlaySnd
trigger1 = time = 20
value = 190, 1
volume = 255
channel = 1

;som - they will fix you
[State 181, 1]
type = PlaySnd
trigger1 = time = 0 && (random < 250)
value = 180, 5
volume = 255
channel = 0

;som - thank you
[State 181, 1]
type = PlaySnd
trigger1 = time = 90
value = 181 + 2*(random > 500), 0
volume = 255
channel = 0
lowpriority=1

;Assert this until you want "round 1, fight" to begin
[State 181, 2]
type = AssertSpecial
trigger1 = time < 200
flag = roundnotover

[State 181, 1] ;mudar para pose clássica
type = ChangeAnim
trigger1 = animelem= 24 && random > 500
value = 198

[State 181, 1] ;mudar para pose clássica
type = turn
trigger1 = anim=198 && facing=-1

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 2 - Lewis aparece
[Statedef 182]
type = S
ctrl = 0
anim = 181 + 6000 * (facing=-1)
velset = 0,0

[State 182, Lewis helper]
type = Explod
trigger1 = time = 0
anim = 3010
pos = -320,0
postype = p1
removetime = 85
sprpriority = 1
vel = 3.2,0
id=3010
shadow = -1,0,0
ownpal = 1

[State 182, Lewis helper]
type = Explod
trigger1 = time>=1
trigger1 = numexplod(3010)=0
trigger1 = numexplod(182)=0
anim = 182
pos = -floor(30*1.5),0
postype = p1
removetime = -1
sprpriority = 1
vel = 0,0
id=182
shadow = -1,0,0
ownpal = 1

;som - guarda arma
[State 182, 1]
type = PlaySnd
trigger1 = time = 20
value = 190, 1
volume = 255

;som - thank you, robocop
[State 182, 1]
type = PlaySnd
trigger1 = time = 80
value = 182, 1
volume = 255

;som - thank you
[State 182, 1]
type = PlaySnd
trigger1 = time = 180
value = 182, 0
volume = 255

;Assert this until you want "round 1, fight" to begin
[State 182, 2]
type = AssertSpecial
trigger1 = time < 200
flag = roundnotover

[State 182, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Introduction
[Statedef 191]; Saca arma
type = S
ctrl = 0
anim = 190 + 6000 * (facing=-1)
velset = 0,0

[State 191, 1] ;direção
type = varset
trigger1 = var(10)=0
var(10)=1+(facing=-1)

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = time = 0 && random > 500
value = 196

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = roundstate=0 
value = Anim

[State 191, crime in progress]
type = Explod
trigger1 = roundstate!=0 
anim = 197
id=3002
pos = (var(10)!=1)*160, 225
postype = Left
removetime = 190
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 191, Cursor]
type = Explod
trigger1 = roundstate!=0 
trigger2 = (time%30) = 0
anim = 3070
pos = (var(10)!=1)*160+136, 225
postype = Left
removetime = 190
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 191, Cursor]
type = playsnd
trigger1=roundstate!=0
value=270,0
volume=64

;som sirene
[State 191, 1]
type = PlaySnd
trigger1 = roundstate!=0 && Anim=196
value = 191, 0
volume = 255
channel = 0

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = (p2name="RoboCain 2" || p2name="RoboCain")
trigger2 = (p4name="RoboCain 2" || p4name="RoboCain")
value = 194

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = roundstate!=0 && Anim=196
value = 192

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = roundstate!=0 
value = 193

;---------------------------------------------------------------------------
; Introduction
[Statedef 192]; carro explode
type = S
ctrl = 0
anim = 196
velset = 0,0

[State 192, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 196

[State 192, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, robo]
type = Explod
trigger1 = time = 100
trigger2 = time = 95
anim = 193
pos = -(BackEdgeDist)+floor(18*1.5),0
postype = p1
removetime = 140
sprpriority = 4 - (time=95)
shadow = -1,0,0

[State 192, robo2]
type = Explod
trigger1 = time = 240
anim = 190 + 6000 * (facing=-1)
pos = -(BackEdgeDist)+floor(18*1.5),0
postype = p1
removetime = -2
sprpriority = 3
shadow = -1,0,0

[State 192, robo3]
type = Explod
trigger1 = time = 333
anim = 20 + 6000 * (facing=-1)
pos = -(BackEdgeDist)+floor(18*1.5),0
postype = p1
removetime = floor(BackEdgeDist / 1.4)-18
sprpriority = 3
vel = 1.4,0
id=192
shadow = -1,0,0

[State 192, robo3 som passo]
type = PlaySnd
trigger1 = (time % 24) =0
trigger1 = time > 333
trigger2 = time = 96
value = 20, 0
freqmul = 1 -  0.02 * ((time % 48) =0)
volume = 64 - (60*((time % 48) =0))

[State 192, explode]
type = Explod
trigger1 = time = [50,60]
trigger1 = (time%2)=0
trigger2 = time = 230
trigger3 = time = 232
trigger4 = time = 236
trigger5 = time = 252
trigger6 = time = 258
anim = 194
pos = floor(random/10)-(BackEdgeDist)+floor(18*1.5),-floor(random/50)
postype = p1
sprpriority = 5

[State 192, carro]
type = Explod
trigger1 = time = 35
trigger2 = time = 36
anim = 191 - 2 * (time=36)
pos = -(BackEdgeDist)+floor(18*1.5),10
postype = p1
removetime = 200
sprpriority = 3 - (time=36)
shadow = -1,0,0

[State 192, porta]
type = Explod
trigger1 = time = 80
anim = 192
pos = -(BackEdgeDist)+floor(18*1.5),8
postype = p1
removetime = 160
sprpriority = 5

[State 192, 3] ;Change to stand state when done
type = ChangeState
trigger1 = numexplod(192) = 0
trigger1 = Time > 340
value = 0

;som robocop
[State 192, 1]
type = PlaySnd
trigger1 = time = 95
value = 0, 3
volume = 255
channel = 2

;som saca arma
[State 192, 1]
type = PlaySnd
trigger1 = time = 240
value = 190, 0
volume = 255

;som explosão
[State 192, 1]
type = PlaySnd
trigger1 = time = [50,60]
trigger1 = (time%2)=0
trigger2 = time = 230
trigger3 = time = 232
trigger4 = time = 236
trigger5 = time = 252
trigger6 = time = 258
value = 194, 0
volume = 255
channel = 1 + ((time%2)=0 && time > 60)

;som - sorteia fala
[State 192, 1]
type = PlaySnd
trigger1 = time = 270
value = 180, ceil(random/199)
volume = 255
channel = 0

; Introduction
[Statedef 193]; Saca arma
type = S
ctrl = 0
anim = 190 + 6000 * (facing=-1)
velset = 0,0

[State 193, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190 + 6000 * (facing=-1)

[State 193, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

;som saca arma
[State 193, 1]
type = PlaySnd
trigger1 = time = 40
value = 190, 0
volume = 255
channel = 2

;som - sorteia fala
[State 193, 1]
type = PlaySnd
trigger1 = time = 70
value = 180, ceil(random/199)
volume = 255
channel = 0

[State 193, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Vs RoboCain
[Statedef 194]; Arma: Cobra Gun
type = S
ctrl = 0
anim = 196
velset = 0,0

[State 194, robo];atira
type = Explod
trigger1 = numexplod(199)<2 && time = [1,2]
anim = 199
id = 199
pos = -(BackEdgeDist)+floor(18*1.5),0
postype = p1
removetime = 200
sprpriority = 0
shadow = -1,0,0

[State 194, robo]; levou tiro
type = Explod
trigger1 = time = 201
anim = 3315
id = 3315
pos = -(BackEdgeDist)+floor(18*1.5),0
postype = p1
removetime = 119
sprpriority = 0
shadow = -1,0,0

[State 194, robo]; saca arma
type = Explod
trigger1 = time = 320
anim = 190 + 6000 * (facing=-1)
id = 190
pos = -(BackEdgeDist)+floor(18*1.5),0
postype = p1
removetime = -2
sprpriority = 0
shadow = -1,0,0

[State 194, robo3];anda
type = Explod
trigger1 = time = 413
anim = 20 + 6000 * (facing=-1)
pos = -(BackEdgeDist)+floor(18*1.5),0
postype = p1
removetime = floor(BackEdgeDist / 1.4)-18
sprpriority = 3
vel = 1.4,0
id=192
shadow = -1,0,0

[State 194, robo3 som passo]
type = PlaySnd
trigger1 = (time % 24) =0
trigger1 = time > 413
value = 20, 0
freqmul = 1 -  0.02 * ((time % 48) =0)
volume = 124 - (60*((time % 48) =0))
channel=2

[State 240, 1]
type = PlaySnd
trigger1 = time = 250
trigger2 = time = 300
value = 0, 2 + (time = 250)
volume = 255

[State 191, 2]
type = AssertSpecial
trigger1 = time< 420
flag = Intro

;som - sorteia fala
[State 200, 1]
type = PlaySnd
trigger1 = time = 0
value = 185, 0
volume = 255
channel = 0

;som saca arma
[State 200, 1]
type = PlaySnd
trigger1 = time = 360
value = 190, 0
volume = 255
channel = 2

[State 1027, cobra gun - tiro]
type = Explod
trigger1 = time = 140
anim = 3314
pos = -floor(backedgebodydist),-70;floor(1.5*40)
postype = p1
removetime = 22
vel = 7*1.5, 0
sprpriority = 3
ownpal = 1
shadow = -1,0,0

[State 1027, explode]
type = Explod
trigger1 = time = [160,197]
trigger1 = (time%4) = 0
anim = 194
pos = 0,0
postype = p2
sprpriority = 5
scale= 1+(time<175),1+(time<175)
random=126,20

[State 810, Shake]
type = EnvShake
time = 20
ampl = -8
freq = 40
trigger1 = time = 160

;som explosão
[State 200, 1]
type = PlaySnd
trigger1 = time = [160,197]
trigger1 = (time%4) = 0
value = 194, 0
volume = 255

[State 1027, cobra gun - sound]
type = PlaySnd
trigger1 = time =140
value = 3100, 0
volume = 128

[State 4010, 2]
type = BGPalfx
trigger1 = time = 200
ignorehitpause = 1
time = 128
mul = 128,128,128
sinadd = 128,128,128
invertall = 1
color = 0

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = numexplod(192) = 0
trigger1 = Time > 420
value = 0

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = anim=190
trigger2 = anim=6190
triggerall = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Taunt

[Statedef 195]
type = S
ctrl = 0
velset = 0,0
movetype = I
physics = S
sprpriority = 2
poweradd = ifelse(PrevStateNo = 9000, 0, 20)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 195

;som - gira arma - parar
[State 200, 1]
type = PlaySnd
trigger1 = (time%45) = 0
trigger2 = AnimTime = 0
value = 0, 0
volume = 255
channel = 1

;som - gira arma
[State 200, 1]
type = PlaySnd
trigger1 = time = 0
trigger2 = (time%45) = 0
value = 190, 1
volume = 255
channel = 1

;som - sorteia fala
[State 200, 1]
type = PlaySnd
trigger1 = animelem = 1 && (random>500) 
trigger2 = animelem = 2
value = 180+4*(animelem = 1), 4*(animelem = 2)
volume = 255
channel = 0
lowpriority=(animelem = 2)

[State 195, 1]
type = CtrlSet
trigger1 = Time = 40
value = 1

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Light Punch

[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 20)
sprpriority = 2

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 200

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 23, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = 0
sparkxy = ceil(-7*1.5),ceil(1.5*-54)
hitsound = 5, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0, 1
channel=1
volume = 255

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium punch
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0
poweradd = ifelse(PrevStateNo = 9000, 0, 20)
sprpriority = 2

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 210 + 6000 * (facing=-1)

[State 210, 1]
type = PlaySnd
trigger1 = Animelem = 1
trigger2 = AnimElem = 4
value = 0, 2
channel=1
volume = 255

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 9
attr = S, NA
animtype  = Medium
damage    = 57,0
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = ceil(-10*1.5),ceil(1.5*-60)
hitsound   = 5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.5,-4

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = animelem=4 && command="holdfwd"
value = 0 + 215 * (animtime != 0)
ctrl = 1 * (animtime = 0)

;---------------------------------------------------------------------------
[Statedef 215]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0
poweradd = ifelse(PrevStateNo = 9000, 0, 20)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 215  + 6000 * (facing=-1)

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0, 1
channel=1
volume = 255

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 20, 0
volume = 128

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 9
;trigger2 = AnimElem = 9
attr = S, NA
animtype  = Medium
damage    = 57,0
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = ceil(-10*1.5),ceil(1.5*-60)
hitsound   = 5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.5,-4

[State 3000, 4]
type = VelSet
;triggerall = anim = 215
trigger1 = animelem=2
trigger2 = animelem=3
trigger3 = animelem=4
x = 3

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Forte em pé
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
;poweradd= 110
;velset = 10,0
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 110)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 220


[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0, 3
channel=1
volume = 255

[State 240, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA 
animtype  = Hard
damage    = 73,10
guardflag = MA
pausetime = 12,12
sparkno = 2
sparkxy = ceil(-10*1.5),ceil(1.5*-60)
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6,-5
air.velocity = -6,-5
fall = 1

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing light kick
; CNS difficulty: easy
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
;poweradd= 22
ctrl = 0
velset = 0,0
poweradd = ifelse(PrevStateNo = 9000, 0, 20)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 230


[State 230, 1]
type = PlaySnd
trigger1 = Animelem = 1
value = 0, 1
channel=1
volume = 255

[State 230, 2]
type = HitDef
trigger1 = !movecontact;Time = 0
attr = S, NA
animtype  = Medium
damage    = 26,0
guardflag = MA
pausetime = 12,12
sparkno = 0
sparkxy = ceil(-10*1.5),ceil(1.5*-37)
hitsound   = 5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2.5,-3.5

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium kick
; CNS difficulty: easy
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
;poweradd= 65
ctrl = 0
velset = 0,0
poweradd = ifelse(PrevStateNo = 9000, 0, 20)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 240


[State 240, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0, 2
channel=1
volume = 255

[State 240, 2]
type = HitDef
trigger1 = !movecontact;Time = 0
attr = S, NA
animtype  = Medium
damage    = 63,0
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = ceil(-10*1.5),ceil(1.5*-60)
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2

[State 240, 3]
type = PosAdd
trigger1 = AnimElem = 7
x = 12

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong kick
; CNS difficulty: easy
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 5
;poweradd= 65
ctrl = 0
velset = 0,0
poweradd = ifelse(PrevStateNo = 9000, 0, 20)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 250 + 6000 * (facing=-1)

[State 240, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0, 3
channel=1
volume = 255

;som - um tiro
[State 200, 1]
type = PlaySnd
trigger1 = animelem=2 && command!="hold_c"
trigger2 = animelem=2 && var(14)<15 && var(21)=1
value = 250, 0
volume = 255

[State 240, 2]
type = projectile
trigger1 = animelem=2 && command!="hold_c"
trigger2 = animelem=2 && var(14)<15 && var(21)=1
projanim = 1500
ProjID = 1500
projcancelanim  = 3400
projremovetime = 10
offset =ceil(45*1.5),ceil(1.5*-60)
velocity = 7.5, 0 
attr = S, NP 
animtype  = Medium
damage    = 31,1
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = 0,0
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2
palfx.add = 250,148 ,43
palfx.mul = 250,148,43
palfx.time = 8 
;projscale=1.5,1.5

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = var(14)>15;animelem = 2 && command="hold_c"
trigger2 = p2bodydist x > -30
value = 0 + 260 * (command="hold_c")
ctrl = 1 ;* (AnimTime = 0)

[State 1027, Spark]
type = Explod
trigger1 = animelem=2 && command!="hold_c"
trigger2 = animelem=2 && var(14)<15 && var(21)=1
anim = 1501
pos = floor(45*1.5),-floor(60*1.5)
postype = p1
removetime = -2
bindtime = -1
ownpal = 1
sprpriority = 3

;---------------------------------------------------------------------------
; Target Mode
[Statedef 260]
type    = U
movetype= A
physics = U
;juggle  = 5
ctrl = 0
velset = 0,0
poweradd = ifelse(PrevStateNo = 9000, 0, 20)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 810, tempo]
type = varadd
trigger1 = 1
var(23) = 1

[State 810, tempo]
type = varset
;trigger1 = animelemtime(1) = 0
trigger1 = anim!=260 && anim!=6260
var(23) = 0

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 260 + 6000 * (facing=-1)

[State 240, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0, 1
channel=1
volume = 255

[State 3200, ]
type = Helper
trigger1 = animelemtime(1) = 0 && Numhelper(271)=0
name = "braço"
ID = 271
pos = floor(4*1.5),floor(1.5*-59)
postype = p1
stateno = 270
keyctrl = 0

;som - um tiro
[State 200, 1]
type = PlaySnd
triggerall = (anim = 260||anim = 6260)
trigger1 = command!="hold_c" && var(21)=0
;trigger2 = var(21)=1 && var(23)>= 90
trigger2 = helper(271),time>=90 && var(21)=1
value = 250, 0
volume = 255

[State 240, 2]
type = projectile
trigger1 = command!="hold_c" && var(21)=0
triggerall = (anim = 260||anim = 6260)
trigger2 = helper(271),time>=90 && var(21)=1
projanim = 1500
projid = 260
projcancelanim  = 3400
projremovetime = 2
postype = p2
offset = (90-var(23))*(var(23)<90),0-(90-var(23))*(var(23)<90)+floor(enemynear, const(size.mid.pos.y)*(enemynear, const(size.yscale)))
velocity = 0, 0 
attr = S, SP 
animtype  = Medium
damage    = 63,10
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = 0,0
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2
palfx.add = 250,148 ,43
palfx.mul = 250,148,43
palfx.time = 8
fall = 1 

[State 240, 4]
type = ChangeAnim
trigger1 = command!="hold_c" && var(21)=0
triggerall = (anim = 260||anim = 6260)
trigger2 = p2bodydist x < -30
trigger3 = helper(271),time>=90 && var(21)=1
;trigger3 = animelemtime(1)=90 && var(21)=1
value = anim + 5

[State 3000, 4]
type = VelSet
trigger1 = abs(vel x) > 0
x = (vel x) / 2

[State 260, computer bip]
type = playsnd
trigger1=time=0
value=270,0
volume=64

[State 240, 5]
type = ChangeState
triggerall = Animtime = 0
trigger1 = anim = 265
trigger2 = anim = 6265
value = 0 + 50 * (statetype = A) 
ctrl = 1

;---------------------------------------------------------------------------
; Target mode - braço
[Statedef 270]
physics = N
anim = 271
sprpriority = 3 + (root, facing)

[State 270, Distance Between Player and the Nearest enemy x]
Type = VarSet
trigger1 = animelemtime(1) = 0
fvar(9) = RootDist X

[State 270, Distance Between Player and the Nearest enemy x]
Type = Posadd
trigger1 = RootDist X != fvar(9)
x = ceil(RootDist X - fvar(9))

[State 270, Distance Between Player and the Nearest enemy y]
Type = VarSet
trigger1 = animelemtime(1) = 0
fvar(8) = RootDist Y

[State 270, Distance Between Player and the Nearest enemy y]
Type = Posadd
trigger1 = RootDist y != fvar(8)
y = ceil(RootDist y - fvar(8))

[State 1027, targeting]
type = Explod
trigger1 = time = 0
trigger2 = (time%15) = 0
anim = 274
pos = (root,var(10)!=1)*160+(root,var(10)=1)+16, 209 - 8*(root,numhelper(2700)=1)
postype = Left
removetime = 15
id = 274
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 1027, Cursor]
type = Explod
trigger1 = time = 0
trigger2 = (time%30) = 0
anim = 275
pos = (root,var(10)!=1)*160+(root,var(10)=1)+88, 209 - 8*(root,numhelper(2700)=1)
postype = Left
removetime = 15
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 1027, Mira H]
type = Explod
trigger1 = 1
anim = 272
pos = (90-time)*(time<90),0-(90-time)*(time<90)+floor(enemynear, const(size.mid.pos.y)*(enemynear, const(size.yscale)))
postype = p2
removetime = 1
bindtime = 1
sprpriority = 1
ownpal = 1
ontop = 1
scale = 320,1

[State 1027, Mira v]
type = Explod
trigger1 = 1
anim = 273
pos = (90-time)*(time<90),0-(90-time)*(time<90)+floor(enemynear, const(size.mid.pos.y)*(enemynear, const(size.yscale)))
postype = p2
removetime = 1
bindtime = 1
sprpriority = 1
ownpal = 1
ontop = 1
scale = 1,320

[State 1027, Mira quadrado]
type = Explod
trigger1 = (enemynear, abs(const(size.head.pos.y)))> 150-time && time < 120
trigger1 = time%4=0
anim = 276
pos = 0, floor(enemynear, const(size.mid.pos.y)* enemynear,const(size.yscale))
;pos = -(facing=-1)*(120-time)/2, floor(enemynear, const(size.mid.pos.y)* enemynear,const(size.yscale))
postype = p2
removetime = 3
bindtime = 1
sprpriority = 1
ownpal = 1
ontop = 1
scale = 120-time,120-time
facing=facing

[State 270, Distance Between Player and the Nearest enemy x]
Type = VarSet
trigger1 = 1
fvar(14) = (EnemyNear(0), Pos X)-(90-time)*(time<90)

[State 270, Distance Between Player and the Nearest enemy y]
Type = VarSet
trigger1 = 1
fvar(13) = (EnemyNear(0), Pos Y -(90-time)*(time<90)) + (EnemyNear(0), const(size.mid.pos.y))*(EnemyNear(0),const(size.yscale))

[State 270, Distance Between Player and the Nearest enemy]
Type = VarSet
trigger1 = 1
fvar(10) = Exp(0.5*ln((((160 + fvar(14)) - (160 + Pos X)) * ((160 + fvar(14)) - (160 + Pos X)) + ((fvar(13) - Pos Y) * (fvar(13) - Pos Y)))))

[State 270, M]; Calcula o Coeficiente ângular da reta
Type = VarSet
trigger1 = fvar(14) + 160 != Pos X + 160
fvar(11) = -((fvar(13) - Pos Y)/((160 + fvar(14)) - (160 + Pos X)))

[State 270, M]; Não existe uma reta (M = 0)
Type = VarSet
trigger1 = fvar(14) + 160 = Pos X + 160
fvar(11) = 0

[State 270, Angle];O ângulo é o arco tangente de M
Type = VarSet
trigger1 = 1
fvar(12) = Atan(fvar(11)) * (180.0/Pi)*facing

[State 3201, 1]
type = AngleSet
trigger1 = 1
value = fvar(12)

[State 3201, Facing]
type = AngleDraw
trigger1 = 1

[State 3203, Done]
type = DestroySelf
trigger1 = root, stateno!=260
;trigger1 = root, stateno!=6260
trigger1 = root, stateno!=9000
trigger2 = root, anim = 265
trigger2 = root, animelem = 2
trigger3 = root, anim = 6265
trigger3 = root, animelem = 2

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Crouching light punch
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
;     so this attack has a lower priority than most others, meaning
;     KFM will get hit instead of trading hits with his opponent if
;     their attack collision boxes (Clsn1) intersect each other's Clsn2
;     boxes at the same time.
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
;poweradd= 15
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 20)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 400


[State 400, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0, 1
channel=1
volume = 255

[State 400, 2]
type = HitDef
trigger1 = !movecontact;Time = 0
attr = C, NA
damage    = 23,0
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = 0
sparkxy = ceil(-10*1.5),ceil(1.5*-42)
hitsound   = 5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1.5,-3

[State 400, 3]
type = CtrlSet
trigger1 = animelem = 1;Time = 5
value = 1

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;---------------------------------------------------------------------------
;Crouching medium punch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
;poweradd= 50
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 20)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 410 + 6000 * (facing = -1)


[State 410, 1]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = AnimElem = 3
value = 0, 2
channel=1
volume = 255

;This is the first hit, triggered on the 3rd element of animation.
[State 410, 2]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 8
attr = C, NA
damage    = 40,0
animtype  = Medium
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = ceil(-10*1.5),ceil(1.5*-42)
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3-4*(AnimElem = 8)
air.velocity = -3,-4

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Forte abaixado
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 4
;poweradd= 110
;velset = 10,0
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 110)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 420


[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0, 3
channel=1
volume = 255

[State 240, 2]
type = HitDef
trigger1 = !movecontact
attr = C, NA 
animtype  = Hard
damage    = 73,10
guardflag = MA
pausetime = 12,12
sparkno = 2
sparkxy = ceil(-10*1.5),ceil(1.5*-60)
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 2
ground.velocity = -1.5, -10
air.velocity = -2,-7
fall = 1
fall.recover = 0
;ground.slidetime = 12
;ground.hittime  = 15
;ground.velocity = -4,-7;3.2 * 2
;air.velocity = -4,-6;3.2 * 2
fall = 1

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching light kick
; CNS difficulty: easy
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
;poweradd= 22
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 20)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 430


[State 430, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0, 1
channel=1
volume = 255

[State 430, 2]
type = HitDef
trigger1 = !movecontact;Time = 0
attr = C, NA
damage    = 28,0
animtype  = Light
hitflag = MD
guardflag = L
pausetime = 12,12
sparkno = 0
sparkxy = ceil(-10*1.5),ceil(1.5*-8)
hitsound   = 5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch medium Kick
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 7
;poweradd= 70
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 20)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 440


[State 440, 2]
type = PlaySnd
trigger1 = animelem = 1
value = 0, 2
channel=1
volume = 255

[State 440, 3]
type = HitDef
trigger1 = animelem = 2 
attr = C, NA
damage    = 35,0
hitflag = MD
guardflag = L
pausetime = 12,12
sparkno = 1
sparkxy = ceil(-5*1.5),ceil(1.5*-10)
hitsound   = 5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,0
air.velocity = -1.2,-3
guard.velocity = -5
;fall = 1

[State 440, 3]
type = HitDef
trigger1 = animelem = 3;Time = 0
attr = C, NA
damage    = 35,0
hitflag = MD
guardflag = L
pausetime = 12,12
sparkno = 1
sparkxy = ceil(-5*1.5),ceil(1.5*-10)
hitsound   = 5,2
guardsound = 6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-3
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 7
;poweradd= 70
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 20)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 450 + 6000 * (facing=-1)


[State 440, 2]
type = PlaySnd
trigger1 = animelem = 1
value = 0, 3
channel=1
volume = 255

;som - atira
[State 200, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 1000, 0
volume = 255

[State 240, 2]
type = projectile
trigger1 = animelem=6;time=40
trigger2 = animelem=7;time=45
trigger3 = animelem=8;time=50
projID = 455
projanim = 455
projremovetime = 20
offset =ceil(35*1.5),0 
velocity = 2.5*1.5, 0 
attr = C, NP
animtype  = hard
damage    = 33,1
hitflag = MFD
guardflag = L
pausetime = 12,12
sparkno = 1
sparkxy = ceil(-5*1.5),ceil(1.5*-10)
hitsound   = 5,2
guardsound = 6,0
ground.type = Trip 
ground.slidetime = 4 
ground.hittime  = 18
ground.velocity = -1,-3
air.type = Low 
air.velocity = -1.3,-3 
getpower  = 10 
givepower = 8 
down.velocity = -2,-6.5
down.hittime = 20 
fall = 1
palfx.add = 250,148 ,43
palfx.mul = 250,148,43
palfx.time = 8 
;projscale=1.5,1.5

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Jump Light Punch
; CNS difficulty: easy
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 11
ctrl = 0
Anim = 600

[State 600, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0, 1
channel=1
volume = 255

[State 600, 2]
type = HitDef
trigger1 = !movecontact;Time = 0
attr = A, NA
damage    = 20,0
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = 0
sparkxy = ceil(-10*1.5),ceil(1.5*-58)
hitsound   = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 600, 3]
type = CtrlSet
trigger1 = Time = 17
value = 1

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1 

[State 4600, remover gyropack]
type = RemoveExplod
trigger1 = animelemtime(5)= 0; && !movecontact
trigger2 = animelemtime(1)= 0; && movecontact
id = 4001

[State 4600, gyropack]
type = Explod
triggerall= var(1) > 0; && numexplod(4001)=0
trigger1 = statetype = A
id = 4001
anim = 4600
pos = 0,0
postype = p1
removetime = 1 + 6 * (animelem = 2)
bindtime = -1
sprpriority = 4
removeongethit = 1
;scale= 1.5,1.5
shadow = -1,0,0

;---------------------------------------------------------------------------
;Jump Strong Punch
; CNS difficulty: easy
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 610
;sprpriority = 3

[State 610, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2
channel=1
volume = 255

[State 610, 3]
type = HitDef
trigger1 = !movecontact;Time = 0
attr = A, NA
damage = 72,0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = 1
sparkxy = ceil(-10*1.5),ceil(1.5*-55)
hitsound   = 5,3
guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1 

[State 4600, remover gyropack]
type = RemoveExplod
trigger1 = animelemtime(5)= 0; && !movecontact
trigger2 = animelemtime(1)= 0; && movecontact
id = 4001

[State 4600, gyropack]
type = Explod
triggerall= var(1) > 0
trigger1 = animelemtime(1)= 0
trigger2 = animelemtime(5)= 0; && !movecontact
;trigger3 = animelemtime(4)= 0 && movecontact
id = 4001
anim = 4610 + (animelem=5); + 2*(animelem=4)
pos = 0,0
postype = p1
removetime = -2;1 + 7 * (animelem = 4)
bindtime = -1
sprpriority = 1
removeongethit = 1
;scale= 1.5,1.5
shadow = -1,0,0

;---------------------------------------------------------------------------
;Jump Strong Punch
; CNS difficulty: easy
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 76
ctrl = 0
anim = 620
sprpriority = 2

[State 610, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 3
channel=1
volume = 255

[State 610, 3]
type = HitDef
trigger1 = !movecontact;Time = 0
attr = A, NA
damage = 95,0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = 1
sparkxy = ceil(-10*1.5),ceil(1.5*-55)
hitsound   = 5,3
guardsound = 6,0
animtype = hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1 

[State 4600, remover gyropack]
type = RemoveExplod
trigger1 = animelemtime(4)= 0; && !movecontact
trigger2 = animelemtime(1)= 0; && movecontact
id = 4001

[State 4600, gyropack]
type = Explod
triggerall= var(1) > 0
trigger1 = animelemtime(1)= 0
trigger2 = animelemtime(4)= 0; && !movecontact
;trigger3 = animelemtime(4)= 0 && movecontact
id = 4001
anim = 4620 + (animelem=4); + 2*(animelem=4)
pos = 0,0
postype = p1
removetime = -2;1 + 7 * (animelem = 4)
bindtime = -1
sprpriority = 1
removeongethit = 1
;scale= 1.5,1.5
shadow = -1,0,0

;---------------------------------------------------------------------------
;Jump Light Kick
; CNS difficulty: easy
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 20
ctrl = 0
anim = 630 * (vel x!=0)+ 240 * (vel x=0)
sprpriority = 2

[State 630, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1
channel=1
volume = 255

[State 630, 2]
type = HitDef
trigger1 = !movecontact;Time = 0
attr = A, NA
damage = 26,0
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = 1
sparkxy = ceil(-5*1.5),ceil(1.5*-35)
hitsound   = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1 

[State 4600, remover gyropack]
type = RemoveExplod
trigger1 = animelemtime(1)= 0
;trigger2 = animelemtime(7)= 0 && anim = 240
id = 4001

[State 4600, gyropack]
type = Explod
triggerall= var(1) > 0
trigger1 = statetype = A
;trigger2 = animelemtime(7)= 0 && anim = 240
id = 4001
anim = 4630 * (vel x!=0)+ 4240 * (vel x=0);+(animelemtime(7)= 0 && anim = 240)
pos = 0,0
postype = p1
removetime = 1; + 6 * (animelem = 6)
bindtime = -1
sprpriority = 4 - 3 * (anim = 240)
removeongethit = 1
;scale= 1.5,1.5
shadow = -1,0,0

;---------------------------------------------------------------------------
;Jump Strong Kick
; CNS difficulty: easy
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 640
sprpriority = 2

[State 640, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2
channel=1
volume = 255

[State 640, 3]
type = HitDef
trigger1 = !movecontact;Time = 0
attr = A, NA
damage    = 70,0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = 1
sparkxy = ceil(-10*1.5),ceil(1.5*-40)
hitsound   = 5,3
guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,-4

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1 

[State 4600, remover gyropack]
type = RemoveExplod
trigger1 = animelemtime(5)= 0; && !movecontact
trigger2 = animelemtime(1)= 0; && movecontact
id = 4001

[State 4600, gyropack]
type = Explod
triggerall= var(1) > 0; && numexplod(4001)=0
trigger1 = statetype = A
id = 4001
anim = 4640
pos = 0,0
postype = p1
removetime = 1 + 6 * (animelem = 2)
bindtime = -1
sprpriority = 4
removeongethit = 1
;scale= 1.5,1.5
shadow = -1,0,0

;---------------------------------------------------------------------------
; Air Strong kick
; CNS difficulty: easy
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 5
;poweradd= 65
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 20)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 650 + 6000*(facing=-1) + 10*(var(1)>0)

[State 200, a]
type = ChangeAnim
triggerall = time = 0 && PrevStateNo != 9000 && var(21)=0
trigger1 = var(1)>0 && command="holdup"
trigger2 = var(1)>0 && command="holddown"
value = 650 + 6000*(facing=-1) + 20*(command="holddown")

[State 240, 4]
type = ChangeState
trigger1 = var(14)>25 && var(1)>0
trigger1 = command="hold_c" && p2bodydist x > -30
value = 260
ctrl = 1

[State 200, a]; AI
type = ChangeAnim
triggerall = time = 0 && PrevStateNo != 9000 && var(21)=1
trigger1 = var(1)>0
value = 660 + 6000*(facing=-1) - 10 *((p2bodydist y)<const(size.head.pos.y)) + 10 * (p2bodydist y > 0)
; + 10 * (abs(p2bodydist y)<abs(const(size.head.pos.y)))+20 * (p2bodydist y>abs(const(size.head.pos.y)))
; + 10 * ((p2bodydist x)+abs(const(size.head.pos.y)>abs(p2bodydist y)) + 10 * (p2bodydist y)>0)
;660 + 6000*(facing=-1) - 10 * (p2bodydist y>ceil(const(size.head.pos.y)) + 10 * (p2bodydist y > p2bodydist x)

[State 240, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 3
channel=1
volume = 255

;som - um tiro
[State 200, 1]
type = PlaySnd
trigger1 = animelem=4
value = 250, 0
volume = 255

[State 1027, shot up]
type = Explod
trigger1 = animelem=4 && (anim = 650 || anim = 6650)
anim = 1502
pos = floor(22*1.5),floor(1.5*-83)
postype = p1
removetime = -2
bindtime = -1
ownpal = 1

[State 1027, shot fwd]
type = Explod
trigger1 = animelem=4 && (anim = 660 || anim = 6660)
anim = 1501
pos = floor(48*1.5),floor(1.5*-60)
postype = p1
removetime = -2
bindtime = -1
ownpal = 1

[State 1027, shot down]
type = Explod
trigger1 = animelem=4 && (anim = 670 || anim = 6670)
anim = 1504
pos = floor(40*1.5),floor(1.5*-35)
postype = p1
removetime = -2
bindtime = -1
ownpal = 1

[State 240, shot up]
type = projectile
trigger1 = animelem=4 && (anim = 650 || anim = 6650)
projanim = 1510
projcancelanim  = 3400
offset =floor(22*1.5),floor(1.5*-83)
velocity = 10, -10 
attr = S, NP 
animtype  = Medium
damage    = 45,10
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = 0,0
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2
palfx.add = 250,148 ,43
palfx.mul = 250,148,43
palfx.time = 8 
;projscale=1.5,1.5
projheightbound = -480,1

[State 240, shot fwd]
type = projectile
trigger1 = animelem=4 && (anim = 660 || anim = 6660)
projanim = 1500
projcancelanim  = 3400
offset =floor(48*1.5),floor(1.5*-60)
velocity = 10, 0 
attr = S, NP 
animtype  = Medium
damage    = 45,10
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = 0,0
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2
palfx.add = 250,148 ,43
palfx.mul = 250,148,43
palfx.time = 8 
;projscale=1.5,1.5
projheightbound = -480,1

[State 240, shot down]
type = projectile
trigger1 = animelem=4 && (anim = 670 || anim = 6670)
projanim = 1560
projcancelanim  = 3400
offset =floor(40*1.5),floor(1.5*-35)
velocity = 10, 10 
attr = S, NP 
animtype  = Medium
damage    = 45,10
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = 0,0
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2
palfx.add = 250,148 ,43
palfx.mul = 250,148,43
palfx.time = 8 
;projscale=1.5,1.5
projheightbound = -480,1

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50 
ctrl = 1

[State 4600, remover gyropack]
type = RemoveExplod
trigger1 = animelemtime(1)= 0; && !movecontact
;trigger2 = animelemtime(5)= 0; && movecontact
id = 4001

[State 4600, gyropack]
type = Explod
triggerall= var(1) > 0
trigger1 = animelemtime(1)= 0
;trigger2 = animelemtime(5)= 0; && !movecontact
;trigger3 = animelemtime(4)= 0 && movecontact
id = 4001
anim = 4650 + (facing=-1)+ 10*(anim=660||anim=6660)+ 20*(anim=670||anim=6670)
pos = 0,0
postype = p1
removetime = -2;1 + 7 * (animelem = 4)
bindtime = -1
sprpriority = 4 - 3 * (anim=6670||anim=6660)
removeongethit = 1
;scale= 1.5,1.5
shadow = -1,0,0

;---------------------------------------------------------------------------
;Kung Fu Throw - Attempt
[Statedef 800]
type    = U
movetype= A
physics = U
juggle  = 0
velset = 0,0
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 20)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 800


[State 800, 1]
type = HitDef
Trigger1 = animelemtime(1)=0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
sprpriority = 1       ;Draw in front of p2
p1facing = ifelse (command = "holdfwd", -1, 1) ;Turn if holding forwards
p2facing = 1          ;Force p2 to face KFM
p1stateno = 810       ;On success, KFM changes to state 810
p2stateno = 820       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
  fall.envshake.time = 6;4
  fall.envshake.freq = (enemynear, const(data.defence))+(enemynear, const(size.height));180
  fall.envshake.ampl = 4;2
;  fall.envshake.phase = envshake_phase (float)

[State 800, 2]
type = ChangeState
Trigger1 = animelemtime(1)=1;AnimTime = 0
Trigger1 = command="hold_y" || command="hold_b"
value = 200 + 200 * (statetype=C) + 10 * (command="hold_y") + 40 * (command="hold_b")

[State 800, 2]
type = ChangeState
Trigger1 = animelemtime(1)=1;AnimTime = 0
Trigger1 = command="hold_z" ^^ command="hold_c"
value = 250 + 200 * (statetype=C) - 30 * (command="hold_z")

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
;     the opponent is not bound, then he might get stuck in his thrown
;     state when his attacker is knocked out of the throw halfway.
; Notes: There is a TargetLifeAdd controller to decrease the opponent's
;     life, and a TargetState controller to change his state to a
;     falling state when KFM lets go of him.
[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 60

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 0
channel=1
volume = 255

[State 810, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 800, 0

[State 810, Bind 1]
type = TargetBind
triggerall = numtarget != 0
trigger1 = AnimElem=1
pos = 32*1.5, -78*1.5

[State 810, Bind 2-4]
type = TargetBind
triggerall = numtarget != 0
trigger1 = AnimElem=2
pos = 28*1.5, -56*1.5

[State 810, Bind 5]
type = TargetBind
triggerall = numtarget != 0
trigger1 = AnimElem=3
pos = 35*1.5, -60*1.5

[State 810, Bind 6]
type = TargetBind
triggerall = numtarget != 0
trigger1 = AnimElem=4
pos = 10*1.5, -90*1.5

[State 810, Bind 7]
type = TargetBind
triggerall = numtarget != 0
trigger1 = AnimElem=5
pos = -27*1.5, -82*1.5

[State 810, Bind 8]
type = TargetBind
triggerall = numtarget != 0
trigger1 = AnimElem=6
pos = -36*1.5, -42*1.5

[State 810, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -120

[State 810, Throw 11]
type = TargetState
trigger1 = AnimElem = 6
value = 821

[State 810, Turn 12]
type = Turn
trigger1 = Animtime=0;Elem = 12

[State 810, Pos 15]
type = PosAdd
trigger1 = AnimElem = 7
x = -10

[State 1027, robo3 som passo]
type = PlaySnd
trigger1 = animtime =0
trigger2 = animelem = 3
value = 20, 0
freqmul = 1 -  0.02 * (animelem = 3);
volume = 64 - (60*(animelem = 3))
;Lowpriority=(animelem = 2 || animelem = 3);1
;channel=2

[State 810, Vrrr Sound]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
value = 0, 3-2*(AnimElem = 7)

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = animelem = 2 && p2stateno!=820
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

[State 820, 1]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

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
velset = 2.8,4
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

;---------------------------------------------------------------------------
;Interrogation mode - Attempt
[Statedef 850]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 20)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 800


[State 800, 1]
type = HitDef
Trigger1 = animelemtime(1)=0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
sprpriority = 1       ;Draw in front of p2
p1facing = ifelse (command = "holdfwd", 1, -1) ;Turn if holding forwards
p2facing = 1          ;Force p2 to face KFM
p1stateno = 860       ;On success, KFM changes to state 810
p2stateno = 880       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
numhits = 0

[State 800, 2]
type = ChangeState
Trigger1 = animelemtime(1)=1;AnimTime = 0
Trigger1 = command="hold_y" || command="hold_b"
value = 200 + 200 * (statetype=C) + 10 * (command="hold_y") + 40 * (command="hold_b")

[State 800, 2]
type = ChangeState
Trigger1 = animelemtime(1)=1;AnimTime = 0
Trigger1 = command="hold_z" ^^ command="hold_c"
value = 250 + 200 * (statetype=C) - 30 * (command="hold_z")

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Kung Fu Throw - Throwing the opponent
[Statedef 860]
type    = S
movetype= A
physics = N
anim = 850
poweradd = 60

[State 3050, Super D]
type = NotHitBy
trigger1 = 1
value = SAC
time = 1

[State 1027, interrogation mode]
type = Explod
trigger1 = (time%2) = 0
anim = 801
id=801
pos = (var(10)!=1)*160, 209 - 8*(numhelper(2700)=1)
;pos = (var(10)!=1)*160, 225
postype = Left
removetime = 2
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 1027, Cursor]
type = Explod
trigger1 = (time%30) = 0
anim = 3070
id = 3070
pos = (var(10)!=1)*160+140, 209 - 8*(numhelper(2700)=1)
;pos = (var(10)!=1)*160+140, 225
postype = Left
removetime = -2
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 1
channel=1
volume = 255

[State 810, tempo]
type = varset
trigger1 = time = 0
var(16) = 90

[State 810, tempo]
type = varadd
trigger1 = (time%15) = 0
v=16
value = -5

[State 810, Bind 1]
type = TargetBind
triggerall = numtarget != 0
trigger1 = (time%5)=0 && anim = 850
;trigger2 = anim = 420 && animelem = 6
;trigger2 = var(16)> 0
pos = 32*1.5,-78*1.5

[State 810, Bind 1]
type = TargetBind
triggerall = numtarget != 0
trigger1 = anim = 420 && animelem = 6
pos = 22*1.5,-22*1.5

[State 810, State End]
type = Changeanim
triggerall = anim!=420
trigger1 = var(16) <=0
trigger2 = p2stateno!=870 && p2stateno!=880; && p2stateno!=874
trigger3 = target, life < 10
value = 420

[State 810, State End]
type = Changestate
trigger1 = anim=420
trigger1 = animtime=0
value = 0
ctrl = 1

[State 240, 2]
type = HitDef
trigger1 = anim = 420 && animelem = 6
attr = S, NT 
animtype  = Hard
damage    = 30,10
guardflag = MA
pausetime = 12,12
sparkno = 3
sparkxy = ceil(-10*1.5),ceil(1.5*-60)
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 2
ground.velocity = -1.5, -10
air.velocity = -2,-7
fall = 1
fall.recover = 0

[State 240, 2]
type = HitDef
triggerall = anim = 850
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(6) = 0
;trigger1 = (time%15)!=0
;trigger1 = (time%30)=0
attr = S, NT 
animtype  = Hard
damage    = 12,1;15,1
guardflag = MA
pausetime = 1,5
sparkno = 2
sparkxy = ceil(-10*1.5),ceil(1.5*-60)
hitsound   = 5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0,0
air.velocity = 0,0
kill=0
p2stateno=870

[State 240, 2]
type = HitDef
triggerall = anim = 850
trigger1 = animelemtime(4) = 0
;trigger1 = (time%15)!=0
;trigger1 = (time%30)=0
attr = S, NT 
animtype  = Hard
damage    = 12,1;15,1
guardflag = MA
pausetime = 1,5
sparkno = 2
sparkxy = ceil(-10*1.5),ceil(1.5*-80)
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0,0
air.velocity = 0,0
kill=0
p2stateno=870

[State 860, computer bip]
type = playsnd
trigger1=time=0
value=270,0
volume=64

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw
[Statedef 870]
type    = A
movetype= H
physics = N
velset = 0,0

[State 821, 4] ;
type = SelfState
trigger1 = enemynear, anim = 420 && animelem = 7
value = 5050

[State 820, 1]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

;Thrown by Kung Fu Throw
[Statedef 880]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
;Trigger1 = enemynear, animelemtime(1) = 0
value = 870

[State 3050, Super D]
type = NotHitBy
trigger1 = time = 0
value = SAC
time = 20 

[State 820, 1]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

;---------------------------------------------------------------------------
;Auto-9 shot
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
;poweradd= 110
velset = 0,0
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 100)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 1000, 7]
type = ChangeState
trigger1 = var(21)=1 && var(2)=2 && p2bodydist y = 0
value = 1500

;------AI -----start-----------
[State 270, Distance Between Player and the Nearest enemy y]
Type = VarSet
trigger1 = animelemtime(1) = 0
var(9) = enemynear,ceil(const(size.head.pos.y)*1.5)

[State 1000, 1]
type = VarSet
triggerall = var(21) = 1 && animelem = 1
trigger1 = p2statetype = A
trigger1 = abs(p2bodydist y - p2bodydist x)<var(9)
v = 2
value = 1

[State 1000, 2]
type = VarSet
triggerall = var(21) = 1 && animelem = 1
trigger1 = p2statetype = A
trigger1 = (p2bodydist x)< 45*1.5;30;abs(const(size.head.pos.y));var(9)
trigger1 = (p2bodydist y)< const(size.head.pos.y)
v = 2
value = 2

;------AI -----end-----------

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 1000 + 10 * var(2) + 5 * (facing=-1)


[State 1000, 1]; virar 
type = Turn 
trigger1 = animelemtime(1) = 0 
trigger1 = p2dist X < -5 

[State 1000, 1]
type = PlaySnd
trigger1 = Animelem = 1;2
value = 0, 2
channel=1
volume = 255

;som - atira
[State 200, 1]
type = PlaySnd
trigger1 = Animelem = 6
value = 1000, 0
volume = 128

[State 1027, Spark]
type = Explod
triggerall = var(2)=0
trigger1 = animelem=6
trigger2 = animelem=7
trigger3 = animelem=8
anim = 1501
pos = floor(45*1.5),-floor(60*1.5)
postype = p1
removetime = -2
bindtime = -1
ownpal = 1
sprpriority = 3
supermovetime =50
;scale = 1+5*(time!=1),1+5*(time!=0)

[State 1027, Spark]
type = Explod
triggerall = var(2)=1
trigger1 = animelem=6
trigger2 = animelem=7
trigger3 = animelem=8
anim = 1501 + var(2)
pos = floor(23*1.5),-floor(83*1.5)
postype = p1
removetime = -2
bindtime = -1
ownpal = 1
sprpriority = 3
supermovetime =50
;scale = 1+5*(time!=1),1+5*(time!=0)

[State 1027, Spark]
type = Explod
triggerall = var(2)=2
trigger1 = animelem=6
trigger2 = animelem=7
trigger3 = animelem=8
anim = 1501 + var(2)
pos = floor(10*1.5),-floor(91*1.5)
postype = p1
removetime = -2
bindtime = -1
ownpal = 1
sprpriority = 3
supermovetime =50
;scale = 1+5*(time!=1),1+5*(time!=0)

[State 240, 2]
type = projectile
triggerall = var(2)=0
trigger1 = animelem=6
trigger2 = animelem=7
trigger3 = animelem=8
projanim = 1500
ProjID = 1500
projcancelanim  = 3400
offset =floor(45*1.5),-floor(60*1.5)
velocity = 5, 0
attr = S, SP 
animtype  = Medium
damage    = 25,5
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = 0,0
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2
palfx.add = 250,148 ,43
palfx.mul = 250,148,43
palfx.time = 8 
;projscale=1.5,1.5
projheightbound = -480,1

[State 240, 2]
type = projectile
triggerall = var(2)=1
trigger1 = animelem=6
trigger2 = animelem=7
trigger3 = animelem=8
projanim = 1510
ProjID = 1500
projcancelanim  = 3400
offset =floor(23*1.5),-floor(83*1.5)
velocity = 5, -5
attr = S, SP 
animtype  = Medium
damage    = 25,5
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = 0,0
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2
palfx.add = 250,148 ,43
palfx.mul = 250,148,43
palfx.time = 8 
;projscale=1.5,1.5
projheightbound = -480,1

[State 240, 2]
type = projectile
triggerall = var(2)=2
trigger1 = animelem=6
trigger2 = animelem=7
trigger3 = animelem=8
projanim = 1520
ProjID = 1500
projcancelanim  = 3400
offset =floor(10*1.5),-floor(91*1.5)
velocity = 0, -5
attr = S, SP 
animtype  = Medium
damage    = 25,5
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = 0,0
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2
palfx.add = 250,148 ,43
palfx.mul = 250,148,43
palfx.time = 8 
;projscale=1.5,1.5
projheightbound = -480,1

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; auto 9 - light
[Statedef 1010]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 0

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 1000

;---------------------------------------------------------------------------
; auto 9 - medium
[Statedef 1015]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 1

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 1000

;---------------------------------------------------------------------------
; auto 9 - hard
[Statedef 1020]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 2

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 1000 + 500 * (var(21)=1 && enemynear, vel x< 0)

;---------------------------------------------------------------------------
; auto 9 - light
[Statedef 1025]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 0

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 1000

;---------------------------------------------------------------------------
; Deflection Shot
[Statedef 1500]
type    = S
movetype= A
physics = S
juggle  = 4
;poweradd= 110
velset = 0,0
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 100)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

;[State 1000, 2]
;type = VarSet
;triggerall = var(21) = 1 && animelem = 1
;trigger1 = p2statetype = A
;v = 2
;value = 2 + 1 * (abs(p2bodydist y) < p2bodydist x)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 1400 + 10 * var(2) + 5 * (facing=-1)

[State 1000, 1]; virar 
type = Turn 
trigger1 = animelemtime(1) = 0 
trigger1 = p2dist X < -5 

[State 1000, 1]
type = PlaySnd
trigger1 = Animelem = 2
value = 0, 3
channel=1
volume = 255

;som - atira
[State 200, 1]
type = PlaySnd
trigger1 = Animelem = 8
value = 1000, 0
volume = 128

[State 1027, Spark]
type = Explod
triggerall = var(2)=0
trigger1 = animelem=9
trigger2 = animelem=7
trigger3 = animelem=8
anim = 1501
pos = floor(45*1.5),-floor(60*1.5)
postype = p1
removetime = -2
bindtime = -1
ownpal = 1
sprpriority = 3
supermovetime =50
;scale = 1+5*(time!=1),1+5*(time!=0)

[State 1027, Spark]
type = Explod
triggerall = var(2)=1
trigger1 = animelem=9
trigger2 = animelem=7
trigger3 = animelem=8
anim = 1501 + var(2)
pos = floor(23*1.5),-floor(83*1.5)
postype = p1
removetime = -2
bindtime = -1
ownpal = 1
sprpriority = 3
supermovetime =50
;scale = 1+5*(time!=1),1+5*(time!=0)

[State 1027, Spark]
type = Explod
triggerall = var(2)=2
trigger1 = animelem=9
trigger2 = animelem=7
trigger3 = animelem=8
anim = 1501 + var(2)
pos = floor(10*1.5),-floor(91*1.5)
postype = p1
removetime = -2
bindtime = -1
ownpal = 1
sprpriority = 3
supermovetime =50
;scale = 1+5*(time!=1),1+5*(time!=0)

[State 240, 2]
type = projectile
triggerall = var(2)=0
trigger1 = animelem=9
trigger2 = animelem=7
trigger3 = animelem=8
projanim = 1530
ProjID = 1500
projcancelanim  = 3400
offset =floor(45*1.5),-floor(60*1.5)
velocity = 4*1.5, 0
attr = SC, SP 
animtype  = Medium
damage    = 25,5
hitflag = MADF
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = 0,0
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2
palfx.add = 250,148 ,43
palfx.mul = 250,148,43
palfx.time = 8 
;projscale=1.5,1.5
projheightbound = -480,1
projremovetime = 30
accel = 0, .8
;velmul = 1.5,1

[State 240, 2]
type = projectile
triggerall = var(2)=1
trigger1 = animelem=9
trigger2 = animelem=7
trigger3 = animelem=8
projanim = 1540
ProjID = 1500
projcancelanim  = 3400
offset =floor(23*1.5),-floor(83*1.5)
velocity = 4*1.5, -4*1.5
attr = S, SP 
animtype  = Medium
damage    = 25,5
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = 0,0
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2
palfx.add = 250,148 ,43
palfx.mul = 250,148,43
palfx.time = 8 
;projscale=1.5,1.5
projheightbound = -480,1
projremovetime = 30
accel = .4, .8;.4
;velmul = 1.5,1

[State 240, 2]
type = projectile
triggerall = var(2)=2
trigger1 = animelem=9
trigger2 = animelem=7
trigger3 = animelem=8
projanim = 1520;1550
ProjID = 1500
projcancelanim  = 3400
projremovetime=abs(floor((screenpos y)/6))
offset =floor(10*1.5),-floor(91*1.5)
velocity = 0, -4*1.5
attr = S, SP 
animtype  = Medium
damage    = 25,5
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = 0,0
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2
palfx.add = 250,148 ,43
palfx.mul = 250,148,43
palfx.time = 8 
;projscale=1.5,1.5
projheightbound = -480,1
;projremovetime = 30
;accel = .8,0
;;velmul = 1.5,1

[State 1027, plot trajectory]
type = Explod
trigger1 = time = 0
trigger2 = (time%15) = 0
anim = 1430
pos = (var(10)!=1)*160+(var(10)=1)*16, 201
postype = Left
removetime = 15
id = 1430
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 1027, Cursor]
type = Explod
trigger1 = time = 0
trigger2 = (time%30) = 0; && numexplod(274)=1
anim = 275
pos = (var(10)!=1)*160+123+(var(10)=1)*16, 201
postype = Left
removetime = 15
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 1027, Mira quadrado 1 fraco]
type = Explod
trigger1 = time=0 && var(2)=0
trigger2 = time=1 && var(2)=0
trigger3 = time=2 && var(2)=0
anim = 272 + (time=1) + 4 * (time=2) 
pos = floor(65*1.5),-floor(60*1.5)
postype = p1
removetime = 35
bindtime = 1
sprpriority = 1
ownpal = 1
ontop = 1
scale = 1+5*(time!=1),1+5*(time!=0)

[State 1027, Mira quadrado 2 fraco]
type = Explod
trigger1 = time=16 && var(2)=0
trigger2 = time=17 && var(2)=0
trigger3 = time=18 && var(2)=0
anim = 272 + (time=17) + 4 * (time=18) 
pos = floor(85*1.5),-floor(45*1.5)
postype = p1
removetime = 35
bindtime = 1
sprpriority = 1
ownpal = 1
ontop = 1
scale = 1+5*(time!=17),1+5*(time!=16)

[State 1027, Mira quadrado 1 medio]
type = Explod
trigger1 = time=0 && var(2)=1
trigger2 = time=1 && var(2)=1
trigger3 = time=2 && var(2)=1
anim = 272 + (time=1) + 4 * (time=2) 
pos = 62,-146;ceil(58*1.5),-floor(105*1.5)
postype = p1
removetime = 45
bindtime = 1
sprpriority = 1
ownpal = 1
ontop = 1
scale = 1+5*(time!=1),1+5*(time!=0)

[State 1027, Mira quadrado 2 medio]
type = Explod
trigger1 = time=6 && var(2)=1
trigger2 = time=7 && var(2)=1
trigger3 = time=8 && var(2)=1
anim = 272 + (time=7) + 4 * (time=8) 
pos = 95,-156;ceil(58*1.5),-floor(105*1.5)
postype = p1
removetime = 40
bindtime = 1
sprpriority = 1
ownpal = 1
ontop = 1
scale = 1+5*(time!=7),1+5*(time!=6)

[State 1027, Mira quadrado 3 medio]
type = Explod
trigger1 = time=16 && var(2)=1
trigger2 = time=17 && var(2)=1
trigger3 = time=18 && var(2)=1
anim = 272 + (time=17) + 4 * (time=18) 
pos = 156,-142;ceil(98*1.5),-floor(115*1.5)
;pos = ceil(128*1.5),-floor(110*1.5)
postype = p1
removetime = 35
bindtime = 1
sprpriority = 1
ownpal = 1
ontop = 1
scale = 1+5*(time!=17),1+5*(time!=16)

[State 1027, Mira quadrado 1 forte]
type = null;Explod
trigger1 = time=0 && var(2)=2
trigger2 = time=1 && var(2)=2
trigger3 = time=2 && var(2)=2
anim = 272 + (time=1) + 4 * (time=2) 
pos = ceil(10*1.5),-floor(91*1.5)
postype = p1
removetime = ceil((screenpos y)/4);35
bindtime = 1
sprpriority = 1
ownpal = 1
ontop = 1
scale = 1+5*(time!=1),1+5*(time!=0)

[State 1027, Mira quadrado 2 forte]
type = Explod
trigger1 = time=16 && var(2)=2
trigger2 = time=17 && var(2)=2
trigger3 = time=18 && var(2)=2
anim = 272 + (time=17) + 4 * (time=18) 
pos = ceil(screenpos x)+20*(facing),5;-ceil(screenpos y)+5;ceil(45*1.5),-ceil(screenpos y);-floor(132*1.5)
postype = left;p1
removetime = ceil((screenpos y)/4);35
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1
scale = 1+5*(time!=17),1+5*(time!=16)

[State 1027, atinge parede fraco]
type = Explod
triggerall = numproj!=0 && var(2)=0
trigger1 = time=30;12
trigger2 = time=36;18
anim = F0
pos = floor((85-(time=30)*20)*1.5),-floor((((time=30)*15)+45)*1.5)
postype = p1
removetime = -2
bindtime = 1
sprpriority = 2
ownpal = 1

[State 1027, atinge parede forte]
type = null;Explod
triggerall = numproj!=0 && var(2)=2
trigger1 = time=28;10
trigger2 = time=36;18
anim = F0
pos = floor((10+(time=36)*35)*1.5),-floor((((time=36)*41)+91)*1.5)
postype = p1
removetime = -2
bindtime = 1
sprpriority = 2
ownpal = 1

[State 1027, atinge parede medio]
type = Explod
triggerall = numproj!=0 && var(2)=1
trigger1 = time=33;12
trigger2 = time=36;18
trigger3 = time=41;18
anim = F0
pos = 62*(time=33)+95*(time=36)+156*(time=41),-146*(time=33)-156*(time=36)-142*(time=41)
;pos = floor((65+(time!=34)*40+(time=44)*25)*1.5),-floor(((time=44)*10+(time=40)*15+102)*1.5)
postype = p1
removetime = -2
bindtime = 1
sprpriority = 2
ownpal = 1

[State 1027, impact Sound]
type = PlaySnd
triggerall = numproj!=0
trigger1 = time=30 && var(2)=0
trigger2 = time=36 && var(2)=0;!=1
;trigger3 = time=28 && var(2)=2
trigger4 = time=33 && var(2)=1
trigger5 = time=36 && var(2)=1
trigger6 = time=41 && var(2)=1
value = 1400, 0
channel=1
volume = 255

[State 3200, 1];------ricochete
type = Helper
trigger1 = Numhelper(1570)=0 && var(2)=2 && animelem=7
name = "ricochete"
ID = 1570
pos = floor(10*1.5),-floor(91*1.5)
postype = p1
stateno = 1570
keyctrl = 0

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 1500, computer bip]
type = playsnd
trigger1=time=0
value=270,0
volume=64

;---------------------------------------------------------------------------
; auto 9 - light
[Statedef 1510]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 0

[State 1000, 7]; ai
type = ChangeState
trigger1 = p2bodydist x > 90 * 1.5
trigger1=var(21)=1
value = 1000

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 1500

;---------------------------------------------------------------------------
; auto 9 - medium
[Statedef 1515]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 1

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 1500

;---------------------------------------------------------------------------
; auto 9 - hard
[Statedef 1520]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 2

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 1500

;---------------------------------------------------------------------------
; auto 9 - light
[Statedef 1525]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 0

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 1500

;---------------------------------------------------------------------------
; Ricochete
[Statedef 1570]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
ctrl = 0
anim= 1570
velset=0,-4*1.5

[State 3000, 4]
type = Changeanim
trigger1 = vel y !=0
value = 1570

[State 3000, 4]
type = VelSet
trigger1 = screenpos y <=0
y = 0

[State 3000, 4]
type = posadd
trigger1 = screenpos y <=0
y = abs(screenpos y)

[State 240, 2]
type = projectile
;triggerall = var(2)=2
trigger1 = animelem=2 && root, numprojid(1500)>0;root, 
trigger2 = animelem=3 && root, numprojid(1500)>1
trigger3 = animelem=4 && root, numprojid(1500)>2
projanim = 1560;1530;1550
ProjID = 1500
projcancelanim  = 3400
;offset =floor(10*1.5),-floor(91*1.5)
velocity = 4, 4;*1.5
attr = S, SP 
animtype  = Medium
damage    = 25,5
hitflag = MADF
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = 0,0
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2
palfx.add = 250,148 ,43
palfx.mul = 250,148,43
palfx.time = 8 
;projscale=1.5,1.5
projheightbound = -480,1
;projremovetime = 30
accel = .4,.4
;velmul = 1.5,1

[State 1027, atinge parede forte]
type = Explod
trigger1 = animelem=2 && root, numprojid(1500)>0;root, 
trigger2 = animelem=3 && root, numprojid(1500)>1
trigger3 = animelem=4 && root, numprojid(1500)>2
anim = F0
pos = 0,0;floor((10+(time=36)*35)*1.5),-floor((((time=36)*41)+91)*1.5)
postype = p1
removetime = -2
bindtime = 1
sprpriority = 2
ownpal = 1

[State 1027, impact Sound]
type = PlaySnd
trigger1 = animelem=2 && root, numprojid(1500)>0;root, 
trigger2 = animelem=3 && root, numprojid(1500)>1
trigger3 = animelem=4 && root, numprojid(1500)>2
value = 1400, 0
channel=1
volume = 255

[State 3203, Done]
type = DestroySelf
trigger1 = animelem = 4

;---------------------------------------------------------------------------
; Cyber uppercut
[Statedef 2000]
type    = S
movetype= A
physics = N;S
;juggle  = 4
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 100)                    ;Power to add (Def: 0)
;sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 2000 + 10 * var(2)

[State 1000, 1]; virar 
type = Turn 
trigger1 = animelemtime(1) = 0 
trigger1 = p2dist X < -5 

[State 200, a]
type = ChangeAnim
triggerall = p2bodydist x < 15*1.5
triggerall = AnimElem = 4, < 0
trigger1 = anim = 2000
trigger2 = anim = 2010
trigger3 = anim = 2020
value = anim + 5

[State 240, 2]
type = HitDef
trigger1 = !movecontact
trigger2 = animelem = 9 && anim = 2025 
trigger3 = animelem = 12 && anim = 2020 
attr = S, SA 
animtype  = Medium
damage    = 73,10
;hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = 3
sparkxy = ceil(-10*1.5),ceil(1.5*-60)
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 2
ground.velocity = -2-3*(var(2)=0),-4 * (3-var(2))-2 * (var(2)!=0)
air.velocity = -2-3*(var(2)=0),-4 * (3-var(2))-1 * (var(2)!=0)
fall = 1
fall.recover = 0

[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0, 2
channel=1
volume = 255

[State 3000, 4]
type = VelSet
trigger1 = (anim = 2010 || anim = 2020) && animelem=4
trigger2 = (anim = 2015 || anim = 2025) && animelem=1
y = -5.5; * var(2)
x = 1;var(2);.5 + 

[State 450, 1]; dhalsim by blackjack
type=velset
triggerall=(time%2)=0 && anim!=2030; = [2,20]
trigger1 = animelem=2
trigger2 = animelem=1
;trigger1=time = [2,20]
x=3 + var(2)

[State 2000, Jatos]
type = Explod
triggerall= anim!=2030; = [2,20]
trigger1 = animelem=1
trigger2 = animelem=2
anim = 51
pos = floor(10*1.5),floor(10*1.5)
postype = p1
removetime = -2
bindtime = -1
sprpriority = -2
;scale= 1.5,1.5
removeongethit = 1

[State 450, 3] 
type = MakeDust 
trigger1 = Vel x != 0 && gametime % 2
trigger1 = pos y = 0
pos = -5,-2 
spacing = 1 

[State 450, 1]; dhalsim by blackjack
type=StateTypeSet
trigger1 = vel y != 0
;physics = A
statetype = A

[State 450, 1]; dhalsim by blackjack
type=StateTypeSet
trigger1 = anim != 2000
trigger1 = animelem = 4
trigger2 = anim = 2000
trigger2 = animelem = 7
physics = S

[State 450, 1]; dhalsim by blackjack
type=StateTypeSet
trigger1 = anim = 2020
trigger1 = animelem = 9
trigger2 = anim = 2010
trigger2 = animelem = 13
trigger3 = anim = 2000
trigger3 = animelem = 7
trigger4 = anim = 2025
trigger4 = animelem = 6
trigger5 = anim = 2015
trigger5 = animelem = 10
trigger6 = anim = 2005
trigger6 = animelem = 4
movetype = I

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = pos y < 0
y = .4 - .1 *(anim = 2025 || anim = 2020)

[State 200, a]
type = ChangeAnim
triggerall = anim = 2000 || anim = 2010 || anim = 2020
triggerall = var(21)=1 && (enemy,statetype=A)
trigger1 = animelemtime(3)=30
trigger2 = p2bodydist x < 15*1.5
value = 2025;2015

; --- pouso

[State 3000, 4]
type = changeanim
triggerall = pos y > 0 
trigger1 = (anim = 2010 || anim = 2020); && animelem=4
trigger2 = (anim = 2015 || anim = 2025); && animelem=1
value = 2030

[State 1027, robo3 som passo]
type = PlaySnd
trigger1 = anim=2030
trigger1 = animelem=1
value = 20, 0
freqmul = 1 -  0.02 * ((time % 48) =0);
volume = 124 - (60*((time % 48) =0))
channel=2

[State 821, 1]
type = velset
Trigger1 = pos y > 0
y = 0
x = 0

[State 821, 1]
type = posset
Trigger1 = pos y > 0
y = 0

[State 1000, 7]
type = ChangeState
trigger2 = animelem = 9 && anim = 2025 
trigger1 = animelem = 12 && anim = 2020 
value = 2005

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0 + 50 * (pos y != 0)
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 2005]
type    = A
movetype= A
physics = N;S
;juggle  = 4
ctrl = 0

[State 240, 2]
type = HitDef
trigger1 = !movecontact
attr = A, SA 
animtype  = Medium
damage    = 73,10
;hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = 3
sparkxy = ceil(-10*1.5),ceil(1.5*-60)
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 2
ground.velocity = -2-4*(var(2)=0),-4 * (3-var(2))-2
air.velocity = -2-4*(var(2)=0),-4 * (3-var(2))-1
fall = 1
fall.recover = 0

[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0, 2
channel=1
volume = 255

[State 450, 1]; dhalsim by blackjack
type=StateTypeSet
trigger1 = vel y != 0
;physics = A
statetype = A

[State 450, 1]; dhalsim by blackjack
type=StateTypeSet
trigger1 = anim = 2020
trigger1 = animelem = 9
trigger2 = anim = 2010
trigger2 = animelem = 13
trigger3 = anim = 2000
trigger3 = animelem = 7
trigger4 = anim = 2025
trigger4 = animelem = 6
trigger5 = anim = 2015
trigger5 = animelem = 10
trigger6 = anim = 2005
trigger6 = animelem = 4
movetype = I

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = pos y < 0
y = .4 - .1 *(anim = 2025 || anim = 2020)

[State 200, a]
type = ChangeAnim
triggerall = anim = 2000 || anim = 2010 || anim = 2020
triggerall = var(21)=1 && (enemy,statetype=A)
trigger1 = animelemtime(3)=30
trigger2 = p2bodydist x < 15*1.5
value = 2025;2015

; --- pouso

[State 3000, 4]
type = changeanim
triggerall = pos y > 0 
trigger1 = (anim = 2010 || anim = 2020); && animelem=4
trigger2 = (anim = 2015 || anim = 2025); && animelem=1
value = 2030

[State 1027, robo3 som passo]
type = PlaySnd
trigger1 = anim=2030
trigger1 = animelem=1
value = 20, 0
freqmul = 1 -  0.02 * ((time % 48) =0);
volume = 124 - (60*((time % 48) =0))
channel=2

[State 821, 1]
type = velset
Trigger1 = pos y > 0
y = 0
x = 0

[State 821, 1]
type = posset
Trigger1 = pos y > 0
y = 0

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0 + 50 * (pos y != 0)
ctrl = 1

;---------------------------------------------------------------------------
; Cyber uppercut - light
[Statedef 2010]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 0

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 2000

;---------------------------------------------------------------------------
; Cyber uppercut - medium
[Statedef 2015]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 1

[State 1000, 7]; ai
type = ChangeState
trigger1=var(21)=1
trigger1 = p2bodydist y * 1.5< -50
value = 1015 - 5 * ((p2bodydist x)/2 > abs(p2bodydist y)) + 5 * (abs(p2bodydist y)/2 > p2bodydist x)

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 2000

;---------------------------------------------------------------------------
; Cyber uppercut - hard
[Statedef 2020]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 2

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 2000

;---------------------------------------------------------------------------
; auto 9 - light
[Statedef 2025]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 0

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 2000

;---------------------------------------------------------------------------
; Robo Fall 
[Statedef 2500]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 100)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 2500; + 10 * var(2)

[State 1000, 1]; virar 
type = Turn 
trigger1 = animelemtime(1) = 0;anim = 2500 && 
trigger1 = p2dist X < -5 

[State 3000, 4]
type = VelSet
trigger1 = anim = 2500 && animelemtime(1) = 0
y = -5.5; * var(2)
x = 1 + var(2)*1.5

[State 4600, remover gyropack]
type = RemoveExplod
trigger1 = numexplod(4001)!=0;animelemtime(1)= 0; && movecontact
id = 4001

[State 2000, Jatos]
type = Explod
trigger1 = animelem = 1 
anim = 51
pos = 0,floor(10*1.5)
postype = p1
removetime = -2
bindtime = -1
sprpriority = -2
;scale= 1.5,1.5
removeongethit = 1

[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0, 2
channel=1
volume = 255

[State 240, 2]
type = HitDef
trigger1 = !movecontact
trigger1 = (time%2) != 0
attr = A, SA 
hitflag = AF
animtype  = Medium
damage    = 1,1
guardflag = MA
pausetime = 2,2
sparkno = 3
sparkxy = ceil(-10*1.5),ceil(1.5*-60)
hitsound   = 5,2
guardsound = 6,0
p1stateno = 2550
p2stateno = 2560

[State 240, 2]
type = HitDef
trigger1 = !movecontact
trigger1 = (time%2) = 0
attr = A, SA 
hitflag = M
animtype  = Medium
damage    = 73,10
guardflag = MA
pausetime = 12,12
sparkno = 3
sparkxy = ceil(-10*1.5),ceil(1.5*-60)
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 2
ground.velocity = 0,0
air.velocity = 0,0
fall = 1
fall.recover = 0

[State 1000, 7]
type = ChangeAnim
trigger1 = anim = 2500 && movecontact
value = 620

[State 1000, 7]
type = ChangeState
trigger1 = pos y > 0
value = 50 
ctrl = 1

;---------------------------------------------------------------------------
; Robo Fall - light
[Statedef 2510]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 0

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 2500

;---------------------------------------------------------------------------
; Robo Fall - medium
[Statedef 2515]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 1

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 2500

;---------------------------------------------------------------------------
; Robo Fall - hard
[Statedef 2520]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 2

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 2500

;---------------------------------------------------------------------------
; Robo Fall - light
[Statedef 2525]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 0

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 2500

;---------------------------------------------------------------------------
[Statedef 2550]
type    = A
movetype= A
physics = N
anim = 2550
poweradd = 60
velset =0,0

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 2
channel=1
volume = 255

[State 810, Bind 1]
type = TargetBind
triggerall = numtarget != 0
trigger1 = AnimElem = 1
pos = 32*1.5, -78*1.5

[State 810, Bind 2-4]
type = TargetBind
triggerall = numtarget != 0
trigger1 = AnimElem=3
pos = 28*1.5, -56*1.5

[State 810, Bind 5]
type = TargetBind
triggerall = numtarget != 0
trigger1 = AnimElem=4
pos = 35*1.5, -60*1.5

[State 810, Bind 6]
type = TargetBind
triggerall = numtarget != 0
trigger1 = AnimElem=5
pos = 10*1.5, -90*1.5

[State 810, Bind 7]
type = TargetBind
triggerall = numtarget != 0
trigger1 = AnimElem=6
pos = -27*1.5, -82*1.5

[State 810, Bind 8]
type = TargetBind
triggerall = numtarget != 0
trigger1 = AnimElem=7
;trigger1 = (time%5)=0;p2dist y != -42*1.5
pos = -36*1.5, -42*1.5

[State 810, Throw 11]
type = TargetState
trigger1 = AnimElem = 11
value = 2565

[State 810, Turn 12]
type = Turn
trigger1 = Animtime=0;Elem = 12

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = vel y > 0
y = .4

[State 810, Pos 15]
type = velset;PosAdd
trigger1 = AnimElem = 11
y = 5

[State 810, Pos 15]
type = turn
trigger1 = pos y >= 0

[State 810, Pos 15]
type = velset
trigger1 = pos y >= 0
y = -5
x = -2

[State 450, 1]; dhalsim by blackjack
type=changestate;StateTypeSet
trigger1 = pos y > 0;animelem = 11
value = 50;physics = A
ctrl=0;statetype = A

;---------------------------------------------------------------------------
[Statedef 2560]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2560

[State 821, 4] ;
type = SelfState
trigger1 = time > 40
value = 50

[Statedef 2565]
type    = A
movetype= H
physics = N
velset = 0,5
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

[State 810, Hurt 11]
type = LifeAdd
trigger1 = pos y > 0;
value = -146;180

[State 810, Pos 15]
type = velset;PosAdd
trigger1 = Pos Y >= 0
x = 5

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;---------------------------------------------------------------------------
;Explosive leg charge
[Statedef 2600]
type    = S
movetype= A
physics = S
juggle  = 4
;poweradd= 110
velset = 0,0
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 100)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 2600 + 5 * (facing=-1)

[State 1000, 1]; virar 
type = Turn 
trigger1 = animelemtime(1) = 0 
trigger1 = p2dist X < -5 

[State 1000, 1]
type = PlaySnd
trigger1 = Animelem = 1;2
value = 0, 2
channel=1
volume = 255

;som - saca explosivo
[State 200, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 190, 0
volume = 255

[State 1027, Spark]
type = Explod
;triggerall = var(2)=0
trigger1 = animelem=8
anim = 2740
pos = 0,-floor(25*1.5)
postype = p1
removetime = -2
bindtime = -1
ownpal = 1
sprpriority = 3

[State 3200, 1]
type = Helper
trigger1 = animelem = 17
trigger1 = Numhelper(2700)=0
name = "carga"
ID = 2700
pos = floor(45*1.5),-floor(60*1.5)
postype = p1
stateno = 2700
keyctrl = 0
size.ground.back = 10
size.ground.front = 10
size.air.back = 10
size.air.front = 10
size.head.pos = 0,-15
size.mid.pos = 0,-9

[State 2600, prepara mira]
type = VarSet
triggerall = numhelper(2700)!=0 && AnimTime = 0
trigger1 = helper,movehit
var(14)=76

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; leg charge - light
[Statedef 2610]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 0

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 2600

;---------------------------------------------------------------------------
; leg charge - medium
[Statedef 2615]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 1

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 2600

;---------------------------------------------------------------------------
; leg charge - hard
[Statedef 2620]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 2

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 2600

;---------------------------------------------------------------------------
; leg charge - light
[Statedef 2625]
type    = S

[State 9000, a]
type = VarSet
trigger1 = 1
v = 2
value = 0

[State 1000, 7]
type = ChangeState
trigger1 = 1
value = 2600

;---------------------------------------------------------------------------
; Explosivo Helper
[Statedef 2700]
type    = U
movetype= A
physics = N
;velset = 0,0
anim = 2700
ctrl = 0

[State 2600, 2] 
type = HitOverride 
trigger1 = time = 0 
time = -1 
attr = SCA, AA, AP, AT;, NA, NP, NT, SA, SP, ST, HA, HP, HT
slot = 0 
stateno = 2710

[State 3000, 4]
type = VelSet
trigger1 = time = 0
x = (1+2 * (root, var(2)))/2
y = -5

[State 3000, 4]
type = Veladd
trigger1 = anim = 2700
y = .3

[State 3000, 4]
type = changeanim
trigger1 = pos y > 0
value = 2750

[State 3000, 4]
type = VelSet
trigger1 = pos y > 0
x = 0
y = 0

[State 3000, 4]
type = Posset
trigger1 = pos y > 0
y = 0

[State 2600, 4] 
type = hitdef
;trigger1 = vel y != 0
trigger1 = anim = 2700
trigger1 = time < 150
trigger1 = !movecontact
;trigger1 = (time%4) != 0
;offset =0,0
attr = S, SP
damage = 1,0 
animtype = hard 
pausetime = 5,10 
sparkno=3 
sparkxy = 0,0 
hitflag = MAF 
guardflag = MA 
hitsound = 5, 2
guardsound = 6, 0
ground.type =  Low 
ground.slidetime = 30 
ground.hittime = 20 
ground.velocity = -2.5,0 ;-6,0 
air.animtype = Back 
air.velocity = -2.5,-5 
air.juggle = 30 
fall = 1
palfx.add = 250,148 ,43
palfx.mul = 250,148,43
palfx.time = 8 
p1stateno = 2720

[State 240, 2]
type = null;projectile
trigger1 = anim = 2750
trigger1 = animtime > -50
trigger1 = (time%4) = 0
projanim = 455
projid = 2700
projremovetime = 20
offset =ceil(30*1.5),0 
velocity = ceil(-3*1.5), 0 
attr = SC, SP
animtype  = back
damage    = 33,1
hitflag = MFD
guardflag = L
pausetime = 12,12
sparkno = 1
sparkxy = ceil(-5*1.5),ceil(1.5*-10)
hitsound   = 5,2
guardsound = 6,0
ground.type = Trip 
ground.slidetime = 4 
ground.hittime  = 18
ground.velocity = -1,-3
air.type = Low 
air.velocity = -1.3,-3 
getpower  = 10 
givepower = 8 
down.velocity = -2,-6.5
down.hittime = 20 
fall = 1
palfx.add = 250,148 ,43
palfx.mul = 250,148,43
palfx.time = 8 
;projscale=1.5,1.5

;som explosão
[State 200, 1]
type = PlaySnd
trigger1 = anim = 2750
trigger1 = animtime > -50
trigger1 = (time%4) = 0
value = 194, 0
volume = 255

[State 1027, explode]
type = Explod
trigger1 = anim = 2750
trigger1 = animtime > -50
trigger1 = (time%4) = 0
anim = 194
pos = 0,0
postype = p1
removetime = -2
;bindtime = -1
sprpriority = 5
;scale= 1.5,1.5
random=60,20

[State 450, 1]; dhalsim by blackjack
type=StateTypeSet
trigger1 = anim = 2750
statetype = C

[State 3000, 7]
type = ChangeState
trigger1 = anim = 2750
trigger1 = animtime > -50
value = 2730

[State 3203, Done]
type = DestroySelf
triggerall = anim = 2750
trigger1 = animtime = 0
trigger2 = roundstate != 2

;---------------------------------------------------------------------------
;Explosive end
[Statedef 2710]
type    = U
movetype= I
physics = N
ctrl = 0
anim = 194
velset = 0,0

[State 3203, Done]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;Explosive fixed
[Statedef 2720]
type    = U
movetype= A
physics = N
ctrl = 0
vel=0,0
anim = 196;2770;;2700

[State 240, 2]
type = projectile
trigger1 = time > 30 && var(16)=0;time = 500
trigger2 = root, ProjContactTime(260) = 1
;trigger3 = root,time>100
;trigger3 = root,stateno=260
;trigger3 = (var(21)=0 && command!="hold_c") || var(21)=1 && time = 101
projanim = 455
projhitanim = 194
projremovetime = 4
offset =0,0 
velocity = 0, -5 
attr = S, SP
animtype  = back
damage    = var(16)*20,1;33,1
hitflag = MFD
guardflag = L
pausetime = 12,12
sparkno = 1
sparkxy = ceil(-5*1.5),ceil(1.5*-10)
hitsound   = 5,2
guardsound = 6,0
ground.type = Trip 
ground.slidetime = 4 
ground.hittime  = 18
ground.velocity = -1,-3
air.type = Low 
air.velocity = -1.3,-3 
getpower  = 10 
givepower = 8 
down.velocity = -2,-6.5
down.hittime = 20 
fall = 1
palfx.add = 250,148 ,43
palfx.mul = 250,148,43
palfx.time = 4 * var(16)
projscale=1+var(16)/5,var(16)/5+1
postype = p2

[State 1027, explode]
type = Explod
trigger1 = numexplod(2700)<2
anim = 2700 +(root,stateno=260) ;; + (root,time>100)
id= 2700
pos = 0,ceil(enemy,const(size.mid.pos.y)*enemy,const(size.yscale))
postype = p2
removetime = -2;-1;500;-2
bindtime = -1
sprpriority = 5
;scale= 1.5,1.5
;random=60,20

;[State 1027, explode]
;type = RemoveExplod
;trigger1 = time > 30 && var(16)=0;time = 500
;trigger2 = root, ProjContactTime(260) = 1
;trigger3 = time = 1375
;id= 2700

[State 1027, Charge level]
type = Explod
trigger1 = (time%2)=0 && (root,var(10)=1)
anim = 2710
id = 2710
pos = 16, 209;8
postype = Left
removetime = 2
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1
id = 2710

[State 1027, Charge level]
type = Explod
trigger1 = (time%2)=0 && (root,var(10)!=1)
anim = 2710
pos = -112, 209;8
postype = right
removetime = 2
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1
id = 2710
;facing=facing

[State 1027, números]
type = Explod
trigger1 = (time%2)=0; &&  (anim = 3020 || anim = 3023|| anim = 3005)
anim = 2720
id = 2720
pos = (root,var(10)!=1)*312, 129
postype = Left
removetime = 2
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 240, 2];varset
type = varadd
trigger1 = (time%30)=0
v=16
value = 1 + (time>330)*-2

[State 3203, Done]
type = Explod
trigger1 = time>0; && numexplod(2730)<2
anim = 3079
id = 2730
pos = (root,var(10)!=1)*312, 204 - (time%(var(16)+1))*7;137; + 1 * numexplod(2730)
postype = Left
removetime = 7;1;var(16);10;3
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1
scale=1,2;var(16)*-1;/25+1,1

[State 2710, computer bip]
type = playsnd
trigger1=time=0
value=270,0
volume=64

[State 3203, Done]
type = DestroySelf
trigger1 = time > 30 && var(16)=0;time = 500
trigger2 = root, ProjContactTime(260) = 1
trigger3 = root, life=0
trigger4 = roundstate!=2

;---------------------------------------------------------------------------
; Explosivo Helper explode no chão
[Statedef 2730]
type = C
movetype= A
physics = N
velset = 0,0
anim = 2750
ctrl = 0

[State 240, 2]
type = projectile
trigger1 = anim = 2750
trigger1 = (time%4) = 0
projanim = 455
projid = 2700
projremovetime = 20
offset =ceil(30*1.5),0 
velocity = ceil(-3*1.5), 0 
attr = SC, SP
animtype  = back
damage    = 33,1
hitflag = MFD
guardflag = L
pausetime = 12,12
sparkno = 1
sparkxy = ceil(-5*1.5),ceil(1.5*-10)
hitsound   = 5,2
guardsound = 6,0
ground.type = Trip 
ground.slidetime = 4 
ground.hittime  = 18
ground.velocity = -1,-3
air.type = Low 
air.velocity = -1.3,-3 
getpower  = 10 
givepower = 8 
down.velocity = -2,-6.5
down.hittime = 20 
fall = 1
palfx.add = 250,148 ,43
palfx.mul = 250,148,43
palfx.time = 8 
;projscale=1.5,1.5

;som explosão
[State 200, 1]
type = PlaySnd
trigger1 = anim = 2750
trigger1 = (time%4) = 0
value = 194, 0
volume = 255

[State 1027, explode]
type = Explod
trigger1 = anim = 2750
trigger1 = (time%4) = 0
anim = 194
pos = 0,0
postype = p1
removetime = -2
;bindtime = -1
sprpriority = 5
;scale= 1.5,1.5
random=60,20

[State 3203, Done]
type = DestroySelf
trigger1 = time = 50;animtime = 0
trigger2 = roundstate != 2

;---------------------------------------------------------------------------
;Directive 1
[Statedef 3000]
type    = S
movetype= A
physics = S
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 20)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 3000]
type = helper 
stateno = 8550; helper 
trigger1 = roundstate= 3 && numhelper(8550)=0 && p2life=0
pos = 160,120
postype = left
bindtime = -1
ID=8550
ownpal = 1 
name = "SuperFX"
ignorehitpause=1

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 3020+3*(facing=-1)

[State 1000, 1]; não voa
type = varset
trigger1 = animelemtime(1) = 0
var(1)=0

[State 1000, 1]; sem blindagem
type = varset
trigger1 = animelemtime(1) = 0
var(3)=0

[State 1000, 1]; munição
type = varset
trigger1 = animelem = 1 
trigger2 = animelem = 2 
trigger3 = animelem = 3 
v= 16 + (animelem=2) + (animelem=3)*2
value= 30 * (animelem = 1)

[State 1000, 1]; virar 
type = Turn 
trigger1 = anim = 3020+3*(facing=-1)
trigger1 = animelemtime(1) = 0 
trigger1 = p2dist X < -5 

[State 810, Width 2-11]
type = Width
trigger1 = anim = 3020+3*(facing=-1)
trigger1 = animelemtime(1) = 0 
trigger1 = frontedgedist < 75 && var(21)=1
edge = 75,0

[State 1027, Lewis helper]
type = Explod
trigger1 = animelem=1 && (anim = 3020 || anim = 3023)
anim = 3010
pos = -320,0;-floor(100*1.5),0;-floor((BackEdgeDist)*1.5),0
postype = p1
removetime = 100;floor(BackEdgeDist / 1.5);1.4)
sprpriority = 1
;scale= 1.5,1.5
vel = 3.5,0;3.2,0
id=3010
shadow = -1,0,0
ownpal = 1
supermovetime =100
supermove =1

[State 1027, Power arm]
type = Explod
trigger1 = animelem=1 && (anim = 3020 || anim = 3023)
anim = 3012
pos = -320,0;;-floor((BackEdgeDist)*1.5),0
postype = p1
removetime = 94;floor(BackEdgeDist / 1.5)
sprpriority = 2
;scale= 1.5,1.5
vel = 3.5,0;3.2,0
id=3012
shadow = -1,0,0
ownpal = 1
supermovetime =100
supermove =1

[State 1027, Power arm2]
type = Explod
triggerall = animelemno(0)=15 && numexplod(3025)=0;animelemtime(15)=> 0
;triggerall = (time%2)=0
trigger1 = var(16)> 6
trigger2 = var(17)> 6
trigger3 = var(18)!= 0
id=3025
anim = 3025
pos = 0,0
postype = p1
removetime = -1
bindtime = -1
sprpriority = 3;1;2;
scale= const(size.xscale),const(size.yscale)
shadow = -1,0,0
ignorehitpause=1
ownpal = 0

[State 1027, Power arm3];encaixe
type = Explod
trigger1 =  (anim = 3020 || anim = 3023)&& animelemtime(1) = 0
;trigger2 =  (anim = 3020 || anim = 3023) && animelemtime(12) = 13
anim = 3024; + (animelem!=1)*2
pos = 0,0
postype = p1
removetime = -2
sprpriority = 3
;scale= 1.5,1.5
id=3024
shadow = -1,0,0
removeongethit = 1
bindtime = -1
supermovetime =100
supermove =1

;[State 1027, Power arm3-lewis];encaixe
;type = Explod
;trigger1 = anim= 3020 && animelemtime(1) = 0
;anim = 3026
;pos = 0,0
;postype = p1
;removetime = -2
;sprpriority = 1
;scale= 1.5,1.5
;id=3026
;shadow = -1,0,0
;removeongethit = 1
;bindtime = -1
;supermovetime =100
;supermove =1

[State 1027, atira]
type = Explod
trigger1 = var(16)!=0 && animelem=15, > 0
anim = 1501
pos = floor(64*1.5),-floor(62*1.5)
postype = p1
removetime = -2
bindtime = -1
ownpal = 1
sprpriority = 3
ownpal = 1
supermovetime =50

[State 1027, atira]; fumaça míssil
type = Explod
trigger1 = var(18)!=0 && animelem=15, > 0
trigger1 = numexplod(3056)=0
anim = 3056
id = 3056
pos = floor(60*1.5),-floor(57*1.5)
postype = p1
removetime = -2
bindtime = -1
ownpal = 1
sprpriority = 3
ownpal = 1

;som - atira
[State 200, 1]
type = PlaySnd
trigger1 = animelem=15, > 0
trigger1 = (time%4)=0 && var(16)>0
value = 1000, 0
volume = 128;255
channel=1

[State 3000, 7]
type = helper
trigger1 = (anim = 3020 || anim = 3023) && animelemTime(1) = 0;12;18 
name = "mural"
pos = 0,0
postype = p1
keyctrl=0
stateno= 3005
ownpal = 1
supermovetime = 20

[State 3000, Super A]
type = SuperPause
trigger1 = AnimElemtime(1) = 0
trigger1 =  (anim = 3020 || anim = 3023)
pos = 20,-65;floor(25*1.5),-floor(57*1.5)
anim = 100
sound = s3000, 0
poweradd = -1000
time =110
movetime =100 

[State 240, 2];tiros
type = projectile
trigger1 = animelem=15, > 0
trigger1 = (time%4)=0 && var(16)>0
projanim = 1500
ProjID = 1500
projcancelanim  = 3400
offset = floor(45*1.5),-floor(62*1.5)
velocity = 10, 0
attr = S, HP 
animtype  = Medium
damage    = 8-var(12)/5,2;2-floor((enemynear, life)/100),2
guardflag = MA
pausetime = 12,12
sparkno = 2
sparkxy = 0,0
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6,-2
air.velocity = -2.2,-3.2
palfx.add = 250,148 ,43
palfx.mul = 250,148,43
palfx.time = 8 
;projscale=1.5,1.5
getpower = 0, 0

[State 3000, Super A]
type = SuperPause
;triggerall = numexplod(3001)=0 
trigger1 = var(17)=30 && numexplod(3001)=0 
trigger2 = var(18)=10 && numexplod(3002)=0 
pos = floor(49*1.5)+17*(var(18)=10 && numexplod(3002)=0),-floor(51*1.5)-14*(var(18)=10 && numexplod(3002)=0)
;anim = 100
sound = s3000, 0
poweradd = -1000
time =30
movetime =3 

[State 240, 2];fogo
type = projectile
trigger1 = animelem=15, > 0
trigger1 = (time%5)=0 && var(17)>0
projanim = 3040;3030; + var(3)
projid=3030
projhitanim = 3318;3040;3045
;projremanim=3040
remvelocity=0,-3
projremove=0
projremovetime=13;66
offset = floor(49*1.5),-floor(51*1.5)
velocity = 6, -(var(8)/6)
attr = S, HP 
animtype  = Medium
damage    = 7,3;8-var(12)/7,8;
guardflag = MA
pausetime = 1,2;12
sparkno = S3318;2
sparkxy = 0,0;ceil(p2bodydist x),0
hitsound   = s800,0;5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0,-2; * (p2dist)
air.velocity = 0,-1.5;-1.2
palfx.add = 250,148 ,43
palfx.mul = 250,148+ceil(time/2),43+time
palfx.time = 30 
;projscale=1.5,1.5
getpower = 0, 0
fall=1

;som - atira
[State 200, 1]
type = PlaySnd
trigger1 = animelem=15, > 0
trigger1 = (time%24)=0 && var(18)>0
value = 3100, 0
volume = 128;255
channel=1

[State 240, 2];missil
type = projectile
trigger1 = animelem=15, > 0
trigger1 = (time%24)=0 && var(18)>0
projanim = 3055; + var(3)
projid=3055
projhitanim = 194
projcancelanim  = 194
;projremovetime= 1
offset = floor(60*1.5),-floor(57*1.5)
velocity = 8, 0
attr = S, HP 
animtype  = Medium
damage    = 68,24
guardflag = MA
pausetime = 6,6
sparkno = 2
sparkxy = 0,0;ceil(p2bodydist x),0
hitsound   = S194, 0
guardsound = S194, 0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6,-2
air.type = Low
air.velocity = -2.2,-3.2
palfx.add = 250,148 ,43
palfx.mul = 250,148+ceil(time/2),43+time
palfx.time = 30 
;projscale=1.5,1.5
getpower = 0, 0
fall=1

[State 240, 2];varset
type = varadd
trigger1 = (time%4)=0 && var(16)>0
trigger1 = animelem=15, > 0
v=16
value = -1

[State 240, 2];varset
type = varadd
trigger1 = (time%8)=0 && var(17)>0
trigger1 = animelem=15, > 0
v=17
value = -1

[State 240, 2];varset
type = varadd
trigger1 = (time%12)=0 && var(18)>0
trigger1 = animelem=15, > 0
v=18
value = -1

[State 1027, use flame]
type = Explod
trigger1 = var(17)>0
trigger1 = var(18)<=0
anim = 3080
id=3001
pos = (var(10)!=1)*160, 225
postype = Left
removetime = 1
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 1027, use smart bomb]
type = Explod
trigger1 = var(18)>0
anim = 3081
id=3002
pos = (var(10)!=1)*160, 225
postype = Left
removetime = 1
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

;[State 3000, Super C]
;type = AfterImageTime
;trigger1 = Time < 100
;time = 2

[State 3000, 7]
type = Changeanim
triggerall =  (anim = 3020 || anim = 3023)
trigger1 = Var(16) = 0 && Var(17) = 0 && Var(18) = 0
;animtime = 0;160
value = 3005

[State 3000, 7]
type = Changeanim
triggerall = anim = 3005
trigger1 = animtime = 0
value = 190 + 6000 * (facing=-1)

;som saca arma
[State 200, 1]
type = PlaySnd
triggerall = anim = 190 || anim = 6190
trigger1 = animelem = 3
value = 190, 0
volume = 255

[State 1027, Spark]
type = Explod
trigger1 = (time%2)=0 && (anim = 3020 || anim = 3023|| anim = 3005)
anim = 3060
id= 3060
pos = (var(10)!=1)*160, 217
postype = Left
removetime = 2
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 1027, Spark]
type = Explod
trigger1 = (time%2)=0 &&  (anim = 3020 || anim = 3023|| anim = 3005)
anim = 3061
id= 3061
pos = (var(10)!=1)*160, 217
postype = Left
removetime = 2
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 1027, Spark]
type = Explod
trigger1 = (time%2)=0 &&  (anim = 3020 || anim = 3023|| anim = 3005)
anim = 3071
pos = (var(10)!=1)*136, 217
postype = Left
removetime = 2
id = 3071
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 1027, Spark];cursor
type = Explod
trigger1 = (time%30)=0 &&  (anim = 3020 || anim = 3023|| anim = 3005)
anim = 3070
id = 3070
pos = (var(10)!=1)*136+175, 227
postype = Left
removetime = 30
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 3000, 7]
type = helper
trigger1 = (anim = 3020 || anim = 3023) && animelemTime(12) = 12;18 
name = "lewis"
pos = floor(30*1.5),0;
postype = p1
keyctrl=0
stateno=3010
ownpal = 1

[State 3000, VS_Combo]
type = VarAdd
trigger1 = ProjHitTime(1500)=1;MoveHit && HitPauseTime = 1
;trigger2 = ProjHitTime(3030)=1
v = 12
value = 1
ignorehitpause = 1

[State 3000, VS_Combo]
type = VarSet
trigger1 = (p2stateno != [5000,5999])
v = 12
value = 0

[State 4000, Bone16]
type = Helper
trigger1 = animelem=15, > 0 && var(17)>0
trigger1 = Numhelper(3030)=0
name = "chama"
ID = 3030
pos = floor(49*1.5),-floor(51*1.5)
postype = p1
stateno = 3030
helpertype = normal
keyctrl = 0
ownpal = 1

[State 3000, VS_Combo]
type = Varset
trigger1 = var(17)=20 && numexplod(3001)=0 
var(8) = 0

[State 3000, VS_Combo]
type = Varadd
triggerall=var(21)=0
trigger1 = (anim = 3020 || anim = 3023) && animelem=15, > 0
trigger1 = command="holdup" || command="holddown"
var(8) = (command="holdup")-(command="holddown")

[State 3000, VS_Combo]
type = Varadd
triggerall=var(21)=1
trigger1 = (anim = 3020 || anim = 3023) && animelem=15, > 0
var(8) = (p2bodydist y < 0)-(p2statetype=C || (p2statetype=S && enemy, const(size.head.pos.y)>-85))

;((p2bodydist y)<const(size.head.pos.y))

[State 3000, VS_Combo]
type = Varset
trigger1 = abs(var(8)) > 45
var(8) = 45 * (var(8)/abs(var(8)))

[State 1027, Spark];chama da vítima
type = Explod
trigger1 = ProjHitTime(3030)=1
anim = 3318
id = 3318
pos = 0, (enemy,const(size.mid.pos.y))
postype = p2
removetime = 20;13
vel=0,-4
bindtime = 5
sprpriority = 1
ownpal = 1

[State 3000, computer bip]
type = playsnd
trigger1=time=0&& animelemtime(1)=0
value=270,0
volume=64

[State 3000, 7]
type = ChangeState
;trigger1 = anim = 3005 && animTime = 0
trigger1 = anim = 190 && animTime = 0
trigger2 = anim = 6190 && animTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Super mural
[Statedef 3005]
physics = N
velset = 0,0
anim = 196;3028;10
ctrl = 0

[State 1027, mural]
type = Explod
trigger1 = facing = 1; && (anim = 3020 || anim = 3023)
trigger1 = time =0 || time = 1
anim = 3205 + (time = 1)
id = 3205 + (time = 1)
pos = 10,36
postype = left
removetime = -2
sprpriority = -1
ownpal = 1
supermovetime =100
supermove =1
bindtime = -1

[State 1027, mural]
type = Explod
trigger1 = facing = -1; && (anim = 3020 || anim = 3023)
trigger1 = time = 0 || time = 1
anim = 3205 + (time = 1)
id = 3205 + (time = 1)
pos = -10,36
postype = right
removetime = -2
sprpriority = -1
ownpal = 1
supermovetime =100
supermove =1
bindtime = -1
facing = -1

[State 1027, Mira H]
type = Explod
trigger1 = time = [0,19]
anim = 277
pos = 0,floor((time * time)/6)
postype = left
removetime = 30 - time / 2
bindtime = -1
sprpriority = -2
supermovetime =19
ownpal = 1
;ontop = 1
scale = 320,1

[State 1027, Mira H]
type = Explod
trigger1 = time = [0,19]
anim = 277
pos = 0,240-floor((time * time)/6)
postype = left
removetime = 30 - time / 2
bindtime = -1
sprpriority = -2
supermovetime =19
ownpal = 1
;ontop = 1
scale = 320,1

[State 3203, Done]
type = DestroySelf
trigger1 = time=20

;---------------------------------------------------------------------------
; Lewis Helper
[Statedef 3010]
physics = N
velset = 0,0
anim = 3028;10
ctrl = 0

[State 3000, 4]
type = VelSet
trigger1 = root, animelem = 13
trigger1 =  (anim = 3020 || anim = 3023)
trigger2 = root, animelem = 15
trigger2 =  (anim = 3020 || anim = 3023)
trigger3 = root,  anim!= 3020
trigger3 = root,  anim!= 3023
trigger3 = anim = 3015
x = 3.2 * (root, animelem=13)

[State 1027, braço solta]
type = Explod
id = 3025
trigger1 = anim = 3015 && numexplod(3025)=0
trigger1 = root, anim!= 3020
trigger1 = root, anim!= 3023
vel=0,-4
accel = 0, .6
anim = 3025
pos = floor(rootdist x),0;-floor(66*1.5)
postype = p1
removetime = 20
bindtime = 1
ownpal = 1
sprpriority = 3
;scale= 1.5,1.5

[State 3000, 7];recua / atira / corre
type = ChangeAnim
trigger1 = root, animelem = 13
trigger1 = root, anim = 3020
trigger2 = root, animelem = 15
trigger2 = root, anim = 3020
trigger3 = root, anim!= 3020
trigger3 = root, anim!= 3023
trigger3 = anim = 3027 && numexplod(3025)=0
trigger4 = anim = 3015 && numexplod(3025)=1
trigger5 = root, animelem = 13
trigger5 = root, anim = 3023
trigger6 = root, animelem = 15
trigger6 = root, anim = 3023
value = 3010 + (root, animelem=15) * 5 + 17 *(anim = 3015 && numexplod(3025)=1)

[State 1027, atira]
type = Explod
trigger1 = anim = 3015 && (time%12)=0
anim = 1501
pos = floor(21*1.5),-floor(21*1.5)
postype = p1
removetime = -2
bindtime = -1
ownpal = 1
sprpriority = 3

;som - atira
[State 200, 1]
type = PlaySnd
trigger1 = anim = 3015 && (time%36)=0
value = 3015, 0
volume = 128;255
;channel=1

[State 1027, Lewis helper]
type = Explod
trigger1 = anim = 3010
trigger1 = root, anim!= 3020
trigger1 = root, anim!= 3023
anim = 3010
pos = 0,0
postype = p1
removetime = 100
sprpriority = 1
;scale= 1.5,1.5
vel = -3.5,0;3.2,0
id=3010
shadow = -1,0,0
ownpal = 1
supermovetime =100
supermove =1
facing = -1

[State 1027, power arm]
type = Explod
trigger1 = anim = 3010
trigger1 = root, anim!= 3020
trigger1 = root, anim!= 3023
id = 3012
anim = 3012
pos = 0,0
postype = p1
removetime = 100
sprpriority = 2
;scale= 1.5,1.5
vel = -3.5,0;3.2,0
id=3010
shadow = -1,0,0
ownpal = 1
supermovetime =100
supermove =1
facing = -1

[State 3203, Done]
type = DestroySelf
trigger1 = root, anim!= 3020
trigger1 = root, anim!= 3023
trigger1 = anim = 3010

;---------------------------------------------------------------------------
; Chama
[Statedef 3030]
type = A
physics = N
;sprpriority = 1
anim=3030

;som - atira
[State 200, 1]
type = PlaySnd
triggerall = (time%8)=0
trigger1 = root, anim = 3020
trigger2 = root, anim = 3023
value = 3020, 0
lowpriority=1
;channel=2
volume=128

[State 1225, 1] 
type = Changeanim
triggerall= anim=3030
trigger1 = root, stateno!=3000;time=0 
trigger2 = root, anim != 3020
trigger2 = root, anim != 3023
value = 3045

[State 3000,7]
type = null;PalFX
trigger1 = root, stateno=3001
time = 1;0
add = 190,128,0;255,0,255
color = 128

[State 3000,7]
type = null;PalFX
trigger1 = (time%10)=0 && time < 145
trigger1 = root, stateno=3001
time = 10
add = 223,128,0
color = 128

[State 1201, VelSet]
type = sprpriority
trigger1 = (time%3)=0
trigger2 = (time%3)=2
value= 1 - 2 * ((time%3)=2)

[State 1225, 1] 
type = null;VarSet 
trigger1 = var(11) != root, var(11)
var(11) = root, var(11) 

[State 1225, 1] 
type = null;VarSet 
trigger1 = time=0
var(17) = root, var(17)

[State 1225, 1] 
type = null;Changeanim
trigger1 = time=0 
value = 1217 + ((var(11)=1)||(var(11)=4)||(var(11)=7))

[State 182, 2]
type = PlayerPush
trigger1 = 1
value = 0

;[State 4201, Limit 2]
;type = posset
;trigger1 = 1
;x = root, pos x + 74
;y = root, pos y - 76
;;floor(49*1.5),-floor(51*1.5)

;ângulo (-90)
[State 4201, 1]
type = AngleSet
trigger1 = time=0
value = 90

[State 4201, 1]
type = Angleset;ADD
trigger1 = anim!=3045;1;var(11)=2
value = root,Var(8)

[State 4201, 1]
type = null;AngleSet
trigger1 = var(11)=9
trigger2 = var(11)=7
value = 45 - 90 * var(17) * (var(11)=7)

[State 4201, 1]
type = null;AngleSet
trigger1 = var(11)=3
trigger2 = var(11)=1
value = -45 + 90 * (var(17) = var(11))

[State 4201, Facing]
type = AngleDraw
trigger1 = 1

[State 4258, Done]
type = DestroySelf
;trigger1 = root, stateno!=3000
trigger1=anim=3045 && animtime=0
;trigger1 = root, stateno!=3001

;---------------------------------------------------------------------------
; Directive 2
[Statedef 4000]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
;anim = 3000
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 20)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 3000

[State 1000, 1]; não voa
type = varset
trigger1 = animelemtime(1) = 0
var(1)=0

[State 1000, 1]; sem blindagem
type = varset
trigger1 = animelemtime(1) = 0
var(3)=0

[State 1000, 1]; virar 
type = Turn 
trigger1 = animelemtime(1) = 0 
trigger1 = p2dist X < -5 

[State 3000, 7]
type = helper
trigger1 = anim = 3000 && animelemTime(1) = 0;12;18 
name = "mural"
pos = 0,0
postype = p1
keyctrl=0
stateno= 3005
ownpal = 1
supermovetime = 20

[State 3000, Super A]
type = SuperPause
trigger1 = AnimElem = 1
trigger1 = Anim = 3000
pos = floor(25*1.5),-floor(50*1.5)
anim = 100
sound = s3000, 1
poweradd = -1000
time =110
movetime =100 

[State 3000, Super E]
type = NotHitBy
trigger1 = AnimElemtime(3) < 0
;trigger2 = AnimElem = 2
value = SA, AA
time = 1

[State 3000, 4]
type = VelSet
triggerall = anim = 3000;AnimElem = 5
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
trigger7 = AnimElem = 9
trigger8 = AnimElem = 10
;trigger1 = time > 20
;trigger3 = AnimElem = 19
x = 3

[State 3000, 5]
type = hitdef
trigger1 = !movecontact
offset =0,0
attr = S, HT
guardflag = MA
hitflag = M 
priority = 1, Miss 
damage = 0,5 
pausetime = 10,10 
sparkno=3 
sparkxy = ceil(-10*1.5),ceil(1.5*-60)
animtype = Medium
ground.type =  low;high
ground.slidetime = 0;30 
ground.hittime = 0;20 
ground.velocity = 1,0
p1stateno = 4010
p2stateno = 4020
p2facing = 1
forcestand = 1
kill = 0
getpower = 0, 0

[State 3000, 7]
type = Changeanim
triggerall = anim = 3000
trigger1 = AnimelemTime(10) = 4
trigger2 = FrontEdgeBodyDist < 3
trigger3 = MoveGuarded
value = 3005

[State 1027, Spark]
type = Explod
trigger1 = (time%2)=0 && (anim = 3000 || anim = 3005)
anim = 3060
id= 3060
pos = (var(10)!=1)*160, 217
postype = Left
removetime = 2
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 1027, Spark]
type = Explod
trigger1 = (time%2)=0 && (anim = 3000 || anim = 3005)
anim = 3062
id= 3062
pos = (var(10)!=1)*160, 217
postype = Left
removetime = 2
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 1027, Spark]
type = Explod
trigger1 = (time%2)=0 && (anim = 3000 || anim = 3005)
anim = 3072
id = 3072
pos = (var(10)!=1)*152, 217
postype = Left
removetime = 2
id = 3072
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 1027, Spark]
type = Explod
trigger1 = (time%30)=0 && (anim = 3000 || anim = 3005)
anim = 3070
id = 3070
pos = (var(10)!=1)*152+160, 227
postype = Left
removetime = 30
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 3000, 7]
type = ChangeState
trigger1 = anim = 3005 && animTime = 0
value = 0
ctrl = 1

[State 3500, computer bip]
type = playsnd
trigger1=time=0
value=270,0
volume=64

;---------------------------------------------------------------------------
[Statedef 4010]
type    = S
movetype= A
physics = S
poweradd = 0

[State 3000]
type = helper 
stateno = 8550; helper 
trigger1 = roundstate= 3 && numhelper(8550)=0 && p2life=0
pos = 160,120
postype = left
bindtime = -1
ID=8550
ownpal = 1 
name = "SuperFX"
ignorehitpause=1

[State 3050, Super D]
type = NotHitBy
trigger1 = 1
value = SAC
time = 1

[State 1027, Spark]
type = Explod
trigger1 = (time%2)=0; && (anim = 3000 || anim = 3005)
anim = 3060
pos = (var(10)!=1)*160, 217
postype = Left
removetime = 2
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 1027, Spark]
type = Explod
trigger1 = (time%2)=0 ;&& (anim = 3000 || anim = 3005)
anim = 3062
pos = (var(10)!=1)*160, 217
postype = Left
removetime = 2
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 1027, Spark]
type = Explod
trigger1 = (time%2)=0 ;&& (anim = 3000 || anim = 3005)
anim = 3072
pos = (var(10)!=1)*152, 217
postype = Left
removetime = 2
id = 3072
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 1027, Spark]
type = Explod
trigger1 = (time%30)=0 ;&& (anim = 3000 || anim = 3005)
anim = 3070
pos = (var(10)!=1)*152+160, 227
postype = Left
removetime = 30
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 1027, bandidos]
type = Explod
triggerall = time < 600
trigger1 = time = 0
trigger2 = (time % 10)=0
anim = 3310 + ((time % 20)=0)
pos = -floor(backedgebodydist),0
postype = p1
;scale= 1.5,1.5
removetime = 150
sprpriority = 2 + ((time % 20)=0)-(time>200)
ownpal = 1
random = ceil(75 * 1.5), ceil(10* 1.5)
shadow = -1,0,0

[State 1027, bandidos morrem]
type = Explod
trigger1 = time = [600, 740]
trigger1 = (time % 5)=0
anim = 3316
pos = -floor(backedgebodydist),0
postype = p1
;scale= 1.5,1.5
removetime = 50
sprpriority = 1 + ((time % 20)=0)
ownpal = 1
random = ceil(75 * 1.5), ceil(10* 1.5)
shadow = -1,0,0
vel = -3, -6
accel = 0,0.5

[State 1027, sangue]
type = Explod
trigger1 = time = [600, 700]
trigger1 = (time % 14)=0
anim = F10 + floor(random/333)
pos = -floor(backedgebodydist),-floor(60*1.5)
postype = p1
;scale= 1.5,1.5
removetime = -2
sprpriority = 1 + ((time % 20)=0)
ownpal = 1
random = ceil(75 * 1.5), ceil(10* 1.5)
shadow = -1,0,0

[State 1027, gordo]
type = Explod
trigger1 = time = 200
anim = 3313
pos = -floor(backedgebodydist),0
postype = p1
;scale= 1.5,1.5
removetime = 400
sprpriority = 3
ownpal = 1
shadow = -1,0,0

[State 1027, gordo morre]
type = Explod
trigger1 = time = 600
anim = 3317
pos = - backedgebodydist + floor(30 * 1.5),0
postype = p1
;scale= 1.5,1.5
removetime = 60
sprpriority = 3
ownpal = 1
;random = ceil(75 * 1.5), ceil(10* 1.5)
shadow = -1,0,0
vel = -2, -6
accel = 0,0.6

[State 1027, cobra gun - tiro]
type = Explod
trigger1 = time = 400
anim = 3314
pos = -floor(backedgebodydist),-floor(1.5*40)
postype = p1
;scale= 1.5,1.5
removetime = 100
vel = 7*1.5, 0
sprpriority = 3
ownpal = 1
shadow = -1,0,0

[State 1027, RoboCop leva tiro]
type = changeanim
trigger1 = time = 450
value = 3315

[State 1027, explode]
type = Explod
trigger1 = time = [423,460]
trigger1 = (time%4) = 0
anim = 194
pos = 0,0;floor(random/10)+floor(18*1.5),-floor(random/50)
postype = p1
;removetime = 15
;bindtime = -1
sprpriority = 5
scale= 1+(time<450),1+(time<450)
random=126,20

[State 1027, ricochetes]
type = Explod
trigger1 = time = [50,700]
;trigger1 = anim = 3300
trigger1 = (time%2)=0
anim = 3400
id = 3400
pos = floor(10*1.5),const(size.mid.pos.y)
postype = p1
;scale= 1.5, 1.5
removetime = -2
sprpriority = 3
ownpal = 1
random = ceil(30 * 1.5), ceil(80* 1.5)

[State 1027, impact Sound]
type = PlaySnd
trigger1 = time = [50,650]
trigger1 = anim = 3300
trigger1 = (time%12)=0
value = 1400, 0
channel=1
volume = 128

[State 1027, tiros Sound 1]
type = PlaySnd
trigger1 = time = [50,600]
trigger1 = (time%15)=0
value = 250, 0
;channel=2
volume = 128

[State 1027, tiros Sound 2]
type = PlaySnd
trigger1 = time = [50,600]
trigger1 = (time%25)=0
value = 3015, 0
;channel=2
volume = 128

;som explosão
[State 200, 1]
type = PlaySnd
trigger1 = time = [423,460]
trigger1 = (time%4) = 0
value = 194, 0
volume = 255

;som - robocop atira
[State 200, 1]
type = PlaySnd
trigger1 = time = [600, 700]
trigger1 = (time%14) = 0
value = 1000, 0
channel =1
volume = 128

[State 1027, Spark auto-9]
type = Explod
trigger1 = time = [600, 700];[550,650];[600,740]
trigger1 = (time%10) = 0
anim = 1501
pos = -floor(50*1.5),-floor(60*1.5)
postype = p1
removetime = -2
bindtime = -1
ownpal = 1
sprpriority = 3
facing =-1

[State 3000, 4]
type = VelSet
triggerall = anim = 3000
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
trigger7 = AnimElem = 9
trigger8 = AnimElem = 10
x = 3

[State 1027, cobra gun - sound]
type = PlaySnd
trigger1 = time =400
value = 3100, 0
;channel=1
volume = 128

[State 810, Bind 1]
type = TargetBind
triggerall = numtarget != 0
trigger1 = anim = 3000
pos = 3*const(size.ground.front)*1.5, 0

[State 4010, 2]
type = BGPalfx
trigger1 = time = 400
ignorehitpause = 1
time = 128
mul = 128,128,128
sinadd = 128,128,128
invertall = 1
color = 0

;[State 810, Throw 11]
;type = TargetState
;trigger1 = AnimElem = 6
;value = 821

[State 810, protect]
type = ChangeAnim
triggerall = anim = 3000
trigger1 = FrontEdgeBodyDist < 75
;trigger2 = animelem = 2 && p2stateno!=820
value = 3300

[State 820, 1]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 810, Hurt 11]
type = TargetLifeAdd
trigger1 = time = 450
value = -300

[State 810, Bind 1]
type = TargetBind
triggerall = numtarget != 0
trigger1 = time = 740
pos = floor(50*1.5), -235;40

[State 1000, 1]; virar 
type = Turn 
trigger1 = Time > 750
trigger1 = Target, pos y = 0;stateno!= 5050

;[State 810, State End]
;type = Changeanim
;trigger1 = Time > 750
;value = 5

[State 1027, fogo]
type = Explod
trigger1 = target, vel y != 0
trigger1 = (time%2) = 0
anim = 3318
pos = 0,0;-floor(const(size.mid.pos.x)),-floor(const(size.mid.pos.y))
postype = p2
removetime = 12
bindtime = 1
;ownpal = 1
sprpriority = 3
random = 30,0
scale = 1,2;1.5,2*1.5
vfacing = 1 - 2 * (target,vel y < 0)

[State 810, State End]
type = ChangeState
trigger1 = Time > 750
trigger1 = Target, pos y = 0;stateno!= 5050
value = 0;195;0
ctrl = 1

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw
[Statedef 4020]
type    = S
movetype= H
physics = S
velset = 0,0

[State 3050, Super D]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 182, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 4020, 1]
type = PalFX
trigger1 = vel y < 0
add = 250,148 ,43
mul = 250,148,43
time = 80
ignorehitpause = 1

[State 820, 1]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 810, Shake]
type = EnvShake
time = 20
ampl = -8
freq = 40
trigger1 = time = 450

[State 3000, 4]
type = VelSet
trigger1 = time = 450
y = -10;2;5
x = -0.1

[State 450, 1]; dhalsim by blackjack
type=StateTypeSet
trigger1 = time = 650
physics = A

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5000 + AnimExist(5001) + AnimExist(5011) * 11

[State 810, Throw 11]
type = selfState
trigger1 = time > 900;teste
trigger2 = time > 500
trigger2 = vel y > 2
trigger2 = ScreenPos Y = [0,239]
trigger3 = enemynear, stateno!= 4010
trigger3 = enemynear, NumPartner=0
value = 5050;5110;30;821

[State 810, State End]
type = selfState
trigger1 = enemynear, stateno!= 4010
trigger1 = enemynear, NumPartner=0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Directive 3
[Statedef 3050]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
;anim = 3050
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 20)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 3000]
type = helper 
stateno = 8550; helper 
trigger1 = roundstate= 3 && numhelper(8550)=0 && p2life=0
pos = 160,120
postype = left
bindtime = -1
ID=8550
ownpal = 1 
name = "SuperFX"
ignorehitpause=1

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 3050

[State 1000, 1]; não voa
type = varset
trigger1 = animelemtime(1) = 0
var(1)=0

[State 1000, 1]; virar 
type = varset
trigger1 = animelemtime(1) = 0
var(3)=600

[State 1000, 1]; virar 
type = Turn 
trigger1 = animelemtime(1) = 0 
trigger1 = p2dist X < -5 

[State 3000, 7]
type = helper
trigger1 = anim = 3050 && animelemTime(1) = 0;12;18 
name = "mural"
pos = 0,0
postype = p1
keyctrl=0
stateno= 3005
ownpal = 1
supermovetime = 20

[State 1027, Lewis car helper anda]
type = Explod
trigger1 = animelem=1
;trigger2 = time=90
anim = 3051;4010
pos = 0,0;-320*(animelem=1),floor(10*1.5)
postype = p1
removetime = -2;42+10*(time=90)
sprpriority = 3
;scale= 1.5,1.5
;vel = floor(6*1.5)+(time=90),0
id=3051
ownpal = 1
supermovetime =110;50
supermove =1

[State 3000, Super A]
type = SuperPause
trigger1 = AnimElem = 1
trigger1 = Anim = 3050
pos = 0,-85;floor(25*1.5),-floor(57*1.5)
anim = 100
sound = s3000, 2
poweradd = -1000
time =110
movetime =100

[State 3050, Super D]
type = NotHitBy
trigger1 = 1;AnimElem = 2
value = SAC;, NA, SA, AT
time = 1

[State 3000, 5]
type = HitDef
trigger1 = !movecontact
attr = S, HA
animtype  = Hard
damage    = 12,4
getpower  = 0
priority  = 6
guardflag = MA
pausetime = 0,5
sparkxy = ceil(-10*1.5),ceil(1.5*-60)
hitsound   = 5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 10;30
ground.hittime  = 30
ground.velocity = -16,-5
air.velocity = -16,-5
air.fall = 1
fall.animtype = Hard
fall.recover = 0
getpower = 0, 0
fall=1
; Coice estilo Vs
air.fall = 1 
p2stateno = 8000

[State 4000, computer bip]
type = playsnd
trigger1=time=0
value=270,0
volume=64

[State 3050, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Directive 4
[Statedef 4500]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
;anim = 3050
ctrl = 0
poweradd = ifelse(PrevStateNo = 9000, 0, 20)                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 3050

[State 1000, 1]; virar 
type = varset
trigger1 = animelemtime(1) = 0
var(1)=2500

[State 1000, 1]; sem blindagem
type = varset
trigger1 = animelemtime(1) = 0
var(3)=0

[State 1000, 1]; virar 
type = Turn 
trigger1 = animelemtime(1) = 0 
trigger1 = p2dist X < -5 

[State 3000, 7]
type = helper
trigger1 = anim = 3050 && animelemTime(1) = 0;12;18 
name = "mural"
pos = 0,0
postype = p1
keyctrl=0
stateno= 3005
ownpal = 1
supermovetime = 20

[State 3000, Super A]
type = SuperPause
trigger1 = AnimElem = 1
trigger1 = Anim = 3050
pos = 0,-floor(57*1.5)
anim = 100
sound = s3000, 3
poweradd = -1000
time =110
movetime =100

[State 3050, Super D]
type = NotHitBy
trigger1 = 1;AnimElem = 2
value = SAC;, NA, SA, AT
time = 1

[State 1027, Lewis car helper anda]
type = Explod
trigger1 = animelem=1
trigger2 = time=90
anim = 4010
pos = -320*(animelem=1),floor(10*1.5)
postype = p1
removetime = 42+10*(time=90)
sprpriority = 3
;scale= 1.5,1.5
vel = floor(6*1.5)+(time=90),0
id=3010
shadow = -1,0,0
ownpal = 1
supermovetime =50
supermove =1

[State 1027, Lewis car helper pára]
type = Explod
trigger1 = time=42
anim = 4010
pos = 0,floor(10*1.5)
postype = p1
removetime = 50
sprpriority = 3
;scale= 1.5,1.5
vel = 0,0
id=3010
shadow = -1,0,0
ownpal = 1
supermovetime =50
supermove =1

[State 1027, Gyropack]
type = Explod
trigger1 = animelem=4
anim = 3054
pos = 0,0
postype = p1
removetime = -2
sprpriority = 1
;scale= 1.5,1.5
id=3054
shadow = -1,0,0
ownpal = 1
supermovetime =55
supermove =1

;------AI -----start-----------
[State 4500, 2]
type = ChangeState;VelSet
trigger1 = AnimTime = 0 && roundstate = 2
trigger1 = (random > 750) && var(21)= 1 
value = 40;y = -4
;------AI ----- end -----------

[State 4500, computer bip]
type = playsnd
trigger1=time=0
value=270,0
volume=64

[State 3050, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0; + 50 * vel y < 0
ctrl = 1

;---------------------------------------------------
; Directive 4 - parte 2
[Statedef 4550]
type    = A
movetype= A
physics = N
;juggle  = 4
velset = 0,0
;anim = 3050
ctrl = 0
poweradd = 20
;sprpriority = 2                  ;Set layering priority to 2 (in front)
Anim = 4001

[State 3000]
type = helper 
stateno = 8550; helper 
trigger1 = roundstate= 3 && numhelper(8550)=0 && p2life=0
pos = 160,120
postype = left
bindtime = -1
ID=8550
ownpal = 1 
name = "SuperFX"
ignorehitpause=1

[State 1000, 1]; virar 
type = varset
trigger1 = animelemtime(1) = 0
var(1)=0

[State 1000, 1]; virar 
type = Turn 
trigger1 = animelemtime(1) = 0 
trigger1 = p2dist X < -5 

[State 3000, 7]
type = helper
trigger1 = anim = 4001 && animelemTime(1) = 0;12;18 
name = "mural"
pos = 0,0
postype = p1
keyctrl=0
stateno= 3005
ownpal = 1
supermovetime = 20

[State 3000, Super A]
type = SuperPause
trigger1 = AnimElem = 1
trigger1 = Anim = 4001
pos = 0,-floor(57*1.5)
anim = 100
sound = s3000, 3
poweradd = -1000
time =110
movetime =100

[State 3050, Super D]
type = NotHitBy
trigger1 = time = 0
trigger2 = anim = 4002; && animelemtime(1) = 0
value = SAC;, NA, SA, AT
time = 1 + 100 * (time = 0)

[State 1027, Spark]
type = Explod
trigger1 = (time %2)= 0 && time > 100
trigger2 = time = 0
id = 3060
anim = 3060
pos = (var(10)!=1)*160, 217
postype = Left
removetime = 2 + 100 * (time = 0)
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 1027, Spark]
type = Explod
trigger1 = (time %2)= 0 && time > 100
trigger2 = time = 0
id = 3064
anim = 3064
pos = (var(10)!=1)*160, 217
postype = Left
removetime = 2 + 100 * (time = 0)
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 1027, Spark]
type = Explod
trigger1 = (time %2)= 0 && time > 100
trigger2 = time = 0
id = 3075
anim = 3075
pos = (var(10)!=1)*160, 217
postype = Left
removetime = 2 + 100 * (time = 0)
id = 3074
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State 1027, Spark]
type = Explod
trigger1 = (time %30)= 0
id = 3070
anim = 275;3070
pos = (var(10)!=1)*160+216, 227
postype = Left
removetime = -2 
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

;som explosão
[State 200, 1]
type = PlaySnd
trigger1 = anim = 4002;time = [423,460]
trigger1 = (time%4) = 0
value = 194, 0
volume = 255

[State 1027, explode]
type = Explod
trigger1 = anim = 4002;time = [423,460]
trigger1 = (time%4) = 0
anim = 194
pos = 0,0;floor(random/10)+floor(18*1.5),-floor(random/50)
postype = p1
;removetime = 15
;bindtime = -1
sprpriority = 5
scale= 1+(time<450),1+(time<450)
random=126,20

[State 3050, 5]
type = ChangeAnim
trigger1 = pos y > 0
trigger2 = AnimTime = 0 && anim = 4002
value = 4002 + (anim=4002)

[State 0, 2]
type = VelSet
trigger1 = animelem = 9
trigger2 = pos y > 0
y = 7.5 * (pos y <= 0)
x = 7.5 * (pos y <= 0)

[State 1027, cobra gun - sound]
type = PlaySnd
trigger1 = animelem = 9
value = 3100, 0
;channel=1
volume = 255

[State 810, Shake]
type = EnvShake
time = 50
ampl = -8
freq = 40
trigger1 = pos y > 0

[State 0, 2]
type = posSet
trigger1 = pos y > 0
y = 0

[State 3000, 5]
type = HitDef
trigger1 = (time%5)=0 && anim=4001
attr = A, HA
animtype  = Hard
damage    = 12,4
getpower  = 0
priority  = 6
guardflag = MA
pausetime = 0,3
sparkxy = ceil(-10*1.5),0
hitsound   = 5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 10;30
ground.hittime  = 30
ground.velocity = -7,0
air.velocity = -7,7 
air.fall = 1
fall.animtype = Hard
fall.recover = 0
getpower = 0, 0
;fall=1

[State 3000, 5]
type = HitDef
trigger1 = anim= 4002 && animelemtime(1) = 0;!movecontact && 
attr = S, HA
animtype  = diagup;Hard
damage    = 200,10
getpower  = 0
priority  = 6
guardflag = MA
hitflag = MAFD
pausetime = 3,3
sparkxy = ceil(-30*1.5),0
hitsound   = 5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 10;30
ground.hittime  = 30
ground.velocity = -7,-16
air.velocity = -7,-16
air.fall = 1
fall.animtype = Hard
fall.recover = 0
down.velocity = -7,-16
down.hittime = 30
down.bounce = 1
getpower = 0, 0
fall=1
PalFX.add = 250,148 ,43
PalFX.mul = 250,148,43
PalFX.time = 80
p2stateno= 4555;5030

[State 1027, fogo]
type = Explod
trigger1 = anim = 4002
trigger1 = (time%2) = 0
anim = 3318
pos = 0,0
postype = p1
removetime = 120
bindtime = 1
;ownpal = 1
sprpriority = 3
random = 30,20
scale = 1,2
;vfacing = 1 - 2 * (target,vel y < 0)

[State 1027, fogo]
type = Explod
trigger1 = anim = 4002 && p2movetype = H
trigger2 = anim = 4003 && p2movetype = H
triggerall = (time%2) = 0
anim = 3318
pos = 0,0;-floor(const(size.mid.pos.x)),
postype = p2
removetime = 12
bindtime = 1
;ownpal = 1
sprpriority = 3
random = 30,0
scale = 1,2;1.5,2*1.5
vfacing = 1 - 2 * (target,vel y < 0)

[State 4600, remover gyropack]
type = RemoveExplod
trigger1 = animelemtime(1)= 0; && movecontact
id = 4001

[State 4600, gyropack]
type = Explod
trigger1 = animelemtime(1)= 0 && anim = 4001
id = 4001
anim = 4600
pos = 0,0
postype = p1
removetime = 101;1 + 6 * (animelem = 2)
bindtime = -1
sprpriority = 1;4
removeongethit = 1
;scale= 1.5,1.5
shadow = -1,0,0
supermovetime =100

[State 4550, computer bip]
type = playsnd
trigger1=time=0
value=270,0
volume=64

[State 3050, 5]
type = PlaySnd
trigger1 = anim = 4003 && AnimTime = 0
value = 0, 1
volume = 255
channel=1

[State 3050, 5]
type = ChangeState
trigger1 = anim = 4003 && AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; HITG_SHAKE (Vs-Style Hitbounce)
[Statedef 4555]
type    = U
movetype= H
physics = U

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 && GetHitVar(fall)
trigger2 = Pos Y != 0
type = a

[State 5000, 6]
type = SelfState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5001 ;HITG_SLIDE

[State 5000, 7]
type = SelfState
trigger1 = HitShakeOver
value = 5030

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[State 3050, 5]
type = SelfState
trigger1 = time=0
value = 5030

;---------------------------------------------------------------------------
; HITG_SHAKE (Vs-Style Hitbounce)
[Statedef 8000]
type    = U
movetype= H
physics = N
velset = 0,0

[State 8000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
value = 5012

[State 8000, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 8000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 8000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 && GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = A

[State 8000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 8001

[State 8000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 8000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 8000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITA_UP (initial going up) (Vs-Style Hitbounce)
[Statedef 8001]
type    = A
movetype= H
physics = N
anim = 5030
ctrl = 0

[State 8001, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 10

[State 8001, 1]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 8001, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 8001, 5]
type = ChangeState
trigger1 = (AnimTime = 0) || (Time = 10)
value = 8002 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; HITA_UP_T (transition) (Vs-Style Hitbounce)
[Statedef 8002]
type    = A
movetype= H
physics = N

[State 8002, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 8002, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 8002, 4]
type = ChangeState
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Time = 0     ;No transition anim
trigger3 = Anim != 5035 
value = 8003 ;HITA_FALL

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling) (Vs-Style Hitbounce)
[Statedef 8003]
type    = A
movetype= H
physics = N

[State 8003, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 8003, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 8003, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 8003, 6]
type = ChangeState
triggerall = Alive = 1
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 8004 ;HIT_BOUNCE

[State 8003, SelfState]
type = SelfState
triggerall = Alive = 0
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5101 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground) (Vs-Style Hitbounce)
[Statedef 8004]
type    = L
movetype= H
physics = N

[State 8004, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 3500, 4] ; círculo no chão -tremor
type = Explod 
trigger1 = time = [0,5]
trigger1 = (time % 5)= 0 
trigger2 = time = 1
pos = 0,0
postype = p1 
bindtime = 1
sprpriority = 3 
anim = F61 + (time = 1)
removetime = -2
ownpal = 1
scale= const(size.xscale),const(size.yscale)

[State 8004, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 8004, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 8004, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 8004, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 8004, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 8004, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 8004, 10]
type = PlaySnd
trigger1 = Time = 1 ;Hit ground
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 8004, 11]
type = PosFreeze
trigger1 = 1

[State 8004, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 8005

[State 8004, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; HIT_AIRFALLRECOVER (Vs-Style Hitbounce)
[Statedef 8005]
type    = A
movetype= I
physics = N
anim = 5210
ctrl = 0

[State 8005, 1]
type = PosFreeze
trigger1 = Time = 0
value = 4

[State 8005, 2] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -20

[State 8005, 1] 
type = VelMul
trigger1 = Time = 4
x = .8
y = .8

[State 8005, 1]
type = VelSet
trigger1 = Time = 4
y = -3
x = -5

[State 8005, 3]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 2

[State 8005, 5]
type = VelAdd
trigger1 = Time >= 4
y = .35

[State 8005, 5] ;Land on ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMP_LAND
ctrl = 1

;---------------------------------------------------------
; Super KO FX
; (THANKS TO: Splode´s Rogue)
[Statedef 8550]
type = A
movetype = I
physics = N
anim = 196;8550

[State 3001, EnvColor]
type = EnvColor
trigger1 = time<34 && (time%4)=0
value = 235,235,235
under = 1
time = 1

[State 3001, EnvColor]
type = EnvColor
trigger1 = time<34 && (time%4)=1
value = 28,28,28
under = 1
time = 1

[State 3001, EnvColor]
type = EnvColor
trigger1 = time<34 && (time%4)=2
value = 198,198,198
under = 1
time = 1

[State 3001, EnvColor]
type = EnvColor
trigger1 = time<34 && (time%4)=3
value = 134,134,134
under = 1
time = 1

[State 3001, EnvColor]
type = EnvColor
trigger1 = time=[34,64]
value = 0,0,0
under = 1
time = 1

[State 8550,7]
type = allPalFX
trigger1 = time = [34,64]
time = 1
color = 6 * (time-34)
;invertall = (time = [30,60])
;add = 0,0,ceil((time*1.34)/2)
;add = time*(time > 140),time*(time > 140),ceil(time*1.34)

[State 8550,7]
type = bgPalFX
trigger1 = time = [64,104]
time = 1
color = 6 * (time-64)
;invertall = (time = [30,60])
;add = 0,0,ceil((time*1.34)/2)
;add = time*(time > 140),time*(time > 140),ceil(time*1.34)

[State 8550, 1]
type = AssertSpecial
trigger1 = time = [34,64]
flag2 = NoFG
flag = nobardisplay
;flag = NoBG
persistent=0

[State 8550, 7] 
Type = destroyself 
trigger1 = roundstate!=3
;trigger2 = time=45;30;= 20;25

;---------------------------------------------------
; Super Armor State
[Statedef 9000]
type = U
movetype = H

[State 9000, VarSet]
type = VarSet
trigger1 = time = 0
var(8) = facing

[State 9000, VarSet]
type = turn;VarSet
;trigger1 = time != 0
trigger1 = var(8) != facing
facing = var(8) 

[State 9000, impact Sound]
type = PlaySnd
trigger1 = Time = 0
value = 9000, 0

[State 9000, a]
type = VarSet
trigger1 = time = 0
v = 15
value = 1

[State 9000, b]
type = VarSet
trigger1 = time <= 0
v = 13
value = AnimElemNo(0)
ignorehitpause = 1

[State 9000, 1]
type = VarSet
trigger1 = time = 0
v = 12
value = var(4)

[State 9000, 2]
type = VarSet
trigger1 = time = 0
v = 4
value = 0

[State 9000, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

;[State 9000, VarSet]
;type = VarSet
;trigger1 = Life <= 0
;v = 7
;value = 1

[State 9000, ChangeState];Dead
type = ChangeState
trigger1 = Life <= 0
value = ifelse(StateType = A, 5020,5000)

[State 9000, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = Anim
elem = var(13)

[State 9000, End]
type = ChangeState
trigger1 = (time >= floor(gethitvar(hittime) * 0.8)) && (Life > 0)
value = var(5)
ctrl = var(6)

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2, 17] ; debug
type = DisplayToClipboard
trigger1 = roundstate > 0
text="var(22) %d, vel y %d, prevstate %d, p2bodydist x %d" 
params = var(22), floor(vel y),var(5), 120-time
;text="var(59) %d, var(17) %d, floor(p2bodydist x) %d, ProjHitTime %d" 
;params = var(59), var(17),floor(p2bodydist x), (ProjHitTime(1500))


; Gethit PalFX
[State -2, PalfX]
type = PalFX
triggerall = var(15) > 0
trigger1 = (var(15) % 4) = 1
add = 11,164,0
mul = 256,358,256
time = 2
ignorehitpause = 1

[State -2, Add]
type = VarAdd
trigger1 = var(15) > 0
v = 15
value = 1
ignorehitpause = 1

[State -2, Clear]
type = VarSet
trigger1 = var(15) > 16
v = 15
value = 0 
ignorehitpause = 1

[State -2, Super Armor Changestate]
type = SelfState
triggerall= (StateNo = 5000) || (StateNo = 5010) || (StateNo = 5070 && var(3)>0) || (StateNo = 5020 && PrevStateNo = 2000)
triggerall = life>0
triggerall = !var(22)
trigger1 = (time = 0) && (var(4) < 15) 
trigger2 = StateNo = 5020 && (PrevStateNo = 2000) && vel y <= -1;(anim=2000||anim=2010||anim=2020) 
;PrevStateNo = 3000;2010
value = 9000 

[State -2, Set Var if in Custom state]
type = VarSet
trigger1 = (StateNo != 5000) && (StateNo != 5010)
trigger2 = StateNo != 5070 && var(3)>0
v = 22
value = ifelse(var(19) - var(20) = 0, 1, 0)

[State -2, Set Var]
type = VarSet
trigger1 = 1
v = 20
value = var(19)

[State -2, 1]
type = DefenceMulSet
trigger1 = 1;stateno=9000
value = 1 - 0.5 * (NumExplod(3073)!=0)

[State -2, diretriz 3]
type = Explod
trigger1 = var(3)>0 && numexplod(3079)<2
anim = 3079
id = 3079
pos = (var(10)!=1)*160, 230+((time%2)=0)
postype = Left
removetime = 3
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1
scale=var(3)/25+1,1

[State -2, diretriz 4]
type = Explod
trigger1 = var(1)>0 && numexplod(3079)<2
anim = 3079
id = 3079
pos = (var(10)!=1)*160, 230+((time%2)=0)
postype = Left
removetime = 3
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1
scale=var(1)/100,1
id=3079

[State -2, levantar]
type = PlaySnd
;triggerall = animelemtime(1)<5
trigger1 = anim=5120
triggerall = time < 5
trigger2 = anim=5040 && animelem=1
trigger3 = anim=5200 && animelem=1
trigger4 = anim=5210 && animelem=1
value = 0, 3
volume = 255
channel=1

[State -2, tonto]
type = PlaySnd
trigger1 = anim=5300 && (time%20)=0
trigger2 = anim=5150 && (time%20)=0 && animelem!=1
trigger3 = (anim=5 || anim = 6) && animelem=1
value = 0, 1
volume = 255
;channel=1

[State -2, alert]
type = Explod
triggerall = life > 0
trigger1 = numexplod(3100)= 0 && life < 330
id = 3100
anim = 3100
pos = (var(10)!=1)*160, 8;16
postype = Left
removetime = -2
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State -2, eficiência %]
type = Explod
trigger1 = numexplod(3105)< 2 && life < 330
id = 3105
anim = 3105
pos = (var(10)!=1)*160, 0;8
postype = Left
removetime = 1
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State -2, var(life)]
type = varset
trigger1 =1; life < 330
var(11)=ceil(life/10)*(1+(var(3)!=0))+(life>0)

[State -2, dezenas]
type = Explod
trigger1 = numexplod(3110)< 2 && life < 330
id = 3110
anim = 3110 + ceil(var(11)/10)
pos = (var(10)!=1)*160+88, 0;8
postype = Left
removetime = 1
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State -2, unidades]
type = Explod
trigger1 = numexplod(3115)< 2 && life < 330
id = 3115
anim = 3110 + var(11) - ceil(var(11)/10)*10
pos = (var(10)!=1)*160+96, 0;8
postype = Left
removetime = 1
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State -2, posição]
type = varset
trigger1 = var(10)=0 && roundstate<2
var(10)=1+(facing=-1);(var(10)!=1);

[State -2, alert]
type = Explod
triggerall = life > 0
trigger1 = (gametime %30)=0 && numexplod(3100)= 0 
id = 3101
anim = 3101
pos = (var(10)!=1)*160, 8;16
postype = Left
removetime = 15;-2
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1
supermovetime =-1
supermove =1

[State -2, damage screen - time over]
type = Explod
;triggerall = life > 0
trigger1 = numexplod(3046)= 0 && anim = 5150
id = 3046
anim = 3046
pos = (var(10)!=1)*160, 8;16
postype = Left
removetime = -1
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

[State -2, damage screen - pausa]
trigger1 = time < 400 && anim = 5150
type = AssertSpecial
flag = roundnotover;Intro

[State -2, remover gyropack]
type = RemoveExplod
trigger1 = numexplod(4001)!=0 && statetype!=A
id = 4001

[State 1027, Power arm2]
type = RemoveExplod
trigger1 = numexplod(3025)!=0 && anim != 3020 && anim != 3023
id=3025

[State -2, pressstart]
type = Explod
triggerall = var(21) != 0 && roundstate < 3
trigger1 = (gametime%60)= id && life != 0 && numexplod(3072)=0 
trigger1 = numexplod(3079)=0 && numexplod(274)=0 && numexplod(3060)=0
id = 8620
anim = 8620
pos = (((enemy, id)<id)*200)+16, ((id - 32)*2)+226
postype = Left
removetime = 30;-2
bindtime = -1
sprpriority = -1
ownpal = 1
ontop = 1

[State -2, remove pressstart]
type = RemoveExplod
triggerall = numhelper(2700)!=0
trigger1 = helper,numexplod(2710)!=0
id=8620

[State -2, brilho]
type = PalFX
trigger1 = (gametime%30) = 0 && var(3)>0 && stateno!=3050
time = 30
ignorehitpause = 1
;
color = 255;128*(1+((gametime%60) = 0));255;0
add = 32,32,32
;mul = -128,-128,-128
sinadd = 32,32,32,ceil((var(3))/2)


;[State -2, debug]
;type = SuperPause
;trigger1 = Stateno=4010 && numtarget=0
;anim = 100
;sound = s3000, 0
;time =200
;movetime =0 

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

[State -3, alert]
type = RemoveExplod
trigger1 = 1;(gametime %30)=0 ;1;
id = 3101

[State -3, Increment]
type = VarAdd
trigger1 = 1
v = 19
value = 1

[State -3, directive 3]
type = Varset
trigger1 = NumExplod(3073)!=0
v = 4
value = 0

[State -3, directive 3 e 4];round over
type = Varset
triggerall = roundstate!=2
trigger1 = var(1)!=0
trigger2 = var(3)!=0
v = 1 + 2 * (var(3)!=0)
value = 0

[State -3, directive 3 e 4]
type = Explod
trigger1 = numexplod(3060)< 2 && var(1) > 0
trigger2 = numexplod(3060)< 2 && var(3) > 0
id = 3060
anim = 3060
pos = (var(10)!=1)*160, 217
postype = Left
removetime = 1
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1
ignorehitpause=1

[State -3, directive 3 e 4]
type = Explod
trigger1 = numexplod(3064)<2 && var(1) > 0
trigger2 = numexplod(3063)<2 && var(3) > 0
id = 3064 - (var(3) > 0)
anim = 3064  - (var(3) > 0)
pos = (var(10)!=1)*160, 217
postype = Left
removetime = 1
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1
ignorehitpause=1

[State -3, directive 3 e 4]
type = Explod
trigger1 = numexplod(3074)<2 && var(1) > 0
trigger2 = numexplod(3073)<2 && var(3) > 0
id = 3074 - (var(3) > 0)
anim = 3074 - (var(3) > 0)
pos = (var(10)!=1)*160, 217
postype = Left
removetime = 1
id = 3074
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1
ignorehitpause=1

[State 1027, cursor]
type = Explod
trigger1 = var(1) > 0
trigger2 = var(3) > 0
triggerall = numexplod(3070)=0;(time%30)=0
id = 3070
anim = 3070
pos = (var(10)!=1)*160+90*(var(1) > 0)+115*(var(3) > 0), 227
postype = Left
removetime = 29;floor(var(1)/2)
bindtime = -1
sprpriority = 1
ownpal = 1
ontop = 1

;This controller plays a sound everytime KFM lands from a jump, or
;from his back-dash.
[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 106 ;Run-back land
value = 40, 0

[State -3, turn animation]
type = Changeanim
triggerall = SelfAnimExist(anim + 6000) && Time = 0 
trigger1 = facing = -1
value = (anim + 6000)

; Super Armor controllers
[State -3, Increment Counter]
type = VarAdd
trigger1 = Stateno = 9000
v = 4
value = 5

[State -3, Decrement Counter]
type = VarAdd
trigger1 = (StateNo != 9000) && (Var(4) > 0)&& (MoveType != H)
v = 4
value = -1

[State -3, Save StateNo]
type = VarSet
trigger1 = (MoveType != H) && (StateNo != 9000)
var(5) = StateNo

[State -3, Save Ctrl]
type = VarSet
trigger1 = (MoveType != H) && (StateNo != 9000)
var(6) = Ctrl

;[State -3, ID]
;type = VarSet
;trigger1 = 1
;var(10) = (ID %2)!= 0

[State -3, som passo/pouso]
type = PlaySnd
trigger1 = (anim = 20 || anim = 6020 || anim = 21 || anim = 6021)
trigger1 = (animelem = 2 || animelem = 6)
trigger2 = stateno = 52
trigger2 = (time=1 || time=2)
trigger3 = anim=3000
trigger3 = (animelem = 3 || animelem = 8)
value = 20, 0
freqmul = 1 -  0.02 * (animelem = 6);
volume = 64 - (60*(animelem = 6))
;Lowpriority=(animelem = 2 || animelem = 3);1
;channel=2

[State -3, Jatos]
type = Explod
triggerall= numexplod(50)=0
trigger1 = stateno = 50
trigger2 = stateno = 2000
triggerall = vel y < - 2
id=50
anim = 50
pos = 0,floor(10*1.5)
postype = p1
removetime = -2
bindtime = -1
sprpriority = -2
;scale= 1.5,1.5
removeongethit = 1
;scale= 1.5,1.5

[State -3, som jatos]
type = PlaySnd
trigger1 = numexplod(50)!=0
value = 800,0;3100, 0;3020,0;194, 0;
;freqmul = 1 -  0.02 * (animelem = 6);
volume = 128
channel=1
;lowpriority = 1

; Get hit sound
[State -3, 1]
type = VarRandom
trigger1 = stateno = 5000
trigger1 = Time = 1
v = 8

; Get hit scream
[State -3, 1]
type = PlaySnd
triggerall = life > 0
triggerall = Time = 1
triggerall = var(8) < 999
trigger1 = stateno = 5000 || stateno = 5001
trigger1 = anim != 5000 
trigger1 = anim != 5010 
trigger2 = stateno = 5040
trigger2 = random < 400
trigger3 = stateno = 5050
value = 5000,(stateno = 5001 && var(8) < 500)
channel=0
volume = 128

; Get hit scream
[State -3, 1]
type = PlaySnd
triggerall = life > 0
triggerall = Time = 1
triggerall = var(8) >= 500
trigger1 = stateno = 5001
trigger1 = anim != 5000 
trigger1 = anim != 5010 
trigger2 = stateno = 5040
trigger2 = random < 400
trigger3 = stateno = 5050
value = 5000,2
channel=0
volume = 128

; Get hit scream
[State -3, 1]
type = PlaySnd
triggerall = life > 0
triggerall = Time = 1
triggerall = var(8) < 500
trigger1 = stateno = 5070
value = 5000,2
channel=0
volume = 128

[State -3, Add]
type = VarAdd
trigger1 = var(1) > 0
v = 1
value = -1 - 1 * (command="holdup"||Vel y < 0)
ignorehitpause = 1

[State -3, Add]
type = VarAdd
trigger1 = var(3) > 0
v = 3
value = -1

[State -3, Add]; Vôo normal
type = VelAdd
triggerall = var(21)=0
trigger1 = MoveType != H && statetype = A
trigger1 = stateno < 1000
;trigger1 = (ScreenPos Y)+floor(const(size.head.pos.y)*1.5) = [0,239]
trigger1 = (ScreenPos Y)+floor(const(size.head.pos.y)) = [0,239]
trigger1 = var(1) > 0 && (time%2)=0
y = -(command="holdup")+(command="holddown")-1*(vel y>2)
x = (-(command="holdback")+(command="holdfwd"))*(0.25)*abs(vel x < 5)

[State -3, Add]; Vôo A.I.
type = VelAdd
triggerall = var(21)=1
trigger1 = MoveType != H && statetype = A
trigger1 = stateno < 1000
;trigger1 = (ScreenPos Y)+floor(const(size.head.pos.y)*1.5) = [0,239]
trigger1 = (ScreenPos Y)+floor(const(size.head.pos.y)) = [0,239]
trigger1 = var(1) > 0 && (time%2)=0
y = -(p2bodydist y > -30 && p2stateno = [1000,4500])+((enemynear,facing)=facing)-1*(vel y>2)
x = (-(p2bodydist x < 50 && p2movetype = A)+(p2bodydist x > 50 && p2movetype != A))*(0.25)*abs(vel x < 5)

[State -3, Add]
type = turn
triggerall = p2dist X < -5 
trigger1 = command="holdup"
triggerall = var(1) > 0 && (time%2)=0
trigger2 = var(21)=1 && vel y < 0

[State -3, Add]
type = ChangeAnim
triggerall = var(1) > 0 && statetype = A
trigger1 = facing=-1
trigger1 = SelfAnimExist(anim + 6000)
trigger2 = facing=1
trigger2 = anim >= 6000;SelfAnimExist(anim - 6000)
value = anim + (facing=-1)*6000

[State -3, Jatos]
type = Explod
triggerall= var(1) > 0 && numexplod(51)=0
triggerall = movetype != H
trigger1 = statetype = A
trigger1 = (command!="holddown")
id=51
anim = 50 + (command!="holdback") - (command!="holdfwd")
pos = -floor(10*1.5),floor(1.5*(10-20*(command!="holdup")));-floor(10*1.5)
postype = p1
removetime = -2
bindtime = -1
sprpriority = -2
removeongethit = 1
scale= (command="holdup")*(var(1)>0)+1,1+(var(1)>0)*(command="holdup")

[State -3, Gyropack ]
type = Explod
triggerall= var(1) > 0; && numexplod(4001)=0
triggerall= stateno != 2000;(time%2)=0 && 
triggerall = movetype != H && stateno != [600,650]
trigger1 = statetype = A
id=4001;0; + (stateno = [620,650])
anim = 4000 + (anim - 6000*(anim > 6000))
pos = 0,0
postype = p1
removetime = -2
bindtime = -1
sprpriority = 4-3*(anim = 43||anim = 6043||anim = 240||anim = 6260||anim = 6265)
removeongethit = 1
;scale= 1.5,1.5
shadow = -1,0,0
;anim = 610||anim = 6610||anim = 620||anim = 6620||

[State -3, Target mode]
type = varadd
trigger1 = command="hold_c" && var(21)=0
v=14
value=1

[State -3, Target mode]
type = varadd
triggerall = numhelper(2700)=1
trigger1 = var(21)=1 && (helper(2700), time=0)
v=14
value=16

[State -3, Target mode]
type = varset
trigger1 = command!="hold_c"
v=14
value=0

;[State -3];, 1];seta]
;type = Explod
;trigger1 = var(21)!=0 && alive = 1
;pos = 0,-120
;postype = p1
;bindtime = 1
;sprpriority = 4
;anim = 9999
;facing = 1

;This controller puts a target sign on P2 every time you do a super jump.
; Põe um símbolo no P2 (O)
[State -3];, 2]; Põe um símbolo no P2 (O)]
type = Explod
;triggerall = NumExplod(981) = 0
trigger1 = enemynear, screenpos y <0
;triggerall = enemy, var(39)=var(37) || var(39) = 0
trigger2 = enemynear, screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y > 200
anim = 982 - (var(10)!=1);(ishometeam = 1)
id = 981
pos = ceil(backedgedist+p2dist x),20+(enemynear, screenpos y>0)*200
postype = back
sprpriority = 4
ignorehitpause = 1
ontop = 1
bindtime = -1
persistent = 1
facing = (facing)
removetime = 2 

;Põe um símbolo em você
; Põe um símbolo no P1 (O)
[State -3];, 4];Põe um símbolo no P1 (O)]
type = Explod
;triggerall = NumExplod(981) = 0
trigger1 = screenpos y <0 ;P2bodyDist y > 200
triggerall = var(39)=var(37)
trigger2 = screenpos y > 220 - (const(size.head.pos.y))
;trigger1 = P2bodyDist y < -200
trigger1 = var(39)=var(37)
trigger3 = P2bodyDist y < -200
anim = 981 + (var(10)!=1);(ishometeam = 1)
id = 981
pos = ceil(backedgedist),20+(screenpos y>0)*200
postype = back
sprpriority = 4
ignorehitpause = 1
ontop = 1
bindtime = -1
persistent = 1
facing = (facing)
removetime = 2

;som explosão
[State -3]
type = PlaySnd
triggerall = anim = 5150
trigger1 = animelemtime(2)< 0; = 1
;trigger1 = animelemtime(1)< 80; = 1
trigger1 = (time%12) = 0
trigger2 = time=4
value = 194, 0
volume = 255;-time/24
channel = 1

[State -3]
type = Explod
trigger1 = anim = 5150
trigger1 = animelemtime(2)< 0; = 1
trigger1 = (time%4) = 0
anim = 194
pos = 0,-ceil((random/100)*(1.5))
postype = p1
removetime = -2
;bindtime = -1
sprpriority = 5
scale= 1/(1+(time<45)),1/(1+(time<45));1.5/1+((time%2) = 0);/2+time/4
random=60,0

[State -3, alert bip]
type = playsnd
triggerall=(gametime%30)=0
trigger1 = numexplod(3100)= 1 && roundstate = 2
trigger2 = numexplod(3046)= 1 && time > 220
value=270,1
volume = 64 ;* (1+(life>0))

[State -3, não estou te prendendo]
type = PlaySnd
trigger1 = stateno=5900 && time=10 && RoundsExisted=2
value = 180, 6
channel=0
volume = 255

