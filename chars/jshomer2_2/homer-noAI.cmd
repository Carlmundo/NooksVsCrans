; Definition of the Commands
;=====================================================================
;First of all, I must to Thanx to "Mr.H" for let me use this comands for my two chars: Homero and Homer-Iori
;   -Warner el Tochix
;-| EX Special Motions |----------------------------------------------

[Command]
name = "Woohoo Whirlwind EX"
command = ~F, D, DF, x+y
time = 35

[Command]
name = "Kinetic Donut EX"
command = ~D, DF, F, x+y
time = 35

;-| Super Motions |---------------------------------------------------
;

[Command]
name = "Shun Homer Satsu"
command = x, x, F, a, y
;command = x
time = 45

[Command]
name = "Drunken Tornado_LV.3"
command = ~D, F, D, F, x+y
time = 40

[Command]
name = "Drunken Tornado_LV.2"
command = ~D, F, D, F, y
time = 40

[Command]
name = "Drunken Tornado_LV.1"
command = ~D, F, D, F, x
time = 40

[Command]
name = "Hell Candy Bomb_LV.3"
command = ~D, B, D, F, x+y
time = 40

[Command]
name = "Hell Candy Bomb_LV.2"
command = ~D, B, D, F, y
time = 40

[Command]
name = "Hell Candy Bomb_LV.1"
command = ~D, B, D, F, x
time = 40

[Command]
name = "Bash Dash Masher_LV.3"
command = ~D, F, D, B, x+y
time = 40

[Command]
name = "Bash Dash Masher_LV.2"
command = ~D, F, D, B, y
time = 40

[Command]
name = "Bash Dash Masher_LV.1"
command = ~D, F, D, B, x
time = 40

[Command]
name = "Grim Reaper"
command = ~D, F, D, B, z
time = 40

[Command]
name = "Heavy Roller"
command = ~D, F, D, B, b
time = 40


[Command]
name = "Overdrive"
command = ~F, DF, D, DB, B, s
time = 40

;-| Special Motions |-------------------------------------------------

[Command]
name = "Sideswitch"
command = ~F, DF, D, DB, B, F, x
time = 20

[Command]
name = "Sideswitch"
command = ~F, DF, D, DB, B, F, y
time = 20

[Command]
name = "Rush Tackle Kick_a"
command = ~F, DF, D, DB, B, a
time = 20

[Command]
name = "Rush Tackle Kick_b"
command = ~F, DF, D, DB, B, b
time = 20

[Command]
name = "Woohoo Whirlwind_x"
command = ~F, D, DF, x

[Command]
name = "Woohoo Whirlwind_y"
command = ~F, D, DF, y

[Command]
name = "Kinetic Donut_x"
command = ~D, DF, F, x

[Command]
name = "Kinetic Donut_y"
command = ~D, DF, F, y

[Command]
name = "3-hit Rushdown"
command = ~D, DB, B, x

[Command]
name = "3-hit Rushdown"
command = ~D, DB, B, y

;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1

[Command]
name = "call-st";Required (do not remove)
command = a+y
time = 1

;-| Dir + Button |----------------------------------------------------
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
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
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
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_b"
command = /D,b
time = 1

[Command]
name = "down_y"
command = /D,y
time = 1

[Command]
name = "charge1"
command = /b
time = 1

[Command]
name = "charge2"
command = /y
time = 1

[Command]
name = "charge"
command = /c
time = 1

;-| Single Button |---------------------------------------------------
[Command]
name = "x"
command = x
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "y"
command = y
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
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "random"
command = x
time = 1

[Command]
name = "random"
command = a
time = 1

[Command]
name = "random"
command = y
time = 1

[Command]
name = "random"
command = b
time = 1

[Command]
name = "random"
command = c
time = 1

[Command]
name = "random"
command = z
time = 1

[Command]
name = "random"
command = s
time = 1

[Command]
name = "recovery"
command = z
time = 1

;-| Hold Button |-----------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_y"
command = /y
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
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------
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

;------------------------ For KOF Series Only
[Command]
name = "holdupfwd"
command = /UF
time = 1

[Command]
name = "holdupback"
command = /UB
time = 1

;=====================================================================
; State Entry for Commands
;=====================================================================
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;=====================================================================
; Super Arts
;=====================================================================

