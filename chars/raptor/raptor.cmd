; The CMD file.
; Raptor cmd by Lord-S
; Arquivo de combinações
;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1
;-| Super Motions |--------------------------------------------------------

[Command]
name = "especial_chute"
command = ~D, DF, F, a+b

[Command]
name = "supergarra"
command = ~D, DB, B, a+b

[Command]
name = "missil"
command = ~D, DF, F, x+y

;-| Special Motions |------------------------------------------------------
[Command]
name = "dino"
command = ~D, DF, F, a

[Command]
name = "dino"
command = ~D, DF, F, b

[Command]
name = "shockman"
command = ~D, DF, F, x

[Command]
name = "shockman"
command = ~D, DF, F, y

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"       ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"       ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "esquiva"
command = a+x
time = 1

[Command]
name = "esquiva"
command = b+y
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
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
time = 1

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
name = "back_c"
command = /B,c
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
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1


[Command]
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"  ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"   ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;especial_chute
[State -1]
type = ChangeState
value = 3100
triggerall = command = "especial_chute"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = power >= 1000 ;Level 1 Super
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;supergarra
[State -1]
type = ChangeState
value = 3200
triggerall = command = "supergarra"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = power >= 2000 
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;missil
[State -1]
type = ChangeState
value = 3400
triggerall = command = "missil"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = power >= 3000 
trigger1 = statetype = S
trigger1 = ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;Magia
[State -1]
type = ChangeState
value = 1000
triggerall = command = "dino"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;shockman
[State -1]
type = ChangeState
value = 1010
triggerall = command = "shockman"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;esquiva
[State -1]
type = ChangeState
value = 910
trigger1 = command = "esquiva"
trigger1 = statetype = S
trigger1 = ctrl = 1
;===========================================================================
;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_Y
[State -1]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;-------------------------------------------------------------------
;Stand_X
[State -1]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_x
[State -1]
type = ChangeState
value = 420
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_Y
[State -1]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 610
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1   

;---------------------------------------------------------------------------
;Jump_X
[State -1]
type = ChangeState
value = 620
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 630
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;taunt
[State -1]
type = ChangeState
value = 10000
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1
