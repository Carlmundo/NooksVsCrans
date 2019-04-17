;------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------
;Batman (Batman Return Super Nes version) By TonyADV
;------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------

;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;Comand File By TonyADV
;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------

;-| AI Command |--------------------------------
[Command]
name = "AI1"
command = a, a, a
time = 1

[Command]
name = "AI2"
command = b, b, b
time = 1

[Command]
name = "AI3"
command = x, x, x
time = 1

[Command]
name = "AI4"
command = y, y, y
time = 1

[Command]
name = "AI5"
command = a, b
time = 1

[Command]
name = "AI6"
command = b, a
time = 1

[Command]
name = "AI7"
command = x, y
time = 1

[Command]
name = "AI8"
command = y, x
time = 1

[Command]
name = "AI9"
command = a, b, a
time = 1

[Command]
name = "AI10"
command = b, a, b
time = 1

[Command]
name = "AI11"
command = x, y, x
time = 1

[Command]
name = "AI12"
command = y, x, y
time = 1

[Command]
name = "AI13"
command = a, x
time = 1

[Command]
name = "AI14"
command = b, y
time = 1

[Command]
name = "AI15"
command = a, y
time = 1

[Command]
name = "AI16"
command = b, x
time = 1

[Command]
name = "AI17"
command = a, x, b, y
time = 1

[Command]
name = "AI18"
command = a, b, x, y
time = 1

;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;-| Normal Command |----------------------------
;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------

;-| Super Motions |-----------------------------

;BATBLASTRANG
[Command]
name = "BATBLASTRANG"
command = B, DB, D, DF, F, a
time = 35
[Command]
name = "BATBLASTRANG"
command = B, DB, D, DF, F, b
time = 35

;BATLAZZO
[Command]
name = "BATLAZZO"
command = F, DF, D, DB, B, a
time = 35
[Command]
name = "BATLAZZO"
command = F, DF, D, DB, B, b
time = 35

;AIRBATLAZZO
[Command]
name = "AIRBATLAZZO"
command = F, DF, D, DB, B, x
time = 35
[Command]
name = "AIRBATLAZZO"
command = F, DF, D, DB, B, y
time = 35

;BATSTORM
[Command]
name = "BATSTORM"
command = B, DB, D, DF, F, x
time = 35
[Command]
name = "BATSTORM"
command = B, DB, D, DF, F, y
time = 35

;-| Special Motions |----------------------------

;BATBOMB
[Command]
name = "BATBOMB"
command = ~D, DF, F, a
time = 25
[Command]
name = "BATBOMB"
command = ~D, DF, F, b
time = 25

;BATMANTELLO
[Command]
name = "BATMANTELLO"
command = ~D, DB, B, x
time = 25
[Command]
name = "BATMANTELLO"
command = ~D, DB, B, y
time = 25

;BATFLY
[Command]
name = "BATFLY"
command = x+y
time = 5

;BATBOOMERANG
[Command]
name = "BATBOOMERANG"
command = a+b
time = 5

;Carikamento
[Command]
name = "charge"
command = /b
time= 1
[Command]
name = "charge 1"
command= /y
time= 1


;-| Double Tap |-------------------------------------
;Corsa Avanti
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

