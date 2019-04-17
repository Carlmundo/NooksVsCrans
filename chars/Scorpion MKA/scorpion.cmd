;Scorpion
;Created by: Gary Fisher ("ermac" on mugenguild.com, mugen-fantry.net)

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = y
y = x
z = c
a = b
b = a
c = z
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;---------------------------------------------------------------------
;---------------------------------------------------------------------
;---------------------------------------------------------------------
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10


;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "bck_x"
command = /B,x
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
;time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1


[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1

;-| Single Button |---------------------------------------------------------
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
name = "start"
command = s
time = 1


[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1




;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdc"
command = /c
time = 1


[Command]
name = "spear"
command = F, F, b

;ai shit------------------------------------------------------------------

[command]
name = "CPU1"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU11"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU12"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU2"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU13"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU14"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU3"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU15"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU16"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU4"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU17"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU18"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU5"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU19"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU20"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU6"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU21"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU22"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU7"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU23"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU24"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU8"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU25"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU26"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU9"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU27"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU28"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU10"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU29"
command = s, s, s, s, s, s, s
time = 1

[command]
name = "CPU30"
command = s, s, s, s, s, s
time = 1

[command]
name = "CPU31"
command = s, s, s, s, s
time = 1
[command]
name = "CPU32"
command = s, s, s, s, U
time = 1
[command]
name = "CPU33"
command = s, s, s, U, U
time = 1





[command]
name = "CPU34"
command = s
time = 1
[command]
name = "CPU35"
command = U
time = 1
[command]
name = "CPU36"
command = D
time = 1
[command]
name = "CPU37"
command = B
time = 1
[command]
name = "CPU38"
command = F
time = 1
[command]
name = "CPU39"
command = a
time = 1
[command]
name = "CPU40"
command = b
time = 1
[command]
name = "CPU41"
command = c
time = 1
[command]
name = "CPU42"
command = x
time = 1
[command]
name = "CPU43"
command = y
time = 1
[command]
name = "CPU44"
command = z
time = 1
















;-| Special+Super Motions |------------------------------------------------------

;[Command]
;name = "par"
;command = B+y




[Command]
name = "slice"
command = D, B, b

[Command]
name = "twirl"
command = D, F, a



[Command]
name = "harakiri"
command = D, D, D

[Command]
name = "breath"
command = B, F, y

[Command]
name = "brutal"
command = D, F, y

[Command]
name = "hell"
command = D, F, x

[Command]
name = "spectre"
command = F, B, y

[Command]
name = "roll"
command = y+x

[Command]
name = "recroll"
command = a+b


[Command]
name = "hellfire"
command = F, B, x

[Command]
name = "hellfirefar"
command = B, F, x


[Command]
name = "tele"
command = D, D

[Command]
name = "teleport"
command = D, B, y

[Command]
name = "fireb1"
command = D, F, b

[Command]
name = "firekick"
command = D, B, a


[Command]
name = "mkap"
command = F, B, b



;---------------------------------------------------------------------


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef -1];dont remove dipshit

; Stand Block
[state -1 ]
type = changestate
trigger1=ctrl
triggerall = p2stateno !=33557
triggerall = command = "c" && command !="holddown" && statetype = S && stateno !=120 && var(59)!=1
triggerall = command !="holdfwd" 
;triggerall = command !="holdback"
;triggerall = stateno!=20
value = 120

[state -1 ]
type = changestate
trigger1=ctrl
triggerall = p2stateno !=33557
triggerall = command = "c" && command = "holddown" && statetype = C && stateno !=120 && var(59)!=1
triggerall = command !="holdfwd" 
;triggerall = command !="holdback"
value = 120

;---------------------------------------------------------------------------
;hellfire

[State -1, hellfire mid]
type = Changestate
triggerall = var(59) != 1
value = 14455
triggerall = command = "hellfire"
triggerall = NumExplod(1344) != 1
triggerall = power >= 5000
trigger1 = ctrl = 1
trigger1 = statetype != A
triggerall = p2stateno !=1338
triggerall = p2stateno !=6338
triggerall = p2stateno !=5120
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block

;---------------------------------------------------------------------------
;hellfire 2

[State -1, hellfire far]
type = Changestate
triggerall = var(59) != 1
value = 14456
triggerall = command = "hellfirefar"
triggerall = NumExplod(1344) != 1
triggerall = power >= 5000
trigger1 = ctrl = 1
trigger1 = statetype != A
triggerall = p2stateno !=1338
triggerall = p2stateno !=6338
triggerall = p2stateno !=5120
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block


 [State -1, armbar]
type = Changestate
value = 31800;6200
triggerall = power >= 7000
triggerall = command = "holdfwd"
triggerall = command = "y"
triggerall = var(59) != 1
triggerall = p2bodydist x <= 5
triggerall = p2bodydist y <= 0
triggerall = var(54) = 1
triggerall = var(54)!=2
triggerall = teammode = single
triggerall = p2stateno != 6169
;triggerall = FrontEdgeBodyDist < !100
triggerall = frontedgedist >= 40
trigger1 = ctrl = 1
trigger1 = statetype = S
triggerall = p2statetype !=L
triggerall = p2statetype = S
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block











;---------------------------------------------------------------------------
;[State -1, stance spear]  ;heal
;type = changestate
;value = 19900
;triggerall = ctrl
;triggerall = numhelper(9438) !=1
;triggerall = statetype = S
;triggerall = var(59) != 1
;triggerall = var(53)!=1
;trigger1 = command = "stance"

;---------------------------------------------------------------------------
;spear

[State -1, Spear]
type = Changestate
value = 1200
triggerall = command = "spear"
triggerall = var(59) != 1
triggerall = p2stateno!=6253
triggerall = numhelper(1010)!=1
triggerall = p2stateno !=1200
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = statetype != C
triggerall = p2stateno != 1021
triggerall = p2stateno != 1020
triggerall = p2stateno != 33557
triggerall = p2stateno != 4666
triggerall = stateno != 20
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block



[State -1, spear twirl]  ;heal
type = changestate
value = 19901
triggerall = ctrl
triggerall = power >= 4000
triggerall = numhelper(9438) !=1
triggerall = statetype = S
triggerall = var(59) != 1
triggerall = var(53)!=1
trigger1 = command = "twirl"

[State -1, spear slice ]  ;heal
type = changestate
value = 19903
triggerall = ctrl
triggerall = power >= 4000
triggerall = numhelper(9438) !=1
triggerall = numexplod (1344) !=1
triggerall = statetype = S
triggerall = var(59) != 1
triggerall = var(53)!=1
trigger1 = command = "slice"










;----------------------------------------------------------------------------

[State -1, powercharge]
type=changestate
value=1900
trigger1=roundstate=2&&command="hold_b"&&command="hold_y"&&statetype!=A&&power<powermax&&ctrl
triggerall = stateno = 0
trigger1 = numexplod(1344)!=1
triggerall = var(59) !=1


;-----------------------------------------------------------------------
;[State -1, healer]  ;heal
;type = changestate
;value = 9439
;trigger1 = ctrl
;triggerall = life  < 200
;;triggerall = power <= 10000
;triggerall = numhelper(9438) !=1
;triggerall = statetype = S
;triggerall = var(59) != 1
;triggerall = var(53)!=1
;triggerall = command = "res"

;---------------------------------------------------------------------------
[State -1, breaker]
type = changestate
value = 9146
triggerall = var(59) != 1
triggerall = var(43) != 1
triggerall = var(43) = 0
triggerall = p2stateno !=33557
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2life != 0
triggerall = ctrl = 0
triggerall = movetype = H
triggerall = Var(32)>2
triggerall = command = "z" && command = "holdfwd"
triggerall = statetype != A
triggerall = p2bodydist x <= 30
triggerall = p2bodydist y <= 0
trigger1 = statetype = S
triggerall = p2stateno != 666 && p2stateno != 667
triggerall = p2stateno !=6013
triggerall = p2stateno !=6014
triggerall = p2stateno != 3052
triggerall = p2stateno != 410
triggerall = p2stateno != 411
triggerall = p2stateno != 8200
triggerall = p2stateno != 8201

[State -1, breaker2]
type = changestate
value = 1334
triggerall = var(59) != 1
triggerall = var(44) != 1
triggerall = var(44) = 0
triggerall = p2stateno !=33557
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2life != 0
triggerall = ctrl = 0
triggerall = movetype = H
triggerall = Var(32)>2
triggerall = command = "z" && command = "holdfwd"
triggerall = statetype != A
triggerall = p2bodydist x <= 30
triggerall = p2bodydist y <= 0
trigger1 = statetype = S
triggerall = p2stateno != 666 && p2stateno != 667
triggerall = p2stateno !=6013
triggerall = p2stateno !=6014
triggerall = p2stateno != 3052
triggerall = p2stateno != 410
triggerall = p2stateno != 411

[State -1, breaker3]
type = changestate
value =1335
triggerall = var(59) != 1
triggerall = var(45) != 1
triggerall = var(45) = 0
triggerall = p2stateno !=33557
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2life != 0
triggerall = ctrl = 0
triggerall = movetype = H
triggerall = Var(32)>2
triggerall = command = "z" && command = "holdfwd"
triggerall = statetype != A
triggerall = p2bodydist x <= 30
triggerall = p2bodydist y <= 0
trigger1 = statetype = S
triggerall = p2stateno != 666 && p2stateno != 667
triggerall = p2stateno !=6013
triggerall = p2stateno !=6014
triggerall = p2stateno != 3052
triggerall = p2stateno != 410
triggerall = p2stateno != 411





 [State -1, firekick]
type = changestate
value = 6661
triggerall = var(59) != 1
triggerall = command = "firekick"
triggerall = power >= 3000
triggerall = NumExplod(779) != 1
triggerall = NumExplod(780) != 1
triggerall = NumExplod(1344) != 1
triggerall = p2stateno !=1337
triggerall = p2stateno !=1338
triggerall = p2stateno !=5120
triggerall = p2stateno !=6338
triggerall = p2stateno !=6169
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
trigger1 = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, mkap]
type = changestate
value = 9147
triggerall = var(59) != 1
triggerall = command = "mkap"
triggerall = NumExplod(779) != 1
triggerall = NumExplod(780) != 1
triggerall = power >= 3000
triggerall = p2stateno !=1337
triggerall = p2stateno !=1338
triggerall = p2stateno !=5120
triggerall = p2stateno !=6338
triggerall = p2stateno !=6169
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
trigger1 = statetype = S
trigger1 = ctrl




