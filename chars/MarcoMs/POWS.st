;================================================================================
;FREE POW
[Statedef 20998]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 1
anim = 20999
sprpriority = 5
velset = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 30
value = 99999

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, VarSet];PASADOR DE AMMO
type = VarSet
trigger1 = time=0
v = 33    ;fv = 10
value = 999;root,var(10)

[State 0, VarSet];PASADOR DE GRANADAS
type = VarSet
trigger1 = time=0
v = 8    ;fv = 10
value = 999;root,var(10)
 

[State 0, VarSet];CONTROLA Q DAR
type = VarSet
trigger1 = time=0&&random%2
v = 53    ;fv = 10
value = 0;random%2
;ignorehitpause = 
;persistent = 


[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = time
text ="var(53)=%d,var 8 %d, var 10 %d,var 18 %d";"fvar(10) = %f  pos x = %f var11 %d"
params = var(53),var(8),var(10),var(18);fvar(10),pos x,var(11);ignorehitpause = 


[State 0, Helper];NORMAL WEAPONS
type = Helper
triggerall=(root,palno!=2)&&(var(53)=0);&&(root,palno!=11)
trigger1 = time=1
helpertype = normal ;player
name = "WEAPONS"
ID = 18000
stateno = 22000
pos = 20,0
postype = P1    ;p2,front,back,left,right
facing = 1
keyctrl = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 0, Helper];CLONE WEAPONS
type = null;Helper
triggerall=(var(53)=0)&&(root,palno=11)
trigger1 = time=1
helpertype = normal ;player
name = "WEAPONS"
ID = 18000
stateno = 22005
pos = 20,0
postype = P1    ;p2,front,back,left,right
facing = 1
keyctrl = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, Helper];GIMLETWEAPONS
type = Helper
triggerall=root,palno=2&&var(53)=0
trigger1 = time=1
helpertype = normal ;player
name = "WEAPONS"
ID = 18000
stateno = 22002
pos = 20,0
postype = P1    ;p2,front,back,left,right
facing = 1
keyctrl = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
triggerall=var(53)=1&&root,palno!=6&&root,palno!=7&&root,palno!=3
trigger1 = time=1
helpertype = normal ;player
name = "GRENADES"
ID = 18001
stateno = 22003
pos = 20,0
postype = P1    ;p2,front,back,left,right
facing = 1
keyctrl = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
triggerall=var(53)=1&&((root,palno=6)||(root,palno=7)||(root,palno=3))
trigger1 = time=1
helpertype = normal ;player
name = "GRENADES"
ID = 18001
stateno = 22004
pos = 20,0
postype = P1    ;p2,front,back,left,right
facing = 1
keyctrl = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

;WEAPONS=================================================

[State 0, VarSet];VE SI TENEMOS MISMO TIPO DE ARMA
type = VarSet
triggerall=root,var(10)!=109
trigger1 =(var(33)=parent,var(10))&&var(10)&&var(53)=0
v = 19
value = 1

[State 0, VarSet];VE SI DISTINTO MISMO TIPO DE ARMA
type = VarSet
triggerall=root,var(10)!=109
trigger1 =(var(33)!=parent,var(10))&&var(10)&&var(53)=0
v = 19
value = 0


[State 0, VarSet];VE SI TENEMOS MISMO TIPO DE ARMA LVARMOR
type = VarSet
triggerall=root,var(10)=109
trigger1 =(var(33)=parent,fvar(10))&&var(10)&&var(53)=0
v = 19
value = 1

[State 0, VarSet];VE SI DISTINTO MISMO TIPO DE ARMA LVARMOR
type = VarSet
triggerall=root,var(10)=109
trigger1 =(var(33)!=parent,fvar(10))&&var(10)&&var(53)=0
v = 19
value = 0


[State 0, VarSet];PASA TIPO DE ARMA
type = parentVarSet;triggerall=;anim=21005&&numhelper(18000)=0&&root,var(16)!=var(18)&&time>1;*tickspersecond
triggerall=root,var(10)!=109
trigger1 = var(10)&&var(53)=0;time
v = ifelse(root,var(10)>=100,25,10)    ;fv = 
value = var(33)


[State 0, VarSet];PASA TIPO DE ARMA LVARMOR
type = parentVarSet;triggerall=;anim=21005&&numhelper(18000)=0&&root,var(16)!=var(18)&&time>1;*tickspersecond
triggerall=root,var(10)=109
trigger1 = var(10)&&var(53)=0;time
fv = 10
value = var(33)


[State 0, VarSet];var 18 es la q contiene la municion
type = VarSet;aca se calcula cuanta municion dar
trigger1=var(5)=0&&var(18)=0&&var(33)!=18&&var(33)!=19&&var(33)!=20;trigger1 =1
v = 18   ;fv = 10
value =(ifelse((var(33)=1)||(var(33)=10)||(var(33)=11)||(var(33)=14)||(var(33)=15),200,0)+ifelse((var(33)=9),10,0)+ifelse((var(33)=4)||(var(33)=2)||(var(33)=8)||(var(33)=16)||(var(33)=17)||(var(33)=7),ifelse((root,palno=5),1,30),0)+ifelse((var(33)=5)||(var(33)=3)||(var(33)=12),20,0)+ifelse((var(33)=6),40,0)+ifelse((var(33)=13),15,0))

[State 0, VarSet];var 18 es la q contiene la municion
type = VarSet;aca se calcula cuanta municion dar
trigger1=var(5)=1&&var(18)=0&&var(33)!=18;trigger1 = 1
v = 18   ;fv = 10
value =(ifelse((var(33)=1)||(var(33)=10)||(var(33)=11)||(var(33)=14)||(var(33)=15),200,0)+ifelse((var(33)=9),10,0)+ifelse(((var(33)=4)||(var(33)=2)||(var(33)=8)||(var(33)=16)||(var(33)=17)||(var(33)=7)),ifelse((root,palno=5),1,30),0)+ifelse((var(33)=5)||(var(33)=3)||(var(33)=12),20,0)+ifelse((var(33)=6),40,0)+ifelse((var(33)=13),15,0))*ifelse((root,var(10)=var(33))&&(root,var(16)>0),0.75,1)

[State 0, VarSet];var 18 es la q contiene la municion
type = VarSet;aca se calcula cuanta municion dar
trigger1=var(5)=0&&var(18)=0&&((var(33)=18)||(var(33)=19)||(var(33)=20)||(var(33)=51));;trigger1 =1
v = 18   ;fv = 10
value =ifelse(var(33)=18,30,0)+ifelse(var(33)=19,20,0)+ifelse(var(33)=20,200,0)+ifelse(var(33)=51,40,0)

[State 0, VarSet];var 18 es la q contiene la municion
type = VarSet;aca se calcula cuanta municion dar
trigger1=var(5)=1&&var(18)=0&&((var(33)=18)||(var(33)=19)||(var(33)=20)||(var(33)=51));trigger1 = 1
v = 18   ;fv = 10
value = ifelse(var(33)=18,30,0)+ifelse(var(33)=19,20,0)+ifelse(var(33)=51,40,0)+ifelse(var(33)=20,200,0)

[State 0, VarSet];PASA MUNICION DISTINTA
type = parentVarSet
triggerall=root,var(10)!=109
trigger1=var(10)&&(var(18)!=0)&&var(53)=0&&var(19)=0
v = 16    ;fv = 
value = var(18)

[State 0, VarSet];PASA MUNICION IGUAL
type = parentVaradd
triggerall=root,var(10)!=109
trigger1=var(10)&&(var(18)!=0)&&var(53)=0&&var(19)=1
v = 16    ;fv = 
value = var(18)*(.75)

[State 0, VarSet];PASA MUNICION DISTINTA LVARMOR
type = parentVarSet
triggerall=root,var(10)=109
trigger1=var(10)&&(var(18)!=0)&&var(53)=0&&var(19)=0
fv = 24    ;fv = 
value = var(18)

[State 0, VarSet];PASA MUNICION IGUAL LVARMOR
type = parentVaradd
triggerall=root,var(10)=109
trigger1=var(10)&&(var(18)!=0)&&var(53)=0&&var(19)=1
fv = 24    ;fv = 
value = var(18)*(.75)



;GRENADES=================================================

[State 0, VarSet];VE SI TENEMOS MISMO TIPO DE GRANADA
type = VarSet
trigger1 =(var(8)=parent,var(11))&&var(10)&&var(53)=1&&var(8)!=4
v = 19
value = 1

[State 0, VarSet];VE SI DISTINTO MISMO TIPO DE GRANADA
type = VarSet
trigger1 =(var(8)!=parent,var(11))&&var(10)&&var(53)=1&&var(8)!=4
v = 19
value = 0

[State 0, VarSet];PASA TIPO DE GRANADA
type = parentVarSet
trigger1 = var(10)&&var(53)=1&&var(8)!=4
v = 11;ifelse((root,var(10)>=100)&&var(29,29,11)
value = var(8)

[State 0, VarSet];PASA LA MUNICION DE GRANADAS DIFERENTE TIPO
type = parentVarSet
trigger1 = var(10)&&var(53)=1&&var(19)=0&&var(8)!=4
v = 17    ;fv = 10
value = 10

[State 0, VarSet];PASA LA MUNICION DE GRANADAS MISMO TIPO
type = parentVaradd
trigger1 = var(10)&&var(53)=1&&var(19)=1&&var(8)!=4
trigger2 = var(10)&&var(53)=1&&var(8)=4;&&((root,var(10)<100)||(root,var(10)=102))
v = 17
value = 10

[State 0, VarSet];PASA LA MUNICION DE CAÑON
type = parentVaradd
trigger1 = var(10)&&var(53)=1&&var(8)=4;&&((root,var(10)>=100)&&(root,var(10)!=102))
v = 24
value = 10

;LIMPIA LA VAR 10 PARA EVITAR REPETICIONES
[State 0, VarSet]
type = VarSet
trigger1 = var(10)=1
v = 10
value = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(53)=0
trigger1 = numhelper(18000)=0&&time>1&&var(33)!=999;animtime=0
trigger2 = var(53)=1
trigger2 = numhelper(18001)=0&&time>1&&var(8)!=999;animtime=0

;---------------------------------------------------------------------------
;================================================================================
;DEFAULT POW
[Statedef 20999]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 1
anim = 20999
sprpriority = 5
velset = 0,0


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, VarSet];PASADOR DE AMMO
type = VarSet
trigger1 = time=0
v = 33    ;fv = 10
value = 999;root,var(10)

[State 0, VarSet];PASADOR DE GRANADAS
type = VarSet
trigger1 = time=0
v = 8    ;fv = 10
value = 999;root,var(10)
 

[State 0, VarSet];CONTROLA Q DAR
type = VarSet
trigger1 = time=0&&random%2
v = 53    ;fv = 10
value = random%2
;ignorehitpause = 
;persistent = 


[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = time
text ="var(53)=%d,var 8 %d, var 10 %d,var 18 %d";"fvar(10) = %f  pos x = %f var11 %d"
params = var(53),var(8),var(10),var(18);fvar(10),pos x,var(11);ignorehitpause = 


[State 0, Helper];NORMAL WEAPONS
type = Helper
triggerall=(root,palno!=2)&&(var(53)=0);&&(root,palno!=11)
trigger1 = time=1
helpertype = normal ;player
name = "WEAPONS"
ID = 18000
stateno = 22000
pos = 20,0
postype = P1    ;p2,front,back,left,right
facing = 1
keyctrl = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 0, Helper];CLONE WEAPONS
type = null;Helper
triggerall=(var(53)=0)&&(root,palno=11)
trigger1 = time=1
helpertype = normal ;player
name = "WEAPONS"
ID = 18000
stateno = 22005
pos = 20,0
postype = P1    ;p2,front,back,left,right
facing = 1
keyctrl = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, Helper];GIMLETWEAPONS
type = Helper
triggerall=root,palno=2&&var(53)=0
trigger1 = time=1
helpertype = normal ;player
name = "WEAPONS"
ID = 18000
stateno = 22002
pos = 20,0
postype = P1    ;p2,front,back,left,right
facing = 1
keyctrl = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
triggerall=var(53)=1&&root,palno!=6&&root,palno!=7&&root,palno!=3
trigger1 = time=1
helpertype = normal ;player
name = "GRENADES"
ID = 18001
stateno = 22003
pos = 20,0
postype = P1    ;p2,front,back,left,right
facing = 1
keyctrl = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
triggerall=var(53)=1&&((root,palno=6)||(root,palno=7)||(root,palno=3))
trigger1 = time=1
helpertype = normal ;player
name = "GRENADES"
ID = 18001
stateno = 22004
pos = 20,0
postype = P1    ;p2,front,back,left,right
facing = 1
keyctrl = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

;WEAPONS=================================================

[State 0, VarSet];VE SI TENEMOS MISMO TIPO DE ARMA
type = VarSet
triggerall=root,var(10)!=109
trigger1 =(var(33)=parent,var(10))&&var(10)&&var(53)=0
v = 19
value = 1

[State 0, VarSet];VE SI DISTINTO MISMO TIPO DE ARMA
type = VarSet
triggerall=root,var(10)!=109
trigger1 =(var(33)!=parent,var(10))&&var(10)&&var(53)=0
v = 19
value = 0


[State 0, VarSet];VE SI TENEMOS MISMO TIPO DE ARMA LVARMOR
type = VarSet
triggerall=root,var(10)=109
trigger1 =(var(33)=parent,fvar(10))&&var(10)&&var(53)=0
v = 19
value = 1

[State 0, VarSet];VE SI DISTINTO MISMO TIPO DE ARMA LVARMOR
type = VarSet
triggerall=root,var(10)=109
trigger1 =(var(33)!=parent,fvar(10))&&var(10)&&var(53)=0
v = 19
value = 0


[State 0, VarSet];PASA TIPO DE ARMA
type = parentVarSet;triggerall=;anim=21005&&numhelper(18000)=0&&root,var(16)!=var(18)&&time>1;*tickspersecond
triggerall=root,var(10)!=109
trigger1 = var(10)&&var(53)=0;time
v = ifelse(root,var(10)>=100,25,10)    ;fv = 
value = var(33)


[State 0, VarSet];PASA TIPO DE ARMA LVARMOR
type = parentVarSet;triggerall=;anim=21005&&numhelper(18000)=0&&root,var(16)!=var(18)&&time>1;*tickspersecond
triggerall=root,var(10)=109
trigger1 = var(10)&&var(53)=0;time
fv = 10
value = var(33)


[State 0, VarSet];var 18 es la q contiene la municion
type = VarSet;aca se calcula cuanta municion dar
trigger1=var(5)=0&&var(18)=0&&var(33)!=18&&var(33)!=19&&var(33)!=20;trigger1 =1
v = 18   ;fv = 10
value =(ifelse((var(33)=1)||(var(33)=10)||(var(33)=11)||(var(33)=14)||(var(33)=15),200,0)+ifelse((var(33)=9),10,0)+ifelse((var(33)=4)||(var(33)=2)||(var(33)=8)||(var(33)=16)||(var(33)=17)||(var(33)=7),ifelse((root,palno=5),1,30),0)+ifelse((var(33)=5)||(var(33)=3)||(var(33)=12),20,0)+ifelse((var(33)=6),40,0)+ifelse((var(33)=13),15,0))

[State 0, VarSet];var 18 es la q contiene la municion
type = VarSet;aca se calcula cuanta municion dar
trigger1=var(5)=1&&var(18)=0&&var(33)!=18;trigger1 = 1
v = 18   ;fv = 10
value =(ifelse((var(33)=1)||(var(33)=10)||(var(33)=11)||(var(33)=14)||(var(33)=15),200,0)+ifelse((var(33)=9),10,0)+ifelse(((var(33)=4)||(var(33)=2)||(var(33)=8)||(var(33)=16)||(var(33)=17)||(var(33)=7)),ifelse((root,palno=5),1,30),0)+ifelse((var(33)=5)||(var(33)=3)||(var(33)=12),20,0)+ifelse((var(33)=6),40,0)+ifelse((var(33)=13),15,0))*ifelse((root,var(10)=var(33))&&(root,var(16)>0),0.75,1)

[State 0, VarSet];var 18 es la q contiene la municion
type = VarSet;aca se calcula cuanta municion dar
trigger1=var(5)=0&&var(18)=0&&((var(33)=18)||(var(33)=19)||(var(33)=20)||(var(33)=51));;trigger1 =1
v = 18   ;fv = 10
value =ifelse(var(33)=18,30,0)+ifelse(var(33)=19,20,0)+ifelse(var(33)=20,200,0)+ifelse(var(33)=51,40,0)

[State 0, VarSet];var 18 es la q contiene la municion
type = VarSet;aca se calcula cuanta municion dar
trigger1=var(5)=1&&var(18)=0&&((var(33)=18)||(var(33)=19)||(var(33)=20)||(var(33)=51));trigger1 = 1
v = 18   ;fv = 10
value = ifelse(var(33)=18,30,0)+ifelse(var(33)=19,20,0)+ifelse(var(33)=51,40,0)+ifelse(var(33)=20,200,0)

[State 0, VarSet];PASA MUNICION DISTINTA
type = parentVarSet
triggerall=root,var(10)!=109
trigger1=var(10)&&(var(18)!=0)&&var(53)=0&&var(19)=0
v = 16    ;fv = 
value = var(18)

[State 0, VarSet];PASA MUNICION IGUAL
type = parentVaradd
triggerall=root,var(10)!=109
trigger1=var(10)&&(var(18)!=0)&&var(53)=0&&var(19)=1
v = 16    ;fv = 
value = var(18)*(.75)

[State 0, VarSet];PASA MUNICION DISTINTA LVARMOR
type = parentVarSet
triggerall=root,var(10)=109
trigger1=var(10)&&(var(18)!=0)&&var(53)=0&&var(19)=0
fv = 24    ;fv = 
value = var(18)

[State 0, VarSet];PASA MUNICION IGUAL LVARMOR
type = parentVaradd
triggerall=root,var(10)=109
trigger1=var(10)&&(var(18)!=0)&&var(53)=0&&var(19)=1
fv = 24    ;fv = 
value = var(18)*(.75)



;GRENADES=================================================

[State 0, VarSet];VE SI TENEMOS MISMO TIPO DE GRANADA
type = VarSet
trigger1 =(var(8)=parent,var(11))&&var(10)&&var(53)=1&&var(8)!=4
v = 19
value = 1

[State 0, VarSet];VE SI DISTINTO MISMO TIPO DE GRANADA
type = VarSet
trigger1 =(var(8)!=parent,var(11))&&var(10)&&var(53)=1&&var(8)!=4
v = 19
value = 0

[State 0, VarSet];PASA TIPO DE GRANADA
type = parentVarSet
trigger1 = var(10)&&var(53)=1&&var(8)!=4
v = 11;ifelse((root,var(10)>=100)&&var(29,29,11)
value = var(8)

[State 0, VarSet];PASA LA MUNICION DE GRANADAS DIFERENTE TIPO
type = parentVarSet
trigger1 = var(10)&&var(53)=1&&var(19)=0&&var(8)!=4
v = 17    ;fv = 10
value = 10

[State 0, VarSet];PASA LA MUNICION DE GRANADAS MISMO TIPO
type = parentVaradd
trigger1 = var(10)&&var(53)=1&&var(19)=1&&var(8)!=4
trigger2 = var(10)&&var(53)=1&&var(8)=4;&&((root,var(10)<100)||(root,var(10)=102))
v = 17
value = 10

[State 0, VarSet];PASA LA MUNICION DE CAÑON
type = parentVaradd
trigger1 = var(10)&&var(53)=1&&var(8)=4;&&((root,var(10)>=100)&&(root,var(10)!=102))
v = 24
value = 10

;LIMPIA LA VAR 10 PARA EVITAR REPETICIONES
[State 0, VarSet]
type = VarSet
trigger1 = var(10)=1
v = 10
value = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(53)=0
trigger1 = numhelper(18000)=0&&time>1&&var(33)!=999;animtime=0
trigger2 = var(53)=1
trigger2 = numhelper(18001)=0&&time>1&&var(8)!=999;animtime=0

;---------------------------------------------------------------------------
;POW HELPER 1
[Statedef 21000]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 21000
sprpriority = 5
velset = 0,2;-.1jkjkl
poweradd=-(ifelse((root,var(59)),1000,floor(root,fvar(17))))

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 5001,45
volumescale = 256
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, RemapPal]
type = RemapPal
trigger1 =var(27)=0
source = 0,10
dest = 0,10

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1
;ignorehitpause = 
;persistent = 



[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=0;pos y>0;animtime=0
value =21001

;================================================================================
;POW HELPER 2
[Statedef 21001]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 1
anim = 21001
sprpriority = 5
velset = .1,.1


[State 0, VarSet];velocidad del pow
type = VarSet
trigger1 = anim=21001&&animtime=0
v = 11    
value = 2

[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 10    ;fv = 10
value = root,pos x
;ignorehitpause = 
;persistent = 

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime=0
value = 21002





[State 0, VarSet]
type = VarSet
triggerall = ((fvar(10))=(pos x));&&(((fvar(10))+(pos x))>-3)
trigger1=time
v = 11    
value = 0


[State 0, Turn]
type = Turn
triggerall=animelem=1,1
trigger1 = pos x>fvar(10)&&facing=1
trigger2 = pos x<fvar(10)&&facing=-1
;ignorehitpause = 
;persistent = 

[State 0, VelSet]
type = VelSet
triggerall = pos x>fvar(10)
triggerall=((fvar(10))!=(pos x))
trigger1=time
x = var(11)
y = 0
;ignorehitpause = 
;persistent = 

[State 0, VelSet]
type = VelSet
triggerall = pos x<fvar(10)
triggerall=((fvar(10))!=(pos x))
trigger1=time
x = var(11)
y = 0



[State 0, VelSet]
type = VelSet
trigger1 = var(11)=0
trigger2=(floor((fvar(10)))=floor((pos x)))
trigger3=(ceil((fvar(10)))=ceil((pos x)))
;trigger3=root,dist x 
x = 0
y = 0

[State 0, ChangeState]
type = Changestate
trigger1=(floor((fvar(10)))=floor((pos x)))
trigger2=(ceil((fvar(10)))=ceil((pos x)))
trigger3=floor(fvar(10)-(pos x))=0
trigger4=ceil(fvar(10)-(pos x))=0
trigger5=(fvar(10)-(pos x))=0
trigger6=ABS(floor(fvar(10)-(pos x)))<20
value = 21002
;elem = 1
;ignorehitpause = 
;persistent = 

;================================================================================
;POW HELPER 3
[Statedef 21002]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 1
anim = 21003
sprpriority = 5
velset = 0,0

[State 0, VarSet];PASADOR DE AMMO
type = VarSet
trigger1 = time=0
v = 33    ;fv = 10
value = 999;root,var(10)

[State 0, VarSet];PASADOR DE GRANADAS
type = VarSet
trigger1 = time=0
v = 8    ;fv = 10
value = 999;root,var(10)
 

[State 0, VarSet];CONTROLA Q DAR
type = VarSet
trigger1 = time=0&&random%2
v = 53    ;fv = 10
value = random%2


[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = time
text ="var(53)=%d,var 8 %d, var 10 %d,var 18 %d";"fvar(10) = %f  pos x = %f var11 %d"
params = var(53),var(8),var(10),var(18);fvar(10),pos x,var(11);ignorehitpause = 
;persistent = 

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=21003&&animelem=1,1
value = S5000,1
volumescale = 256
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, Helper];NORMAL WEAPONS
type = Helper
triggerall=(root,palno!=2)&&(var(53)=0)&&(root,palno!=11)
trigger1 = anim=21003&&animelem=12,1
helpertype = normal ;player
name = "WEAPONS"
ID = 18000
stateno = 22000
pos = 20,0
postype = P1    ;p2,front,back,left,right
facing = 1
keyctrl = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 0, Helper];CLONE WEAPONS
type = Helper
triggerall=(var(53)=0)&&(root,palno=11)
trigger1 = anim=21003&&animelem=12,1
helpertype = normal ;player
name = "WEAPONS"
ID = 18000
stateno = 22005
pos = 20,0
postype = P1    ;p2,front,back,left,right
facing = 1
keyctrl = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, Helper];GIMLETWEAPONS
type = Helper
triggerall=root,palno=2&&var(53)=0
trigger1 = anim=21003&&animelem=12,1
helpertype = normal ;player
name = "WEAPONS"
ID = 18000
stateno = 22002
pos = 20,0
postype = P1    ;p2,front,back,left,right
facing = 1
keyctrl = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
triggerall=var(53)=1&&root,palno!=6&&root,palno!=7&&root,palno!=3
trigger1 = anim=21003&&animelem=12,1
helpertype = normal ;player
name = "GRENADES"
ID = 18001
stateno = 22003
pos = 20,0
postype = P1    ;p2,front,back,left,right
facing = 1
keyctrl = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
triggerall=var(53)=1&&((root,palno=6)||(root,palno=7)||(root,palno=3))
trigger1 = anim=21003&&animelem=12,1
helpertype = normal ;player
name = "GRENADES"
ID = 18001
stateno = 22004
pos = 20,0
postype = P1    ;p2,front,back,left,right
facing = 1
keyctrl = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=21003&&animtime=0
value = 21004

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=21004&&animelem=11,1
value = S5000,2
volumescale = 256
channel = -1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=21004&&animtime=0
value = 21005

[State 0, VelSet]
type = VelSet
triggerall=anim=21005
trigger1=time
x = 3
y = 0

;WEAPONS=================================================

[State 0, VarSet];VE SI TENEMOS MISMO TIPO DE ARMA
type = VarSet
triggerall=root,var(10)!=109
trigger1 =(var(33)=parent,var(10))&&var(10)&&var(53)=0
v = 19
value = 1

[State 0, VarSet];VE SI DISTINTO MISMO TIPO DE ARMA
type = VarSet
triggerall=root,var(10)!=109
trigger1 =(var(33)!=parent,var(10))&&var(10)&&var(53)=0
v = 19
value = 0


[State 0, VarSet];VE SI TENEMOS MISMO TIPO DE ARMA LVARMOR
type = VarSet
triggerall=root,var(10)=109
trigger1 =(var(33)=parent,fvar(10))&&var(10)&&var(53)=0
v = 19
value = 1

[State 0, VarSet];VE SI DISTINTO MISMO TIPO DE ARMA LVARMOR
type = VarSet
triggerall=root,var(10)=109
trigger1 =(var(33)!=parent,fvar(10))&&var(10)&&var(53)=0
v = 19
value = 0


[State 0, VarSet];PASA TIPO DE ARMA
type = parentVarSet;triggerall=;anim=21005&&numhelper(18000)=0&&root,var(16)!=var(18)&&time>1;*tickspersecond
triggerall=root,var(10)!=109
trigger1 = var(10)&&var(53)=0;time
v = ifelse(root,var(10)>=100,25,10)    ;fv = 
value = var(33)


[State 0, VarSet];PASA TIPO DE ARMA LVARMOR
type = parentVarSet;triggerall=;anim=21005&&numhelper(18000)=0&&root,var(16)!=var(18)&&time>1;*tickspersecond
triggerall=root,var(10)=109
trigger1 = var(10)&&var(53)=0;time
fv = 10
value = var(33)


[State 0, VarSet];var 18 es la q contiene la municion
type = VarSet;aca se calcula cuanta municion dar
trigger1=var(5)=0&&var(18)=0&&var(33)!=18&&var(33)!=19&&var(33)!=20;trigger1 =1
v = 18   ;fv = 10
value =(ifelse((var(33)=1)||(var(33)=10)||(var(33)=11)||(var(33)=14)||(var(33)=15),200,0)+ifelse((var(33)=9),10,0)+ifelse((var(33)=4)||(var(33)=2)||(var(33)=8)||(var(33)=16)||(var(33)=17)||(var(33)=7),ifelse((root,palno=5),1,30),0)+ifelse((var(33)=5)||(var(33)=3)||(var(33)=12),20,0)+ifelse((var(33)=6),40,0)+ifelse((var(33)=13),15,0))

[State 0, VarSet];var 18 es la q contiene la municion
type = VarSet;aca se calcula cuanta municion dar
trigger1=var(5)=1&&var(18)=0&&var(33)!=18;trigger1 = 1
v = 18   ;fv = 10
value =(ifelse((var(33)=1)||(var(33)=10)||(var(33)=11)||(var(33)=14)||(var(33)=15),200,0)+ifelse((var(33)=9),10,0)+ifelse(((var(33)=4)||(var(33)=2)||(var(33)=8)||(var(33)=16)||(var(33)=17)||(var(33)=7)),ifelse((root,palno=5),1,30),0)+ifelse((var(33)=5)||(var(33)=3)||(var(33)=12),20,0)+ifelse((var(33)=6),40,0)+ifelse((var(33)=13),15,0))*ifelse((root,var(10)=var(33))&&(root,var(16)>0),0.75,1)

[State 0, VarSet];var 18 es la q contiene la municion
type = VarSet;aca se calcula cuanta municion dar
trigger1=var(5)=0&&var(18)=0&&((var(33)=18)||(var(33)=19)||(var(33)=20)||(var(33)=51));;trigger1 =1
v = 18   ;fv = 10
value =ifelse(var(33)=18,30,0)+ifelse(var(33)=19,20,0)+ifelse(var(33)=20,200,0)+ifelse(var(33)=51,40,0)

[State 0, VarSet];var 18 es la q contiene la municion
type = VarSet;aca se calcula cuanta municion dar
trigger1=var(5)=1&&var(18)=0&&((var(33)=18)||(var(33)=19)||(var(33)=20)||(var(33)=51));trigger1 = 1
v = 18   ;fv = 10
value = ifelse(var(33)=18,30,0)+ifelse(var(33)=19,20,0)+ifelse(var(33)=51,40,0)+ifelse(var(33)=20,200,0)

[State 0, VarSet];PASA MUNICION DISTINTA
type = parentVarSet
triggerall=root,var(10)!=109
trigger1=var(10)&&(var(18)!=0)&&var(53)=0&&var(19)=0
v = 16    ;fv = 
value = var(18)

[State 0, VarSet];PASA MUNICION IGUAL
type = parentVaradd
triggerall=root,var(10)!=109
trigger1=var(10)&&(var(18)!=0)&&var(53)=0&&var(19)=1
v = 16    ;fv = 
value = var(18)*(.75)

[State 0, VarSet];PASA MUNICION DISTINTA LVARMOR
type = parentVarSet
triggerall=root,var(10)=109
trigger1=var(10)&&(var(18)!=0)&&var(53)=0&&var(19)=0
fv = 24    ;fv = 
value = var(18)

[State 0, VarSet];PASA MUNICION IGUAL LVARMOR
type = parentVaradd
triggerall=root,var(10)=109
trigger1=var(10)&&(var(18)!=0)&&var(53)=0&&var(19)=1
fv = 24    ;fv = 
value = var(18)*(.75)



;GRENADES=================================================

[State 0, VarSet];VE SI TENEMOS MISMO TIPO DE GRANADA
type = VarSet
trigger1 =(var(8)=parent,var(11))&&var(10)&&var(53)=1&&var(8)!=4
v = 19
value = 1

[State 0, VarSet];VE SI DISTINTO MISMO TIPO DE GRANADA
type = VarSet
trigger1 =(var(8)!=parent,var(11))&&var(10)&&var(53)=1&&var(8)!=4
v = 19
value = 0

