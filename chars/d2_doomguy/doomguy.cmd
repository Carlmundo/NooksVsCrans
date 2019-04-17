; Command file for David Demianoff 's Flynn Taggart
; Please don't edit, thanks
;
;-| Item use |-------------------------------------------------------------
[Command]
name = "invul"
command = ~D, DB, B, D, DB, B, z
time = 30

[Command]
name = "life"
command = ~D, DF, F, D, DF, F, z
time = 30

;-| Super Motions |--------------------------------------------------------
[Command]
name = "rocket"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "bfg9000"
command = ~D, DF, F, D, DF, F, y
time = 30

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
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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
name = "holddownfwd";Required (do not remove)
command = /$DF
time = 1

[Statedef -1]

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;INVULNERABILITY ITEM (defence up)
[State -1,]
type = ChangeState
value = 2030
triggerall = command = "invul"
triggerall = var(10) >= 1
triggerall = var(11) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1

;SOULSPHERE ITEM (more life)
[State -1,]
type = ChangeState
value = 2020
triggerall = command = "life"
triggerall = var(10) >= 1
trigger1 = statetype != A
trigger1 = ctrl = 1

;Standing BFG9000
[State -1,]
type = ChangeState
value = 1100
triggerall = command = "bfg9000"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

;Standing ROCKET
[State -1,]
type = ChangeState
value = 1000
triggerall = command = "rocket"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Standing Pistol
[State -1,]
type = ChangeState
value = 200
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;Crouching Pistol
[State -1]
type = ChangeState
value = 400
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Jumping Pistol
[State -1]
type = ChangeState
value = 600
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Standing Chainsaw
[State -1,]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Crouching Chainsaw
[State -1]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Jumping Chainsaw
[State -1]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Standing Shotgun
[State -1,]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Crouching Shotgun
[State -1,]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Jumping Shotgun
[State -1,]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Standing Flamme shot
[State -1,]
type = ChangeState
value = 250
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = power >= 200
trigger1 = statetype = S
trigger1 = ctrl

;Crouching Flamme shot
[State -1,]
type = ChangeState
value = 450
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = power >= 200
trigger1 = statetype = C
trigger1 = ctrl

;Jumping Flamme shot
[State -1,]
type = ChangeState
value = 650
triggerall = command = "x"
triggerall = power >= 200
trigger1 = statetype = A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Standing PLASMA GUN
[State -1,]
type = ChangeState
value = 1010
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl

;Crouching PLASMA GUN
[State -1,]
type = ChangeState
value = 1020
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = power >= 500
trigger1 = statetype = C
trigger1 = ctrl

;Jumping PLASMA GUN
[State -1,]
type = ChangeState
value = 1030
triggerall = command = "y"
triggerall = power >= 500
trigger1 = statetype = A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Standing Chaingun
[State -1,]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl

;Standing SShotgun
[State -1,]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl

;Standing Chaingun (not 500)
[State -1,]
type = ChangeState
value = 200
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = power <= 500
trigger1 = statetype = S
trigger1 = ctrl

;Standing SShotgun (not 500)
[State -1,]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = power <= 500
trigger1 = statetype = S
trigger1 = ctrl