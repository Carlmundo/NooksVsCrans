; -| CPU Commands |-------------------------------------------------------------

[Command]
name = "AI1"
command = D, D, U, U, D, U
time = 1

[Command]
name = "AI2"
command = D, U, U, D, D, U
time = 1

[Command]
name = "AI3"
command = D, D, D, U, U, U
time = 1

;-| Super Motions |--------------------------------------------------------

;Moño Explosivo
[Command]
name = "EXPLO"
command =  ~D, DF,F, D, DF,F, x
time = 30

[Command]
name = "EXPLO"
command =  ~D, DF,F, D, DF,F, y
time = 30


; Mega Rayo Rosa
[Command]
name = "hbeam"
command = ~D, DF, F,  x+y
time = 30


; Mega Aliento de Hielo
[Command]
name = "mice"
command = ~D, DF,F,D, DF,F, b
time = 30

[Command]
name = "mice"
command = ~D, DF,F,D, DF,F, a
time = 30


;Lighting Ball
[Command]
name = "lightningball"
command = ~D, DF,F, a+b
time = 30


;-| Special Motions |------------------------------------------------------
;-----------------

;Upper		
[Command]
name = "upp"
command =  ~F, DF, F, a
time = 30

;Super Gancho
[Command]
name = "upper"
command = ~F, DF, F, x
time = 30

[Command]
name = "upperF"
command = ~F, DF, F, y
time = 30




;Rayo Rosa
[Command]
name = "rayo"
command = ~D, F, x

;Vista Lazer
[Command]
name = "RaiolaserF"
command = ~D, F, y


;Dash
[Command]
name = "Dash"
command = ~D, B, x

[Command]
name = "DashF"
command = ~D, B, y

;Aliento de Hielo
[Command]
name = "qcf_z"
command = ~D, DF,F, b
time = 15


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
command = a+x
time = 1

[Command]
name = "superjump"
command = ~D, U

[Command]
name = "superjump"
command = ~DF, U

[Command]
name = "superjump"
command = ~DB, U

[Command]
name = "superjump"
command = ~D, UF

[Command]
name = "superjump"
command = ~D, UB

[Command]
name = "superjump"
command = ~DB, UF

[Command]
name = "superjump"
command = ~DF, UF


[Command]
name = "ax"
command = a+x
time = 1



[Command]
name = "knockdown"
command = a+b
time = 1

[Command]
name = "yb"
command = y+b
time = 1

[Command]
name = "fly"
command = x+y
time = 1

[Command]
name = "gc_fwd"
command = a+x
time = 1

[Command]
name = "q_fwd"
command = a+x
time = 1


[Command]
name = "esqup"
command = y+b
time = 1
;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F, a
time = 1

[Command]
name = "gc_fwd"
command = /DF, a+x
time = 1

[Command]
name = "gc_fwd"
command = /F, a+x
time = 1

[Command]
name = "gc_back"
command = /DB, a+x
time = 1

[Command]
name = "gc_back"
command = /B, a+x
time = 1

[Command]
name = "q_fwd"
command = /F, a+x
time = 1


[Command]
name = "q_back"
command = /B, a+x
time = 1
;------------------------------
[Command]
name = "esqup"
command = /DF,  y+b
time = 1

[Command]
name = "esqup"
command = /F,  y+b
time = 1

[Command]
name = "esqup"
command = /DB,  y+b
time = 1

[Command]
name = "esqup"
command = /B,  y+b
time = 1

[Command]
name = "esqup"
command = /F,  y+b
time = 1


[Command]
name = "esqup"
command = /B, y+b
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
name = "c"
command = c
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "recovery"
command = y+b
time = 1