[State 0, VarSet];PASA TIPO DE GRANADA
type = parentVarSet
trigger1 = var(10)&&var(53)=1&&var(8)!=4
v = 11;ifelse((root,var(10)>=100)&&var(29,29,11)
value = var(8)

[State 0, VarSet];PASA LA MUNICION DE GRANADAS DIFERENTE TIPO
type = parentVarSet
trigger1 = var(10)&&var(53)=1&&var(19)=0&&var(8)!=4
v = 17    ;fv = 10
value = 10

[State 0, VarSet];PASA LA MUNICION DE GRANADAS MISMO TIPO
type = parentVaradd
trigger1 = var(10)&&var(53)=1&&var(19)=1&&var(8)!=4
trigger2 = var(10)&&var(53)=1&&var(8)=4;&&((root,var(10)<100)||(root,var(10)=102))
v = 17
value = 10

[State 0, VarSet];PASA LA MUNICION DE CAÑON
type = parentVaradd
trigger1 = var(10)&&var(53)=1&&var(8)=4;&&((root,var(10)>=100)&&(root,var(10)!=102))
v = 24
value = 10

;LIMPIA LA VAR 10 PARA EVITAR REPETICIONES
[State 0, VarSet]
type = VarSet
trigger1 = var(10)=1
v = 10
value = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(53)=0
trigger1 = animtime=0&&anim=21005&&numhelper(18000)=0&&time>120&&var(33)!=999;animtime=0
trigger2 = var(53)=1
trigger2 = animtime=0&&anim=21005&&numhelper(18001)=0&&time>120&&var(8)!=999;animtime=0

;---------------------------------------------------------------------------
;Weapons
[Statedef 22000]
type    = S
movetype= A;I
physics = N
juggle  = 3
ctrl = 0
anim = 9500+ifelse(parent,stateno=20998,(root,fvar(30)),root,var(9))
sprpriority = 5
velset = 0,8

[State 0, VelSet]
type = VelSet
trigger1 = pos y>=0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>=0
y = 0



[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 9    ;fv = 10
value = anim-9499


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 10    ;fv = 10
value = 0

[State 0, VarSet]
type = parentVarSet
trigger1 = (root,var(10)=var(9))&&var(10)
v = 5    ;fv = 10
value = 1

[State 0, VarSet]
type = parentvarset
trigger1 =1
v = 10
value = var(10)

[State 0, VarSet]
type = VarSet 
trigger1 =time=0
v = 31    ;fv = 10
value = 1

[State 0, Turn]
type = Turn
triggerall=facing=-1
trigger1 = time=0

[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 11    ;fv = 10
value = root,pos y

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = time
text = "var(9) = %d  vel fvar(10) = %f,var 10 %d"
params = var(9),fvar(10),var(10)
;ignorehitpause = 
;persistent = 

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = 1
time = -1
value = SCA, NA, SA, HA, NT, ST, HT,NP, SP, HP
ignorehitpause = 1



[State 0, PlaySnd]
type = PlaySnd
triggerall=ifelse(root,var(10)<100,root,movetype!=H,1)&&((root,palno!=5)||((root,palno=5)&&((var(9))!=7)))
trigger1=ABS(floor(fvar(10)-(pos x)))<20
trigger1=ABS(floor(fvar(11)-(pos y)))<20
value = S5001,anim -9499
volumescale = 256
channel = 0;-1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall=ifelse(root,var(10)<100,root,movetype!=H,1)&&((root,palno=5)&&(var(9)=7))
trigger1=ABS(floor(fvar(10)-(pos x)))<20
trigger1=ABS(floor(fvar(11)-(pos y)))<20
value = S5010,12
volumescale = 256
channel = 0;-1
freqmul = 1.0
loop = 0
pan = 0


[State 0, VarSet]
type = VarSet;triggerall=ifelse(root,var(10)<100,root,movetype!=H,1);ifelse(root,var(10)<100,root,movetype!=H,1)
trigger1=ABS(floor(fvar(10)-(pos x)))<20
trigger1=ABS(floor(fvar(11)-(pos y)))<20
trigger1=var(31)=1
v=10
value = 1

[State 0, VarSet]
type = VarSet;triggerall=ifelse(root,var(10)<100,root,movetype!=H,1)
trigger1=var(10)=1
v=31
value = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = var(10)&&anim!=(9599+var(9));&&anim!=anim-9500+9600;9500+100
value = 9599+var(9);anim-9500+9600

[State 0, VarSet]
type = VarSet
trigger1 = parent,var(10)=1
v = 10
value = 0

[State 0, VarSet]
type = ParentVarSet;le pasa a mi parent el valor del tipo de arma
trigger1 = time		;a ese valor hay q darselo al player
v = 33   ;fv = 10	;mediante parentvar set tambien
value = var(9)

[State 0, VarSet]
type = ParentVarSet;le pasa a mi parent el valor del tipo de arma
trigger1 = time		;a ese valor hay q darselo al player
v = 9   ;fv = 10	;mediante parentvar set tambien
value = var(9)

[State 0, PalFXWiz]
type = PalFX
triggerall = var(10)=1
trigger1=1;
time = -1
add = 128,128,128
mul = 256,256,256
sinadd = 128,128,128,4
invertall = 0
color = 256

[State 0, RemoveExplod]
type = RemoveExplod
triggerall=animtime=0
trigger1=1
id = 20020

[State 0, RemoveExplod]
type = RemoveExplod
triggerall=animtime=0
trigger1=1
id = 20021

[State 0, RemoveExplod]
type = RemoveExplod
triggerall=animtime=0
trigger1=1
id = 20022

[State 0, THUNDERCLOUD]
type = Helper
trigger1 = (anim=9619)&&animtime=0&&numhelper(15121)=0
helpertype = normal ;player
name = "MOBS"
ID = 15121
stateno = 334
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause=1


[State 0, DestroySelf]
type = destroyself
trigger1=animtime=0&&(anim!=9510)&&(anim!=9513)&&(anim!=9516)&&(anim!=9512)&&(anim!=9517)&&(anim!=9518)&&(anim!=9519)
trigger1=time
trigger2=(anim=9610)||(anim=9613)||(anim=9616)||(anim=9612)||(anim=9617)||(anim=9618)
trigger2=animelem=2,1
trigger3=(anim=9619)&&animtime=0

;---------------------------------------------------------------------------
;HMGFREE
[Statedef 22001]
type    = A
movetype= A;I
physics = N
juggle  = 3
ctrl = 0
anim = 9500;random%6;random%11
sprpriority = 5
velset = 0,8

[State 0, VarSet]
type = VarSet
trigger1 = root,var(10)=1&&!var(10)
v = 5    ;fv = 10
value = 1
[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 9    ;fv = 10
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 10    ;fv = 10
value = 0


[State 0, VarSet]
type = VarSet
triggerall = root,var(16)!=var(18);ifelse(var(9)=1,200,var(9))
trigger1=ABS(floor(fvar(10)-(pos x)))<20
trigger1=ABS(floor(fvar(11)-(pos y)))<20
v = 19    ;fv = 10
value = 1
ignorehitpause = 
persistent = 

[State 0, VarSet]
type = VarSet
triggerall = root,var(16)=var(18);ifelse(var(9)=1,200,var(9))
trigger1=ABS(floor(fvar(10)-(pos x)))<20
trigger1=ABS(floor(fvar(11)-(pos y)))<20
v = 19    ;fv = 10
value = 0
ignorehitpause = 
persistent = 

[State 0, Turn]
type = Turn
triggerall=facing=-1
trigger1 = time=0
[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 11    ;fv = 10
value = root,pos y

;[State 0, DisplayToClipboard]
;type = DisplayToClipboard
;trigger1 = time
;text = "var(9) = %d  vel fvar(10) = %f"
;params = var(9),fvar(10)
;ignorehitpause = 
;persistent = 


[State 1030, NotHitBy]
type = NotHitBy
trigger1 = 1
time = -1
value = SCA, NA, SA, HA, NT, ST, HT,NP, SP, HP
ignorehitpause = 1



[State 0, PlaySnd]
type = PlaySnd
trigger1=ABS(floor(fvar(10)-(pos x)))<20
trigger1=ABS(floor(fvar(11)-(pos y)))<20
value = S5001,anim -9499
volumescale = 256
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, VarSet]
type = VarSet
trigger1=ABS(floor(fvar(10)-(pos x)))<20
trigger1=ABS(floor(fvar(11)-(pos y)))<20
v=10
value = 1





[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(10)=1&&anim!=9600;9500+100
trigger1 = time
value = 9600





[State 0, VarSet];var 18 es la q contiene la municion
type = VarSet;aca se calcula cuanta municion dar
trigger1=var(5)
v = 18   ;fv = 10
value = 200*0.75+root,var(16)


[State 0, VarSet];var 18 es la q contiene la municion
type = VarSet;aca se calcula cuanta municion dar
trigger1=var(5)=0
v = 18   ;fv = 10
value = 200

[State 0, VarSet]
type = parentVarSet
triggerall=root,var(16)!=var(18)
trigger1 = var(19)&&animtime;&&time<3;1;var(19)=1
v = 16    ;fv = 
value = var(18)

[State 0, VarSet]
type = ParentVarSet;le pasa a mi parent el valor del tipo de arma
trigger1 = var(10)&&time>1		;a ese valor hay q darselo al player
v = ifelse(root,var(10)=100,25,10)   ;fv = 10	;mediante parentvar set tambien
value = var(9)

[State 0, VelSet]
type = VelSet
trigger1 = pos y>0
x = 0
y = 0
;ignorehitpause = 
;persistent = 




[State 0, PalFXWiz]
type = PalFX
triggerall = var(10)=1
trigger1=1;
time = -1
add = 128,128,128
mul = 256,256,256
sinadd = 128,128,128,4
invertall = 0
color = 256


[State 0, RemoveExplod]
type = RemoveExplod
triggerall=anim=9600&&animtime=0
trigger1=1
id = 20020

[State 0, RemoveExplod]
type = RemoveExplod
triggerall=anim=9600&&animtime=0
trigger1=1
id = 20021

[State 0, RemoveExplod]
type = RemoveExplod
triggerall=anim=9600&&animtime=0
trigger1=1
id = 20022


[State 0, DestroySelf]
type = destroyself
triggerall=anim=9600&&animtime=0
trigger1=1

;[State 0, DestroySelf]
;type = destroyself
;trigger1=time>10*tickspersecond

;---------------------------------------------------------------------------
;WeaponsGimlet
[Statedef 22002]
type    = S
movetype= A;I
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(random%6=5,9502,ifelse(random%5=4,9503,ifelse(random%4=3,9512,ifelse(random%3=2,9517,9550))))
sprpriority = 5
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, VarSet]
type = VarSet 
trigger1 =time=0
v = 31    ;fv = 10
value = 1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 9    ;fv = 10
value = anim-9499


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 10    ;fv = 10
value = 0

[State 0, VarSet]
type = parentVarSet
trigger1 = (root,var(10)=var(9))&&var(10)
v = 5    ;fv = 10
value = 1

[State 0, VarSet]
type = parentVarSet
trigger1 = 1;&&parent,var(10)=0
v = 10    ;fv = 10
value = var(10)

[State 0, Turn]
type = Turn
triggerall=facing=-1
trigger1 = time=0

[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 11    ;fv = 10
value = root,pos y

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = time
text = "var(9) = %d  vel fvar(10) = %f"
params = var(9),fvar(10)
;ignorehitpause = 
;persistent = 

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT,NP, SP, HP
ignorehitpause = 1



[State 0, PlaySnd]
type = PlaySnd
triggerall=ifelse(root,var(10)<100,root,movetype!=H,1)&&((root,palno!=5)||((root,palno=5)&&((var(9))!=7)))
trigger1=ABS(floor(fvar(10)-(pos x)))<20
trigger1=ABS(floor(fvar(11)-(pos y)))<20
value = S5001,anim -9499
volumescale = 256
channel = 0;-1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall=ifelse(root,var(10)<100,root,movetype!=H,1)&&((root,palno=5)&&(var(9)=7))
trigger1=ABS(floor(fvar(10)-(pos x)))<20
trigger1=ABS(floor(fvar(11)-(pos y)))<20
value = S5010,12
volumescale = 256
channel = 0;-1
freqmul = 1.0
loop = 0
pan = 0


[State 0, VarSet]
type = VarSet;triggerall=ifelse(root,var(10)<100,root,movetype!=H,1);ifelse(root,var(10)<100,root,movetype!=H,1)
trigger1=ABS(floor(fvar(10)-(pos x)))<20
trigger1=ABS(floor(fvar(11)-(pos y)))<20
trigger1=var(31)=1
v=10
value = 1

[State 0, VarSet]
type = VarSet;triggerall=ifelse(root,var(10)<100,root,movetype!=H,1)
trigger1=var(10)=1
v=31
value = 0

[State 0, VarSet]
type = VarSet
trigger1 = parent,var(10)=1
v = 10
value = 0

[State 0, VarSet]
type = ParentVarSet;le pasa a mi parent el valor del tipo de arma
trigger1 = time		;a ese valor hay q darselo al player
v = 33   ;fv = 10	;mediante parentvar set tambien
value = var(9)

[State 0, VarSet]
type = ParentVarSet;le pasa a mi parent el valor del tipo de arma
trigger1 = time		;a ese valor hay q darselo al player
v = 9   ;fv = 10	;mediante parentvar set tambien
value = var(9)


[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(10)=1&&anim!=anim-9500+9600;9500+100
trigger1 = time
value = anim-9500+9600

[State 0, PalFXWiz]
type = PalFX
triggerall = var(10)=1
trigger1=1;
time = -1
add = 128,128,128
mul = 256,256,256
sinadd = 128,128,128,4
invertall = 0
color = 256




[State 0, RemoveExplod]
type = RemoveExplod
triggerall=animtime=0
trigger1=1
id = 20020

[State 0, RemoveExplod]
type = RemoveExplod
triggerall=animtime=0
trigger1=1
id = 20021

[State 0, RemoveExplod]
type = RemoveExplod
triggerall=animtime=0
trigger1=1
id = 20022



[State 0, DestroySelf]
type = destroyself
trigger1=animtime=0&&(anim!=9510)&&(anim!=9513)&&(anim!=9516)&&(anim!=9512)&&(anim!=9517)
trigger1=time
trigger2=(anim=9610)||(anim=9613)||(anim=9616)||(anim=9612)||(anim=9617)
trigger2=animelem=2,1

;---------------------------------------------------------------------------
;GRENADES
[Statedef 22003]
type    = S
movetype= A;I
physics = N
juggle  = 3
ctrl = 0
anim = 9700+root,var(8)
sprpriority = 5
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 9    ;fv = 10
value = anim-9700

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 14    ;fv = 10
value = 0

[State 0, VarSet]
type = parentVarSet
trigger1 = (root,var(8)=var(9))&&var(10)
v = 5    ;fv = 10
value = 1

[State 0, VarSet]
type = parentVarSet
trigger1 = time;&&parent,var(10)=0
v = 10    ;fv = 10
value = var(10)

[State 0, Turn]
type = Turn
triggerall=facing=-1
trigger1 = time=0

[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 11    ;fv = 10
value = root,pos y

;[State 0, DisplayToClipboard]
;type = DisplayToClipboard
;trigger1 = time
;text = "var(9) = %d  vel fvar(10) = %f"
;params = var(9),fvar(10)
;ignorehitpause = 
;persistent = 

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = 1
time = -1
value = SCA, NA, SA, HA, NT, ST, HT,NP, SP, HP
ignorehitpause = 1



[State 0, PlaySnd]
type = PlaySnd
triggerall=ifelse(root,var(10)<100,root,movetype!=H,1)&&(root,palno!=11)
trigger1=ABS(floor(fvar(10)-(pos x)))<20
trigger1=ABS(floor(fvar(11)-(pos y)))<20
value = S5002,anim -9700
volumescale = 256
channel = 0;-1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall=ifelse(root,var(10)<100,root,movetype!=H,1)&&(root,palno=11)
trigger1=ABS(floor(fvar(10)-(pos x)))<20
trigger1=ABS(floor(fvar(11)-(pos y)))<20
value = S5004,anim -9700
volumescale = 256
channel = 0;-1
freqmul = 1.0
loop = 0
pan = 0


[State 0, VarSet]
type = VarSet;triggerall=ifelse(root,var(10)<100,root,movetype!=H,1);ifelse(root,var(10)<100,root,movetype!=H,1)
trigger1=ABS(floor(fvar(10)-(pos x)))<20
trigger1=ABS(floor(fvar(11)-(pos y)))<20
v=10
value = 1
 

[State 0, VarSet]
type = VarSet;triggerall=ifelse(root,var(10)<100,root,movetype!=H,1)
trigger1=var(10)=1&&anim=anim-9500+9600
v=10
value = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(10)=1&&anim!=anim-9500+9600;9500+100
trigger1 = time
value = anim-9500+9600

[State 0, VarSet]
type = ParentVarSet;le pasa a mi parent el valor del tipo de arma
trigger1 = time		;a ese valor hay q darselo al player
v = 8
value = var(9)

[State 0, PalFXWiz]
type = PalFX
triggerall = var(10)=1
trigger1=1;
time = -1
add = 128,128,128
mul = 256,256,256
sinadd = 128,128,128,4
invertall = 0
color = 256




[State 0, RemoveExplod]
type = RemoveExplod
triggerall=animtime=0
trigger1=1
id = 20020

[State 0, RemoveExplod]
type = RemoveExplod
triggerall=animtime=0
trigger1=1
id = 20021

[State 0, RemoveExplod]
type = RemoveExplod
triggerall=animtime=0
trigger1=1
id = 20022



[State 0, DestroySelf]
type = destroyself
trigger1=parent,var(10)=1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;REBELGRENADES
[Statedef 22004]
type    = S
movetype= A;I
physics = N
juggle  = 3
ctrl = 0
anim = ifelse(random%3=2,9700,ifelse(random%3=1,9704,9751+random%2))
sprpriority = 5
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 9    ;fv = 10
value = anim-9700

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 14    ;fv = 10
value = 0

[State 0, VarSet]
type = parentVarSet
trigger1 = (root,var(8)=var(9))&&var(10)
v = 5    ;fv = 10
value = 1

[State 0, VarSet]
type = parentVarSet
trigger1 = time;&&parent,var(10)=0
v = 10    ;fv = 10
value = var(10)

[State 0, Turn]
type = Turn
triggerall=facing=-1
trigger1 = time=0

[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 11    ;fv = 10
value = root,pos y

;[State 0, DisplayToClipboard]
;type = DisplayToClipboard
;trigger1 = time
;text = "var(9) = %d  vel fvar(10) = %f"
;params = var(9),fvar(10)
;ignorehitpause = 
;persistent = 

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = 1
time = -1
value = SCA, NA, SA, HA, NT, ST, HT,NP, SP, HP
ignorehitpause = 1



[State 0, PlaySnd]
type = PlaySnd
triggerall=ifelse(root,var(10)<100,root,movetype!=H,1)
trigger1=ABS(floor(fvar(10)-(pos x)))<20
trigger1=ABS(floor(fvar(11)-(pos y)))<20
value = S5002,anim -9700
volumescale = 256
channel = 0;-1
freqmul = 1.0
loop = 0
pan = 0

[State 0, VarSet]
type = VarSet;triggerall=ifelse(root,var(10)<100,root,movetype!=H,1);ifelse(root,var(10)<100,root,movetype!=H,1)
trigger1=ABS(floor(fvar(10)-(pos x)))<20
trigger1=ABS(floor(fvar(11)-(pos y)))<20
v=10
value = 1
 

[State 0, VarSet]
type = VarSet;triggerall=ifelse(root,var(10)<100,root,movetype!=H,1)
trigger1=var(10)=1&&anim=anim-9500+9600
v=10
value = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(10)=1&&anim!=anim-9500+9600;9500+100
trigger1 = time
value = anim-9500+9600

[State 0, VarSet]
type = ParentVarSet;le pasa a mi parent el valor del tipo de arma
trigger1 = time		;a ese valor hay q darselo al player
v = 8
value = var(9)

[State 0, PalFXWiz]
type = PalFX
triggerall = var(10)=1
trigger1=1;
time = -1
add = 128,128,128
mul = 256,256,256
sinadd = 128,128,128,4
invertall = 0
color = 256




[State 0, RemoveExplod]
type = RemoveExplod
triggerall=animtime=0
trigger1=1
id = 20020

[State 0, RemoveExplod]
type = RemoveExplod
triggerall=animtime=0
trigger1=1
id = 20021

[State 0, RemoveExplod]
type = RemoveExplod
triggerall=animtime=0
trigger1=1
id = 20022



[State 0, DestroySelf]
type = destroyself
trigger1=parent,var(10)=1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;WeaponsCLONE
[Statedef 22005]
type    = S
movetype= A;I
physics = N
juggle  = 3
ctrl = 0
anim = 9500+ifelse(random%3=2,0,ifelse(random%3=2,2+random%2,12+random%6))
sprpriority = 5
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 9    ;fv = 10
value = anim-9499


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 10    ;fv = 10
value = 0

[State 0, VarSet]
type = parentVarSet
trigger1 = (root,var(10)=var(9))&&var(10)
v = 5    ;fv = 10
value = 1

[State 0, VarSet]
type = parentvarset
trigger1 =1
v = 10
value = var(10)

[State 0, VarSet]
type = VarSet 
trigger1 =time=0
v = 31    ;fv = 10
value = 1

[State 0, Turn]
type = Turn
triggerall=facing=-1
trigger1 = time=0

[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 10    ;fv = 10
value = root,pos x

[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 11    ;fv = 10
value = root,pos y

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = time
text = "var(9) = %d  vel fvar(10) = %f,var 10 %d"
params = var(9),fvar(10),var(10)


[State 1030, NotHitBy]
type = NotHitBy
trigger1 = 1
time = -1
value = SCA, NA, SA, HA, NT, ST, HT,NP, SP, HP
ignorehitpause = 1



[State 0, PlaySnd]
type = PlaySnd
triggerall=ifelse(root,var(10)<100,root,movetype!=H,1)&&((root,palno!=5)||((root,palno=5)&&((var(9))!=7)))
trigger1=ABS(floor(fvar(10)-(pos x)))<20
trigger1=ABS(floor(fvar(11)-(pos y)))<20
value = S5003,anim -9499
volumescale = 256
channel = 0;-1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall=ifelse(root,var(10)<100,root,movetype!=H,1)&&((root,palno=5)&&(var(9)=7))
trigger1=ABS(floor(fvar(10)-(pos x)))<20
trigger1=ABS(floor(fvar(11)-(pos y)))<20
value = S5010,12
volumescale = 256
channel = 0;-1
freqmul = 1.0
loop = 0
pan = 0


[State 0, VarSet]
type = VarSet;triggerall=ifelse(root,var(10)<100,root,movetype!=H,1);ifelse(root,var(10)<100,root,movetype!=H,1)
trigger1=ABS(floor(fvar(10)-(pos x)))<20
trigger1=ABS(floor(fvar(11)-(pos y)))<20
trigger1=var(31)=1
v=10
value = 1

[State 0, VarSet]
type = VarSet;triggerall=ifelse(root,var(10)<100,root,movetype!=H,1)
trigger1=var(10)=1
v=31
value = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = var(10)&&anim!=(9599+var(9));&&anim!=anim-9500+9600;9500+100
value = 9599+var(9);anim-9500+9600

[State 0, VarSet]
type = VarSet
trigger1 = parent,var(10)=1
v = 10
value = 0

[State 0, VarSet]
type = ParentVarSet;le pasa a mi parent el valor del tipo de arma
trigger1 = time		;a ese valor hay q darselo al player
v = 33   ;fv = 10	;mediante parentvar set tambien
value = var(9)

[State 0, VarSet]
type = ParentVarSet;le pasa a mi parent el valor del tipo de arma
trigger1 = time		;a ese valor hay q darselo al player
v = 9   ;fv = 10	;mediante parentvar set tambien
value = var(9)

[State 0, PalFXWiz]
type = PalFX
triggerall = var(10)=1
trigger1=1;
time = -1
add = 128,128,128
mul = 256,256,256
sinadd = 128,128,128,4
invertall = 0
color = 256

[State 0, RemoveExplod]
type = RemoveExplod
triggerall=animtime=0
trigger1=1
id = 20020

[State 0, RemoveExplod]
type = RemoveExplod
triggerall=animtime=0
trigger1=1
id = 20021

[State 0, RemoveExplod]
type = RemoveExplod
triggerall=animtime=0
trigger1=1
id = 20022



[State 0, DestroySelf]
type = destroyself
trigger1=animtime=0&&(anim!=9510)&&(anim!=9513)&&(anim!=9516)&&(anim!=9512)&&(anim!=9517)
trigger1=time
trigger2=(anim=9610)||(anim=9613)||(anim=9616)||(anim=9612)||(anim=9617)
trigger2=animelem=2,1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;POW KameFliying
[Statedef 21003]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 21000
sprpriority = 5
velset = 0,2;-.1jkjkl
poweradd=-(ifelse((root,var(59)),1000,floor(root,fvar(16))))

[State 0, VarSet]
type = VarSet
trigger1 =time=0 
v = 27
value =random%3

[State 0, PosSet]
type = PosSet
trigger1 =TIME=0 
x = root,pos x
y = -200



[State 0, RemapPal]
type = RemapPal
trigger1 =var(27)=0
source = 0,10
dest = 0,10

[State 0, RemapPal]
type = RemapPal
trigger1 =var(27)=1
source = 0,10
dest = 100,0

[State 0, RemapPal]
type = RemapPal
trigger1 =var(27)=2
source = 0,10
dest = 100,1


[State 0, RemapPal]
type = RemapPal
trigger1 =var(27)=3
source = 0,10
dest = 100,2

[State 0, Yihaa]
type = PlaySnd;triggerall=roundstate=2||roundstate=1
trigger1 = time=0
value = S5010,6+random%3
volumescale = 256
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, ChangeState];Hyakutaro
type = ChangeState
triggerall=var(27)=0
TRIGGERALL=TIME>1
trigger1 = pos y>=0
value =21004

[State 0, ChangeState];Roppyakumantaro/ 6000000TARO
type = ChangeState
triggerall=var(27)=1
TRIGGERALL=TIME>1
trigger1 = pos y>=0
value =21005

[State 0, ChangeState];Nanahyakumantaro / 7000000TARO
type = ChangeState
triggerall=var(27)=2
TRIGGERALL=TIME>1
trigger1 = pos y>=0
value =21006

[State 0, ChangeState];Happyakumantaro / 8000000TARO
type = ChangeState
triggerall=var(27)=3
TRIGGERALL=TIME>1
trigger1 = pos y>=0
value =21008


;================================================================================
;HyakutaroAT
[Statedef 21004]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 1
anim = 21001
sprpriority = 5
velset = .1,.1


[State 0, VarSet];velocidad del pow
type = VarSet
trigger1 = anim=21001&&animtime=0
v = 11    
value = 2

[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 10    ;fv = 10
value = root,pos x
;ignorehitpause = 
;persistent = 

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=21001&&animtime=0
value = 21002


[State 0, VarSet]
type = VarSet
triggerall = var(15);((fvar(10))=(pos x));&&(((fvar(10))+(pos x))>-3)
trigger1=time
v = 11    
value = 0

[State 0, VarSet]
type = VarSet
triggerall = !var(15);((fvar(10))!=(pos x));&&(((fvar(10))+(pos x))>-3)
trigger1=time
v = 11    
value = 2


[State 0, VarSet]
type = VarSet
triggerall=ABS(floor(fvar(10)-(pos x)))<20
trigger1=time
v = 15    
value = 1

[State 0, VarSet]
type = VarSet
triggerall=ABS(floor(fvar(10)-(pos x)))>20
trigger1=time
v = 15    
value = 0

;[State 0, Turn]
;type = Turn
;triggerall=animelem=1,1
;trigger1 = pos x>fvar(10)&&facing=1
;trigger2 = pos x<fvar(10)&&facing=-1
;trigger3=anim=21007&&pos x>enemy,pos x&&facing=1
;trigger4=anim=21007&&pos x<enemy,pos x&&facing=-1
;trigger5=anim=21010&&pos x>enemy,pos x&&facing=1
;trigger6=anim=21010&&pos x<enemy,pos x&&facing=-1

[State 0, Turn]
type = Turn
triggerall=animelem=1,1
trigger1 =((anim!=21007)&&(anim!=21010))&&pos x>fvar(10)&&facing=1
trigger2 =((anim!=21007)&&(anim!=21010))&&pos x<fvar(10)&&facing=-1
trigger3=anim=21007&&pos x>enemy,pos x&&facing=1
trigger4=anim=21007&&pos x<enemy,pos x&&facing=-1
trigger5=anim=21010&&pos x>enemy,pos x&&facing=1
trigger6=anim=21010&&pos x<enemy,pos x&&facing=-1

[State 0, VelSet]
type = VelSet
triggerall = pos x>fvar(10)
triggerall=((fvar(10))!=(pos x))
triggerall=anim=21002
trigger1=time
x = var(11)
y = 0
;ignorehitpause = 
;persistent = 

[State 0, VelSet]
type = VelSet
triggerall = pos x<fvar(10)
triggerall=((fvar(10))!=(pos x))
triggerall=anim=21002
trigger1=time
x = var(11)
y = 0



[State 0, VelSet]
type = VelSet
trigger1 = var(11)=0
trigger2=(floor((fvar(10)))=floor((pos x)))
trigger3=(ceil((fvar(10)))=ceil((pos x)))
trigger4=anim=21007||anim=21009||anim=21010
;trigger3=root,dist x 
x = 0
y = 0


[State 0, Mirar]
type = Changeanim
triggerall=(anim=21002)||(((anim=21006)||(anim=21007)||(anim=21010))&&animtime=0)
trigger1=var(15)
value = 21006

[State 0, Mirar]
type = Changeanim
triggerall=((anim=21002)||(anim=21006)||(((anim=21007)||(anim=21010))&&animtime=0))
trigger1=ABS(floor(enemy,pos x-(pos x)))<=20
value = 21010

[State 0, Caminar]
type = Changeanim
triggerall=(((anim=21002||(anim=21007)||(anim=21010))&&animtime=0)||(anim=21006))
trigger1=!var(15)
value = 21002

[State 0, Disparar]
type = Changeanim
triggerall=((anim=21002)||(anim=21006)||(((anim=21007)||(anim=21010))&&animtime=0))
trigger1=abs(enemy,pos x)>20&&root,movetype=A
value = 21007





[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=21007&&animelem=16,1
trigger2=anim=21010&&animelem=9,1
value = 5000,3
volumescale = 256
channel = -1
lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan = 
;ignorehitpause = 
;persistent = 

[State 210, 2]
type = HitDef
triggerall = anim=21007
trigger1=animelem=17,1||animelem=18,1||animelem=19,1||animelem=20,1||animelem=21,1||animelem=22,1
attr = S, NA
animtype  = Medium
damage    = 5,3
guardflag = MA
pausetime = 0,0;12,12
sparkno = -1;s3501
sparkxy = 0,-30
hitsound   = -1
guardsound = -1;s0,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0

[State 210, 2]
type = HitDef
triggerall = anim=21010
trigger1=animelem=9,1
attr = S, NA
animtype  = Medium
damage    = 35,15
guardflag = MA
pausetime = 0,0;12,12
sparkno = -1;s3501
sparkxy = 0,-30
hitsound   = s0,2
guardsound = s0,2;s0,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0


[State 0, EnemyChaser];EnemyChaser
type = Helper
triggerall = anim=21007
trigger1 = animelem=17,1
helpertype = normal ;player
name = "ENERGYBALL"
ID = 23000;default helper projectile id
stateno = 21011
pos = 20,-20
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = win&&anim!=21009
value = 21009

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=21009&&animelem=11,1
value = S5000,2
volumescale = 256
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, ChangeState]
type = ChangeState
triggerall=root,var(10)<100
trigger1 =enemy,movecontact
trigger2=enemy,movehit
trigger3=enemy,projhit=1<2
trigger4=enemy,projcontact=1<2
trigger5=root,movetype=h
value = 21010
ctrl = 0

;================================================================================
;POW RUNING
[statedef 21010]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 1
anim = 21005
sprpriority = 5
velset = -2,0

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 0, Turn]
type = Turn
triggerall=time=0
trigger1 = facing=-1
trigger2 = facing=1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0&&anim=21005&&time>120;animtime=0


;---------------------------------------------------------------------------
;ENERGYBALL
[Statedef 21011]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 21008;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 5

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 0, VarSet]
type = VarSet
triggerall=root,var(10)=7
trigger1 = time=0
v = 3    ;fv = 10
value = ifelse(parent,anim=11202,3,ifelse(parent,anim=8603,2,1))
ignorehitpause = 
persistent = 

[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=2
trigger1 = 1
Value = 270 ;Angle must be given on degrees.
 
[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=3
trigger1 = 1
Value = 90

[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=3&&time>10
trigger1 = vel x>vel y
Value = -time

[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)!=2
trigger1 = vel x<vel y
Value = -time

[State 9000, AngleDraw]
type = AngleDraw
trigger1 = 1


[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)<2;cuantas veces sera golpeado hasta explotar
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 302
attr = SCA, NP, SP, HP
ignorehitpause = 1


[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)=2
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 302
attr = SCA, NP, SP, HP
ignorehitpause = 1

;HOMING PROJECTILE

[State ****: Turn]
type = Turn
trigger1 = (P2Dist X < 10)

[State ****: VelSet]
type = VelSet
trigger1 = (!Time)
x = 3

[State ****: VelAdd]
type = VelAdd
trigger1 = (P2Dist X < 0) && (Vel X > -8);-6)
x = -.8;.4;0.2

[State ****: VelAdd]
type = VelAdd
trigger1 = (P2Dist X > 0) && (Vel X < 8);6)
x = .8;.4;0.2

[State ****: VelAdd]
type = VelAdd
trigger1 = (EnemyNear, Pos Y -25> Pos Y) && (Vel Y < 3);6)
y = .6;0.2

[State ****: VelAdd]
type = VelAdd
trigger1 = (EnemyNear, Pos Y -25<= Pos Y) && (Vel Y > -3);6)
y = -.6;.2;0.2

;HOMING PROJECTILE END
[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 25,12
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,7
guardsound = s4000,7;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 2400, 2];Avanza
type = Velset
triggerall=var(3)=1&&time<10
trigger1 =1;animelem=1;animtime<
x = 6
y =0

[State 2400, 2];Baja
type = Velset
triggerall=var(3)=2
trigger1 =1;animelem=1;animtime<
x = 0
y =6

[State 2400, 2];Sube
type = Velset
triggerall=var(3)=3&&time<10
trigger1 =1;animelem=1;animtime<
x = 0
y =-6


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = frontedgedist <=-50
trigger3 = (pos y<root,pos y-250)
trigger4=enemy,alive=0&&numenemy=1
trigger5=pos y>0
trigger6=time>200
value = ifelse(var(3)=1,302,ifelse(var(3)=2,304,303))

;---------------------------------------------------------------------------
;================================================================================
;Roppyakumantaro
[Statedef 21005]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 1
anim = 21001
sprpriority = 5
velset = .1,.1


[State 0, VarSet];velocidad del pow
type = VarSet
trigger1 = anim=21001&&animtime=0
v = 11    
value = 2

[State 0, VarSet];TIPO DE IA
type = VarSet
trigger1 = time=0
v = 22    
value = random%2

[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 10    ;fv = 10
value = enemy,pos x
;ignorehitpause = 
;persistent = 

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=21001&&animtime=0
value = 21002


[State 0, VarSet]
type = VarSet
triggerall = var(15);((fvar(10))=(pos x));&&(((fvar(10))+(pos x))>-3)
trigger1=time
v = 11    
value = 0

[State 0, VarSet]
type = VarSet
triggerall = !var(15);((fvar(10))!=(pos x));&&(((fvar(10))+(pos x))>-3)
trigger1=time
v = 11    
value = 2


;[State 0, VarSet]
;type = VarSet
;triggerall=ABS(floor(fvar(10)-(pos x)))>40
;trigger1=time
;v = 15    
;value = 1
;
;[State 0, VarSet]
;type = VarSet
;triggerall=ABS(floor(fvar(10)-(pos x)))<40
;trigger1=time
;v = 15    
;value = 0

[State 0, Turn]
type = Turn
triggerall=animelem=1,1
trigger1 = pos x>fvar(10)&&facing=1
trigger2 = pos x<fvar(10)&&facing=-1
trigger3=anim=21007&&pos x>enemy,pos x&&facing=1
trigger4=anim=21007&&pos x<enemy,pos x&&facing=-1
trigger5=anim=21010&&pos x>enemy,pos x&&facing=1
trigger6=anim=21010&&pos x<enemy,pos x&&facing=-1
[State 0, VelSet]
type = VelSet
triggerall = pos x>fvar(10)
triggerall=((fvar(10))!=(pos x))
triggerall=anim=21002
trigger1=time
x = var(11)
y = 0
;ignorehitpause = 
;persistent = 

[State 0, VelSet]
type = VelSet
triggerall = pos x<fvar(10)
triggerall=((fvar(10))!=(pos x))
triggerall=anim=21002
trigger1=time
x = var(11)
y = 0



[State 0, VelSet]
type = VelSet
trigger1 = var(11)=0
trigger2=(floor((fvar(10)))=floor((pos x)))
trigger3=(ceil((fvar(10)))=ceil((pos x)))
trigger4=anim=21011||anim=21009||anim=21010
;trigger3=root,dist x 
x = 0
y = 0


[State 0, Mirar]
type = Changeanim
triggerall=(anim=21002)||(((anim=21006)||(anim=21007)||(anim=21010))&&animtime=0)
trigger1=var(15)
value = 21006

[State 0, Patada]
type = Changeanim
triggerall=((anim=21002)||(anim=21006)||(((anim=21007)||(anim=21010))&&animtime=0))&&VAR(22)=1
trigger1=(ABS(floor(enemy,pos x-(pos x)))<=40)&&(ABS(floor(enemy,pos x-(pos x)))>5)
value = 21010

[State 0, Caminar]
type = Changeanim
triggerall=(((anim=21002||(anim=21011)||(anim=21010))&&animtime=0)||(anim=21006))
trigger1=!var(15)
value = 21002

[State 0, Disparar]
type = Changeanim
triggerall=((anim=21002)||(anim=21006)||(((anim=21011)||(anim=21010))&&animtime=0))
trigger1=(ABS(floor(enemy,pos x-(pos x)))<=40)&&(ABS(floor(enemy,pos x-(pos x)))>5)&&VAR(22)=0
value = 21011





[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=21011&&animelem=12,1
trigger2=anim=21010&&animelem=9,1
value = 5000,3
volumescale = 256
channel = -1
lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0

[State 210, 2]
type = HitDef
triggerall = anim=21011
trigger1=animelem=14,1
attr = S, NA
animtype  = Medium
damage    = 75,35
guardflag = MA
pausetime = 0,0;12,12
sparkno = -1;s3501
sparkxy = 0,-30
hitsound   = S4000,7
guardsound = S4000,7
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0


[State 210, 2]
type = HitDef
triggerall = anim=21010
trigger1=animelem=9,1
attr = S, NA
animtype  = Medium
damage    = 60,30
guardflag = MA
pausetime = 0,0;12,12
sparkno = -1;s3501
sparkxy = 0,-30
hitsound   = s0,2
guardsound = s0,2;s0,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = win&&anim!=21009
value = 21009

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=21009&&animelem=11,1
value = S5000,2
volumescale = 256
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, ChangeState]
type = ChangeState
triggerall=root,var(10)<100
trigger1 =enemy,movecontact
trigger2=enemy,movehit
trigger3=enemy,projhit=1<2
trigger4=enemy,projcontact=1<2
trigger5=root,movetype=h
value = 21010
ctrl = 0

;================================================================================


;================================================================================
;Nanahyakumantaro
[Statedef 21006]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 1
anim = 21001
sprpriority = 5
velset = .1,.1


[State 0, VarSet];velocidad del pow
type = VarSet
trigger1 = anim=21001&&animtime=0
v = 11    
value = 2

[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 10    ;fv = 10
value = (pos x-enemy,pos x)/2
;ignorehitpause = 
;persistent = 

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=21001&&animtime=0
value = 21002


[State 0, VarSet]
type = VarSet
triggerall = var(15);((fvar(10))=(pos x));&&(((fvar(10))+(pos x))>-3)
trigger1=time
v = 11    
value = 0

[State 0, VarSet]
type = VarSet
triggerall = !var(15);((fvar(10))!=(pos x));&&(((fvar(10))+(pos x))>-3)
trigger1=time
v = 11    
value = 2


[State 0, VarSet]
type = VarSet
triggerall=ABS(floor(fvar(10)-(pos x)))<20
trigger1=time
v = 15    
value = 1

[State 0, VarSet]
type = VarSet
triggerall=ABS(floor(fvar(10)-(pos x)))>20
trigger1=time
v = 15    
value = 0

;[State 0, Turn]
;type = Turn
;triggerall=animelem=1,1;trigger1 = pos x>fvar(10)&&facing=1;trigger2 = pos x<fvar(10)&&facing=-1
;trigger1=anim=21012&&pos x>enemy,pos x&&facing=1
;trigger2=anim=21012&&pos x<enemy,pos x&&facing=-1
;trigger3=anim=21010&&pos x>enemy,pos x&&facing=1
;trigger4=anim=21010&&pos x<enemy,pos x&&facing=-1
;trigger5 = pos x>fvar(10)&&facing=1
;trigger6 = pos x<fvar(10)&&facing=-1

;[State 0, Turn]
;type = Turn
;triggerall=animelem=1,1;trigger1 = pos x>fvar(10)&&facing=1;trigger2 = pos x<fvar(10)&&facing=-1
;trigger1=(anim=21012)&&facing!=root,facing
;trigger2=anim=21010&&facing!=root,facing
;trigger3 = ((anim!=21010)&&(anim!=21012))&&pos x>fvar(10)&&facing=1
;trigger4 = ((anim!=21010)&&(anim!=21012))&&pos x<fvar(10)&&facing=-1


[State 0, Turn]
type = Turn
triggerall=animelem=1,1;trigger1 = pos x>fvar(10)&&facing=1;trigger2 = pos x<fvar(10)&&facing=-1
trigger1 = ((anim!=21010)&&(anim!=21012))&&pos x>fvar(10)&&facing=1
trigger2 = ((anim!=21010)&&(anim!=21012))&&pos x<fvar(10)&&facing=-1
trigger3 = ((anim=21012)||(anim=21010))&&facing=1&&enemy,facing=-1&&pos x>enemy,pos x
trigger4 = ((anim=21012)||(anim=21010))&&facing=-1&&enemy,facing=1&&pos x<enemy,pos x
trigger5 = ((anim=21012)||(anim=21010))&&facing=-1&&enemy,facing=-1&&pos x<enemy,pos x
trigger6 = ((anim=21012)||(anim=21010))&&facing=1&&enemy,facing=1&&pos x>enemy,pos x


[State 0, VelSet]
type = VelSet
triggerall = pos x>fvar(10)
triggerall=((fvar(10))!=(pos x))
triggerall=anim=21002
trigger1=time
x = var(11)
y = 0
;ignorehitpause = 
;persistent = 

[State 0, VelSet]
type = VelSet
triggerall = pos x<fvar(10)
triggerall=((fvar(10))!=(pos x))
triggerall=anim=21002
trigger1=time
x = var(11)
y = 0



[State 0, VelSet]
type = VelSet
trigger1 = var(11)=0
trigger2=(floor((fvar(10)))=floor((pos x)))
trigger3=(ceil((fvar(10)))=ceil((pos x)))
trigger4=anim=21012||anim=21009||anim=21010
;trigger3=root,dist x 
x = 0
y = 0


[State 0, Mirar]
type = Changeanim
triggerall=(anim=21002)||(((anim=21006)||(anim=21012)||(anim=21010))&&animtime=0)
trigger1=var(15)
value = 21006

[State 0, KICK]
type = Changeanim
triggerall=((anim=21002)||(anim=21006)||(((anim=21012)||(anim=21010))&&animtime=0))
trigger1=ABS(floor(enemy,pos x-(pos x)))<=20
value = 21010

[State 0, Caminar]
type = Changeanim
triggerall=(((anim=21002||(anim=21012)||(anim=21010))&&animtime=0)||(anim=21006))
trigger1=!var(15)
value = 21002

[State 0, Disparar]
type = Changeanim
triggerall=((anim=21002)||(anim=21006)||(((anim=21012)||(anim=21010))&&animtime=0))
trigger1=abs(enemy,pos x-pos x)>20&&root,movetype=A
value = 21012





[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=21012&&animelem=21,1
trigger2=anim=21010&&animelem=9,1
value = 5000,3
volumescale = 256
channel = -1
lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan = 
;ignorehitpause = 
;persistent = 

[State 210, 2]
type = HitDef
trigger1 = anim=21012
trigger1=animelem=21,1||animelem=22,1||animelem=23,1||animelem=24,1||animelem=25,1||animelem=26,1
attr = S, NA
animtype  = Medium
damage    = 5,3
guardflag = MA
pausetime = 0,0;12,12
sparkno = -1;s3501
sparkxy = 0,-30
hitsound   = -1
guardsound = -1;s0,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0


[State 210, 2]
type = HitDef
triggerall = anim=21010
trigger1=animelem=9,1
attr = S, NA
animtype  = Medium
damage    = 15,15
guardflag = MA
pausetime = 0,0;12,12
sparkno = -1;s3501
sparkxy = 0,-30
hitsound   = s0,2
guardsound = s0,2;s0,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0

[State 0, ENERGYBALL]
type = Helper
triggerall =anim=21012
trigger1=animelem=21,1||animelem=22,1||animelem=23,1
helpertype = normal ;player
name = "ENERGYBALL" 
ID = 23000;default helper projectile id
stateno = 21007
pos = 20,-20
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = win&&anim!=21009
value = 21009

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=21009&&animelem=11,1
value = S5000,2
volumescale = 256
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, ChangeState]
type = ChangeState
triggerall=root,var(10)<100
trigger1 =enemy,movecontact
trigger2=enemy,movehit
trigger3=enemy,projhit=1<2
trigger4=enemy,projcontact=1<2
trigger5=root,movetype=h
value = 21010
ctrl = 0

;================================================================================
;---------------------------------------------------------------------------
;KAMEHAMEHANORM
[Statedef 21007]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 21008
sprpriority = 5
velset = 10,0



[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 21007
attr = SCA
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = 1;time = 0
attr = S, SP
animtype  = Hard
damage    = 25,12
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,7
guardsound = s4000,7;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)
value = ifelse(var(3)=1,302,ifelse(var(3)=2,304,303))

;---------------------------------------------------------------------------

;================================================================================
;HAPPYTAROOLD
[Statedef 21008]
type    = S
movetype= A;Happyakumantaro
physics = N
juggle  = 3
ctrl = 1
anim = 21001
sprpriority = 5
velset = .1,.1


[State 0, VarSet];velocidad del pow
type = VarSet
trigger1 = anim=21001&&animtime=0
v = 11    
value = 2

[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 10    ;fv = 10
value = root,pos x-pos x
;ignorehitpause = 
;persistent = 

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=21001&&animtime=0
value = 21002


[State 0, VarSet]
type = VarSet
triggerall = var(15);((fvar(10))=(pos x));&&(((fvar(10))+(pos x))>-3)
trigger1=time
v = 11    
value = 0

[State 0, VarSet]
type = VarSet
triggerall = !var(15);((fvar(10))!=(pos x));&&(((fvar(10))+(pos x))>-3)
trigger1=time
v = 11    
value = 2


[State 0, VarSet]
type = VarSet
triggerall=ABS(floor(fvar(10)-(pos x)))<20
trigger1=time
v = 15    
value = 1

[State 0, VarSet]
type = VarSet
triggerall=ABS(floor(fvar(10)-(pos x)))>20
trigger1=time
v = 15    
value = 0

;[State 0, Turn]
;type = Turn
;triggerall=animelem=1,1
;trigger1 = pos x>fvar(10)&&facing=1
;trigger2 = pos x<fvar(10)&&facing=-1
;trigger3=anim=21007&&pos x>enemy,pos x&&facing=1
;trigger4=anim=21007&&pos x<enemy,pos x&&facing=-1
;trigger5=anim=21010&&pos x>enemy,pos x&&facing=1
;trigger6=anim=21010&&pos x<enemy,pos x&&facing=-1

[State 0, Turn]
type = Turn
triggerall=animelem=1,1;trigger1 = pos x>fvar(10)&&facing=1;trigger2 = pos x<fvar(10)&&facing=-1
trigger1 = ((anim!=21010)&&(anim!=21012)&&(anim!=21007))&&pos x>fvar(10)&&facing=1
trigger2 = ((anim!=21010)&&(anim!=21012)&&(anim!=21007))&&pos x<fvar(10)&&facing=-1
trigger3 = ((anim=21012)||(anim=21010)||(anim=21007))&&facing=1&&enemy,facing=-1&&pos x>enemy,pos x
trigger4 = ((anim=21012)||(anim=21010)||(anim=21007))&&facing=-1&&enemy,facing=1&&pos x<enemy,pos x
trigger5 = ((anim=21012)||(anim=21010)||(anim=21007))&&facing=-1&&enemy,facing=-1&&pos x<enemy,pos x
trigger6 = ((anim=21012)||(anim=21010)||(anim=21007))&&facing=1&&enemy,facing=1&&pos x>enemy,pos x



[State 0, VelSet]
type = VelSet
triggerall = pos x>fvar(10)
triggerall=((fvar(10))!=(pos x))
triggerall=anim=21002
trigger1=time
x = var(11)
y = 0
;ignorehitpause = 
;persistent = 

[State 0, VelSet]
type = VelSet
triggerall = pos x<fvar(10)
triggerall=((fvar(10))!=(pos x))
triggerall=anim=21002
trigger1=time
x = var(11)
y = 0



[State 0, VelSet]
type = VelSet
trigger1 = var(11)=0
trigger2=(floor((fvar(10)))=floor((pos x)))
trigger3=(ceil((fvar(10)))=ceil((pos x)))
trigger4=anim=21007||anim=21009||anim=21010||anim=21012
x = 0
y = 0


[State 0, Mirar]
type = Changeanim
triggerall=(anim=21002)||(((anim=21006)||(anim=21012)||(anim=21007)||(anim=21010))&&animtime=0)
trigger1=var(15)
value = 21006

[State 0, KICK]
type = Changeanim
triggerall=((anim=21002)||(anim=21006)||(((anim=21012)||(anim=21007)||(anim=21010))&&animtime=0))
trigger1=ABS(floor(enemy,pos x-(pos x)))<=20
value = 21010

[State 0, Caminar]
type = Changeanim
triggerall=(((anim=21012)||(anim=21002||(anim=21007)||(anim=21010))&&animtime=0)||(anim=21006))
trigger1=!var(15)
value = 21002

[State 0, Disparar]
type = Changeanim
triggerall=((anim=21002)||(anim=21006)||(((anim=21012)||(anim=21007)||(anim=21010))&&animtime=0))
trigger1=abs(enemy,pos x-pos x)>20&&root,movetype=A
value = ifelse(random%2=1,21012,21007)



;[State 0, Disparar]
;type = Changeanim
;triggerall=((anim=21002)||(anim=21006)||(((anim=21012)||(anim=21007)||(anim=21010))&&animtime=0))
;trigger1=abs(enemy,pos x)>20&&root,movetype=A
;value = 21012


[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=21007&&animelem=16,1
trigger2=anim=21010&&animelem=9,1
trigger3 = anim=21012&&animelem=21,1
value = 5000,3
volumescale = 256
channel = -1
lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan = 
;ignorehitpause = 
;persistent = 

[State 210, 2]
type = HitDef
triggerall = anim=21007
trigger1=animelem=17,1||animelem=18,1||animelem=19,1||animelem=20,1||animelem=21,1||animelem=22,1
attr = S, NA
animtype  = Medium
damage    = 5,3
guardflag = MA
pausetime = 0,0;12,12
sparkno = -1;s3501
sparkxy = 0,-30
hitsound   = -1
guardsound = -1;s0,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0

[State 210, 2]
type = HitDef
trigger1 = anim=21012
trigger1=animelem=21,1||animelem=22,1||animelem=23,1||animelem=24,1||animelem=25,1||animelem=26,1
attr = S, NA
animtype  = Medium
damage    = 5,3
guardflag = MA
pausetime = 0,0;12,12
sparkno = -1;s3501
sparkxy = 0,-30
hitsound   = -1
guardsound = -1;s0,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0

[State 210, 2]
type = HitDef
triggerall = anim=21010
trigger1=animelem=9,1
attr = S, NA
animtype  = Medium
damage    = 35,15
guardflag = MA
pausetime = 0,0;12,12
sparkno = -1;s3501
sparkxy = 0,-30
hitsound   = s0,2
guardsound = s0,2;s0,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0


[State 0, EnemyChaser]
type = Helper
triggerall = anim=21007
trigger1 = animelem=17,1
trigger2 = animelem=18,1
helpertype = normal ;player
name = "ENERGYBALL"
ID = 23000;default helper projectile id
stateno = 21011
pos = 20,-20
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, EnemyChaser]
type = Helper
triggerall = anim=21012
trigger1 = animelem=21,1|| animelem=22,1||animelem=23,1||animelem=24,1
helpertype = normal ;player
name = "ENERGYBALLUP"
ID = 23000;default helper projectile id
stateno = 21012
pos = 20,-20
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = win&&anim!=21009
value = 21009

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=21009&&animelem=11,1
value = S5000,2
volumescale = 256
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, ChangeState]
type = ChangeState
triggerall=root,var(10)<100
trigger1 =enemy,movecontact
trigger2=enemy,movehit
trigger3=enemy,projhit=1<2
trigger4=enemy,projcontact=1<2
trigger5=root,movetype=h
value = 21010
ctrl = 0

;================================================================================
;---------------------------------------------------------------------------
;MINI-UFO START
[Statedef 21009]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 21050
sprpriority = 5
velset = 0,2
poweradd=-(ifelse((root,var(59)),1000,root,fvar(16)))


[State 0, PosSet]
type = PosSet
trigger1 = time=0
y = -200



[State 0, Yihaa]
type = PlaySnd;triggerall=roundstate=2||roundstate=1
trigger1 = time=0
value = S5011,6+random%3
volumescale = 256
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1



[State 0, VarSet];VIDAS
type = VarSet
trigger1 =1 
v = 31
value =125+(var(17)*75)

[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 21    ;fv = 10
value = animelemno(0)

[State 0, VarSet]
type = VarSet
trigger1 = TIME=0
v = 17    ;fv = 10
value = random%3

[State 0, VarSet];bulletno
type = VarSet
trigger1 =1
v = 13    ;fv = 10
value = 23000+random%1000

[State 0, VarSet];ESTRATEGA O PERSISTENTE
type = VarSet
trigger1 =time=0 
v = 27
value =random%2


[State 0, VarSet];SELECTOR DE IA de movimiento
type = VarSet
trigger1 =time=0
v = 32
value =random%4

[State 0, VarSet];SELECTOR DE DE IA de ataque
type = VarSet
trigger1 =time=0
v = 33
value =random%4


[State 0, RemapPal]
type = RemapPal
trigger1 =var(17)=0
source = 0,72
dest = 0,72

[State 0, RemapPal]
type = RemapPal
trigger1 =var(17)=1
source = 0,72
dest = 72,0


[State 0, RemapPal]
type = RemapPal
trigger1 =var(17)=2
source = 0,72
dest = 72,1

[State 0, ChangeState]
type = ChangeState
trigger1 = time>=2
value =21015

;---------------------------------------------------------------------------
;MINI-UFO
[Statedef 21015]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 21050
sprpriority = 5

[State 0, ChangeAnim];gethit
type = ChangeAnim
trigger1 = (time=0)&&(anim=21050)
value = 21053+var(21)

[State 0, ChangeAnim];gethit end
type = ChangeAnim
trigger1 = (anim=[21054,21069])&&animtime=0
value = 21050

[State 0, VarSet];resta vida
type = Varadd
trigger1 = time=0
v = 31
value = -gethitvar(damage)

[State 0, VarSet];guarda el elemento de animacion
type = VarSet
trigger1 = 1
v = 21
value = animelemno(0)

[State 0, VarSet];altura random
type = VarSet
trigger1 = time=0
fv = 12    ;fv = 10
value = random%150

[State 0, VarSet];SELECTOR DE IA de movimiento
type = VarSet
trigger1 =(time=0)&&(var(27)=1)
v = 32
value =random%4

[State 0, VarSet];SELECTOR DE DE IA de ataque
type = VarSet
trigger1 =(time=0)&&(var(27)=1)
v = 33
value =random%4

[State 0, VarSet];SELECTOR DE CANTIDAD DE ATAQUES
type = VarSet
trigger1 =time=0 
v = 34
value =1+random%3

[State 0, VarSet];SELECTOR DE PORCENTAJE DE ATAQUE ATTACK RATE
type = VarSet
trigger1 =time=0 
v = 35
value =(RANDOM%150) +(var(17)*100)

[State 0, VarSet];velocidad del pow
type = VarSet
trigger1 = time=0
v = 11    
value = 2

[State 0, VarSet];posicion x root
type = VarSet
trigger1 = time
fv = 10    ;fv = 10
value = floor(root,pos x)

[State 0, VarSet];posicion y root
type = VarSet
trigger1 = time
fv = 11    ;fv = 10
value = floor(root,pos y)

[State 0, VarSet];posicion x enemy
type = VarSet
trigger1 = time
fv = 13    ;fv = 10
value = floor(enemynear,pos x)

[State 0, VarSet];posicion y enemy
type = VarSet
trigger1 = time
fv = 14   ;fv = 10
value = floor(enemynear,pos y)

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = " var(21) = %d  var(13) %d,var(34)%d,var(33)%d,var(31)%d"
params =  var(21), var(13),var(34),var(33),var(31)



[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AT
time = -1

[State 0, NotHitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP
time = -1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP
slot = 1
stateno = 21015
time = -1
forceair = 0

;EL SEGUIDOR PROTECTOR VAR(32)=0,1

[State 0, VelSet]
type = VelSet
trigger1 = var(32)=0
x = root,vel x

[State 0, VelSet]
type = VelSet
trigger1 = var(32)=1
x = -root,vel x

[State 0, VelSet]
type = VelSet
triggerall=((var(32)=0)||(var(32)=1))
trigger1 = floor(pos y)<floor(fvar(11)-fvar(12))
y = 1

[State 0, VelSet]
type = VelSet
triggerall=((var(32)=0)||(var(32)=1))
trigger1 = floor(pos y)>floor(fvar(11)-fvar(12))
y = -1

[State 0, VelSet]
type = VelSet
triggerall=((var(32)=0)||(var(32)=1))
trigger1 = floor(pos y)=floor(fvar(11)-fvar(12))
y = 0

;EL SEGUIDOR OFENSIVO VAR(32)=2,3

[State 0, VelSet]
type = VelSet
trigger1 = var(32)=2
x = enemynear,vel x

[State 0, VelSet]
type = VelSet
trigger1 = var(32)=3
x = -enemynear,vel x

[State 0, VelSet]
type = VelSet
triggerall=((var(32)=2)||(var(32)=3))
trigger1 = floor(pos y)<floor(fvar(14)-fvar(12))
y = 1

[State 0, VelSet]
type = VelSet
triggerall=((var(32)=2)||(var(32)=3))
trigger1 = floor(pos y)>floor(fvar(14)-fvar(12))
y = -1

[State 0, VelSet]
type = VelSet
triggerall=((var(32)=2)||(var(32)=3))
trigger1 = floor(pos y)=floor(fvar(14)-fvar(12))
y = 0

;IA DE MOVIMIENTO END

[State 0, ChangeAnim];LEAVING AFTER WIN
type = ChangeAnim
trigger1 = win&&anim!=21053
value = 21053

[State 0, VelAdd]
type = Velset
trigger1 = anim=21053
x = 1.5*facing
y = -3


[State 0, FX];ATTACK
type = Helper
triggerall=roundstate=2
trigger1=(random<var(35))&&(numhelper(var(13))=0)&&(var(33)=0);RANDOM
trigger2=(time)&&(numhelper(var(13))=0)&&(var(33)=1);SUPER AGRESIVO
trigger3=(numhelper(var(13))=0)&&((root,command="x")||(root,command="z")||((root,time>80)&&(random<var(35))))&&(var(33)=2);GUIADO
trigger4=((enemy,movetype=A)||((root,time>80)&&(random<var(35))))&&(numhelper(var(13))=0)&&(var(33)=3);DEFENSOR
helpertype = normal ;player
name = "UFOATTACK" 
ID = var(13);default helper projectile id
stateno = 21013
pos = 0,0
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 0, ChangeState];Muerte de Ufo
type = ChangeState
trigger1 = var(31)<=0
value =21016


[State 0, DestroySelf]
type = DestroySelf
trigger1 = anim=21053&&animtime=0
;ignorehitpause = 
;persistent = 

;================================================================================
;---------------------------------------------------------------------------
;KAMEHAMEHAUP
[Statedef 21012]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 21033
sprpriority = 5
velset = 3,0



[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 21    ;fv = 10
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = pos y<root,pos y - 300
v = 21    ;fv = 10
value = 2

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 21007
attr = SCA
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = 1;time = 0
attr = S, SP
animtype  = Hard
damage    = 20,10
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,7
guardsound = s4000,7;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 0, VelSet]
type = Veladd
trigger1 = var(21)=1
y = -1

[State 0, VelSet]
type = Velset
trigger1 = var(21)=2
x=0
y=10

[State 0, PosSet]
type = PosSet
trigger1 = pos y<root,pos y - 300
x = enemy,pos x
y = pos y

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = pos y>0
trigger3 = frontedgedist <=-50
value = ifelse(var(21)=1,302,304)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MINI-UFO FX
[Statedef 21013]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 21051
sprpriority = 6

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 0, VarSet];TRIPLEHIT
type = VarSet
trigger1 = (TIME=0)
v = 15    ;fv = 10
value = RANDOM%10


[State 0, FX];ATTACK
type = Helper
trigger1=animelem=7,1
helpertype = normal ;player
name = "UFOBULLET" 
ID = 23400;default helper projectile id
stateno = 21014
pos = 0,0
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State 0, FX];ATTACK
type = Helper
trigger1=(animelem=7,1)&&(parent,var(17)=1)&&(var(15)<=1)
helpertype = normal ;player
name = "UFOBULLETUP" 
ID = 23400;default helper projectile id
stateno = 21018
pos = 0,0
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, FX];ATTACK
type = Helper
trigger1=(animelem=7,1)&&(parent,var(17)=1)&&(var(15)<=1)
helpertype = normal ;player
name = "UFOBULLETDW" 
ID = 23400;default helper projectile id
stateno = 21017
pos = 0,0
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, FX];ATTACK
type = Helper
trigger1=(animelem=7,1)&&(parent,var(17)=2)&&(var(15)<=3)
helpertype = normal ;player
name = "UFOBULLETUP" 
ID = 23400;default helper projectile id
stateno = 21018
pos = 0,0
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, FX];ATTACK
type = Helper
trigger1=(animelem=7,1)&&(parent,var(17)=2)&&(var(15)<=3)
helpertype = normal ;player
name = "UFOBULLETDW" 
ID = 23400;default helper projectile id
stateno = 21017
pos = 0,0
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = -1
pos = 0,0


[State 1105]
type = destroyself
trigger1=animtime=0
trigger2=parent,anim=21070
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MINI-UFO BULLET
[Statedef 21014]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 21052
sprpriority = 5
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 4000,55
volumescale = 256
channel = -1
lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan = 

[State 0, Trans]
type = Trans
trigger1 = time=0
trans = ADDalpha ;none, add, addalpha, add1, sub
alpha = 0,256

[State 0, Turn]
type = Turn
trigger1 = TIME=0&&enemy,pos x<pos x
;ignorehitpause = 
;persistent = 

[State X, Store Angle]
Type = VarSet
Trigger1 = 1
FV = 0
Value = Cond(EnemyNear,Pos X != Pos X, ATan(((EnemyNear,Pos Y + EnemyNear,Const(Size.Mid.Pos.Y)) - Pos Y) / ((EnemyNear,Pos X - Pos X) * Facing)), Cond(EnemyNear,Pos Y + EnemyNear,Const(Size.Mid.Pos.Y) < Pos Y, PI / 2.0, -PI / 2.0))


[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "fvar(0) = %d vel x = %f vel y = %f"
params = atan(fvar(0)),vel x,vel y



[State 0, ParentVarSet];Le resta a la variable granadas
type = ParentVarSet
triggerall=root,var(17)>0
trigger1 = time=0
v =  17   ;fv = 
value = root,var(17)-1

[State 0, PalFXWiz]
type = PalFX
trigger1=time=0
time = -1
add = 0,0,256
mul = 256,256,256
sinadd = 256,0,0,15
invertall = 0
color = 256

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


;HOMING PROJECTILE

;[State ****: Turn]
;type = Turn
;trigger1 = (P2Dist X < 10)

[State ****: VelSet]
type = VelSet
trigger1 = (!Time)
x = 3
;
;[State ****: VelAdd]
;type = VelAdd
;trigger1 = (P2Dist X < 0) && (Vel X > -8);-6)
;x = -.8;.4;0.2

[State ****: VelAdd]
type = Velset
trigger1 = time=1
x = 5*cos(fvar(0));.4;0.2
y = 5*sin(fvar(0));0.2

;[State ****: VelAdd]
;type = VelAdd
;trigger1 = (P2Dist X > 0) && (Vel X < 8);6)
;x = .8*cos(fvar(0));.4;0.2

;[State ****: VelAdd]
;type = VelAdd
;trigger1 = (EnemyNear, Pos Y -25> Pos Y) && (Vel Y < 3);6)
;y = .6;0.2
;
;[State ****: VelAdd]
;type = VelAdd
;trigger1 = (EnemyNear, Pos Y -25<= Pos Y) && (Vel Y > -3);6)
;y = -.6;.2;0.2

;HOMING PROJECTILE END

;==========================================================
;ANGULO SEGUN VELOCIDAD:
;==========================================================

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x>0
value=atan(-vel y/vel x)*180/pi


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y<0
value=90

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y>0
value=270


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x<0
value=atan(-vel y/vel x)*180/pi+180

;==========================================================

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 22,11
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,7
guardsound = -1;s4000,7;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, ChangeAnim]
type = CHANGESTATE
trigger1 = pos y>=0
value = 296

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = anim=1999&&animtime=0;pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)
trigger5 = backedgedist <=-50
value=297
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MINI-UFO DIES
[Statedef 21016]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 21070
sprpriority = 5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 4000,57
volumescale = 256
channel = -1
lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan = 

[State 0, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1


[State 1105]
type = destroyself
trigger1=animtime=0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MINI-UFO BULLET DW
[Statedef 21017]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 21052
sprpriority = 5
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 4000,55
volumescale = 256
channel = -1
lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan = 

[State 0, Trans]
type = Trans
trigger1 = time=0
trans = ADDalpha ;none, add, addalpha, add1, sub
alpha = 0,256

[State 0, Turn]
type = Turn
trigger1 = TIME=0&&enemy,pos x<pos x
;ignorehitpause = 
;persistent = 

[State X, Store Angle]
Type = VarSet
Trigger1 = 1
FV = 0
Value = Cond(EnemyNear,Pos X != Pos X, ATan(((EnemyNear,Pos Y + EnemyNear,Const(Size.Mid.Pos.Y)) - Pos Y) / ((EnemyNear,Pos X - Pos X) * Facing)), Cond(EnemyNear,Pos Y + EnemyNear,Const(Size.Mid.Pos.Y) < Pos Y, PI / 2.0, -PI / 2.0))


[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "fvar(0) = %d vel x = %f vel y = %f"
params = atan(fvar(0)),vel x,vel y



[State 0, ParentVarSet];Le resta a la variable granadas
type = ParentVarSet
triggerall=root,var(17)>0
trigger1 = time=0
v =  17   ;fv = 
value = root,var(17)-1

[State 0, PalFXWiz]
type = PalFX
trigger1=time=0
time = -1
add = 0,0,256
mul = 256,256,256
sinadd = 256,0,0,15
invertall = 0
color = 256

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


;HOMING PROJECTILE

;[State ****: Turn]
;type = Turn
;trigger1 = (P2Dist X < 10)

[State ****: VelSet]
type = VelSet
trigger1 = (!Time)
x = 3
;
;[State ****: VelAdd]
;type = VelAdd
;trigger1 = (P2Dist X < 0) && (Vel X > -8);-6)
;x = -.8;.4;0.2

[State ****: VelAdd]
type = Velset
trigger1 = time=1
x = 5*cos(fvar(0)+pi/8);.4;0.2
y = 5*sin(fvar(0)+pi/8);0.2

;[State ****: VelAdd]
;type = VelAdd
;trigger1 = (P2Dist X > 0) && (Vel X < 8);6)
;x = .8*cos(fvar(0));.4;0.2

;[State ****: VelAdd]
;type = VelAdd
;trigger1 = (EnemyNear, Pos Y -25> Pos Y) && (Vel Y < 3);6)
;y = .6;0.2
;
;[State ****: VelAdd]
;type = VelAdd
;trigger1 = (EnemyNear, Pos Y -25<= Pos Y) && (Vel Y > -3);6)
;y = -.6;.2;0.2

