;=================================================================================
;====================< Definition of the Commands >===============================
;=================================================================================

;====================< Button Remapping >=========================================
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
; old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;====================< Default Values >===========================================
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;====================< Double Tap >===============================================
[Command]
name = "FF"          ;Required (do not remove) 必要指令 (不可刪除)
command = F, F       ;短跑
time = 20

[Command]
name = "BB"          ;Required (do not remove) 必要指令 (不可刪除)
command = B, B       ;後跳步
time = 20

;====================< 2/3 Button Combination >===================================
[Command]
name = "recovery"    ;Required (do not remove) 必要指令 (不可刪除) 
command = a+b        ;受身用指令
time = 1

[Command]
name = "recovery"    ;Required (do not remove) 必要指令 (不可刪除) 
command = x+y        ;受身用指令
time = 1

[Command]
name = "recovery"    ;Required (do not remove) 必要指令 (不可刪除) 
command = a+x        ;受身用指令
time = 1

[Command]
name = "recovery"    ;Required (do not remove) 必要指令 (不可刪除) 
command = b+y        ;受身用指令
time = 1

[Command]
name = "recovery"    ;Required (do not remove) 必要指令 (不可刪除) 
command = c          ;受身用指令
time = 1

[Command]
name = "recovery"    ;Required (do not remove) 必要指令 (不可刪除) 
command = z          ;受身用指令
time = 1

;====================< Super Motions >============================================
[Command]
name = "Titan_Breath"                    ;巨人吐息 Statedef 3000
command = c
time = 1

[Command]
name = "Titan_Puppet"                    ;巨人玩偶 Statedef 2500
command = b
time = 1

[Command]
name = "Explosion_Attack"                ;爆裂攻擊 Statedef 2000
command = z
time = 1

;====================< Basic Motions >============================================
[Command]
name = "Grasping_Attack"                 ;抓技攻擊 Statedef 330
command = a
time = 1

[Command]
name = "Punch_Attack_1"                  ;拳頭攻擊1 Statedef 310
command = y
time = 1

[Command]
name = "Punch_Attack_2"                  ;拳頭攻擊2 Statedef 320
command = x
time = 1

;====================< Single Button >============================================
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

;====================< Hold Dir >=================================================
[Command]
name = "holdfwd"     ;Required (do not remove) 必要指令 (不可刪除)
command = /$F
time = 1

[Command]
name = "holdback"    ;Required (do not remove) 必要指令 (不可刪除)
command = /$B
time = 1

[Command]
name = "holdup"      ;Required (do not remove) 必要指令 (不可刪除)
command = /$U
time = 1

[Command]
name = "holddown"    ;Required (do not remove) 必要指令 (不可刪除)
command = /$D
time = 1

;====================< Command Attention >=====================================
;Statedef -1 玩家Command指令寫入提醒
;由於MUGEN系統的讀取方式是從上到下
;請將使用到最多Command指令和發動條件較高(例如需要消費3000力量值)的代碼編號
;寫在最上面(靠近Statedef -1)。意思是愈難輸入的招式請寫在最上頭。

;否則在指令按鍵abcxyzs有重覆的情況下
;將過於簡單的指令寫在最上面 會使得輸入難度高的指令無法輸入
;寫法順序可參考MUGEN內建的角色功夫人kfm720

;AI代碼撰寫參考資料網站
;Infinitywiki - Infinity Mugen Team
;http://www.infinitymugenteam.com/infinity.wiki/mediawiki/index.php?title=Artificial_Intelligence

;How To Code The AI
;http://s8.zetaboards.com/One_Piece_MUGEN/topic/8427167/1/

;運算符的意思可以參考以下網頁上的內容介紹
;http://qxmugen.com/portal/11

;變量Var簡介、Cmd簡介、AI開關設置及手操指令修改
;http://qxmugen.com/portal/13

[Statedef -1]

;====================< AI Switch >=====================================
;AI開關
[State -1, AI ON]
type = VarSet
triggerall = var(59) < 1
triggerall = RoundState = 2 & Ctrl ;加上Ctrl防止AI偷跑
trigger1 = Cond(AILevel >= 8,8,AILevel) ;相當於下面8個AILevel寫法
trigger1 = Alive = 1
v = 59
value = Cond(AILevel >= 8,8,AILevel) ;相當於下面8個AILevel寫法
ignorehitpause = 1

;[State -1, AI ON LV1]
;type = VarSet
;triggerall = var(59) < 1
;triggerall = RoundState = 2 & Ctrl
;trigger1 = AILevel = 1
;trigger1 = Alive = 1
;v = 59
;value = 1
;ignorehitpause = 1