;---------------------------------------------------------------------
; 禁千弐百拾壱式・八稚女（LV.2）
[State -1, Shun Homer Satsu]
type = ChangeState
value = 3600
triggerall= Command = "Shun Homer Satsu"
triggerall = Power = 4000
triggerall = var(39)
triggerall = var(7) = 0  ;Prevent AI from abusing this move, throwing off the Custom AI
trigger1 = StateType != A && (StateNo = 100 || StateNo = 40 || Stateno = 0 || Stateno = 230)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 禁千弐百拾壱式・八稚女（LV.1）
[State -1, Ready Aim Fire]
type = ChangeState
value = 3400
triggerall= var(39) = 0
triggerall= Power >= 2000
triggerall= Command = "Drunken Tornado_LV.2"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger1 = StateNo = 3100
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
trigger4  = StateNo = 1301 && AnimElem = 5,>= 2
;Super Cancel triggers
trigger5 = Stateno = 1110  && HitDefAttr = S, SA
;Dream Cancel triggers
trigger5 = StateNo = 3101
trigger5 = StateNo = 3111
trigger5 = StateNo = 3121

;---------------------------------------------------------------------
; 裏百式・鬼焔（Lv.3）
[State -1, Drunken Tornado 3]
type = ChangeState
value = 3320
triggerall= var(39)
triggerall= Command = "Drunken Tornado_LV.3" && Power >= 3000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
trigger4  = StateNo = 1301 && AnimElem = 5,>= 2

;---------------------------------------------------------------------
; 裏百式・鬼焔（Lv.2）
[State -1, Drunken Tornado 2]
type = ChangeState
value = 3310
triggerall= var(39)
triggerall= Command = "Drunken Tornado_LV.2" && Power >= 2000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
trigger4  = StateNo = 1301 && AnimElem = 5,>= 2



;---------------------------------------------------------------------
; 裏百式・鬼焔（Lv.1）
[State -1, Drunken Tornado 1]
type = ChangeState
value = 3300
triggerall= var(39)&& Power >= 1000
triggerall= (Command = "Drunken Tornado_LV.1") || (Command = "Drunken Tornado_LV.2" && Power < 2000)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
trigger4  = StateNo = 1301 && AnimElem = 5,>= 2


;---------------------------------------------------------------------
; 裏百八式・八酒杯（LV.3）
[State -1, Hell Candy Bomb 3]
type = ChangeState
value = 3020
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
triggerall= Var(17) = 0 && var(39) = 0 && (Command = "Hell Candy Bomb_LV.3" && Power >= 3000)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 裏百八式・八酒杯（LV.2）
[State -1, Hell Candy Bomb 2]
type = ChangeState
value = 3010
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
triggerall= Var(17) = 0 && var(39) = 0 && (Command = "Hell Candy Bomb_LV.2" && Power >= 2000)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 裏百八式・八酒杯（LV.1）
[State -1, Hell Candy Bomb 1]
type = ChangeState
value = 3002
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0 && Power >= 1000
;triggerall= Var(17) = 0 && var(39) = 0 && ((Command = "Hell Candy Bomb_LV.1") || (Command = "Hell Candy Bomb_LV.2" && Power < 2000))
triggerall= Var(17) = 0 && var(39) = 0 && (Command = "Hell Candy Bomb_LV.1")
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 禁千弐百拾壱式・八稚女（LV.3）
[State -1, Bash Dash Masher 3]
type = ChangeState
value = 3120
triggerall= Command = "Bash Dash Masher_LV.3" && Power >= 3000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
trigger4  = StateNo = 1301 && AnimElem = 5,>= 2
;Super Cancel triggers
trigger5 = Stateno = 1110  && HitDefAttr = S, SA

;---------------------------------------------------------------------
; 禁千弐百拾壱式・八稚女（LV.2）
[State -1, Bash Dash Masher 2]
type = ChangeState
value = 3110
triggerall= Command = "Bash Dash Masher_LV.2" && Power >= 2000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
trigger4  = StateNo = 1301 && AnimElem = 5,>= 2
;Super Cancel triggers
trigger5 = Stateno = 1110 && HitDefAttr = S, SA

;---------------------------------------------------------------------
; 禁千弐百拾壱式・八稚女（LV.1）
[State -1, Bash Dash Masher 1]
type = ChangeState
value = 3100
triggerall= Power >= 1000
triggerall= (Command = "Bash Dash Masher_LV.1") || (Command = "Bash Dash Masher_LV.2" && Power < 2000)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
trigger4  = StateNo = 1301 && AnimElem = 5,>= 2
;Super Cancel triggers
trigger5 = Stateno = 1110  && HitDefAttr = S, SA

;---------------------------------------------------------------------
; 禁千弐百拾壱式・八稚女（LV.2）
[State -1, Touch of Death]
type = ChangeState
value = 3667
triggerall= Command = "Grim Reaper" && Power >= 2000
triggerall = var(39)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
trigger4  = StateNo = 1301 && AnimElem = 5,>= 2
;Dream Cancel triggers
trigger5 = Stateno = 3101

