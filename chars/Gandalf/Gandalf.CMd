; Final Update!

[Command]
name = "QCF2_x"
command = ~D, F, D, F, x
time = 22

[Command]
name = "QCF2_y"
command = ~D, F, D, F, y
time = 22

[Command]
name = "QCF2_z"
command = ~D, F, D, F, z
time = 22

[Command]
name = "QCB2_a"
command = ~D, B, D, B, a
time = 22

[Command]
name = "QCB2_b"
command = ~D, B, D, B, b
time = 22

[Command]
name = "QCB2_c"
command = ~D, B, D, B, c
time = 22

[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 22

[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 22

[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 22

;-| Special move |------------------------------------------------------------------
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

[Command]
name = "HCF_x"
command = ~B, D, F, x
time = 10

[Command]
name = "HCF_y"
command = ~B, D, F, y
time = 10

[Command]
name = "HCF_z"
command = ~B, D, F, z
time = 10

[Command]
name = "DP_x"
command = ~F, D, DF, x
time = 30

[Command]
name = "DP_y"
command = ~F, D, DF, y
time = 30
[Command]
name = "DP_z"
command = ~F, D, DF, z
time = 30

[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 10

[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 10

[Command]
name = "QCB_z"
command = ~D, DB, B, z
time = 10

[Command]
name = "QCB_a"
command = ~D, DB, B, a
time = 10

[Command]
name = "QCB_b"
command = ~D, DB, B, b
time = 10

[Command]
name = "QCB_c"
command = ~D, DB, B, c
time = 10

[Command]
name = "ZC_p"
command = ~B, D, x
time = 10

[Command]
name = "ZC_p"
command = ~B, D, y
time = 10

[Command]
name = "ZC_p"
command = ~B, D, z
time = 10

[Command]
name = "ZC_k"
command = ~B, D, a
time = 10

[Command]
name = "ZC_k"
command = ~B, D, b
time = 10

[Command]
name = "ZC_k"
command = ~B, D, c
time = 10

;-| Throw |-----------------------------------------------------------
[Command]
name = "fwdthrow_y"
command = /$F, y
time = 2

[Command]
name = "fwdthrow_z"
command = /$F, z
time = 2

[Command]
name = "fwdthrow_b"
command = /$F, b
time = 2

[Command]
name = "fwdthrow_c"
command = /$F, c
time = 2

[Command]
name = "backthrow_y"
command = /$B, y
time = 2

[Command]
name = "backthrow_z"
command = /$B, z
time = 2

[Command]
name = "backthrow_b"
command = /$B, b
time = 2

[Command]
name = "backthrow_c"
command = /$B, c
time = 2

[Command]
name = "longjump"
command = D, $U
time = 18

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"       ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"       ;Required (do not remove)
command = B, B
time = 10
 
;-| Throw Tap |------------------------------------------------------------
[Command]
name = "B&F"
command = B, F, B, F
time = 30

[Command]
name = "yyyy"
command = y, y, y, y
time = 30

[Command]
name = "zzzz"
command = z, z, z, z
time = 30

[Command]
name = "bbbb"
command = b, b, b, b
time = 30

[Command]
name = "cccc"
command = c, c, c, c
time = 30

[Command]
name = "bfp"
command = ~15$B,F,x
time = 20

[Command]
name = "bfp"
command = ~15$B,F,y
time = 20

[Command]
name = "bfp"
command = ~15$B,F,z
time = 20


;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1


[Command]
name = "start"
command = s
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

[Statedef -1]
;-| Super Move |-------------------------------
; Shinkuu Hadou ken (Light)


;Taunt
[State -1, Taunt]
type = ChangeState
value = 199
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;YOU SHALL NOT PASS!!!!!!!
[state -1]
type = changeState
value = 1200
trigger1 = command = "bfp"  && StateType != A && Power >= 1000 && stateno !=1200
trigger1 = ctrl = 1


; Fire Sword
[State -1]
type = ChangeState
value = 2500
triggerall = Command = "QCB_x" && StateType != A && Power >= 1000
trigger1 = Ctrl = 1


; Fire Sword
[State -1]
type = ChangeState
value = 2500
triggerall = Command = "QCB_y" && StateType != A && Power >= 1000
trigger1 = Ctrl = 1

; Fire Sword
[State -1]
type = ChangeState
value = 2500
triggerall = Command = "QCB_z" && StateType != A && Power >= 1000
trigger1 = Ctrl = 1

;Mind control
[State -1]
type = ChangeState
value = 1400
trigger1 = Ctrl = 1 && Command = "QCF_x" && p2stateno != 4006 && StateType != A

;Mind control
[State -1]
type = ChangeState
value = 1400
trigger1 = Ctrl = 1 && Command = "QCF_y" && p2stateno != 4006 && StateType != A

;Mind control
[State -1]
type = ChangeState
value = 1400
trigger1 = Ctrl = 1 && Command = "QCF_z" && p2stateno != 4006 && StateType != A

;CONJURER OF CHEAP TRICKS (GROW)
[State -1]
type = ChangeState
value = 1301
trigger1 = Ctrl = 1 && Command = "QCB_a"  && var(49) = 0

;CONJURER OF CHEAP TRICKS (GROW)
[State -1]
type = ChangeState
value = 1301
trigger1 = Ctrl = 1 && Command = "QCB_b"  && var(49) = 0

;CONJURER OF CHEAP TRICKS (GROW)
[State -1]
type = ChangeState
value = 1301
trigger1 = Ctrl = 1 && Command = "QCB_c"  && var(49) = 0

;FREEZE
[State -1]
type = ChangeState
value = 1300
trigger1 = Ctrl = 1 && Command = "QCF_a" && p2stateno != 4002 && p2stateno != 4003 && StateType != A

;FREEZE
[State -1]
type = ChangeState
value = 1300
trigger1 = Ctrl = 1 && Command = "QCF_b" && p2stateno != 4002 && p2stateno != 4003 && StateType != A

;FREEZE
[State -1]
type = ChangeState
value = 1300
trigger1 = Ctrl = 1 && Command = "QCF_c" && p2stateno != 4002 && p2stateno != 4003 && StateType != A


;-| Throw |-------------------------------
; Medium Forward Punch throw
;[State -1]
;type = ChangeState
;value = 800
;triggerall = statetype = S && ctrl = 1 && p2bodydist X < 10 && p2bodydist Y = 0 && Stateno != 100 && p2statetype != A && p2movetype != H
;trigger1 = command = "fwdthrow_y" && p2statetype = S
;trigger2 = command = "fwdthrow_y" && p2statetype = C
;
;; Hard Forward Punch throw
;[State -1]
;type = ChangeState
;value = 805
;triggerall = statetype = S && ctrl = 1 && p2bodydist X < 10 && p2bodydist Y = 0 && Stateno != 100 && p2statetype != A && p2movetype != H
;trigger1 = command = "fwdthrow_z" && p2statetype = S
;trigger2 = command = "fwdthrow_z" && p2statetype = C
;
;; Medium Backward Punch throw
;[State -1]
;type = ChangeState
;value = 801
;triggerall = statetype = S && ctrl = 1 && p2bodydist X < 10 && p2bodydist Y = 0 && Stateno != 100 && p2statetype != A && p2movetype != H
;trigger1 = command = "backthrow_y" && p2statetype = S
;trigger2 = command = "backthrow_y" && p2statetype = C
;
;; Hard Backward Punch throw
;[State -1]
;type = ChangeState
;value = 806
;triggerall = statetype = S && ctrl = 1 && p2bodydist X < 10 && p2bodydist Y = 0 && Stateno != 100 && p2statetype != A && p2movetype != H
;trigger1 = command = "backthrow_z" && p2statetype = S
;trigger2 = command = "backthrow_z" && p2statetype = C
;
;; Medium Forward Kick throw
;[State -1]
;type = ChangeState
;value = 810
;triggerall = statetype = S && ctrl = 1 && p2bodydist X < 10 && p2bodydist Y = 0 && Stateno != 100 && p2statetype != A && p2movetype != H
;trigger1 = command = "fwdthrow_b" && p2statetype = S
;trigger2 = command = "fwdthrow_b" && p2statetype = C
;
;; Hard Forward Kick throw
;[State -1]
;type = ChangeState
;value = 815
;triggerall = statetype = S && ctrl = 1 && p2bodydist X < 10 && p2bodydist Y = 0 && Stateno != 100 && p2statetype != A && p2movetype != H
;trigger1 = command = "fwdthrow_c" && p2statetype = S
;trigger2 = command = "fwdthrow_c" && p2statetype = C
;
;; Medium Backward Kick throw
;[State -1]
;type = ChangeState
;value = 811
;triggerall = statetype = S && ctrl = 1 && p2bodydist X < 10 && p2bodydist Y = 0 && Stateno != 100 && p2statetype != A && p2movetype != H
;trigger1 = command = "backthrow_b" && p2statetype = S
;trigger2 = command = "backthrow_b" && p2statetype = C
;
;; Hard Backward Kick throw
;[State -1]
;type = ChangeState
;value = 816
;triggerall = statetype = S && ctrl = 1 && p2bodydist X < 10 && p2bodydist Y = 0 && Stateno != 100 && p2statetype != A && p2movetype != H
;trigger1 = command = "backthrow_c" && p2statetype = S
;trigger2 = command = "backthrow_c" && p2statetype = C




;-| Normal Attack |-------------------------------
; Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = Command = "x"
trigger1 = Command != "holddown" && StateType = S && Ctrl = 1
trigger1 = stateno !=240
trigger2 = Stateno = 200 && time > 6
trigger3 = Stateno = 300 && time > 6 && P2bodydist X > 30

; Stand Medium Punch
[State -1]
type = ChangeState
value = 210
trigger1 = Command = "y" && Command != "holddown"  && StateType = S && Ctrl = 1
trigger1 = stateno !=240

; Stand Hard Punch
[State -1]
type = ChangeState
value = 220
trigger1 = Command = "z" && Command != "holddown" && StateType = S && Ctrl = 1
trigger1 = stateno !=240

; Stand Light Kick
[State -1]
type = ChangeState
value = 230
trigger1 = Command = "a" && Command != "holddown" && StateType = S && Ctrl = 1
trigger1 = stateno !=240

; Stand Medium Kick
[State -1]
type = ChangeState
value = 240
trigger1 = Command = "b" && Command != "holddown"  && StateType = S && Ctrl = 1
trigger1 = anim != 240

; follow up to 240
[State -1]
type = ChangeState
value = 241
triggerall = anim = 240
trigger1 = time > 10
;trigger2 = animelem = 7
trigger1 =  Command = "x" || Command = "y" || Command = "z"  

; follow up to 240
[State -1]
type = ChangeState
value = 242
triggerall = anim = 240
trigger1 = time > 10
;trigger2 = animelem = 7
trigger1 =  Command = "a" || Command = "b" || Command = "c"  



; Stand Hard Kick
[State -1]
type = ChangeState
value = 250
trigger1 = Command = "c" && Command != "holddown"  && StateType = S && Ctrl = 1
trigger1 = stateno !=240

; Close Light Punch
[State -1]
type = ChangeState
value = 300
triggerall = Command = "x"
trigger1 = Command != "holddown"  && StateType = S && Ctrl = 1
trigger1 = stateno !=240

; Close Medium Punch
[State -1]
type = ChangeState
value = 310
trigger1 = Command = "y" && Command != "holddown"  && StateType = S && Ctrl = 1
trigger1 = stateno !=240

; Close Hard Punch
[State -1]
type = ChangeState
value = 320
trigger1 = Command = "z" && Command != "holddown"  && StateType = S && Ctrl = 1
trigger1 = stateno !=240

; Close Light Kick
[State -1]
type = ChangeState
value = 330
trigger1 = Command = "a" && Command != "holddown"  && StateType = S && Ctrl = 1

; Close Medium Kick
[State -1]
type = ChangeState
value = 340
trigger1 = Command = "b" && Command != "holddown"  && StateType = S && Ctrl = 1
trigger1 = stateno !=240

; Close Hard Kick
[State -1]
type = ChangeState
value = 350
trigger1 = Command = "c" && Command != "holddown"  && StateType = S && Ctrl = 1
trigger1 = stateno !=240

; Crouch Light Punch
[State -1]
type = ChangeState
value = 430
triggerall = Command = "x"
trigger1 = Command = "holddown" && StateType = C && Ctrl = 1
trigger2 = Stateno = 400 && time > 6

; Crouch Medium Punch
[State -1]
type = ChangeState
value = 440
trigger1 = Command = "y" && Command = "holddown" && StateType = C && Ctrl = 1

; Crouch Hard Punch
[State -1]
type = ChangeState
value = 450
trigger1 = Command = "z" && Command = "holddown" && StateType = C && Ctrl = 1

; Crouch Light Kick
[State -1]
type = ChangeState
value = 430
triggerall = Command = "a"
trigger1 = Command = "holddown" && StateType = C && Ctrl = 1
trigger2 = Stateno = 430 && time > 6

; Crouch Medium Kick
[State -1]
type = ChangeState
value = 440
trigger1 = Command = "b" && Command = "holddown" && StateType = C && Ctrl = 1

; Crouch Hard Kick
[State -1]
type = ChangeState
value = 420
trigger1 = Command = "c" && Command = "holddown" && StateType = C && Ctrl = 1

; Jump Light Punch
[State -1]
type = ChangeState
value = 600
trigger1 = Command = "x" && StateType = A && Ctrl = 1

; Jump Medium Punch
[State -1]
type = ChangeState
value = 610
triggerall = Command = "y" && StateType = A && Ctrl = 1
trigger1 = Vel X = 0 && var(16) != 1
trigger2 = var(16) = 1

; Jump Fwd Medium Punch
[State -1]
type = ChangeState
value = 690
trigger1 = Command = "y" && StateType = A && Ctrl = 1 && Vel X != 0 && var(16) != 1

; Jump Hard Punch
[State -1]
type = ChangeState
value = 620
trigger1 = Command = "z" && StateType = A && Ctrl = 1

; Jump Light Kick
[State -1]
type = ChangeState
value = 600
trigger1 = Command = "a" && StateType = A && Ctrl = 1 && Vel X = 0

; Jump Medium Kick
[State -1]
type = ChangeState
value = 610
trigger1 = Command = "b" && StateType = A && Ctrl = 1 && Vel X = 0

; Jump Hard Kick
[State -1]
type = ChangeState
value = 620
trigger1 = Command = "c" && StateType = A && Ctrl = 1 && Vel X = 0

; Jump Fwd Light Kick
[State -1]
type = ChangeState
value = 690
trigger1 = Command = "a" && StateType = A && Ctrl = 1 && Vel X != 0

; Jump Fwd Medium Kick
[State -1]
type = ChangeState
value = 610
trigger1 = Command = "b" && StateType = A && Ctrl = 1 && Vel X != 0

; Jump Fwd Hard Kick
[State -1]
type = ChangeState
value = 620
trigger1 = Command = "c" && StateType = A && Ctrl = 1 && Vel X != 0


