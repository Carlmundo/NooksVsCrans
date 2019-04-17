;---------------------------------------------------------------------------
[Statedef 0];                                                 stand override
type = S;                  (plays several actions in a variety of orders...)
physics = S
sprpriority = 0
anim = 0

[State 0]
type = changeanim
trigger1 = anim = 5 && animtime = 0
value = 0

[State 0]
type = velset
trigger1 = time = 0
y = 0

[State 0]
type = velset
trigger1 = abs(vel x) < 2
trigger2 = time = 4
x = 0

[State 0]
type = varrandom
trigger1 = time = 0
v = 2
range = 1,9

[State 0]
type = varrandom
trigger1 = time = 0
v = 3
range = 1,6

[State 0]
type = varrandom
trigger1 = time = 0
v = 4
range = 1,4

[State 0]
type = changeanim
triggerall = anim = 0
triggerall = animtime = 0
trigger1 = var(2) < 5
value = 1100

[State 0]
type = changeanim
triggerall = anim = 0
triggerall = animtime = 0
trigger1 = var(2) = 5
value = 1000

[State 0]
type = playsnd
trigger1 = anim = 1000
trigger1 = animelem = 12
channel = 9
value = 4,0

[State 0]
type = playsnd
triggerall = anim = 1000
trigger1 = animelem = 20
trigger2 = animelem = 24
trigger3 = animelem = 28
trigger4 = animelem = 31
trigger5 = animelem = 37
trigger6 = animelem = 41
trigger7 = animelem = 45
trigger8 = animelem = 48
trigger9 = animelem = 54
trigger10 = animelem = 58
trigger11 = animelem = 62
trigger12 = animelem = 65
trigger13 = animelem = 71
trigger14 = animelem = 75
trigger15 = animelem = 79
trigger16 = animelem = 82
value = 23,0

[State 0]
type = changeanim
triggerall = anim = 0
triggerall = animtime = 0
trigger1 = var(2) = 6
value = 1200

[State 0]
type = playsnd
trigger1 = anim = 1200
trigger1 = animelem = 5
value = 2,0
channel = 0

[State 0]
type = changeanim
triggerall = anim = 0
triggerall = animTime = 0
trigger1 = var(2) > 6
value = 1

[State 0]
type = changestate
triggerall = anim = 1
trigger1 = animtime = 0
value = 0

[State 0]
type = changestate
triggerall = anim = 1000
trigger1 = animtime = 0
value = 0

[State 0]
type = changeanim
triggerall = anim = 1100
triggerall = animtime = 0
trigger1 = var(2) < 4
value = 1150

[State 0]
type = changeanim
triggerall = anim = 1100
triggerall = animTime = 0
trigger1 = var(2) > 3
value = 1160

[State 0]
type = changeanim
triggerall = anim = 1100
triggerall = animtime = 0
trigger1 = var(2) = 6
value = 1170

[State 0]
type = playsnd
trigger1 = anim = 1170
trigger1 = animelem = 3
value = 6,0

[State 0]
type = changeanim
triggerall = anim = 1150
triggerall = animtime = 0
trigger1 = var(4) < 3
value = 1160

[State 0]
type = changeanim
triggerall = anim = 1150
triggerall = animtime = 0
trigger1 = var(4) = 3
value = 1151

[State 0]
type = changeanim
triggerall = anim = 1150
triggerall = animtime = 0
trigger1 = var(4) = 4
value = 1170

[State 0]
type = changeanim
triggerall = anim = 1151
trigger1 = animtime = 0
value = 1160

[State 0]
type = changestate
triggerall = anim = 1160
trigger1 = animtime = 0
value = 0

[State 0]
type = changestate
triggerall = anim = 1170
trigger1 = animtime = 0
value = 0

[State 0]
type = changeanim
triggerall = anim = 1200
triggerall = animtime = 0
trigger1 = var(3) > 4
value = 1201
elem = 2

[State 0]
type = changeanim
triggerall = anim = 1200
triggerall = animtime = 0
trigger1 = var(3) < 5
value = 1250

[State 0]
type = changestate
triggerall = anim = 1201
trigger1 = animtime = 0
value = 0

[State 0]
type = changeanim
triggerall = anim = 1250
triggerall = animtime = 0
trigger1 = var(3) < 4
value = 1201

[State 0]
type = changeanim
triggerall = anim = 1250
triggerall = animtime = 0
trigger1 = var(3) = 4
value = 1251

[State 0]
type = changeanim
triggerall = anim = 1251
trigger1 = animtime = 0
value = 1201
;---------------------------------------------------------------------------
[Statedef 11];                                               crouch override
type    = C
physics = C
anim = 11
sprpriority = 0
velset = 0,0

[State 11]
type = null
trigger1 = 1
;---------------------------------------------------------------------------
[Statedef 23];                                                         crawl
type    = C
physics = C
movetype = I
sprpriority = 0
velset = 2.6, 0
ctrl = 1

[State 23]
type = changeanim
trigger1 = anim != 23
value = 23

[State 23]
type = changestate
trigger1 = command != "holdfwd"
value = 11
;---------------------------------------------------------------------------
[Statedef 50];                             jump override (made it an attack)
type    = A
physics = A
movetype = A

[State 50]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50]
type = hitdef
trigger1 = time = 0
attr = A, NA
hitflag = MAFD
guardflag = MA
animtype = hard
damage = 60,8
pausetime = 0,10
sparkno = -1
hitsound = S1,0
guardsound = s6,1
ground.slidetime = 20
guard.dist = 0
fall = 1
p2facing = 1

[State 50]
type = explod
trigger1 = movehit
anim = 8000
pos = 2,0
ontop = 1

[State 50]
type = changestate
trigger1 = movecontact
value = 51

