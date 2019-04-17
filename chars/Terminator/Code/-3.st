[Statedef -3]

;удаление вспышки от пулемета
[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = PrevStateno = 611
trigger1 = Stateno = 52
id = 10006
ignorehitpause = 1

;удаление звука пулемета
[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 240 && stateno != 411 && stateno != 611 && stateno != 3000
channel = 3
ignorehitpause = 1

;AI Block
[State -1, AI Block]
type = ChangeState
value = 120
triggerall = Ailevel && ctrl && roundstate = 2
trigger1 = Inguarddist && (Stateno != [120,155])
trigger1 = (P2movetype = A) && (Random <= Ailevel*900) ;2-125

[State -3, AssertSpecial]
type = AssertSpecial
trigger1 = !StateNo && Stateno != 11 && Stateno != 52 
flag = noautoturn
ignorehitpause = 1

;Разворот
[State -3, TurnAnim]
type = ChangeState
triggerall = !stateno || stateno = 11 || Stateno = 52 
triggerall = stateno != 1 ;&& PrevStateno != 1
trigger1 = P2bodydist x <= -25
trigger1 = Statetype != A 
value = 1
ignorehitpause = 1

;Переадресация хитов
[State -3, HitOverride]
type = HitOverride
trigger1 = StateType != A
trigger1 = command != "holdback"
slot = 0
attr = SCA, AA,AP
stateno = 5000
time = 1
ignorehitpause = 1

[State -3, HitOverride]
type = HitOverride
trigger1 = StateType = A
trigger1 = command != "holdback"
slot = 0
attr = SCA, AA,AP
stateno = 5020
time = 1
ignorehitpause = 1

;Звук приземления терминатора
[State -3, LandSound]
type = PlaySnd
trigger1 = Time = 1 && (stateno = 52 || stateno = 106)
trigger2 = Stateno = 1 && PrevStateNo = 52
value = S7,2
channel = 0

[State -3, LandSound 3 form]
type = PlaySnd
triggerall = var(50) = 2
trigger1 = Time = 1 && (stateno = 52 || stateno = 106)
trigger2 = Stateno = 1 && PrevStateNo = 52
value = S21,0=random%2
channel = 1

;Ходьба и бег - звуки сапог
[State -3, Right!!!]
type = PlaySnd
triggerall = var(50) < 2
triggerall = (stateno = 20) || (stateno =  100) || (stateno =  192)
trigger1 = (Anim = 20+(var(50)*10000)) && AnimElem = 7
trigger2 = (Anim = 21+(var(50)*10000)) && AnimElem = 2
trigger3 = Anim = 100+(var(50)*10000) && AnimElem = 7
value = S20,0
channel = 0

[State -3, Left!!!]
type = PlaySnd
triggerall = var(50) < 2
triggerall = (stateno = 20) || (stateno =  100) || (stateno =  192)
trigger1 = (Anim = 20+(var(50)*10000)) && AnimElem = 2
trigger2 = (Anim = 21+(var(50)*10000)) && AnimElem = 7
trigger3 = Anim = 100+(var(50)*10000)&& AnimElem = 2
value = S20,1
channel = 0

[State -3, 3 form Right!!!]
type = PlaySnd
triggerall = var(50) = 2
triggerall = (stateno = 20) || (stateno =  100) || (stateno =  192)
trigger1 = (Anim = 20+(var(50)*10000)) && AnimElem = 7
trigger2 = (Anim = 21+(var(50)*10000)) && AnimElem = 2
trigger3 = Anim = 100+(var(50)*10000) && AnimElem = 7
value = S21,0
channel = 1

[State -3, 3 form Left!!!]
type = PlaySnd
triggerall = var(50) = 2
triggerall = (stateno = 20) || (stateno =  100) || (stateno =  192)
trigger1 = (Anim = 20+(var(50)*10000)) && AnimElem = 2
trigger2 = (Anim = 21+(var(50)*10000)) && AnimElem = 7
trigger3 = Anim = 100+(var(50)*10000)&& AnimElem = 2
value = S21,1
channel = 1

;Интро 2 - остановка музыки
[State -3, StopIntroSnd]
type = StopSnd
trigger1 = PrevStateNo = 191 && !Stateno && time = 1
channel = 1 

;Звук взрыва в момент смерти
[State -3, PlaySnd]
type = PlaySnd
trigger1 = Stateno = 5150 && anim = 7000 && AnimElem = 2
value = S6666,1

;======================TACTIC=SCREEN=======================
;Прицел на 1-м противнике в интро
[State -3, Explod] 
type = Explod
triggerall = Roundstate = 1 && StateNo = 192 && NumEnemy
triggerall = Cond(P3Name = "Terminator" && TeamMode = Simul, !partner,NumExplod (1940) ,1)
trigger1 =  Time >= 60
anim = 194
ID = 1940
pos = Var(5), Var(6)-70
postype = left ;p2,front,back,left,right
bindtime = 1
vel = -2,1
;random = 1,1
scale = 0.5,0.5
sprpriority = 5
ownpal = 1
ontop = 1
removetime = 1

;Прицел на 2-м противнике в интро
[State -3, Explod] 
type = Explod
triggerall = Roundstate = 1 && StateNo = 192 && NumEnemy
triggerall = Cond(P3Name = "Terminator" && TeamMode = Simul, !partner,NumExplod (1941) ,1)
trigger1 = P3Name = "Terminator" && TeamMode = Simul && Time >= 60 
anim = 194
ID = 1941
pos = Var(7), Var(8)-70
postype = left ;p2,front,back,left,right
bindtime = 1
vel = -2,1
;random = 1,1
scale = 0.5,0.5
sprpriority = 5
ownpal = 1
ontop = 1
removetime = 1
;=====================================
;Цели для тактического экрана, интро
[State -2, VarSet]
type = VarSet
triggerall = NumEnemy
trigger1 = Stateno = 192
v = 5 
value = ceil(enemyNear(0), screenpos x) 

[State -2, VarSet]
type = VarSet
triggerall = NumEnemy
trigger1 = Stateno = 192
v = 6 
value = ceil(enemyNear(0), screenpos y)

[State -2, VarSet]
type = VarSet
triggerall = NumEnemy && TeamMode = Simul
trigger1 = Stateno = 192
v = 7 
value = ceil(enemyNear(1), screenpos x) 

[State -2, VarSet]
type = VarSet
triggerall = NumEnemy && TeamMode = Simul
trigger1 = Stateno = 192
v = 8  
value = ceil(enemyNear(1), screenpos y)
;=====================================
;Прицел для тактического экрана
[State -3, Explod]
type = Explod
triggerall = NumEnemy
trigger1 = Stateno = 211 || Stateno = [3000,3200]
anim = 194
ID = 194
pos = var(10),var(11)-60+(EnemyNear(var(9)),Hitfall && Stateno = 211)*30  
postype = left ;p2,front,back,left,right
bindtime = 1
vel = 0,0
;random = 1,1
scale = 0.5,0.5
removetime = 1
sprpriority = 5
ownpal = 1
ontop = 1
supermovetime =  256
pausemovetime = 256
removeongethit = 1
;=====================================
;Переключение целей в тактическом экране
[State -2, VarSet]
type = VarSet
triggerall = NumEnemy && TeamMode = Simul
trigger1 = Stateno = 211 && (Command = "fwd"||Command = "back") 
v = 9 
value = IfElse(!Var(9) && EnemyNear(1), Alive, 1, 0)

[State -2, VarSet]
type = VarSet
triggerall= NumEnemy
trigger1 = Stateno != 211
v = 9 
value = 0
;====================================
;X-координата цели
[State -2, VarSet]
type = VarSet
triggerall = NumEnemy && Roundstate = 2
trigger1 = Stateno = 211 || Stateno = [3000,3200]
v = 10 
value = Cond((EnemyNear (Var(9)), Alive), ceil(enemyNear(TeamMode = Simul && Var(9)), screenpos x), ceil(enemyNear(!Var(9)), screenpos x))

;Y-координата цели
[State -2, VarSet]
type = VarSet
triggerall = NumEnemy && Roundstate = 2
trigger1 = Stateno = 211 || Stateno = [3000,3200]
v = 11  
value = Cond((EnemyNear (Var(9)), Alive), ceil(enemyNear(TeamMode = Simul && Var(9)), screenpos y), ceil(enemyNear(!Var(9)), screenpos y))
;=======================================

;Задержка для тактического экрана
[State -2, VarReSet]
type = VarSet
trigger1 = FVar(10)<=0
fv = 10
value = 0
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = Stateno = 211
fv = 10
value = 10.00000
ignorehitpause = 1

[State -2, VarAdd]
type = VarAdd
trigger1 = Stateno != 211 && FVar(10)>0
fv = 10
value = -0.222222
ignorehitpause = 1
;========================================

;Удаление прицела для тактического экрана
[State -2, RemoveExplod]
type = RemoveExplod
triggerall = RoundState = 2 && Stateno != [3000,3200]
trigger1 = ctrl 
trigger2 = Anim != 211+(var(50)*10000) && Anim != 411+(var(50)*10000) ;!NumExplod (195)
id = 194

;Тактический экран - очистка экрана
[State -3, RemoveTSExplod]
type = RemoveExplod
trigger1 = prevstateno = 211
trigger1 = stateno != 211
trigger1 = time = 1

;Выход из тактического экрана
[State -3, ChangeState]
type = ChangeState
triggerall = stateno = 211
trigger1 = Statetype != S && Statetype != C 
trigger2 = (Vel x != 0) || (Vel y != 0) 
trigger3 = NumHelper (195) >= 2
trigger4 = ctrl
value = 0
ctrl = 1