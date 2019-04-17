; Jailbot by altoiddealer
;---------------------------------------------------------------------------
;COMMANDS
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;SUPER/HYPER

[Command]
name = "TurbineX"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TurbineY"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "TurbineZ"
command = ~D, DF, F, D, DF, F, z
time = 20

[Command]
name = "Arcade"
command = ~D, DB, B, D, DB, B, a+b
time = 20

[Command]
name = "Arcade"
command = ~D, DB, B, D, DB, B, b+c
time = 20

[Command]
name = "Arcade"
command = ~D, DB, B, D, DB, B, a+c
time = 20

;---------------------------------------------------------------------------
;COMMAND THROWS

[Command]
name = "BnTLight"
command = B, $D, F, x
time = 15

[Command] ;alternate - hold back 5 or more secs
name = "BnTLight"
command = ~B, $D, F, x
time = 10

[Command]
name = "BnTMedium"
command = B, $D, F, y
time = 15

[Command]
name = "BnTHeavy"
command = B, $D, F, z
time = 15

;---------------------------------------------------------------------------
;SPECIALS

[Command]
name = "LongPunchX"
command = ~D, DF, F, x

[Command]
name = "LongPunchY"
command = ~D, DF, F, y

[Command]
name = "LongPunchZ"
command = ~D, DF, F, z

[Command]
name = "MinigunFakeOut"
command = ~D, DB, B, s

[Command]
name = "MinigunShort"
command = ~D, DB, B, x

[Command]
name = "MinigunMed"
command = ~D, DB, B, y

[Command]
name = "MinigunLong"
command = ~D, DB, B, z

[Command]
name = "ComeHere"
command = ~B, B+x

[Command]
name = "ComeHere"
command = ~B, B, x

;---------------------------------------------------------------------------------------------
;SUPER JUMP

[Command]
name = "Super_Jump"
command = ~D, U

;---------------------------------------------------------------------------------------------
;DOUBLE-TAP

[Command]
name = "FF" ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB" ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "xx"
command = /x, x, x
time = 10

;---------------------------------------------------------------------------------------------
;TWO-BUTTON COMBOS