;-------------------------------------------------------------------------------
;spear throw

[State -1, spear throw]
type = Changestate
value = 6250;6200
triggerall = command = "holdfwd"
triggerall = command = "b"
triggerall = var(59) != 1
triggerall = p2bodydist x <= 30
triggerall = p2bodydist y <= 0
triggerall = teammode = single
triggerall = p2stateno != 6169
;triggerall = FrontEdgeBodyDist < !100
triggerall = frontedgedist >= 40
trigger1 = ctrl = 1
trigger1 = statetype = S
triggerall = p2statetype !=L
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = p2stateno !=6168
triggerall = p2stateno !=6170
triggerall = p2stateno !=5220
triggerall = p2stateno !=7005
triggerall = p2stateno !=6250 ;
triggerall = p2stateno !=1100
triggerall = p2stateno !=33557 ;fatality state
triggerall = p2stateno !=99441 ;double hara kiri own state start
triggerall = p2stateno !=99446 ;hara kiri own state start
triggerall = p2stateno !=99449 ;double hara kiri p2 state start
triggerall = p2stateno !=33449 ;go to hell finisher p2 state

;[State -1, jaw buster]
;type = Changestate
;value = 1800;6200
;triggerall = command = "holdfwd"
;triggerall = command = "x"
;triggerall = var(59) != 1
;triggerall = p2bodydist x <= 5
;triggerall = p2bodydist y <= 0
;triggerall = var(54) =1
;triggerall = teammode = single
;triggerall = p2stateno != 6169
;;triggerall = FrontEdgeBodyDist < !100
;triggerall = frontedgedist >= 40
;trigger1 = ctrl = 1
;trigger1 = statetype = S
;triggerall = p2statetype !=L
;triggerall = p2stateno !=1943 ;sub ice mode super
;triggerall = p2stateno !=1944 ; sub polar blast super
;triggerall = p2stateno !=1945 ; sub super ice block
;triggerall = p2stateno !=1947 ;sub in block
;triggerall = p2stateno !=6168
;triggerall = p2stateno !=6170
;triggerall = p2stateno !=5220
;triggerall = p2stateno !=7005

[State -1, classic air throw]
type = Changestate
value = 8800
triggerall = command = "z"
triggerall = var(59) != 1
triggerall = power >= 2000
triggerall = p2bodydist x = [-1,19]
triggerall = p2bodydist Y = [-10,10]
;triggerall = screenpos y = [100,150]
triggerall = backedgedist >= 65
trigger1 = ctrl = 1
trigger1 = statetype = A
triggerall = p2statetype = A
triggerall = p2statetype !=L
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block



;---------------------------------------------------------------------------


[State -1, spear fat]  ;spear fat
type = changestate
value = 99440
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command = "holdfwd"
;triggerall = p2life  < 700
triggerall = p2stateno = 33557
triggerall = p2bodydist x = [200,205]
;triggerall = roundno >= 3
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, hell fat] ;hell
type = changestate
value = 33440
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = NumExplod(779) != 1
triggerall = NumExplod(780) != 1
;triggerall = p2life  < 700
triggerall = p2stateno = 33557
triggerall = p2bodydist x >= 70
;triggerall = roundno >= 3
trigger1 = statetype = S 
trigger1 = ctrl
triggerall = p2name != "Sub-Zero by gary fisher"
triggerall = p4name != "Sub-Zero by gary fisher"
triggerall = p2name != "Scorpion by gary fisher"
triggerall = p4name != "Scorpion by gary fisher"
;---------------------------------------------------------------------------
[State -1, toasty] ;toasty
type = changestate
value = 33445
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command = "holdback"
;triggerall = p2life  < 700
triggerall = p2stateno = 33557
triggerall = p2bodydist x = [60,70]
;triggerall = roundno >= 3
trigger1 = statetype = S 
trigger1 = ctrl


;---------------------------------------------------------------------------
[State -1, uppercut fat]  ;uppercut
type = changestate
value = 33448
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command = "holdfwd"
;triggerall = p2life  < 700
triggerall = p2stateno = 33557
triggerall = p2bodydist x <= 25
;triggerall = roundno >= 3
trigger1 = statetype = S 
trigger1 = ctrl

;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
; par

[State -1, parry]
type = changestate
value = 7005
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command = "holdback"
triggerall = p2stateno != 33557
triggerall = p2stateno !=4666
triggerall = p2stateno != 33558
triggerall = p2stateno != 4119
triggerall = p2stateno != 99446
triggerall = p2stateno != 99440
triggerall = p2stateno != 99441
triggerall = p2stateno != 6173
triggerall = p2stateno != 4120
triggerall = matchover != 1
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = p2stateno !=33440
triggerall = p2stateno !=5120
triggerall = p2life != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno = 0 || stateno = 20 || stateno = 150 || stateno = 151 ||stateno = 130 || stateno = 140
triggerall = numexplod(1349)!=1




[State -1, parry counter]
type = changestate
value = 6139
triggerall = p2stateno !=33557
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2life != 0
triggerall = ctrl = 0
triggerall = movetype = H
triggerall = Var(32)>2
triggerall = command = "c" && command = "holdfwd"
triggerall = statetype != A
triggerall = p2bodydist x <= 30
triggerall = p2bodydist y <= 0
trigger1 = statetype = S
triggerall = p2stateno != 666 && p2stateno != 667
triggerall = p2stateno !=6013
triggerall = p2stateno !=6014
triggerall = p2stateno != 3052
triggerall = p2stateno != 410
triggerall = p2stateno != 411
triggerall = p2stateno != 8200
triggerall = p2stateno != 8201
trigger1 = var(51)=0
triggerall = var(51)!=1