[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "F"
command = F
time = 1


[Command]
name = "B"
command = B
time = 1


[Command]
name = "U"
command = U
time = 1

[Command]
name = "UF"
command = UF
time = 1

[Command]
name = "UB"
command = UB
time = 1



[Command]
name = "U+F"
command = F, U
time = 1


[Command]
name = "U+B"
command = B, U
time = 1


[Command]
name = "DB"
command = DB
time = 1


[Command]
name = "DF"
command = DF
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "upback"
command = UB
time = 1

[Command]
name = "downback"
command = DB
time = 1


[Command]
name = "charge1"
command = /z
time = 1

[Command]
name = "charge2"
command = /c
time = 1

[Command]
name = "AGARRE"
command = /F,b
time = 1


;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdfwd1"
command = ~F
time = 1

[Command]
name = "holdback1"
command = ~B
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_yb"
command = /y+b
time = 30

[Command]
name = "hold_xa"
command = /x+a
time = 30

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 30

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 30

[Command]
name = "start"
command = /s
time = 1

;-| Dir |--------------------------------------------------------------
[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up" 
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;Inteligencia Artificial
[State -1, Activa AI]
type = VarSet
trigger1  = command = "AI1"
trigger2  = command = "AI2"
trigger3  = command = "AI3"
v = 20  
value = 1

;============================================

;============================================

;MOÑO EXPLOSIVO
[State -1]
type = ChangeState
value = 1031
triggerall = command = "EXPLO"
trigger1 = statetype != A
triggerall = (command="EXPLO" && power>=3000) 
triggerall = ctrl = 1
triggerall = Life > 0
trigger1 = numHelper <= 5
trigger2 = (stateno = 210)&& time < 50 
trigger2 = MoveContact
trigger3 = (stateno = 211)&& time < 30 
trigger3 = MoveContact
trigger4 = (stateno = 240)&& time < 30 
trigger4 = MoveContact
;============================================

; LIGHTING BALL
[State -1, Raio]
type = ChangeState
value = 1100
triggerall = (command= "lightningball" && power>=1000) 
triggerall = Numproj = 0
trigger1 = statetype != A
trigger1 = ctrl  = 1
trigger2 = (stateno = 210)&& time < 30 
trigger2 = MoveContact
trigger3 = (stateno = 211)&& time < 30 
trigger3 = MoveContact
trigger4 = (stateno = 240)&& time < 30 
trigger4 = MoveContact
;============================================
; MEGA RAYO ROSA
[State -1, HyperMove]
type = ChangeState
value = 3200
triggerall = (command="hbeam" && power>=1000) 
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = (stateno = 210)&& time < 30 
trigger2 = MoveContact
trigger3 = (stateno = 211)&& time < 30 
trigger3 = MoveContact
trigger4 = (stateno = 240)&& time < 30 
trigger4 = MoveContact

;MEGA ALIENTO DE HIELO
[State -1, HyperMove]
type = ChangeState
value = 3942
triggerall = (command="mice" && power>=2000) 
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = (stateno = 210)&& time < 30 
trigger2 = MoveContact
trigger3 = (stateno = 211)&& time < 30 
trigger3 = MoveContact
trigger4 = (stateno = 240)&& time < 30 
trigger4 = MoveContact

;============================================


;============================================
;ESCAPE MODO: EXTRA
[State -1]
type = ChangeState
value = 4000
triggerall = Command = "gc_fwd"
triggerall = Var(4) = 1
triggerall = Power >= 500
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
;
[State -1]
type = ChangeState
value = 4050
triggerall = Command = "q_fwd"
triggerall = Command != "holdback"
triggerall = StateType = S
trigger1 = Ctrl = 1
;
[State -1]
type = ChangeState
value = 4150
triggerall = Command = "q_back"
triggerall = Command != "holdfwd"
triggerall = StateType = S
trigger1 = Ctrl = 1

;============================================

;ESCAPE MODO: ADVANCED
[State -1]
type = ChangeState
value = 4051
triggerall = Command = "esqup"
triggerall = Var(4) = 1
triggerall = Power >= 500
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
; 
[State -1]
type = ChangeState
value = 4051
triggerall = Command = "esqup"
triggerall = Command != "holdback"
triggerall = StateType = S
trigger1 = Ctrl = 1
;
[State -1]
type = ChangeState
value = 4051
triggerall = Command = "esqup"
triggerall = Command != "holdfwd"
triggerall = StateType = S
trigger1 = Ctrl = 1

;============================================
;SUPER ESCAPE
[State -1]
type = ChangeState
value = ifelse(command != "holdback",830,835)
triggerall =  command = "c" || command = "yb"
triggerall = power >= 1000
trigger1 = stateno = [150,153]

;============================================

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 211
triggerall = command = "upp"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 25
trigger3 = (stateno = 230) && time > 26
trigger4 = (stateno = 410)&& time < 30 
trigger4 = MoveContact
;============================================


;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 101
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Fwd ( en aire )
[State -1, Run Fwd]
type = ChangeState
value = 103
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1900

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;============================================

; VOLAR
[State -1]
type = ChangeState
value = 1800
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = command = "fly"

; VOLAR (CANCELAR )
[State -1]
type = ChangeState
value = 1900
trigger1 = statetype = A
trigger1 = ctrl = 1
triggerall = command = "fly"

;============================================
; POWER UP
[State -1]
type = ChangeState
value = 820
triggerall = Power < 3000 && (command = "charge1" && command = "charge2")
trigger1 = statetype = S
trigger1 = ctrl

;============================================
;SUPER PATADA DE ESCAPE
[State -1]
type = ChangeState
value = 821
triggerall = command = "knockdown" || command = "z"
triggerall = power >= 1000
trigger1 = stateno = [150,153]

;============================================
;AGARRE
[State -1]
type = ChangeState
value = 920
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = command = "AGARRE"
trigger1 = stateno != 100
trigger1 = p2bodydist X < 8
trigger1 = p2statetype = S
trigger1 = p2movetype != H

;============================================

;SUPER SALTO
[State -1, Run Back]
type = ChangeState
value = 999
triggerall = statetype != A
triggerall = stateno = 420
triggerall = MoveHit
trigger4 = Var(20) = 1 && p2life > 0
trigger1 = command = "U"
trigger2 = command = "UF"
trigger3 = command = "UB"

[State -1, Run Back]
type = ChangeState
value = 999
triggerall = var(20) = 0
trigger1 = command = "superjump"
trigger1 = statetype != A
trigger1 = ctrl

;============================================

;Super PATADA
[State -1, Super kick ]
type = ChangeState
value = 1044
triggerall = command = "knockdown"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = 210)&& time < 30 
trigger2 = MoveContact
;============================================

;Jump Strong Punch 
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;============================================

;SUPER PATADA AEREA
[State -1]
type = ChangeState
value = 641
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "knockdown"


;============================================

;SUPER UPPER
[State -1, Super upper]
type = ChangeState
value = 1004
triggerall = command = "upper"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = 211)&& time < 30 
trigger2 = MoveContact
;============================================

