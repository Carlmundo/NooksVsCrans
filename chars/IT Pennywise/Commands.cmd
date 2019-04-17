; {character name}'s CMD file

;-| AI Commands |----------------------------------------------------------

;-| AI |-------------------------------------------------------------
[Command]
name = "CPU1"
command = U, D, F
time = 1
[Command]
name = "CPU2"
command = U, B, F
time = 1
[Command]
name = "CPU3"
command = U, D, D
time = 1
[Command]
name = "CPU4"
command = F, B, U
time = 1
[Command]
name = "CPU5"
command = U, F, U, B
time = 1
[Command]
name = "CPU6"
command = U, D, B
time = 1
[Command]
name = "CPU7"
command = F, F, B
time = 1
[Command]
name = "CPU8"
command = U, D, U
time = 1
[Command]
name = "CPU9"
command = F, B, B
time = 1
[Command]
name = "CPU10"
command = F, F, B, B
time = 1
[Command]
name = "CPU11"
command = U, U, F
time = 1
[Command]
name = "CPU12"
command = U, B, B
time = 1
[Command]
name = "CPU13"
command = U, B, F, F
time = 1
[Command]
name = "CPU14"
command = U, F, B, U
time = 1
[Command]
name = "CPU15"
command = U, B, F, U
time = 1
[Command]
name = "CPU16"
command = U, B, B, B
time = 1
[Command]
name = "CPU17"
command = U, D, B, F
time = 1
[Command]
name = "CPU18"
command = U, D, B, D
time = 1
[Command]
name = "CPU19"
command = U, D, F, U
time = 1
[Command]
name = "CPU20"
command = U, D, U, B
time = 1
[Command]
name = "CPU21"
command = U, D, F, F
time = 1
[Command]
name = "CPU22"
command = F, F, F, F
time = 1
[Command]
name = "CPU23"
command = U, U, U, D
time = 1
[Command]
name = "CPU24"
command = B, B, B
time = 1
[Command]
name = "CPU25"
command = D, D, D, D
time = 1
[Command]
name = "CPU26"
command = D, D, D
time = 1
[Command]
name = "CPU27"
command = F, F, F
time = 1
[Command]
name = "CPU28"
command = U, U, U
time = 1
[Command]
name = "CPU29"
command = U, U, B, B
time = 1
[Command]
name = "CPU30"
command = D, D, F, F
time = 1

;---------------------------------------------------------------------------
; -[ Button Remapping ]-
;---------------------------------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;---------------------------------------------------------------------------
; -[ Default Values ]-
;---------------------------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1