[State 50]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3
;---------------------------------------------------------------------------
[Statedef 51];                                     after hitting from a jump
type = A
physics = A
movetype = A
ctrl = 0
velset = -3.2,-7
anim = 401

[State 51]
type = hitdef
trigger1 = time = 10
attr = A, NA
hitflag = MAFD
guardflag = MA
animtype = hard
damage = 50,5
pausetime = 0,8
sparkno = -1
hitsound = S1,0
guardsound = s6,1
ground.slidetime = 20
guard.dist = 0
fall = 1

[State 51]
type = explod
trigger1 = movehit
anim = 8000
pos = 2,2
ontop = 1

[State 51]
type = changestate
trigger1 = movecontact
value = 51
;---------------------------------------------------------------------------
[Statedef 105];                             fast retreat (hop back override)
type    = S
physics = S
anim = 105
sprpriority = 1

[State 105]
type = playsnd
trigger1 = animelem = 4
trigger2 = animelem = 8
value = 23,0

[State 105]
type = velset
trigger1 = 1
x = const(velocity.run.back.x)

[State 105]
type = assertspecial
trigger1 = 1
flag = nowalk

[State 105]
type = assertspecial
trigger1 = 1
flag = noautoturn

[State 105]
type = changestate
trigger1 = command != "holdback"
value = 0
;---------------------------------------------------------------------------
[Statedef 170];                                                         lose
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170]
type = playsnd
trigger1 = time = 1
value = 26,0

[State 170]
type = nothitby
trigger1 = time >= 0
value = SCA
time = 1
;---------------------------------------------------------------------------
[Statedef 180];                                                          win
type = S
ctrl = 0
velset = 0,0

[State 180]
type = varrandom
trigger1 = time = 0
v = 1
range = 1,3

[State 180];       <<clap, thumbs up, winner win pose>>
type = changeanim
trigger1 = var(1) = 1
trigger1 = time = 0
value = 181

[State 180];       <<it's a big-ass banana>>
type = explod
trigger1 = var(1) = 1
trigger1 = time = 0
anim = 8001
pos = 70,0
ontop = 1
scale = 1.5,1.5
ownpal = 1

[State 180]
type = playsnd
trigger1 = var(1) = 1
trigger1 = time = 0
value = 8,0

[State 180]
type = assertspecial
trigger1 = time < 400
flag = roundnotover

[State 180]
type = changestate
trigger1 = var(1) = 2
trigger1 = time = 0
value = 182

[State 180];       <<laugh win pose>>
type = changeanim
trigger1 = var(1) = 3
trigger1 = time = 0
value = 183

[State 180];       <<laugh win pose>>
type = playsnd
trigger1 = var(1) = 3
trigger1 = time = 0
value = 110, 1
;---------------------------------------------------------------------------
[Statedef 182];                                          "finished" win pose
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182]
type = assertspecial
trigger1 = time < 200
trigger1 = var(1) = 1
flag = roundnotover

[State 182]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 182]
type = playsnd
trigger1 = animelem = 6
trigger2 = animelem = 9
trigger3 = animelem = 12
trigger4 = animelem = 18
value = 17,0

[State 182]
type = playsnd
trigger1 = time = 0
value = 110,0

[State 182]
type = veladd
trigger1 = time = 97
x = -1.5
;---------------------------------------------------------------------------
[Statedef 191];                                                        intro
type = S
ctrl = 0
velset = 0,0

[State 191]
type = assertspecial
trigger1 = 1
flag = intro

[State 191]
type = varrandom
trigger1 = time = 0
v = 5
range = 1,2

[State 191];         <<eye-bulge intro>>
type = changeanim
trigger1 = time = 0
trigger1 = var(5) = 1
value = 191

[State 191]
type = playsnd
trigger1 = time = 0
trigger1 = var(5) = 1
value = 4,0

[State 191]
type = changestate
trigger1 = time = 0
trigger1 = var(5) = 2
value = 192

[State 191]
type = changestate
trigger1 = animtime = 0
value = 0
;---------------------------------------------------------------------------
[Statedef 192];                        dance intro initiate (fall to ground)
type = A
physics = N
ctrl = 0
anim = 192

[State 192]
type = gravity
trigger1 = 1

[State 192]
type = assertspecial
trigger1 = 1
flag = intro

[State 192]
type = posset
trigger1 = time = 0
y = -150

[State 192]
type = changestate
trigger1 = pos y > 0
value = 193
;---------------------------------------------------------------------------
[Statedef 193];                                                  dance intro
type = S
physics = S
ctrl = 0
velset = 0,0
anim = 193

[State 193]
type = playsnd
trigger1 = time = 0
value = 15,0

[State 193]
type = posset
trigger1 = time = 0
y = 0

[State 192]
type = explod
trigger1 = time = 0
anim = 8002
pos = 100,0
removetime = -1
id = 8002
scale = 1.5,1.5
ownpal = 1

[State 193]
type = assertspecial
trigger1 = 1
flag = intro

[State 193];         <<start shaking your groove-thing after landing>>
type = changeanim
trigger1 = time = 10
value = 194

[State 193]
type = playsnd
trigger1 = time = 10
value = 22,0
channel = 8
loop = 1

[State 193]
type = stopsnd
trigger1 = animtime = 0
channel = 4

[State 193]
type = changestate
trigger1 = animtime = 0
value = 0
;---------------------------------------------------------------------------
;[Statedef 194];                                                barrel intro
;type = S;                 oops, I forgot the correct exploding sprites lol!
;physics = S;                                                       screw it
;ctrl = 0
;velset = 0,0
;anim = 5500
;
;[State 194]
;type = changeanim
;trigger1 = time = 100
;value = 8007
;---------------------------------------------------------------------------
[Statedef 200];                                                        pound
type    = S
movetype= A
physics = S
juggle  = 6
poweradd= 65
ctrl = 0
velset = 0,0
anim = 200
sprpriority = 2

