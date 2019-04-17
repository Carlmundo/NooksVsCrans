;===========================================================================
;---------------------------------------------------------------------------
;States that are always executed (use Statedef -2)
;經常被執行的States (使用 Statedef -2)
;---------------------------------------------------------------------------
;===========================================================================
[Statedef -2]

;---------------------------------------------------------------------------
;Debug調試模式專用
;在DeBug模式(按下Ctrl+D)顯示p2dist x,p2dist y,p2bodydist x,p2bodydist y數值
[State -2, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "p2dist x=%d,p2dist y=%d,p2bodydist x=%d,p2bodydist y=%d\n"
params = floor(P2Dist X),floor(P2Dist Y),floor(P2BodyDist X),floor(P2BodyDist Y)

;Debug調試模式專用
;在DeBug模式(按下Ctrl+D)顯示frontedgedist,backedgedist,pos x,pos y數值
[State -2,AppendToClipboard]
type = AppendToClipboard
trigger1 = 1
text = "frontedgedist=%d,backedgedist=%d,pos x=%d,pos y=%d\n"
params = floor(FrontEdgeDist),floor(BackEdgeDist),floor(Pos X),floor(Pos Y)

;---------------------------------------------------------------------------
;角色死亡後轉到特定動畫編號
[State -2, Death Animation]
type = SelfState
triggerall = StateNo = [5000,5399]
triggerall = StateNo != 5150
triggerall = StateNo != 5120
trigger1 = Life < 1
trigger2 = Life = 0
value = 5150

;---------------------------------------------------------------------------
;投擲技無效
[State -2, Throw Moves Invalid] 
type = NotHitBy 
trigger1 = 1
value = , NT, ST, HT, AT
time = -1

;---------------------------------------------------------------------------
;防禦關閉
[State -2, Guard Off]
type = AssertSpecial
trigger1 = 1
flag = NoStandGuard
flag2 = NoCrouchGuard
flag3 = NoAirGuard

;---------------------------------------------------------------------------
;角色無倒影效果
[State -2, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

;---------------------------------------------------------------------------
;招式類型為攻擊時 角色不會自動轉身
[State -2, No Auto Turn]
type = AssertSpecial
trigger1 = MoveType = A
flag = NoAutoTurn

;===========================================================================
;FVar10 Set Up (This is used to modify the damage value)
;浮點變數10設置 (這裡用於改變傷害 相當於攻擊力修正)
[State -2, Attack Correction Fvar 1 (1 VS 1)];設定一號色表到十號色表時 fvar(10)浮點變數為1
type = VarSet
triggerall = PalNo = [1,10]
trigger1 = NumPartner = 0
trigger1 = NumEnemy <= 1
fvar(10) = 1.00
ignorehitpause = 1

[State -2, Attack Correction Fvar 2 (1 VS 1)];設定十一號色表時 fvar(10)浮點變數值改變
type = VarSet
triggerall = PalNo = 11
trigger1 = NumPartner = 0
trigger1 = NumEnemy <= 1
fvar(10) = 2.30
ignorehitpause = 1

[State -2, Attack Correction Fvar 3 (1 VS 1)];設定十二號色表時 fvar(10)浮點變數數值改變
type = VarSet
triggerall = PalNo = 12
trigger1 = NumPartner = 0
trigger1 = NumEnemy <= 1
fvar(10) = 1.50
ignorehitpause = 1

;---------------------------------------------------------------------------
[State -2, Attack Correction Fvar 1 (2 VS 2)]
type = VarSet
triggerall = PalNo = [1,10]
trigger1 = NumPartner >= 1
trigger1 = NumEnemy > 1
fvar(10) = 1.00
ignorehitpause = 1

[State -2, Attack Correction Fvar 2 (2 VS 2)]
type = VarSet
triggerall = PalNo = 11
trigger1 = NumPartner >= 1
trigger1 = NumEnemy > 1
fvar(10) = 2.30
ignorehitpause = 1

[State -2, Attack Correction Fvar 3 (2 VS 2)]
type = VarSet
triggerall = PalNo = 12
trigger1 = NumPartner >= 1
trigger1 = NumEnemy > 1
fvar(10) = 1.50
ignorehitpause = 1

;---------------------------------------------------------------------------
[State -2, Attack Correction Fvar 1 (2 VS 1)]
type = VarSet
triggerall = PalNo = [1,10]
trigger1 = NumPartner >= 1
trigger1 = NumEnemy <= 1
fvar(10) = 1.00
ignorehitpause = 1

[State -2, Attack Correction Fvar 2 (2 VS 1)]
type = VarSet
triggerall = PalNo = 11
trigger1 = NumPartner >= 1
trigger1 = NumEnemy <= 1
fvar(10) = 2.30
ignorehitpause = 1

[State -2, Attack Correction Fvar 3 (2 VS 1)]
type = VarSet
triggerall = PalNo = 12
trigger1 = NumPartner >= 1
trigger1 = NumEnemy <= 1
fvar(10) = 1.50
ignorehitpause = 1

;---------------------------------------------------------------------------
[State -2, Attack Correction Fvar 1 (1 VS 2)]
type = VarSet
triggerall = PalNo = [1,10]
trigger1 = NumPartner = 0
trigger1 = NumEnemy > 1
fvar(10) = 1.20
ignorehitpause = 1

[State -2, Attack Correction Fvar 2 (1 VS 2)]
type = VarSet
triggerall = PalNo = 11
trigger1 = NumPartner = 0
trigger1 = NumEnemy > 1
fvar(10) = 2.50
ignorehitpause = 1

[State -2, Attack Correction Fvar 3 (1 VS 2)]
type = VarSet
triggerall = PalNo = 12
trigger1 = NumPartner = 0
trigger1 = NumEnemy > 1
fvar(10) = 1.70
ignorehitpause = 1

;===========================================================================
;Get the Damage Calculation
;得到的傷害計算
[State -2, LifeAdd 1]
type = LifeAdd
triggerall = PalNo = [1,11]         ;一號到十一號色表
triggerall = Root,Life >= Lifemax/2 ;本體生命值大於等於1/2時
trigger1 = NumHelper(24) = 1
trigger1 = var(41) = 1
value = -1*(Helper(24),var(40))     ;乘以1倍

[State -2, LifeAdd 2]
type = LifeAdd
triggerall = PalNo = [1,10]         ;一號到十號色表
triggerall = Root,Life < Lifemax/2  ;本體生命值小於1/2時
trigger1 = NumHelper(24) = 1
trigger1 = var(41) = 1
value = -1*((Helper(24),var(40)))/2 ;乘以1倍再除以2

[State -2, LifeAdd 3]
type = LifeAdd
triggerall = PalNo = 11             ;十一號色表
triggerall = Root,Life < Lifemax/2  ;本體生命值小於1/2時
trigger1 = NumHelper(24) = 1
trigger1 = var(41) = 1
value = -1*((Helper(24),var(40)))/4 ;乘以1倍再除以4

[State -2, LifeAdd 4]
type = LifeAdd
triggerall = PalNo = 12             ;十二號色表
triggerall = Root,Life >= Lifemax/2 ;本體生命值大於等於1/2時
trigger1 = NumHelper(24) = 1
trigger1 = var(41) = 1
value = -1*((Helper(24),var(40)))/3 ;乘以1倍再除以3

[State -2, LifeAdd 5]
type = LifeAdd
triggerall = PalNo = 12             ;十二號色表
triggerall = Root,Life < Lifemax/2  ;本體生命值小於1/2時
trigger1 = NumHelper(24) = 1
trigger1 = var(41) = 1
value = -1*((Helper(24),var(40)))/6 ;乘以1倍再除以6

;---------------------------------------------------------------------------
;Damage Calculation Variable
;傷害計算變數
[State -2, VarSet 1]
type = VarSet
trigger1 = var(41) = 1
v = 41
value = 0

[State -2, VarSet 2]
type = VarSet
trigger1 = var(42) = 1
v = 42
value = 0

;===========================================================================
;LifeAdd
;生命回復
[State -2, Palette 12 LifeAdd]
type = LifeAdd
triggerall = Alive
triggerall = PalNo = 12
triggerall = Life != LifeMax
triggerall = RoundState = 2
trigger1 = Life != 0
trigger1 = GameTime % 3 = 0
value = 1

;===========================================================================
;Character Floor Effect
;角色的地板效果
[State -2, Floor 1]
type = Explod
trigger1 = NumExplod(18360) = 0
id = 18360
anim = 18360
pos = 0,-56
postype = p1
sprpriority = -3
removetime = -1
scale = const(size.xscale)*0.40,const(size.yscale)*0.34
ownpal = 1
ignorehitpause = 1

[State -2, Floor 2]
type = Explod
trigger1 = NumExplod(18361) = 0
id = 18361
anim = 18360
pos = 1800,-56
postype = p1
sprpriority = -3
removetime = -1
scale = const(size.xscale)*0.40,const(size.yscale)*0.34
ownpal = 1
ignorehitpause = 1

[State -2, Floor 3]
type = Explod
trigger1 = NumExplod(18362) = 0
id = 18362
anim = 18360
pos = -1800,-56
postype = p1
sprpriority = -3
removetime = -1
scale = const(size.xscale)*0.40,const(size.yscale)*0.34
ownpal = 1
ignorehitpause = 1

[State -2, Floor 4]
type = Explod
trigger1 = NumExplod(18363) = 0
id = 18363
anim = 18360
pos = 3600,-56
postype = p1
sprpriority = -3
removetime = -1
scale = const(size.xscale)*0.40,const(size.yscale)*0.34
ownpal = 1
ignorehitpause = 1

[State -2, Floor 5]
type = Explod
trigger1 = NumExplod(18364) = 0
id = 18364
anim = 18360
pos = -3600,-56
postype = p1
sprpriority = -3
removetime = -1
scale = const(size.xscale)*0.40,const(size.yscale)*0.34
ownpal = 1
ignorehitpause = 1

[State -2, Floor 6]
type = Explod
trigger1 = NumExplod(18365) = 0
id = 18365
anim = 18360
pos = 5400,-56
postype = p1
sprpriority = -3
removetime = -1
scale = const(size.xscale)*0.40,const(size.yscale)*0.34
ownpal = 1
ignorehitpause = 1

[State -2, Floor 7]
type = Explod
trigger1 = NumExplod(18366) = 0
id = 18366
anim = 18360
pos = -5400,-56
postype = p1
sprpriority = -3
removetime = -1
scale = const(size.xscale)*0.40,const(size.yscale)*0.34
ownpal = 1
ignorehitpause = 1

[State -2, Floor 8]
type = Explod
trigger1 = NumExplod(18367) = 0
id = 18367
anim = 18360
pos = 7200,-56
postype = p1
sprpriority = -3
removetime = -1
scale = const(size.xscale)*0.40,const(size.yscale)*0.34
ownpal = 1
ignorehitpause = 1

[State -2, Floor 9]
type = Explod
trigger1 = NumExplod(18368) = 0
id = 18368
anim = 18360
pos = -7200,-56
postype = p1
sprpriority = -3
removetime = -1
scale = const(size.xscale)*0.40,const(size.yscale)*0.34
ownpal = 1
ignorehitpause = 1

;===========================================================================
;Titan Body Steam Helper
;巨人身體蒸氣Helper
[State -2, Titan Body Steam Helper]
type = Helper
triggerall = RoundState >= 0
trigger1 = NumHelper(99990) = 0
stateno = 99990
id = 99990
postype = p1
pos = 0,0
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 999999999999999
pausemovetime = 999999999999999

;Titan Body Smoke Dust (Effect Switch)
;巨人身體煙塵 (效果開關)
;[State -2, Titan Body Smoke Dust Effect Switch]
;type = VarSet
;trigger1 = Parent,Alive = 1
;persistent = 0
;v = 11
;value = (1) ;Titan Body Smoke Dust Effect Switch ON(1)/OFF(0)

;===========================================================================
;Titan Body Steam
;巨人身體蒸氣
[State -2, VarRandom 1]
type = VarRandom
trigger1 = var(11) = 1
v = 54
range = -2,2

[State -2, VarRandom 2]
type = VarRandom
trigger1 = var(11) = 1
v = 55
range = -6,6

[State -2, VarRandom 3]
type = VarRandom
trigger1 = var(11) = 1
v = 56
range= -16,-8

[State -2, Steam A1]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13031
id = 13030
removetime = 60
postype = p1
pos = 85*const(size.yscale),-300*const(size.yscale)
scale = const(size.yscale)*0.2,const(size.yscale)*0.7
sprpriority = 3
ownpal = 1
vel = var(54),var(56)
facing = ifelse(root,facing=1,1,-1)

[State -2, Steam A2]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13030
id = 13031
removetime = 60
postype = p1
pos = 85*const(size.yscale),-300*const(size.yscale)
scale = const(size.yscale)*0.2,const(size.yscale)*0.7
sprpriority = 3
ownpal = 1
vel = var(54),var(56)
facing = ifelse(root,facing=1,1,-1)

[State -2, Steam A3]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13031
id = 13032
removetime = 60
postype = p1
pos = 85*const(size.yscale),-300*const(size.yscale)
scale = const(size.yscale)*0.2,const(size.yscale)*0.7
sprpriority= -1
ownpal = 1
vel = var(54),var(56)
facing = ifelse(facing=1,-1,1)

[State -2, Steam A4]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13030
id = 13033
removetime = 60
postype = p1
pos = 85*const(size.yscale),-300*const(size.yscale)
scale = const(size.yscale)*0.2,const(size.yscale)*0.7
sprpriority = -1
ownpal = 1
vel = var(54),var(56)
facing = ifelse(facing=1,-1,1)

[State -2, Steam B1]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13031
id = 13034
removetime = 60
postype = p1
pos = 18*const(size.yscale),-330*const(size.yscale)
scale = const(size.yscale)*0.2,const(size.yscale)*0.9
sprpriority = 3
ownpal = 1
vel = var(54),var(56)
facing = ifelse(root,facing=1,1,-1)

[State -2, Steam B2]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13030
id = 13035
removetime = 60
postype = p1
pos = 18*const(size.yscale),-330*const(size.yscale)
scale = const(size.yscale)*0.2,const(size.yscale)*0.9
sprpriority = 3
ownpal = 1
vel = var(54),var(56)
facing = ifelse(root,facing=1,1,-1)

[State -2, Steam B3]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13031
id = 13036
removetime = 60
postype = p1
pos = 18*const(size.yscale),-330*const(size.yscale)
scale = const(size.yscale)*0.2,const(size.yscale)*0.9
sprpriority = -1
ownpal = 1
vel = var(54),var(56)
facing = ifelse(facing=1,-1,1)

[State -2, Steam B4]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13030
id = 13037
removetime = 60
postype = p1
pos = 18*const(size.yscale),-330*const(size.yscale)
scale = const(size.yscale)*0.2,const(size.yscale)*0.9
sprpriority = -1
ownpal = 1
vel = var(54),var(56)
facing = ifelse(facing=1,-1,1)

[State -2, Steam C1]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13031
id = 13038
removetime = 60
postype = p1
pos = 17*const(size.yscale),-300*const(size.yscale)
scale = const(size.yscale)*0.2,const(size.yscale)*0.9
sprpriority = 3
ownpal = 1
vel = var(54),var(56)
facing = ifelse(root,facing=1,1,-1)

[State -2, Steam C2]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13030
id = 13039
removetime = 60
postype = p1
pos = 17*const(size.yscale),-300*const(size.yscale)
scale = const(size.yscale)*0.2,const(size.yscale)*0.9
sprpriority = 3
ownpal = 1
vel = var(54),var(56)
facing = ifelse(root,facing=1,1,-1)

[State -2, Steam C3]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13031
id = 13040
removetime = 60
postype = p1
pos = 17*const(size.yscale),-300*const(size.yscale)
scale = const(size.yscale)*0.2,const(size.yscale)*0.9
sprpriority = -1
ownpal = 1
vel = var(54),var(56)
facing = ifelse(facing=1,-1,1)

[State -2, Steam C4]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13030
id = 13041
removetime = 60
postype = p1
pos = 17*const(size.yscale),-300*const(size.yscale)
scale = const(size.yscale)*0.2,const(size.yscale)*0.9
sprpriority = -1
ownpal = 1
vel = var(54),var(56)
facing = ifelse(facing=1,-1,1)

[State -2, Steam D1]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13031
id = 13042
removetime = 60
postype = p1
pos = -35*const(size.yscale),-200*const(size.yscale)
scale = const(size.yscale)*0.7,const(size.yscale)*0.9
sprpriority = 3
ownpal = 1
vel = var(54),var(56)
facing = ifelse(root,facing=1,1,-1)

[State -2, Steam D2]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13030
id = 13043
removetime = 60
postype = p1
pos = -35*const(size.yscale),-200*const(size.yscale)
scale = const(size.yscale)*0.7,const(size.yscale)*0.9
sprpriority = 3
ownpal = 1
vel = var(54),var(56)
facing = ifelse(root,facing=1,1,-1)

[State -2, Steam D3]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13031
id = 13044
removetime = 60
postype = p1
pos = -35*const(size.yscale),-200*const(size.yscale)
scale = const(size.yscale)*0.7,const(size.yscale)*0.9
sprpriority = -1
ownpal = 1
vel = var(54),var(56)
facing = ifelse(facing=1,-1,1)

[State -2, Steam D4]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13030
id = 13045
removetime = 60
postype = p1
pos = -35*const(size.yscale),-200*const(size.yscale)
scale = const(size.yscale)*0.7,const(size.yscale)*0.9
sprpriority = -1
ownpal = 1
vel = var(54),var(56)
facing = ifelse(facing=1,-1,1)

[State -2, Steam E1]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13031
id = 13046
removetime = 60
postype = p1
pos = -155*const(size.yscale),-150*const(size.yscale)
scale = const(size.yscale)*1.2,const(size.yscale)*1.4
sprpriority = -5
ownpal = 1
vel = var(55),var(56)
facing = ifelse(root,facing=1,1,-1)

[State -2, Steam E2]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13030
id = 13047
removetime = 60
postype = p1
pos = -155*const(size.yscale),-150*const(size.yscale)
scale = const(size.yscale)*1.2,const(size.yscale)*1.4
sprpriority = -5
ownpal = 1
vel = var(55),var(56)
facing = ifelse(root,facing=1,1,-1)

[State -2, Steam E3]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13031
id = 13048
removetime = 60
postype = p1
pos = -155*const(size.yscale),-150*const(size.yscale)
scale = const(size.yscale)*1.2,const(size.yscale)*1.4
sprpriority = -5
ownpal = 1
vel = var(55),var(56)
facing = ifelse(facing=1,-1,1)

[State -2, Steam E4]
type = Explod
triggerall = Alive = 1
triggerall = GameTime %7 = 0
trigger1 = RoundState = 2
trigger1 = var(11) = 1
anim = 13030
id = 13049
removetime = 60
postype = p1
pos = -155*const(size.yscale),-150*const(size.yscale)
scale = const(size.yscale)*1.2,const(size.yscale)*1.4
sprpriority = -5
ownpal = 1
vel = var(55),var(56)
facing = ifelse(facing=1,-1,1)

;===========================================================================
;State脫離
[State -2, State Missing]
type = SelfState
triggerall = Root,Alive
triggerall = Root,StateNo = 0
triggerall = !SysVar(6)= GameTime%100
trigger1 = ctrl = 0
value = 35

;===========================================================================
;本體位置綁定
[State -2, Root Pos Bind 1]
type = PosSet
trigger1 = 1
y = 0

[State -2, Root Pos Bind 2]
type = VelSet
trigger1 = 1
x = 0
y = 0

;===========================================================================
;---------------------------------------------------------------------------
;States that are executed when in self's state file (use Statedef -3)
;States在自我的狀態文件執行 (使用 Statedef -3)
;---------------------------------------------------------------------------
;===========================================================================
[Statedef -3]

[State -3, State Missing VarSet];脫離變數
type = VarSet
trigger1 = 1
sysvar(6)= GameTime%100
ignorehitpause = 1