[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "throw_p"
command = x+y
time = 5

[Command]
name = "throw_p"
command = y+z
time = 5

[Command]
name = "throw_p"
command = x+z
time = 5

;---------------------------------------------------------------------------------------------
;ONE BUTTON

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "holds"
command = /s
time = 1

[Command]
name = "s"
command = s
time = 1

;---------------------------------------------------------------------------------------------
;ONE DIRECTION

[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;---------------------------------------------------------------------------------------------
;HOLD DIRECTION

[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
;STATE -1
;---------------------------------------------------------------------------

[Statedef -1]

;xxxx(¯(__)¯)xxxxxxxx/ [ ° ____ ° ] \xxxxxxxx(¯(__)¯)xxxx
;AI COMMANDS

[State -1, AI Baseline]
type = Null
triggerall = AILevel
trigger1 = RoundState = 2
trigger1 = GameTime%60 = 0
;Below assigns var(56) a fixed number based on AILevel, which is slightly randomized every 60 ticks in effort to make AI more unpredictable.
trigger1 = var(56) := Floor(((AILevel=1)*10+(AILevel=2)*25+(AILevel=3)*35+(AILevel=4)*50+(AILevel=5)*70+(AILevel=6)*90+(AILevel=7)*120+(AILevel=8)*150)*((100+Random%100)/100.0))
;trigger1 = var(56) := (AILevel=1)*20+(AILevel=2)*40+(AILevel=3)*60+(AILevel=4)*80+(AILevel=5)*100+(AILevel=6)*150+(AILevel=7)*200+(AILevel=8)*300
trigger2 = RoundState != 2
trigger2 = var(56) := 0

;---------------------------------------------------------------------------

[State -1, AI GUARD]
type = ChangeState
value = 120
triggerall = var(56) ;AILevel registered
triggerall = P2MoveType = A
triggerall = InGuardDist
triggerall = StateNo != [120,155]
triggerall = Random < var(56)*2
triggerall = ctrl
trigger1 = StateType != A && P2StateType != A
trigger2 = StateType = A || P2StateType = A
trigger2 = Random < Cond((p2stateno=[200,699]),350,Cond((p2stateno=[1000,2999]),750,1000))

[State -1, AI DASH FORWARD]
type = ChangeState
value = 100
triggerall = var(56) ;AILevel registered
triggerall = statetype = S
triggerall = P2MoveType != H
triggerall = Random < var(56) ;2% - 30%
triggerall = ctrl
trigger1 = Random < P2BodyDist X

[State -1, AI DASH BACK]
type = ChangeState
value = 105
triggerall = var(56) ;AILevel registered
triggerall = statetype = S
triggerall = P2MoveType != H
triggerall = Random < var(56) ;2% - 30%
triggerall = ctrl
trigger1 = Random < 50 ;5%
trigger1 = var(7) = 0 ;enemy is standing near
trigger2 = Random < 100 ;10%
trigger2 = var(7) = [1,3] ;enemy is nearby, coming down from jump
trigger3 = moveguarded
trigger3 = Random < 20 ;2%

[State -1, AI TURBINE SUPER]
type = ChangeState
value = 3200
triggerall = var(56) ;AILevel registered
triggerall = Statetype != A
triggerall = P2StateNo != [5101,5150] ;not down/getting up
triggerall = power >= 2000 
triggerall = Random < var(56) ;2% - 30%
trigger1 = AILevel < 5 && ctrl ;lower AI levels
trigger1 = Random < 100-var(56)+abs(p2dist x/20) ;will use it more randomly / riskier
trigger2 = AILevel >= 5 && ctrl ;higher AI levels
trigger2 = Random < 10+abs(p2dist x/20) ;less randomly
trigger3 = numtarget
trigger3 = Random < var(56)*0.5
trigger3 = target,HitFall && (HitdefAttr = SC, NA)
trigger4 = numtarget(250) && ctrl
trigger4 = Random < var(56)*6.0

[State -1, AI ARCADE HYPER]
type = ChangeState
value = 3300
triggerall = var(56) ;AILevel registered
triggerall = Statetype != A
triggerall = P2StateNo != [5101,5150] ;not down/getting up
triggerall = power >= 3000
triggerall = Random < var(56) ;2% - 30%
trigger1 = ctrl
trigger1 = AILevel < 5 && ctrl ;lower AI levels
trigger1 = Random < 100-var(56) ;will use it more randomly / riskier
trigger2 = AILevel >= 5 && ctrl ;higher AI levels
trigger2 = Random < 10 ;just 1%
trigger3 = numtarget
trigger3 = Random < var(56)*0.5
trigger3 = target,HitFall && (HitdefAttr = SC, NA)
trigger4 = P2Dist Y > -80 && ctrl ;aim for the skies
trigger4 = Random < var(56)*(P2Dist Y/160.0)

[State -1, AI BASH N' TOSS LIGHT]
type = ChangeState
value = 2000
triggerall = var(56) ;AILevel registered
triggerall = ctrl
triggerall = Statetype != A
triggerall = P2MoveType != H
triggerall = Random < var(56) ;2% - 30%
triggerall = Random < Cond(var(7) = 0,150,20) ;15 or 2%
trigger1 = Cond(AILevel < 4,1,P2StateType = S && P2MoveType != A)
trigger1 = var(4) := 1 ;flag light version

[State -1, AI BASH N' TOSS MED]
type = ChangeState
value = 2000
triggerall = var(56) ;AILevel registered
triggerall = ctrl
triggerall = Statetype != A
triggerall = P2MoveType != H
triggerall = Random < var(56) ;2% - 30%
triggerall = Random < Cond(var(7) = 0,135,15) ;13.5 or 1.5%
trigger1 = Cond(AILevel < 4,1,P2StateType = S && P2MoveType != A)
trigger1 = var(4) := 2 ;flag medium version

[State -1, AI BASH N' TOSS HARD]
type = ChangeState
value = 2000
triggerall = var(56) ;AILevel registered
triggerall = ctrl
triggerall = Statetype != A
triggerall = power >= 1000 
triggerall = P2MoveType != H
triggerall = Random < var(56) ;2% - 30%
triggerall = Random < Cond(var(7) = 0,100,10) ;10% or 1%
trigger1 = Cond(AILevel < 4,1,P2StateType = S && P2MoveType != A)
trigger1 = var(4) := 3 ;flag hard version

[State -1, AI LONG PUNCH GROUND]
type = ChangeState
value = 1200
triggerall = var(56) ;AILevel registered
triggerall = Statetype != A
triggerall = Random < var(56) ;2% - 30%
trigger1 = ctrl
trigger1 = Random < (P2BodyDist X+(((P2BodyDist X > 100 && P2MoveType = A)*P2BodyDist X))) ;2x chance when enemy attacks from distance
trigger1 = var(10) := 1200
trigger2 = Random < 100 ;10%
trigger2 = (HitdefAttr = SC, NA, SA) && MoveContact ;follow-up
trigger2 = StateNo != [1200,1220] ;no repeats
trigger2 = var(10) := 1200

[State -1, AI LONG PUNCH MEDIUM]
type = ChangeState
value = 1200
triggerall = var(56) ;AILevel registered
triggerall = Statetype != A
triggerall = P2StateType = A
triggerall = Random < var(56) ;2% - 30%
trigger1 = ctrl
trigger1 = Random < (P2BodyDist X+(((P2BodyDist X > 60 && P2MoveType = A)*P2BodyDist X))) ;2x chance when enemy attacks from distance
trigger1 = var(10) := 1210
trigger2 = Random < 100 ;10%
trigger2 = (HitdefAttr = SC, NA, SA) && MoveContact ;follow-up
trigger2 = StateNo != [1200,1220] ;no repeats
trigger2 = var(10) := 1210

[State -1, AI LONG PUNCH HIGH]
type = ChangeState
value = 1200
triggerall = var(56) ;AILevel registered
triggerall = Statetype != A
triggerall = P2StateType = A
triggerall = Random < var(56) ;2% - 30%
trigger1 = ctrl
trigger1 = Random < (P2BodyDist X+(((P2BodyDist X > 20 && P2MoveType = A)*P2BodyDist X))) ;2x chance when enemy attacks from distance
trigger1 = var(10) := 1220
trigger2 = Random < 100 ;10%
trigger2 = (HitdefAttr = SC, NA, SA) && MoveContact ;follow-up
trigger2 = P2BodyDist X < 40
trigger2 = StateNo != [1200,1220] ;no repeats
trigger2 = var(10) := 1220

[State -1, AI COME HERE]
type = ChangeState
value = 1100
triggerall = var(56) ;AILevel registered
triggerall = Statetype != A
triggerall = P2MoveType != H
triggerall = Random < var(56) ;2% - 30%
trigger1 = Random < P2BodyDist X
trigger1 = ctrl

[State -1, AI MINIGUN FAKE-OUT]
type = ChangeState
value = 1010
triggerall = var(56) ;AILevel registered
triggerall = ctrl
triggerall = Statetype != A
triggerall = P2Movetype != H
triggerall = P2Statetype != A
triggerall = Random < var(56) ;2% - 30%
trigger1 = Random < 10 ;1%
trigger1 = Cond(AILevel < 4,1,P2StateType = S && P2MoveType != A)
trigger2 = Random < 100 ;10%
trigger2 = var(7) = 4 || var(7) = 8
trigger2 = Cond(AILevel < 4,1,P2StateType = S && P2MoveType != A)

[State -1, AI MINIGUN]
type = ChangeState
value = 1000
triggerall = var(56) ;AILevel registered
triggerall = Statetype != A
triggerall = Random < var(56) ;2% - 30%
trigger1 = Random < 20 ;2%
trigger1 = ctrl
trigger1 = var(4) := Random%60
trigger2 = Random < 40 ;4%
trigger2 = (HitdefAttr = SC, NA, SA) && MoveContact
trigger2 = var(4) := Random%30

[State -1, AI AIR LIGHT PUNCH]
type = ChangeState
value = 600
triggerall = var(56) ;AILevel registered
triggerall = Random < var(56) ;2% - 30%
triggerall = StateType = A && Ctrl
triggerall = var(7) = 0 || var(7) = 12 ;next to or below
trigger1 = Cond(StateNo = 56,Random < 300,Random < 150) ;30% or 15%

[State -1, AI AIR MEDIUM PUNCH]
type = ChangeState
value = 610
triggerall = var(56) ;AILevel registered
triggerall = Random < var(56) ;2% - 30%
triggerall = var(7) = 0 || var(7) = 12 ;next to or below
trigger1 = Cond(StateNo = 56,Random < 300,Random < 150) ;30% or 15%
trigger1 = StateType = A && Ctrl
trigger2 = Random < 300 ;30%
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
;trigger3 = Random < 75 ;7.5%
;trigger3 = stateno = 155 && ctrl ;Air blocking

[State -1, AI AIR HARD PUNCH]
type = ChangeState
value = 620
triggerall = var(56) ;AILevel registered
triggerall = Random < var(56) ;2% - 30%
triggerall = (var(7) = [0,1]) || (var(7) = [12,13]) ;next to or below
triggerall = Cond(Vel Y > 0,Pos Y < -80,1)
trigger1 = Cond(StateNo = 56,Random < 300,Random < 150) ;30% or 15%
trigger1 = StateType = A && Ctrl
trigger2 = Random < 300 ;30%
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
;trigger3 = Random < 50 ;5%
;trigger3 = stateno = 155 && ctrl ;Air blocking

[State -1, AI AIR LIGHT KICK]
type = ChangeState
value = 630
triggerall = var(56) ;AILevel registered
triggerall = Random < var(56) ;2% - 30%
triggerall = var(7) = 0 || var(7) = 12 ;next to or below
trigger1 = Cond(StateNo = 56,Random < 300,Random < 150) ;30% or 15%
trigger1 = StateType = A && Ctrl
;trigger2 = Random < 100 ;10%
;trigger3 = stateno = 155 && ctrl ;Air blocking

[State -1, AI AIR MEDIUM KICK]
type = ChangeState
value = 640
triggerall = var(56) ;AILevel registered
triggerall = Random < var(56) ;2% - 30%
triggerall = var(7) = 0 || var(7) = 12 ;next to or below
trigger1 = Cond(StateNo = 56,Random < 300,Random < 150) ;30% or 15%
trigger1 = StateType = A && Ctrl
trigger2 = Random < 300 ;30%
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
;trigger3 = Random < 75 ;7.5%
;trigger3 = stateno = 155 && ctrl ;Air blocking

[State -1, AI AIR HARD KICK]
type = ChangeState
value = 650
triggerall = var(56) ;AILevel registered
triggerall = Random < var(56) ;2% - 30%
triggerall = var(7) = 0 || var(7) = 12 ;next to or below
trigger1 = Cond(StateNo = 56,Random < 300,Random < 150) ;30% or 15%
trigger1 = StateType = A && Ctrl
trigger2 = Random < 300 ;30%
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
;trigger3 = Random < 50 ;5%
;trigger3 = stateno = 155 && ctrl ;Air blocking

[State -1, AI LIGHT PUNCH]
type = ChangeState
value = 200
triggerall = var(56) ;AILevel registered
triggerall = Random < var(56) ;2% - 30%
triggerall = var(7) = [0,3] ;enemy is nearby
trigger1 = Random < 150 ;15%
trigger1 = StateType = S && Ctrl
trigger2 = Random < 300 ;30%
trigger2 = stateno = 200 && movecontact

[State -1, AI MEDIUM PUNCH]
type = ChangeState
value = 210
triggerall = var(56) ;AILevel registered
triggerall = Random < var(56) ;2% - 30%
triggerall = var(7) = [0,3] ;enemy is nearby
trigger1 = Random < 150 ;15%
trigger1 = StateType = S && Ctrl
trigger2 = Random < 300 ;30%
trigger2 = stateno = 200 || stateno = 230
trigger2 = movecontact

[State -1, AI HARD PUNCHES]
type = ChangeState
value = Cond(P2BodyDist X > 44,220,221)
triggerall = var(56) ;AILevel registered
triggerall = Random < var(56) ;2% - 30%
trigger1 = Random < 150 ;15%
trigger1 = StateType = S && Ctrl
trigger2 = Random < 300 ;30%
trigger2 = stateno = 200 || stateno = 230
trigger2 = movecontact

[State -1, AI HARD KICK (BOOT)]
type = ChangeState
value = 250
triggerall = var(56) ;AILevel registered
triggerall = Random < var(56) ;2% - 30%
triggerall = var(7) = [0,3] ;enemy is nearby
triggerall = enemynear,movetype != H
trigger1 = Random < 150 ;15%
trigger1 = StateType = S && Ctrl

[State -1, AI SWEEP KICK]
type = ChangeState
value = 430
triggerall = var(56) ;AILevel registered
triggerall = Random < var(56) ;2% - 30%
triggerall = var(7) = [0,3] ;enemy is nearby
triggerall = StateType != A && Ctrl
trigger1 = Random < 50 ;5%
trigger2 = Random < 300 ;30%
trigger2 = P2StateType = C

[State -1, AI LIGHT KICK]
type = ChangeState
value = 230
triggerall = var(56) ;AILevel registered
triggerall = Random < var(56) ;2% - 30%
triggerall = var(7) = [0,3] ;enemy is nearby
trigger1 = Random < 150 ;15%
trigger1 = StateType = S && Ctrl
trigger2 = Random < 300 ;30%
trigger2 = Stateno = 200 && Movecontact
trigger3 = Random < 100 ;10%
trigger3 = P2StateType = C

[State -1, AI MEDIUM KICK]
type = ChangeState
value = 240
triggerall = var(56) ;AILevel registered
triggerall = Random < var(56) ;2% - 30%
triggerall = var(7) = [0,3] ;enemy is nearby
trigger1 = Random < 150 ;15%
trigger1 = StateType = S && Ctrl
trigger2 = Random < 300 ;30%
trigger2 = stateno = 200 || stateno = 230
trigger2 = movecontact

[State -1, AI TAUNT]
type = ChangeState
value = 160
triggerall = var(56) ;AILevel registered
triggerall = Random < var(56) ;2% - 30%
triggerall = stateno != 100
triggerall = StateType = S && Ctrl
trigger1 = Random < 10 ;1%
trigger1 = abs(P2Dist X) > 300
trigger2 = numtarget
trigger2 = target,HitFall
trigger2 = target,StateNo != [5100,5120]
trigger2 = Cond(target,CanRecover,Random < 100,Random < 200) ;10% or 20%
trigger3 = Random < 300
trigger3 = Cond(numenemy = 2,(enemy(0),Life + enemy(1),Life) <= 0,P2Life <= 0)

[State -1, AI SUPER JUMP] ;Down Up
type = ChangeState
value = 55
triggerall = var(56) ;AILevel registered
triggerall = StateType = S && Ctrl
triggerall = Random < var(56) ;2% - 30%
trigger1 = Random < 60 ;6%
trigger1 = (var(7) = [8,11])
trigger2 = Cond(P2StateNo = 45,Random < 500,Random < 100) ;50% or 10%
trigger2 = (var(7) = [1,3])

;xxxx(¯(__)¯)xxxxxxxx/ [ ° ____ ° ] \xxxxxxxx(¯(__)¯)xxxx
;PLAYER COMMANDS

[State -1, DASH FORWARD]
type = ChangeState
value = 100
triggerall = !var(56) ;Not AI
triggerall = command = "FF"
triggerall = statetype = S
trigger1 = ctrl

;-----------------------------

[State -1, DASH BACK]
type = ChangeState
value = 105
triggerall = !var(56) ;Not AI
triggerall = command = "BB"
triggerall = statetype = S
trigger1 = ctrl

;-----------------------------

[State -1, TURBINE SUPER LOW] ;QCF QCF X
type = ChangeState
value = 3200
triggerall = !var(56) ;Not AI
triggerall = command = "TurbineX"
triggerall = Statetype != A
triggerall = power >= 2000 
trigger1 = ctrl
trigger1 = var(4) := 1 ;ground attack
trigger2 = (HitdefAttr = SC, NA) && MoveContact
trigger2 = var(4) := 1 ;ground attack

[State -1, TURBINE SUPER MED] ;QCF QCF Y
type = ChangeState
value = 3200
triggerall = !var(56) ;Not AI
triggerall = command = "TurbineY"
triggerall = Statetype != A
triggerall = power >= 2000 
trigger1 = ctrl
trigger1 = var(4) := 2 ;med attack
trigger2 = (HitdefAttr = SC, NA) && MoveContact
trigger2 = var(4) := 2 ;med attack

[State -1, TURBINE SUPER HIGH] ;QCF QCF Z
type = ChangeState
value = 3200
triggerall = !var(56) ;Not AI
triggerall = command = "TurbineZ"
triggerall = Statetype != A
triggerall = power >= 2000 
trigger1 = ctrl
trigger1 = var(4) := 3 ;high attack
trigger2 = (HitdefAttr = SC, NA) && MoveContact
trigger2 = var(4) := 3 ;high attack

;-----------------------------

[State -1, ARCADE HYPER]
type = ChangeState
value = 3300
triggerall = !var(56) ;Not AI
triggerall = command = "Arcade"
triggerall = Statetype != A
triggerall = power >= 3000
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA, SA) && MoveContact

;-----------------------------

[State -1, BASH N' TOSS LIGHT] ;HCF X
type = ChangeState
value = 2000
triggerall = !var(56) ;Not AI
triggerall = command = "BnTLight"
triggerall = Statetype != A
triggerall = P2MoveType != H
trigger1 = ctrl
trigger1 = var(4) := 1

;-----------------------------

[State -1, BASH N' TOSS MED] ;HCF Y
type = ChangeState
value = 2000
triggerall = !var(56) ;Not AI
triggerall = command = "BnTMedium"
triggerall = Statetype != A
triggerall = P2MoveType != H
trigger1 = ctrl
trigger1 = var(4) := 2

;-----------------------------

[State -1, BASH N' TOSS HARD] ;HCF Z
type = ChangeState
value = 2000
triggerall = !var(56) ;Not AI
triggerall = command = "BnTHeavy"
triggerall = Statetype != A
triggerall = power >= 1000 
triggerall = P2MoveType != H
trigger1 = ctrl
trigger1 = var(4) := 3

;-----------------------------

[State -1, LONG PUNCH GROUND] ;QCF X
type = ChangeState
value = 1200
triggerall = !var(56) ;Not AI
triggerall = command = "LongPunchX"
triggerall = Statetype != A
trigger1 = ctrl
trigger1 = var(10) := 1200
trigger2 = (HitdefAttr = SC, NA, SA) && MoveContact
trigger2 = StateNo != [1200,1220] ;no repeats
trigger2 = var(10) := 1200

;-----------------------------

[State -1, LONG PUNCH MED] ;QCF Y
type = ChangeState
value = 1200
triggerall = !var(56) ;Not AI
triggerall = command = "LongPunchY"
triggerall = Statetype != A
trigger1 = ctrl
trigger1 = var(10) := 1210
trigger2 = (HitdefAttr = SC, NA, SA) && MoveContact
trigger2 = StateNo != [1200,1220] ;no repeats
trigger2 = var(10) := 1210

;-----------------------------

[State -1, LONG PUNCH HIGH] ;QCF Z
type = ChangeState
value = 1200
triggerall = !var(56) ;Not AI
triggerall = command = "LongPunchZ"
triggerall = Statetype != A
trigger1 = ctrl
trigger1 = var(10) := 1220
trigger2 = (HitdefAttr = SC, NA, SA) && MoveContact
trigger2 = StateNo != [1200,1220] ;no repeats
trigger2 = var(10) := 1220

;-----------------------------

[State -1, COME HERE] ;QCB Y
type = ChangeState
value = 1100
triggerall = !var(56) ;Not AI
triggerall = command = "ComeHere"
triggerall = Statetype != A
triggerall = P2MoveType != H
trigger1 = ctrl

;-----------------------------

[State -1, MINIGUN FAKE-OUT] ;QCF START
type = ChangeState
value = 1010
triggerall = !var(56) ;Not AI
triggerall = command = "MinigunFakeOut"
triggerall = Statetype != A
trigger1 = ctrl

;-----------------------------

[State -1, MINIGUN SHORT] ;QCF A
type = ChangeState
value = 1000
triggerall = !var(56) ;Not AI
triggerall = command = "MinigunShort"
triggerall = Statetype != A
trigger1 = ctrl
trigger1 = var(4) := 60
trigger2 = (HitdefAttr = SC, NA, SA) && MoveContact
trigger2 = var(4) := 60

;-----------------------------

[State -1, MINIGUN MED] ;QCF B
type = ChangeState
value = 1000
triggerall = !var(56) ;Not AI
triggerall = command = "MinigunMed"
triggerall = Statetype != A
trigger1 = ctrl
trigger1 = var(4) := 30
trigger2 = (HitdefAttr = SC, NA, SA) && MoveContact
trigger2 = var(4) := 30

;-----------------------------

[State -1, MINIGUN LONG] ;QCF C
type = ChangeState
value = 1000
triggerall = !var(56) ;Not AI
triggerall = command = "MinigunLong"
triggerall = Statetype != A
trigger1 = ctrl
trigger1 = var(4) := 1
trigger2 = (HitdefAttr = SC, NA, SA) && MoveContact
trigger2 = var(4) := 1

;-----------------------------

[State -1, AIR LIGHT PUNCH] ;X
type = ChangeState
value = 600
triggerall = !var(56) ;Not AI
triggerall = command = "x"
trigger1 = StateType = A && Ctrl

;-----------------------------
[State -1, AIR MEDIUM PUNCH] ;Y
type = ChangeState
value = 610
triggerall = !var(56) ;Not AI
triggerall = command = "y"
trigger1 = StateType = A && Ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;-----------------------------
[State -1, AIR HARD PUNCH] ;Z CHAINSAW
type = ChangeState
value = 620
triggerall = !var(56) ;Not AI
triggerall = command = "z"
triggerall = Cond(Vel Y > 0,Pos Y < -80,1)
trigger1 = StateType = A && Ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;-----------------------------

[State -1, AIR LIGHT KICK] ;A
type = ChangeState
value = 630
triggerall = !var(56) ;Not AI
triggerall = command = "a"
trigger1 = StateType = A && Ctrl

;-----------------------------

[State -1, AIR MEDIUM KICK] ;B
type = ChangeState
value = 640
triggerall = !var(56) ;Not AI
triggerall = command = "b"
trigger1 = StateType = A && Ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;-----------------------------
[State -1, AIR HARD KICK] ;C
type = ChangeState
value = 650
triggerall = !var(56) ;Not AI
triggerall = command = "c"
trigger1 = StateType = A && Ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;-----------------------------
[State -1, LIGHT PUNCH] ;X
type = ChangeState
value = 200
triggerall = !var(56) ;Not AI
triggerall = command = "x"
triggerall = var(59) != 5 ;Prevent movement during pre Arcade win pose
;triggerall = command != "holddown"
trigger1 = StateType = S && Ctrl
trigger2 = stateno = 200
trigger2 = time > 6 && movecontact

;-----------------------------

[State -1, MEDIUM PUNCH] ;Y
type = ChangeState
value = 210
triggerall = !var(56) ;Not AI
triggerall = command = "y"
triggerall = var(59) != 5 ;Prevent movement during pre Arcade win pose
;triggerall = command != "holddown"
trigger1 = StateType = S && Ctrl
trigger2 = StateNo = 200 || StateNo = 230
trigger2 = Movecontact

;-----------------------------

[State -1, HARD PUNCHES] ;Z (Flyswatter / Crazy headbutt)
type = ChangeState
value = Cond(P2BodyDist X > 44,220,221)
triggerall = !var(56) ;Not AI
triggerall = Command = "z"
triggerall = var(59) != 5 ;Prevent movement during pre Arcade win pose
;triggerall = command != "holddown"
trigger1 = StateType = S && Ctrl
trigger2 = StateNo = 200 || StateNo = 230
trigger2 = Movecontact
 
;-----------------------------

[State -1, HARD KICK (BOOT)] ;C
type = ChangeState
value = 250
triggerall = !var(56) ;Not AI
triggerall = Command = "c"
triggerall = var(59) != 5 ;Prevent movement during pre Arcade win pose
;triggerall = command != "holddown"
trigger1 = StateType = S && Ctrl
trigger2 = StateNo = 200 || StateNo = 230
trigger2 = Movecontact

;-----------------------------

[State -1, MEDIUM KICK] ;B
type = ChangeState
value = 240
triggerall = !var(56) ;Not AI
triggerall = Command = "b"
triggerall = var(59) != 5 ;Prevent movement during pre Arcade win pose
;triggerall = Command != "holddown"
trigger1 = StateType = S && Ctrl
trigger2 = StateNo = 200 || StateNo = 230
trigger2 = Movecontact

;-----------------------------

[State -1, SWEEP KICK] ;Down A
type = ChangeState
value = 430
triggerall = !var(56) ;Not AI
triggerall = Command = "a"
triggerall = command = "holddown"
triggerall = var(59) != 5 ;Prevent movement during pre Arcade win pose
trigger1 = StateType != A && Ctrl

;-----------------------------

[State -1, LIGHT KICK] ;A
type = ChangeState
value = 230
triggerall = !var(56) ;Not AI
triggerall = Command = "a"
triggerall = Command != "holddown"
triggerall = var(59) != 5 ;Prevent movement during pre Arcade win pose
;triggerall = stateno != 100
trigger1 = StateType = S && Ctrl
trigger2 = Stateno = 200 && Movecontact

;-----------------------------

[State -1, TAUNT] ;S
type = ChangeState
value = 160
triggerall = !var(56) ;Not AI
triggerall = Command = "s"
;triggerall = Command != "holddown"
triggerall = stateno != 100
triggerall = var(59) != 5 ;Prevent movement during pre Arcade win pose
trigger1 = StateType = S && Ctrl

;-----------------------------

[State -1, SUPER JUMP] ;Down Up
type = ChangeState
value = 55
triggerall = !var(56) ;Not AI
triggerall = Command = "Super_Jump"
trigger1 = StateType = S && Ctrl