;HOMING PROJECTILE END

;==========================================================
;ANGULO SEGUN VELOCIDAD:
;==========================================================

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x>0
value=atan(-vel y/vel x)*180/pi


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y<0
value=90

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y>0
value=270


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x<0
value=atan(-vel y/vel x)*180/pi+180

;==========================================================

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 22,11
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,7
guardsound = -1;s4000,7;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, ChangeAnim]
type = CHANGESTATE
trigger1 = pos y>=0
value = 296

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = anim=1999&&animtime=0;pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)
trigger5 = backedgedist <=-50
value=297
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MINI-UFO BULLET UP
[Statedef 21018]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 21052
sprpriority = 5
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 4000,55
volumescale = 256
channel = -1
lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan = 

[State 0, Trans]
type = Trans
trigger1 = time=0
trans = ADDalpha ;none, add, addalpha, add1, sub
alpha = 0,256

[State 0, Turn]
type = Turn
trigger1 = TIME=0&&enemy,pos x<pos x
;ignorehitpause = 
;persistent = 

[State X, Store Angle]
Type = VarSet
Trigger1 = 1
FV = 0
Value = Cond(EnemyNear,Pos X != Pos X, ATan(((EnemyNear,Pos Y + EnemyNear,Const(Size.Mid.Pos.Y)) - Pos Y) / ((EnemyNear,Pos X - Pos X) * Facing)), Cond(EnemyNear,Pos Y + EnemyNear,Const(Size.Mid.Pos.Y) < Pos Y, PI / 2.0, -PI / 2.0))