;---------------------------------------------------------------------------
; One button
;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
; Hold button
;---------------------------------------------------------------------------
[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "pc1"
command = b+y

[Command]
name = "ki"
command = /b+y

;---------------------------------------------------------------------------
; Hold dir
;---------------------------------------------------------------------------
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
name = "holdstart"
command = /s
time = 1

[Command]
name = "SJ"
command = $D, $U

;---------------------------------------------------------------------------
; -[ Hypers ]-
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
[Command]
name = "Hyper 3"
command = ~D, DB, B, x+y
time = 20
[Command]
name = "Hyper 3"
command = ~D, DB, B, y+z
time = 20
[Command]
name = "Hyper 3"
command = ~D, DB, B, x+z
time = 20

[Command]
name = "Hyper 2"
command = ~D, DF, F, x+y
time = 20
[Command]
name = "Hyper 2"
command = ~D, DF, F, y+z
time = 20
[Command]
name = "Hyper 2"
command = ~D, DF, F, x+z
time = 20

[Command]
name = "Hyper 4"
command = ~D, DB, B, a+b
time = 20
[Command]
name = "Hyper 4"
command = ~D, DB, B, b+c
time = 20
[Command]
name = "Hyper 4"
command = ~D, DB, B, a+c
time = 20

[Command]
name = "Hyper 5"
command = ~D, DF, F, a+b
time = 20
[Command]
name = "Hyper 5"
command = ~D, DF, F, b+c
time = 20
[Command]
name = "Hyper 5"
command = ~D, DF, F, a+c
time = 20

[Command]
name = "Hyper 6"
command = ~D, DF, F, x+a
time = 20
[Command]
name = "Hyper 6"
command = ~D, DF, F, y+b
time = 20
[Command]
name = "Hyper 6"
command = ~D, DF, F, z+c
time = 20
[Command]
name = "Hyper 6"
command = ~D, DB, B, x+a
time = 20
[Command]
name = "Hyper 6"
command = ~D, DB, B, y+b
time = 20
[Command]
name = "Hyper 6"
command = ~D, DB, B, z+c
time = 20

;---------------------------------------------------------------------------
; -[ Specials ]-
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1
;---------------------------------------------------------------------------
[Command]
name = "bombgasx"
command = ~D,DF,F, x
time = 20
[Command]
name = "bombgasy"
command = ~D,DF,F, y
time = 20
[Command]
name = "bombgasz"
command = ~D,DF,F, z
time = 20

[Command]
name = "feargasa"
command = ~D,DF,F, a
time = 20
[Command]
name = "feargasb"
command = ~D,DF,F, b
time = 20
[Command]
name = "feargasc"
command = ~D,DF,F, c
time = 20

[Command]
name = "lanterna"
command = ~D,D, x
time = 15
[Command]
name = "lanternb"
command = ~D,D, y
time = 15
[Command]
name = "lanternc"
command = ~D,D, z
time = 15

[Command]
name = "acid"
command = ~D,D, a
time = 15
[Command]
name = "acid"
command = ~D,D, b
time = 15
[Command]
name = "acid"
command = ~D,D, c
time = 15

[Command]
name = "twistx"
command = ~D,DB,B, x
time = 20
[Command]
name = "twisty"
command = ~D,DB,B, y
time = 20
[Command]
name = "twistz"
command = ~D,DB,B, z
time = 20

;[Command]
;name = "Flight"
;command = ~D, DB, B, a+x
;time = 30

;---------------------------------------------------------------------------
; Super Jump
;---------------------------------------------------------------------------
[command]
name = "super_jump"
command = D,$U

[command]
name = "super_jump"
command = a+b+c

;---------------------------------------------------------------------------
; -[ Movements/Attacks ]-
;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
; Double_Tap
;---------------------------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;---------------------------------------------------------------------------------------------
; 2/3 button combination
;---------------------------------------------------------------------------
[Command]
name = "dodge"        ;Alternative button command
command = a+y
time = 1


[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1
[Command]
name = "recovery";Required (do not remove)
command = x+z
time = 1
[Command]
name = "recovery";Required (do not remove)
command = y+z
time = 1

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5



;---------------------------------------------------------------------------
; Dir + button
;---------------------------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "back_b"        ;Alternative button command
command = /$B,b
time = 1

[Command]
name = "back_c"        ;Alternative button command
command = /$B,c
time = 1


;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1


;---------------------------------------------------------------------------
; -[ Artificial Intelligence ]-
;---------------------------------------------------------------------------
[Statedef -1]

[State -1, AIActivate]
type = VarSet
triggerall = RoundState != 3
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
trigger10  = command = "CPU10"
trigger11  = command = "CPU11"
trigger12  = command = "CPU12"
trigger13  = command = "CPU13"
trigger14  = command = "CPU14"
trigger15  = command = "CPU15"
trigger16  = command = "CPU16"
trigger17  = command = "CPU17"
trigger18  = command = "CPU18"
trigger19  = command = "CPU19"
trigger20  = command = "CPU20"
trigger21  = command = "CPU21"
trigger22  = command = "CPU22"
trigger23  = command = "CPU23"
trigger24  = command = "CPU24"
trigger25  = command = "CPU25"
trigger26  = command = "CPU26"
trigger27  = command = "CPU27"
trigger28  = command = "CPU28"
trigger29  = command = "CPU29"
trigger30  = command = "CPU30"
var(59) = 1


[State -1,AI]                                              ;
type = Varset                                              ;
trigger1 = Var(59) && !var(42)                ;
var(42) = 1                                                ;

;===========================================================================
;===========================================================================
; A.I Commands
;-----------------------------------------------------------------------

;---------------------------------------------------------------------------
; AI Defense
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = var(42)
triggerall = var(59) =1=1 && StateType != A && Ctrl
triggerall = Random <= 300
triggerall = roundstate = 2
trigger1 = P2bodydist X >= 100 && P2moveType != A
value = 100
persistent = 0

[State -1]
type = ChangeState
triggerall = var(42)
triggerall = var(59) =1 && StateType != A && P2moveType = A
triggerall = Random <= 50
triggerall = roundstate = 2
trigger1 = Ctrl
value = 105
persistent = 0

[State -1]
type = ChangeState
triggerall = var(42)
triggerall = var(59) =1  && StateType = A
triggerall = Random <= 100
triggerall = (StateNo != 108)
triggerall = (StateNo != 107)
triggerall =  (StateNo != 70)
triggerall =  (prevStateNo != 107)
triggerall =  (prevStateNo != 108)
triggerall = roundstate = 2
trigger1 = P2bodydist X >= 100 && P2moveType != A
value = 107
persistent = 0

[State -1]
type = ChangeState
triggerall = var(42)
triggerall = var(59) =1  && StateType = A && P2moveType = A
triggerall = Random <= 50
triggerall = (StateNo != 108)
triggerall = (StateNo != 107)
triggerall =  (StateNo != 70)
triggerall =  (prevStateNo != 107)
triggerall =  (prevStateNo != 108)
triggerall = roundstate = 2
trigger1 = Ctrl
value = 108
persistent = 0


[State -1]
type = ChangeState
triggerall = var(42)
triggerall = (roundstate = 2) && (var(59) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 130

[State -1]
type = ChangeState
triggerall = var(42)
triggerall = (roundstate = 2) && (var(59) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 131

[State -1]
type = ChangeState
triggerall = var(42)
triggerall = (roundstate = 2) && (var(59) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 132



;------------------------------------------------------------------------------

; Special 1
[State -1, Special 1]
type = ChangeState
value = 1000
triggerall = var(42)
triggerall = numhelper(1022) = 0
triggerall = Numhelper(1001) = 0
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 220) && movecontact && time > 3
trigger1 = time > 3
;---------------------------------------------------------------------------

;Super Jump
[State -1, super_jump]
type = ChangeState
value = 700
triggerall = var(42)
triggerall = roundstate = 2
triggerall = Var(59)
triggerall = statetype!=A
trigger1 = MoveHit
trigger1 = stateno = 420
trigger2 = numenemy > 0
trigger2 = (enemynear, Vel X >= 4) && ctrl

[State -1, throw ai]
type = ChangeState
value = 800
triggerall = var(42)
triggerall = MoveType != H && RoundState = 2 && !IsHelper
triggerall =  (p2bodydist x <= 15) && (p2bodydist y <= 10)
triggerall = Random <= 150 && (statetype = S) && Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [-8, 35]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = (P2MoveType != H) && (Enemynear,P2Dist x > 0)
triggerall = !(Enemynear,P2dist x < 5)
triggerall = random < 60
trigger1 = ctrl || StateNo=21

;Stand mid Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [-11, 40]) && (p2bodydist y = [ -50, 50]) && p2statetype = S && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = random < 50
trigger1 = ctrl || StateNo=21
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [-11, 50]) && (p2bodydist y = [ -50, 50]) && p2statetype = S && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = random < 40
trigger1 = ctrl || StateNo=21
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,249])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,449])&& movecontact
;---------------------------------------------------------------------------

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 40]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall) && !(enemynear, hitfall)
triggerall = !(Enemynear,P2dist x < 5) && random < 60
trigger1 = (ctrl || StateNo=21)
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact

;Stand mid kick
[State -1, Stand Mid Kick]
type = ChangeState
value = 240
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 50]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != C && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = random < 40
trigger1 = (Ctrl || StateNo=21)
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact

;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 60]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != C && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = random < 35
trigger1 = Ctrl || StateNo=21
trigger2 = (stateno = [200,249])&& movecontact
trigger3 = (stateno = [400,449])&& movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !var(5)
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [-11, 30]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
triggerall = P2MoveType != H && (Enemynear,P2Dist x > 0)
triggerall = !(Enemynear,P2dist x < 5)
triggerall = random < 50
trigger1 = ctrl || StateNo=21

; crouch mid punch
[State -1]
type = ChangeState
value = 410
triggerall = !var(5)
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [-40, 40]) && P2statetype != A && !(enemynear, hitfall)
triggerall = Random < 50
trigger1 = Ctrl || StateNo=21
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact   

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [-11, 50]) && (p2bodydist y = [ -250, 50])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = random < 30
trigger1 = Ctrl || StateNo=21


;---------------------------------------------------------------------------

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !var(5)
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = PrevStateNo != 245 && (StateNo != [700,701]) && P2MoveType != H && !(StateNo=[700,701])
triggerall = (p2bodydist x = [-17, 34]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
triggerall = !(Enemynear,P2dist x < 5)
trigger1 = (ctrl || StateNo=21)
triggerall = !(Enemynear,Anim=5300) && !(!(Enemynear,ctrl) && P2MoveType = I && (P2StateNo = [1000,4999]) && Enemynear,time > 60)
triggerall = random < 90
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

;crouch mid kick
[State -1, Crouching Kick]
type = ChangeState
value = 440
triggerall = !var(5)
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [-2, 40]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
triggerall = !(Enemynear,Anim=5300) && !(!(Enemynear,ctrl) && P2MoveType = I && (P2StateNo = [1000,4999]) && Enemynear,time > 60)
triggerall = Random < 60
trigger1 = Ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100  

;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = !var(5)
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2 && (StateNo != [700,701])
triggerall = (p2bodydist x = [35, 65]) && (p2bodydist y = [ -50, 50]) && p2statetype != L
triggerall = Enemynear,Anim != 5300
trigger1 = (Ctrl || StateNo = 21) && !(enemynear, hitfall) && p2statetype = S
triggerall = Random < 40
trigger2 = (stateno = [200,249])&& movecontact
trigger3 = (stateno = [400,449])&& movecontact  


;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 30]) && (p2bodydist y = [ -50, 10]) && p2statetype != L
triggerall = vel y < 2
trigger1 = ctrl && P2Statetype=A
triggerall = random < (ifelse((vel x > 0 && p2statetype = A), 270, 100))