;[State -1, AI ON LV2]
;type = VarSet
;triggerall = var(59) < 1
;triggerall = RoundState = 2 & Ctrl
;trigger1 = AILevel = 2
;trigger1 = Alive = 1
;v = 59
;value = 2
;ignorehitpause = 1

;[State -1, AI ON LV3]
;type = VarSet
;triggerall = var(59) < 1
;triggerall = RoundState = 2 & Ctrl
;trigger1 = AILevel = 3
;trigger1 = Alive = 1
;v = 59
;value = 3
;ignorehitpause = 1

;[State -1, AI ON LV4]
;type = VarSet
;triggerall = var(59) < 1
;triggerall = RoundState = 2 & Ctrl
;trigger1 = AILevel = 4
;trigger1 = Alive = 1
;v = 59
;value = 4
;ignorehitpause = 1

;[State -1, AI ON LV5]
;type = VarSet
;triggerall = var(59) < 1
;triggerall = RoundState = 2 & Ctrl
;trigger1 = AILevel = 5
;trigger1 = Alive = 1
;v = 59
;value = 5
;ignorehitpause = 1

;[State -1, AI ON LV6]
;type = VarSet
;triggerall = var(59) < 1
;triggerall = RoundState = 2 & Ctrl
;trigger1 = AILevel = 6
;trigger1 = Alive = 1
;v = 59
;value = 6
;ignorehitpause = 1

;[State -1, AI ON LV7]
;type = VarSet
;triggerall = var(59) < 1
;triggerall = RoundState = 2 & Ctrl
;trigger1 = AILevel = 7
;trigger1 = Alive = 1
;v = 59
;value = 7
;ignorehitpause = 1

;[State -1, AI ON LV >= 8]
;type = VarSet
;triggerall = var(59) < 1
;triggerall = RoundState = 2 & Ctrl
;trigger1 = AILevel >= 8
;trigger1 = Alive = 1
;v = 59
;value = 8
;ignorehitpause = 1

[State -1, AI OFF]
type = VarSet
triggerall = var(59) > 0
trigger1 = RoundState != 2
trigger2 = AILevel = 0
trigger3 = Alive = 0
v = 59
value = 0
ignorehitpause = 1

;===========================================================================
;====================< Player Contral >=====================================
;===========================================================================

;===========================================================================
;快跑前進
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
triggerall = command = "FF"
triggerall = Numhelper(24) = 1
triggerall = Helper(24),StateNo = 24
triggerall = Numhelper(32) = 1
triggerall = Helper(32),StateNo = 32
triggerall = statetype != A
trigger1 = ctrl

;===========================================================================
;快跑後退
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
triggerall = command = "BB"
triggerall = Numhelper(24) = 1
triggerall = Helper(24),StateNo = 24
triggerall = Numhelper(32) = 1
triggerall = Helper(32),StateNo = 32
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;巨人吐息
[State -1, Titan Breath]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = command = "Titan_Breath"
triggerall = Numhelper(24) = 1
triggerall = Helper(24),StateNo = 24
triggerall = Numhelper(32) = 1
triggerall = Helper(32),StateNo = 32
triggerall = NumHelper(3050) = 0
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [100,105]

;===========================================================================
;巨人玩偶
[State -1, Titan Puppet]
type = ChangeState
value = 2500
triggerall = var(59) = 0
triggerall = command = "Titan_Puppet"
triggerall = Numhelper(24) = 1
triggerall = Helper(24),StateNo = 24
triggerall = Numhelper(32) = 1
triggerall = Helper(32),StateNo = 32
triggerall = NumHelper(2510) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [100,105]

;===========================================================================
;爆裂攻擊
[State -1, Explosion Attack]
type = ChangeState
value = 2000
triggerall = var(59) = 0
triggerall = command = "Explosion_Attack"
triggerall = Numhelper(24) = 1
triggerall = Helper(24),StateNo = 24
triggerall = Numhelper(32) = 1
triggerall = Helper(32),StateNo = 32
triggerall = NumHelper(2201) = 0
triggerall = NumHelper(2202) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [100,105]

;===========================================================================
;抓技攻擊
[State -1, Grasping Attack]
type = ChangeState
value = 330
triggerall = var(59) = 0
triggerall = command = "Grasping_Attack"
triggerall = Numhelper(24) = 1
triggerall = Helper(24),StateNo = 24
triggerall = Numhelper(32) = 1
triggerall = Helper(32),StateNo = 32
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [100,105]

;===========================================================================
;拳頭攻擊1
[State -1, Punch Attack 1]
type = ChangeState
value = 310
triggerall = var(59) = 0
triggerall = command = "Punch_Attack_1"
triggerall = Numhelper(24) = 1
triggerall = Helper(24),StateNo = 24
triggerall = Numhelper(32) = 1
triggerall = Helper(32),StateNo = 32
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [100,105]

