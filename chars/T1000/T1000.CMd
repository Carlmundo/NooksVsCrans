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
name = "QCF2_a"
command = ~D, F, D, F, a
time = 22

[Command]
name = "QCF2_b"
command = ~D, F, D, F, b
time = 22

[Command]
name = "QCF2_c"
command = ~D, F, D, F, c
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
name = "fwdthrow_a"
command = /$F, a
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

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
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
name = "ab"
command = a+b
time = 1

[Command]
name = "xy"
command = x+y
time = 1


[Command]
name = "FF"    
command = F, F
time = 30

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

[Command]
name = "backforwarda" ;Required (do not remove)
command = ~10$B,F,a
time = 20

[Command]
name = "backforwardb" ;Required (do not remove)
command = ~10$B,F,b
time = 20

[Command]
name = "backforwardc" ;Required (do not remove)
command = ~10$B,F,c
time = 20



[Statedef -1]
;-| Super Move |-------------------------------
; Shinkuu Hadou ken (Light)

[State -1, Taunt]
type = ChangeState
value = 199
;triggerall = !Var(59)
triggerall = ctrl = 1
trigger1 = command = "start"
trigger1 = statetype != A
trigger1 = stateno = 0



; Shoot Gun
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "QCF_x" && StateType != A 
trigger1 = Ctrl = 1


; Shoot Gun
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "QCF_y" && StateType != A 
trigger1 = Ctrl = 1


; Shoot Gun
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "QCF_z" && StateType != A 
trigger1 = Ctrl = 1