[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "fvar(0) = %d vel x = %f vel y = %f"
params = atan(fvar(0)),vel x,vel y



[State 0, ParentVarSet];Le resta a la variable granadas
type = ParentVarSet
triggerall=root,var(17)>0
trigger1 = time=0
v =  17   ;fv = 
value = root,var(17)-1

[State 0, PalFXWiz]
type = PalFX
trigger1=time=0
time = -1
add = 0,0,256
mul = 256,256,256
sinadd = 256,0,0,15
invertall = 0
color = 256

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


;HOMING PROJECTILE

;[State ****: Turn]
;type = Turn
;trigger1 = (P2Dist X < 10)

[State ****: VelSet]
type = VelSet
trigger1 = (!Time)
x = 3
;
;[State ****: VelAdd]
;type = VelAdd
;trigger1 = (P2Dist X < 0) && (Vel X > -8);-6)
;x = -.8;.4;0.2

[State ****: VelAdd]
type = Velset
trigger1 = time=1
x = 5*cos(fvar(0)-pi/8);.4;0.2
y = 5*sin(fvar(0)-pi/8);0.2

;[State ****: VelAdd]
;type = VelAdd
;trigger1 = (P2Dist X > 0) && (Vel X < 8);6)
;x = .8*cos(fvar(0));.4;0.2

;[State ****: VelAdd]
;type = VelAdd
;trigger1 = (EnemyNear, Pos Y -25> Pos Y) && (Vel Y < 3);6)
;y = .6;0.2
;
;[State ****: VelAdd]
;type = VelAdd
;trigger1 = (EnemyNear, Pos Y -25<= Pos Y) && (Vel Y > -3);6)
;y = -.6;.2;0.2

;HOMING PROJECTILE END

;==========================================================
;ANGULO SEGUN VELOCIDAD:
;==========================================================

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x>0
value=atan(-vel y/vel x)*180/pi


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y<0
value=90

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y>0
value=270


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x<0
value=atan(-vel y/vel x)*180/pi+180

;==========================================================

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 22,11
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,7
guardsound = -1;s4000,7;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, ChangeAnim]
type = CHANGESTATE
trigger1 = pos y>=0
value = 296

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = anim=1999&&animtime=0;pos y>0
trigger3 = frontedgedist <=-50
trigger4 = (pos y<root,pos y-250)
trigger5 = backedgedist <=-50
value=297
;---------------------------------------------------------------------------
[Statedef 21020,MARSPPLTELEPORT]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 21071
sprpriority = 5
velset = 0,0
poweradd=-(ifelse((root,var(59)),1000,root,fvar(16)))


[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0


[State 0,IAAT];IA
type = VarSet
trigger1 = 1
v = 59    ;fv = 10
value = random%3
;var(59)=0<-Random all
;var(59)=1<-Follower
;var(59)=2<-Defender
[State 0,HP]
type = VarSet
trigger1 = 1
v = 31
value = 30+var(30)*20

[State 0,MODE]
type = VarSet
trigger1 = time=0
v = 30    ;fv = 10
value = random%4

[State 0,ATTACKTYPE]
type = VarSet
trigger1 = var(30)
v = 29    ;fv = 10
value =random%2;random%4


[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 28
value = random%51



[State 0, RemapPal]
type = RemapPal
trigger1 =1
source = 0,87
dest = 87,var(30)

[State 0, IAMOV]
type = VarSet
trigger1 = 1
v = 58
value = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 5000,5
volumescale = 256
channel = -1


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AT
time = -1

[State 0, NotHitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP
time = -1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 21021
time = -1
forceair = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime=0
value = 21072


[State 0, ChangeState]
type = ChangeState
trigger1 =anim=21072
value =21021
;---------------------------------------------------------------------------
[Statedef 21021,MARSPPL]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0;anim = ifelse(prevstateno=21021,anim,21072)
sprpriority = 5
velset = 0,0


[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(31) = %d"
params = var(31)

[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 27    ;fv = 10
value = random%(var(28))


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AT
time = -1

[State 0, NotHitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP
time = -1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP
slot = 1
stateno = 21021
time = -1
forceair = 0

[State 0, Turn]
type = Turn
trigger1 = anim=21084&&animtime=0
;====VARS====

[State 0, VarSet];resta vida
type = Varadd
trigger1 = time=0
v = 31
value = -gethitvar(damage)

[State 0, VarSet];RANDOM
type = VarSet
trigger1 = 1
v = 10
value = random%10

[State 0, ENEMYPOSX]
type = VarSet
trigger1 =1
fv = 10
value = enemy,pos x

[State 0, ROOTPOSX]
type = VarSet
trigger1 =1
fv = 11
value = root,pos x

[State 0, RANDOMPOSENEMY]
type = VarSet
triggerall=var(58)=0
trigger1 =time=0
trigger2 =ifelse(floor(abs(pos x-fvar(10)))>150,((random%30)=9),0)
fv = 12
value = random%150

[State 0, RANDOMPOSROOT]
type = VarSet
triggerall=var(58)=1
trigger1 =time=0
trigger2 =ifelse(floor(abs(pos x-fvar(11)))>150,((random%30)=9),0)
fv = 12
value = random%150

;====MOVEMENT====
[State 0, ADVANCE]
type = VelSet
trigger1 =anim=21085
x = 1.5-(.5)*(var(30)=1)+(.5)*(var(30)=2)

[State 0, STOP]
type = VelSet
trigger1 =anim=21072
trigger2 =anim=21082
trigger3 =anim=21084
trigger4 =anim=21083
x = 0

;====ANIMATIONS====
[State 0,ATTACK]
type = ChangeAnim
triggerall=roundstate=2&&((anim=21072)||(anim=21085))
trigger1 =(var(59)=0)&&(var(10)=5)
trigger2 =(var(59)=1)&&((root,command="x")||(root,command="z")||(root,movetype=a)||((root,time>80)&&(var(10)=3)))
trigger3 =(var(59)=2)&&((enemy,movetype=a)||((root,time>80)&&(var(10)=3))||(enemy,numproj>0))
trigger4 = floor(abs(pos x-fvar(10)))<20
value = 21082

[State 0,IDLE]
type = ChangeAnim
trigger1 =(anim=21080)&&animtime=0
trigger2 =(anim=21081)&&animtime=0
trigger3 =(anim=21082)&&animtime=0
trigger4 =(anim=21084)&&animtime=0
trigger5 =(floor(abs(pos x-fvar(10)))<=(floor(fvar(12))))&&anim=21085
trigger6 =(anim=21078)
trigger7 = (anim=21071)&&animtime=0
value = 21072

[State 0, TURN]
type = ChangeAnim
triggerall=var(58)=0
triggerall=anim=21072
trigger1 =pos x-enemy,pos x>0&&facing=1
trigger2 =pos x-enemy,pos x<0&&facing=-1
value = 21084

[State 0, WALK]
type = ChangeAnim
triggerall=var(58)=0
triggerall=anim=21072
trigger1 =floor(abs(pos x-fvar(10)))>(floor(fvar(12)))
value = 21085

[State 0, WALK]
type = ChangeAnim
triggerall=var(58)=1
triggerall=anim=21072
trigger1 =floor(abs(pos x-fvar(11)))>(floor(fvar(12)))
value = 21085

[State 0, WIN]
type = ChangeAnim
trigger1 = win&&anim!=21083
value = 21083


;====HELPERS======
[State 0,BUBBLES];ATTACK
type = Helper
triggerall=((var(30)=0)||(var(30)=3)||((var(30)=1)&&(var(29)=0))||((var(30)=1)&&(var(29))&&(p2dist x<30))||((var(30)=2)&&(p2dist x<30)))
trigger1=anim=21082&&((animelem=12,1)||(animelem=19,1)||(animelem=26,1))
trigger2=anim=21081&&((animelem=12,1)||(animelem=19,1))
trigger3=anim=21080&&((animelem=12,1))
helpertype = normal ;player
name = "BUBBLES" 
ID = 23422;default helper projectile id
stateno = 21023
pos = 43,-16
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0,BUBBLES2];ATTACK
type = Helper
triggerall=(((var(30)=2)&&(p2dist x>=30))||((var(30)=1)&&(p2dist x>=30)&&(var(29))))
trigger1=anim=21082&&((animelem=12,1)||(animelem=19,1)||(animelem=26,1))
trigger2=anim=21081&&((animelem=12,1)||(animelem=19,1))
trigger3=anim=21080&&((animelem=12,1))
helpertype = normal ;player
name = "BUBBLESFAST" 
ID = 23422;default helper projectile id
stateno = 21025
pos = 43,-16
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;====SOUNDS======
[State 0, PlaySnd]
type = PlaySnd
trigger1 =anim=21083&&animelem=10,1
value = 5000,8;volumescale = 256
channel = -1

[State 0,DIES]
type = ChangeState
trigger1 = var(31)<=0
value =21022

[State 0, JUMP]
type = ChangeState
triggerall=((anim=21072)||(21085))&&var(27)=3&&time>60&&!win
trigger1 =floor(abs(pos x-fvar(10)))>(floor(fvar(12)))
value = 21026

;---------------------------------------------------------------------------
[Statedef 21022,MARSPPLDIE1]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 21079
sprpriority = 5
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 5000,4
volumescale = 256
channel = -1


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0
;---------------------------------------------------------------------------
;MARSPPLBUBBLE
[Statedef 21023]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0;
anim = 21073;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 6
velset = 2,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 4000,55
volumescale = 128
channel = -1

[State 0, RemapPal]
type = RemapPal
trigger1 =(parent,var(29)=0)&&(parent,var(30)=1)
source = 0,87
dest = 87,0

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = ,NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA,AA,AP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 21024
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
ignorehitpause = 1


[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)=2
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 302
attr = SCA, NP, SP, HP
ignorehitpause = 1


;HOMING PROJECTILE
;
;[State ****: Turn]
;type = Turn
;trigger1 = (P2Dist X < 10)

[State ****: VelSet]
type = VelSet
trigger1 = (!Time)
x = 1

[State ****: VelAdd]
type = VelAdd
trigger1 = (P2Dist X < 0) && (Vel X > -1);-6)
x = -.2;.4;0.2

[State ****: VelAdd]
type = VelAdd
trigger1 = (P2Dist X > 0) && (Vel X < 1);6)
x = .2;.4;0.2

[State ****: VelAdd]
type = VelAdd
trigger1 = (EnemyNear, Pos Y -25> Pos Y) && (Vel Y < 1);6)
y = .5;0.2

[State ****: VelAdd]
type = VelAdd
trigger1 = (EnemyNear, Pos Y -25<= Pos Y) && (Vel Y > -1);6)
y = -.5;.2;0.2

;HOMING PROJECTILE END
[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SP
animtype  = Hard
damage    = 15+5*(parent,var(30)),7+5*(parent,var(30))
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,7
guardsound =-1;s4000,7;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=21073&&animtime=0
value = 21074

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=21074&&animtime=0
value = 21075

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=21075&&animtime=0
value = 21076

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = frontedgedist <=-50
trigger3 = (pos y<root,pos y-250)
value = 21024

[State 0, DestroySelf]
type = DestroySelf
trigger1 = anim=21076&&animtime=0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MARSPPLBBBLEXP
[Statedef 21024]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 21077;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 5
velset = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0
;---------------------------------------------------------------------------
;MARSPPLBUBBLEF
[Statedef 21025]
type    = A
movetype= A
physics = N
juggle  = 3
anim = 21073;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 6

[State 0, Trans]
type = Trans
trigger1 = time=0
trans = ADDalpha ;none, add, addalpha, add1, sub
alpha = 0,256

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 4000,55
volumescale = 128
channel = -1

;[State 0, Turn]
;type = Turn
;trigger1 = TIME=0&&enemy,pos x<pos x

[State X, Store Angle]
Type = VarSet
Trigger1 = 1
FV = 0
Value = Cond(EnemyNear,Pos X != Pos X, ATan(((EnemyNear,Pos Y + EnemyNear,Const(Size.Mid.Pos.Y)) - Pos Y) / ((EnemyNear,Pos X - Pos X) * Facing)), Cond(EnemyNear,Pos Y + EnemyNear,Const(Size.Mid.Pos.Y) < Pos Y, PI / 2.0, -PI / 2.0))

[State ****: VelSet]
type = VelSet
trigger1 = (!Time)
x = 3

[State ****: VelAdd]
type = Velset
trigger1 = time=1
x = 8*cos(fvar(0));.4;0.2
y = 8*sin(fvar(0));0.2

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x>0
value=atan(-vel y/vel x)*180/pi


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y<0
value=90

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y>0
value=270


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x<0
value=atan(-vel y/vel x)*180/pi+180

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SP
animtype  = Hard
damage    = 15+5*(parent,var(30)),7+5*(parent,var(30))
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,7
guardsound =-1;s4000,7;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=21073&&animtime=0
value = 21074

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=21074&&animtime=0
value = 21075

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=21075&&animtime=0
value = 21076

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = frontedgedist <=-50
trigger3 = (pos y<root,pos y-250)
value = 21024

[State 0, DestroySelf]
type = DestroySelf
trigger1 = anim=21076&&animtime=0

;---------------------------------------------------------------------------
;--------------------------------------------------------------------------
[Statedef 21026,MARSPPLJUMPST]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0;anim = ifelse(prevstateno=21021,anim,21072)anim = 21086;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 5
velset = 0,0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim!=21086
value = 21086

[State 0, VarSet]
type = VarSet
trigger1 =1 
v = 9
value = 0

[State 0, VelSet]
type = VelSet
trigger1 = ANIMTIME=0
x = 3
y = -3

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP
slot = 1
stateno = 21026
time = -1
forceair = 0

[State 0, VarSet];resta vida
type = Varadd
trigger1 = time=0
v = 31
value = -gethitvar(damage)


[State 0,DIES]
type = ChangeState
trigger1 =anim=21021&&var(31)<=0
value =21022

[State 0, ChangeState]
type = ChangeState
trigger1 =animtime=0
value =21027
;---------------------------------------------------------------------------
;MARSPPLJUMP
[Statedef 21027]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0;anim = 21087;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 6
;velset = 3,-3


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=21086
value = 21087

[State 0, VarSet];resta vida
type = Varadd
trigger1 = time=0
v = 31
value = -gethitvar(damage)

[State 0, VarAdd]
type = VarAdd
trigger1 = time
v =  9   ;fv = 
value = 1

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "vel y = %f"
params = vel y

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP
slot = 1
stateno = 21027
time = -1
forceair = 0

[State 0, VelAdd]
type = veladd
trigger1 =anim=21087&&var(9)<5&&vel y>-3
y = -0.1

[State 0, VelAdd]
type = veladd
trigger1 =(anim=21087)&&(var(9)>=5)&&(vel y<3)
y =0.1

[State 0, VelSet]
type = VelSet
trigger1 = anim=21087
x = 1.5

[State 0, VelSet]
type = VelSet
trigger1 = anim=21078
x = 0
y = 0

[State 0, LAND]
type = ChangeAnim
trigger1 = anim=21087&&pos y>0&&vel y>0
value = 21078

[State 0,BUBBLES];ATTACK
type =Helper
triggerall=((var(30)=0)||(var(30)=3)||((var(30)=1)&&(var(29)=0))||((var(30)=1)&&(var(29))&&(p2dist x<30))||((var(30)=2)&&(p2dist x<30)))
trigger1=anim=21087&&((animelem=4,1)||(animelem=8,1)||(animelem=12,1))
helpertype = normal ;player
name = "BUBBLES" 
ID = 23422;default helper projectile id
stateno = 21023
pos = 0,0
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0,BUBBLES2];ATTACK
type = Helper
triggerall=(((var(30)=2)&&(p2dist x>=30))||((var(30)=1)&&(p2dist x>=30)&&(var(29))))
trigger1=anim=21087&&((animelem=4,1)||(animelem=8,1)||(animelem=12,1))
helpertype = normal ;player
name = "BUBBLESFAST" 
ID = 23422;default helper projectile id
stateno = 21025
pos = 0,0
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = anim=21078&&animtime=0
value =21021

[State 0,DIES]
type = ChangeState
trigger1 =anim=21087&&var(31)<=0
value =21028

[State 0,DIES]
type = ChangeState
trigger1 =anim=21078&&var(31)<=0
value =21022
;---------------------------------------------------------------------------
[Statedef 21028,MARSPPLDIEAIR]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 21088
sprpriority = 5
velset = 0,0


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 5000,4
volumescale = 256
channel = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef 21029,MARSPPLFALLING]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0;
anim = 21087;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 6
velset = 0,1.5
poweradd=-(ifelse((root,var(59)),1000,root,fvar(16)))


[State 0, PosSet]
type = PosSet
trigger1 = time=0
y = -250

[State 0, Yihaa]
type = PlaySnd;triggerall=roundstate=2||roundstate=1
trigger1 = time=0
value = S5011,6+random%3
volumescale = 256
channel = -1
freqmul = 1.0
loop = 0
pan = 0


[State 0,IAAT];IA
type = VarSet
trigger1 = 1
v = 59    ;fv = 10
value = random%3
;var(59)=0<-Random all
;var(59)=1<-Follower
;var(59)=2<-Defender
[State 0,HP]
type = VarSet
trigger1 = time=1
v = 31
value = 30+var(30)*20

[State 0,MODE]
type = VarSet
trigger1 = time=0
v = 30    ;fv = 10
value = random%4

[State 0,ATTACKTYPE]
type = VarSet
trigger1 = var(30)
v = 29    ;fv = 10
value =random%2;random%4


[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 28    ;fv = 10
value = random%51
;ignorehitpause = 
;persistent = 


[State 0, RemapPal]
type = RemapPal
trigger1 =1
source = 0,87
dest = 87,var(30)

[State 0, IAMOV]
type = VarSet
trigger1 = 1
v = 58
value = 0

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = time=0
;value = 5000,5
;volumescale = 256
;channel = -1


[State 0, NotHitBy]
type = NotHitBy
trigger1 = time>5
value = ,AT
time = -1


[State 0, NotHitBy]
type = NotHitBy
trigger1 = time<=5
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, NotHitBy]
type = HitBy
trigger1 = time>5
value = SCA,NA,SA,HA,NP,SP,HP
time = -1

[State 0, HitOverride]
type = HitOverride
trigger1 = anim=21087
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 21030
time = -1
forceair = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = anim=21078
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 21021
time = -1
forceair = 0

[State 0,BUBBLES];ATTACK
type =Helper
triggerall=time>5
triggerall=random%2
triggerall=((var(30)=0)||(var(30)=3)||((var(30)=1)&&(var(29)=0))||((var(30)=1)&&(var(29))&&(p2dist x<30))||((var(30)=2)&&(p2dist x<30)))
trigger1=anim=21087&&((animelem=4,1)||(animelem=8,1)||(animelem=12,1))
helpertype = normal ;player
name = "BUBBLES" 
ID = 23422;default helper projectile id
stateno = 21023
pos = 0,0
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0,BUBBLES2];ATTACK
type = Helper
triggerall=time>5
triggerall=random%2
triggerall=(((var(30)=2)&&(p2dist x>=30))||((var(30)=1)&&(p2dist x>=30)&&(var(29))))
trigger1=anim=21087&&((animelem=4,1)||(animelem=8,1)||(animelem=12,1))
helpertype = normal ;player
name = "BUBBLESFAST" 
ID = 23422;default helper projectile id
stateno = 21025
pos = 0,0
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, PosSet]
type = PosSet
trigger1 = anim=21078
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = anim=21078
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=21087&&pos y >0
value = 21078

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=21078&&animtime=0
value = 21072

[State 0, ChangeState]
type = ChangeState
trigger1 =anim=21072
value =21021

[State 0,DIES]
type = ChangeState
triggerall=time>5
trigger1 =anim=21087&&var(31)<=0
value =21028

[State 0,DIES]
type = ChangeState
trigger1 =anim=21078&&var(31)<=0
value =21022

;---------------------------------------------------------------------------
[Statedef 21030,MARSPPLFALLING2]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0;
anim = 21087;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 6
velset = 0,1.5

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = time=0
;value = 5000,5
;volumescale = 256
;channel = -1


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AT
time = -1

[State 0, NotHitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP
time = -1

[State 0, HitOverride]
type = HitOverride
trigger1 = anim=21087
attr = SCA,NA,SA,HA,NP,SP,HP
slot = 1
stateno = 21030
time = -1
forceair = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = anim=21078
attr = SCA,NA,SA,HA,NP,SP,HP
slot = 1
stateno = 21021
time = -1
forceair = 0

[State 0,BUBBLES];ATTACK
type =Helper
triggerall=random%2
triggerall=((var(30)=0)||(var(30)=3)||((var(30)=1)&&(var(29)=0))||((var(30)=1)&&(var(29))&&(p2dist x<30))||((var(30)=2)&&(p2dist x<30)))
trigger1=anim=21087&&((animelem=4,1)||(animelem=8,1)||(animelem=12,1))
helpertype = normal ;player
name = "BUBBLES" 
ID = 23422;default helper projectile id
stateno = 21023
pos = 0,0
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0,BUBBLES2];ATTACK
type = Helper
triggerall=random%2
triggerall=(((var(30)=2)&&(p2dist x>=30))||((var(30)=1)&&(p2dist x>=30)&&(var(29))))
trigger1=anim=21087&&((animelem=4,1)||(animelem=8,1)||(animelem=12,1))
helpertype = normal ;player
name = "BUBBLESFAST" 
ID = 23422;default helper projectile id
stateno = 21025
pos = 0,0
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State 0, PosSet]
type = PosSet
trigger1 = anim=21078
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = anim=21078
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=21087&&pos y >0
value = 21078

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=21078&&animtime=0
value = 21072

[State 0, ChangeState]
type = ChangeState
trigger1 =anim=21072
value =21021

[State 0,DIES]
type = ChangeState
triggerall=time>5
trigger1 =anim=21087&&var(31)<=0
value =21028

[State 0,DIES]
type = ChangeState
trigger1 =anim=21078&&var(31)<=0
value =21022
;---------------------------------------------------------------------------


;MARSPPLPOW 1
[Statedef 21031]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 0
anim = 21089
sprpriority = 5;velset = 0,2;-.1jkjkl
poweradd=-(ifelse((root,var(59)),1000,root,fvar(17)))


[State 0, beep]
type = PlaySnd;triggerall=roundstate=2||roundstate=1
trigger1 = anim=21090&&animelem=9,1
value = 5000,27
volumescale = 256
channel = -1

[State 0, CHOSING]
type = VarSet
trigger1 = time=0
v = 1    ;fv = 10
value = random%2

[State 0, CHOSING]
type = VarSet
trigger1 = time=0
v = 2    ;fv = 10
value = 0