;===========================================================================
;拳頭攻擊2
[State -1, Punch_Attack 2]
type = ChangeState
value = 320
triggerall = var(59) = 0
triggerall = command = "Punch_Attack_2"
triggerall = Numhelper(24) = 1
triggerall = Helper(24),StateNo = 24
triggerall = Numhelper(32) = 1
triggerall = Helper(32),StateNo = 32
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [100,105]

;===========================================================================
;====================< AI Patch >===========================================
;===========================================================================

;===========================================================================
;巨人吐息
[State -1, Titan Breath]
type = ChangeState
value = 3000
triggerall = var(59) >= 3
triggerall = RoundState = 2
triggerall = Numhelper(24) = 1
triggerall = Helper(24),StateNo = 24
triggerall = Numhelper(32) = 1
triggerall = Helper(32),StateNo = 32
triggerall = NumHelper(3050) = 0
triggerall = p2stateno != [120,159]
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = power >= 1000
triggerall = ctrl
trigger1 = p2statetype != A
trigger1 = p2dist x = [350,850]
trigger1 = Random <= var(59)*ifelse(power >= 2000,75,40)
trigger2 = p2statetype = A
trigger2 = p2dist x = [250,750]
trigger2 = p2dist y = [-220,-25]
trigger2 = Random <= var(59)*ifelse(power >= 2000,80,50)
trigger3 = p2statetype = A
trigger3 = p2dist x = [80,300]
trigger3 = p2dist y = [-150,-100]
trigger3 = Random <= var(59)*ifelse(power >= 2000,50,25)

;===========================================================================
;巨人玩偶
[State -1, Titan Puppet]
type = ChangeState
value = 2500
triggerall = var(59) >= 1
triggerall = RoundState = 2
triggerall = Numhelper(24) = 1
triggerall = Helper(24),StateNo = 24
triggerall = Numhelper(32) = 1
triggerall = Helper(32),StateNo = 32
triggerall = NumHelper(2510) = 0
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = ctrl
trigger1 = p2statetype != A
trigger1 = p2dist x = [150,200]
trigger1 = Random <= var(59)*15
trigger2 = p2statetype != A
trigger2 = enemy,numproj = 0
trigger2 = p2dist x = [450,750]
trigger2 = Random <= var(59)*10
trigger3 = p2statetype = A
trigger3 = p2dist x = [751,2000]
trigger3 = p2dist y < -180
trigger3 = Random <= var(59)*50
trigger4 = p2statetype = A
trigger4 = p2dist x = [-150,750]
trigger4 = p2dist y < -350
trigger4 = Random <= var(59)*25
trigger5 = p2statetype != A
trigger5 = enemy,numproj >= 1
trigger5 = p2dist x = [450,750]
trigger5 = Random <= var(59)*40
trigger6 = p2dist x = [201,500]
trigger6 = Random <= var(59)*5

;===========================================================================
;爆裂攻擊
[State -1, Explosion Attack]
type = ChangeState
value = 2000
triggerall = var(59) >= 3
triggerall = RoundState = 2
triggerall = Numhelper(24) = 1
triggerall = Helper(24),StateNo = 24
triggerall = Numhelper(32) = 1
triggerall = Helper(32),StateNo = 32
triggerall = NumHelper(2201) = 0
triggerall = NumHelper(2202) = 0
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = (var(51) != 2000) || (var(52) < ifelse(random < 500,2,3))
triggerall = p2stateno != [120,159]
triggerall = p2dist y = [-200,50]
triggerall = ctrl
trigger1 = p2statetype != A
trigger1 = p2dist x = [60,200]
trigger1 = Random <= var(59)*10
trigger2 = p2statetype != A
trigger2 = p2dist x = [200,350]
trigger2 = Random <= var(59)*20
trigger3 = p2statetype != A
trigger3 = p2dist x = [351,450]
trigger3 = Random <= var(59)*22
trigger4 = p2statetype = A
trigger4 = p2dist x = [60,200]
trigger4 = Random <= var(59)*18
trigger5 = p2statetype = A
trigger5 = p2dist x = [200,400]
trigger5 = Random <= var(59)*22
trigger6 = p2statetype = A
trigger6 = p2dist x = [401,500]
trigger6 = Random <= var(59)*28