;
;; Shinkuu Tatsumaki Senpuu Kyaku (Light)
;[State -1]
;type = ChangeState
;value = 2100
;triggerall = Command = "QCB2_a" && StateType != A && Power >= 1000 && var(16) != 1
;trigger1 = Ctrl = 1
;trigger2 = stateno = 200 && movecontact = 1
;trigger3 = stateno = 300 && movecontact = 1
;trigger4 = stateno = 310 && movecontact = 1
;trigger5 = stateno = 320 && time < 6 && movecontact = 1
;trigger6 = stateno = 340 && movecontact = 1
;trigger7 = stateno = 400 && movecontact = 1
;trigger8 = stateno = 410 && movecontact = 1
;trigger9 = stateno = 420 && time < 7 && movecontact = 1
;trigger10 = stateno = 430 && var(11) < 2 && movecontact = 1
;trigger11 = stateno = 440 && movecontact = 1
;trigger12 = stateno = 450 && time < 9 && movecontact = 1
;trigger13 = stateno = 220 && movecontact = 1
;
;; Shinkuu Tatsumaki Senpuu Kyaku (Medium)
;[State -1]
;type = ChangeState
;value = 2100
;triggerall = Command = "QCB2_b" && StateType != A && Power >= 1000 && var(16) != 1
;trigger1 = Ctrl = 1
;trigger2 = stateno = 200 && movecontact = 1
;trigger3 = stateno = 300 && movecontact = 1
;trigger4 = stateno = 310 && movecontact = 1
;trigger5 = stateno = 320 && time < 6 && movecontact = 1
;trigger6 = stateno = 340 && movecontact = 1
;trigger7 = stateno = 400 && movecontact = 1
;trigger8 = stateno = 410 && movecontact = 1
;trigger9 = stateno = 420 && time < 7 && movecontact = 1
;trigger10 = stateno = 430 && var(11) < 2 && movecontact = 1
;trigger11 = stateno = 440 && movecontact = 1
;trigger12 = stateno = 450 && time < 9 && movecontact = 1
;trigger13 = stateno = 220 && movecontact = 1
;
;; Shinkuu Tatsumaki Senpuu Kyaku (Hard)
;[State -1]
;type = ChangeState
;value = 2100
;triggerall = Command = "QCB2_c" && StateType != A && Power >= 1000 && var(16) != 1
;trigger1 = Ctrl = 1
;trigger2 = stateno = 200 && movecontact = 1
;trigger3 = stateno = 300 && movecontact = 1
;trigger4 = stateno = 310 && movecontact = 1
;trigger5 = stateno = 320 && time < 6 && movecontact = 1
;trigger6 = stateno = 340 && movecontact = 1
;trigger7 = stateno = 400 && movecontact = 1
;trigger8 = stateno = 410 && movecontact = 1
;trigger9 = stateno = 420 && time < 7 && movecontact = 1
;trigger10 = stateno = 430 && var(11) < 2 && movecontact = 1
;trigger11 = stateno = 440 && movecontact = 1
;trigger12 = stateno = 450 && time < 9 && movecontact = 1
;trigger13 = stateno = 220 && movecontact = 1
;
;; Shin Shouryuu ken (Light)
;[State -1]
;type = ChangeState
;value = 2200
;triggerall = Command = "QCF2_a" && StateType != A && Power = 3000 && var(16) != 1
;trigger1 = Ctrl = 1
;trigger2 = stateno = 200 && movecontact = 1
;trigger3 = stateno = 300 && movecontact = 1
;trigger4 = stateno = 310 && movecontact = 1
;trigger5 = stateno = 320 && time < 6 && movecontact = 1
;trigger6 = stateno = 340 && movecontact = 1
;trigger7 = stateno = 400 && movecontact = 1
;trigger8 = stateno = 410 && movecontact = 1
;trigger9 = stateno = 420 && time < 7 && movecontact = 1
;trigger10 = stateno = 430 && var(11) < 2 && movecontact = 1
;trigger11 = stateno = 440 && movecontact = 1
;trigger12 = stateno = 450 && time < 9 && movecontact = 1
;trigger13 = stateno = 220 && movecontact = 1
;
;; Shin Shouryuu ken (Medium)
;[State -1]
;type = ChangeState
;value = 2200
;triggerall = Command = "QCF2_b" && StateType != A && Power = 3000 && var(16) != 1
;trigger1 = Ctrl = 1
;trigger2 = stateno = 200 && movecontact = 1
;trigger3 = stateno = 300 && movecontact = 1
;trigger4 = stateno = 310 && movecontact = 1
;trigger5 = stateno = 320 && time < 6 && movecontact = 1
;trigger6 = stateno = 340 && movecontact = 1
;trigger7 = stateno = 400 && movecontact = 1
;trigger8 = stateno = 410 && movecontact = 1
;trigger9 = stateno = 420 && time < 7 && movecontact = 1
;trigger10 = stateno = 430 && var(11) < 2 && movecontact = 1
;trigger11 = stateno = 440 && movecontact = 1
;trigger12 = stateno = 450 && time < 9 && movecontact = 1
;trigger13 = stateno = 220 && movecontact = 1
;
;; Shin Shouryuu ken (Hard)
;[State -1]
;type = ChangeState
;value = 2200
;triggerall = Command = "QCF2_c" && StateType != A && Power = 3000 && var(16) != 1
;trigger1 = Ctrl = 1
;trigger2 = stateno = 200 && movecontact = 1
;trigger3 = stateno = 300 && movecontact = 1
;trigger4 = stateno = 310 && movecontact = 1
;trigger5 = stateno = 320 && time < 6 && movecontact = 1
;trigger6 = stateno = 340 && movecontact = 1
;trigger7 = stateno = 400 && movecontact = 1
;trigger8 = stateno = 410 && movecontact = 1
;trigger9 = stateno = 420 && time < 7 && movecontact = 1
;trigger10 = stateno = 430 && var(11) < 2 && movecontact = 1
;trigger11 = stateno = 440 && movecontact = 1
;trigger12 = stateno = 450 && time < 9 && movecontact = 1
;trigger13 = stateno = 220 && movecontact = 1