[State 0, RemapPal]
type = RemapPal
trigger1 =1
source = 0,87
dest = 0,87


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 5000,5
volumescale = 256
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =anim=21083&&animelem=10,1
value = 5000,8
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=21093&&animelem=1,1
value = 5000,10
volumescale = 128
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 5001,45
volumescale = 256
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PosSet]
type = PosSet
trigger1 = time=0
y = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, Turn]
type = Turn
trigger1 = anim=21091&&animtime=0

[State 0, TURN]
type = ChangeAnim
triggerall=anim=21092
trigger1 =pos x-root,pos x>0&&facing=1
trigger2 =pos x-root,pos x<0&&facing=-1
value = 21091


[State 0, WALK]
type = ChangeAnim
triggerall=((anim=21089)||(anim=21091))&&animtime=0
trigger1 =floor(abs(pos x-root,pos x))>0
value = 21092

[State 0, CALLMINIUFO]
type = ChangeAnim
triggerall=(anim=21092)||((anim=21089)&&(animtime=0))||((anim=21091)&&(animtime=0))
trigger1 =floor(abs(pos x-root,pos x))=0
value = 21090

[State 0, SALUTE]
type = ChangeAnim
trigger1=anim=21090&&animtime=0
value = 21083

[State 0, ABDUCTED]
type = ChangeAnim
trigger1=anim=21083&&animtime=0&&var(2)
value = 21093

[State 0, NORMALMINIUFO]
type = ChangeAnim
trigger1=anim=21093&&animtime=0
value = 21094

[State 0, NORMALMINIUFO]
type = ChangeAnim
trigger1=anim=21094&&animtime=0
value = 21053

[State 0, FAKEMARSPPL]
type = Explod
trigger1 =anim=21093&&animelem=1,1&&numexplod(21053)=0
anim = 21095
ID = 21053
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
ontop = 0
removeongethit = 0
ownpal=1

[State 0, FAKEMARSPPL]
type = Explod
trigger1=anim=21093&&animtime=0
anim = 20150
ID = 21052
pos = -2,-67
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
ontop = 0
removeongethit = 0
ownpal=1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = anim=21093&&animelem=18,1
id = 21053

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = anim=21094&&animelem=2,1
id = 21052


[State 0, MOVE]
type = VelSet
trigger1 = anim=21092
x = 1.5

[State 0, STOP]
type = VelSet
trigger1 = anim=21090
trigger2 = anim=21091
trigger3 = anim=21090
x = 0

[State 0, PosSet]
type = posadd
trigger1=anim=21094&&animelem=1,1
x = -2
y = -63

[State 0, Trans]
type = Trans
trigger1=anim=21094&&(animelem=1)
trans = ADDALPHA ;none, add, addalpha, add1, sub
alpha = 0,256

[State 0, VelAdd]
type = Velset
trigger1 = anim=21053&&var(1)>0
x = 1.5*facing
y = -3



;================================================================================

[State 0, VarSet];PASADOR DE AMMO
type = VarSet
trigger1 = time=0
v = 33    ;fv = 10
value = 999;root,var(10)

[State 0, VarSet];PASADOR DE GRANADAS
type = VarSet
trigger1 = time=0
v = 8    ;fv = 10
value = 999;root,var(10)
 

[State 0, VarSet];CONTROLA Q DAR
type = VarSet
trigger1 = time=0&&random%2
v = 53    ;fv = 10
value = random%2
;ignorehitpause = 
;persistent = 


[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = time
text ="var(53)=%d,var 8 %d, var 10 %d,var 18 %d";"fvar(10) = %f  pos x = %f var11 %d"
params = var(53),var(8),var(10),var(18);fvar(10),pos x,var(11);ignorehitpause = 
;persistent = 

[State 0, Helper];MINIUFO
type = Helper
trigger1 = anim=21090&&numhelper(18100)=0
helpertype = normal ;player
name = "MINIUFOEMPTY"
ID = 18100
stateno = 21032
pos = 320,-387
postype = P1    ;p2,front,back,left,right
facing = 1
keyctrl = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0


;[State 0, Helper];NORMAL WEAPONS
;type = Helper
;triggerall=(root,palno!=2)&&(var(53)=0);&&(root,palno!=11)
;trigger1 = anim=21093&&animelem=1,1
;trigger2 = anim=21096&&animelem=1,1
;helpertype = normal ;player
;name = "WEAPONS"
;ID = 18000
;stateno = 22000
;pos = 0,0
;postype = P1    ;p2,front,back,left,right
;facing = 1
;keyctrl = 1
;ownpal = 1
;supermovetime = 0
;pausemovetime = 0
;
;
;[State 0, Helper];CLONE WEAPONS
;type = null;Helper
;triggerall=(var(53)=0)&&(root,palno=11)
;trigger1 = anim=21093&&animelem=1,1
;trigger2 = anim=21096&&animelem=1,1
;helpertype = normal ;player
;name = "WEAPONS"
;ID = 18000
;stateno = 22005
;pos = 0,0
;postype = P1    ;p2,front,back,left,right
;facing = 1
;keyctrl = 1
;ownpal = 1
;supermovetime = 0
;pausemovetime = 0
;
;[State 0, Helper];GIMLETWEAPONS
;type = Helper
;triggerall=root,palno=2&&var(53)=0
;trigger1 = anim=21093&&animelem=1,1
;trigger2 = anim=21096&&animelem=1,1
;helpertype = normal ;player
;name = "WEAPONS"
;ID = 18000
;stateno = 22002
;pos = 0,0
;postype = P1    ;p2,front,back,left,right
;facing = 1
;keyctrl = 1
;ownpal = 1
;supermovetime = 0
;pausemovetime = 0
;
;[State 0, Helper]
;type = Helper
;triggerall=var(53)=1&&root,palno!=6&&root,palno!=7&&root,palno!=3
;trigger1 = anim=21093&&animelem=1,1
;trigger2 = anim=21096&&animelem=1,1
;helpertype = normal ;player
;name = "GRENADES"
;ID = 18001
;stateno = 22003
;pos = 0,0
;postype = P1    ;p2,front,back,left,right
;facing = 1
;keyctrl = 1
;ownpal = 1
;supermovetime = 0
;pausemovetime = 0
;
;[State 0, Helper]
;type = Helper
;triggerall=var(53)=1&&((root,palno=6)||(root,palno=7)||(root,palno=3))
;trigger1 = anim=21093&&animelem=1,1
;trigger2 = anim=21096&&animelem=1,1
;helpertype = normal ;player
;name = "GRENADES"
;ID = 18001
;stateno = 22004
;pos = 0,0
;postype = P1    ;p2,front,back,left,right
;facing = 1
;keyctrl = 1
;ownpal = 1
;supermovetime = 0
;pausemovetime = 0


;WEAPONS=================================================

[State 0, VarSet];VE SI TENEMOS MISMO TIPO DE ARMA
type = VarSet
triggerall=root,var(10)!=109
trigger1 =(var(33)=parent,var(10))&&var(10)&&var(53)=0
v = 19
value = 1

[State 0, VarSet];VE SI DISTINTO MISMO TIPO DE ARMA
type = VarSet
triggerall=root,var(10)!=109
trigger1 =(var(33)!=parent,var(10))&&var(10)&&var(53)=0
v = 19
value = 0


[State 0, VarSet];VE SI TENEMOS MISMO TIPO DE ARMA LVARMOR
type = VarSet
triggerall=root,var(10)=109
trigger1 =(var(33)=parent,fvar(10))&&var(10)&&var(53)=0
v = 19
value = 1

[State 0, VarSet];VE SI DISTINTO MISMO TIPO DE ARMA LVARMOR
type = VarSet
triggerall=root,var(10)=109
trigger1 =(var(33)!=parent,fvar(10))&&var(10)&&var(53)=0
v = 19
value = 0


[State 0, VarSet];PASA TIPO DE ARMA
type = parentVarSet;triggerall=;anim=21005&&numhelper(18000)=0&&root,var(16)!=var(18)&&time>1;*tickspersecond
triggerall=root,var(10)!=109
trigger1 = var(10)&&var(53)=0;time
v = ifelse(root,var(10)>=100,25,10)    ;fv = 
value = var(33)


[State 0, VarSet];PASA TIPO DE ARMA LVARMOR
type = parentVarSet;triggerall=;anim=21005&&numhelper(18000)=0&&root,var(16)!=var(18)&&time>1;*tickspersecond
triggerall=root,var(10)=109
trigger1 = var(10)&&var(53)=0;time
fv = 10
value = var(33)


[State 0, VarSet];var 18 es la q contiene la municion
type = VarSet;aca se calcula cuanta municion dar
trigger1=var(5)=0&&var(18)=0&&var(33)!=18&&var(33)!=19&&var(33)!=20;trigger1 =1
v = 18   ;fv = 10
value =(ifelse((var(33)=1)||(var(33)=10)||(var(33)=11)||(var(33)=14)||(var(33)=15),200,0)+ifelse((var(33)=9),10,0)+ifelse((var(33)=4)||(var(33)=2)||(var(33)=8)||(var(33)=16)||(var(33)=17)||(var(33)=7),ifelse((root,palno=5),1,30),0)+ifelse((var(33)=5)||(var(33)=3)||(var(33)=12),20,0)+ifelse((var(33)=6),40,0)+ifelse((var(33)=13),15,0))

[State 0, VarSet];var 18 es la q contiene la municion
type = VarSet;aca se calcula cuanta municion dar
trigger1=var(5)=1&&var(18)=0&&var(33)!=18;trigger1 = 1
v = 18   ;fv = 10
value =(ifelse((var(33)=1)||(var(33)=10)||(var(33)=11)||(var(33)=14)||(var(33)=15),200,0)+ifelse((var(33)=9),10,0)+ifelse(((var(33)=4)||(var(33)=2)||(var(33)=8)||(var(33)=16)||(var(33)=17)||(var(33)=7)),ifelse((root,palno=5),1,30),0)+ifelse((var(33)=5)||(var(33)=3)||(var(33)=12),20,0)+ifelse((var(33)=6),40,0)+ifelse((var(33)=13),15,0))*ifelse((root,var(10)=var(33))&&(root,var(16)>0),0.75,1)

[State 0, VarSet];var 18 es la q contiene la municion
type = VarSet;aca se calcula cuanta municion dar
trigger1=var(5)=0&&var(18)=0&&((var(33)=18)||(var(33)=19)||(var(33)=20)||(var(33)=51));;trigger1 =1
v = 18   ;fv = 10
value =ifelse(var(33)=18,30,0)+ifelse(var(33)=19,20,0)+ifelse(var(33)=20,200,0)+ifelse(var(33)=51,40,0)

[State 0, VarSet];var 18 es la q contiene la municion
type = VarSet;aca se calcula cuanta municion dar
trigger1=var(5)=1&&var(18)=0&&((var(33)=18)||(var(33)=19)||(var(33)=20)||(var(33)=51));trigger1 = 1
v = 18   ;fv = 10
value = ifelse(var(33)=18,30,0)+ifelse(var(33)=19,20,0)+ifelse(var(33)=51,40,0)+ifelse(var(33)=20,200,0)

[State 0, VarSet];PASA MUNICION DISTINTA
type = parentVarSet
triggerall=root,var(10)!=109
trigger1=var(10)&&(var(18)!=0)&&var(53)=0&&var(19)=0
v = 16    ;fv = 
value = var(18)

[State 0, VarSet];PASA MUNICION IGUAL
type = parentVaradd
triggerall=root,var(10)!=109
trigger1=var(10)&&(var(18)!=0)&&var(53)=0&&var(19)=1
v = 16    ;fv = 
value = var(18)*(.75)

[State 0, VarSet];PASA MUNICION DISTINTA LVARMOR
type = parentVarSet
triggerall=root,var(10)=109
trigger1=var(10)&&(var(18)!=0)&&var(53)=0&&var(19)=0
fv = 24    ;fv = 
value = var(18)

[State 0, VarSet];PASA MUNICION IGUAL LVARMOR
type = parentVaradd
triggerall=root,var(10)=109
trigger1=var(10)&&(var(18)!=0)&&var(53)=0&&var(19)=1
fv = 24    ;fv = 
value = var(18)*(.75)



;GRENADES=================================================

[State 0, VarSet];VE SI TENEMOS MISMO TIPO DE GRANADA
type = VarSet
trigger1 =(var(8)=parent,var(11))&&var(10)&&var(53)=1&&var(8)!=4
v = 19
value = 1

[State 0, VarSet];VE SI DISTINTO MISMO TIPO DE GRANADA
type = VarSet
trigger1 =(var(8)!=parent,var(11))&&var(10)&&var(53)=1&&var(8)!=4
v = 19
value = 0

[State 0, VarSet];PASA TIPO DE GRANADA
type = parentVarSet
trigger1 = var(10)&&var(53)=1&&var(8)!=4
v = 11;ifelse((root,var(10)>=100)&&var(29,29,11)
value = var(8)

[State 0, VarSet];PASA LA MUNICION DE GRANADAS DIFERENTE TIPO
type = parentVarSet
trigger1 = var(10)&&var(53)=1&&var(19)=0&&var(8)!=4
v = 17    ;fv = 10
value = 10

[State 0, VarSet];PASA LA MUNICION DE GRANADAS MISMO TIPO
type = parentVaradd
trigger1 = var(10)&&var(53)=1&&var(19)=1&&var(8)!=4
trigger2 = var(10)&&var(53)=1&&var(8)=4;&&((root,var(10)<100)||(root,var(10)=102))
v = 17
value = 10

[State 0, VarSet];PASA LA MUNICION DE CAÃ‘ON
type = parentVaradd
trigger1 = var(10)&&var(53)=1&&var(8)=4;&&((root,var(10)>=100)&&(root,var(10)!=102))
v = 24
value = 10

;LIMPIA LA VAR 10 PARA EVITAR REPETICIONES
[State 0, VarSet]
type = VarSet
trigger1 = var(10)=1
v = 10
value = 0


[State 0, DestroySelf]
type = DestroySelf
triggerall=var(1)
trigger1 = var(53)=0
trigger1 = animtime=0&&anim=21053&&numhelper(18000)=0&&time>120;&&var(33)!=999;animtime=0
trigger2 = var(53)=1
trigger2 = animtime=0&&anim=21053&&numhelper(18001)=0&&time>120;&&var(8)!=999;animtime=0

[State -2, SummonPowATK]
type = Helper
TRIGGERALL=VAR(1)=0
trigger1 = var(53)=0
trigger1 = anim=21053&&numhelper(18000)=0&&time>120;&&var(33)!=999;animtime=0
trigger2 = var(53)=1
trigger2 = anim=21053&&numhelper(18001)=0&&time>120;&&var(8)!=999;animtime=0
helpertype = normal ;player
name = "MARSPPLAT"
ID = 21133
stateno =21033
pos = 0,0;-200
postype = p1    ;p2,front,back,left,right
facing = ifelse(facing=1,1,-1)
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, DestroySelf]
type = DestroySelf
TRIGGERALL=VAR(1)=0&&numhelper(21133)
trigger1 = var(53)=0
trigger1 = anim=21053&&numhelper(18000)=0&&time>120;&&var(33)!=999;animtime=0
trigger2 = var(53)=1
trigger2 = anim=21053&&numhelper(18001)=0&&time>120;&&var(8)!=999;animtime=0


;---------------------------------------------------------------------------
;MINI-UFOFAKE
[Statedef 21032]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 21097
sprpriority = 5

[State 0, Turn]
type = Turn
trigger1 = facing!=parent,facing

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 =floor(pos x=parent,pos x)&&pos y=-67
trigger2 =time>300
v =  2
value = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = pos y<-67
y = 1

[State 0, PosAdd]
type = posset
trigger1 = floor(pos y)=-67
y = -67

[State 0, PosAdd]
type = PosAdd
trigger1 = (pos x<parent,pos x)&&facing=1
x = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = (pos x>parent,pos x)&&facing=1
x = -1


[State 0, PosAdd]
type = PosAdd
trigger1 = (pos x<parent,pos x)&&facing=-1
x = -1

[State 0, PosAdd]
type = PosAdd
trigger1 = (pos x>parent,pos x)&&facing=-1
x = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,var(2)=1&&parent,anim=21093;&&parent,animelem=18,1

;---------------------------------------------------------------------------
;MINI-UFO HELPING
[Statedef 21033]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 21050
sprpriority = 5

[State 0, Yihaa]
type = PlaySnd;triggerall=roundstate=2||roundstate=1
trigger1 = time=0
value = 5000,11+random%3
volumescale = 256
channel = -1
freqmul = 1.0
loop = 0
pan = 0


[State 0, VarSet];VIDAS
type = VarSet
trigger1 =1 
v = 31
value =125+(var(17)*75)

[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 21    ;fv = 10
value = animelemno(0)

[State 0, VarSet]
type = VarSet
trigger1 = TIME=0
v = 17    ;fv = 10
value = 0;random%3

[State 0, VarSet];bulletno
type = VarSet
trigger1 =1
v = 13    ;fv = 10
value = 23000+random%1000

[State 0, VarSet];ESTRATEGA O PERSISTENTE
type = VarSet
trigger1 =time=0 
v = 27
value =random%2


[State 0, VarSet];SELECTOR DE IA de movimiento
type = VarSet
trigger1 =time=0
v = 32
value =random%4

[State 0, VarSet];SELECTOR DE DE IA de ataque
type = VarSet
trigger1 =time=0
v = 33
value =random%4


[State 0, RemapPal]
type = RemapPal
trigger1 =var(17)=0
source = 0,72
dest = 0,72

[State 0, RemapPal]
type = RemapPal
trigger1 =var(17)=1
source = 0,72
dest = 72,0


[State 0, RemapPal]
type = RemapPal
trigger1 =var(17)=2
source = 0,72
dest = 72,1

[State 0, ChangeState]
type = ChangeState
trigger1 = time>=2
value =21015

;---------------------------------------------------------------------------
[Statedef 21034,REBEL SOLDIER]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
;velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                       ;Set ctrl (Def: no change)
anim = 22000;poweradd=-(ifelse((root,var(59)),1000,root,fvar(16)))
sprpriority = 0                  ;Set p1's sprite layering priority to 2 (in front)

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(58) = %d  var(59) = %d distancia %d"
params = var(58),var(59),floor(abs(pos x-fvar(10)))
;ignorehitpause = 
;persistent = 



;[State -2, REBELPOW]
;type = Helper
;trigger1 =time=0
;helpertype = player
;name = "DUMMYREBEL"
;ID = 121100
;stateno = 21037
;pos = 0,0
;postype = p1    ;p2,front,back,left,right
;facing = 1
;keyctrl = 0
;ownpal = 1
;supermovetime = 0
;pausemovetime = 0

;[State 0, Yihaa]
;type = PlaySnd;triggerall=roundstate=2||roundstate=1
;trigger1 = time=0
;value = S5010,6+random%3
;volumescale = 256
;channel = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;
;[State 0, PosSet]
;type = PosSet
;trigger1 = time=0
;y = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AT
time = -1

[State 0, NotHitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP
time = -1

[State 0, NORMAL ATTACKSTAND]
type = HitOverride
trigger1 = vel y=0
attr = SCA,NA,SA,HA,NP,SP,HP
slot = 1
stateno = 21035
time = -1
forceair = 0

[State 0, NORMAL ATTACKAIR]
type = HitOverride
trigger1 = vel y!=0
attr = SCA,NA,SA,HA,NP,SP,HP
slot = 1
stateno = 21036
time = -1
forceair = 0

;[State 0, TurnOLD]
;type = Turn
;triggerall=anim!=[22009,22011]
;trigger1 = pos x-enemy,pos x>0&&facing=1
;trigger2 = pos x-enemy,pos x<0&&facing=-1

[State 0, Turn]
type = Turn
trigger1 = ((anim=22021)||(anim=22022)||(anim=22023))&&animtime=0
;ignorehitpause = 
;persistent = 


;====VARS====
[State 0, POS ENEMY]
type = VarSet
trigger1 = 1
Fv = 10
value = enemy,pos x

[State 0, IA]
type = VarSet
trigger1 = var(58)=1&&((anim=22015)||(anim=22017))&&animtime=0
trigger2 = var(58)=3&&((anim=22015)||(anim=22017))&&animtime=0
trigger3 = (random%30=29)&&(var(59)=0)&&((anim=22001)||(anim=22008))&&animtime=0
v = 59
value =random%5

;[State 0, IA]
;type = VarSet
;trigger1 = time=0
;v = 59
;value =random%6

[State 0, IA]
type = VarSet
trigger1 = (random%30=29)&&((anim=22015)||(anim=22017))&&animtime=0
v = 59
value =0

;REFERENCE=
;0-KNIFE FANATIC
;1-GRENADIER-CIRCULAR
;2-GRENADIER-NORMAL BOMB
;3-ROLLINGBALL
;4-FIREWORK
;[State 0, IA-attackmode];FOR THROWS
;type = VarSet
;trigger1 = time=0
;v = 58
;value =2; ifelse(random%2,2,0);random%4
;;0-ALWAYS
;;1-ALWAYS RANDOM
;;2-IDLE
;;3-IDLE RANDOM
;[State 0, RANDOMSEED]
;type = VarSet
;trigger1 = time=0
;v = 57    ;fv = 10
;value = 2+random%48
;
;[State 0, COLOR]
;type = VarSet
;trigger1 = time=0
;v = 56    ;fv = 10
;value =random%4
;;VAR(56)=0-GREEN/BLUE
;;VAR(56)=1-WRATH
;;VAR(56)=2-ELITE
;;VAR(56)=3-BLAZE
;====MOVEMENT====
[State 0, ADVANCE]
type = VelSet
trigger1 =anim=22002
trigger2 =((anim=22009)||(anim=22010))
x = 1.5-(.5)*(var(30)=1)+(.5)*(var(30)=2)

[State 0, JUMP]
type = VelAdd
triggerall=anim=22009
trigger1 = vel y>-1
y = -.1

[State 0, FALL]
type = VelAdd
trigger1 = anim=22010&&vel y<2
y = .2

[State 0, STOPX]
type = VelSet
trigger1 =anim=22000
trigger2 =anim=22001
trigger3 =anim=[22004,22007]
trigger4 =anim=22008
x = 0

[State 0, STOPY]
type = VelSet
trigger1 = pos y>0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>0
y = 0

;====ANIMS====

[State 0, KNIFESTAND]
type = ChangeAnim
triggerall=((anim=22000)||(anim=22002))||((anim=22011)&&animtime=0)||((anim=22015)&&animtime=0)||((anim=22017)&&animtime=0)||((anim=22021)&&animtime=0)||((anim=22022)&&animtime=0)
trigger1 =floor(abs(pos x-fvar(10)))<=30
value = ifelse(random%2,22001,22008)

[State 0, KNIFEJUMPSTART]
type = ChangeAnim
triggerall=!win
triggerall=var(59)=0
trigger1=((anim=22000)||(anim=22002)||(anim=22015)&&ANIMTIME=0||(anim=22017)&&ANIMTIME=0)||((anim=22021)&&animtime=0)||((anim=22022)&&animtime=0)
trigger1 =floor(abs(pos x-fvar(10)))=[30,120]
trigger2=((anim=22015)||(anim=22017))&&ANIMTIME=0
value = 22009

[State 0, KNIFEJUMPFALL]
type = ChangeAnim
trigger1 = anim=22009&&animtime=0
value = 22010

[State 0, KNIFEJUMPFALL]
type = ChangeAnim
trigger1 = pos y>=0&&anim=22010
value = 22011

[State 0, IDLE]
type = ChangeAnim
triggerall=((var(58)=2)||(var(58)=3))&&(var(59)!=5);&&(var(59)!=0)
triggerall=((anim=22002)||((anim=22015)&&animtime=0)||((anim=22021)&&animtime=0)||((anim=22022)&&animtime=0))&&var(59)!=0
trigger1 =floor(abs(pos x-fvar(10)))=[30,160]
value = 22000;ifelse(random%2,22014,22000)


[State 0, THROWGRENADEREBEL]
type = ChangeAnim
triggerall=var(59)=1
trigger1=((var(58)=0)||(var(58)=1))
trigger1=((anim=22000)||(anim=22002)||((anim=22015)&&animtime=0)||((anim=22000)&&animtime=0))
trigger1 =floor(abs(pos x-fvar(10)))=[30,160]
trigger2=((var(58)=2)||(var(58)=3))&&(random%(VAR(57))=(VAR(57)-1))
trigger2=((anim=22000)||(anim=22002)||((anim=22015)&&animtime=0)||((anim=22000)&&animtime=0))
trigger2 =floor(abs(pos x-fvar(10)))=[30,160]
value = 22014;ifelse(random%2,22014,22000)

[State 0, THROWGRENADE]
type = ChangeAnim
triggerall=var(59)=2
trigger1=((var(58)=0)||(var(58)=1))
trigger1=((anim=22000)||(anim=22002)||((anim=22015)&&animtime=0)||((anim=22000)&&animtime=0))
trigger1 =floor(abs(pos x-fvar(10)))=[30,160]
trigger2=((var(58)=2)||(var(58)=3))&&(random%(VAR(57))=(VAR(57)-1))
trigger2=((anim=22000)||(anim=22002)||((anim=22015)&&animtime=0)||((anim=22000)&&animtime=0))
trigger2 =floor(abs(pos x-fvar(10)))=[30,160]
value = 22016;ifelse(random%2,22016,22000)

[State 0, THROWROLLINGBALL]
type = ChangeAnim
triggerall=var(59)=3
trigger1=((var(58)=0)||(var(58)=1))
trigger1=((anim=22000)||(anim=22002)||((anim=22017)&&animtime=0)||((anim=22000)&&animtime=0))
trigger1 =floor(abs(pos x-fvar(10)))=[30,160]
trigger2=((var(58)=2)||(var(58)=3))&&(random%(VAR(57))=(VAR(57)-1))
trigger2=((anim=22000)||(anim=22002)||((anim=22015)&&animtime=0)||((anim=22000)&&animtime=0))
trigger2 =floor(abs(pos x-fvar(10)))=[30,160]
value = 22017;ifelse(random%2,22017,22000)

[State 0, THROWFIREWORKALWAYS]
type = ChangeAnim
triggerall=var(59)=4
trigger1=((var(58)=0)||(var(58)=1))
trigger1=((anim=22000)||(anim=22002)||((anim=22000)&&animtime=0)||((anim=22015)&&animtime=0))
trigger1 =floor(abs(pos x-fvar(10)))=[30,160]
trigger2=((var(58)=2)||(var(58)=3))&&(random%(VAR(57))=(VAR(57)-1))
trigger2=((anim=22000)||(anim=22002)||((anim=22015)&&animtime=0)||((anim=22000)&&animtime=0))
trigger2 =floor(abs(pos x-fvar(10)))=[30,160]
value = 22018;ifelse(random%2,22018,22000)

[State 0, THROWEND]
type = ChangeAnim
trigger1 = anim=22014&&animtime=0
trigger2 = anim=22016&&animtime=0
trigger3 = anim=22018&&animtime=0
value = 22015

[State 0, TurnSTAND]
type = ChangeAnim
triggerall=((anim!=[22009,22011])||((anim=22011)&&(animtime=0)))&&(anim!=22021)&&(anim!=22022)&&(var(59)!=5)
trigger1 = pos x-enemy,pos x>0&&facing=1
trigger2 = pos x-enemy,pos x<0&&facing=-1
value=ifelse(random%2,22021,22022)

;=====MORTAR=======
[State 0, MORTARCROUCHING]
type = ChangeAnim
triggerall=((var(58)=2)||(var(58)=3))&&(var(59)=5);&&(var(59)!=0)
triggerall=((anim=22002)||((anim=22015)&&animtime=0)||((anim=22021)&&animtime=0)||((anim=22022)&&animtime=0))&&var(59)!=0
trigger1 =floor(abs(pos x-fvar(10)))<=160
value = 22019;ifelse(random%2,22014,22000)

[State 0, MORTAR IDLE]
type = ChangeAnim
trigger1 = anim=22019&&animtime=0
trigger2 = anim=22023&&animtime=0
trigger3 = anim=22024&&animtime=0
value = 22020


[State 0, MORTAR SHOOT]
type = ChangeAnim
triggerall=var(59)=5
trigger1=((var(58)=2)||(var(58)=3))&&(random%(VAR(57))=(VAR(57)-1))
trigger1=((anim=22020)||(anim=22002)||((anim=22020)&&animtime=0)||((anim=22000)&&animtime=0))
trigger1 =floor(abs(pos x-fvar(10)))<=(250+(50)*(var(56)=1))
value = 22024;ifelse(random%2,22016,22000)


[State 0, TURNMORTAR]
type = ChangeAnim
triggerall=(anim!=[22009,22011])&&(anim!=22023)&&(var(59)=5)
trigger1 = pos x-enemy,pos x>0&&facing=1
trigger2 = pos x-enemy,pos x<0&&facing=-1
value=22023

[State 0, MORTAR WIN]
type = ChangeAnim
triggerall=win
trigger1 = (anim=22023)||(anim=22024)||(anim=22020)||(anim=22019)
value = 22025


;[State 0, IDLE]
;type = ChangeAnim
;trigger1 =anim=22015&&animtime=0 
;value = 22000



[State 0, MOVECLOSE]
type = ChangeAnim
triggerall=var(59)=0
triggerall=((((anim=22021)||(anim=22022))&&ANIMTIME=0)||((anim=22011)&&(animtime=0))||(anim=22000)||((anim=22001)&&(animtime=0))||((anim=22008)&&(animtime=0)))
trigger1 =floor(abs(pos x-fvar(10)))>30
value=22002

[State 0, MOVEFAR]
type = ChangeAnim
triggerall=var(59)!=0
triggerall=((((anim=22021)||(anim=22022))&&ANIMTIME=0)||((anim=22015)&&(animtime=0))||((anim=22011)&&(animtime=0))||((anim=22000)&&animtime=0)||((anim=22001)&&(animtime=0))||((anim=22008)&&(animtime=0))||((anim=22017)&&(animtime=0)))
trigger1 =floor(abs(pos x-fvar(10)))>90
value=22002

[State 0, WIN]
type = ChangeAnim
triggerall=win
trigger1 = ((anim=22000)||(anim=22001)||(anim=22002)||(anim=22011)||(anim=22015))
trigger2 = (anim=22017)||(anim=22018)||(anim=22008)
trigger3 = anim=22025&&animtime=0
value = 22004+random%4

;====SOUNDS====
[State 0, SALUTE]
type = PlaySnd
trigger1 = anim=22007&&animelem=5,1
value = 5000,2
volumescale = 128
channel = -1

;====HIT====

[State 210, 2]
type = HitDef;sin sangre
triggerall=root,var(38)=1&&((anim=22001)||(anim=[22008,22011]))
trigger1 = !movecontact
attr = S, NA
animtype  = Medium
damage    = 30+((var(56)=1)*(15)),15+((var(56)=1)*(7))
guardflag = MA
pausetime = 0,0;12,12
sparkno = -1;s3501
sparkxy = 0,-30
hitsound   = s0,0
guardsound = s0,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0
p1sprpriority=0


[State 210, 2]
type = HitDef
triggerall=root,var(38)=0&&((anim=22001)||(anim=[22008,22011]))
trigger1 = !movecontact
attr = S, NA
animtype  = Medium
damage    = 30+((var(56)=1)*(15)),15+((var(56)=1)*(7))
guardflag = MA
pausetime = 0,0;12,12
sparkno = s3501
sparkxy = 0,-30
hitsound   = s0,0
guardsound = s0,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0
p1sprpriority=0

[State 0, MoveHitReset]
type = MoveHitReset
trigger1 = ((anim=22001)||(anim=22008)||(anim=22011))&&animtime=0
trigger2 = anim=22002
trigger3 = ((anim=22001)||(anim=22008)||(anim=22009))&&animelem=1,1

;====PALS
[State 0, REGULAR]
type = RemapPal
trigger1 =((root,palno!=6)&&(root,palno!=7))
source = 0,91
dest = 91,10+var(56)

[State 0, REBEL]
type = RemapPal
trigger1 =((root,palno=6)||(root,palno=7))
source = 0,91
dest = 91,1+var(56)


[State 0, RebelGrenade];RGRENADENEW
type = Helper
triggerall=var(59)=1&&var(56)!=3
trigger1 = anim=22015&&animelem=1,1
helpertype = normal ;player
name = "RebelGrenade"
ID = 14250
stateno = 300
pos = 13,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, GRENADE]
type = Helper
triggerall=var(59)=2&&var(56)!=3
trigger1 = anim=22015&&animelem=1,1
helpertype = normal ;player
name = "Grenade"
ID = 142250
stateno = 251
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State 0, BALLNORMAL];BALL NORMAL
type = Helper
trigger1 = anim=22017&&animelem=6,1&&var(56)!=3
helpertype = normal ;player
name = "REBELBALL"
ID = 142250
stateno = 321
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, FIREWORK];FIREWORK NORMAL
type = Helper
triggerall=var(59)=4&&var(56)!=3
trigger1 = anim=22015&&animelem=1,1
helpertype = normal ;player
name = "REBELFIREWORK"
ID = 142250
stateno = 324
pos = 10,-40
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
trigger1=anim=22024&&var(56)!=3&&((root,palno=6)||(root,palno=7))
trigger1 =(AnimElem = 13,1)
helpertype = normal ;player
name = "MORTAR"
ID = 15079
stateno = 21038
pos = 18,-20
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
trigger1=anim=22024&&var(56)!=3&&((root,palno!=6)&&(root,palno!=7))
trigger1 =(AnimElem = 13,1)
helpertype = normal ;player
name = "MORTARREGULAR"
ID = 15079
stateno = 21066
pos = 18,-20
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, GRENADE]
type = Helper
triggerall=var(59)=2&&var(56)=3
trigger1 = anim=22015&&animelem=1,1
helpertype = normal ;player
name = "BLAZEGrenade"
ID = 142250
stateno = 21042
pos = 0,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, FIREWORK];FIREWORK NORMAL
type = Helper
triggerall=var(59)=4&&var(56)=3
trigger1 = anim=22015&&animelem=1,1
helpertype = normal ;player
name = "BLAZEFIREWORK"
ID = 142250
stateno = 21043
pos = 10,-40
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, Helper]
type = Helper
trigger1=anim=22024&&var(56)=3
trigger1 =(AnimElem = 13,1)
helpertype = normal ;player
name = "BLAZEMORTAR"
ID = 15079
stateno = 21039
pos = 18,-20
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, RebelGrenade];RGRENADENEW
type = Helper
triggerall=var(59)=1&&var(56)=3
trigger1 = anim=22015&&animelem=1,1
helpertype = normal ;player
name = "RebelGrenade"
ID = 14250
stateno = 21044
pos = 13,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, BALLNORMAL];BALL NORMAL
type = Helper
trigger1 = anim=22017&&animelem=6,1&&var(56)=3
helpertype = normal ;player
name = "BLAZEREBELBALL"
ID = 142250
stateno = 21048
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