;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; spectre mode

[State -1, spectre mode]
type = changestate
value = 1943
triggerall = var(59) != 1
triggerall = command = "spectre"
triggerall = p2stateno != 33557
triggerall = NumExplod(779) != 1
triggerall = NumExplod(780) != 1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = power >= 4000
triggerall = var(0) !=1
triggerall = stateno = 0
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------------------------------------------------



;---------------------------------------------------------------------------
;breath
[State -1, breath]
type = Changestate
value = 11542
triggerall = command = "breath"
triggerall = var(59) != 1
triggerall = NumExplod(1344) != 1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
trigger1 = ctrl
trigger1 = statetype = S



;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;low spear takedown


;---------------------------------------------------------------------------
;dodge roll

[State - 1, dodge roll]
type = ChangeState
value = 6168
triggerall = command = "roll"
triggerall = p2stateno != 33557
triggerall = var(59) != 1
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;tech
;[State -1, techroll]
;type = changestate
;triggerall = var(59) != 1
;trigger1 = stateno = 5050 && vel y>-1 && alive
;trigger1 = var(59)>= 1 && pos y =-30 && random<250
;value = 5220

;[State -1, techroll]
;triggerall = var(59) != 1
;type = changestate
;trigger1 = stateno = 5050 && vel y>-1 && alive
;trigger1 = var(59)<= 0 && command ="recroll"
;value = 5220
;---------------------------------------------------------------------------
;Run Fwd

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "holdfwd"
triggerall = command = "z"
triggerall = power >= 1
triggerall = p2stateno !=33557
triggerall = numexplod(3131)!=1
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;back hop

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;brutal

[State -1, brutal super]
type = Changestate
value = 666
triggerall = command = "brutal"
triggerall = p2bodydist x <= 20
triggerall = p2bodydist y <= 0
triggerall = NumExplod(779) != 1
triggerall = NumExplod(780) != 1
triggerall = power >= 7000
triggerall = var(59) != 1
trigger1 = ctrl = 1
trigger1 = statetype = S
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block


;---------------------------------------------------------------------------
;high punch (axe) combo starter

[State -1, axe punch]
type = ChangeState
value = 1990
triggerall = command = "y"
trigger1 = statetype = S
triggerall = var(59) != 1
triggerall = var(54) = 2
triggerall = var(54)!=1
triggerall = p2statetype != A
trigger1 = ctrl = 1
triggerall = p2bodydist x <= 15
triggerall = p2bodydist y = 0
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block


;---------------------------------------------------------------------------
;teleport punch

[State -1, classic telepunch]
type = ChangeState
value = 1100
triggerall = command = "teleport"
triggerall = var(59) != 1
triggerall = statetype != C
trigger1 = ctrl = 1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block

;---------------------------------------------------------------------------
;fireball1

;[State -1, gfireball 1]
;type = Changestate
;value = 4545
;triggerall = command = "fireb1"
;triggerall = var(54) !=1
;triggerall = var(59) != 1
;triggerall = var(58)!=-3
;trigger1 = ctrl = 1
;trigger1 = statetype = S
;---------------------------------------------------------------------------
;fireball2

;[State -1, gfireball 2]
;type = Changestate
;value = 4546
;triggerall = command = "doublefire"
;triggerall = var(54) !=1
;triggerall = var(59) != 1
;triggerall = var(58)!=-3
;trigger1 = ctrl = 1
;trigger1 = statetype = S
;---------------------------------------------------------------------------
;fireball3

;[State -1, gfireball 3]
;type = Changestate
;value = 4547
;triggerall = command = "triplefire"
;triggerall = var(54) !=1
;triggerall = var(59) != 1
;triggerall = var(58)!=-3
;trigger1 = ctrl = 1
;trigger1 = statetype = S
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;hell mode

[State -1, hell mode]
type = Changestate
value = 668
triggerall = var(59) != 1
triggerall = command = "hell"
triggerall = p2stateno != 33557
triggerall = NumExplod(779) != 1
triggerall = NumExplod(780) != 1
triggerall = p2name != "Scorpion by Gary Fisher"
triggerall = power >= 8000
triggerall = stateno = 0
trigger1 = p2stateno = 0
trigger2 = p2stateno = 52
trigger3 = p2stateno = 11
trigger4 = p2stateno = 12
trigger5 = p2stateno = 20
trigger6 = p2stateno = 100
trigger7 = p2stateno = 130
trigger8 = p2stateno = 140
trigger9 = p2stateno = 1021
trigger10 = p2stateno = 1005
triggerall = roundno!=4
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
trigger1 = ctrl = 1
trigger1 = statetype = S

;----------------------------------------------------------------------------
; super fireball

;[State -1, super fireball]
;type = changestate
;value = 1543
;triggerall = var(59) != 1
;triggerall = command = "fireb1"
;triggerall = NumExplod(779) != 1
;triggerall = NumExplod(780) != 1
;triggerall = stateno = 0
;triggerall = power >= 2000
;trigger1 = p2stateno = 0 || p2stateno = 52 || p2stateno = 11 || p2stateno = 12 || p2stateno = 20 || p2stateno = 100 ||p2stateno = 130 || p2stateno = 140 || p2stateno = 1021 || p2stateno = 1005
;trigger1 = statetype = S
;triggerall = p2stateno !=1943 ;sub ice mode super
;triggerall = p2stateno !=1944 ; sub polar blast super
;triggerall = p2stateno !=1945 ; sub super ice block
;triggerall = p2stateno !=1947 ;sub in block
;trigger1 = ctrl

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;Taunt

;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = var(59) != 1
;triggerall = var(58)!=-3
;triggerall = command = "start"
;triggerall = var(54) !=1
;trigger1 = statetype != A
;trigger1 = ctrl

;---------------------------------------------------------------------------
;Roundhouse

[State -1, RoundHouse]
type = Changestate
triggerall = var(59) != 1
triggerall = var(54) = 2
triggerall = var(54)!=1
value = 239
triggerall = command = "x"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block

;Roundhouse

[State -1, Hapkido palm thrust]
type = Changestate
triggerall = var(59) != 1
triggerall = var(54) = 1
triggerall = var(54)!=2
value = 715
triggerall = command = "y"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block


;---------------------------------------------------------------------------
;Sweep

[State -1, Sweep]
type = Changestate
value = 242
triggerall = var(59) != 1
triggerall = var(54) = 2
triggerall = var(54)!=1
trigger1 = command = "a"
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl; = 1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block

[State -1, hapkido hopSweep]
type = Changestate
value = 721
triggerall = var(59) != 1
triggerall = var(54) = 1
triggerall = var(54)!=2
trigger1 = command = "b"
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl; = 1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block




;---------------------------------------------------------------------------
;high punch 1

[State -1, hp1]
type = ChangeState
value = 210
triggerall = var(59) != 1
;triggerall = var(54) = 2
;triggerall = var(54)!=1
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 211
trigger2 = Time > 7
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block



;high punch 2
[State -1, hp2]
type = ChangeState
triggerall = var(59) != 1
triggerall = var(54) = 2
triggerall = var(54)!=1
value = 211
triggerall = command = "y"
trigger1 = stateno = 210
trigger1 = Time > 7
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block


;---------------------------------------------------------------------------
;High Kick combo start

[State -1, high kick combo start]
type = Changestate
triggerall = var(59) != 1
triggerall = var(54) = 2
triggerall = var(54)!=1
value = 1994
triggerall = command = "x"
triggerall = p2bodydist x <= 10
trigger1 = statetype = S
triggerall = p2statetype !=A
trigger1 = ctrl = 1
;trigger2 = stateno = 1991 && movecontact
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block



;---------------------------------------------------------------------------





;hapkido thrustkick


[State -1, hapkido thrustkick]
type = Changestate
triggerall = var(59) != 1
triggerall = var(54)=1
triggerall = var(54)!=2
value = 2007
triggerall = command = "a"
triggerall = command = "holdfwd"
;triggerall = p2bodydist x <= 10
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block







;---------------------------------------------------------------------------
;low punch 1