[State 200]
type = playsnd
trigger1 = animelem = 4
value = 27,0

[State 200]
type = playerpush
trigger1 = 1
value = 0

[State 200]
type = hitdef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = 100,20
guardflag = MA
pausetime = 12,12
sparkno = s8000
sparkxy = -10,-20
hitsound   = s1,0
guardsound = s6,1
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2,10
air.velocity = -2,10
yaccell = .4
fall = 1

[State 200]
type = posadd
trigger1 = animelem = 5
trigger2 = animelemtime(5) = 4
trigger3 = animelemtime(5) = 8
trigger4 = animelem = 6
trigger5 = animelem = 7
x = 13

[State 200]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 210];                                               punch initiate
type = A;             (this will be a "charge up" state in the next release)
movetype= I;                          I was far too fucking lazy to do it...
physics = S
poweradd= 65
ctrl = 0
velset = 0,0
anim = 210
sprpriority = 2

[State 210]
type = playsnd
trigger1 = time = 0
value = 17,0
loop = 1
channel = 9

[State 210]
type = changestate
trigger1 = command != "holda"
value = 211
;---------------------------------------------------------------------------
[Statedef 211];                                                        punch
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 211
sprpriority = 2

[State 211]
type = playsnd
trigger1 = time = 10
value = 28,0

[State 211]
type = hitdef
trigger1 = time = 0
attr = S, NA
animtype  = hard
damage    = 200,40
guardflag = MA
pausetime = 12,12
sparkno = s8000
sparkxy = -10,-20
hitsound   = s1,0
guardsound = s6,1
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4,-4
air.velocity = -2.2,-3.2
fall = 1

[State 211]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 220];                                                         kick
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 65
ctrl = 0
velset = 0,0
anim = 220
sprpriority = 2

[State 220]
type = playsnd
trigger1 = time = 0
value = 29,0
channel = 0

[State 220]
type = hitdef
trigger1 = time = 0
attr = S, NA
animtype  = medium
damage    = 70,15
guardflag = MA
pausetime = 16,0
sparkno = s8000
sparkxy = -10,-20
hitsound   = s1,0
guardsound = s6,1
ground.type = low
ground.slidetime = 20
ground.hittime  = 20

[State 220]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 230];                                                  ground slap
type    = S
movetype= A
physics = S
juggle  = 5
poweradd = 65
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 2

[State 230]
type = playsnd
trigger1 = animelem = 13
value = 30,0

[State 230]
type = hitdef
trigger1 = time = 0
attr = S, NA
hitflag = DMF
guardflag = M
animtype = diagup
damage = 80,10
pausetime = 12,0
guard.pausetime = 20,0
sparkno = s8000
sparkxy = 0,0
ground.slidetime = 10
ground.hittime = 10
yaccel = .4
ground.velocity = 0,-8
guard.velocity = -6
hitsound   = s1,0
guardsound = s6,1
p2facing = 1
fall = 1
fall.damage = 20
down.velocity = 0,-7
down.bounce = 1
envshake.time = 200
envshake.freq = 1
envshake.ampl = 3
envshake.phase = 2

[State 230]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 240];                                                     air kick
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 65
ctrl = 0
anim = 240
sprpriority = 2

[State 240]
type = playsnd
trigger1 = time = 3
value = 31,0

[State 240]
type = hitdef
trigger1 = time = 0
attr = A, NA
animtype  = medium
damage    = 70,15
guardflag = MA
pausetime = 12,12
sparkno = s8000
sparkxy = -10,-20
hitsound   = s1,0
guardsound = s6,1
ground.type = low
ground.slidetime = 12
ground.hittime  = 20
;---------------------------------------------------------------------------
[Statedef 250];                                                    air punch
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 65
ctrl = 0
anim = 250
sprpriority = 2

[State 240]
type = playsnd
trigger1 = time = 0
value = 32,0

[State 250]
type = hitdef
trigger1 = time = 0
attr = A, NA
animtype  = medium
damage    = 70,15
guardflag = MA
pausetime = 12,12
sparkno = s8000
sparkxy = -10,-20
hitsound   = s1,0
guardsound = s6,1
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
;---------------------------------------------------------------------------
[Statedef 300];                                                 grab attempt
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
ctrl = 0
anim = 300
sprpriority = 2

[State 300]
type = hitdef
trigger1 = time = 0
attr = S, NT
affectteam = B
hitflag = MA
priority = 4, dodge
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 301
p2stateno = 302
kill = 0
damage = 20

[State 300]
type = playsnd
trigger1 = animelem = 4
value = 5,0

[State 300]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 301];                                               pick up target
type = S
physics = S
movetype= A
sprpriority = 2
anim = 301

[State 301]
type = targetfacing
trigger1 = 1
value = 1

[State 301]
type = targetbind
trigger1 = animelem = 1, >= 0
pos = 30,-50

[State 301]
type = targetbind
trigger1 = animelem = 2, >= 0
pos = 20,-52

[State 301]
type = targetbind
trigger1 = animelem = 3, >= 0
pos = 15,-54

[State 301]
type = changestate
trigger1 = time = 12
value = 310
;---------------------------------------------------------------------------
[Statedef 302];                               getting picked up (for target)
type = A
physics = N
movetype= H
sprpriority = -1
ctrl = 0

[State 302]
type = changeanim2
trigger1 = time = 0
value = 302

[State 302]
type = lifeadd
trigger1 = time = 0
kill = 0
value = -20

[State 302]
type = changestate
trigger1 = time = 12
value = 303
;---------------------------------------------------------------------------
[Statedef 303];                                      being held (for target)
type = A
physics = N
movetype= H
sprpriority = -1

