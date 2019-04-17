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
name = "dangerous"
command = ~F, B, DB, D, DF, F, x+y+z
time = 30

[Command]
name = "rocket"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "rocket"
command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "rocket"
command = ~D, DB, B, D, DB, B, z
time = 30

[Command]
name = "linebomb"
command = ~D, DB, B, D, DF, F, x
time = 30

[Command]
name = "linebomb"
command = ~D, DB, B, D, DF, F, y
time = 30

[Command]
name = "linebomb"
command = ~D, DB, B, D, DF, F, z
time = 30

[Command]
name = "bpunch"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "bpunch"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "bpunch"
command = ~D, DF, F, D, DF, F, z
time = 30
;-| EX Motions |-----------------------------------------------------------
[Command]
name = "bthrowex"
command = ~B,D,DB,x+y

[Command]
name = "bthrowex"
command = ~B,D,DB,y+z

[Command]
name = "bthrowex"
command = ~B,D,DB,x+z

[Command]
name = "bjumpex"
command = ~F,D,DF,x+y

[Command]
name = "bjumpex"
command = ~F,D,DF,y+z

[Command]
name = "bjumpex"
command = ~F,D,DF,x+z

[Command]
name = "btackleex"
command = ~B,F,x+y

[Command]
name = "btackleex"
command = ~B,F,y+z

[Command]
name = "btackleex"
command = ~B,F,x+z

[Command]
name = "bkickex"
command = ~D,DB,B,x+y

[Command]
name = "bkickex"
command = ~D,DB,B,y+z

[Command]
name = "bkickex"
command = ~D,DB,B,x+z

[Command]
name = "bawayex"
command = ~D,DF,F,x+y

[Command]
name = "bawayex"
command = ~D,DF,F,y+z

[Command]
name = "bawayex"
command = ~D,DF,F,x+z
;-| Special Motions |------------------------------------------------------
[Command]
name = "bthrowx"
command = ~B,D,DB,x

[Command]
name = "bthrowy"
command = ~B,D,DB,y

[Command]
name = "bthrowz"
command = ~B,D,DB,z

[Command]
name = "bjump"
command = ~F,D,DF,x

[Command]
name = "bjump"
command = ~F,D,DF,y

[Command]
name = "bjump"
command = ~F,D,DF,z

[Command]
name = "remote"
command = ~D,D,a

[Command]
name = "btackle"
command = ~B,F,x

[Command]
name = "btackle"
command = ~B,F,y

[Command]
name = "btackle"
command = ~B,F,z

[Command]
name = "bkickx"
command = ~D,DB,B,x

[Command]
name = "bkicky"
command = ~D,DB,B,y

[Command]
name = "bkickz"
command = ~D,DB,B,z

[Command]
name = "bawayx"
command = ~D,DF,F,x

[Command]
name = "bawayy"
command = ~D,DF,F,y

[Command]
name = "bawayz"
command = ~D,DF,F,z
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

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
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
name = "holda" ;Required (do not remove)
command = /a
time = 1

[Command]
name = "longjump"
command = D, $U
time = 18
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
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Dangerous Bomb
[State -1]
type = ChangeState
value = 3500
triggerall = command = "dangerous"
triggerall = power  >= 3000
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Bomb Rocket
[State -1]
type = ChangeState
value = 3100
triggerall = command = "rocket"
triggerall = power  >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = [1000,1020]
trigger9 = stateno = [1100,1120]

;Line Bomb
[State -1]
type = ChangeState
value = 3000
triggerall = command = "linebomb"
triggerall = power  >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = [1000,1020]
trigger9 = stateno = [1100,1120]

;Bomb Punch
[State -1]
type = ChangeState
value = 3200
triggerall = command = "bpunch"
triggerall = power  >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = [1000,1020]
trigger9 = stateno = [1100,1120]
;-----------------------------------------------------------------------------
;Ex Bomberman Throw
[State -1]
type = ChangeState
value = 1550
triggerall = command = "bthrowex"
triggerall = power >= 500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
;Ex Bomb Jump
[State -1]
type = ChangeState
value = 1450
triggerall = command = "bjumpex"
triggerall = power >= 500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
;Ex Bomb Tackle
[State -1]
type = ChangeState
value = 1250
triggerall = command = "btackleex"
triggerall = power >= 500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
;Ex Bomb Kick
[State -1]
type = ChangeState
value = 1150
triggerall = command = "bkickex"
triggerall = power >= 500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
;Ex Bomb Away
[State -1]
type = ChangeState
value = 1050
triggerall = command = "bawayex"
triggerall = power >= 500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
; Bomb Throw
[State -1]
type = ChangeState
value = 1500
triggerall = command = "bthrowx"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact

