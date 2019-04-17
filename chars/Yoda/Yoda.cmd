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
command.time = 12

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 5



;-| Special Motions |------------------------------------------------------
;ƒ_ƒbƒVƒ…ƒXƒgƒŒ[ƒg

[Command]
name = "B_z"
command = /$B, z
time = 10

[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 10

[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 10

[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 10

[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 10

[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 10

[Command]
name = "QCF_z"
command = ~D, DF, F, z
time = 10


;
;[Command]
;name = "ƒ_ƒbƒVƒ…ƒXƒgƒŒ[ƒgŽã"
;command = ~D, DB, B, x
;
;[Command]
;name = "ƒ_ƒbƒVƒ…ƒXƒgƒŒ[ƒg’†"
;command = ~D, DB, B, y
;
;[Command]
;name = "ƒ_ƒbƒVƒ…ƒXƒgƒŒ[ƒg‹­"
;command = ~D, DB, B, z
;
;
;;ƒ_ƒbƒVƒ…ƒAƒbƒp[
;[Command]
;name = "ƒ_ƒbƒVƒ…ƒAƒbƒp[Žã"
;command = ~D, DB, B, a
;
;[Command]
;name = "ƒ_ƒbƒVƒ…ƒAƒbƒp[’†"
;command = ~D, DB, B, b
;
;[Command]
;name = "ƒ_ƒbƒVƒ…ƒAƒbƒp[‹­"
;command = ~D, DB, B, c
;
;
;;ƒ^[ƒ“ƒpƒ“ƒ`
;[Command]
;name = "ƒ^[ƒ“ƒpƒ“ƒ`"
;command = ~D, DF, F, x
;
;[Command]
;name = "ƒ^[ƒ“ƒpƒ“ƒ`"
;command = ~D, DF, F, y
;
;[Command]
;name = "ƒ^[ƒ“ƒpƒ“ƒ`"
;command = ~D, DF, F, z


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = x+y
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = ~B, B
time = 10

[Command]
name = "DU"     ;Required (do not remove)
command = $D, $U
time = 15

;-| 2/3 Button Combination |-----------------------------------------------


[Command]
name = "roll";Required (do not remove)
command = ~F, F
time = 20

[Command]
name = "forcelift";Required (do not remove)
command = a+b
time = 5

[Command]
name = "recovery";Redundant (caused probs removing so gave obscure command instead)
command = x+b+z
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
;   - StateType
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


[State -1, Taunt]
type = ChangeState
value = 199
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "start"

;[State -1, 0]
;type = ChangeState
;value = 4700
;triggerall = command = "B_z"
;trigger1 = StateType != A
;trigger1 = ctrl
;trigger1 = life<500
;trigger1 = var(47)<=2
;trigger1 = life < 500
;===========================================================================
;---------------------------------------------------------------------------
;ƒ^[ƒ“ƒpƒ“ƒ`
;[State -1, 0]
;type = ChangeState
;value = 1200
;triggerall = command = "ƒ^[ƒ“ƒpƒ“ƒ`"
;trigger1 = StateType != A
;trigger1 = ctrl

---------------------------------------------------------------------------
; Hadou ken (Light)
[State -1]
type = ChangeState
value = 1079
triggerall = Command = "QCF_a" && StateType != A && Numproj = 0
trigger1 = Ctrl = 1
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 300 && movecontact = 1
trigger4 = stateno = 310 && movecontact = 1
trigger5 = stateno = 320 && time < 6 && movecontact = 1
trigger6 = stateno = 340 && movecontact = 1
trigger7 = stateno = 400 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 420 && time < 7 && movecontact = 1
trigger10 = stateno = 430 && var(11) < 2 && movecontact = 1
trigger11 = stateno = 440 && movecontact = 1
trigger12 = stateno = 450 && time < 9 && movecontact = 1

; Hadou ken (Medium)
[State -1]
type = ChangeState
value = 1078
triggerall = Command = "QCF_b" && StateType != A && Numproj = 0
trigger1 = Ctrl = 1
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 300 && movecontact = 1
trigger4 = stateno = 310 && movecontact = 1
trigger5 = stateno = 320 && time < 6 && movecontact = 1
trigger6 = stateno = 340 && movecontact = 1
trigger7 = stateno = 400 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 420 && time < 7 && movecontact = 1
trigger10 = stateno = 430 && var(11) < 2 && movecontact = 1
trigger11 = stateno = 440 && movecontact = 1
trigger12 = stateno = 450 && time < 9 && movecontact = 1

; Hadou ken (Hard)
[State -1]
type = ChangeState
value = 1077
triggerall = Command = "QCF_c" && StateType != A && Numproj = 0
trigger1 = Ctrl = 1
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 300 && movecontact = 1
trigger4 = stateno = 310 && movecontact = 1
trigger5 = stateno = 320 && time < 6 && movecontact = 1
trigger6 = stateno = 340 && movecontact = 1
trigger7 = stateno = 400 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 420 && time < 7 && movecontact = 1
trigger10 = stateno = 430 && var(11) < 2 && movecontact = 1
trigger11 = stateno = 440 && movecontact = 1
trigger12 = stateno = 450 && time < 9 && movecontact = 1



[State -1, Jump Light Kick]
type = ChangeState
value = 216
triggerall = command = "QCF_x"
trigger1 = StateType != A
trigger1 = ctrl =1
trigger1 = roundno>1

[State -1, Jump Light Kick]
type = ChangeState
value = 212
triggerall = command = "QCF_y"
trigger1 = StateType != A
trigger1 = ctrl =1
trigger1 = roundno>1

[State -1, Jump Light Kick]
type = ChangeState
value = 217
triggerall = command = "QCF_z"
trigger1 = StateType != A
trigger1 = ctrl =1
trigger1 = roundno>1



;ƒ_ƒbƒVƒ…ƒXƒgƒŒ[ƒg
;[State -1, 0]
;type = ChangeState
;value = 1000
;triggerall = command = "ƒ_ƒbƒVƒ…ƒXƒgƒŒ[ƒgŽã"
;trigger1 = StateType != A
;trigger1 = ctrl
;
;[State -1, 0]
;type = ChangeState
;value = 1020
;triggerall = command = "ƒ_ƒbƒVƒ…ƒXƒgƒŒ[ƒg’†"
;trigger1 = StateType != A
;trigger1 = ctrl
;
;[State -1, 0]
;type = ChangeState
;value = 1040
;triggerall = command = "ƒ_ƒbƒVƒ…ƒXƒgƒŒ[ƒg‹­"
;trigger1 = StateType != A
;trigger1 = ctrl

---------------------------------------------------------------------------
;ƒ_ƒbƒVƒ…ƒAƒbƒp[
;[State -1, 0]
;type = ChangeState
;value = 1100
;triggerall = command = "ƒ_ƒbƒVƒ…ƒAƒbƒp[Žã"
;trigger1 = StateType != A
;trigger1 = ctrl
;
;[State -1, 0]
;type = ChangeState
;value = 1120
;triggerall = command = "ƒ_ƒbƒVƒ…ƒAƒbƒp[’†"
;trigger1 = StateType != A
;trigger1 = ctrl
;
;[State -1, 0]
;type = ChangeState
;value = 1140
;triggerall = command = "ƒ_ƒbƒVƒ…ƒAƒbƒp[‹­"
;trigger1 = StateType != A
;trigger1 = ctrl

;===========================================================================
;--------------------------------------------------------------------------

[State -1, HELP ME OBI WAN KENOBI]
type = ChangeState
triggerall = command = "B_z"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl
trigger1 = var(47)<1
value = ifelse(roundno =1,0,3600)


;—§‚¿Žãƒpƒ“ƒ`
[State -1, Stand Light Punch]
type = ChangeState
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl
value = ifelse(roundno =1,200,211)


;—§‚¿’†ƒpƒ“ƒ`
[State -1, Stand Light Punch]
type = ChangeState
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl
value = ifelse(roundno =1,250,310)


;—§‚¿‹­ƒpƒ“ƒ`
[State -1, Stand Light Punch]
type = ChangeState
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl
value = ifelse(roundno >1,400,ifelse(abs(p2dist x - frontedgedist)> 60,220,0))

[State -1, Stand Light Punch]
type = ChangeState
value = 210
triggerall = command = "forcelift"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 215
triggerall = command = "roll"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = roundno>1
trigger1 = ctrl




;---------------------------------------------------------------------------
;—§‚¿ŽãƒLƒbƒN
[State -1, Stand Light Kick]
type = ChangeState
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl
value = ifelse(roundno =1,230,1000)

;—§‚¿’†ƒLƒbƒN
[State -1, Stand Light Kick]
type = ChangeState
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl
value = ifelse(roundno =1,240,300)

;—§‚¿‹­ƒLƒbƒN
[State -1, Stand Light Kick]
type = ChangeState
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl
value = ifelse(roundno =1,214,1200)

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚ÝŽãƒpƒ“ƒ`
[State -1, crouch Light Punch]
type = ChangeState
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = StateType = C
trigger1 = ctrl
value = ifelse(roundno =1,230,211)


;—§‚¿’†ƒpƒ“ƒ`
[State -1, crouch Light Punch]
type = ChangeState
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = StateType = C
trigger1 = ctrl
value = ifelse(roundno =1,230,310)


;—§‚¿‹­ƒpƒ“ƒ`
[State -1, crouch Light Punch]
type = ChangeState
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = StateType = C
trigger1 = ctrl
value = ifelse(roundno =1,250,400)

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚ÝŽãƒLƒbƒN
[State -1, crouch Light Kick]
type = ChangeState
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = StateType = C
trigger1 = ctrl
value = ifelse(roundno =1,230,213)

;—§‚¿’†ƒLƒbƒN
[State -1, crouch Light Kick]
type = ChangeState
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = StateType = C
trigger1 = ctrl
value = ifelse(roundno =1,230,218)

;—§‚¿‹­ƒLƒbƒN
[State -1, crouch Light Kick]
type = ChangeState
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = StateType = C
trigger1 = ctrl
value = ifelse(roundno =1,1010,300)

;---------------------------------------------------------------------------
;ƒWƒƒƒ“ƒvŽãƒpƒ“ƒ`
[State -1, Jump Light Punch]
type = ChangeState
value = 44
triggerall = command = "x"
trigger1 = StateType = A
trigger1 = ctrl
trigger1 = roundno>1

ƒWƒƒƒ“ƒv’†ƒpƒ“ƒ`
[State -1, Jump Light Punch]
type = ChangeState
value = 44
triggerall = command = "y"
trigger1 = StateType = A
trigger1 = ctrl
trigger1 = roundno>1

;ƒWƒƒƒ“ƒv‹­ƒpƒ“ƒ`
[State -1, Jump Light Punch]
type = ChangeState
value = 44
triggerall = command = "z"
trigger1 = StateType = A
trigger1 = ctrl
trigger1 = roundno>1
;---------------------------------------------------------------------------
;ƒWƒƒƒ“ƒvŽãƒLƒbƒN
[State -1, Jump Light Kick]
type = ChangeState
value = 44
triggerall = command = "a"
trigger1 = StateType = A
trigger1 = ctrl
trigger1 = roundno>1

;ƒWƒƒƒ“ƒv’†ƒLƒbƒN
[State -1, Jump Light Kick]
type = ChangeState
value = 44
triggerall = command = "b"
trigger1 = StateType = A
trigger1 = ctrl
trigger1 = roundno>1

;ƒWƒƒƒ“ƒv‹­ƒLƒbƒN
[State -1, Jump Light Kick]
type = ChangeState
value = 44
triggerall = command = "c"
trigger1 = StateType = A
trigger1 = ctrl =1
trigger1 = roundno>1

