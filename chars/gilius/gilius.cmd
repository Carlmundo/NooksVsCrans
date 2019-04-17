; The CMD file.

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------
;-----------------

[Command]
name = "ga"
command = ~F, D, DF, a


;-----------------
; QCF

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_c"
command = ~D, DF, F, c


;-----------------
; QCB
[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_c"
command = ~D, DB, B, c


[Command]
name = "ab1"
command = /a,b
time = 1

[Command]
name = "ab2"
command = /b,a
time = 1


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "u_a"
command = /U,a
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1


;-| Dummy |--------------------------------------------------------------

[Command]
name = "dummy1"
command = x, x, x
time = 1

[Command]
name = "dummy2"
command = y, y, y
time = 1

[Command]
name = "dummy3"
command = z, z, z
time = 1

[Command]
name = "dummy4"
command = a, a, a
time = 1

[Command]
name = "dummy5"
command = b, b, b
time = 1

[Command]
name = "dummy6"
command = c, c, c
time = 1

[Command]
name = "dummy7"
command = a, a, b
time = 1

[Command]
name = "dummy8"
command = a, b, a
time = 1

[Command]
name = "dummy9"
command = a, b, b
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
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
;ギリアスアッパー
[State -1]
type = ChangeState
value = 1500
triggerall = command = "ga"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;回転蹴り
[State -1]
type = ChangeState
value = 350
triggerall = command = "QCB_a"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;回転斬り
[State -1]
type = ChangeState
value = 270
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "ab"
trigger2 = command = "ab1"
trigger3 = command = "ab2"

;---------------------------------------------------------------------------
;気孔砲
[State -1]
type = ChangeState
value = 1000
triggerall = command = "QCF_a"
trigger1 = statetype = S
trigger1 = ctrl = 1



;---------------------------------------------------------------------------
;アックス・バトラー
[State -1]
type = ChangeState
value = 2000
triggerall = command = "QCF_c"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ティルス・フレアー
[State -1]
type = ChangeState
value = 2050
triggerall = command = "QCB_c"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;弓矢
[State -1]
type = ChangeState
value = 1600
triggerall = command = "u_a"
trigger1 = var(16) < 5
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;蹴り
[State -1]
type = ChangeState
value = 250
triggerall = command = "u_a"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;only cpu
[State -1]
type = ChangeState
value = 1111
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "dummy1"
trigger2 = command = "dummy4"

;---------------------------------------------------------------------------
;only cpu
[State -1]
type = ChangeState
value = 1111
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "dummy2"
trigger2 = command = "dummy5"

;---------------------------------------------------------------------------
;only cpu
[State -1]
type = ChangeState
value = 1111
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "dummy3"
trigger2 = command = "dummy6"

;---------------------------------------------------------------------------
;only cpu 弓矢
[State -1]
type = ChangeState
value = 1600
triggerall = var(16) < 5
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "dummy7"


;---------------------------------------------------------------------------
;only cpu 弓矢
[State -1]
type = ChangeState
value = 1600
triggerall = var(16) < 5
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "dummy8"


;---------------------------------------------------------------------------
;only cpu 弓矢
[State -1]
type = ChangeState
value = 1600
triggerall = var(16) < 5
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "dummy9"

;---------------------------------------------------------------------------
;投げ
[State -1]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = command = "fwd_a"
triggerall = stateno != 100
trigger1 = p2bodydist X < 8
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = p2bodydist X < 8
trigger2 = p2statetype = C
trigger2 = p2movetype != H



;---------------------------------------------------------------------------
;斧　基本2
[State -1]
type = ChangeState
value = 1220
triggerall = command = "a"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = NumExplod(1200) = 1

;---------------------------------------------------------------------------
;斧　柄攻撃
[State -1]
type = ChangeState
value = 1230
triggerall = command = "a"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = NumExplod(1220) = 1
trigger1 = P2bodydist X >= 6
trigger1 = P2bodydist X <= 24

;---------------------------------------------------------------------------
;斧　柄攻撃2
[State -1]
type = ChangeState
value = 1232
triggerall = command = "a"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = NumExplod(1230) = 1
trigger1 = P2bodydist X >= 6
trigger1 = P2bodydist X <= 24

;---------------------------------------------------------------------------
;斧　振り下ろし
[State -1]
type = ChangeState
value = 1240
triggerall = command = "a"
triggerall = stateno != 100
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = P2bodydist X >= 25
trigger1 = NumExplod(1220) = 1
trigger2 = P2bodydist X >= 25
trigger2 = NumExplod(1230) = 1
trigger3 = P2bodydist X >= 25
trigger3 = NumExplod(1232) = 1
trigger4 = p2statetype = A
trigger4 = NumExplod(1220) = 1
trigger5 = p2statetype = A
trigger5 = NumExplod(1230) = 1
trigger6 = p2statetype = A
trigger6 = NumExplod(1232) = 1

;---------------------------------------------------------------------------
;斧　コンボ　蹴り
[State -1]
type = ChangeState
value = 250
triggerall = command = "a"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = NumExplod(1232) = 1
trigger1 = P2bodydist X >= 6
trigger1 = P2bodydist X <= 24

;---------------------------------------------------------------------------
;斧　コンボ　投げ
[State -1]
type = ChangeState
value = 900
triggerall = command = "a"
triggerall = stateno != 100
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X <= 5
trigger1 = NumExplod(1220) = 1
trigger2 = NumExplod(1230) = 1
trigger3 = NumExplod(1232) = 1


;---------------------------------------------------------------------------
;斧　基本
[State -1]
type = ChangeState
value = 1200
triggerall = command = "a"
triggerall = stateno != 100
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = NumExplod(1200) = 0
trigger1 = NumExplod(1220) = 0
trigger1 = NumExplod(1230) = 0
trigger1 = NumExplod(1232) = 0


;---------------------------------------------------------------------------
;チキンレッグ
[State -1]
type = ChangeState
value = 3500
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;ドラゴン
[State -1]
type = ChangeState
value = 3700
triggerall = command = "z"
trigger1 = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;魔法
[State -1]
type = ChangeState
value = 3000
triggerall = command = "c"
trigger1 = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;タックル
[State -1]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = stateno = 100
trigger1 = statetype = S
trigger1 = ctrl = 1







;---------------------------------------------------------------------------
;jump up
[State -1]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno != 20
trigger1 = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;jump fwd
[State -1]
type = ChangeState
value = 801
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = stateno = 20
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;jump back
[State -1]
type = ChangeState
value = 802
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command = "holdback"
trigger1 = stateno = 20
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;jump back
[State -1]
type = ChangeState
value = 810
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 100
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;holdup
[State -1]
type = ChangeState
value = 0
trigger1 = command = "holdup"
trigger1 = statetype = S
trigger1 = ctrl = 1