;-| Special Move |-------------------------------
; Shakunetsu Hadou ken (Light)
;[State -1]
;type = ChangeState
;value = 1100
;triggerall = Command = "HCF_x" && StateType != A && Numproj = 0 && var(16) != 1
;trigger1 = Ctrl = 1
;trigger2 = stateno = 200 && movecontact = 1
;trigger3 = stateno = 300 && movecontact = 1
;trigger4 = stateno = 310 && movecontact = 1
;trigger5 = stateno = 320 && time < 6 && movecontact = 1
;trigger6 = stateno = 340 && movecontact = 1
;trigger7 = stateno = 400 && movecontact = 1
;trigger8 = stateno = 410 && movecontact = 1
;trigger9 = stateno = 420 && time < 7 && movecontact = 1
;trigger10 = stateno = 430 && var(11) < 2 && movecontact = 1
;trigger11 = stateno = 440 && movecontact = 1
;trigger12 = stateno = 450 && time < 9 && movecontact = 1
;
;; Shakunetsu Hadou ken (Medium)
;[State -1]
;type = ChangeState
;value = 1101
;triggerall = Command = "HCF_y" && StateType != A && Numproj = 0 && var(16) != 1
;trigger1 = Ctrl = 1
;trigger2 = stateno = 200 && movecontact = 1
;trigger3 = stateno = 300 && movecontact = 1
;trigger4 = stateno = 310 && movecontact = 1
;trigger5 = stateno = 320 && time < 6 && movecontact = 1
;trigger6 = stateno = 340 && movecontact = 1
;trigger7 = stateno = 400 && movecontact = 1
;trigger8 = stateno = 410 && movecontact = 1
;trigger9 = stateno = 420 && time < 7 && movecontact = 1
;trigger10 = stateno = 430 && var(11) < 2 && movecontact = 1
;trigger11 = stateno = 440 && movecontact = 1
;trigger12 = stateno = 450 && time < 9 && movecontact = 1
;
;; Shakunetsu Hadou ken (Hard)
;[State -1]
;type = ChangeState
;value = 1102
;triggerall = Command = "HCF_z" && StateType != A && Numproj = 0 && var(16) != 1
;trigger1 = Ctrl = 1
;trigger2 = stateno = 200 && movecontact = 1
;trigger3 = stateno = 300 && movecontact = 1
;trigger4 = stateno = 310 && movecontact = 1
;trigger5 = stateno = 320 && time < 6 && movecontact = 1
;trigger6 = stateno = 340 && movecontact = 1
;trigger7 = stateno = 400 && movecontact = 1
;trigger8 = stateno = 410 && movecontact = 1
;trigger9 = stateno = 420 && time < 7 && movecontact = 1
;trigger10 = stateno = 430 && var(11) < 2 && movecontact = 1
;trigger11 = stateno = 440 && movecontact = 1
;trigger12 = stateno = 450 && time < 9 && movecontact = 1
;
;; Shouryuu ken (Light)
;[State -1]
;type = ChangeState
;value = 1200
;triggerall = Command = "DP_x" && StateType != A
;trigger1 = Ctrl = 1
;trigger2 = stateno = 200 && movecontact = 1
;trigger3 = stateno = 300 && movecontact = 1
;trigger4 = stateno = 310 && movecontact = 1
;trigger5 = stateno = 320 && time < 6 && movecontact = 1
;trigger6 = stateno = 340 && movecontact = 1
;trigger7 = stateno = 400 && movecontact = 1
;trigger8 = stateno = 410 && movecontact = 1
;trigger9 = stateno = 420 && time < 7 && movecontact = 1
;trigger10 = stateno = 430 && var(11) < 2 && movecontact = 1
;trigger11 = stateno = 440 && movecontact = 1
;trigger12 = stateno = 450 && time < 9 && movecontact = 1
;
;; Shouryuu ken (Medium)
;[State -1]
;type = ChangeState
;value = 1200
;triggerall = Command = "DP_y" && StateType != A
;trigger1 = Ctrl = 1
;trigger2 = stateno = 200 && movecontact = 1
;trigger3 = stateno = 300 && movecontact = 1
;trigger4 = stateno = 310 && movecontact = 1
;trigger5 = stateno = 320 && time < 6 && movecontact = 1
;trigger6 = stateno = 340 && movecontact = 1
;trigger7 = stateno = 400 && movecontact = 1
;trigger8 = stateno = 410 && movecontact = 1
;trigger9 = stateno = 420 && time < 7 && movecontact = 1
;trigger10 = stateno = 430 && var(11) < 2 && movecontact = 1
;trigger11 = stateno = 440 && movecontact = 1
;trigger12 = stateno = 450 && time < 9 && movecontact = 1
;
;; Shouryuu ken (Hard)
;[State -1]
;type = ChangeState
;value = 1200
;triggerall = Command = "DP_z" && StateType != A
;trigger1 = Ctrl = 1
;trigger2 = stateno = 200 && movecontact = 1
;trigger3 = stateno = 300 && movecontact = 1
;trigger4 = stateno = 310 && movecontact = 1
;trigger5 = stateno = 320 && time < 6 && movecontact = 1
;trigger6 = stateno = 340 && movecontact = 1
;trigger7 = stateno = 400 && movecontact = 1
;trigger8 = stateno = 410 && movecontact = 1
;trigger9 = stateno = 420 && time < 7 && movecontact = 1
;trigger10 = stateno = 430 && var(11) < 2 && movecontact = 1
;trigger11 = stateno = 440 && movecontact = 1
;trigger12 = stateno = 450 && time < 9 && movecontact = 1
;
; Air Tatsumaki Senpuu Kyaku (Light)
;[State -1]
;type = ChangeState
;value = 1080
;trigger1 = Ctrl = 1 && StateType = S && Command = "QCB_a" && var(16) != 1
;
;; Air Tatsumaki Senpuu Kyaku (Medium)
;[State -1]
;type = ChangeState
;value = 1080
;trigger1 = Ctrl = 1 && StateType = S && Command = "QCB_b" && var(16) != 1
;
; Air Tatsumaki Senpuu Kyaku (Hard)
;[State -1]
;type = ChangeState
;value = 1080
;trigger1 = Ctrl = 1 && StateType = S && Command = "QCB_c" && var(16) != 1




