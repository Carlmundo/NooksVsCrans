;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State 0, VarSet]
type = VarSet
trigger1 = !(stateno=[2170,2172])
v = 17    ;fv = 10
value = 0

[State -3, Hurt sound]
type = playsnd
triggerall = alive && (time = 1)
trigger1 = stateno = 5300
value = 11,2
channel = 0
ignorehitpause = 1
persistent = 0

[State -2, Damage Dampener]; Scaling in action
type= null;attackmulset
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) < 3, 24, ifelse(enemynear, gethitvar(hitcount) >= 24, 2, 26 - enemynear, gethitvar(hitcount))) / 29.0
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= null;attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[State 0, VarAdd]
type = VarAdd
trigger1 = time = 1
trigger1 = stateno =5000 ||stateno =5010 || stateno =5020 || stateno =5030
v = 1
value = var(3)

[State 0, VarAdd]
type = VarAdd
triggerall = numenemy > 0
trigger1 = enemy, Moveguarded
trigger1 = time = 1
trigger1 = anim =150 ||anim =152 || anim =154
v = 2
value = 30 + var(3)

[State 0, ChangeState]
type = null;selfstate
triggerall = stateno >= 150
triggerall = stateno <= 155
triggerall = statetype= S
trigger1 = var(2) >400
value = 5350
ctrl = 0

[State 0, ChangeState]
type = null;selfstate
triggerall = stateno >= 150
triggerall = stateno <= 155
triggerall = statetype= C
trigger1 = var(2) >400
value = 5351
ctrl = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = var(1) <=300
trigger1 = var(1) > 0
trigger1 = roundstate = 2
trigger1 = movetype = I
trigger1 = gametime % 2 =1
v = 1
value = -1

[State 0, VarAdd]
type = VarAdd
trigger1 = var(2) <=400
trigger1 = var(2) > 0
trigger1 = roundstate = 2
trigger1 = movetype = I
trigger1 = gametime % 2 =1
v = 2
value = -1

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(2)=%d, var(1)=%d, var(50)=%d, var(59)=%d, p2bodydist y=%d, var(17)%d"
params = var(2), var(1), var(50), var(59), floor(p2bodydist y), var(17)

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno!=[3000,3999]
trigger1 = NumExplod(10010)>0
id =10010
;ignorehitpause =
;persistent =

; =================================================================
;p3 = Apocalypse / Onslaught                                     ;=
[State 0, LifeSet]                                               ;=
type = LifeSet                                                   ;=
;triggerall = TeamMode =                                         ;=
trigger1 = p3name = "Apocalypse"                                 ;=
trigger2 = p3name = "Onslaught"                                  ;=
value = 0                                                        ;=
persistent =0                                                    ;=
                                                                 ;=
[State 0, ChangeState]                                           ;=
type = ChangeState                                               ;=
triggerall = life = 0                                            ;=
trigger1 = p3name = "Apocalypse"                                 ;=
trigger2 = p3name = "Onslaught"                                  ;=           ;=
value = 5150                                                     ;=
ctrl = 0                                                         ;=
                                                                 ;=
; =================================================================

;----------------------------------------------
;KO Sound
[State -2]
type = Helper
triggerall = !alive
trigger1 = NumHelper(7760) = 0
stateno = 7760
id = 7760

; END