[State -1, lp1]
type = ChangeState
triggerall = var(59) != 1
value = 240
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 241
trigger2 = Time > 8
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block


;---------------------------------------------------------------------------
;low punch 2

[State -1, lp2]
type = ChangeState
triggerall = var(59) != 1
triggerall = var(54) = 2
triggerall = var(54)!=1
value = 241
triggerall = command = "b"
trigger1 = stateno = 240
trigger1 = Time > 7
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block


;---------------------------------------------------------------------------
;High Kick

[State -1, high kick]
type = ChangeState
triggerall = var(59) != 1
;triggerall = var(54) = 2
;triggerall = var(54)!=1
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block


;---------------------------------------------------------------------------
;uppercut

[State -1, uppercut]
type = ChangeState
triggerall = var(59) != 1
;triggerall = var(54) = 2
;triggerall = var(54)!=1
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = ctrl = 1
trigger1 = statetype != A
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block


;---------------------------------------------------------------------------
;low punch (crouch)

[State -1, crouch lp]
type = ChangeState
triggerall = var(59) != 1
value = 400
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block


;---------------------------------------------------------------------------
;Low Kick (crouch)

[State -1, crouch lk]
type = ChangeState
triggerall = var(59) != 1
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 400
trigger2 = time > 7
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block


;----------------------------------------------------------------------------
;high kick (crouch)

[State -1, crouch hk]
type = ChangeState
triggerall = var(59) != 1
value = 440
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 430
trigger2 = time > 7
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block


;---------------------------------------------------------------------------
;low kick

[State -1, low kick]
type = ChangeState
triggerall = var(59) != 1
;triggerall = var(54) = 2
;triggerall = var(54)!=1
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block

;---------------------------------------------------------------------------
;Jump Kick

[State -1, Jump Kick 1]
type = ChangeState
triggerall = var(59) != 1
value = 640
triggerall = command = "a"
;triggerall = p2statetype = A
trigger1 = statetype = A
trigger1 = p2statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block



[State -1, Jump Kick 1b]
type = ChangeState
triggerall = var(59) != 1
value = 641
triggerall = command = "a"
;triggerall = p2statetype = A
trigger1 = statetype = A
trigger1 = p2statetype = S
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block


;---------------------------------------------------------------------------
;Jump Kick 2 (classic mk jumpkick)

[State -1, Jump Kick 2]
type = ChangeState
triggerall = var(59) != 1
value = 641
triggerall = command = "x"
triggerall = anim = 42 || anim = 43
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block


;---------------------------------------------------------------------------
;Jump Kick 3

[State -1, Jump Kick 3]
triggerall = var(59) != 1
type = ChangeState
value = 642
triggerall = command = "x"
triggerall = anim = 41
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
;trigger3 = stateno = 1350 ;Air blocking
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block




;---------------------------------------------------------------------------
;Jump high Punch

[State -1, Jump hp]
type = ChangeState
value = 612
triggerall = var(59) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block


;---------------------------------------------------------------------------
;Jump low Punch air juggle

[State -1, Jump lp]
type = ChangeState
value = 663;610
triggerall = var(59) != 1
triggerall = command = "b"
;triggerall = p2stateno != 5100 || p2stateno !=5101|| p2stateno != 5110|| p2stateno !=  5120
;triggerall = p2stateno = 5030 || p2stateno = 5035 || p2stateno = 5050 || p2stateno = 50
trigger1 = statetype = A
triggerall = p2statetype = A
;triggerall = p2bodydist x <= 50
;triggerall = p2bodydist y = [-20,20]
;triggerall = p2bodydist y = 0
trigger1 = ctrl
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block







;---------------------------------------------------------------------------
;flame teleport

[State -1, flame tele]
type = ChangeState
triggerall = var(59) != 1
value = 6017
triggerall = command = "tele"
triggerall = power >= 1000
trigger1 = statetype != A && ctrl 
trigger2 = (stateno = [200,203]) || stateno = 40 || stateno = 10 || stateno = 12
trigger2 = stateno = 640 && movecontact
triggerall = numexplod(1144) !=1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block



;---------------------------------------------------------------------------
; fireball

;[State -1, fireball]
;type = ChangeState
;value = 1542
;triggerall = var(59) != 1
;triggerall = command = "fireball"
;triggerall = p2stateno != 33557
;triggerall = numhelper(1541) !=1
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;triggerall = p2stateno !=1943 ;sub ice mode super
;triggerall = p2stateno !=1944 ; sub polar blast super
;triggerall = p2stateno !=1945 ; sub super ice block
;triggerall = p2stateno !=1947 ;sub in block

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------




;----------------------------------------------------------------------
;----------------------------------------------------------------------
;----------------------------------------------------------------------

;ai


[State -1, Activate AI]
type = VarSet
triggerall = var(59) != 1
triggerall = ctrl = 0 || ctrl = 1
trigger1 = IsHomeTeam = 1 && matchno > 1
trigger1 = roundstate = 0
trigger2 = command = "CPU1" || command = "CPU2" || command = "CPU3"
trigger3 = command = "CPU4" || command = "CPU5" || command = "CPU6"
trigger4 = command = "CPU7" || command = "CPU8" || command = "CPU9"
trigger5 = command = "CPU10" || command = "CPU11" || command = "CPU12"
trigger6 = command = "CPU13" || command = "CPU14" || command = "CPU15"
trigger7 = command = "CPU16" || command = "CPU17" || command = "CPU18"
trigger8 = command = "CPU19" || command = "CPU20" || command = "CPU21"
trigger9 = command = "CPU22" || command = "CPU23" || command = "CPU24"
trigger10 = command = "CPU25" || command = "CPU26" || command = "CPU27"
trigger11 = command = "CPU28" || command = "CPU29" || command = "CPU30"
trigger13 = command = "CPU31" || command = "CPU32" || command = "CPU33"
trigger14 = command = "CPU34" || command = "CPU35" || command = "CPU36"
trigger15 = command = "CPU37" || command = "CPU38" || command = "CPU39"
trigger16 = command = "CPU40" || command = "CPU41" || command = "CPU42"
trigger17 = command = "CPU43" || command = "CPU44"
v = 59
value = 1











[State -1, ai breaker]
type = changestate
value = 9146
triggerall = p2stateno !=33557
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno != 33558
triggerall = p2stateno != 4119
triggerall = p2stateno !=4118
triggerall = p2stateno != 99446
triggerall = p2stateno != 99441
triggerall = p2stateno != 666
triggerall = p2stateno != 667
triggerall = p2stateno != 6173
triggerall = p2stateno != 4120
triggerall = matchover != 1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = p2stateno != 668
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = p2stateno != 430
triggerall = p2life != 0
triggerall = movetype = H
triggerall = statetype != A
triggerall = p2bodydist x = [0,25]
triggerall = p2statetype !=A
trigger1 = ctrl = 0
triggerall = Var(59)=1
triggerall = Var(32)>2
triggerall = statetype = S || statetype = C
trigger1 = NumExplod(780) != 1
triggerall = p2stateno !=6013
triggerall = p2stateno !=6014
triggerall = p2stateno != 3052
triggerall = p2stateno != 410
triggerall = p2stateno != 411
triggerall = var(43) != 1
triggerall = var(43) = 0



[State -1, ai breaker]
type = changestate
value = 1334
triggerall = p2stateno !=33557
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno != 33558
triggerall = p2stateno != 4119
triggerall = p2stateno !=4118
triggerall = p2stateno != 99446
triggerall = p2stateno != 99441
triggerall = p2stateno != 666
triggerall = p2stateno != 667
triggerall = p2stateno != 6173
triggerall = p2stateno != 4120
triggerall = matchover != 1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = p2stateno != 668
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = p2stateno != 430
triggerall = p2life != 0
triggerall = movetype = H
triggerall = statetype != A
triggerall = p2bodydist x = [0,25]
triggerall = p2statetype !=A
trigger1 = ctrl = 0
triggerall = Var(59)=1
triggerall = Var(32)>2
triggerall = statetype = S || statetype = C
trigger1 = NumExplod(780) != 1
triggerall = p2stateno !=6013
triggerall = p2stateno !=6014
triggerall = p2stateno != 3052
triggerall = p2stateno != 410
triggerall = p2stateno != 411
triggerall = var(44) != 1
triggerall = var(44) = 0