; jump mid punch
[State -1]
type = ChangeState
value = 610
triggerall = var(59) && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 40]) && (p2bodydist y = [ -50, 10]) && p2statetype != L
triggerall = vel y < 2
trigger1 = ctrl && P2Statetype=A
triggerall = random < (ifelse((vel x > 0 && p2statetype = A), 270, 100))
trigger2 = (stateno = [600,609])&& movecontact
trigger3 = (stateno = [630,639])&& movecontact

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 60]) && (p2bodydist y = [ -50, 10]) && p2statetype != L
triggerall = vel y < 2
trigger1 = ctrl && P2Statetype=A
triggerall = random < (ifelse((vel x > 0 && p2statetype = A), 270, 120))
trigger2 = (stateno = [600,619])&& movecontact
trigger3 = (stateno = [630,649])&& movecontact


;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [-20,ifelse(P2Movetype=A,40,20)]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl
trigger1 = random < 70

; jump medium kick
[State -1, Jump Medium Slash]
type = ChangeState
value = 640
triggerall = var(59) && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [ -50, 130]) && (p2bodydist y = [ -50, 100]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (CTRL || StateNo = [120,140]) && P2Statetype!=A && vel y>2
triggerall = (p2dist x = [ -10, 40]) && p2dist y < 70
trigger1 = random < 110
trigger2 = (stateno = [600,619])&& movecontact
trigger3 = (stateno = [630,639])&& movecontact
trigger4 = stateno = 100000

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59) && numenemy 
triggerall = statetype = A && roundstate = 2 && (CTRL)
triggerall = p2statetype != L && !(enemynear, hitfall)
trigger1 = P2StateType !=A  && vel y > -2
trigger1 = (P2bodydist x - facing*(vel x*facing - Enemynear,vel x * Enemynear,facing) * 4) = [20,60]
trigger1 = P2dist y - vel y * 4 = [10,40]
trigger1 = Random < (160 + 350 * (P2MoveType != I && (Abs(Enemynear,animtime)=[5,12])))
trigger2 = P2StateType =A
trigger2 = (P2bodydist x - facing*(vel x*facing - Enemynear,vel x * Enemynear,facing) * 4) = [20,60]
trigger2 = (P2dist y - (vel y - Enemynear,vel y) * Ifelse(P2Dist y>=0,1,-1) * 8 ) = [-70,60]
trigger2 = Random < 330

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; AI Super Attempt
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Painfull Nightmare
[State -1, Painfull Nightmare]
type = ChangeState
value = 2180
triggerall = var(59) && numenemy && roundstate = 2 && (p2bodydist x =[0,150]) && Random < 5*(1 +(enemynear,ctrl=0)) && (p2statetype=S||p2statetype=C||RANDOM<100)
triggerall = power >= 1000
triggerall = numhelper(2181) = 0
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;Crow Hell
[State -1, Crow Hell]
type = ChangeState
value = 3002
triggerall = var(59) && numenemy && roundstate = 2 && (p2bodydist x =[0,150]) && Random < 7*(1 +(enemynear,ctrl=0)) && (p2statetype=S||p2statetype=C||RANDOM<100)
triggerall = power >= 1000
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