;---------------------------------------------------------------------------
[Statedef 21035,REBEL DIES1]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
;velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 1                         ;Set ctrl (Def: no change)
anim = 22003
sprpriority = 2    



[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 5000,14+random%4
volumescale = 128
channel = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0
;---------------------------------------------------------------------------
[Statedef 21036,REBEL DIESAIR1]
type    = s                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                      ;Move-type: A-attack, I-idle, H-gethit
physics = s                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = -vel x,1                     ;Set velocity (x,y) (Def: no change)
ctrl = 1                         ;Set ctrl (Def: no change)
anim = 22012
sprpriority = 2    

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 5000,14+random%4
volumescale = 128
channel = -1

[State 0, VelAdd]
type = VelAdd
trigger1 = anim=22012
x = -.2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = pos y>0
value = 22013

[State 0, PosSet]
type = PosSet
trigger1 = anim=22013
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = anim=22013
y = 0
x = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = anim=22013&&animtime=0
;---------------------------------------------------------------------------
[Statedef 21037,DUMMYPLAYERWIP]
type    = s                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= a                      ;Move-type: A-attack, I-idle, H-gethit
physics = s                     ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes               ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = parent,anim
sprpriority = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, ANIM]
type = ChangeAnim
trigger1 =anim!=parent,anim 
value =parent,anim

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = -1
pos = 0,0

[State 0, Turn]
type = Turn
trigger1 = facing!=parent,facing

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha ;none, add, addalpha, add1, sub
alpha = 0,256
;ignorehitpause = 
persistent = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno=21035
trigger2 = parent,stateno=21036


;---------------------------------------------------------------------------
;MORTAR REBEL
[Statedef 21038]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18520
sprpriority = 5
velset = 1,-4

[State 0, PlaySnd];mortar sound
type = PlaySnd;
trigger1 = time=0
value = s4000,40
channel = 5

[State 0, PalFXWiz]
type = PalFX
trigger1=time=0&&parent,var(56)=1
time = -1
add = 0,0,256
mul = 256,256,256
sinadd = 256,0,0,15
invertall = 0
color = 256

[State 0, removepal]
type = PalFX
trigger1 = movecontact
trigger2 = pos y>0 ;or stateno!=  the state number where it started.
time = 1

[State 0, Helper]
type = Helper
trigger1 = animelem=1,1
helpertype = normal ;player
name = "SmokeTrail"
ID = 515151
stateno = 305
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = time=0&&(parent,var(44)>=90)
v = 3    ;fv = 10
value = 1
ignorehitpause = 
persistent = 


;==========================================================
;ANGULO SEGUN VELOCIDAD:
;==========================================================

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x>0
value=atan(-vel y/vel x)*180/pi


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y<0
value=90

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y>0
value=270


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x<0
value=atan(-vel y/vel x)*180/pi+180

;==========================================================





[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)<2;cuantas veces sera golpeado hasta explotar
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 302
attr = SCA, NP, SP, HP
ignorehitpause = 1


[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)=2
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 302
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
triggerall=parent,var(56)!=1
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 65,32
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 251, HitDef]
type = HitDef
triggerall=parent,var(56)=1
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 95,64
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = time<20
x = .1

[State 0, CALCULATEDIST]
type = VarSet
trigger1 = time=0
v = 1
value = floor(abs(enemy,pos x-pos x))

[State 0, CLOSE]
type = VelAdd
trigger1 = var(1)<50
trigger1 = time>1
y = .4

[State 0, MEDIUM]
type = VelAdd
trigger1 = var(1)=[50,110]
trigger1 = time>1
y = .2

[State 0, FAR]
type = VelAdd
trigger1 = var(1)>110
trigger1 = time>20
y = .2


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = frontedgedist <=-50
trigger3 = (pos y<root,pos y-250)
trigger4=enemy,alive=0&&numenemy=1
trigger5=pos y>0
trigger6=time>200
value = 15080



[State 0, DestroySelf]
type = changestate
trigger1 = time>20&&parent,var(56)=1
value = 21041

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BLAZEMORTAR REBEL
[Statedef 21039]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 22026
sprpriority = 5
velset = 1,-4

[State 0, PlaySnd];mortar sound
type = PlaySnd;
trigger1 = time=0
value = s4000,40
channel = 5

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .5,.5

[State 0, Helper]
type = Helper
trigger1 = animelem=1,1
helpertype = normal ;player
name = "FIRETRAIL"
ID = 515151
stateno = 21040
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 0, VarSet]
type = VarSet
trigger1 = time=0&&(parent,var(44)>=90)
v = 3    ;fv = 10
value = 1
ignorehitpause = 
persistent = 


;==========================================================
;ANGULO SEGUN VELOCIDAD:
;==========================================================

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x>0
value=atan(-vel y/vel x)*180/pi


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y<0
value=90

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y>0
value=270


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x<0
value=atan(-vel y/vel x)*180/pi+180

;==========================================================





[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)<2;cuantas veces sera golpeado hasta explotar
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 15165
attr = SCA, NP, SP, HP
ignorehitpause = 1


[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)=2
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 15165
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
triggerall=parent,var(56)!=2&&parent,var(56)!=1
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 25,16
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 251, HitDef]
type = HitDef
triggerall=parent,var(56)=1
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 37,19
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 251, HitDef]
type = HitDef
triggerall=parent,var(56)=2
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 32,16
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = time<20
x = .1



[State 0, CALCULATEDIST]
type = VarSet
trigger1 = time=0
v = 1
value = floor(abs(enemy,pos x-pos x))

[State 0, CLOSE]
type = VelAdd
trigger1 = var(1)<50
trigger1 = time>1
y = .4

[State 0, MEDIUM]
type = VelAdd
trigger1 = var(1)=[50,110]
trigger1 = time>1
y = .2

[State 0, FAR]
type = VelAdd
trigger1 = var(1)>110
trigger1 = time>20
y = .2

;[State 0, DestroySelf]
;type = changestate
;trigger1 = movecontact
;trigger2 = frontedgedist <=-50
;trigger3 = (pos y<root,pos y-250)
;trigger4=enemy,alive=0&&numenemy=1
;trigger5=pos y>0
;trigger6=time>200
;value = 15165

[State 0, DestroySelf]
type = changestate
trigger1 = frontedgedist <=-50
trigger2 = (pos y<root,pos y-250)
trigger3=enemy,alive=0&&numenemy=1
trigger4=pos y>0
trigger5=time>200
value = 15165
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;FLAMES
[Statedef 21040]
type    = s                      
movetype= a                      
physics = s
anim = 22027
sprpriority = 4
velset = 0,0

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = time=0
;value = s4000,2
;volume = 255
;channel = 5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .5,.5

[State 251, HitDef]
type = HitDef
trigger1 = (animelem=1,1)||(animelem=2,1)||(animelem=3,1)||(animelem=4,1)
trigger2 =(animelem=5,1)||(animelem=6,1)||(animelem=7,1)||(animelem=8,1)
trigger3 =(animelem=9,1)||(animelem=10,1)||(animelem=11,1)||(animelem=12,1)
trigger4 =(animelem=13,1)||(animelem=14,1)||(animelem=15,1)||(animelem=16,1)
trigger5 =(animelem=17,1)||(animelem=18,1)||(animelem=19,1)||(animelem=20,1)
trigger6 =(animelem=21,1)||(animelem=22,1)||(animelem=23,1);||(animelem=20,1)
attr = S, SP
animtype  = Hard
damage    = 1,1;5,2
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,1
guardsound =-1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;envshake.time = 8
;envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 1105]
type = destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MORTARCHASER
[Statedef 21041]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 18520;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 5
VELSET=VEL X,VEL Y

[State 0, PalFXWiz]
type = PalFX
trigger1=time=0
time = -1
add = 0,0,256
mul = 256,256,256
sinadd = 256,0,0,15
invertall = 0
color = 256


[State 0, removepal]
type = PalFX
trigger1 = movecontact
trigger2 = pos y>0 ;or stateno!=  the state number where it started.
time = 1

[State 0, Helper]
type = Helper
trigger1 = animelem=1,1
helpertype = normal ;player
name = "SmokeTrail"
ID = 515151
stateno = 305
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


;==========================================================
;ANGULO SEGUN VELOCIDAD:
;==========================================================

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x>0
value=atan(-vel y/vel x)*180/pi


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y<0
value=90

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y>0
value=270


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x<0
value=atan(-vel y/vel x)*180/pi+180

;==========================================================





[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)<2;cuantas veces sera golpeado hasta explotar
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 15080
attr = SCA, NP, SP, HP
ignorehitpause = 1


[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)=2
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 15080
attr = SCA, NP, SP, HP
ignorehitpause = 1


;HOMING PROJECTILE
;
;[State ****: Turn]
;type = Turn
;trigger1 = (P2Dist X < 10)

[State ****: VelSet]
type = VelSet
trigger1 = (!Time)
x = 1

[State ****: VelAdd]
type = VelAdd
trigger1 = (P2Dist X < 0) && (Vel X > -4);-6)
x = -.4;.4;0.2

[State ****: VelAdd]
type = VelAdd
trigger1 = (P2Dist X > 0) && (Vel X < 4);6)
x = .4;.4;0.2

[State ****: VelAdd]
type = VelAdd
trigger1 = (EnemyNear, Pos Y -25> Pos Y) && (Vel Y < 4);6)
y = .4;0.2

[State ****: VelAdd]
type = VelAdd
trigger1 = (EnemyNear, Pos Y -25<= Pos Y) && (Vel Y > -4);6)
y = -.4;.2;0.2


