
[Statedef -2]

;Нет бросков
[State -2, NotTrows]
type = NotHitBy
trigger1 = 1
value = ,AT
time = 1
ignorehitpause = 1

;Счетчик гранатомета
[State -2, VarSet]
type = VarSet
trigger1 = !roundstate || !Numhelper(10009)
trigger2 = FVar(5)<0
fv = 5
value = 0
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = Stateno = 208 || Stateno = 409 || Stateno = 609 
trigger1 = !Numhelper(10009)
fv = 5
value = 10
ignorehitpause = 1

[State 10010, VarAdd]
type = VarAdd
trigger1 = FVar(5)>0 && Numhelper(10009)
fv = 5
value = -0.111222
ignorehitpause = 1

;Отладка
[State -2, Debug Info]
type =DisplayToClipboard
trigger1 = roundstate > 0
text = "TERMINATOR_LIFE = %d, TERMINATOR_POWER = %d, \nENEMY_COORD = %d,%d, TERMINATOR_FORM = %d, Var59 = %d"
params = Life, Power, Var(10), Var(11), Var(50)+1, Var(59)

;Постоянное пополнение силы
[State -2, PowerAdd]    
type = PowerAdd
trigger1 = Alive
value = 1 + var(50)
ignorehitpause = 1

;Постоянное пополнение энергии
[State -2, LifeAdd]    
type = LifeAdd
triggerall = Alive
trigger1 = Var(50)=1 && Life < Lifemax/100*67
value = Random%20=0

[State -2, LifeAdd]    
type = LifeAdd
triggerall = Alive
trigger1 = Var(50)=2 && Life < Lifemax/100*34
value = Random%10=0

;Переход во вторую форму и третью форму
[State -2, ChangeForm1to2] 
type = ChangeState
triggerall = Movetype = I && !var(50) && Life && P2Life && Statetype = S
trigger1 = Life <= Lifemax/100*67
trigger2 = Life <= Lifemax/100*34  ;^^ !Stateno);(stateno = [5000,5900]) && ;|| ())
value = 6666
;
[State -2, ChangeForm2to3] 
type = ChangeState
trigger1 = Life <= Lifemax/100*34 && Life && P2Life && Statetype = S && Movetype = H && var(50)=1;|| (!Stateno))
;trigger2 = Life <= Lifemax/100*34 && Life && P2Life && Statetype = S && !var(50)
value = 5070

;Cмена формы доп.
[State -2, VarSet]
type = VarSet
triggerall = Stateno != 6666 || Stateno != 7777
trigger1 = (Var(50) = 1)  && (Life > Lifemax/100*67)
v = 50
value = 0

[State -2, VarSet]
type = VarSet
triggerall = Stateno != 6666 || Stateno != 7777
trigger1 = (Var(50) = 2)  && (Life > Lifemax/100*67)
v = 50
value = 0

[State -2, VarSet]
type = VarSet
triggerall = Stateno != 6666 || Stateno != 7777
trigger1 = (Var(50) = 2)  && (Life = (Lifemax/100*34, Lifemax/100*67])
v = 50
value = 1

;[State -2, VarSet]
;type = VarSet
;triggerall = Stateno != 6666 || Stateno != 7777
;trigger1 = (Var(50) != 2) && (Life <= Lifemax/100*34)
;v = 50
;value = 2 

;Обнуление формы
[State -2, ReSetForm]
type = VarSet
trigger1 = RoundState = 0
v = 50
value = 0

;Смерть терминатора
[State -2, ChangeAnim]
type = ChangeAnim
trigger1 = Life <= Lifemax/100*34 && var(50)=2 && Anim = 5050
value = 15050

;Звуки попадания в третьей форме
[State -2, PlaySnd]
type = PlaySnd
trigger1 = GetHitVar(damage) && var(50)=2
trigger1 = Anim >= 20000
value = S200,10
channel = -1

;AI TS reset shoot var
[State -2, VarReSet]
type = VarSet
trigger1= roundstate = 2 && var(59) && AILevel
v = 59   
value = 0