[State -1, Nightmare Horse]
type = ChangeState
value = 2170
triggerall = var(59) && numenemy && roundstate = 2 && (p2bodydist x =[0,150]) && Random < 9*(1 +(enemynear,ctrl=0)) && (p2statetype=S||p2statetype=C||RANDOM<100)
triggerall = power >= 1000
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

[State -1, Hyper 5]
type = ChangeState
value = 3013
triggerall = var(59) && numenemy && roundstate = 2 && (p2bodydist x =[0,150]) && Random < 11*(1 +(enemynear,ctrl=0)) && (p2statetype=S||p2statetype=C||RANDOM<100)
triggerall = power >= 1000
trigger1 = Statetype = S & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

[State -1, Hyper 5]
type = ChangeState
value = 2149
triggerall = var(59) && numenemy && roundstate = 2 && (p2bodydist x =[0,150]) && Random < 13*(1 +(enemynear,ctrl=0)) && (p2statetype=S||p2statetype=C||RANDOM<100)
triggerall = power >= 1000
trigger1 = Statetype = S && ctrl


;---------------------------------------------------------------------------
;                                 TECNICAS
;---------------------------------------------------------------------------
;Bomb Gas X
[State -1, Bomb Gas X]
type = ChangeState
value = 1000
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear, vel y > -1)
triggerall = (p2bodydist y = [ -100, 100]) && (p2statetype = S || p2statetype = C)
triggerall = Random < 10
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;Bomb Gas Y
[State -1, Bomb Gas Y]
type = ChangeState
value = 1003
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear, vel y > -1)
triggerall = (p2bodydist y = [ -100, 100]) && (p2statetype = S || p2statetype = C)
triggerall = Random < 10
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;Bomb Gas Z
[State -1, Bomb Gas Z]
type = ChangeState
value = 1004
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear, vel y > -1)
triggerall = (p2bodydist y = [ -100, 100]) && (p2statetype = S || p2statetype = C)
triggerall = Random < 10
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;---------------------------------------------------------------------------
;Bomb Gas X
[State -1, Bomb Gas X]
type = ChangeState
value = 1200
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear, vel y > -1)
triggerall = (p2bodydist y = [ -100, 100]) && (p2statetype = S || p2statetype = C)
triggerall = Random < 15
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;Bomb Gas Y
[State -1, Bomb Gas Y]
type = ChangeState
value = 1200
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear, vel y > -1)
triggerall = (p2bodydist y = [ -100, 100]) && (p2statetype = S || p2statetype = C)
triggerall = Random < 15
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;Bomb Gas Z
[State -1, Bomb Gas Z]
type = ChangeState
value = 1200
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear, vel y > -1)
triggerall = (p2bodydist y = [ -100, 100]) && (p2statetype = S || p2statetype = C)
triggerall = Random < 15
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;---------------------------------------------------------------------------
;Air Bomb Gas X
[State -1, Bomb Gas X]
type = ChangeState
value = 1050
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear, vel y > -1)
triggerall = (p2bodydist y = [ -100, 100]) && (p2statetype = S || p2statetype = C)
triggerall = Random < 25
triggerall = StateType = A
trigger1 = ctrl
trigger2 = (stateno = [600,690]) && movecontact

;Air Bomb Gas Y
[State -1, Bomb Gas Y]
type = ChangeState
value = 1060
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear, vel y > -1)
triggerall = (p2bodydist y = [ -100, 100]) && (p2statetype = S || p2statetype = C)
triggerall = Random < 25
triggerall = StateType = A
trigger1 = ctrl
trigger2 = (stateno = [600,690]) && movecontact

;Air Bomb Gas Z
[State -1, Bomb Gas Z]
type = ChangeState
value = 1070
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear, vel y > -1)
triggerall = (p2bodydist y = [ -100, 100]) && (p2statetype = S || p2statetype = C)
triggerall = Random < 25
triggerall = StateType = A
trigger1 = ctrl
trigger2 = (stateno = [600,690]) && movecontact