;HOMING PROJECTILE END
[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 95,64
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = frontedgedist <=-50
trigger3 = (pos y<root,pos y-250)
trigger4=enemy,alive=0&&numenemy=1
trigger5=pos y>0
trigger6=time>200
value = 15080

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;FIRE BOMB
[Statedef 21042]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 1250
sprpriority = 5
velset = .15+root,vel x,-.15-(root,vel y)/5;5,0

[State 0, ParentVarSet];Le resta a la variable granadas
type = ParentVarSet
triggerall=root,var(17)>0&&!parent,ishelper
trigger1 = time=0
v =  17   ;fv = 
value = root,var(17)-1

[State 0, RemapPal];Smurf Grenade
type = RemapPal
trigger1 =1
source = 0,5
dest = 5,1


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 19    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 


[State 0, VarSet];valor inicial numero de saltitos +1
type = VarSet
trigger1 = time=0
v = 3    ;fv = 10
value = 0

[State 0, VarSet];numero de saltitos
type = VarSet
trigger1 = time=0
v = 4    ;fv = 10
value = var(3);-1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
fv = 3    ;fv = 10
value = root,vel x

[State 0, VarSet]
type = VarSet
trigger1 = time=0
fv = 4    ;fv = 10
value = root,vel y

[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 5    ;fv = 10
value = fvar(5)+1


[State 0, VarSet]
type = VarSet
trigger1 = pos y>0
fv = 5    ;fv = 
value = 0

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NA, SA, HA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 258
attr = SCA, NA, SA, HA, NP, SP, HP
ignorehitpause = 1

[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 2400, 2]
type = Veladd
trigger1 =time<15&&var(3)=var(4);var(3)=1;&&var(3)=1;animelem=6;trigger1 =animtime>35
x=.15;+fvar(3)/8;+fvar(3)
y = -.15;-fvar(4)/8;-.2;-fvar(4)/4;-((vel x)*(vel x)) +1.1*(vel x)+0.02

[State 2400, 2]
type = Veladd
trigger1 =time>15&&var(3)=var(4);var(3)=1;&&var(3)=1;animelem=6;trigger1 =animtime>35
y = .2


[State 0, VarSet]
type = VarSet
trigger1 =fvar(5)=1&&pos y>-1;&&pos y>0;animelem=1,1&&fvar(5)=0
v = 3
value = var(3)-1

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var3 %d"
params = var(3);,var(13);numexplod,var(22);var(10),vel x


[State 0, VarSet]
type = Velset
trigger1 = pos y>0&&var(3)>0&&fvar(5)=0;animelem=1,1;&&var(5)=0;,1;&&var(3)=0
x = 1;.1   ;fv = 10
y = -1;-.1

[State 2400, 2]
type = Veladd;time<18&&
trigger1 =var(3)>=0&&var(3)!=var(4)&&fvar(5)<15;&&var(3)=1;animelem=6;trigger1 =animtime>35
x=.03;.05;+fvar(3)
y = -.05;-fvar(4)/4;-((vel x)*(vel x)) +1.1*(vel x)+0.02

[State 2400, 2]
type = Veladd
trigger1 =var(3)>=0&&var(3)!=var(4)&&fvar(5)>15;&&pos y<0;&&animtime>3;&&var(3)=1;animelem=6;trigger1 =animtime>35
y = .4;.2

[State 0, DestroySelf]
type = changestate
trigger1 = pos y>0
value = 319

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BLAZEFIREWORKS
[Statedef 21043]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 1250
sprpriority = 5
velset = 15,-.15-(root,vel y)/5;5,0

[State 0, ParentVarSet];Le resta a la variable granadas
type = ParentVarSet
triggerall=root,var(17)>0&&!parent,ishelper
trigger1 = time=0
v =  17   ;fv = 
value = root,var(17)-1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 5000,24
volume = 255
channel = -1

[State 0, Helper]
type = Helper
trigger1 = animelem=1,1
trigger2 = animelem=2,1
trigger3 = animelem=1,2
trigger4 = animelem=2,2
helpertype = normal ;player
name = "FIRETRAIL"
ID = 515151
stateno = 21040
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


[State 0, VarSet];valor inicial numero de saltitos +1
type = VarSet
trigger1 = time=0
v = 3    ;fv = 10
value = 0

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA,NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NA, SA, HA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 325
attr = SCA, NA, SA, HA, NP, SP, HP
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 30,15
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,4;s4000,1
guardsound =-1;s4000,4;s4000,1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = vel y>vel x
trigger1 = anim!=1344
value = 1344


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = vel y<vel x
trigger1 = anim!=1342
trigger1 = time<10
value = 1342

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = vel y<vel x
trigger1 = anim!=1343
trigger1 = time>=10
value = 1343


[State 0, DestroySelf]
type = changestate
trigger1 = frontedgedist <=-50
value = 15080;323
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;BLAZERebelGrenade
[Statedef 21044]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 9300
sprpriority = 5
velset = .1+root,vel x,-1-(root,vel y)/5;-.1

[State 0, PalFXWiz]
type = PalFX
trigger1 =time=0 
time = -1
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 0
color = 0


[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1



[State 0, ParentVarSet];Le resta a la variable granadas
type = ParentVarSet
triggerall=root,var(17)>0
trigger1 = time=0
v =  17   ;fv = 
value = root,var(17)-1


[State 0, VarSet];numero de saltitos
type = VarSet
trigger1 = time=0
v = 3    ;fv = 10
value = 0

[State 0, VarSet]
type = VarSet
trigger1 = time=0
fv = 3    ;fv = 10
value = root,vel x

[State 0, VarSet]
type = VarSet
trigger1 = time=0
fv = 4    ;fv = 10
value = root,vel y


[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 21045
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 50,25
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,7
guardsound = s4000,7;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 2400, 2]
type = Veladd
trigger1 =time<15;&&var(3)=1;animelem=6;trigger1 =animtime>35
x=.15
y = -.2;-((vel x)*(vel x)) +1.1*(vel x)+0.02

[State 2400, 2]
type = Veladd
trigger1 =time>15;&&var(3)=1;animelem=6;trigger1 =animtime>35
y = .2

[State 0, removepal]
type = PalFX
trigger1 = movecontact
trigger2 = pos y>0&&var(3)=0 ;or stateno!=  the state number where it started.
time = 1

[State 0, FLAME];FLAME Sounds
type = PlaySnd
trigger1 =pos y>0&&var(3)=0
value = 4000,7
volumescale = 256
channel = -1

[State 0, DestroySelf]
type = changestate
trigger1 =pos y>0&&var(3)=0
value = 21061

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
value = 15156
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BLAZEFlameShoTu
[Statedef 21045]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 1268;ifelse(root,anim=11201,1272,ifelse(ROOT,anim=8600,1273,1271))
sprpriority = 5
velset = 0,-3


[State 0, FLAME];FLAME Sounds
type = PlaySnd
trigger1=time=0
value = 4000,15
volumescale = 256
channel = 0


[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 3    ;fv = 10
value = 3;ifelse(parent,anim=11201,3,ifelse(parent,anim=8600,2,1))

[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=2
trigger1 = 1
Value = 270 ;Angle must be given on degrees.
 
[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=3
trigger1 = 1
Value = 90

[State 9000, AngleDraw]
type = AngleDraw
trigger1 = 1


[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT,AP
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)<2;cuantas veces sera golpeado hasta explotar
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 260
attr = SCA, NP, SP, HP
ignorehitpause = 1


[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)=2
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 253
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = time
attr = S, HA
animtype  = Hard
damage    = 3,3
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,2
guardsound = -1;s4000,2;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 0
envshake.freq = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 2400, 2];Avanza
type = Velset
triggerall=var(3)=1&&movecontact
trigger1 =1;animelem=1;animtime<
x = .9
y =-1.2

[State 2400, 2];Avanza
type = Velset
triggerall=var(3)=1&&!movecontact
trigger1 =1;animelem=1;animtime<
x = 1.8
y =-.6


[State 2400, 2];Baja
type = Velset
triggerall=var(3)=2
trigger1 =1;animelem=1;animtime<
x = 0
y =4.8

[State 2400, 2];Sube
type = Velset
triggerall=var(3)=3
trigger1 =1;animelem=1;animtime<
x = 0
y =-4



[State 0, DestroySelf]
type = destroyself
triggerall=var(3)!=3
trigger1 = animtime=0
trigger2 = frontedgedist <=-50

[State 0, DestroySelf]
type = destroyself
triggerall=var(3)=3
trigger1=(pos y<root,pos y-250)
trigger2 = animtime=0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BLAZEFlameShoTd
[Statedef 21046]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 1269;ifelse(root,anim=11201,1272,ifelse(ROOT,anim=8600,1273,1271))
sprpriority = 5
velset = 0,-1


[State 0, FLAME];FLAME Sounds
type = PlaySnd
trigger1=time=0
value = 4000,15
volumescale = 256
channel = 0


[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 3    ;fv = 10
value = 2;ifelse(parent,anim=11201,3,ifelse(parent,anim=8600,2,1))

[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=2
trigger1 = 1
Value = 270 ;Angle must be given on degrees.
 
[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=3
trigger1 = 1
Value = 90

[State 9000, AngleDraw]
type = AngleDraw
trigger1 = 1


[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT,AP
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)<2;cuantas veces sera golpeado hasta explotar
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 260
attr = SCA, NP, SP, HP
ignorehitpause = 1


[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)=2
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 253
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = time
attr = S, HA
animtype  = Hard
damage    = 3,3
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,2
guardsound = -1;s4000,2;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 0
envshake.freq = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 2400, 2];Avanza
type = Velset
triggerall=var(3)=1&&movecontact
trigger1 =1;animelem=1;animtime<
x = .9
y =-1.2

[State 2400, 2];Avanza
type = Velset
triggerall=var(3)=1&&!movecontact
trigger1 =1;animelem=1;animtime<
x = 1.8
y =-.6


[State 2400, 2];Baja
type = Velset
triggerall=var(3)=2
trigger1 =1;animelem=1;animtime<
x = 0
y =4

[State 2400, 2];Sube
type = Velset
triggerall=var(3)=3
trigger1 =1;animelem=1;animtime<
x = 0
y =-4.8

;[State 0, ChangeState]
;type = ChangeState
;trigger1 = pos y>0
;value = 287
;ctrl = 0


[State 0, DestroySelf]
type = destroyself
trigger1 = animtime=0
trigger2 = frontedgedist <=-50

[State 0, DestroySelf]
type = destroyself
triggerall=var(3)=3
trigger1=(pos y<root,pos y-250)
trigger2 = animtime=0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BLAZEFlameShoTF
[Statedef 21047]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 1270;ifelse(root,anim=11201,1272,ifelse(ROOT,anim=8600,1273,1271))
sprpriority = 5
velset = 0,-1


[State 0, FLAME];FLAME Sounds
type = PlaySnd
trigger1=time=0
value = 4000,15
volumescale = 256
channel = 0


[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 3    ;fv = 10
value = 1;ifelse(parent,anim=11201,3,ifelse(parent,anim=8600,2,1))

[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=2
trigger1 = 1
Value = 270 ;Angle must be given on degrees.
 
[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=3
trigger1 = 1
Value = 90

[State 9000, AngleDraw]
type = AngleDraw
trigger1 = 1


[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT,AP
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)<2;cuantas veces sera golpeado hasta explotar
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 260
attr = SCA, NP, SP, HP
ignorehitpause = 1


[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)=2
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 253
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 251, HitDef]
type = HitDef
trigger1 = time
attr = S, HA
animtype  = Hard
damage    = 3,3
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,2
guardsound = -1;s4000,2;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 0
envshake.freq = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 2400, 2];Avanza
type = Velset
triggerall=var(3)=1&&movecontact
trigger1 =1;animelem=1;animtime<
x = .9
y =-1.2

[State 2400, 2];Avanza
type = Velset
triggerall=var(3)=1&&!movecontact
trigger1 =1;animelem=1;animtime<
x = 1.8
y =-.6


[State 2400, 2];Baja
type = Velset
triggerall=var(3)=2
trigger1 =1;animelem=1;animtime<
x = 0
y =4

[State 2400, 2];Sube
type = Velset
triggerall=var(3)=3
trigger1 =1;animelem=1;animtime<
x = 0
y =-4.8

;[State 0, ChangeState]
;type = ChangeState
;trigger1 = pos y>0
;value = 287
;ctrl = 0


[State 0, DestroySelf]
type = destroyself
trigger1 = animtime=0
trigger2 = frontedgedist <=-50

[State 0, DestroySelf]
type = destroyself
triggerall=var(3)=3
trigger1=(pos y<root,pos y-250)
trigger2 = animtime=0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;REBELBALLFALLING
[Statedef 21048]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 1341
sprpriority = 5
velset = 1+ROOT,VEL X,-1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, PalFXWiz]
type = PalFX
trigger1 =time=0 
time = -1
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 0
color = 0

[State 0, removepal]
type = PalFX
trigger1 = movecontact
time = 1

[State 0, ParentVarSet];Le resta a la variable granadas
type = ParentVarSet
triggerall=root,var(17)>0&&!parent,ishelper
trigger1 = time=0
v =  17   ;fv = 
value = root,var(17)-1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = .5


[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 1,1
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;envshake.time = 8
;envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = frontedgedist <=-50
trigger3 = (pos y<root,pos y-250)
value=21047;323

[State 0, ChangeState]
type = changestate
trigger1 = pos y>=0;pos y>0;animtime=0
value=21049

;---------------------------------------------------------------------------
;REBELBALLGROUND
[Statedef 21049]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 1341
sprpriority = 5
velset = 0,0
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, VelSet]
type = VelSet
triggerall=root,palno!=7
trigger1 = anim=1341
x = 1.5
y = 0


[State 0, VelSet]
type = VelSet
triggerall=root,palno=7
trigger1 = anim=1341
x = 3
y = 0


[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 1,1
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;envshake.time = 8
;envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 =time=0 
time = -1
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 0
color = 0

[State 0, removepal]
type = PalFX
trigger1 = movecontact
time = 1

[State 0, DestroySelf]
type = changestate;triggerall=root,palno!=7
trigger1 = movecontact
trigger2 = frontedgedist <=-50
trigger3 = (pos y<root,pos y-250)
value=21045;323

;[State 0, DestroySelf]
;type = changestate
;triggerall=root,palno=7
;trigger1 = movecontact
;value=323


;---------------------------------------------------------------------------
[Statedef 21050,REBEL POW]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
;velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 1                         ;Set ctrl (Def: no change)
anim = 22000
poweradd=-(ifelse((root,var(59)),1000,root,fvar(16)))
sprpriority = 0                  ;Set p1's sprite layering priority to 2 (in front)

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(58) = %d  var(59) = %d distancia %d"
params = var(58),var(59),floor(abs(pos x-fvar(10)))


[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 1    ;fv = 10
value = random%2


;[State -2, REBELPOW]
;type = Helper
;trigger1 =time=0
;helpertype = player
;name = "DUMMYREBEL"
;ID = 121100
;stateno = 21037
;pos = 0,0
;postype = p1    ;p2,front,back,left,right
;facing = 1
;keyctrl = 0
;ownpal = 1
;supermovetime = 0
;pausemovetime = 0

[State 0, Yihaa]
type = PlaySnd;triggerall=roundstate=2||roundstate=1
trigger1 = time=0
value = 5001,45
volumescale = 256
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PosSet]
type = PosSet
trigger1 = time=0
y = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AT
time = -1

[State 0, NotHitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP
time = -1

[State 0, NORMAL ATTACKAIR]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 21036
time = -1
forceair = 0

[State 0, Turn]
type = Turn
trigger1 = ((anim=22021)||(anim=22022)||(anim=22023))&&animtime=0
trigger2 = anim=22029&&animelem=1,1
;====VARS====
[State 0, POS ENEMY]
type = VarSet
trigger1 = 1
Fv = 10
value = root,pos x

[State 0, IA]
type = VarSet
trigger1 = var(58)=1&&((anim=22015)||(anim=22017))&&animtime=0
trigger2 = var(58)=3&&((anim=22015)||(anim=22017))&&animtime=0
trigger3 = (random%30=29)&&(var(59)=0)&&((anim=22001)||(anim=22008))&&animtime=0
v = 59
value =0;random%5

[State 0, IA]
type = VarSet
trigger1 = time=0
v = 59
value =0;random%6

[State 0, IA]
type = VarSet
trigger1 = (random%30=29)&&((anim=22015)||(anim=22017))&&animtime=0
v = 59
value =0

;REFERENCE=
;0-KNIFE FANATIC
;1-GRENADIER-CIRCULAR
;2-GRENADIER-NORMAL BOMB
;3-ROLLINGBALL
;4-FIREWORK
[State 0, IA-attackmode];FOR THROWS
type = VarSet
trigger1 = time=0
v = 58
value =2; ifelse(random%2,2,0);random%4
;0-ALWAYS
;1-ALWAYS RANDOM
;2-IDLE
;3-IDLE RANDOM
[State 0, RANDOMSEED]
type = VarSet
trigger1 = time=0
v = 57    ;fv = 10
value = 2+random%48

[State 0, COLOR]
type = VarSet
trigger1 = time=0
v = 56    ;fv = 10
value =random%4
;VAR(56)=0-GREEN/BLUE
;VAR(56)=1-WRATH
;VAR(56)=2-ELITE
;VAR(56)=3-BLAZE
;====MOVEMENT====
[State 0, ADVANCE]
type = VelSet
trigger1 =anim=22002
trigger2 =((anim=22009)||(anim=22010))
x = 1.5-(.5)*(var(30)=1)+(.5)*(var(30)=2)

[State 0, ADVANCE]
type = VelSet
trigger1 =anim=22029
x = 3


[State 0, JUMP]
type = VelAdd
triggerall=anim=22009
trigger1 = vel y>-1
y = -.1

[State 0, FALL]
type = VelAdd
trigger1 = anim=22010&&vel y<2
y = .2

[State 0, STOPX]
type = VelSet
trigger1 =anim=22000
trigger2 =anim=22001
trigger3 =anim=[22004,22007]
trigger4 =anim=22008
x = 0

[State 0, STOPY]
type = VelSet
trigger1 = pos y>0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y>0
y = 0

;====ANIMS====
[State 0, SALUTE]
type = ChangeAnim
triggerall=((anim=22000)||(anim=22002))||((anim=22011)&&animtime=0)||((anim=22015)&&animtime=0)||((anim=22017)&&animtime=0)
trigger1 =floor(abs(pos x-fvar(10)))<=30
value = 22028

[State 0, RUNAWAY]
type = ChangeAnim
triggerall=!var(1)
trigger1 = anim=22028&&animtime=0
value = 22029

[State 0, RUNAWAY]
type = ChangeAnim
trigger1 =anim!=22029&&root,movetype=h
value = 22029

[State 0, IDLE]
type = ChangeAnim
triggerall=((var(58)=2)||(var(58)=3))&&(var(59)!=5);&&(var(59)!=0)
triggerall=((anim=22002)||((anim=22015)&&animtime=0)||((anim=22021)&&animtime=0)||((anim=22022)&&animtime=0))&&var(59)!=0
trigger1 =floor(abs(pos x-fvar(10)))=[30,160]
value = 22000;ifelse(random%2,22014,22000)

[State 0, TurnSTAND]
type = ChangeAnim
triggerall=(anim!=[22009,22011])&&(anim!=22021)&&(anim!=22022)&&(var(59)!=5)&&(anim!=22029)&&(anim!=22028)
trigger1 = pos x-root,pos x>0&&facing=1
trigger2 = pos x-root,pos x<0&&facing=-1
value=ifelse(random%2,22021,22022)

[State 0, MOVECLOSE]
type = ChangeAnim
triggerall=var(59)=0
triggerall=((((anim=22021)||(anim=22022))&&ANIMTIME=0)||((anim=22011)&&(animtime=0))||(anim=22000)||((anim=22001)&&(animtime=0))||((anim=22008)&&(animtime=0)))
trigger1 =floor(abs(pos x-fvar(10)))>10
value=22002

[State 0, WIN]
type = ChangeAnim
triggerall=win
trigger1 = ((anim=22000)||(anim=22001)||(anim=22002)||(anim=22011)||(anim=22015))
trigger2 = (anim=22017)||(anim=22018)||(anim=22008)
trigger3 = anim=22025&&animtime=0
value = 22004+random%4

;====SOUNDS====
[State 0, SALUTE]
type = PlaySnd
trigger1 = anim=22007&&animelem=5,1
trigger2 = anim=22028&&animelem=5,1
value = 5000,2
volumescale = 128
channel = -1

[State 0, SALUTE]
type = PlaySnd
trigger1 = anim=22029&&animelem=1,1
value = 5000,25
volumescale = 128
channel = -1

;====HIT====

;====PALS
[State 0, REGULAR]
type = RemapPal
trigger1 =((root,palno!=6)&&(root,palno!=7))
source = 0,91
dest = 91,10+var(56)

[State 0, REBEL]
type = RemapPal
trigger1 =((root,palno=6)||(root,palno=7))
source = 0,91
dest = 91,1+var(56)

[State -2, REBELPOW]
type = Helper
trigger1=var(1)
trigger1=anim=22028&&animtime=0
helpertype = normal;player
name = "REBELPOW"
ID = 21100
stateno = 21052;21034
pos =0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = numhelper(18000)=0
trigger1 = anim=22029&&animtime=0
trigger2=var(1)
trigger2=anim=22028&&animtime=0
;---------------------------------------------------------------------------
[Statedef 21051,REBEL SOLDIERST]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
;velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                      ;Set ctrl (Def: no change)
anim = 22000
poweradd=-(ifelse((root,var(59)),1000,root,fvar(16)))
sprpriority = 0


[State 0, Yihaa]
type = PlaySnd;triggerall=roundstate=2||roundstate=1
trigger1 = time=0
value = S5010,6+random%3
volumescale = 128
channel = -1


[State 0, PosSet]
type = PosSet
trigger1 = time=0
y = 0

[State 0, IA]
type = VarSet
trigger1 = time=0
v = 59
value =random%6

[State 0, IA-attackmode];FOR THROWS
type = VarSet
trigger1 = time=0
v = 58
value =2; ifelse(random%2,2,0);random%4
;0-ALWAYS
;1-ALWAYS RANDOM
;2-IDLE
;3-IDLE RANDOM
[State 0, RANDOMSEED]
type = VarSet
trigger1 = time=0
v = 57    ;fv = 10
value = 2+random%48

[State 0, COLOR]
type = VarSet
TRIGGERALL=((root,palno=6)||(root,palno=7)||(root,palno=5)||(root,palno=12))
trigger1 = time=0
v = 56    ;fv = 10
value =random%4
;VAR(56)=0-GREEN/BLUE
;VAR(56)=1-WRATH
;VAR(56)=2-ELITE
;VAR(56)=3-BLAZE

[State 0, COLOR]
type = VarSet
TRIGGERALL=root,palno!=6&&root,palno!=7&&root,palno!=5&&root,palno!=12
trigger1 = time=0
v = 56    ;fv = 10
value =0

;====PALS
[State 0, REGULAR]
type = RemapPal
trigger1 =((root,palno!=6)&&(root,palno!=7))
source = 0,91
dest = 91,10+var(56)

[State 0, REBEL]
type = RemapPal
trigger1 =((root,palno=6)||(root,palno=7))
source = 0,91
dest = 91,1+var(56)

[State 0, ChangeState]
type = ChangeState
trigger1 = time>1
value =21034
ctrl = 0
;---------------------------------------------------------------------------
[Statedef 21052,REBEL SOLDIERHELP]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
;velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                      ;Set ctrl (Def: no change)
anim = 22000
sprpriority = 0

[State 0, Yihaa]
type = PlaySnd;triggerall=roundstate=2||roundstate=1
trigger1 = time=0
value = 5000,26
volumescale = 256
channel = -1

[State 0, PosSet]
type = PosSet
trigger1 = time=0
y = 0

[State 0, IA]
type = VarSet
trigger1 = time=0
v = 59
value =random%6

[State 0, IA-attackmode];FOR THROWS
type = VarSet
trigger1 = time=0
v = 58
value =2; ifelse(random%2,2,0);random%4
;0-ALWAYS
;1-ALWAYS RANDOM
;2-IDLE
;3-IDLE RANDOM
[State 0, RANDOMSEED]
type = VarSet
trigger1 = time=0
v = 57    ;fv = 10
value = 2+random%48

[State 0, COLOR]
type = VarSet
trigger1 = time=0
v = 56    ;fv = 10
value =parent,var(56)

;====PALS
[State 0, REGULAR]
type = RemapPal
trigger1 =((root,palno!=6)&&(root,palno!=7))
source = 0,91
dest = 91,10+var(56)

[State 0, REBEL]
type = RemapPal
trigger1 =((root,palno=6)||(root,palno=7))
source = 0,91
dest = 91,1+var(56)

[State 0, ChangeState]
type = ChangeState
trigger1 = time>1
value =21034
ctrl = 0
;=====================================================================
[Statedef 21053,REBEL TRUCK]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 5,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                      ;Set ctrl (Def: no change)
anim = 22030
poweradd=-(ifelse((root,var(59)),1000,root,fvar(16)))
sprpriority = -1

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(12) = %d, %d"
params = var(12),VAR(10)

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AT
time = -1

[State 0, NotHitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP
time = -1

[State 0, NORMAL ATTACKSTAND]
type = HitOverride
trigger1 = vel y=0
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 21055
time = -1
forceair = 0

[State 0, Yihaa]
type = PlaySnd;triggerall=roundstate=2||roundstate=1
trigger1 = time=0
value = 4000,67
volumescale = 256
channel = -1


[State 0, Yihaa]
type = PlaySnd;triggerall=roundstate=2||roundstate=1
trigger1 =anim=22031&&animelem=1,1
value = 4000,69
volumescale = 256
channel = -1

[State 0, VarSet]
type = VarSet
trigger1 = TIME=0
v = 10    ;fv = 10
value = ID+1



[State 0, HP]
type = VarSet
trigger1 = time=0
v = 12
value = 400

[State 0, VarSet]
type = Varadd
trigger1 = time=0
v = 21    ;fv = 10
value = -gethitvar(damage)


;===ANIMS
[State 0, STOP]
type = ChangeAnim
trigger1 = anim=22030&&VEL X =0
value = 22031

[State 0, DEPLOYSTART]
type = ChangeAnim
trigger1 = anim=22031&&animtime=0
value = 22032

[State 0, DEPLOYING]
type = ChangeAnim
trigger1 = anim=22032&&animtime=0
value = 22033

;===SPEED
[State 0, VelSet]
type = VelSet
trigger1 = anim=22030
x = 5

[State 0, VelSet]
type = VelSet
trigger1 = frontedgedist=0
trigger2 = time>=100
x = 0
y = 0
;===EXPLOD

;[State 0, FAKETRUCK]
;type = Explod
;trigger1 =anim=22031&&animtime=0&&numexplod(121053)=0
;trigger2 = anim=22032&&numexplod(121053)=0
;anim = 22034
;ID = 121053
;pos = 0,0
;postype = p1  ;p2,front,back,left,right
;facing = 1
;vfacing = 1
;bindtime = -1
;removetime = -1
;scale = 1,1
;ontop = 0
;removeongethit = 0
;ownpal=1
;sprpriority=-3

[State -2, FAKETRUCK]
type =Helper
trigger1 =anim=22031&&animtime=0&&numhelper(121000+ID)=0
trigger2 = anim=22032&&numhelper(121000+ID)=0
helpertype = normal;player
name = "FAKETRUCK"
ID = 121000+ID
stateno = 21056;21034
pos =0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

;===DEPLOYING
[State -2, DEPLOYING]
type =Helper
triggerall=roundstate=2
triggerall=numhelper(21100)<11
trigger1=random%30=29
trigger1=anim=22033&&animtime=0
helpertype = normal;player
name = "REBELPOW"
ID = 21100
stateno = 21054;21034
pos =0,-30
postype = p1    ;p2,front,back,left,right
facing = -1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
;===HITDEFS
[State 251, HitDef]
type = HitDef
trigger1 = (abs(vel x)>.5)||(abs(vel y)>.5)
attr = S, NA
animtype  = Hard
damage    = 10*(abs(vel x)+abs(vel y)),5*(abs(vel x)+abs(vel y));5,2
hitflag = MA
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,ifelse(random%2,68,36);36
guardsound =s4000,ifelse(random%2,68,36);36
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = -(root,vel x)
air.juggle = 0
air.velocity = -(root,vel x),-root,vel y;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0
p1sprpriority=-1
fall=1


[State 0, ChangeState]
type = ChangeState
trigger1 = time>1&&var(12)<=0
value = 15157
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 21054,SOLDIERDEPLOYED]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 1.5,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                      ;Set ctrl (Def: no change)
anim = 22002
sprpriority = -2

;[State 0, Yihaa]
;type = PlaySnd;triggerall=roundstate=2||roundstate=1
;trigger1 = time=0
;value = 5000,26
;volumescale = 256
;channel = -1

;[State 0, PosSet]
;type = PosSet
;trigger1 = pos y<-20
;trigger1 = numhelper(21100)>0
;trigger1 = helper(21100),stateno=21053
;trigger1 = floor(abs(pos x - helper(21100),pos x))<50
;y = -30

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AT
time = -1

[State 0, NotHitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP
time = -1

[State 0, NORMAL ATTACKSTAND]
type = HitOverride
trigger1 = 1
attr =SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 1
stateno = 21035
time = -1
forceair = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y<-20
trigger1 = ((parent,stateno=21053)||(parent,stateno=21055))
trigger1 = floor(abs(pos x - parent,pos x))<50
y = -30

[State 0, WIN]
type = ChangeAnim
triggerall=win
trigger1 = ((anim=22000)||(anim=22001)||(anim=22002)||(anim=22011)||(anim=22015))
trigger2 = (anim=22017)||(anim=22018)||(anim=22008)
trigger3 = anim=22025&&animtime=0
value = 22004+random%4


;[State 0, PosSet]
;type = PosSet
;triggerall=!win
;trigger1 = pos y<0
;trigger1 = numhelper(21100)>0
;trigger1 = helper(21100),stateno=21053
;trigger1 = floor(abs(pos x - helper(21100),pos x))>=50
;y = pos y+1

[State 0, PosSet]
type = PosSet
triggerall=!win
trigger1 = pos y<0
trigger1 = ((parent,stateno=21053)||(parent,stateno=21055))
trigger1 = floor(abs(pos x - parent,pos x))>=50
y = pos y+1

[State 0, VelSet]
type = VelSet
trigger1 = anim=[22004,22007]
x = 0


[State 0, VelSet]
type = VelSet
trigger1 = anim=22002
x = 1.5

[State 0, IA]
type = VarSet
trigger1 = time=0
v = 59
value =random%6

[State 0, IA-attackmode];FOR THROWS
type = VarSet
trigger1 = time=0
v = 58
value =2; ifelse(random%2,2,0);random%4
;0-ALWAYS
;1-ALWAYS RANDOM
;2-IDLE
;3-IDLE RANDOM
[State 0, RANDOMSEED]
type = VarSet
trigger1 = time=0
v = 57    ;fv = 10
value = 2+random%48

[State 0, COLOR]
type = VarSet
trigger1 = time=0
v = 56    ;fv = 10
value =random%4

;====PALS
[State 0, REGULAR]
type = RemapPal
trigger1 =((root,palno!=6)&&(root,palno!=7))
source = 0,91
dest = 91,10+var(56)

[State 0, REBEL]
type = RemapPal
trigger1 =((root,palno=6)||(root,palno=7))
source = 0,91
dest = 91,1+var(56)

[State 0, ChangeState]
type = ChangeState
triggerall=!win
trigger1 = time>1&&pos y>=0
value =21034
ctrl = 0
;=====================================================================
;=====================================================================
[Statedef 21055,REBEL TRUCK]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                      ;Set ctrl (Def: no change)
sprpriority = -1

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(12) = %d"
params = var(12)


[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AT
time = -1

[State 0, NotHitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP
time = -1

[State 0, NORMAL ATTACKSTAND]
type = HitOverride
trigger1 = vel y=0
attr = SCA,NA,SA,HA,NP,SP,HP
slot = 1
stateno = 21055
time = -1
forceair = 0

[State 0, Yihaa]
type = PlaySnd;triggerall=roundstate=2||roundstate=1
trigger1 =anim=22031&&animelem=1,1
value = 4000,69
volumescale = 256
channel = -1

[State 0, VarSet]
type = Varadd
trigger1 = time=0
v = 12    ;fv = 10
value = -gethitvar(damage)


;===ANIMS
[State 0, STOP]
type = ChangeAnim
trigger1 = anim=22030&&VEL X =0
value = 22031

[State 0, DEPLOYSTART]
type = ChangeAnim
trigger1 = anim=22031&&animtime=0
value = 22032

[State 0, DEPLOYING]
type = ChangeAnim
trigger1 = anim=22032&&animtime=0
value = 22033

;===SPEED
[State 0, VelSet]
type = VelSet
trigger1 = anim=22030
x = 5

[State 0, VelSet]
type = VelSet
trigger1 = frontedgedist=0
trigger2 = time>=100
x = 0
y = 0
;===EXPLOD
;[State 0, FAKETRUCK]
;type = Explod
;trigger1 =anim=22031&&animtime=0&&numexplod(121053)=0
;trigger2 = anim=22032&&numexplod(121053)=0
;anim = 22034
;ID = 121053
;pos = 0,0
;postype = p1  ;p2,front,back,left,right
;facing = 1
;vfacing = 1
;bindtime = -1
;removetime = -1
;scale = 1,1
;ontop = 0
;removeongethit = 0
;ownpal=1
;sprpriority=-3
[State -2, FAKETRUCK]
type =Helper
trigger1 =anim=22031&&animtime=0&&numhelper(121000+ID)=0
trigger2 = anim=22032&&numhelper(121000+ID)=0
helpertype = normal;player
name = "FAKETRUCK"
ID = 121000+ID
stateno = 21056;21034
pos =0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

;===DEPLOYING
[State -2, DEPLOYING]
type =Helper
triggerall=numhelper(21100)<11
triggerall=roundstate=2
trigger1=random%30=29
trigger1=anim=22033&&animtime=0
helpertype = normal;player
name = "REBELPOW"
ID = 21100
stateno = 21054;21034
pos =0,-30
postype = p1    ;p2,front,back,left,right
facing = -1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
;===HITDEFS
[State 251, HitDef]
type = HitDef
trigger1 = (abs(vel x)>.5)||(abs(vel y)>.5)
attr = S, NA
animtype  = Hard
damage    = 10*(abs(vel x)+abs(vel y)),5*(abs(vel x)+abs(vel y));5,2
hitflag = MA
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,ifelse(random%2,68,36);36
guardsound =s4000,ifelse(random%2,68,36);36
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = -(root,vel x)
air.juggle = 0
air.velocity = -(root,vel x),-root,vel y;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0
p1sprpriority=-1
fall=1


[State 0, ChangeState]
type = ChangeState
trigger1 = time>1&&var(12)<=0
value = 15157
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 21056,FAKE TRUCK]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                      ;Set ctrl (Def: no change)
sprpriority = -3
anim=22034

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,var(12)<=0

;================================================================================
;XMASTAROAIR
[Statedef 21057]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 21013
sprpriority = 5
velset = 0,2;-.1jkjkl
poweradd=-(ifelse((root,var(59)),1000,root,fvar(16)))

[State 0, VarSet]
type = VarSet
trigger1 =time=0 
v = 27
value =random%4

[State 0, PosSet]
type = PosSet
trigger1 =TIME=0 
x = root,pos x
y = -200

[State 0, Yihaa]
type = PlaySnd;triggerall=roundstate=2||roundstate=1
trigger1 = time=0
value = S5010,6+random%3
volumescale = 256
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, ChangeState]
type = ChangeState
TRIGGERALL=TIME>1
trigger1 = pos y>=0
value =21058


;================================================================================

;================================================================================
;XMASTARO
[Statedef 21058]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 1
anim = 21014
sprpriority = 5
velset = .1,.1

[State 0, VarSet];velocidad del pow
type = VarSet
trigger1 = TIME=0
v = 11    
value = 2

[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 10    ;fv = 10
value = root,pos x-pos x


[State 0, VarSet]
type = VarSet
triggerall = var(15);((fvar(10))=(pos x));&&(((fvar(10))+(pos x))>-3)
trigger1=time
v = 11    
value = 0

[State 0, VarSet]
type = VarSet
triggerall = !var(15);((fvar(10))!=(pos x));&&(((fvar(10))+(pos x))>-3)
trigger1=time
v = 11    
value = 2


[State 0, VarSet]
type = VarSet
triggerall=ABS(floor(fvar(10)-(pos x)))<20
trigger1=time
v = 15    
value = 1

[State 0, VarSet]
type = VarSet
triggerall=ABS(floor(fvar(10)-(pos x)))>20
trigger1=time
v = 15    
value = 0

;[State 0, Turn]
;type = Turn
;triggerall=animelem=1,1
;trigger1 = pos x>fvar(10)&&facing=1
;trigger2 = pos x<fvar(10)&&facing=-1
;trigger3=anim=21007&&pos x>enemy,pos x&&facing=1
;trigger4=anim=21007&&pos x<enemy,pos x&&facing=-1
;trigger5=anim=21010&&pos x>enemy,pos x&&facing=1
;trigger6=anim=21010&&pos x<enemy,pos x&&facing=-1

;[State 0, Turn]
;type = Turn
;triggerall=animelem=1,1;trigger1 = pos x>fvar(10)&&facing=1;trigger2 = pos x<fvar(10)&&facing=-1
;trigger1 = (anim=[21018,21020])&&facing=enemy,facing
;trigger2 = ((anim!=21018)&&(anim!=21019)&&(anim!=21020))&&pos x>fvar(10)&&facing=1
;trigger3 = ((anim!=21018)&&(anim!=21019)&&(anim!=21020))&&pos x<fvar(10)&&facing=-1

[State 0, Turn]
type = Turn
triggerall=animelem=1,1;trigger1 = pos x>fvar(10)&&facing=1;trigger2 = pos x<fvar(10)&&facing=-1
trigger1 = ((anim!=21018)&&(anim!=21019)&&(anim!=21020))&&pos x>fvar(10)&&facing=1
trigger2 = ((anim!=21018)&&(anim!=21019)&&(anim!=21020))&&pos x<fvar(10)&&facing=-1
trigger3 = (anim=[21018,21020])&&facing=1&&enemy,facing=-1&&pos x>enemy,pos x
trigger4 = (anim=[21018,21020])&&facing=-1&&enemy,facing=1&&pos x<enemy,pos x
trigger5 = (anim=[21018,21020])&&facing=-1&&enemy,facing=-1&&pos x<enemy,pos x
trigger6 = (anim=[21018,21020])&&facing=1&&enemy,facing=1&&pos x>enemy,pos x


[State 0, MOVE]
type = VelSet
triggerall = pos x>fvar(10)
triggerall=((fvar(10))!=(pos x))
triggerall=anim=21015
trigger1=time
x = var(11)
y = 0


[State 0, MOVE]
type = VelSet
triggerall = pos x<fvar(10)
triggerall=((fvar(10))!=(pos x))
triggerall=anim=21015
trigger1=time
x = var(11)
y = 0

[State 0, MOVE]
type = VelSet
triggerall=anim=21019
trigger1=time
x = 1
y = 0




[State 0, STOP]
type = VelSet
triggerall=anim!=21019
trigger1 = var(11)=0
trigger2=(floor((fvar(10)))=floor((pos x)))
trigger3=(ceil((fvar(10)))=ceil((pos x)))
trigger4=anim=21014||anim=21016||anim=21018||anim=21020||anim=21021
x = 0
y = 0

[State 0, STOP]
type = VelSet
triggerall=anim=21019
trigger1=ABS(floor(enemy,pos x-(pos x)))<10
x = 0
y = 0


[State 0, Mirar]
type = Changeanim
triggerall=(anim=21015)||(((anim=21018)||(anim=21020)||(anim=21019))&&animtime=0)
trigger1=var(15)
value = 21014

[State 0, WALK]
type = Changeanim
triggerall=(anim=21014)||(((anim=21018)||(anim=21020)||(anim=21019))&&animtime=0)
trigger1=!var(15)
value = 21015


[State 0, CLOSEATTACK]
type = Changeanim
triggerall=(anim=21014)||(((anim=21018)||(anim=21020)||(anim=21019))&&animtime=0)
trigger1=ABS(floor(enemy,pos x-(pos x)))<=50
value = ifelse(random%3=2,21019,21018)

[State 0, MEDIUMATTACK]
type = Changeanim
triggerall=(anim=21014)||(((anim=21018)||(anim=21020)||(anim=21019))&&animtime=0)
trigger1=(floor(abs(enemy,pos x-pos x))>50)&&(root,movetype=A)&&(floor(abs(enemy,pos x-pos x))<=120)
value = ifelse(random%3=2,21020,21019)

[State 0, FARATTACK]
type = Changeanim
triggerall=(anim=21014)||(((anim=21018)||(anim=21020)||(anim=21019))&&animtime=0)
trigger1=floor(abs(enemy,pos x-pos x))>120&&root,movetype=A
value = 21020



;[State 0, Disparar]
;type = Changeanim
;triggerall=((anim=21002)||(anim=21006)||(((anim=21012)||(anim=21007)||(anim=21010))&&animtime=0))
;trigger1=abs(enemy,pos x)>20&&root,movetype=A
;value = 21012


[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=21020&&animelem=16,1
trigger2=anim=21019&&animelem=9,1
trigger3 = anim=21018&&animelem=12,1
value = 5000,3
volumescale = 256
channel = -1

[State 210,FASTKAMEHAME]
type = HitDef
trigger1 = anim=21018
trigger2 = anim=21020
attr = S, NA
animtype  = Medium
damage    = 3,2
guardflag = MA
pausetime = 0,0;12,12
sparkno = -1;s3501
sparkxy = 0,-30
hitsound   = s4000,7
guardsound = s4000,7;s0,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0

[State 210, 2]
type = HitDef
trigger1= anim=21019
trigger1= time%2=0
attr = S, NA
animtype  = Medium
damage    = 20,10
guardflag = MA
pausetime = 0,0;12,12
sparkno = -1;s3501
sparkxy = 0,-30
hitsound   = s0,2
guardsound = s0,2;s0,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0

[State 0, EnemyChaser]
type = Helper
triggerall = anim=21020
trigger1 = animelem=17,1
trigger2 = animelem=19,1
trigger3 = animelem=21,1
trigger4 = animelem=23,1
trigger5 = animelem=25,1
helpertype = normal ;player
name = "ENERGYBALL"
ID = 23000;default helper projectile id
stateno = 21060
pos = 20,-20
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = win&&anim!=21021
value = 21021

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=21021&&animelem=10,1
value = S5000,2
volumescale = 256
channel = -1

[State 0, ChangeState]
type = ChangeState
triggerall=root,var(10)<100
trigger1 =enemy,movecontact
trigger2=enemy,movehit
trigger3=enemy,projhit=1<2
trigger4=enemy,projcontact=1<2
trigger5=root,movetype=h
value = 21059
ctrl = 0

;================================================================================

;================================================================================
;POW RUNING
[statedef 21059]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 1
anim = 21022
sprpriority = 5
velset = -2,0

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0&&anim=21005&&time>120;animtime=0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ENERGYBALL
[Statedef 21060]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 21023;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 4

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


;[State 0, Turn]
;type = Turn
;trigger1 = TIME=0&&facing=-1

[State X, Store Angle]
Type = VarSet
Trigger1 = 1
FV = 0
Value = Cond(EnemyNear,Pos X != Pos X, ATan(((EnemyNear,Pos Y + EnemyNear,Const(Size.Mid.Pos.Y)) - Pos Y) / ((EnemyNear,Pos X - Pos X) * Facing)), Cond(EnemyNear,Pos Y + EnemyNear,Const(Size.Mid.Pos.Y) < Pos Y, PI / 2.0, -PI / 2.0))

[State ****: VelSet]
type = VelSet
trigger1 = (!Time)
x = 3

[State ****: VelAdd]
type = Velset
triggerall=floor(abs(enemy,pos x-pos x))>10
trigger1 = time=1
x = 8*cos(fvar(0));.4;0.2
y = 8*sin(fvar(0));0.2

[State 0, VelSet]
type = VelSet
triggerall=(enemy,pos y>pos y)&&(floor(abs(enemy,pos x-pos x))<=10)
trigger1 = time=1
x = 0
y = 8

[State 0, VelSet]
type = VelSet
triggerall=(enemy,pos y<=pos y)&&(floor(abs(enemy,pos x-pos x))<=10)
trigger1 = time=1
x = 0
y = -8



[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x>0
value=atan(-vel y/vel x)*180/pi


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y<0
value=90

[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x=0&&vel y>0
value=270


[State 9000, AngleDraw]
type = AngleDraw
trigger1 =vel x<0
value=atan(-vel y/vel x)*180/pi+180


[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 20,10
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,7
guardsound = s4000,7;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = frontedgedist <=-50
trigger3 = (pos y<root,pos y-250)
trigger4=enemy,alive=0&&numenemy=1
trigger5=pos y>0
trigger6=time>200
value = ifelse(var(3)=1,302,ifelse(var(3)=2,304,303))

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BIGFLAMEBOMBS
[Statedef 21061]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 1284
sprpriority = 0
velset = 0,0

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA
ignorehitpause = 1

[State 0, VarAdd]
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=1284&&animtime=0
value = 1285

[State 251, HitDef]
type = HitDef
trigger1 = time
attr = S, NA
animtype  = Hard
damage    = 1,1
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =-1;s4000,2
guardsound = -1;s4000,2;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 0
envshake.freq = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 0, DestroySelf]
type = destroySelf
trigger1 = anim=1285&&animtime=0

;---------------------------------------------------------------------------
;================================================================================
;HAPPYTAROAIR
[Statedef 21062]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 21024
sprpriority = 5
velset = 0,2;-.1jkjkl
poweradd=-(ifelse((root,var(59)),1000,root,fvar(16)))

[State 0, VarSet]
type = VarSet
trigger1 =time=0 
v = 27
value =random%4

[State 0, PosSet]
type = PosSet
trigger1 =TIME=0 
x = root,pos x
y = -200

[State 0, Yihaa]
type = PlaySnd;triggerall=roundstate=2||roundstate=1
trigger1 = time=0
value = S5010,6+random%3
volumescale = 256
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1


[State 0, ChangeState]
type = ChangeState
TRIGGERALL=TIME>1
trigger1 = pos y>=0
value =21063


;================================================================================

;================================================================================
;Happyakumantaro
[Statedef 21063]
type    = S
movetype= A;Happyakumantaro
physics = N
juggle  = 3
ctrl = 1
anim = 21025
sprpriority = 5
velset = .1,.1


[State 0, VarSet];velocidad del pow
type = VarSet
trigger1 = time=0
v = 11    
value = 2

[State 0, VarSet]
type = VarSet
trigger1 = time
fv = 10    ;fv = 10
value = root,pos x-pos x


[State 0, VarSet]
type = VarSet
triggerall = var(15);((fvar(10))=(pos x));&&(((fvar(10))+(pos x))>-3)
trigger1=time
v = 11    
value = 0

[State 0, VarSet]
type = VarSet
triggerall = !var(15);((fvar(10))!=(pos x));&&(((fvar(10))+(pos x))>-3)
trigger1=time
v = 11    
value = 2


[State 0, VarSet]
type = VarSet
triggerall=ABS(floor(fvar(10)-(pos x)))<20
trigger1=time
v = 15    
value = 1

[State 0, VarSet]
type = VarSet
triggerall=ABS(floor(fvar(10)-(pos x)))>20
trigger1=time
v = 15    
value = 0

;[State 0, Turn]
;type = Turn
;triggerall=animelem=1,1
;trigger1 = pos x>fvar(10)&&facing=1
;trigger2 = pos x<fvar(10)&&facing=-1
;trigger3=anim=21007&&pos x>enemy,pos x&&facing=1
;trigger4=anim=21007&&pos x<enemy,pos x&&facing=-1
;trigger5=anim=21010&&pos x>enemy,pos x&&facing=1
;trigger6=anim=21010&&pos x<enemy,pos x&&facing=-1

[State 0, Turn]
type = Turn
triggerall=animelem=1,1;trigger1 = pos x>fvar(10)&&facing=1;trigger2 = pos x<fvar(10)&&facing=-1
trigger1 = ((anim!=21030)&&(anim!=21031)&&(anim!=21032))&&pos x>fvar(10)&&facing=1
trigger2 = ((anim!=21030)&&(anim!=21031)&&(anim!=21032))&&pos x<fvar(10)&&facing=-1
trigger3 = ((anim=21030)||(anim=21031)||(anim=21032))&&facing=1&&enemy,facing=-1&&pos x>enemy,pos x
trigger4 = ((anim=21030)||(anim=21031)||(anim=21032))&&facing=-1&&enemy,facing=1&&pos x<enemy,pos x
trigger5 = ((anim=21030)||(anim=21031)||(anim=21032))&&facing=-1&&enemy,facing=-1&&pos x<enemy,pos x
trigger6 = ((anim=21030)||(anim=21031)||(anim=21032))&&facing=1&&enemy,facing=1&&pos x>enemy,pos x



[State 0, VelSet]
type = VelSet
triggerall = pos x>fvar(10)
triggerall=((fvar(10))!=(pos x))
triggerall=anim=21026
trigger1=time
x = var(11)
y = 0
;ignorehitpause = 
;persistent = 

[State 0, VelSet]
type = VelSet
triggerall = pos x<fvar(10)
triggerall=((fvar(10))!=(pos x))
triggerall=anim=21026
trigger1=time
x = var(11)
y = 0



[State 0, VelSet]
type = VelSet
trigger1 = var(11)=0
trigger2=(floor((fvar(10)))=floor((pos x)))
trigger3=(ceil((fvar(10)))=ceil((pos x)))
trigger4=anim=21025||anim=21030||anim=21031||anim=21032||anim=21027
x = 0
y = 0


[State 0, Mirar]
type = Changeanim
triggerall=(anim=21026)||(((anim=21030)||(anim=21031)||(anim=21032))&&animtime=0)
trigger1=var(15)
value = 21025

[State 0, KICK]
type = Changeanim
triggerall=(anim=21025)||(((anim=21030)||(anim=21031)||(anim=21032))&&animtime=0)
trigger1=ABS(floor(enemy,pos x-(pos x)))<=20
value = 21030

[State 0, Caminar]
type = Changeanim
triggerall=(anim=21025)||(((anim=21030)||(anim=21031)||(anim=21032))&&animtime=0)
trigger1=!var(15)
value = 21026

[State 0, Disparar]
type = Changeanim
triggerall=(anim=21025)||(((anim=21030)||(anim=21031)||(anim=21032))&&animtime=0)
trigger1=abs(enemy,pos x-pos x)>20&&root,movetype=A
value = ifelse(random%2=1,21032,21031)



;[State 0, Disparar]
;type = Changeanim
;triggerall=((anim=21002)||(anim=21006)||(((anim=21012)||(anim=21007)||(anim=21010))&&animtime=0))
;trigger1=abs(enemy,pos x)>20&&root,movetype=A
;value = 21012


[State 0, HUI]
type = PlaySnd
trigger1 = anim=21031&&animelem=16,1
trigger2=anim=21030&&animelem=9,1
trigger3 = anim=21032&&animelem=20,1
value = 5000,3
volumescale = 256
channel = -1

[State 210, 2]
type = HitDef
triggerall = anim=21031
trigger1=animelem=17,1||animelem=18,1||animelem=19,1||animelem=20,1||animelem=21,1||animelem=22,1
attr = S, NA
animtype  = Medium
damage    = 5,3
guardflag = MA
pausetime = 0,0;12,12
sparkno = -1;s3501
sparkxy = 0,-30
hitsound   = s4000,7
guardsound = s4000,7;s0,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0

[State 210, 2]
type = HitDef
trigger1 = anim=21032
trigger1=animelem=21,1||animelem=22,1||animelem=23,1||animelem=24,1||animelem=25,1||animelem=26,1
attr = S, NA
animtype  = Medium
damage    = 5,3
guardflag = MA
pausetime = 0,0;12,12
sparkno = -1;s3501
sparkxy = 0,-30
hitsound   = s4000,7
guardsound = s4000,7;s0,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0

[State 210, 2]
type = HitDef
triggerall = anim=21030
trigger1=animelem=9,1
attr = S, NA
animtype  = Medium
damage    = 35,15
guardflag = MA
pausetime = 0,0;12,12
sparkno = -1;s3501
sparkxy = 0,-30
hitsound   = s0,2
guardsound = s0,2;s0,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
palfx.time = 3
palfx.add = 248,56,0


[State 0, EnemyChaser]
type = Helper
triggerall = anim=21031
trigger1 = animelem=17,1
trigger2 = animelem=19,1
helpertype = normal ;player
name = "ENERGYBALL"
ID = 23000;default helper projectile id
stateno = 21064;11
pos = 20,-20
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, EnemyChaser]
type = Helper
triggerall = anim=21032
trigger1 = animelem=21,1|| animelem=23,1||animelem=25,1||animelem=27,1
helpertype = normal ;player
name = "ENERGYBALLUP"
ID = 23000;default helper projectile id
stateno = 21012
pos = 20,-20
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = win&&anim!=21027
value = 21027

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=21027&&animelem=13,1
value = S5000,29
volumescale = 256
channel = -1

[State 0, ChangeState]
type = ChangeState
triggerall=root,var(10)<100
trigger1 =enemy,movecontact
trigger2=enemy,movehit
trigger3=enemy,projhit=1<2
trigger4=enemy,projcontact=1<2
trigger5=root,movetype=h
value = 21065
ctrl = 0

;================================================================================
;---------------------------------------------------------------------------
;ENERGYBALL
[Statedef 21064]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 21033;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 5

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=2
trigger1 = 1
Value = 270 ;Angle must be given on degrees.
 
[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=3
trigger1 = 1
Value = 90

[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)=3&&time>10
trigger1 = vel x>vel y
Value = -time

[State 9000, AngleSet]
type = AngleSet
triggerall=var(3)!=2
trigger1 = vel x<vel y
Value = -time

[State 9000, AngleDraw]
type = AngleDraw
trigger1 = 1


[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)<2;cuantas veces sera golpeado hasta explotar
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 302
attr = SCA, NP, SP, HP
ignorehitpause = 1


[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)=2
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 302
attr = SCA, NP, SP, HP
ignorehitpause = 1

;HOMING PROJECTILE

[State ****: Turn]
type = Turn
trigger1 = (P2Dist X < 10)

[State ****: VelSet]
type = VelSet
trigger1 = (!Time)
x = 3

[State ****: VelAdd]
type = VelAdd
trigger1 = (P2Dist X < 0) && (Vel X > -8);-6)
x = -.8;.4;0.2

[State ****: VelAdd]
type = VelAdd
trigger1 = (P2Dist X > 0) && (Vel X < 8);6)
x = .8;.4;0.2

[State ****: VelAdd]
type = VelAdd
trigger1 = (EnemyNear, Pos Y -25> Pos Y) && (Vel Y < 3);6)
y = .6;0.2

[State ****: VelAdd]
type = VelAdd
trigger1 = (EnemyNear, Pos Y -25<= Pos Y) && (Vel Y > -3);6)
y = -.6;.2;0.2

;HOMING PROJECTILE END
[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 25,12
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,7
guardsound = s4000,7;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0

[State 2400, 2];Avanza
type = Velset
triggerall=var(3)=1&&time<10
trigger1 =1;animelem=1;animtime<
x = 6
y =0

[State 2400, 2];Baja
type = Velset
triggerall=var(3)=2
trigger1 =1;animelem=1;animtime<
x = 0
y =6

[State 2400, 2];Sube
type = Velset
triggerall=var(3)=3&&time<10
trigger1 =1;animelem=1;animtime<
x = 0
y =-6


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = frontedgedist <=-50
trigger3 = (pos y<root,pos y-250)
trigger4=enemy,alive=0&&numenemy=1
trigger5=pos y>0
trigger6=time>200
value = 302

;---------------------------------------------------------------------------
;================================================================================
;POW RUNING
[statedef 21065]
type    = S
movetype= I
physics = N
juggle  = 3
ctrl = 1
anim = 21029
sprpriority = 5
velset = -2,0

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0&&anim=21029&&time>120;animtime=0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;REGULARMORTARPROJ
[Statedef 21066]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 22035;ifelse(root,anim=11202,1206,ifelse(root,anim=8603,1207,1204))
sprpriority = 5
velset=0,-3

[State 0, PlaySnd];mortar sound
type = PlaySnd;
trigger1 = time=0
value = s4000,40
channel = 5

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .5,.5

[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "SmokeTrail"
ID = 515151
stateno = 305
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, VarAdd];la variable 9 se le suma al principio para darle super armor 
type = VarAdd	;al projectil
trigger1 = time=1
v =  9   ;fv = 
value = 1

[State 0, VarAdd];point system for helpers
type = parentvarset
triggerall=movehit
trigger1 = 1
v =51
value = 1

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1030, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)<2;cuantas veces sera golpeado hasta explotar
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 302
attr = SCA, NP, SP, HP
ignorehitpause = 1


[State 1030, endfromproj]
type = HitOverride
triggerall=var(9)=2
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 302
attr = SCA, NP, SP, HP
ignorehitpause = 1

;HOMING PROJECTILE
;
;[State ****: Turn]
;type = Turn
;trigger1 = (P2Dist X < 10)

[State ****: VelSet]
type = VelSet
trigger1 = (!Time)
x = 1

[State ****: VelAdd]
type = VelAdd
trigger1 = (P2Dist X < 0) && (Vel X > -1);-6)
x = -.1;.4;0.2

[State ****: VelAdd]
type = VelAdd
trigger1 = (P2Dist X > 0) && (Vel X < 1);6)
x = .1;.4;0.2

[State ****: VelAdd]
type = VelAdd
trigger1 = (EnemyNear, Pos Y -25> Pos Y) && (Vel Y < 3);6)
y = .6;0.2

[State ****: VelAdd]
type = VelAdd
trigger1 = (EnemyNear, Pos Y -25<= Pos Y) && (Vel Y > -3);6)
y = -.6;.2;0.2

;HOMING PROJECTILE END
[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype  = Hard
damage    = 25,12
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4
guardsound = s4000,4;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 0, VelSet]
type = VelSet
trigger1 = time<30
y = -3


[State 0, DestroySelf]
type = changestate
trigger1 = movecontact
trigger2 = frontedgedist <=-50
trigger3 = (pos y<root,pos y-250)
trigger4=enemy,alive=0&&numenemy=1
trigger5=pos y>0
trigger6=time>200
value =21067


;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;REGULAREXPLOSION
[Statedef 21067]
type    = s                      
movetype= a                      
physics = s
anim = 22036
sprpriority = 4
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = s4000,4
volume = 255
channel = 5


[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .5,.5

[State 251, HitDef]
type = HitDef
trigger1 = (animelem=1,1)
attr = S, SP
animtype  = Hard
damage    = 50,25;5,2
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy=0,0
hitsound   =-1;s4000,1
guardsound =-1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;envshake.time = 8
;envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 251, HitDef]
type = HitDef
trigger1 = (animelem=2,1)||(animelem=3,1)||(animelem=4,1)
trigger2 =(animelem=5,1)||(animelem=6,1)||(animelem=7,1)||(animelem=8,1)
trigger3 =(animelem=9,1)||(animelem=10,1)||(animelem=11,1)||(animelem=12,1)
trigger4 =(animelem=13,1)
attr = S, SP
animtype  = Hard
damage    = 1,1;5,2
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy=0,0
hitsound   =-1;s4000,1
guardsound =-1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = .9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;envshake.time = 8
;envshake.freq = 100
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 1105]
type = destroyself
trigger1 = animtime = 0


;---------------------------------------------------------------------------
;REGIMENTAL
[Statedef 21068]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
sprpriority = 5

;=============INITIALIZATION=============
[State 0, IA]
type = VarSet
trigger1 = time=0
v = 59
value = random%2

[State 0, IA-CHANGER1]
type = VarSet
trigger1=((var(59=0))||((var(59)=1)))&&anim=22037&&animtime=0&&random%2
v = 59
value = random%2

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP
time = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,NT,ST,HT
time = -1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr =SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 21068
time = -1

[State 0, VarSet]
type = VarADD
trigger1 = time=0
v = 12
value = -gethitvar(damage)

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(12) = %d "
params = var(12)

[State 0, RemapPal]
type = RemapPal
trigger1 =1
source = 0,111
dest = 111,0



;=============SPEED=============

[State 0, WIN]
type = VelSet
triggerall=WIN
trigger1 =((anim=22037)||(anim=22038)||(anim=22061)||(anim=22062)||(anim=22059)||(anim=22060))
y = 0
x = 0


[State 0, FWD]
type = VelSet
triggerall=!WIN
trigger1 = anim=22059
trigger2 = anim=22038
y = 0
x = 2

[State 0, DOWN]
type = VelSet
trigger1 = (anim=[22039,22048])
trigger2 = anim=22061
x = 0
y = 1


[State 0, BACK]
type = VelSet
triggerall=!WIN
trigger1 =anim=22037
y = 0
x = -2

[State 0, UP]
type = VelSet
trigger1 = (anim=[22049,22058])
trigger2 = anim=22062
x = 0
y = -1

;=============ANIMS=============
[State 0, UD1]
type = ChangeAnim
trigger1 = (var(59)=0)&&anim=22059&&frontedgedist<=10&&(anim!=[22039,22048])&&(anim!=22037)
value = 22039+random%10

[State 0, UD2]
type = ChangeAnim
trigger1 = (var(59)=1)&&((anim=22059)||(anim=22038))&&frontedgedist<=10&&(anim!=22061)&&(anim!=22037)
value = 22061


[State 0, DOWNBACK]
type = ChangeAnim
trigger1 =(var(59)=0)&&(anim=[22039,22048])&&animtime=0
trigger2 =(var(59)=1)&&(anim=22061)&&animtime=0
value = 22037

[State 0, DU]
type = ChangeAnim
trigger1 = (var(59)=0)&&anim=22037&&backedgedist<=10&&(anim!=[22049,22058])
value = 22049+random%10

[State 0, DU]
type = ChangeAnim
trigger1 = (var(59)=1)&&anim=22037&&backedgedist<=10&&(anim!=22062)
value = 22062

[State 0, FWD]
type = ChangeAnim
trigger1 = (var(59)=0)&&(anim=[22049,22058])&&animtime=0
value = 22059


[State 0, FWD]
type = ChangeAnim
trigger1 = (var(59)=1)&&(anim=22062)&&animtime=0
value = 22038

[State 0, WIN]
type = ChangeAnim
trigger1 = anim=22059&&win&&anim!=22060
value = 22060


;=============SHOOT=============

[State 0, FX];ATTACK
type = Helper
triggerall=roundstate=2
trigger1=((anim=22061)||(anim=22062)||(anim=22038)||(anim=22037))
trigger1=time%20=0
helpertype = normal ;player
name = "REGIMENTALATTACK" 
ID = 23000
stateno = 21069
pos = 0,0
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0


;=============END=============

[State 0, EXPLODE]
type = ChangeState
trigger1 = time>1&&var(12)<=0
value =21071
ctrl = 0
;---------------------------------------------------------------------------
;MH6-SHOOTDW
[Statedef 21069]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 22063
sprpriority = 6

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = -1
pos = 0,0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 270

[State 0, REBELPistol];REBELPistol Sounds
type = PlaySnd
trigger1=Animelem=1,1
value = 4000,54
volumescale = 64
channel = -1


[State 0, RPISTOLUPDW]
type = Projectile
trigger1 = AnimElem = 1,1
postype = p1
projanim = 1345
projremanim=1999
projhitanim = 1998
projpriority = 1
projheightbound = -240, -5
projedgebound = 100
projscale=1,1
ProjHits = 1
velocity = 0,3
offset = 0,0
attr = S,NA
damage   = 20,10
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 0,0;10,10
hitsound   = s4000,5
sparkxy = 0,0;500,500
guardsound = S4000,6
ground.type = low
ground.slidetime = 0;25
ground.hittime  = 0;25
ground.velocity = 0;-6
air.animtype = Back
air.velocity = 0,0;-4,-6
air.fall = 0
down.velocity = 0,0;-4,-6
down.hittime = 0
down.bounce = 0
palfx.time = 3
palfx.add = 248,56,0;255,255,255

[State 1105]
type = destroyself
trigger1=animtime=0
trigger2=parent,var(12)<=0
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;MH6
[Statedef 21070]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 22059
sprpriority = 5
velset = 2,0
poweradd=-(ifelse((root,var(59)),1000,root,fvar(16)))

[State 0, Yihaa]
type = PlaySnd;triggerall=roundstate=2||roundstate=1
trigger1 = time=0
value = S5010,6+random%3
volumescale = 128
channel = -1

[State 0, START]
type = PosSet
trigger1 = time=0
y = -150

[State 0, HP]
type = VarSet
trigger1 = 1
v = 12
value = 200

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, random]
type = VarSet
trigger1 =time=0 
v = 21    ;fv = 10
value = 0

[State 0, SET]
type = VarSet
trigger1 = var(21)=0
v = 22    ;fv = 10
value = 21068

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno =21071
time = 1


[State 0, RANDOMIZER]
type = ChangeState
trigger1 =time>1
value =var(22)
ctrl = 0

;---------------------------------------------------------------------------
;REGIMENTALDIES
[Statedef 21071]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
sprpriority = 5
velset=vel x,4

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 0, SUICIDEDOWN]
type = ChangeAnim
trigger1 =(anim=[22039,22048])&&animtime=0
trigger2 =((anim=22037)||(anim=22038)||(anim=22061)||(anim=22062))
value = 22065

[State 0, SUICIDEFWD]
type = ChangeAnim
trigger1 = (anim=[22049,22058])&&animtime=0
trigger2 = anim=22059
value = 22064


[State 251, HitDef]
type = HitDef
trigger1 = 1
attr = S, SP
animtype  = Hard
damage    = 40,20
guardflag = MA
pausetime = 0,0
sparkno = -1;S9107
sparkxy=0,0
hitsound   =s4000,4;s4000,1
guardsound = s4000,4;s4000,1;S5546,0
guard.sparkno = -1;s9101;;;s7004
ground.type = low
ground.slidetime = 0;5
;guard.sparkno; = S449
ground.hittime  = 0;15
ground.velocity = 0;-10
air.juggle = 0
air.velocity = 0,0;-10,-8
fall.xvelocity =0
fall.yvelocity =0
yaccel = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 3
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 0
palfx.color = 0


[State 0, ChangeState]
type = ChangeState
trigger1 = pos y>=0
trigger2 = movecontact
value =15080
ctrl = 0


;---------------------------------------------------------------------------
[Statedef 21072,BRADLEYST]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
;velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                      ;Set ctrl (Def: no change)
anim = 18606
poweradd=-(ifelse((root,var(59)),1000,root,fvar(16)))
sprpriority = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0


[State 0, Yihaa]
type = PlaySnd;triggerall=roundstate=2||roundstate=1
trigger1 = time=0
value = S5010,6+random%3
volumescale = 128
channel = -1

[State 0, HP]
type = VarSet
trigger1 = 1
v = 12
value = 400+((200)*(var(56)))

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, random]
type = VarSet
trigger1 =time=0 
v = 21    ;fv = 10
value = 0

[State 0, SET]
type = VarSet
trigger1 = var(21)=0
v = 22    ;fv = 10
value = 21073

[State 0, SET]
type = VarSet
trigger1 = time=0
v = 24    ;fv = 10
value = 999

[State 0, IA]
type = VarSet
trigger1 = TIME=0
v = 59
value = 0

[State 0, COLOR]
type = VarSet
trigger1 = time=0;random%5=4&&TIME=0
v = 56
value = random%2

[State 0, RemapPal];BRADLEYGOLD
type = RemapPal
trigger1 = var(56)=1
source = 0,56
dest = 56,1

[State 0, RemapPal];BRADLEYREBEL
type = RemapPal
trigger1 = var(56)=0
source = 0,56
dest = 0,56


[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno =21073
time = 1



[State 0, RANDOMIZER]
type = ChangeState
trigger1 =time>1
value =var(22)
ctrl = 0
;---------------------------------------------------------------------------
[Statedef 21073,BRADLEY]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 1                         ;Set ctrl (Def: no change)
sprpriority = 0                  ;Set p1's sprite layering priority to 2 (in front)
;=============INITALIZE=============
[State 0, POS]
type = VarSet
trigger1 = 1
fv = 25
value = enemy,pos x


[State 0, RemapPal];BRADLEYGOLD
type = RemapPal
trigger1 = var(56)=1
source = 0,56
dest = 56,1

[State 0, RemapPal];BRADLEYREBEL
type = RemapPal
trigger1 = var(56)=0
source = 0,56
dest = 0,56

[State 0, POS]
type = VarSet
trigger1 = var(24)<=0
v = 24
value = 999

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP
time = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,NT,ST,HT
time = -1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr =SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 21073
time = -1

[State 0, VarSet]
type = VarADD
trigger1 = time=0
v = 12
value = -gethitvar(damage)

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(12) = %d DIST %d "
params = var(12),(floor(abs(fvar(25)-pos x)))


;=============SPEED=============

[State 0, FLOOR]
type = VelSet
trigger1 =1
Y = 0

[State 0, FWD]
type = VelSet
trigger1 = (facing=1)&&(anim=18606)
trigger2 = (facing=-1)&&(anim=18606)
x = 2

[State 0, FWD]
type = VelSet
trigger1 = (facing=1)&&(anim=18607)
trigger2 = (facing=-1)&&(anim=18607)
x = -2

[State 0, STOP]
type = VelSet
trigger1 = anim=18605
x = 0

;=============ANIMATIONS=============

[State 0, MOVEFWDSTAND]
type = ChangeAnim
trigger1 = anim=18605
trigger1 = (facing=1)&&(fvar(25)>pos x)&&(floor(abs(fvar(25)-pos x))>120)
trigger1 = anim!=18606
trigger2 = (facing=-1)&&(fvar(25)<pos x)&&(floor(abs(fvar(25)-pos x))>120)
trigger2 = anim!=18606
value = 18606

[State 0, MOVEBACKSTAND]
type = ChangeAnim
trigger1 = anim=18605
trigger1 = (facing=1)&&(fvar(25)<pos x)&&(floor(abs(fvar(25)-pos x))>120)
trigger1 = anim!=18607
trigger2 = (facing=-1)&&(fvar(25)>pos x)&&(floor(abs(fvar(25)-pos x))>120)
trigger2 = anim!=18607
value = 18607

[State 0, STAND]
type = ChangeAnim
triggerall = floor(abs(fvar(25)-pos x))<=120
trigger1 = anim!=18605&&anim!=18619&&anim!=18629&&anim!=18604&&anim!=18603&&anim!=18602&&anim!=18604&&anim!=18624&&anim!=18630
trigger2 = anim=18619&&animtime=0&&roundstate!=2
trigger3 = anim=18603&&animtime=0
value = 18605

[State 0, STAND]
type = ChangeAnim
trigger1 = anim=18603&&animtime=0
value = 18605

[State 0, SHOOTSTARTORCROUCH]
type = ChangeAnim
triggerall=roundstate=2
trigger1 = anim=18605&&random%20=19
value = ifelse(random%4=3,18604,18629)

[State 0, SHOOT]
type = ChangeAnim
triggerall=roundstate=2
trigger1 = anim=18629&&animtime=0
value = 18619

[State 0, SHOOTSTOP]
type = ChangeAnim
triggerall=roundstate=2
trigger1 = anim=18619&&animtime=0
value = ifelse(random%2,18605,18619)

[State 0, CROUCH]
type = ChangeAnim
trigger1 = anim=18604&&animtime=0
value = 18602

[State 0, SHOOTSTARTORSTAND]
type = ChangeAnim
triggerall=roundstate=2
trigger1 = anim=18602&&random%10=9
value = 18630

[State 0, SHOOT]
type = ChangeAnim
triggerall=roundstate=2
trigger1 = anim=18630&&animtime=0
value = 18624

[State 0, SHOOTSTOPC]
type = ChangeAnim
triggerall=roundstate=2
trigger1 = anim=18624&&animtime=0
value = ifelse(random%2,18603,18624)

[State 0, WINCROUCH]
type = ChangeAnim
triggerall=roundstate!=2
trigger1 = anim=18624&&animtime=0
trigger2 = anim=18630&&animtime=0
value = 18603

[State 0, WINSTAND]
type = ChangeAnim
triggerall=roundstate!=2
trigger1 = anim=18629&&animtime=0
trigger2 = anim=18619&&animtime=0
value = 18605

;=============ATTACK=============


;var(24)=10,6,2================================================
[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 = anim=18619
trigger1 =animelem=1,1
trigger1 = ((var(24)%(10))=(0))||((var(24)%(10))=(6))||((var(24)%(10))=(2));(var(24)=(10))||(var(24)=(6)||(var(24)=2)
helpertype = normal ;player
name = "Missilefx1Pos1"
ID = 115252
stateno = 15091
pos = -35,-34
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 = anim=18619
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(0))||((var(24)%(10))=(6))||((var(24)%(10))=(2));(var(24)=(10))||(var(24)=(6)||(var(24)=2)
helpertype = normal ;player
name = "Missilefx2Pos1"
ID = 125252
stateno = 15092
pos = 48,-115
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 = anim=18619
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(0))||((var(24)%(10))=(6))||((var(24)%(10))=(2));(var(24)=(10))||(var(24)=(6)||(var(24)=2)
helpertype = normal ;player
name = "MissileBradleyPos1"
ID = 13250
stateno = 15093
pos = 24,-86
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;var(24)=9,5,1================================================

[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 = anim=18619
trigger1 = animelem=1,1
trigger1 = ((var(24)%(10))=(9))||((var(24)%(10))=(5))||((var(24)%(10))=(1));(var(24)=9)||(var(24)=5)||(var(24)=1)
helpertype = normal ;player
name = "Missilefx1Pos2"
ID = 115252
stateno = 15091
pos = -31,-27
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 = anim=18619
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(9))||((var(24)%(10))=(5))||((var(24)%(10))=(1));(var(24)=9)||(var(24)=5)||(var(24)=1)
helpertype = normal ;player
name = "Missilefx2Pos2"
ID = 125252
stateno = 15092
pos = 55,-108
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 = anim=18619
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(9))||((var(24)%(10))=(5))||((var(24)%(10))=(1));(var(24)=9)||(var(24)=5)||(var(24)=1)
helpertype = normal ;player
name = "MissileBradleyPos2"
ID = 13250
stateno = 15093
pos = 30,-81
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;var(24)=8,4================================================

[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 = anim=18619
trigger1 = animelem=1,1
trigger1 = ((var(24)%(10))=(8))||((var(24)%(10))=(4));(var(24)=8)||(var(24)=4)
helpertype = normal ;player
name = "Missilefx1Pos3"
ID = 115252
stateno = 15091
pos = -31,-36
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 = anim=18619
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(8))||((var(24)%(10))=(4));(var(24)=8)||(var(24)=4)
helpertype = normal ;player
name = "Missilefx2Pos3"
ID = 125252
stateno = 15092
pos = 56,-115
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 = anim=18619
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(8))||((var(24)%(10))=(4));(var(24)=8)||(var(24)=4)
helpertype = normal ;player
name = "MissileBradleyPos3"
ID = 13250
stateno = 15093
pos = 30,-86
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;var(24)=7,3================================================

[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 = anim=18619
trigger1 = animelem=1,1
trigger1 = ((var(24)%(10))=(7))||((var(24)%(10))=(3));(var(24)=7)||(var(24)=3)
helpertype = normal ;player
name = "Missilefx1Pos4"
ID = 115252
stateno = 15091
pos = -27,-32
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 = anim=18619
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(7))||((var(24)%(10))=(3));(var(24)=7)||(var(24)=3)
helpertype = normal ;player
name = "Missilefx2Pos4"
ID = 125252
stateno = 15092
pos = 63,-107
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 = anim=18619
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(7))||((var(24)%(10))=(3));(var(24)=7)||(var(24)=3)
helpertype = normal ;player
name = "MissileBradleyPos4"
ID = 13250
stateno = 15093
pos = 37,-79
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0




;var(24)=10,6,2================================================
[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 = anim=18624&&animelem=1,1
trigger1 = ((var(24)%(10))=(0))||((var(24)%(10))=(6))||((var(24)%(10))=(2));(var(24)=10)||(var(24)=6)||(var(24)=2)
helpertype = normal ;player
name = "Missilefx1Pos1"
ID = 115252
stateno = 15096
pos = -33,-44
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 = anim=18624
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(0))||((var(24)%(10))=(6))||((var(24)%(10))=(2));(var(24)=10)||(var(24)=6)||(var(24)=2)
helpertype = normal ;player
name = "Missilefx2Pos1"
ID = 125252
stateno = 15097
pos = 79,-44
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 = anim=18624
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(0))||((var(24)%(10))=(6))||((var(24)%(10))=(2));(var(24)=10)||(var(24)=6)||(var(24)=2)
helpertype = normal ;player
name = "MissileBradleyPos1"
ID = 13250
stateno = 15098
pos = 45,-43
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;var(24)=9,5,1================================================

[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 = anim=18624
trigger1 = animelem=1,1
trigger1 = ((var(24)%(10))=(9))||((var(24)%(10))=(5))||((var(24)%(10))=(1));(var(24)=9)||(var(24)=5)||(var(24)=1)
helpertype = normal ;player
name = "Missilefx1Pos2"
ID = 115252
stateno = 15096
pos = -33,-33
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 = anim=18624
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(9))||((var(24)%(10))=(5))||((var(24)%(10))=(1));(var(24)=9)||(var(24)=5)||(var(24)=1)
helpertype = normal ;player
name = "Missilefx2Pos2"
ID = 125252
stateno = 15097
pos = 79,-34
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 = anim=18624
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(9))||((var(24)%(10))=(5))||((var(24)%(10))=(1));(var(24)=9)||(var(24)=5)||(var(24)=1)
helpertype = normal ;player
name = "MissileBradleyPos2"
ID = 13250
stateno = 15098
pos = 44,-33
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;var(24)=8,4================================================