[State 303]
type = screenbound
trigger1 = 1
value = 0

[State 303]
type = lifeadd
trigger1 = time = 0
kill = 0
value = -20

[State 303]
type = changeanim2
trigger1 = time = 0
value = 303
;---------------------------------------------------------------------------
[Statedef 304];                                    being thrown (for target)
type = A;                                      become a human projectile >:P
physics = A
movetype= A
sprpriority = 1
velset = -6,-4

[State 304]
type = screenbound
trigger1 = 1
value = 1

[State 304]
type = lifeadd
trigger1 = time = 0
kill = 0
value = -20

[State 304]
type = changeanim2
trigger1 = time = 0
value = 304

[State 304]
type = hitdef
trigger1 = time = 0
attr = A, N
affectteam = F
damage = 50
fall = 1
air.velocity = 2,1
ground.velocity = 2,1

[State 304]
type = lifeadd
trigger1 = pos y > -15
value = -20

[State 304]
type = selfstate
trigger1 = pos y > -15
value = 5100
;---------------------------------------------------------------------------
[Statedef 310];                                   stand while holding target
type = S
physics = S
sprpriority = 0
anim = 310
ctrl = 0
velset = 0,0

[State 310]
type = playsnd
triggerall = time = 0
trigger1 = prevstateno = 325
trigger2 = prevstateno = 326
trigger3 = prevstateno = 327
value = 15,0

[State 310]
type = targetfacing
trigger1 = 1
value = -1

[State 310]
type = posset
trigger1 = time = 0
y = 0

[State 310]
type = targetbind
trigger1 = animelem = 1, >= 0
pos = 15, -55

[State 310]
type = targetbind
trigger1 = animelem = 2, >= 0
pos = 16, -54

[State 310]
type = targetbind
trigger1 = animelem = 3, >= 0
pos = 17, -53

[State 310]
type = targetbind
trigger1 = animelem = 4, >= 0
pos = 16, -54

[State 310]
type = changestate
trigger1 = command != "holdy"
value = 330

[State 310]
type = changestate
trigger1 = command = "holdfwd"
trigger1 = facing = -1
trigger2 = command = "holdback"
trigger2 = facing = 1
value = 320

[State 310]
type = changestate
trigger1 = command = "holdfwd"
trigger1 = facing = 1
trigger2 = command = "holdback"
trigger2 = facing = -1
value = 321

[State 310]
type = changestate
trigger1 = command = "holdup"
trigger1 = time > 10
value = 325
;---------------------------------------------------------------------------
[Statedef 320];                               walk left while holding target
type = S
physics = S
sprpriority = 0
anim = 320

[State 320]
type = targetfacing
trigger1 = 1
value = -1

[State 320]
type = velset
trigger1 = time >= 0
x = 3

[State 320]
type = turn
trigger1 = facing = 1

[State 320]
type = targetbind
trigger1 = animelem = 1, >= 0
pos = 19,-51

[State 320]
type = targetbind
trigger1 = animelem = 2, >= 0
pos = 18,-52

[State 320]
type = targetbind
trigger1 = animelem = 3, >= 0
pos = 17,-54

[State 320]
type = targetbind
trigger1 = animelem = 4, >= 0
pos = 18,-53

[State 320]
type = targetbind
trigger1 = animelem = 5, >= 0
pos = 19,-52

[State 320]
type = targetbind
trigger1 = animelem = 9, >= 0
trigger2 = animelem = 6, >= 0
pos = 19,-51

[State 320]
type = targetbind
trigger1 = animelem = 8, >= 0
trigger2 = animelem = 7, >= 0
pos = 18,-50

[State 320]
type = targetbind
trigger1 = animelem = 10, >= 0
pos = 20,-50

[State 320]
type = changestate
trigger1 = command != "holdy"
value = 330

[State 320]
type = changestate
trigger1 = command = "holdup"
trigger1 = time > 10
value = 325

[State 320]
type = changestate
trigger1 = command != "holdback"
trigger1 = command != "holdfwd"
value = 310
;---------------------------------------------------------------------------
[Statedef 321];                              walk right while holding target
type = S
physics = S
sprpriority = 0
anim = 320

[State 321]
type = targetfacing
trigger1 = 1
value = -1

[State 321]
type = velset
trigger1 = time >= 0
x = 3

[State 321]
type = turn
trigger1 = facing = -1

[State 321]
type = targetbind
trigger1 = animelem = 1, >= 0
pos = 20,-50

[State 321]
type = targetbind
trigger1 = animelem = 2, >= 0
trigger2 = animelem = 5, >= 0
pos = 19,-51

[State 321]
type = targetbind
trigger1 = animelem = 3, >= 0
trigger2 = animelem = 4, >= 0
pos = 18,-50

[State 321]
type = targetbind
trigger1 = animelem = 6, >= 0
pos = 19,-52

[State 321]
type = targetbind
trigger1 = animelem = 7, >= 0
pos = 18,-53

[State 321]
type = targetbind
trigger1 = animelem = 8, >= 0
pos = 17,-54

[State 321]
type = targetbind
trigger1 = animelem = 9, >= 0
pos = 18,-52

[State 321]
type = targetbind
trigger1 = animelem = 10, >= 0
pos = 19,-51

[State 321]
type = changestate
trigger1 = command != "holdy"
value = 330

[State 321]
type = changestate
trigger1 = command = "holdup"
trigger1 = time > 10
value = 325

[State 321]
type = changestate
trigger1 = command != "holdback"
trigger1 = command != "holdfwd"
value = 310
;---------------------------------------------------------------------------
[Statedef 325];                                 jump up while holding target
type = A
physics = N
sprpriority = 1
anim = 325
velset = 0,-9

[State 325]
type = targetfacing
trigger1 = 1
value = -1