;===========================================================================
;抓技攻擊
[State -1, Grasping Attack]
type = ChangeState
value = 330
triggerall = var(59) >= 1
triggerall = RoundState = 2
triggerall = Numhelper(24) = 1
triggerall = Helper(24),StateNo = 24
triggerall = Numhelper(32) = 1
triggerall = Helper(32),StateNo = 32
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2dist x = [0,180]
triggerall = stateno != 100
triggerall = ctrl
trigger1 = p2movetype = A
trigger1 = Random <= var(59)*25
trigger2 = (enemynear,stateno != [40,45])
trigger2 = p2movetype != H || (enemynear,stateno = [120,159])
trigger2 = backedgedist < 300
trigger2 = Random <= var(59)*60
trigger3 = (enemynear,stateno != [40,45])
trigger3 = p2movetype != H || (enemynear,stateno = [120,159])
trigger3 = backedgedist >= 300
trigger3 = Random <= var(59)*25
trigger4 = (enemynear,stateno != [40,45])
trigger4 = p2movetype != H || (enemynear,stateno = [120,159])
trigger4 = frontedgedist >= 300
trigger4 = Random <= var(59)*60
trigger5 = (enemynear,stateno != [40,45])
trigger5 = p2movetype != H || (enemynear,stateno = [120,159])
trigger5 = frontedgedist < 300
trigger5 = Random <= var(59)*10

;===========================================================================
;快跑前進
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) >= 1
triggerall = RoundState = 2
triggerall = Numhelper(24) = 1
triggerall = Helper(24),StateNo = 24
triggerall = Numhelper(32) = 1
triggerall = Helper(32),StateNo = 32
triggerall = statetype != A
triggerall = movetype != H
triggerall = movetype != A
triggerall = ctrl
trigger1 = p2dist x >= 500
trigger1 = Random <= var(59)*100
trigger2 = p2movetype != A
trigger2 = frontedgedist >= 300
trigger2 = p2dist x = [350,750]
trigger2 = p2dist y = [-300,0]
trigger2 = Random <= var(59)*15
trigger3 = p2dist x = [400,500]
trigger3 = p2dist y = [-300,0]
trigger3 = Random <= var(59)*10

;===========================================================================
;快跑後退
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) >= 1
triggerall = RoundState = 2
triggerall = Numhelper(24) = 1
triggerall = Helper(24),StateNo = 24
triggerall = Numhelper(32) = 1
triggerall = Helper(32),StateNo = 32
triggerall = statetype != A
triggerall = movetype != H
triggerall = movetype != A
triggerall = backedgedist >= 300
triggerall = ctrl
trigger1 = p2dist x <= 120
trigger1 = Random <= var(59)*55
trigger2 = p2movetype = A
trigger2 = p2dist x = [0,300]
trigger2 = p2dist y = [-300,0]
trigger2 = Random <= var(59)*15

;===========================================================================
;拳頭攻擊1
[State -1, Punch Attack 1]
type = ChangeState
value = 310
triggerall = var(59) >= 1
triggerall = RoundState = 2
triggerall = Numhelper(24) = 1
triggerall = Helper(24),StateNo = 24
triggerall = Numhelper(32) = 1
triggerall = Helper(32),StateNo = 32
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = (var(51) != 310) || (var(52) < 2)
triggerall = p2dist y > -200
triggerall = ctrl || (StateNo = [100,105])
trigger1 = p2dist x = [-100,400]
trigger1 = p2statetype != A
trigger1 = Random <= var(59)*ifelse(power >= 2000,50,90)
trigger2 = p2dist x = [0,450]
trigger2 = p2statetype = A
trigger2 = Random <= var(59)*ifelse(power >= 2000,25,55)

;===========================================================================
;拳頭攻擊2
[State -1, Punch_Attack 2]
type = ChangeState
value = 320
triggerall = var(59) >= 1
triggerall = RoundState = 2
triggerall = Numhelper(24) = 1
triggerall = Helper(24),StateNo = 24
triggerall = Numhelper(32) = 1
triggerall = Helper(32),StateNo = 32
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2dist y > -330
triggerall = ctrl || (StateNo = [100,105])
trigger1 = p2statetype != A
trigger1 = p2dist x = [300,450]
trigger1 = Random <= var(59)*ifelse(power >= 2000,20,40)
trigger2 = p2statetype = A
trigger2 = p2dist x = [350,520]
trigger2 = p2stateno != [120,159]
trigger2 = Random <= var(59)*ifelse(power >= 2000,45,65)
trigger3 = p2statetype != A
trigger3 = frontedgedist < 350
trigger3 = p2dist x = [300,450]
trigger3 = Random <= var(59)*ifelse(power >= 2000,50,80)
trigger4 = p2statetype = A
trigger4 = frontedgedist < 350
trigger4 = p2dist x = [350,540]
trigger4 = Random <= var(59)*ifelse(power >= 2000,55,85)
trigger5 = p2movetype = A
trigger5 = p2stateno != [120,159]
trigger5 = p2dist x = [80,300]
trigger5 = Random <= var(59)*25
trigger5 = backedgedist >= 400