[State -1, ai breaker]
type = changestate
value = 1335
triggerall = p2stateno !=33557
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno != 33558
triggerall = p2stateno != 4119
triggerall = p2stateno !=4118
triggerall = p2stateno != 99446
triggerall = p2stateno != 99441
triggerall = p2stateno != 666
triggerall = p2stateno != 667
triggerall = p2stateno != 6173
triggerall = p2stateno != 4120
triggerall = matchover != 1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = p2stateno != 668
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = p2stateno != 430
triggerall = p2life != 0
triggerall = movetype = H
triggerall = statetype != A
triggerall = p2bodydist x = [0,25]
triggerall = p2statetype !=A
trigger1 = ctrl = 0
triggerall = Var(59)=1
triggerall = Var(32)>2
triggerall = statetype = S || statetype = C
trigger1 = NumExplod(780) != 1
triggerall = p2stateno !=6013
triggerall = p2stateno !=6014
triggerall = p2stateno != 3052
triggerall = p2stateno != 410
triggerall = p2stateno != 411
triggerall = var(45) != 1
triggerall = var(45) = 0














[State -1, ai air breaker]
type = changestate
triggerall = movetype = H
triggerall = Var(32)>2
trigger1 = statetype = A
trigger1 = stateno != 5071
trigger1 = stateno != 5030
trigger1 = stateno != 5035
trigger1 = stateno != 5000
triggerall = p2stateno != 1944
triggerall = p2stateno !=33557
triggerall = p2stateno !=33448
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=6200
triggerall = p2stateno !=6201
triggerall = p2stateno !=6202
triggerall = p2bodydist x = [0,30]
triggerall = statetype !=S
trigger1 = NumExplod(780) != 1
triggerall = p2stateno !=410
triggerall = p2stateno !=411
triggerall = Var(59)=1
triggerall = statetype !=C
value = 1122


[State -1, ai parry]
type = changestate
value = 7005
triggerall = var(59) = 1
triggerall = p2stateno != 33557
triggerall = p2stateno !=4666
triggerall = p2stateno != 1944
triggerall = p2stateno !=666
triggerall = p2stateno !=667
triggerall = stateno != 6168
triggerall = p2bodydist x = [0,60]
triggerall = p2statetype != C
triggerall = p2movetype = A
triggerall = p2statetype !=A
triggerall = p2stateno != 99446
trigger1 = NumExplod(780) != 1
trigger1 = statetype = S 
trigger1 = ctrl
trigger1 = stateno = 0 || stateno = 20 || stateno = 150 || stateno = 151 ||stateno = 130 || stateno = 140
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno != 33558
triggerall = p2stateno != 4119
triggerall = p2stateno != 99446
triggerall = p2stateno != 99441
triggerall = p2stateno != 6173
triggerall = p2stateno != 4120
triggerall = matchover = 0
triggerall = p2stateno !=6200
triggerall = p2stateno !=6201
triggerall = p2stateno !=6202
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno !=6169
triggerall = p2stateno !=6173
triggerall = p2stateno !=4118
triggerall = p2stateno !=4119
triggerall = roundstate !=3
triggerall = roundstate !=4
triggerall = p2stateno !=1200
triggerall = p2stateno !=5120
triggerall = p2life != 0
triggerall = numexplod(1349)!=1


[State - 1, ai dodge roll]
type = ChangeState
value = 6168
triggerall = p2movetype = A
triggerall = stateno != 7005
triggerall = p2bodydist x = [61,252]
triggerall = p2stateno != 33557
triggerall = var(59) = 1
triggerall = statetype !=A
trigger1 = statetype = S
triggerall = p2life !=0
triggerall = life !=0
trigger1 = NumExplod(780) = 1
trigger1 = ctrl
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno != 99446
triggerall = p2stateno != 668
triggerall = p2stateno != 669
triggerall = p2stateno != 9146
triggerall = p2stateno != 1334
triggerall = p2stateno != 1335




[State -1, ai spear throw]
type = ChangeState
value = 6250;6200
trigger1 = statetype = S
triggerall = var(59) = 1
trigger1 = ctrl = 1
triggerall = p2bodydist x <= 8
triggerall = frontedgedist >= 40
triggerall = p2life !=0
triggerall = p2stateno !=6169
triggerall = p2stateno !=5110
triggerall = p2stateno !=5120
triggerall = p2statetype =S
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno !=6172
triggerall = p2stateno != 99446
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = p2stateno != 6169
triggerall = matchover = 0
triggerall = roundstate !=3
triggerall = roundstate !=4
triggerall = p2stateno !=6173
triggerall = p2stateno !=4119
triggerall = p2stateno !=4118
triggerall = p2stateno !=4120
triggerall = p2stateno !=3015
triggerall = p2stateno !=3014
triggerall = p2stateno !=6121
triggerall = teammode = single
triggerall = p2stateno !=6168
triggerall = p2stateno !=6170
triggerall = p2stateno !=5220
triggerall = p2stateno !=7005
triggerall = p2stateno !=6250 ;
triggerall = p2stateno !=1100
triggerall = p2stateno !=33557 ;fatality state
triggerall = p2stateno !=99441 ;double hara kiri own state start
triggerall = p2stateno !=99446 ;hara kiri own state start
triggerall = p2stateno !=99449 ;double hara kiri p2 state start
triggerall = p2stateno !=33449 ;go to hell finisher p2 state




[State -1, ai spear]
type = ChangeState
value = 1200
triggerall = var(59) = 1
trigger1 = ctrl = 1
triggerall = p2bodydist x = [150,209]
triggerall = p2statetype != C
triggerall = p2statetype = S
triggerall = p2life !=0
triggerall = numhelper(1010)!=1
triggerall = p2stateno !=1200
triggerall = p2stateno !=6169
triggerall = p2stateno !=6172
triggerall = p2stateno !=6173
triggerall = p2stateno !=5110
triggerall = p2stateno !=5120
triggerall = statetype = S
triggerall = statetype !=A
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno != 99446
triggerall = p2stateno !=6169
triggerall = p2stateno !=6173
triggerall = p2stateno !=4118
triggerall = p2stateno !=4119
triggerall = p2stateno !=4120
triggerall = matchover = 0
triggerall = roundstate !=3
triggerall = roundstate !=4
triggerall = p2name !="[FlowaGirl's] Broli"
triggerall = teammode = single




;[State -1, ai low spear]
;type = ChangeState
;value = 3488
;triggerall = var(59) = 1
;trigger1 = ctrl = 1
;triggerall = p2bodydist x = [150,209]
;triggerall = p2statetype = C
;triggerall = p2statetype != S
;triggerall = p2stateno !=6169
;triggerall = p2stateno !=6172
;triggerall = p2stateno !=5110
;triggerall = p2stateno !=5120
;triggerall = p2life !=0
;triggerall = statetype !=A
;triggerall = p2stateno !=33448
;triggerall = p2stateno !=1943 ;sub ice mode super
;triggerall = p2stateno !=1944 ; sub polar blast super
;triggerall = p2stateno !=1945 ; sub super ice block
;triggerall = p2stateno !=1947 ;sub in block
;triggerall = p2stateno !=668
;triggerall = p2stateno !=3489
;triggerall = p2stateno !=45469
;triggerall = p2stateno !=666
;triggerall = p2stateno !=33445
;triggerall = p2stateno !=33440
;triggerall = p2stateno !=99440
;triggerall = p2stateno !=33557
;triggerall = p2stateno != 99446
;triggerall = p2stateno !=6173
;triggerall = p2stateno !=4118
;triggerall = p2stateno !=4119
;triggerall = matchover = 0
;triggerall = roundstate !=3
;triggerall = roundstate !=4