[State 325]
type = gravity
trigger1 = 1

[State 325]
type = targetbind
trigger1 = 1
pos = 20,-48

[State 325]
type = changestate
trigger1 = command != "holdy"
value = 330

[State 325]
type = changestate
triggerall = time < 4
trigger1 = command = "holdUB"
trigger1 = facing = 1
trigger2 = command = "holdUF"
trigger2 = facing = -1
value = 326

[State 325]
type = changestate
triggerall = time < 4
trigger1 = command = "holdUB"
trigger1 = facing = -1
trigger2 = command = "holdUF"
trigger2 = facing = 1
value = 327

[State 325]
type = changestate
trigger1 = vel y > 0 && pos y >= -10
value = 310
;---------------------------------------------------------------------------
[Statedef 326];                               jump left while holding target
type = A
physics = N
sprpriority = 1
anim = 325

[State 326]
type = targetfacing
trigger1 = 1
value = -1

[State 326]
type = gravity
trigger1 = 1

[State 326]
type = targetbind
trigger1 = 1
pos = 20,-48

[State 326]
type = turn
trigger1 = facing = 1
trigger1 = time = 0

[State 326]
type = velset
trigger1 = time = 0
x = 3
y = -9

[State 326]
type = changestate
trigger1 = command != "holdy"
value = 330

[State 326]
type = changestate
trigger1 = vel y > 0 && pos y >= -10
value = 310
;---------------------------------------------------------------------------
[Statedef 327];                              jump right while holding target
type = A
physics = N
sprpriority = 1
anim = 325

[State 327]
type = targetfacing
trigger1 = 1
value = -1

[State 327]
type = gravity
trigger1 = 1

[State 327]
type = targetbind
trigger1 = 1
pos = 20,-48

[State 327]
type = turn
trigger1 = facing = -1
trigger1 = time = 0

[State 327]
type = velset
trigger1 = time = 0
x = 3
y = -9

[State 327]
type = changestate
trigger1 = command != "holdy"
value = 330

[State 327]
type = changestate
trigger1 = vel y > 0 && pos y >= -10
value = 310
;---------------------------------------------------------------------------
[Statedef 330];                                     throw that mother fucker
type = S
physics = N
movetype= A
sprpriority = 0
anim = 330

[State 330]
type = velset
trigger1 = pos y > -1
x = 0

[State 330]
type = gravity
trigger1 = pos y < 0

[State 330]
type = targetfacing
trigger1 = 1
value = -1

[State 330]
type = targetbind
trigger1 = animelem = 1, >= 0
pos = -8,-60

[State 330]
type = targetbind
trigger1 = animelem = 2, >= 0
pos = -20,-60

[State 330]
type = targetbind
trigger1 = animelem = 3, >= 0
pos = -30,-58

[State 330]
type = targetbind
trigger1 = animelem = 4, >= 0
trigger2 = animelem = 5, >= 0
pos = -38,-50

[State 330]
type = targetbind
trigger1 = animelem = 6, >= 0
pos = -30,-50

[State 330]
type = targetbind
trigger1 = animelem = 7, >= 0
pos = -28,-54

[State 330]
type = targetbind
trigger1 = animelem = 8, >= 0
pos = -24,-58

[State 330]
type = targetbind
trigger1 = animelem = 9, >= 0
pos = -10,-56

[State 330]
type = targetbind
trigger1 = animelem = 10, >= 0
pos = 14,-60

[State 330]
type = playsnd
trigger1 = animelem = 11
value = 27,0

[State 330]
type = targetstate
trigger1 = animelem = 11
value = 304

[State 330]
type = posset
trigger1 = vel y > 0 && pos y > -1
y = 0

[State 330]
type = playsnd
trigger1 = vel y > 0 && pos y > -1
value = 15,0
persistent = 0

[State 330]
type = changestate
trigger1 = animtime = 0
trigger1 = pos y = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 400];                                                  ground roll
type    = S
movetype= A
physics = N
juggle  = 1
poweradd= 40
ctrl = 0
anim = 401
sprpriority = 2

[State 400]
type = velmul
trigger1 = pos y < 0
y = .5


[State 400]
type = playsnd
trigger1 = time = 0
value = 10,9

[State 400]
type = playerpush
trigger1 = 1
value = 0

[State 400]
type = changeanim
triggerall = time = 0
trigger1 = prevstateno != 20
trigger1 = prevstateno != 23
trigger1 = prevstateno != 100
trigger1 = prevstateno != 105
value = 400

[State 400]
type = velset
triggerall = time >= 0
triggerall = vel x > 0
trigger1 = prevstateno = 20
trigger2 = prevstateno = 23
x = 2.8

[State 400]
type = velset
triggerall = time >= 0
triggerall = vel x < 0
trigger1 = prevstateno = 20
x = -1.8

[State 400]
type = velset
triggerall = time >= 0
trigger1 = prevstateno = 100
x = 4.2

[State 400]
type = velset
triggerall = time >= 0
trigger1 = prevstateno = 105
x = -3.2

[State 400]
type = changeanim
triggerall = time = 0
trigger1 = vel x < 0
value = 402

[State 400]
type = velset
trigger1 = time >= 0
trigger1 = anim = 400
x = .5

[State 400]
type = HitDef
trigger1 = animelem = 1
attr = S, NA
animtype  = hard
damage    = 110,35
guardflag = MA
pausetime = 12,12
sparkno = s8000
sparkxy = -10,-20
hitsound   = S1,0
guardsound = s6,1
ground.type = low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = 2.5,-7
air.velocity = 3,-7
p2facing = -1
fall = 1

[State 400]
type = posset
trigger1 = vel y > 0 && pos y > -1
y = 0

[State 400]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------;
[Statedef 440]
type = C     
movetype = A     
physics = C
juggle  = 1     
velset = 5,0
ctrl = 0  
anim = 440 
poweradd  = 40