;---------------------------------------------------------------------
; 禁千弐百拾壱式・八稚女（LV.2）
[State -1, Road Roller D'oh]
type = ChangeState
value = 3500
triggerall= Command = "Heavy Roller"
triggerall = Power >= 3000
triggerall = var(39)
trigger1 = StateType != A && Ctrl = 1
;Dream Cancel triggers
trigger2 = Stateno = 3101

;---------------------------------------------------------------------
; 暴走
[State -1, BEER RIOT HOMER]
type = ChangeState
value = 9999
triggerall= !var(39)
triggerall = command = "Overdrive"
trigger1 = StateType = S && Ctrl = 1

;============================================
; EX Specials
;============================================

;---------------------------------------------------------------------
; 百式・鬼焼き（強）
[State -1, EX Woohoo Whirlwind]
type = ChangeState
value = 1120
triggerall = Power >= 500
triggerall= Command = "Woohoo Whirlwind EX"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
trigger4  = StateNo = 1301 && AnimElem = 5,>= 2

;---------------------------------------------------------------------
; 百八式・闇払い（強）
[State -1, EX Kinetic Donut]
type = ChangeState
value = 1020
triggerall = Power >= 500
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
triggerall= Var(17) = 0 && Command = "Kinetic Donut EX" && NumProjID(1005) = 0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410



;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; 屑風
[State -1, Side Switch]
type = ChangeState
value = 1200
triggerall= Command = "Sideswitch" && var(39) = 0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 弐百拾弐式・琴月　陰（弱）
[State -1, Tackle Kick]
type = ChangeState
value = 1400
triggerall= Command = "Rush Tackle Kick_a"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
trigger4  = StateNo = 1301 && AnimElem = 5,>= 2

;---------------------------------------------------------------------
; 弐百拾弐式・琴月　陰（強）
[State -1, Tackle Kick Drunken]
type = ChangeState
value = 1410
triggerall= Command = "Rush Tackle Kick_b"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
trigger4  = StateNo = 1301 && AnimElem = 5,>= 2

;---------------------------------------------------------------------
; 百式・鬼焼き（弱）
[State -1, Woohoo Whirlwind 1]
type = ChangeState
value = 1100
triggerall= Command = "Woohoo Whirlwind_x"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
trigger4  = StateNo = 1301 && AnimElem = 5,>= 2

;---------------------------------------------------------------------
; 百式・鬼焼き（強）
[State -1, Woohoo Whirlwind 2]
type = ChangeState
value = 1110
triggerall= Command = "Woohoo Whirlwind_y"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
trigger4  = StateNo = 1301 && AnimElem = 5,>= 2

;---------------------------------------------------------------------
; 百八式・闇払い（弱）
[State -1, Kinetic Donut 1]
type = ChangeState
value = 1000
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
triggerall= Var(17) = 0 && Command = "Kinetic Donut_x" && NumProjID(1005) = 0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 百八式・闇払い（強）
[State -1, Kinetic Donut 2]
type = ChangeState
value = 1010
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
triggerall= Var(17) = 0 && Command = "Kinetic Donut_y" && NumProjID(1005) = 0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410



;---------------------------------------------------------------------
; 百弐拾七式・葵花
;------------------------ 一段目
[State -1, 3-hit rush 1]
type = ChangeState
value = 1300
triggerall= Command = "3-hit Rushdown"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;------------------------ 二段目
[State -1, 3-hit rush 2]
type = ChangeState
value = 1301
triggerall= var(15) = 1
trigger1  = StateNo = 1300 && AnimElem = 5,>= 2 && AnimElem = 7,< 0
trigger2 = Var(12) = [1,16]
trigger2 = stateno = 1300

;------------------------ 三段目
[State -1, 3-hit rush 3]
type = ChangeState
value = 1302
triggerall= var(15) = 1
trigger1  = StateNo = 1301 && AnimElem = 5,>= 2 && AnimElem = 7,< 0
trigger2 = Var(12) = [1,16]
trigger2 = stateno = 1301

;------------------------先行入力
[State -1,3-hit rush - Varset]
type = VarSet
var(15) = 1
triggerall = Command = "3-hit Rushdown" && Time > 0 && var(15) = 0
trigger1  = StateNo = 1300 && AnimElem = 1,> 1 && AnimElem = 6,< 3
trigger2  = StateNo = 1301 && AnimElem = 1,> 1 && AnimElem = 6,< 3

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1, Run Forward]
type = ChangeState
value = 100
trigger1 = Command = "FF" && StateType = S && Ctrl = 1 && StateNo != 100

;---------------------------------------------------------------------
;RunBack
[State -1, Hop Backward]
type = ChangeState
value = 105
trigger1 = Command = "BB" && StateType = S && Ctrl = 1

;=====================================================================
; 2/3 Buttons
;=====================================================================
;
;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; 逆剥ぎ（Ｐ通常投げ）
[State -1, Throw]
type = ChangeState
value = 800
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_y" && P2BodyDist X < 10 ;40
trigger2 = Command = "back_y" && P2BodyDist X < 10  ;20