[State -1]
type = ChangeState
value = 1198
triggerall = Ctrl = 1
trigger1 = Command = "ab"
trigger2 = Command = "xy"



;Run & Dive
[State -1]
type = ChangeState
value = 1080
trigger1 = Ctrl = 1 && StateType = S && Command = "backforwardb" && p2dist x > 140

[State -1]
type = ChangeState
value = 1080
trigger1 = Ctrl = 1 && StateType = S && Command = "backforwarda" && p2dist x > 140

[State -1]
type = ChangeState
value = 1080
trigger1 = Ctrl = 1 && StateType = S && Command = "backforwardc" && p2dist x > 140




;Bike Hyper
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "QCB_a" && StateType != A  && power >= 1000  && Numproj = 0
trigger1 = Ctrl = 1

;Bike Hyper
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "QCB_b" && StateType != A  && power >= 1000  && Numproj = 0
trigger1 = Ctrl = 1

;Bike Hyper
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "QCB_c" && StateType != A  && power >= 1000  && Numproj = 0
trigger1 = Ctrl = 1

;trigger2 = stateno = 200 && movecontact = 1
;trigger3 = stateno = 300 && movecontact = 1
;trigger4 = stateno = 310 && movecontact = 1
;trigger5 = stateno = 320 && time < 6 && movecontact = 1
;trigger6 = stateno = 340 && movecontact = 1
;trigger7 = stateno = 400 && movecontact = 1
;trigger8 = stateno = 410 && movecontact = 1
;trigger9 = stateno = 420 && time < 7 && movecontact = 1
;trigger10 = stateno = 430 && var(11) < 2 && movecontact = 1
;trigger11 = stateno = 440 && movecontact = 1
;trigger12 = stateno = 450 && time < 9 && movecontact = 1
;
;; Tatsumaki Senpuu Kyaku (Medium)
;[State -1]
;type = ChangeState
;value = 1410
;triggerall = Command = "QCB_b" && StateType != A
;trigger1 = Ctrl = 1
;trigger2 = stateno = 200 && movecontact = 1
;trigger3 = stateno = 300 && movecontact = 1
;trigger4 = stateno = 310 && movecontact = 1
;trigger5 = stateno = 320 && time < 6 && movecontact = 1
;trigger6 = stateno = 340 && movecontact = 1
;trigger7 = stateno = 400 && movecontact = 1
;trigger8 = stateno = 410 && movecontact = 1
;trigger9 = stateno = 420 && time < 7 && movecontact = 1
;trigger10 = stateno = 430 && var(11) < 2 && movecontact = 1
;trigger11 = stateno = 440 && movecontact = 1
;trigger12 = stateno = 450 && time < 9 && movecontact = 1
;
;; Tatsumaki Senpuu Kyaku (Hard)
;[State -1]
;type = ChangeState
;value = 1420
;triggerall = Command = "QCB_c" && StateType != A
;trigger1 = Ctrl = 1
;trigger2 = stateno = 200 && movecontact = 1
;trigger3 = stateno = 300 && movecontact = 1
;trigger4 = stateno = 310 && movecontact = 1
;trigger5 = stateno = 320 && time < 6 && movecontact = 1
;trigger6 = stateno = 340 && movecontact = 1
;trigger7 = stateno = 400 && movecontact = 1
;trigger8 = stateno = 410 && movecontact = 1
;trigger9 = stateno = 420 && time < 7 && movecontact = 1
;trigger10 = stateno = 430 && var(11) < 2 && movecontact = 1
;trigger11 = stateno = 440 && movecontact = 1
;trigger12 = stateno = 450 && time < 9 && movecontact = 1