[State 200:Playsnd avanicada]
type = playsnd
trigger1 = time = 0
value = 0,4
channel = 0

[State 430:hitdef]
type = Hitdef
trigger1  = time =0
attr  = C, NA
pausetime = 12,15
animtype = Hard
damage = 65,5
hitflag = MAF
guardflag = L
sparkno = s8000
sparkxy = -5,-30
hitsound  = s19,2
guardsound = s6,1
ground.type = trip
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -1.5,-6
air.velocity = -3.3, -4
guard.ctrltime = 39
guard.velocity = -10
fall = 1
envshake.time = 12
envshake.ampl = 4

[State 450, 3]
type                = ChangeState
trigger1            = AnimTime = 0
value               = 11
ctrl                = 1
;---------------------------------------------------------------------------
[Statedef 500];                                                     call tnt
type = S
physics = S
sprpriority = 0

[State 500]
type = superpause
trigger1 = 1
time = 20

[State 500]
type = varrandom
trigger1 = 1
v = 9
range = 1,2

[State 500]
type = varrandom
trigger1 = 1
v = 10
range = 15,100

[State 500]
type = helper
trigger1 = var(9) = 1
helpertype = normal
name = "tnt"
ID = 1
pos = var(10), 0
postype = front
facing = 1
stateno = 8005
keyctrl = 1
ownpal = 1
ground.back = 16
ground.front = 16

[State 500]
type = helper
trigger1 = var(9) = 2
helpertype = normal
name = "tnt"
ID = 1
pos = var(10), 0
postype = back
facing = 1
stateno = 8005
keyctrl = 0
ownpal = 1

[State 500]
type = changestate
trigger1 = 1
value = prevstateno

;---------------------------------------------------------------------------
;ドンキーヘッドバット
[Statedef 2000]
type    = S
movetype= A
physics = S
juggle  = 9
poweradd= 20
ctrl = 0
anim = 2000
sprpriority = 2

[State 2000, 1]
type = HitDef
trigger1 = Time = 0
attr = S, SA
priority = 6, hit
animtype  = Medium
damage    = 80, 50
;guardflag = LM
pausetime = 35,40
sparkno = s8000
sparkxy = -10,-37
hitsound   = s19,2
guardsound = s6,1
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -7 , 10
air.velocity = -7, 10

[State 2000, TargetVelSet]
type = TargetVelSet
trigger1 = movehit
x = -10
ID = -1

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = S100,1
volume = 255

[State 2000, VelSet]
type = VelSet
trigger1 = movehit
x = -1

[State 2000, 4]
type = targetState
trigger1 = MoveHit
value = 5600