;Scatto indietro
[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |---------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |--------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |--------------------------------------
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

;-| Hold Dir |--------------------------------------
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

;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;-------------- CMD standard -------------------
[Statedef -1]
;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;===============================================

;Potenziamento
[State -1]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"

;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------

;BATBLASTRANG
[State -1]
type = ChangeState
value = 3000
triggerall = command = "BATBLASTRANG"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1

;BATLAZZO
[State -1]
type = ChangeState
value = 3010
triggerall = command = "BATLAZZO"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1

;AIRBATLAZZO
[State -1]
type = ChangeState
value = 3020
triggerall = command = "AIRBATLAZZO"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 225
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = movecontact = 1

;BATSTORM
[State -1]
type = ChangeState
value = 3030
triggerall = command = "BATSTORM"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 225
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = movecontact = 1

;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------

;BATBOOMERANG
[State -1]
type = ChangeState
value = 1000
triggerall = command = "BATBOOMERANG"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1

;Crounch BATBOOMERANG
[State -1]
type = ChangeState
value = 1010
triggerall = command = "BATBOOMERANG"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 410
trigger3 = movecontact = 1
trigger4 = stateno = 420
trigger4 = movecontact = 1

;AIR BATBOOMERANG (Verticale)
[State -1]
type = ChangeState
value = 10251
triggerall = command = "BATBOOMERANG"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 615
trigger4 = movecontact = 1
trigger5 = stateno = 620
trigger5 = movecontact = 1
trigger6 = stateno = 625
trigger6 = movecontact = 1
trigger7 = stateno = 630
trigger7 = movecontact = 1

;AIR BATBOOMERANG
[State -1]
type = ChangeState
value = 1020
triggerall = command = "BATBOOMERANG"
trigger1 = statetype = A
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 615
trigger4 = movecontact = 1
trigger5 = stateno = 620
trigger5 = movecontact = 1
trigger6 = stateno = 625
trigger6 = movecontact = 1
trigger7 = stateno = 630
trigger7 = movecontact = 1


;BATBOMB
[State -1]
type = ChangeState
value = 1030
triggerall = command = "BATBOMB"
trigger1 = statetype != A
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1

;BATMANTELLO
[State -1]
type = ChangeState
value = 1040
triggerall = command = "BATMANTELLO"
trigger1 = statetype != A
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 225
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = movecontact = 1

;BATFLY
[State -1]
type = ChangeState
value = 1050
triggerall = command = "BATFLY"
trigger1 = statetype = A
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 615
trigger4 = movecontact = 1
trigger5 = stateno = 620
trigger5 = movecontact = 1
trigger6 = stateno = 625
trigger6 = movecontact = 1
trigger7 = stateno = 630
trigger7 = movecontact = 1

;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;Corsa
;[State -1]
;type = ChangeState
;value = 100
;trigger1 = command = "FF"
;trigger1 = statetype = S
;trigger1 = ctrl

;Scatto indietro
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------

;presa
[State -1]
type = ChangeState
value = 800
triggerall = command = "a"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;presa
[State -1]
type = ChangeState
value = 820
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;presa
[State -1]
type = ChangeState
value = 810
triggerall = command = "x"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;presa
[State -1]
type = ChangeState
value = 830
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------

;Pugno debole
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 225
trigger4 = movecontact = 1

;Pugno Forte
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1

;-----------------------------------------------

;Calcio debole Vicino
[State -1]
type = ChangeState
value = 225
triggerall = command = "x"
trigger1 = P2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl 
;-------------------------
trigger2 = stateno = 225
trigger2 = movecontact = 1
trigger3 = stateno = 220
trigger3 = movecontact = 1

;Calcio debole
[State -1]
type = ChangeState
value = 220
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 225
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1

;Calcio Forte
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------
trigger2 = stateno = 225
trigger2 = movecontact = 1
trigger3 = stateno = 220
trigger3 = movecontact = 1

;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;pugno abbasato debole
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 410
trigger3 = movecontact = 1
trigger4 = stateno = 420
trigger4 = movecontact = 1

;pugno abbasato forte
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 410
trigger3 = movecontact = 1
trigger4 = stateno = 420
trigger4 = movecontact = 1

;-------------------------------------------------
;calcio abbasato debole
[State -1]
type = ChangeState
value = 420
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 410
trigger3 = movecontact = 1
trigger4 = stateno = 420
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1

;calcio abbasato in scivolata
[State -1]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 410
trigger3 = movecontact = 1
trigger4 = stateno = 420
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1

;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;pugno debole in salto
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 615
trigger4 = movecontact = 1
trigger5 = stateno = 620
trigger5 = movecontact = 1
trigger6 = stateno = 625
trigger6 = movecontact = 1
trigger7 = stateno = 630
trigger7 = movecontact = 1

;pugno forte in salto 
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 615
trigger4 = movecontact = 1
trigger5 = stateno = 620
trigger5 = movecontact = 1
trigger6 = stateno = 625
trigger6 = movecontact = 1
trigger7 = stateno = 630
trigger7 = movecontact = 1

;pugno forte in salto Stand
[State -1]
type = ChangeState
value = 615
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 615
trigger4 = movecontact = 1
trigger5 = stateno = 620
trigger5 = movecontact = 1
trigger6 = stateno = 625
trigger6 = movecontact = 1
trigger7 = stateno = 630
trigger7 = movecontact = 1

;------------------------------------------------
;calcio debole in salto
[State -1]
type = ChangeState
value = 620
triggerall = command = "x"
trigger1 = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 615
trigger4 = movecontact = 1
trigger5 = stateno = 620
trigger5 = movecontact = 1
trigger6 = stateno = 625
trigger6 = movecontact = 1
trigger7 = stateno = 630
trigger7 = movecontact = 1

;calcio debole in salto stand
[State -1]
type = ChangeState
value = 625
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 615
trigger4 = movecontact = 1
trigger5 = stateno = 620
trigger5 = movecontact = 1
trigger6 = stateno = 625
trigger6 = movecontact = 1
trigger7 = stateno = 630
trigger7 = movecontact = 1

;calcio forte in salto
[State -1]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 615
trigger4 = movecontact = 1
trigger5 = stateno = 620
trigger5 = movecontact = 1
trigger6 = stateno = 625
trigger6 = movecontact = 1
trigger7 = stateno = 630
trigger7 = movecontact = 1

;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;provocazione
;[State -1]
;type = ChangeState
;value = 199
;trigger1 = command = "start"
;trigger1 = statetype != A
;trigger1 = stateno != 195
;trigger1 = ctrl = 1

;-----------------------------------------------
;-| AI Variabile |------------------------------
;-----------------------------------------------

[State -1, AI]
type = Varset
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
v = 59
value = 1

;-----------------------------------
; ------ AI Standing Guard ---------
;-----------------------------------
[State -1]
type = ChangeState
triggerall = var(59) = 1 
triggerall = Statetype != A 
triggerall = P2statetype != C 
triggerall = Statetype = S 
triggerall = P2Movetype = A 
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 999 
value = 130
[State -1]
type = ChangeState 
triggerall = (Var(30) = 59) && (StateType = S) && (Pos Y = 0) && (P2BodyDist Y <= 0) 
triggerall = (P2BodyDist Y = -120) && (P2StateType != C) && (P2MoveType = A) 
trigger1 = (P2BodyDist X <= 120) && (Random <= 799) && (Ctrl) 
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105]) 
value = 130 

;-----------------------------------
; ------ AI Standing Guard ---------
;-----------------------------------
; AI Stand to Crouch Guard Transition
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

; AI Crouching Guard
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 900
value = 131
[State -1]
type = ChangeState 
triggerall = (Var(30) = 59) && (StateType != A) && (Pos Y = 0) && (P2BodyDist Y <= 0) 
triggerall = (P2BodyDist Y = -50) && (P2StateType = C) && (P2MoveType = A) 
trigger1 = (P2BodyDist X <= 120) && (Random <= 799) && (Ctrl) 
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105]) 
value = 131

;-----------------------------------
; ------- AI Aerial Guard ---------
;-----------------------------------

; AI Crouch to Stand Guard Transition
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

;AI Aerial Guard
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = random <= 900
value = 132
[State -1]
type = ChangeState 
triggerall = (Var(30) = 59) && (StateType = A) && (Pos Y = 0)  && (P2BodyDist Y = -120) 
triggerall = (StateType = A) && (P2MoveType = A) 
trigger1 = ((P2BodyDist X <= 120) && (Ctrl)) || (StateNo = [140, 155]) 
value = 132 

;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------