;eye poke
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "QCB_x" && StateType != A
trigger1 = Ctrl = 1


;eye poke
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "QCB_y" && StateType != A
trigger1 = Ctrl = 1


;eye poke
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "QCB_z" && StateType != A
trigger1 = Ctrl = 1


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

 Light Forward Kick throw
[State -1]
type = ChangeState
value = 2980
triggerall = statetype = S && ctrl = 1 && p2bodydist X < 10 && p2bodydist Y = 0 && p2statetype != A && p2movetype != H
trigger1 = command = "fwdthrow_a" && p2statetype = S
trigger2 = command = "fwdthrow_a" && p2statetype = C

 Medium Forward Kick throw
[State -1]
type = ChangeState
value = 2980
triggerall = statetype = S && ctrl = 1 && p2bodydist X < 10 && p2bodydist Y = 0 && p2statetype != A && p2movetype != H
trigger1 = command = "fwdthrow_b" && p2statetype = S
trigger2 = command = "fwdthrow_b" && p2statetype = C

 Hard Forward Kick throw
[State -1]
type = ChangeState
value = 2980
triggerall = statetype = S && ctrl = 1 && p2bodydist X < 10 && p2bodydist Y = 0 && p2statetype != A && p2movetype != H
trigger1 = command = "fwdthrow_c" && p2statetype = S
trigger2 = command = "fwdthrow_c" && p2statetype = C

; Medium Backward Kick throw
;[State -1]
;type = ChangeState
;value = 811
;triggerall = statetype = S && ctrl = 1 && p2bodydist X < 10 && p2bodydist Y = 0 && Stateno != 100 && p2statetype != A && p2movetype != H
;trigger1 = command = "backthrow_b" && p2statetype = S
;trigger2 = command = "backthrow_b" && p2statetype = C

; Hard Backward Kick throw
;[State -1]
;type = ChangeState
;value = 816
;triggerall = statetype = S && ctrl = 1 && p2bodydist X < 10 && p2bodydist Y = 0 && Stateno != 100 && p2statetype != A && p2movetype != H
;trigger1 = command = "backthrow_c" && p2statetype = S
;trigger2 = command = "backthrow_c" && p2statetype = C

;-| Zero Counter |-------------------------------
; Punch
[State -1]
type = ChangeState
value = 2300
triggerall = Command = "ZC_p" && power >= 1000
trigger1 = stateno = 150 || Stateno = 152
trigger2 = stateno = 151 && time < 2
trigger3 = stateno = 153 && time < 2

; Kick
[State -1]
type = ChangeState
value = 2310
triggerall = Command = "ZC_k" && power >= 1000
trigger1 = stateno = 150 || Stateno = 152
trigger2 = stateno = 151 && time < 2
trigger3 = stateno = 153 && time < 2

;-| Command Attack |-------------------------------
; Sakotsu Wari
;[State -1]
;type = ChangeState
;value = 900
;triggerall = Command = "y" && Command = "holdfwd" && StateType = S && var(16) != 1
;trigger1 = Ctrl = 1
;
;; ?
;[State -1]
;type = ChangeState
;value = 910
;triggerall = Command = "z" && Command = "holdfwd" && StateType = S && var(16) != 1
;trigger1 = Ctrl = 1

;-| Dash |-------------------------------------------
; Running Forward
;[State -1]
;type = ChangeState
;value = 100
;trigger1 = Command = "FF" && StateType = S && Ctrl = 1 && StateNo != 100 && StateNo != 105 && var(16) != 1
;
;; Running Back
;[State -1]
;type = ChangeState
;value = 105
;trigger1 = Command = "BB" && StateType = S && Ctrl = 1 && StateNo != 100 && StateNo != 105 && var(16) != 1

;-| Normal Attack |-------------------------------
; Stand Light Punch
[State -1, part1]
type = ChangeState
value = 200
triggerall = Command = "a"
trigger1 = Stateno = 201 || Stateno = 230 || Stateno = 231 || Stateno = 232 && time > 11
trigger2 = stateno = 0 && Command != "holddown" && StateType = S && Ctrl = 1 
;trigger3 = Stateno = 300 && time > 6 && P2bodydist X > 30

[State -1, part2]
type = ChangeState
value = 201
triggerall = command = "a" && StateType = S
trigger1 = stateno = 200
trigger1 = time > 9