;----------------------------------------------------------------------------------
;Lantern Toss A
[State -1, Lantern Toss A]
type = ChangeState
value = 1008
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear, vel y > -1)
triggerall = (p2bodydist y = [ -100, 100]) && (p2statetype = S || p2statetype = C)
triggerall = Random < 25
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;Lantern Toss B
[State -1, Lantern Toss B]
type = ChangeState
value = 1009
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear, vel y > -1)
triggerall = (p2bodydist y = [ -100, 100]) && (p2statetype = S || p2statetype = C)
triggerall = Random < 25
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;Lantern Toss C
[State -1, Lantern Toss C]
type = ChangeState
value = 1010
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear, vel y > -1)
triggerall = (p2bodydist y = [ -100, 100]) && (p2statetype = S || p2statetype = C)
triggerall = Random < 25
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;----------------------------------------------------------------------------------
;Air Lantern Toss A
[State -1, Lantern Toss A]
type = ChangeState
value = 1080
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear, vel y > -1)
triggerall = (p2bodydist y = [ -100, 100]) && (p2statetype = S || p2statetype = C)
triggerall = Random < 30
triggerall = StateType = A
trigger1 = ctrl
trigger2 = (stateno = [600,690]) && movecontact

;Air Lantern Toss B
[State -1, Lantern Toss B]
type = ChangeState
value = 1085
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear, vel y > -1)
triggerall = (p2bodydist y = [ -100, 100]) && (p2statetype = S || p2statetype = C)
triggerall = Random < 30
triggerall = StateType = A
trigger1 = ctrl
trigger2 = (stateno = [600,690]) && movecontact

;Air Lantern Toss C
[State -1, Lantern Toss C]
type = ChangeState
value = 1090
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear, vel y > -1)
triggerall = (p2bodydist y = [ -100, 100]) && (p2statetype = S || p2statetype = C)
triggerall = Random < 30
triggerall = StateType = A
trigger1 = ctrl
trigger2 = (stateno = [600,690]) && movecontact

;----------------------------------------------------------------------------------
;Vile Acid
[State -1, Vile Acid]
type = ChangeState
value = 1020
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear, vel y > -1)
triggerall = (p2bodydist y = [ -100, 100]) && (p2statetype = S || p2statetype = C)
triggerall = Random < 30
triggerall = numhelper(1024) = 0
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;----------------------------------------------------------------------------------
;Blade Twist Z
[State -1, Blade Twist Z]
type = ChangeState
value = 1112
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear, vel y > -1)
triggerall = (p2bodydist y = [ -100, 100]) && (p2statetype = S || p2statetype = C)
triggerall = Random < 30
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;Blade Twist Y
[State -1, Blade Twist Y]
type = ChangeState
value = 1113
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear, vel y > -1)
triggerall = (p2bodydist y = [ -100, 100]) && (p2statetype = S || p2statetype = C)
triggerall = Random < 30
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;Blade Twist X
[State -1, Blade Twist X]
type = ChangeState
value = 1114
triggerall = var(59) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (enemynear, vel y > -1)
triggerall = (p2bodydist y = [ -100, 100]) && (p2statetype = S || p2statetype = C)
triggerall = Random < 35
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact




;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; -[ User Command Definitions ]-
;---------------------------------------------------------------------------  
;Throw
;---------------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command = "recovery"
triggerall = P2BodyDist X <= 20
triggerall = ctrl
triggerall = stateno != 100
trigger1 = statetype = S

;---------------------------------------------------------------------------
;                              ESPECIAIS
;---------------------------------------------------------------------------
; Painfull Nightmare
[State -1, Painfull Nightmare]
type = ChangeState
value = 2180
triggerall = !Var(59)
triggerall = command = "Hyper 2"
triggerall = power >= 1000
triggerall = numhelper(2181) = 0
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;Crow Hell
[State -1, Crow Hell]
type = ChangeState
value = 3002
triggerall = !Var(59)
triggerall = command = "Hyper 3"
triggerall = power >= 1000
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

[State -1, Nightmare Horse]
type = ChangeState
value = 2170
triggerall = !Var(59)
triggerall = command = "Hyper 4"
triggerall = power >= 1000
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

[State -1, Hyper 5]
type = ChangeState
value = 3013
triggerall = !Var(59)
triggerall = command = "Hyper 5"
triggerall = power >= 1000
trigger1 = Statetype = S & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

[State -1, Hyper 5]
type = ChangeState
value = 2149
triggerall = !Var(59)
triggerall = command = "Hyper 6"
triggerall = power >= 1000
trigger1 = Statetype = S && ctrl