[State -1, ai hellfire far]
type = ChangeState
value = 14456
trigger1 = statetype = S
triggerall = NumExplod(1344) != 1
triggerall = var(59) = 1
triggerall = p2life !=0
trigger1 = ctrl = 1
triggerall = p2bodydist x = [210,252]
triggerall = p2stateno !=1338
triggerall = p2stateno !=5120
triggerall = p2stateno !=6169
triggerall = p2stateno !=6173
triggerall = p2stateno !=9170
triggerall = p2stateno !=4118
triggerall = p2stateno !=4119
triggerall = p2stateno !=4120
triggerall = p2stateno !=1990
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno != 99446
triggerall = p2stateno != 6172
triggerall = p2stateno !=14456
triggerall = p2stateno != 6170
triggerall = p2stateno != 5220
triggerall = matchover = 0
triggerall = roundstate !=3
triggerall = roundstate !=4
trigger2 = p2stateno = 1337
triggerall = statetype !=A



[State -1, ai axe punch]
type = ChangeState
value = 1990
trigger1 = statetype = S
triggerall = var(59) = 1
trigger1 = ctrl = 1
triggerall = p2life !=0
triggerall = p2bodydist x <= 10
triggerall = p2statetype !=C
triggerall = p2statetype !=A
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno != 99446
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = p2stateno !=6169
triggerall = p2stateno !=6173
triggerall = p2stateno !=4118
triggerall = p2stateno !=4119
triggerall = p2stateno !=4120
triggerall = p2stateno !=1990
triggerall = p2stateno != 6169
triggerall = p2stateno !=3015
triggerall = p2stateno !=3014
triggerall = p2stateno !=6121
triggerall = p2stateno !=9170
triggerall = p2stateno !=9147
triggerall = p2stateno !=14469
triggerall = p2stateno !=416
triggerall = matchover = 0
triggerall = roundstate !=3
triggerall = roundstate !=4
triggerall = p2stateno !=33557 ;fatality state
triggerall = p2stateno !=99441 ;double hara kiri own state start
triggerall = p2stateno !=99446 ;hara kiri own state start
triggerall = p2stateno !=99449 ;double hara kiri p2 state start
triggerall = p2stateno !=33449 ;go to hell finisher p2 state

[State -1, ai axe punch 2]
type = ChangeState
value = 1991
triggerall = var(59) = 1
trigger1 = stateno = 1990 && movecontact
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno != 99446
triggerall = p2life != 0
triggerall = matchover = 0

[State -1, ai combo crouch lp]
type = ChangeState
value = 400
triggerall = var(59) = 1
trigger1 = stateno = 1991 && movecontact
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno != 99446
triggerall = p2life != 0

[State -1, ai hk face combo kick]
type = ChangeState
value = 430
triggerall = var(59) = 1
trigger1 = stateno = 400 && movecontact
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno != 99446
triggerall = p2life != 0

[State -1, ai combo popup]
type = ChangeState
value = 410
triggerall = var(59) = 1
trigger1 = stateno = 430 && movecontact
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno != 99446
triggerall = p2life != 0





[State -1, ai kick 1]
type = ChangeState
value = 1994
trigger1 = statetype = S
triggerall = var(59) = 1
trigger1 = ctrl = 1
triggerall = p2bodydist x <= 14
triggerall = p2life !=0
;triggerall = p2statetype != C
triggerall = p2statetype != A
triggerall = p2stateno !=1994
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943
triggerall = p2stateno !=4120
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno != 99446
triggerall = p2stateno != 1944
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = p2stateno !=6169
triggerall = p2stateno !=6173
triggerall = p2stateno !=4118
triggerall = p2stateno !=4119
triggerall = p2stateno != 6169
triggerall = p2stateno !=3015
triggerall = p2stateno !=3014
triggerall = p2stateno !=6121
triggerall = p2stateno !=9170
triggerall = p2stateno !=9147
triggerall = p2stateno !=14469
triggerall = p2stateno !=416
triggerall = p2stateno !=1945
triggerall = matchover = 0
triggerall = roundstate !=3
triggerall = roundstate !=4
triggerall = p2stateno !=33557 ;fatality state
triggerall = p2stateno !=99441 ;double hara kiri own state start
triggerall = p2stateno !=99446 ;hara kiri own state start
triggerall = p2stateno !=99449 ;double hara kiri p2 state start
triggerall = p2stateno !=33449 ;go to hell finisher p2 state

[State -1, ai kick 2]
type = ChangeState
value = 1995
triggerall = var(59) = 1
trigger1 = stateno = 1994 && movecontact
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2life != 0

[State -1, ai kick 3]
type = ChangeState
value = 1996
triggerall = var(59) = 1
trigger1 = stateno = 1995 && movecontact
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2life != 0

[State -1, ai kick 4]
type = ChangeState
value = 1997
triggerall = var(59) = 1
trigger1 = stateno = 1996 && movecontact
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2life != 0








;[State -1, ai tech roll]
;type = changestate
;value = 6170
;triggerall = var(59) = 1
;trigger1 = stateno = 5110
;trigger2 = stateno = 5120
;trigger3 = stateno = 5100; && command = "holdfwd"
;triggerall = p2bodydist x = [0,130]
;triggerall = statetype != A
;triggerall = life !=0
;triggerall = p2statetype = A
;;trigger1 = ctrl = 1
;triggerall = p2stateno !=33448
;triggerall = p2stateno !=1943
;triggerall = p2stateno !=668
;triggerall = p2stateno !=3489
;triggerall = p2stateno !=45469
;triggerall = p2stateno !=666
;triggerall = p2stateno !=33445
;triggerall = p2stateno !=33440
;triggerall = p2stateno !=99440
;triggerall = p2stateno !=33557
;triggerall = p2stateno != 99446

[State -1, ai tech roll]
type = changestate
value = 5220
triggerall = var(59) = 1
trigger1 = stateno = 5110
;trigger2 = stateno = 5120
trigger3 = stateno = 5100; && command = "holdfwd"
triggerall = p2bodydist x = [131,300]
triggerall = statetype != A
triggerall = life !=0
triggerall = p2statetype = A
;trigger1 = ctrl = 1
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno != 99446
triggerall = p2stateno != 9146
triggerall = p2stateno != 1334
triggerall = p2stateno != 1335
triggerall = p2stateno !=6171
triggerall = p2stateno !=5120
triggerall = p2stateno !=8810
triggerall = p2stateno !=9148
triggerall = p2stateno !=9149



















[State -1, ai wakeup]
type = changestate
value = 6169
triggerall = var(59) = 1
trigger1 = stateno = 5110
;trigger2 = stateno = 5120
triggerall = p2bodydist x = [0,399]
triggerall = life !=0
triggerall = statetype != A
;trigger1 = ctrl = 1
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno != 99446
triggerall = anim !=5070
triggerall = anim !=5071
triggerall = anim !=5072
triggerall = matchover = 0
triggerall = roundstate !=3
triggerall = roundstate !=4
triggerall = p2stateno !=5120
triggerall = p2stateno !=8810


[State -1, ai wakeup teleport throw]
type = changestate
value = 4119
triggerall = var(59) = 1
trigger1 = stateno = 6169
triggerall = p2bodydist x = [0,399]
triggerall = statetype != A
;trigger1 = ctrl = 1
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno != 99446
triggerall = p2life != 0
triggerall = matchover = 0
triggerall = roundstate !=3
triggerall = roundstate !=4

[State -1, ai wakeup uppercut]
type = changestate
value = 410
triggerall = var(59) = 1
trigger1 = stateno = 6169
triggerall = p2bodydist x = [0,10]
triggerall = statetype != A
triggerall = p2life != 0
;trigger1 = ctrl = 1
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = matchover = 0
triggerall = roundstate !=3
triggerall = roundstate !=4

[State -1, ai wakeup sweep]
type = changestate
value = 6171
triggerall = var(59) = 1
trigger1 = stateno = 6169
triggerall = p2bodydist x = [0,5]
triggerall = statetype != A
;trigger1 = ctrl = 1
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2life != 0
triggerall = matchover = 0
triggerall = roundstate !=3
triggerall = roundstate !=4

[State -1, ai wakeup teleport spear]
type = changestate
value = 4118
triggerall = var(59) = 1
trigger1 = stateno = 6169
triggerall = p2bodydist x = [11,399]
triggerall = statetype != A
;trigger1 = ctrl = 1
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2life != 0
triggerall = matchover = 0
triggerall = roundstate !=3
triggerall = roundstate !=4