;---------------------------------------------------------------------
; 逆剥ぎ（K通常投げ）
[State -1, Throw]
type = ChangeState
value = 850
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_b" && P2BodyDist X < 10
trigger2 = Command = "back_b" && P2BodyDist X < 10

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------

;---------------------------------------------------------------------
; 緊急回避動作
[State -1, Crawling Dodge]
type = ChangeState
value = 4000
triggerall = Command = "recovery"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Time <= 1 && ((StateNo = [200,499]) ||  (StateNo = 700))

;---------------------------------------------------------------------
; パワー溜め動作
;Power Charge
[State -1, Power Charge]
type = ChangeState
value = 4100
triggerall = (command = "charge1" && command = "charge2") || command = "charge" 
triggerall = statetype != A && Power < 4000
triggerall = var(7) = 0      ;Prevents AI from Abusing Charge to throw off AI
trigger1 = ctrl
trigger2 = Time <= 1 && ((StateNo = [200,499]) ||  (StateNo = 700))

;=====================================================================
; Dir + Button
;=====================================================================

;---------------------------------------------------------------------
; 外式・轟斧　陰　"死神"（→＋A）
[State -1]
type = ChangeState
value = 700
triggerall= Command = "fwd_a"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 外式・百合折り（ジャンプ中←＋A）
[State -1, Body Splash]
type = ChangeState
value = 710
triggerall= Command = "back_a"
trigger1 = StateType = A && Ctrl = 1

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; 挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = StateType = S && Ctrl = 1

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; 弱パンチ
[State -1, Stand Weak Punch]
type = ChangeState
value = IfElse(P2BodyDist X <= 10,205,200)
triggerall = Command = "x" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2  = (StateNo = 200 && AnimElem = 3,> 1)
trigger3  = (StateNo = 205 && AnimElem = 3,> 1)
trigger4  = (StateNo = 400 && AnimElem = 3,> 1)
trigger5  = (StateNo = 430 && AnimElem = 3,> 1)


;---------------------------------------------------------------------
; 弱キック
[State -1, Stand Weak Kick]
type = ChangeState
value = IfElse(P2BodyDist X <= 28,235,230)
triggerall = Command = "a" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2  = (StateNo = 200 && AnimElem = 3,> 1)
trigger3  = (StateNo = 205 && AnimElem = 3,> 1)
trigger4  = (StateNo = 400 && AnimElem = 3,> 1)
trigger5  = (StateNo = 430 && AnimElem = 3,> 1)


;---------------------------------------------------------------------
; 強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = IfElse(P2BodyDist X <= 44,215,210)
triggerall = Command = "y" && !Command = "holddown"
trigger1  = (StateNo = 200 && AnimElem = 3,> 1)
trigger2  = (StateNo = 205 && AnimElem = 3,> 1)
trigger3 = StateType = S && (Ctrl = 1 || StateNo = 100)


;---------------------------------------------------------------------
; 強キック
[State -1, Stand Strong Kick]
type = ChangeState
value = IfElse(P2BodyDist X <= 40,245,240)
triggerall = Command = "b" && !Command = "holddown"
trigger1  = (StateNo = 230 && AnimElem = 3,> 1)
trigger2  = (StateNo = 235 && AnimElem = 3,> 1)
trigger3 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = Command = "x" && Command = "holddown"
trigger1 =  (StateType = C && Ctrl = 1) || StateNo = 100
trigger2  = (StateNo = 200 && AnimElem = 3,> 1)
trigger3  = (StateNo = 205 && AnimElem = 3,> 1)
trigger4  = (StateNo = 400 && AnimElem = 3,> 1)
trigger5  = (StateNo = 430 && AnimElem = 3,> 1)

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 410
triggerall = Command = "y" && Command = "holddown"
trigger1 = (StateType = C && Ctrl = 1) || StateNo = 100
trigger2  = (StateNo = 400 && AnimElem = 3,> 1)
trigger3  = (StateNo = 430 && AnimElem = 3,> 1)

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = Command = "a" && Command = "holddown"
trigger1 = (StateType = C && Ctrl = 1) || StateNo = 100
trigger2  = (StateNo = 200 && AnimElem = 3,> 1)
trigger3  = (StateNo = 205 && AnimElem = 3,> 1)
trigger4  = (StateNo = 400 && AnimElem = 3,> 1)
trigger5  = (StateNo = 430 && AnimElem = 3,> 1)

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 440
triggerall = Command = "b" && Command = "holddown"
trigger1 = (StateType = C && Ctrl = 1) || StateNo = 100

;---------------------------------------------------------------------
; ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 600
triggerall = Command = "x" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強パンチ
[State -1]
type = ChangeState
value = 610
triggerall = Command = "y" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ弱キック
[State -1]
type = ChangeState
value = 630
triggerall = Command = "a" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = 640
triggerall = Command = "b" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105