;---------------------------------------------------------------------------
;                                 TECNICAS
;---------------------------------------------------------------------------
;Bomb Gas X
[State -1, Bomb Gas X]
type = ChangeState
value = 1000
triggerall = !Var(59)
triggerall = command = "bombgasx"
;triggerall = numhelper(1022) = 0
;triggerall = Numhelper(1001) = 0
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;Bomb Gas Y
[State -1, Bomb Gas Y]
type = ChangeState
value = 1003
triggerall = !Var(59)
triggerall = command = "bombgasy"
;triggerall = numhelper(1022) = 0
;triggerall = Numhelper(1001) = 0
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;Bomb Gas Z
[State -1, Bomb Gas Z]
type = ChangeState
value = 1004
triggerall = !Var(59)
triggerall = command = "bombgasz"
;triggerall = numhelper(1022) = 0
;triggerall = Numhelper(1001) = 0
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;---------------------------------------------------------------------------
;Bomb Gas X
[State -1, Bomb Gas X]
type = ChangeState
value = 1200
triggerall = !Var(59)
triggerall = command = "feargasa"
;triggerall = numhelper(1022) = 0
;triggerall = Numhelper(1001) = 0
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;Bomb Gas Y
[State -1, Bomb Gas Y]
type = ChangeState
value = 1200
triggerall = !Var(59)
triggerall = command = "feargasb"
;triggerall = numhelper(1022) = 0
;triggerall = Numhelper(1001) = 0
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;Bomb Gas Z
[State -1, Bomb Gas Z]
type = ChangeState
value = 1200
triggerall = !Var(59)
triggerall = command = "feargasc"
;triggerall = numhelper(1022) = 0
;triggerall = Numhelper(1001) = 0
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;---------------------------------------------------------------------------
;Air Bomb Gas X
[State -1, Bomb Gas X]
type = ChangeState
value = 1050
triggerall = !Var(59)
triggerall = command = "bombgasx"
;triggerall = numhelper(1022) = 0
;triggerall = Numhelper(1001) = 0
triggerall = StateType = A
trigger1 = ctrl
trigger2 = (stateno = [600,690]) && movecontact

;Air Bomb Gas Y
[State -1, Bomb Gas Y]
type = ChangeState
value = 1060
triggerall = !Var(59)
triggerall = command = "bombgasy"
;triggerall = numhelper(1022) = 0
;triggerall = Numhelper(1001) = 0
triggerall = StateType = A
trigger1 = ctrl
trigger2 = (stateno = [600,690]) && movecontact

;Air Bomb Gas Z
[State -1, Bomb Gas Z]
type = ChangeState
value = 1070
triggerall = !Var(59)
triggerall = command = "bombgasz"
;triggerall = numhelper(1022) = 0
;triggerall = Numhelper(1001) = 0
triggerall = StateType = A
trigger1 = ctrl
trigger2 = (stateno = [600,690]) && movecontact

;----------------------------------------------------------------------------------
;Lantern Toss A
[State -1, Lantern Toss A]
type = ChangeState
value = 1008
triggerall = !Var(59)
triggerall = command = "lanterna"
;triggerall = NumprojID(1001) = 0
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;Lantern Toss B
[State -1, Lantern Toss B]
type = ChangeState
value = 1009
triggerall = !Var(59)
triggerall = command = "lanternb"
;triggerall = NumprojID(1001) = 0
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;Lantern Toss C
[State -1, Lantern Toss C]
type = ChangeState
value = 1010
triggerall = !Var(59)
triggerall = command = "lanternc"
;triggerall = NumprojID(1001) = 0
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;----------------------------------------------------------------------------------
;Air Lantern Toss A
[State -1, Lantern Toss A]
type = ChangeState
value = 1080
triggerall = !Var(59)
triggerall = command = "lanterna"
;triggerall = NumprojID(1001) = 0
triggerall = StateType = A
trigger1 = ctrl
trigger2 = (stateno = [600,690]) && movecontact

;Air Lantern Toss B
[State -1, Lantern Toss B]
type = ChangeState
value = 1085
triggerall = !Var(59)
triggerall = command = "lanternb"
;triggerall = NumprojID(1001) = 0
triggerall = StateType = A
trigger1 = ctrl
trigger2 = (stateno = [600,690]) && movecontact

;Air Lantern Toss C
[State -1, Lantern Toss C]
type = ChangeState
value = 1090
triggerall = !Var(59)
triggerall = command = "lanternc"
;triggerall = NumprojID(1001) = 0
triggerall = StateType = A
trigger1 = ctrl
trigger2 = (stateno = [600,690]) && movecontact

