;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 30
command.buffer.time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "UU"     ;Required (do not remove)
command = U, U
time = 10

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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
name = "s"
command = s
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
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

;---------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

; ----- Combo Reset -----
[State -1, Combos]
type = VarSet
trigger1 = 1
var(50) = 0

; ----- Combos -----
[State -1, Combos]
type = VarSet
triggerall = MoveContact
triggerall = StateType != A
trigger1 = hitdefattr = SC, NA
trigger2 = hitdefattr = SC, NP
var(50) = 1

[State -1, Combos]
type = VarSet
triggerall = MoveContact
triggerall = StateType != A
trigger1 = hitdefattr = SC, SA
trigger2 = hitdefattr = SC, SP
var(50) = 2

[State -1, Combos]
type = VarSet
triggerall = MoveContact
triggerall = StateType != A
trigger1 = hitdefattr = SC, HA
trigger2 = hitdefattr = SC, HP
var(50) = 3

[State -1, Combos]
type = VarSet
triggerall = MoveContact
triggerall = StateType = A
trigger1 = hitdefattr = A, NA
trigger2 = hitdefattr = A, NP
var(50) = 4

[State -1, Combos]
type = VarSet
triggerall = MoveContact
triggerall = Statetype = A
trigger1 = hitdefattr = A, SA
trigger2 = hitdefattr = A, SP
var(50) = 5

[State -1, Combos]
type = VarSet
triggerall = MoveContact
triggerall = Statetype = A
trigger1 = hitdefattr = A, HA
trigger2 = hitdefattr = A, HP
var(50) = 6

;===========================================================================
;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------
; Smash Punch
[State -1, Attack]
type = ChangeState
value = 250
triggerall = command = "holdfwd"
triggerall = command = "z"
trigger1 = ctrl
trigger2 = Var(50) = 4

;---------------------------------------------------------------------------
; Finger Poke
[State -1, Attack]
type = ChangeState
value = 280
triggerall = command = "holdfwd"
triggerall = command = "x" || command = "y"
trigger1 = ctrl
trigger2 = Var(50) = 4

;---------------------------------------------------------------------------
; Rocket Punch
[State -1, Attack]
type = ChangeState
value = 290
triggerall = command = "holdup"
triggerall = command = "x" || command = "y"
trigger1 = ctrl
trigger2 = Var(50) = 4

;---------------------------------------------------------------------------
; Wall Slam
[State -1, Attack]
type = ChangeState
value = 600
triggerall = command = "holdfwd"
triggerall = command = "a" || command = "b"
trigger1 = ctrl
trigger2 = Var(50) = 4

;---------------------------------------------------------------------------
; Shock Wave
[State -1, Attack]
type = ChangeState
value = 700
triggerall = command = "holdfwd"
triggerall = command = "c"
trigger1 = ctrl
trigger2 = Var(50) = 4

;---------------------------------------------------------------------------
; Electric Fist
[State -1, Attack]
type = ChangeState
value = 800
triggerall = command = "holddown"
triggerall = command = "a" || command = "b"
trigger1 = ctrl
trigger2 = Var(50) = 4

;---------------------------------------------------------------------------
; Fist Pound
[State -1, Attack]
type = ChangeState
value = 850
triggerall = command = "holddown"
triggerall = command = "z"
trigger1 = ctrl
trigger2 = Var(50) = 4

;---------------------------------------------------------------------------
; Spinning Fingers Drill
[State -1, Attack]
type = ChangeState
value = 900
triggerall = command = "holdup"
triggerall = command = "a" || command = "b"
trigger1 = ctrl
trigger2 = Var(50) = 4

;===========================================================================
;---------------------------------------------------------------------------
; Special Attacks
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = ctrl

;---------------------------------------------------------------------------
; Light Punch
[State -1, Attack]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = ctrl

;---------------------------------------------------------------------------
; Medium Punch
[State -1, Attack]
type = ChangeState
value = 210
triggerall = command = "y"
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = Anim = 200
trigger2 = hitdefattr = A, NA

;---------------------------------------------------------------------------
; Strong Punch
[State -1, Attack]
type = ChangeState
value = 220
triggerall = command = "z"
trigger1 = ctrl
trigger2 = StateNo = 210
trigger2 = Anim = 210
trigger2 = hitdefattr = A, NA

;---------------------------------------------------------------------------
; Grab
[State -1, Attack]
type = ChangeState
value = 400
triggerall = command = "a"
trigger1 = ctrl
trigger2 = Var(50) = 4

;---------------------------------------------------------------------------
; Stone Drop
[State -1, Attack]
type = ChangeState
value = 500
triggerall = command = "b"
trigger1 = ctrl
trigger2 = Var(50) = 4

;---------------------------------------------------------------------------
; Gun Shot
[State -1, Attack]
type = ChangeState
value = 300
triggerall = command = "c"
trigger1 = ctrl
trigger2 = Var(50) = 4

;---------------------------------------------------------------------------