[State -1]
type = ChangeState
value = 1510
triggerall = command = "bthrowy"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact

[State -1]
type = ChangeState
value = 1520
triggerall = command = "bthrowz"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
; Bomb Jump
[State -1]
type = ChangeState
value = 1400
triggerall = command = "bjump"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
;Remote Bomb
[State -1]
type = ChangeState
value = 1300
;triggerall = !numhelper
triggerall = command = "remote"
triggerall = statetype != A
triggerall = NumHelper(1305) >= 0 && NumHelper(1305) < 5
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
;Bomb Tackle 1
[State -1]
type = ChangeState
value = 1200
;triggerall = !numhelper
triggerall = command = "btackle"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
;Bomb Kick 1
[State -1]
type = ChangeState
value = 1100
triggerall = NumHelper(1305) < 5
triggerall = command = "bkickx"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
;Bomb Kick 2
[State -1]
type = ChangeState
value = 1110
triggerall = NumHelper(1305) < 5
triggerall = command = "bkicky"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
;Bomb Kick 3
[State -1]
type = ChangeState
value = 1120
triggerall = NumHelper(1305) < 5
triggerall = command = "bkickz"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
;Bomb Away 1
[State -1]
type = ChangeState
value = 1000
triggerall = NumHelper(1305) < 5
triggerall = command = "bawayx"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
;Bomb Away 2
[State -1]
type = ChangeState
value = 1010
triggerall = NumHelper(1305) < 5
triggerall = command = "bawayy"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
;Bomb Away 3
[State -1]
type = ChangeState
value = 1020
triggerall = NumHelper(1305) < 5
triggerall = command = "bawayz"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = !var(58)
triggerall = command = "y" && command = "z" || command = "c"
trigger1 = statetype != A
trigger1 = ctrl
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

;---------------------------------------------------------------------------
;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = !var(58)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Backward Dodge
[State -1]
type = ChangeState
value = 256
triggerall = !var(58)
triggerall = command = "x" && command = "y" || command = "b"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Forward Dodge 
[State -1]
type = ChangeState
value = 255
triggerall = !var(58)
triggerall = command = "x" && command = "y" || command = "b"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_Weak_Attack
[State -1]
type = ChangeState
value = 200
triggerall = !var(58)
triggerall = command = "x"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
 ;The following is true if Player is in stand state, and has control
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand_Medium_Attack
[State -1]
type = ChangeState
value = 210
triggerall = !var(58)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
;trigger3 = stateno = 400
;trigger3 = movecontact
;---------------------------------------------------------------------------
;Stand_Strong_Attack
[State -1]
type = ChangeState
value = 220
triggerall = !var(58)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
;---------------------------------------------------------------------------
;Stand_Special_Attack
[State -1]
type = ChangeState
value = 230
triggerall = !var(58)
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = !NumHelper(1305) = 0
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Crouch_Light_Attack
[State -1]
type = ChangeState
value = 400
triggerall = !var(58)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Crouch_Medium_Attack
[State -1]
type = ChangeState
value = 410
triggerall = !var(58)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
;---------------------------------------------------------------------------
;Crouch_Strong_Attack
[State -1]
type = ChangeState
value = 420
triggerall = !var(58)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
;---------------------------------------------------------------------------
;Crouch_Special_Attack
[State -1]
type = ChangeState
value = 430
triggerall = !var(58)
triggerall = command = "a"
triggerall = command = "holddown"
;triggerall = NumHelper(235) = 0
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump_Light_Punch
[State -1]
type = ChangeState
value = 600
triggerall = !var(58)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump_Hard_Punch
[State -1]
type = ChangeState
value = 610
triggerall = !var(58)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
;--------------------------------------------------------------------------
;Jump_Light_Kick
[State -1]
type = ChangeState
value = 620
triggerall = !var(58)
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
;--------------------------------------------------------------------------
;Jump_Special_Attack
[State -1]
type = ChangeState
value = 630
triggerall = !var(58)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;--------------------------------------------------------------------------
