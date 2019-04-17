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
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "HyperBeam"
command = D,DF,F,x+y
time = 30

[Command]
name = "Hyper1"
command = ~D,DF,F,D,DF,x
time = 30

[Command]
name = "Hyper2"
command = ~D,DF,F,D,DF,y
time = 30

[Command]
name = "Hyper3"
command = ~D,DF,F,D,DF,z
time = 30

[Command]
name = "Sleep"
command = D,DB,B,a+b
time = 30
;-| Special Motions |------------------------------------------------------

[Command]
name = "Throw"
command = z
time = 10

[Command]
name = "Super_punch1"
command = D,B,x
time = 30

[Command]
name = "Super_punch2"
command = D,B,y
time = 30

[Command]
name = "Super_kick1"
command = ~30$B,F,a
time = 30


[Command]
name = "Super_kick2"
command = ~30$B,F,b
time = 30


[Command]
name = "Stoss"
command = D,F,x
time = 30

[Command]
name = "Stoss2"
command = D,F,y
time = 30

[Command]
name = "Muk"
command = c+z
time = 10

[Command]
name = "Touras"
command = c+z
time = 10

[Command]
name = "Mr.Mime"
command = c+z
time = 10

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

[Command]
name = "Counter"
command = a+x
time = 10

[Command]
name = "Charge"
command = a+c
time = 10


[Command]
name = "Roll/Dodge"
command = b+y
time = 10

[Command]
name = "Roll/Dodge2"
command = F,b+y
time = 30

[Command]
name = "Roll/Dodge3"
command = B,b+y
time = 30

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

;-| Single Dir |------------------------------------------------------------
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

;Sleep
[State -1, Sleep]
type = ChangeState
value = 330
triggerall = command = "Sleep"
triggerall = Life<500
triggerall = power>=3000
trigger1 = (statetype = s) && ctrl

;Charge
[State -1, Charge]
type = ChangeState
value = 4005
triggerall = command = "Charge"
triggerall = power<3000
trigger1 = (statetype = s) && ctrl


;Roll/Dodge2
[State -1, Roll/Dodge2]
type = ChangeState
value = 321
triggerall = command = "Roll/Dodge2"
trigger1 = (statetype = s) && ctrl

;Roll/Dodge3
[State -1, Roll/Dodge3]
type = ChangeState
value = 322
triggerall = command = "Roll/Dodge3"
trigger1 = (statetype = s) && ctrl

;Roll/Dodge
[State -1, Roll/Dodge]
type = ChangeState
value = 320
triggerall = command = "Roll/Dodge"
trigger1 = (statetype = s) && ctrl

;Counter
[State -1, Counter]
type = ChangeState
value = 310
triggerall = command = "Counter"
trigger1 = (statetype = s) && ctrl

;Stoss
[State -1, Stoss]
type = ChangeState
value = 8000
triggerall = command = "Stoss"
trigger1 = (statetype = s) && ctrl
trigger1 = p2bodydist X < 10
triggerall=command!="HyperBeam"
triggerall=command!="Hyper1"
triggerall=command!="Hyper2"
triggerall=command!="Hyper3"


;Stoss2
[State -1, Stoss2]
type = ChangeState
value = 8005
triggerall = command = "Stoss2"
trigger1 = (statetype = s) && ctrl
trigger1 = p2bodydist X < 10
triggerall=command!="HyperBeam"
triggerall=command!="Hyper1"
triggerall=command!="Hyper2"
triggerall=command!="Hyper3"



;HyperBeam
[State -1, HyperBeam]
type = ChangeState
value = 700
triggerall = command = "HyperBeam"
trigger1 = (statetype = s) && ctrl
trigger1 = power>=1500

;Hyper1
[State -1, Hyper1]
type = ChangeState
value = 705
triggerall = command = "Hyper1"
trigger1 = (statetype = s) && ctrl
trigger1 = power>=1000


;Hyper2
[State -1, Hyper2]
type = ChangeState
value = 706
triggerall = command = "Hyper2"
trigger1 = (statetype = s) && ctrl
trigger1 = power>=2000

;Hyper3
[State -1, Hyper3]
type = ChangeState
value = 707
triggerall = command = "Hyper3"
trigger1 = (statetype = s) && ctrl
trigger1 = power>=3000

;Super_punch1
[State -1, Super_punch1]
type = ChangeState
value = 300
triggerall = command = "Super_punch1"
trigger1 = (statetype = s) && ctrl

;Super_punch2
[State -1, Super_punch2]
type = ChangeState
value = 301
triggerall = command = "Super_punch2"
trigger1 = (statetype = s) && ctrl

;Super_kick1
[State -1, Super_kick1]
type = ChangeState
value = 305
triggerall = command = "Super_kick1"
trigger1 = (statetype = s) && ctrl

;Super_kick2
[State -1, Super_kick2]
type = ChangeState
value = 306
triggerall = command = "Super_kick2"
trigger1 = (statetype = s) && ctrl

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;-----------------

; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl
trigger1 = !command = "Muk"
trigger1 = !command = "Touras"
trigger1 = !command = "Mr.Mime"
trigger1 = command = "Throw"
trigger1 = statetype != A
trigger1 = p2bodydist X < 10

