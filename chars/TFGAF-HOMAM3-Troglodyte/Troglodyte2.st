;---------------------------------------------------------------------------
;FAR Stand Light Punch
[Statedef 241]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0
anim = 200
juggle = 5

[State 205,2]
type = HitDef
trigger1 = time = 0
priority = 4, Hit			;2 for ??, 3 for M/H att, 4 for L att, 5 for super, 6 fot hyper
;
attr = S,NA			;STAND / NORMAL ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
hitflag = MA
;
animtype = light			;2p ANIM, light", "medium", "hard", "back", "up",    or "diagup".
air.animtype = light		;2p ANIM
ground.type = high			;  high,	middle	low	trip
;
damage = 30
;
pausetime = 8,8
guard.pausetime = 8,8
;
ground.slidetime = 10
;
ground.hittime = 10
air.hittime = 15
;
guard.hittime = 12
guard.ctrltime = 12
;
ground.velocity = -7
air.velocity = -3,-7
;
guard.velocity = -7
airguard.velocity = -3, -2
;
air.juggle = 16
;
ground.cornerpush.veloff = -10
guard.cornerpush.veloff = -10
;
sparkxy = 0,-75
;
juggle = 10
hitsound = S2,7
guardsound = S3,1
sparkno = 11
guard.sparkno = 40
getpower = 30
GivePower = 10
;
;p2getp1state = 
p2facing = 1

[State 240,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;FAR STAND HEAVY PUNCH
[Statedef 251]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0
anim = 200
juggle = 15

[State 210,2]
type = HitDef
trigger1 = time = 0
priority = 3, Hit			;2 for ??, 3 for M/H att, 4 for L att, 5 for super, 6 fot hyper
;
attr = S,NA			;STAND / NORMAL ATTACK
hitflag = MA			;MIDDLE ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
;
animtype = hard	 		;2p ANIM, light", "medium", "hard", "back", "up",    or "diagup"
air.animtype = medium			;2p ANIM
ground.type = high
;
damage = 60
getpower = 60
GivePower = 20
;
pausetime = 12,12
guard.pausetime = 12,12
;
ground.slidetime = 20
;
ground.hittime = 20
air.hittime = 30
;
guard.hittime = 17
guard.ctrltime =17
;
ground.velocity = -12
air.velocity = -3,-7
guard.velocity = -12
airguard.velocity = -4,-5
air.juggle = 16
;
ground.cornerpush.veloff = -25
guard.cornerpush.veloff = -25
;
sparkxy = -20,-65
;
juggle = 10
hitsound = S2,7
guardsound = S3,1
sparkno = 11
guard.sparkno = 40

[State 250,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;NEAR STAND F/B MIDDLE KICK
[Statedef 206]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0
anim = 200
juggle = 10

[State 205,2]
type = HitDef
trigger1 = time = 0
priority = 3, Hit			;2 for ??, 3 for M/H att, 4 for L att, 5 for super, 6 fot hyper
;
attr = S,NA			;STAND / NORMAL ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
hitflag = MA
;
animtype = Medium		;2p ANIM, light", "medium", "hard", "back", "up",    or "diagup".
air.animtype = medium		;2p ANIM
ground.type = high			;  high,	middle	low	trip
;
damage = 45
;
pausetime = 10,10
guard.pausetime = 10,10
;
ground.slidetime = 15
;
ground.hittime = 15
air.hittime = 15
;
guard.hittime = 13
guard.ctrltime = 13
;
ground.velocity = -9
air.velocity = -3,-7
;
guard.velocity = -9
airguard.velocity = -3, -2
;
air.juggle = 16
;
ground.cornerpush.veloff = -18
guard.cornerpush.veloff = -18
;
sparkxy = -10,-75
;
juggle = 10
hitsound = S2,7
guardsound = S3,1
sparkno = 11
guard.sparkno = 40
getpower = 45
GivePower = 15
;
;p2getp1state = 
p2facing = 1

[State 225,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;NEAR STAND HEAVY KICK
[Statedef 231]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0
anim = 200
juggle = 15


[State 210,2]
type = HitDef
trigger1 = time = 0
priority = 3, Hit			;2 for ??, 3 for M/H att, 4 for L att, 5 for super, 6 fot hyper
;
attr = S,NA			;STAND / NORMAL ATTACK
hitflag = MA			;MIDDLE ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
;
animtype = hard	 		;2p ANIM, light", "medium", "hard", "back", "up",    or "diagup"
air.animtype = medium			;2p ANIM
ground.type = high
;
damage = 60
getpower = 120
GivePower = 60
;
pausetime = 12,12
guard.pausetime = 12,12
;
ground.slidetime = 20
;
ground.hittime = 20
air.hittime = 30
;
guard.hittime = 17
guard.ctrltime =17
;
ground.velocity = -9
air.velocity = -3,-7
guard.velocity = -9
airguard.velocity = -4,-5
air.juggle = 16
;
ground.cornerpush.veloff = -25
guard.cornerpush.veloff = -25
;
sparkxy = -20,-65
;
juggle = 10
hitsound = S2,7
guardsound = S3,1
sparkno = 11
guard.sparkno = 40

[State 230,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;FAR STAND HEAVY KICK
[Statedef 271]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0
anim = 200
juggle = 15

[State 210,2]
type = HitDef
trigger1 = time = 0
priority = 3, Hit			;2 for ??, 3 for M/H att, 4 for L att, 5 for super, 6 fot hyper
;
attr = S,NA			;STAND / NORMAL ATTACK
hitflag = MA			;MIDDLE ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
;
animtype = hard	 		;2p ANIM, light", "medium", "hard", "back", "up",    or "diagup"
air.animtype = up			;2p ANIM
ground.type = high
;
damage = 60
getpower = 120
GivePower = 60
;
pausetime = 12,12
guard.pausetime = 12,12
;
ground.slidetime = 20
;
ground.hittime = 20
air.hittime = 30
;
guard.hittime = 17
guard.ctrltime =17
;
ground.velocity = -11
air.velocity = -3,-7
guard.velocity = -11
airguard.velocity = -4,-5
air.juggle = 16
;
ground.cornerpush.veloff = -25
guard.cornerpush.veloff = -25
;
sparkxy = -20,-65
;
juggle = 10
hitsound = S2,7
guardsound = S3,1
sparkno = 11
guard.sparkno = 40

[State 270,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;=================================================================================================================== 
; FRONT/BACk 		JUMP light punch
[Statedef 341]
type = A
movetype = A
physics = A
ctrl = 0  
anim = 340

[State 300,2]
type = HitDef
trigger1 = time = 0
priority = 4, Hit
;
attr = A, NA
hitflag = MA
guardflag = HA
;
animtype = light			;2p ANIM, light", "medium", "hard", "back", "up",    or "diagup".
air.animtype = medium		;2p ANIM
ground.type = high			;  high,	middle	low	trip
;
damage = 30
pausetime = 8,9
ground.slidetime = 9
ground.hittime = 9
guard.hittime = 13
air.hittime = 9
guard.ctrltime = 13
ground.velocity = -5
air.velocity = -3,-7
guard.velocity = -5
airguard.velocity = -3, -1.5
ground.cornerpush.veloff = -8
guard.cornerpush.veloff = -8
sparkxy = 0,-55
;
juggle = 5
hitsound = S2,7
guardsound = S3,1
sparkno = 11
guard.sparkno = 40
getpower = 30
GivePower = 10
;
air.juggle = 16