[State 2000, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;食らった相手

[statedef 5600]
type    = S
movetype= I
physics = S
anim = 5300


[State 5600, StopSnd]
type = StopSnd
trigger1 = time = 50
trigger2 = anim = 5030
channel = -1

[State 5600, Undizzy]
type = SelfState
trigger1 = Time = 60
ctrl = 1
value = 0


;---------------------------------------------------------------------------
;スピニングコング
[Statedef 2010]
type    = A
movetype= A
physics = A
juggle  = 5
poweradd= 20
ctrl = 0
anim = 2010
sprpriority = 2

[State 2010, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S100,2
volume = 255

[State 630, 1]
type = PlaySnd
trigger1 = Time = 1
value = 10, 8

[State 630, 1]
type = PlaySnd
trigger1 = Animelem = 2
value = 10, 7

[State 630, 1]
type = PlaySnd
trigger1 = Animelem = 4
value = 10, 7

[State 630, 1]
type = PlaySnd
trigger1 = Animelem = 6
value = 10, 7

[State 630, 2]
type = HitDef
trigger1 = AnimElem = 8
attr = A, NA
damage = 10, 10
guardflag = HA
priority = 7
pausetime = 8,8
animtype = Hard
sparkno = s8000
sparkxy = -5,-35
hitsound   = s1,0
guardsound = s6,1
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3

[State 630, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 7, 1
animtype  = Light
hitflag = MAFD
guardflag = MA
pausetime = 5,7
sparkno = s8000
sparkxy = -10,-83
hitsound   = s1,0
guardsound = s6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2
air.velocity = -3,-4
down.hittime = 20

[State 630, 4]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 5, 1
animtype  = Light
hitflag = MAFD
guardflag = MA
pausetime = 5,7
sparkno = s8000
sparkxy = -10,-83
hitsound   = s1,
guardsound = s6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2
air.velocity = -3,-4
down.hittime = 20

[State 630, 5]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
damage    = 2, 1
animtype  = Light
hitflag = MAFD
guardflag = MA
sparkno = s8000
pausetime = 5,7
sparkxy = -10,-83
hitsound   = s1,0
guardsound = s6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2
air.velocity = -3,-4
down.hittime = 20

[State 630, 6]
type = HitDef
trigger1 = AnimElem = 5
attr = C, NA
damage    = 2, 0
animtype  = Light
hitflag = MAFD
guardflag = MA
pausetime = 5,7
sparkno = s8000
sparkxy = -10,-83
hitsound   = s1,0
guardsound = s6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2
air.velocity = -3,-4
down.hittime = 20

[State 630, 7]
type = HitDef
trigger1 = AnimElem = 6
attr = C, NA
damage    = 2, 0
animtype  = Light
hitflag = MAFD
guardflag = MA
pausetime = 5,7
sparkno = s8000
sparkxy = -10,-83
hitsound   = s1,0
guardsound = s6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2
air.velocity = -3,-4
down.hittime = 20

[State 630, 8]
type = HitDef
trigger1 = AnimElem = 7
attr = C, NA
damage    = 2, 0
animtype  = Light
hitflag = MAFD
guardflag = MA
pausetime = 5,7
sparkno = s8000
sparkxy = -10,-83
hitsound   = s1,0
guardsound = s6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2
air.velocity = -3,-4
down.hittime = 20

[State 630, Gravity]
type = VelAdd
trigger1 = 1
y = -0.22

[State 630, 3]
type = ChangeState
trigger1 = AnimTime = 7
value = 5
ctrl = 1

;---------------------------------------------------------------------------
;ファンキーのフライングサーフィン
[Statedef 2050]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 2050
sprpriority = 1


[State 2050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S2,0
volume = 255

[State 2050,2]
type = Helper
trigger1 = time = 0
id = 1051
name = "Funkey Kong"
sprpriority = 4
pos = -50, -50
postype = p1
stateno = 2051
helpertype = normal
keyctrl = 0 
ownpal = 1
facing = 1


[State 2050]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ファンキーコング
[Statedef 2051]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 2051
ctrl = 0
sprpriority = 2

[State 2051, Super A]
type = SuperPause
trigger1 = time = 0
pos = -5, -55
anim = 100
sound = 20, 0
time = 64
movetime = 64

[State 2051, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 19
value = S100,0
volume = 255

[State 2051]
type = hitdef
trigger1 = time = 0
attr = S, HA
animtype  = hard
damage    = 180,40
guardflag = MA
pausetime = 0,12
sparkno = s8000
sparkxy = -10,-20
hitsound   = s1,0
guardsound = s6,1
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4,-4
air.velocity = -2.2,-3.2
fall = 1

[State 2051, VelSet]
type = VelSet
trigger1 = Time = 76
trigger2 = Time = 78
trigger3 = Time = 80
trigger4 = Time = 82
trigger5 = Time = 84
trigger6 = Time = 86
trigger7 = Time = 88
trigger8 = Time = 90
trigger9 = Time = 92
trigger10 = Time = 94
trigger11 = Time = 96
trigger12 = Time = 98
trigger13 = Time = 100
trigger14 = Time = 102
trigger15 = Time = 104
trigger16 = Time = 106
trigger18 = Time = 108
trigger19 = Time = 110
trigger20 = Time = 112
trigger21 = Time = 114
trigger22 = Time = 116
trigger23 = Time = 118
trigger24 = Time = 120
trigger25 = Time = 122
trigger26 = Time = 124
trigger27 = Time = 126
trigger28 = Time = 128
trigger29 = Time = 130
trigger30 = Time = 132
trigger31 = Time = 134
trigger32 = Time = 136
trigger33 = Time = 138
trigger34 = Time = 140
trigger35 = Time = 142
trigger36 = Time = 144
trigger37 = Time = 146
trigger38 = Time = 148
trigger39 = Time = 150
trigger40 = Time = 152
trigger41 = Time = 154
trigger42 = Time = 156
trigger43 = Time = 158
trigger44 = Time = 160
x = 15

[state 2051, 4]
type = destroyself 
trigger1 = time = 160

;---------------------------------------------------------------------------
;ランビのスーパーダッシュ
[Statedef 2060]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 2060
sprpriority = 2

[State 2060, Super A]
type = SuperPause
trigger1 = time = 0
pos = -5, -55
anim = 100
sound = 20, 0
time = 154
movetime = 154

[State 2060, PlaySnd1]
type = PlaySnd
trigger1 = time = 0
value = S120,0
volume = 255

[State 2060, PlaySnd2]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 11
trigger3 = AnimElem = 16
trigger4 = AnimElem = 21
trigger5 = AnimElem = 26
trigger6 = AnimElem = 31
value = S17,0
volume = 255

[State 2060, PlaySnd3]
type = PlaySnd
trigger1 = time = 155
trigger2 = time = 156
trigger3 = time = 157
trigger4 = time = 158
trigger5 = time = 159
trigger6 = time = 160
trigger7 = time = 161
trigger8 = time = 162
trigger9 = time = 163
trigger10 = time = 164
trigger11 = time = 165
trigger12 = time = 166
trigger13 = time = 167
trigger14 = time = 168
trigger15 = time = 169
trigger16 = time = 170
trigger17 = time = 171
trigger18 = time = 172
value = S23,0
volume = 255

[State 2060, HitDef]
type = HitDef
trigger1 = Animelem = 34
attr = S,HA
damage = 400,40
animtype = Diagup
hitflag = MAFL
priority = 7
pausetime = 0,10
sparkno = s8000
sparkxy = -10, -60
hitsound = s19,2
guardsound = s6,1
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0, -17
air.type = Low
air.hittime = 15
air.velocity = 0,-17
envshake.time = 10
envshake.ampl = 25
fall = 1
fall.recover = 0
getpower = 0

[State 2060, VelSet]
type = VelSet
trigger1 = time = 155
trigger2 = time = 156
trigger3 = time = 157
trigger4 = time = 158
trigger5 = time = 159
trigger6 = time = 160
trigger7 = time = 161
trigger8 = time = 162
trigger9 = time = 163
trigger10 = time = 164
trigger11 = time = 165
trigger12 = time = 166
trigger13 = time = 167
trigger14 = time = 168
trigger15 = time = 169
trigger16 = time = 170
trigger17 = time = 171
trigger18 = time = 172
x = 70

[State 2060, Explod]
type = Explod
trigger1 = time = 173
trigger2 = Stateno != 2060
anim = 2061
scale = 1.5,1.5
sprpriority = 1
removetime = 34

[State 2060, ChangeState]
type = ChangeState
trigger1 = time = 173
value = 40
ctrl = 1

;---------------------------------------------------------------------------
;===========================================================================
;ディクシーとトロッコで体当たり
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 5
velset = 0,0
anim = 3000
ctrl = 0
sprpriority = 2

[State 3500, Super A]
type = SuperPause
trigger1 = AnimElem = 1
pos = -5, -55
anim = 100
sound = 20, 0
poweradd = -2000

[State 3500, Super B]
type = AfterImage
trigger1 = AnimElem = 1
time = 2

[State 3500, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 3500, Super D]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 6

[State 2700, PlaySnd]
type = PlaySnd
trigger1 = time = 58
value = S19,3
volume = 255
loop = 1

[State 2700, StopSnd]
type = StopSnd
trigger1 = Movehit
trigger2 = time = 98
channel = -1

[State 3500, HitDef]
type = HitDef
trigger1 = Animelem = 4
attr = S,HA
damage = 290,10
animtype = Diagup
guardflag = MAL
hitflag = MAFL
priority = 7
pausetime = 30,35
sparkno = s8000
sparkxy = -10, -60
hitsound = s19,2
guardsound = s6,1
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -10, -12
air.type = Low
air.hittime = 15
air.velocity = -3,-10
envshake.time = 10
envshake.ampl = 25
fall = 1
fall.recover = 0
getpower = 0

[State 3500, Explod]
type = Explod
trigger1 = time = 99
trigger2 = Stateno != 3000
anim = 3002
scale = 1.5,1.5
sprpriority = 3
removetime = 30

[State 3500, VelSet]
type = VelSet
trigger1 = animelem = 2
x = -45

[State 3500, PosAdd]
type = PosAdd
trigger1 = Animelem = 8
x = -263

[State 3500, VelSet]
type = VelSet
trigger1 = time = 0
trigger2 = animelem = 8
x = 10

[State 3500, VelSet]
type = VelSet
trigger1 = time = 0
trigger2 = animelem = 9
x = 10

[State 3500, VelSet]
type = VelSet
trigger1 = time = 0
trigger2 = animelem = 10
x = 10

[State 3500, VelSet]
type = VelSet
trigger1 = time = 0
trigger2 = animelem = 11
x = 10

[State 3500, Explod]
type = Explod
trigger1 = time = 99
anim = 3001
scale = 1.5,1.5
sprpriority = 0
removetime = 37

[State 3500, ChangeState]
type = ChangeState
trigger1 = time = 100
value = 40
ctrl = 1



;===========================================================================
;ディンキーとトロッコで体当たり
[Statedef 3050]
type    = S
movetype= A
physics = S
juggle  = 5
velset = 0,0
anim = 3050
ctrl = 0
sprpriority = 2

[State 3500, Super A]
type = SuperPause
trigger1 = AnimElem = 1
pos = -5, -55
anim = 100
sound = 20, 0
poweradd = -3000

[State 3500, Super B]
type = AfterImage
trigger1 = AnimElem = 1
time = 2

[State 3500, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 3500, Super D]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 6

[State 2700, PlaySnd]
type = PlaySnd
trigger1 = time = 58
value = S19,3
volume = 255
loop = 1

[State 2700, StopSnd]
type = StopSnd
trigger1 = Movehit
trigger2 = time = 98
channel = -1

[State 3500, HitDef]
type = HitDef
trigger1 = Animelem = 4
attr = S,HA
damage = 440,70
animtype = Diagup
guardflag = MAL
hitflag = MAFL
priority = 7
pausetime = 30,35
sparkno = s8000
sparkxy = -10, -60
hitsound = s19,2
guardsound = s6,1
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -10, -12
air.type = Low
air.hittime = 15
air.velocity = -3,-10
envshake.time = 10
envshake.ampl = 25
fall = 1
fall.recover = 0
getpower = 0

[State 3500, Explod]
type = Explod
trigger1 = time = 99
trigger2 = Stateno != 3050
anim = 3052
scale = 1.5,1.5
sprpriority = 3
removetime = 30

[State 3500, VelSet]
type = VelSet
trigger1 = animelem = 2
x = -45

[State 3500, PosAdd]
type = PosAdd
trigger1 = Animelem = 8
x = -263

[State 3500, VelSet]
type = VelSet
trigger1 = time = 0
trigger2 = animelem = 8
x = 10

[State 3500, VelSet]
type = VelSet
trigger1 = time = 0
trigger2 = animelem = 9
x = 10

[State 3500, VelSet]
type = VelSet
trigger1 = time = 0
trigger2 = animelem = 10
x = 10

[State 3500, VelSet]
type = VelSet
trigger1 = time = 0
trigger2 = animelem = 11
x = 10

[State 3500, Explod]
type = Explod
trigger1 = time = 99
anim = 3051
scale = 1.5,1.5
sprpriority = 0
removetime = 37

[State 3500, ChangeState]
type = ChangeState
trigger1 = time = 100
value = 40
ctrl = 1



;---------------------------------------------------------------------------
[Statedef 8005];                                                         tnt
type = S
physics = N
sprpriority = -1
anim = 8005

[State 8005]
type = null
trigger1 = 1
;---------------------------------------------------------------------------
[Statedef -3];                                       checked every selfstate

[State -3];        << what a waste... >:P >>
type = playsnd
triggerall = time = 1
trigger1 = stateno = 52
value = 15,0

[State -3]
type = playsnd
triggerall = time = 0
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
trigger4 = stateno = 5030
trigger5 = stateno = 5040
trigger6 = stateno = 5070
value = 2,0

[State -3]
type = playsnd
trigger1 = time = 1
trigger1 = stateno = 5080
value = 5,1

[State -3]
type = stopsnd
trigger1 = stateno != 210
trigger1 = stateno != 0
channel = 9

[State -3]
type = stopsnd
trigger1 = stateno != 193
channel = 8

[State -3]
type = playsnd
trigger1 = time = 1
trigger1 = stateno = 40
value = 40,0
;---------------------------------------------------------------------------