;----------------------------------------------------------------------------------
;Vile Acid
[State -1, Vile Acid]
type = ChangeState
value = 1020
triggerall = !Var(59)
triggerall = command = "acid"
triggerall = numhelper(1024) = 0
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;----------------------------------------------------------------------------------
;Blade Twist Z
[State -1, Blade Twist Z]
type = ChangeState
value = 1112
triggerall = !Var(59)
triggerall = command = "twistz"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;Blade Twist Y
[State -1, Blade Twist Y]
type = ChangeState
value = 1113
triggerall = !Var(59)
triggerall = command = "twisty"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact

;Blade Twist X
[State -1, Blade Twist X]
type = ChangeState
value = 1114
triggerall = !Var(59)
triggerall = command = "twistx"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (stateno = [200,490]) && movecontact


;---------------------------------------------------------------------------
;                                 EXTRA
;---------------------------------------------------------------------------
[State -1, Dash FWD]
type = ChangeState
value = 100
triggerall = !Var(59)
triggerall = StateType = S
triggerall = (Ctrl)
triggerall = (StateNo != 100)
triggerall = (StateNo != 105)
trigger1 = Command = "FF"

[State -1, Dash Back]
type = ChangeState
value = 105
triggerall = !Var(59)
triggerall = (roundstate = 2)
triggerall = StateType = S
triggerall = (Ctrl)
triggerall = (StateNo != 100)
triggerall = (StateNo != 105)
trigger1 = Command = "BB"

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !Var(59)
triggerall = Command = "start"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

[state -1, super_jump]
type = changestate
triggerall = !Var(59)
triggerall = statetype = S || statetype = C
trigger1 = command = "super_jump"
trigger1 = ctrl
trigger2 = command = "super_jump" || command = "holdup"
trigger2 = MoveHit
trigger2 = Stateno = 420
value = 700

;---------------------------------------------------------------------------
;                                  GOLPES
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (command = "x") && (statetype = S) && !Var(59)
trigger1 = ctrl

; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (command = "y") && (statetype = S) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 230)

; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (command = "z") && (statetype = S) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)

; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a") && (statetype = S) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)

; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (statetype = S) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230)

; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (command = "c") && (statetype = S) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)

;----------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && (statetype = C) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 400)
trigger3 = movecontact
trigger3 = (stateno = 430)

; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = (stateno = 400) || (stateno = 410)
trigger3 = movecontact
trigger3 = (stateno = 430) || (stateno = 440)

; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && (statetype = C) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 400)

; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && (statetype = C) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 400) || (stateno = 410)
trigger3 = movecontact
trigger3 = (stateno = 430)

; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && (statetype = C) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 400) || (stateno = 410) || (stateno = 420)
trigger3 = movecontact
trigger3 = (stateno = 430) || (stateno = 440)

;-----------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = (command = "y") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 630

; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = (command = "z") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640

; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600

; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630

; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = (command = "c") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640

;---------------------------------------------------------------------------
;Guard Push (Standing)
[State -1, Guard Push]
type = ChangeState
value = 7610
triggerall = !var(59)
triggerall = command = "recovery"
triggerall = statetype = S
trigger1 = stateno = [150,153]

;Guard Push (Crouching)
[State -1, Guard Push]
type = ChangeState
value = 7615
triggerall = !var(59)
triggerall = command = "recovery"
triggerall = statetype = C
trigger1 = stateno = [150,153]

;Guard Push (Air)
[State -1, Guard Push]
type = ChangeState
value = 7620
triggerall = !var(59)
triggerall = command = "recovery"
triggerall = statetype = A
trigger1 = stateno = [154,155]

;---------------------------------------------------------------------------
;Roll Forward
[State -1, Roll Forward]
type = ChangeState
value = 8300
triggerall = !Var(59)
triggerall = command = "holdfwd"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)

;Roll Back
[State -1, Roll Back]
type = ChangeState
value = 8305
triggerall = !Var(59)
triggerall = command = "holdback"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)

;---------------------------------------------------------------------------
[State -1,Guard]
type = ChangeState
;triggerall = NumHelper(8600)
triggerall = !var(59) && (stateno != [120,155]) ;&& Helper(8600),Numenemy
;triggerall = statetype != A
triggerall = p2bodydist x > 80
triggerall = enemynear,movetype = A ;inguarddist || Helper(8600),inguarddist
triggerall = command = "holdback"
trigger1 = ctrl
value = 120
