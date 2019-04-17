;---------------------------------------------------------------------------
;•KE‚Vƒ}ƒg”ğ‚¯i‘¬
[State -1, s7]
type = ChangeState
value = 1070
triggerall = (command = "BDB_a")
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100) || (stateno = 105)
trigger3 = (stateno = [200,299]) || (stateno = [400,499])
trigger4 = (stateno = [1060,1062])

;---------------------------------------------------------------------------
;•KE‚Vƒ}ƒg”ğ‚¯i’·
[State -1, s7]
type = ChangeState
value = 1072
triggerall = command = "BDB_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100) || (stateno = 105)
trigger3 = (stateno = [200,299]) || (stateno = [400,499])
trigger4 = (stateno = [1060,1062])