;Super upper
[State -1, Super upper]
type = ChangeState
value = 1006
triggerall = command = "upperF"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = 211)&& time < 30 
trigger2 = MoveContact
;============================================
; RAYO ROSA
[State -1, Rayo]
type = ChangeState
value = 1919
triggerall = (command="rayo" && power>=0) 
triggerall = Numproj = 0
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = 210)&& time < 30 
trigger2 = MoveContact
;============================================

;VISTA LAZER
[State -1, Rayo]
type = ChangeState
value = 1010
triggerall = command = "RaiolaserF"
triggerall = Numproj = 0
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = 240)&& time < 30 
trigger2 = MoveContact
;============================================

;ALIENTO DE HIELO
[State -1]
type = ChangeState
value = 1030
triggerall = command = "qcf_z"
trigger1 = numprojID(1060) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = [230,231]
trigger4 = MoveContact
trigger5 = stateno = 250
trigger5 = MoveContact
trigger6 = stateno = 220
trigger6 = MoveContact
trigger7 = stateno = [400,420]
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 460
trigger10 = MoveContact
trigger11 = stateno = 215
trigger11 = MoveContact
trigger12 = stateno = 260
trigger12 = MoveContact
trigger13 = (stateno = 260)&& time < 20 
trigger13 = !MoveContact

;============================================

;DASH
[State -1, Dash]
type = ChangeState
value = 1000
triggerall = command = "Dash"
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = 210)&& time < 30 
trigger2 = MoveContact
;---------------------------------------------------------------------------
;DASH
[State -1, Dash]
type = ChangeState
value = 1002
triggerall = command = "DashF"
trigger1 = statetype != A
trigger1 = ctrl 

;============================================
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 7

;============================================

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
;============================================

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
;============================================

;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;============================================

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;============================================

;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger2 = (stateno = 1010)&& time < 30 
trigger2 = MoveContact
;============================================

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;============================================

;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;============================================

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;============================================

;Jump Strong Punch down
[State -1, Jump Strong Punch Down]
type = ChangeState
value = 611
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;============================================

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl


;============================================

;Jump Strong Kick
;‹ó’†‹­ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;============================================

;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl = 1
