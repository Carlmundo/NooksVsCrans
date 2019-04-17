;--------------------------------------------------------------------------
;- AI and Super Command
[Command]
name = "start"
command = ~D, DF, F, b
time = 10

[Command]
name = "ai"
command = x,x,x,x,x,x,x,x,x,x,a+b+c+z+x+y
time = 1

[Command]
name = "ai1"
command = y,y,y,y,y,y,y,y,y,y,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai2"
command = U,U,U,U,U,U,U,U,U,U,U,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z,a+b+c+z+x+y+U+D+F+B
time = 1


[Command]
name = "ai4"
command = a,b,c,z,x,y,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai5"
command = U,D,F,B,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai6"
command = D,F,U,B,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai7"
command = x,D,x,D,x,D,x,D,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai8"
command = F,F,F,F,F,F,B,U,U,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai9"
command = F,F,F,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai10"
command = B,U,U,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai11"
command = F,F,F,B,U,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai12"
command = F,B,F,B,F,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai13"
command = x,y,z,a,b,c,a+b+c+z+x+y+U+D+F+B
time = 1

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+x
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
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1


;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /D
time = 1

[Command]
name = "diagup"
command = /UF
time = 1

[Command]
name = "diagdown"
command = /DF

[Command]
name = "bdiagup"
command = /UB
time = 1

[Command]
name = "bdiagdown"
command = /DB

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

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;---------------------------------------------------------------------------
; Dash Fwd
[State -1, Dash Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Dash Back
[State -1, Dash Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Dash Fwd Air
[State -1, Dash Fwd Air]
type = ChangeState
value = 101
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Dash Back Air
[State -1, Dash Back Air]
type = ChangeState
value = 106
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Jump]
type = ChangeState
trigger1 = command = "up"
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = stateno != [1000,1010]
trigger1 = stateno != 206
trigger1 = stateno != 207
trigger1 = roundstate = 2
value = 40

[State -1, Parry]
type = ChangeState
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = stateno != [1000,1010]
trigger1 = stateno != 53
trigger1 = stateno != 500
trigger1 = stateno != 501
trigger1 = roundstate = 2
value = 500


[State -1, Super Attack]
type = ChangeState
trigger1 = command = "c" || (var(58) = 100005)
trigger1 = statetype = S
trigger1 = movetype != H
trigger1 = power >= 500
trigger1 = ctrl
value = 1000

[State -1, AI Super]
type = ChangeState
value = 1000
triggerall = ctrl = 1
triggerall = Var(50) = 1
triggerall = time = 0
triggerall = random > 199 && random <= 999
triggerall = StateType = S
triggerall = roundstate != 4
triggerall = p2stateno = 9010
trigger1 = p2BodyDist X > 200
trigger2 = p2BodyDist X < 300

[State -1, Shoot Machine Gun]
type = ChangeState
trigger1 = command = "b" || command = "hold_b" || (var(58)  = 020506)
trigger1 = stateno != 205
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = movetype != H
value = 205

[State -1, Locking is important sometimes! :DDDD]
type = ChangeState
trigger1 = command = "a" || command = "hold_a" || (var(58)  = 020506)
trigger1 = stateno = 205
trigger1 = statetype = S
trigger1 = movetype != H
value = 206

[State -1, Lock Aim]
type = ChangeState
trigger1 = command = "a" || command = "hold_a"
trigger1 = statetype = S
trigger1 = movetype != H
trigger1 = stateno != 205
trigger1 = ctrl
value = 207

[State -1, Shoot Machine Gun]
type = ChangeState
triggerall = movetype != H
triggerall = stateno != [1000,1010]
trigger1 = command = "b" || (var(58) && 030100) = 030100
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = command = "holddown"
trigger2 = statetype != A
trigger2 = command = "hold_b"
trigger2 = stateno != 301
triggerall = stateno != 206
value = 301

[State -1, Shoot Machine Gun]
type = ChangeState
trigger1 = command = "b" || command = "hold_b"
trigger1 = ctrl
trigger1 = stateno != [400,420]
trigger1 = statetype = A
trigger1 = movetype != H
value = 405

[State -1, turn]
type = turn
triggerall = stateno != [1000,1010]
triggerall = stateno != 191
triggerall = stateno != 7000
trigger1 = command = "holdback"
trigger2 = command = "bdiagup"
trigger3 = command = "bdiagdown"