[State -1, ai spectre mode]
type = changestate
value = 1943
triggerall = numhelper(9438)!= 1
triggerall = var(59) = 1
triggerall = p2stateno != 33557
triggerall = p2bodydist x = [0,399]
triggerall = NumExplod(779) != 1
triggerall = NumExplod(780) != 1
;triggerall = random >= 950 && random <= 999
triggerall = power = [4000,5000];power >= 4000 && time = 15
triggerall = time = 15;triggerall = stateno = 0
triggerall = p2life !=0
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2name != "Sub-Zero By Gary Fisher"
triggerall = p2name != "Scorpion By Gary Fisher"
triggerall = p2stateno !=33557
triggerall = p2stateno != 99446
triggerall = p2stateno != 1944
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = p2stateno !=6169
triggerall = p2stateno !=6173
triggerall = p2stateno !=4118
triggerall = p2stateno !=4119
triggerall = matchover = 0
triggerall = roundstate !=3
triggerall = roundstate !=4



[State -1, ai hellmode]
type = Changestate
value = 668
triggerall = numhelper(9438)!= 1
triggerall = var(59) = 1
triggerall = p2stateno != 33557
triggerall = numhelper(9438)!= 1
triggerall = NumExplod(779) != 1
triggerall = NumExplod(780) != 1
triggerall = p2bodydist x = [0,399]
;triggerall = random >= 950 && random <= 999
triggerall = power >= 8000
triggerall = p2name != "Scorpion by Gary Fisher"
triggerall = stateno = 0
trigger1 = p2stateno = 0
trigger2 = p2stateno = 52
trigger3 = p2stateno = 11
trigger4 = p2stateno = 12
trigger5 = p2stateno = 20
trigger6 = p2stateno = 100
trigger7 = p2stateno = 130
trigger8 = p2stateno = 140
trigger9 = p2stateno = 1021
trigger10 = p2stateno = 1005
triggerall = p2statetype !=A
triggerall = p2life !=0
trigger1 = ctrl = 1
trigger1 = statetype = S
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno != 99446
triggerall = p2movetype !=A
triggerall = p2stateno != 1944
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = matchover = 0
triggerall = p2stateno !=6169
triggerall = p2stateno !=6173
triggerall = p2stateno !=4118
triggerall = p2stateno !=4119
triggerall = p2stateno != 6169
triggerall = roundno != 4
triggerall = roundstate !=3
triggerall = roundstate !=4
triggerall = p2stateno !=1945




;[State -1, ai sfireball]
;type = changestate
;value = 45469
;triggerall = var(59) = 1
;triggerall = NumExplod(779) != 1
;triggerall = power >= 9000 && time = 5
;triggerall = numhelper(9438)!= 1
;triggerall = p2bodydist x = [0,399]
;;triggerall = random >= 950 && random <= 999
;triggerall = p2life !=0
;trigger1 = statetype = S
;trigger1 = ctrl
;triggerall = p2stateno !=33448
;triggerall = p2stateno !=1943
;triggerall = p2stateno !=668
;triggerall = p2stateno !=3489
;triggerall = p2stateno !=45469
;triggerall = p2stateno !=666
;triggerall = p2stateno !=33445
;triggerall = p2stateno !=33440
;triggerall = p2stateno !=99440
;triggerall = p2stateno !=33557
;triggerall = p2stateno != 99446
;triggerall = p2stateno != 1944
;triggerall = p2stateno != 669
;triggerall = p2stateno != 11501
;triggerall = p2stateno != 6200
;triggerall = p2stateno !=6169
;triggerall = p2stateno !=6173
;triggerall = p2stateno !=4118
;triggerall = p2stateno !=4119
;triggerall = matchover = 0
;triggerall = roundno !=4
;triggerall = roundstate !=3
;triggerall = roundstate !=4

[State -1, ai brutal]
type = Changestate
value = 666
triggerall = p2bodydist x =[10,20]
triggerall = NumExplod(779) != 1
triggerall = NumExplod(780) != 1
triggerall = numhelper(9438)!= 1
triggerall = power >= 7000
triggerall = var(59) = 1
triggerall = p2stateno = 1021
trigger1 = ctrl = 1
trigger1 = statetype = S
triggerall = p2statetype !=A
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno != 99446
triggerall = p2stateno != 1944
triggerall = p2stateno != 669
triggerall = p2stateno != 11501
triggerall = p2stateno != 6200
triggerall = p2stateno !=6169
triggerall = p2stateno !=6173
triggerall = p2stateno !=4118
triggerall = p2stateno !=4119
triggerall = p2stateno != 6169
triggerall = p2life != 0
triggerall = matchover = 0
triggerall = roundstate !=3
triggerall = roundstate !=4
triggerall = p2stateno !=1945

[State -1, uppercut]
type = ChangeState
value = 410
triggerall = movetype !=H
triggerall = movetype !=A
triggerall = var(59) = 1
triggerall = p2statetype = A
triggerall = random >= 250 && random < 299 || random >= 950 && random <= 999
triggerall = statetype = S
triggerall = p2movetype !=H
trigger1 = p2BodyDist X = [8,12]
triggerall = p2stateno !=33448
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block
triggerall = p2stateno !=668
triggerall = p2stateno !=3489
triggerall = p2stateno !=45469
triggerall = p2stateno !=666
triggerall = p2stateno !=33445
triggerall = p2stateno !=33440
triggerall = p2stateno !=99440
triggerall = p2stateno !=33557
triggerall = p2stateno != 99446
triggerall = stateno !=99441
triggerall = stateno !=99446
triggerall = stateno !=9439
triggerall = stateno !=14455
triggerall = stateno !=6017
triggerall = stateno !=1542
triggerall = stateno !=14456
triggerall = stateno !=45469
triggerall = stateno !=242
triggerall = stateno !=1994
triggerall = stateno !=2007
triggerall = stateno !=410
triggerall = stateno !=1200
triggerall = stateno !=99441
triggerall = stateno !=2019
triggerall = stateno !=195
triggerall = stateno !=239
triggerall = stateno !=9146
triggerall = stateno !=1159
triggerall = stateno !=668
triggerall = stateno !=1543
triggerall = stateno !=11542
triggerall = stateno !=3489
triggerall = stateno !=3488
triggerall = stateno !=6168
triggerall = stateno !=105
triggerall = stateno !=666
triggerall = stateno !=4547
triggerall = stateno !=1334
triggerall = stateno !=1335
triggerall = stateno !=1343
triggerall = stateno !=11543
triggerall = stateno !=33445
triggerall = stateno !=33448
triggerall = stateno !=33558
triggerall = stateno !=7005
triggerall = stateno !=4120
triggerall = stateno !=9147
triggerall = stateno !=3015
triggerall = stateno !=6200
triggerall = stateno !=9940
triggerall = stateno !=33440
triggerall = stateno != 410
triggerall = stateno != 411
triggerall = p2life != 0
triggerall = matchover = 0
triggerall = roundstate !=3
triggerall = roundstate !=4






[State -1, ai spear fat]  ;spear fat
type = changestate
value = 99440
triggerall = var(59) = 1
triggerall = p2life  < 700
triggerall = p2stateno = 33557
triggerall = p2bodydist x = [200,205]
triggerall = roundno >= 3
trigger1 = statetype = S
trigger1 = ctrl