[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 = anim=18624
trigger1 = animelem=1,1
trigger1 = ((var(24)%(10))=(8))||((var(24)%(10))=(4));(var(24)=8)||(var(24)=4)
helpertype = normal ;player
name = "Missilefx1Pos3"
ID = 115252
stateno = 15096
pos = -27,-41
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 = anim=18624
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(8))||((var(24)%(10))=(4));(var(24)=8)||(var(24)=4)
helpertype = normal ;player
name = "Missilefx2Pos3"
ID = 125252
stateno = 15097
pos = 85,-42
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 = anim=18624
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(8))||((var(24)%(10))=(4));(var(24)=8)||(var(24)=4)
helpertype = normal ;player
name = "MissileBradleyPos3"
ID = 13250
stateno = 15098
pos = 50,-41
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;var(24)=7,3================================================

[State 0, fx1]
type = Helper;trigger1=numhelper(115252)=0
trigger1 = anim=18624
trigger1 = animelem=1,1
trigger1 = ((var(24)%(10))=(7))||((var(24)%(10))=(3));(var(24)=7)||(var(24)=3)
helpertype = normal ;player
name = "Missilefx1Pos4"
ID = 115252
stateno = 15096
pos = -27,-32
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, fx2]
type = Helper;trigger1=numhelper(125252)=0
trigger1 = anim=18624
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(7))||((var(24)%(10))=(3));(var(24)=7)||(var(24)=3)
helpertype = normal ;player
name = "Missilefx2Pos4"
ID = 125252
stateno = 15097
pos = 85,-33
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, proj]
type = Helper;trigger1=numhelper(13250)=0
trigger1 = anim=18624
trigger1 =animelem=4,1
trigger1 = ((var(24)%(10))=(7))||((var(24)%(10))=(3));(var(24)=7)||(var(24)=3)
helpertype = normal ;player
name = "MissileBradleyPos4"
ID = 13250
stateno = 15098
pos = 50,-33
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

;=============SOUNDS=============

[State 0, preparing]
type = PlaySnd
trigger1 = (anim=[18629,18630])&&animelem=1,1
value = 4000,43
volumescale = 64
channel = -1

;=============END=============

[State 0, EXPLODE]
type = ChangeState
trigger1 = time>1&&var(12)<=0
value =15157
ctrl = 0