[state -1, part1]
type = ChangeState
value = 230 + random%2
triggerall = Command = "x"
trigger1 = Stateno = 231 || Stateno = 200 || Stateno = 201 && time > 11
trigger2 = stateno = 0 && Command != "holddown" && StateType = S && Ctrl = 1 
;trigger3 = Stateno = 300 && time > 6 && P2bodydist X > 30

[State -1, part2]
type = ChangeState
value = 232
triggerall = command = "x" && StateType = S
trigger1 = stateno = 230 || stateno = 231
trigger1 = time > 10




; Stand Medium Punch (morph counter)
[State -1]
type = ChangeState
value = 240
trigger1 = Command = "y" && Command != "holddown" && StateType = S && Ctrl = 1 && P2bodydist X > 9

; Stand Hard Punch
[State -1]
type = ChangeState
value = 250
trigger1 = Command = "z" && Command != "holddown"  && StateType = S && Ctrl = 1 && P2bodydist X >9

;Stand Light Kick
;[State -1]
;type = ChangeState
;value = 230
;trigger1 = Command = "a" && Command != "holddown" && StateType = S && Ctrl = 1

; Stand Medium Kick
[State -1]
type = ChangeState
value = 210
trigger1 = Command = "b" && Command != "holddown" && P2bodydist X > 19 && StateType = S && Ctrl = 1

; Stand Hard Kick
[State -1]
type = ChangeState
value = 220
trigger1 = Command = "c" && Command != "holddown" && StateType = S && Ctrl = 1

; Close Light Punch
;[State -1]
;type = ChangeState
;value = 300
;triggerall = Command = "x"
;trigger1 = Command != "holddown" && P2bodydist X < 11 && StateType = S && Ctrl = 1

; Close Medium Punch
;[State -1]
;type = ChangeState
;value = 310
;trigger1 = Command = "y" && Command != "holddown" && P2bodydist X < 31 && StateType = S && Ctrl = 1

; Close Hard Punch
;[State -1]
;type = ChangeState
;value = 320
;trigger1 = Command = "z" && Command != "holddown" && P2bodydist X < 31 && StateType = S && Ctrl = 1

; Close Light Kick
;[State -1]
;type = ChangeState
;value = 340
;trigger1 = Command = "x" && Command != "holddown" && P2bodydist X < 38 && StateType = S && Ctrl = 1

; Close Medium Kick
[State -1]
type = ChangeState
value = ifelse(p2statetype = S,340,420)
trigger1 = Command = "y"  && P2bodydist X < 10 && Command != "holddown" && StateType = S && Ctrl = 1

; Close Hard Kick
[State -1]
type = ChangeState
value = ifelse(p2statetype = S,340,420)
trigger1 = Command = "z" && Command != "holddown" && P2bodydist X < 10 && StateType = S && Ctrl = 1

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
value = 420
trigger1 = Command = "z" && Command = "holddown" && StateType = C && Ctrl = 1

; Crouch Light Kick
[State -1]
type = ChangeState
value = 430
triggerall = Command = "a"
trigger1 = Command = "holddown" && StateType = C && Ctrl = 1
;trigger2 = Stateno = 430 && time > 6

; Crouch Medium Kick
[State -1]
type = ChangeState
value = 440
trigger1 = Command = "b" && Command = "holddown" && StateType = C && Ctrl = 1

; Crouch Hard Kick
[State -1]
type = ChangeState
value = 450
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
value = 630
trigger1 = Command = "a" && StateType = A && Ctrl = 1 && Vel X = 0

; Jump Medium Kick
[State -1]
type = ChangeState
value = 640
trigger1 = Command = "b" && StateType = A && Ctrl = 1 && Vel X = 0

; Jump Hard Kick
[State -1]
type = ChangeState
value = 650
trigger1 = Command = "c" && StateType = A && Ctrl = 1 && Vel X = 0

; Jump Fwd Light Kick
[State -1]
type = ChangeState
value = 660
trigger1 = Command = "a" && StateType = A && Ctrl = 1 && Vel X != 0

; Jump Fwd Medium Kick
[State -1]
type = ChangeState
value = 670
trigger1 = Command = "b" && StateType = A && Ctrl = 1 && Vel X != 0

; Jump Fwd Hard Kick
[State -1]
type = ChangeState
value = 680
trigger1 = Command = "c" && StateType = A && Ctrl = 1 && Vel X != 0

[State -1, Dash]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = statetype = S
trigger1 = ctrl