[State -1, ai hell] ;hell
type = changestate
value = 33440
triggerall = var(59) = 1
triggerall = NumExplod(779) != 1
triggerall = NumExplod(780) != 1
triggerall = p2life  < 700
triggerall = p2stateno = 33557
triggerall = p2bodydist x >= 70
triggerall = roundno >= 3
trigger1 = statetype = S
trigger1 = ctrl
triggerall = p2name != "Pneophen's real cool guy"
triggerall = p4name != "Pneophen's real cool guy"
triggerall = p2name != "Pneophen's guy who uses lightning"
triggerall = p4name != "Pneophen's guy who uses lightning"
triggerall = p2name != "Pneophen's bliggity blurgh"
triggerall = p4name != "Pneophen's bliggity blurgh"
triggerall = p2name != "Clark Steel"
triggerall = p4name != "Clark Steel"
triggerall = p2name != "Yashiro Nanakase"
triggerall = p4name != "Yashiro Nanakase"
triggerall = p2name != "Chomper"
triggerall = p4name != "Chomper"
triggerall = p2name != "Cloud"
triggerall = p4name != "Cloud"
triggerall = p2name != "Old School Mario"
triggerall = p4name != "Old School Mario"
triggerall = p2name != "Master Hand"
triggerall = p4name != "Master Hand"
triggerall = p2name != "Psycho Shredder[S]"
triggerall = p4name != "Psycho Shredder[S]"
triggerall = p2name != "Shang Tsung MK1"
triggerall = p4name != "Shang Tsung MK1"
triggerall = p2name != "SuperLuigi"
triggerall = p4name != "SuperLuigi"
triggerall = p2name != "Tam Tam"
triggerall = p4name != "Tam Tam"
triggerall = p2name != "Tommy white ranger"
triggerall = p4name != "Tommy white ranger"
triggerall = p2name != "Marvel vs. Capcom's WarMachine"
triggerall = p4name != "Marvel vs. Capcom's WarMachine"
triggerall = p2name != "Sub-Zero by gary fisher"
triggerall = p4name != "Sub-Zero by gary fisher"
triggerall = p2name != "Scorpion by gary fisher"
triggerall = p4name != "Scorpion by gary fisher"
triggerall = p2name != "Ralf Jones"
triggerall = p4name != "Ralf Jones"
triggerall = p2name != "RYUJI YAMAZAKI"
triggerall = p4name != "RYUJI YAMAZAKI"

[State -1, ai toasty] ;hell
type = changestate
value = 33445
triggerall = var(59) = 1
triggerall = p2life  < 700
triggerall = p2stateno = 33557
triggerall = p2bodydist x = [60,70]
triggerall = roundno >= 3
trigger1 = statetype = S
trigger1 = ctrl
triggerall = p2name != "Pneophen's real cool guy"
triggerall = p4name != "Pneophen's real cool guy"
triggerall = p2name != "Pneophen's guy who uses lightning"
triggerall = p4name != "Pneophen's guy who uses lightning"
triggerall = p2name != "Pneophen's bliggity blurgh"
triggerall = p4name != "Pneophen's bliggity blurgh"
triggerall = p2name != "Clark Steel"
triggerall = p4name != "Clark Steel"
triggerall = p2name != "Yashiro Nanakase"
triggerall = p4name != "Yashiro Nanakase"
triggerall = p2name != "Chomper"
triggerall = p4name != "Chomper"
triggerall = p2name != "Cloud"
triggerall = p4name != "Cloud"
triggerall = p2name != "Old School Mario"
triggerall = p4name != "Old School Mario"
triggerall = p2name != "Master Hand"
triggerall = p4name != "Master Hand"
triggerall = p2name != "Psycho Shredder[S]"
triggerall = p4name != "Psycho Shredder[S]"
triggerall = p2name != "Shang Tsung MK1"
triggerall = p4name != "Shang Tsung MK1"
triggerall = p2name != "SuperLuigi"
triggerall = p4name != "SuperLuigi"
triggerall = p2name != "Tam Tam"
triggerall = p4name != "Tam Tam"
triggerall = p2name != "Tommy white ranger"
triggerall = p4name != "Tommy white ranger"
triggerall = p2name != "Marvel vs. Capcom's WarMachine"
triggerall = p4name != "Marvel vs. Capcom's WarMachine"
triggerall = p2name != "Ralf Jones"
triggerall = p4name != "Ralf Jones"
triggerall = p2name != "RYUJI YAMAZAKI"
triggerall = p4name != "RYUJI YAMAZAKI"

[State -1, ai uppercut mas]  ;uppercut
type = changestate
value = 33448
triggerall = var(59) = 1
triggerall = p2life  < 700
triggerall = p2stateno = 33557 && time = 60
triggerall = p2bodydist x <= 25
triggerall = roundno >= 3
trigger1 = statetype = S
trigger1 = ctrl
triggerall = p2name != "Pneophen's real cool guy"
triggerall = p4name != "Pneophen's real cool guy"
triggerall = p2name != "Pneophen's guy who uses lightning"
triggerall = p4name != "Pneophen's guy who uses lightning"
triggerall = p2name != "Pneophen's bliggity blurgh"
triggerall = p4name != "Pneophen's bliggity blurgh"
triggerall = p2name != "Clark Steel"
triggerall = p4name != "Clark Steel"
triggerall = p2name != "Yashiro Nanakase"
triggerall = p4name != "Yashiro Nanakase"
triggerall = p2name != "Chomper"
triggerall = p4name != "Chomper"
triggerall = p2name != "Cloud"
triggerall = p4name != "Cloud"
triggerall = p2name != "Old School Mario"
triggerall = p4name != "Old School Mario"
triggerall = p2name != "Master Hand"
triggerall = p4name != "Master Hand"
triggerall = p2name != "Psycho Shredder[S]"
triggerall = p4name != "Psycho Shredder[S]"
triggerall = p2name != "Shang Tsung MK1"
triggerall = p4name != "Shang Tsung MK1"
triggerall = p2name != "SuperLuigi"
triggerall = p4name != "SuperLuigi"
triggerall = p2name != "Tam Tam"
triggerall = p4name != "Tam Tam"
triggerall = p2name != "Tommy white ranger"
triggerall = p4name != "Tommy white ranger"
triggerall = p2name != "Marvel vs. Capcom's WarMachine"
triggerall = p4name != "Marvel vs. Capcom's WarMachine"
triggerall = p2name != "Ralf Jones"
triggerall = p4name != "Ralf Jones"
triggerall = p2name != "RYUJI YAMAZAKI"
triggerall = p4name != "RYUJI YAMAZAKI"




[State -1, ai air kombat 1]
type = changestate
value = 640
trigger1 = ctrl = 1
triggerall = p2bodydist x = [0,50]
triggerall = p2stateno != 640
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = p2statetype = A





;[State -1, ai healer]
;type = changestate
;value = 9439
;trigger1 = ctrl = 1
;triggerall = life  < 300
;;triggerall = power >= 5000
;triggerall = statetype = S
;triggerall = p2stateno != 33557
;triggerall = numhelper(9438)!= 1
;triggerall = var(59) = 1
;triggerall = var(53)!=1
;triggerall = p2statetype = S
;triggerall = matchover = 0
;triggerall = roundstate !=3
;triggerall = roundstate !=4
;triggerall = NumExplod(779) != 1
;triggerall = NumExplod(780) != 1







;[state -1, ai uppercut after parry for spectre mode]
;type = selfstate
;trigger1 = NumExplod(780) = 1
;trigger1 = MoveReversed; = 1
;trigger1 = var(59)=1
;value = 410
;ctrl = 1






















;----------------------------------
;style change
;----------------------------------

[state -2, classic to hapkido]
type = changestate
trigger1 = var(54) = 2
trigger1 = numexplod(55)!=1
trigger1 = ctrl = 1
trigger1 = statetype = S
triggerall = statetype !=A
trigger1 = command = "start"
value = 290
ctrl=1
triggerall = numhelper(10133)!=1
triggerall = numhelper(8012)!=1
triggerall = numhelper(4012)!=1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block





[state -2, hapkido to classic]
type = changestate
trigger1 = var(54) = 1
trigger1 = numexplod(55)!=1
trigger1 = ctrl = 1
trigger1 = command = "start"
trigger1 = statetype = S
triggerall = statetype !=A
value = 291
ctrl=1
triggerall = numhelper(10133)!=1
triggerall = numhelper(8012)!=1
triggerall = numhelper(4012)!=1
triggerall = p2stateno !=1943 ;sub ice mode super
triggerall = p2stateno !=1944 ; sub polar blast super
triggerall = p2stateno !=1945 ; sub super ice block
triggerall = p2stateno !=1947 ;sub in block




