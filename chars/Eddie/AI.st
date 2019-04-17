;AI
[StateDef 9741]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9741, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 0

[State 9741, PauseCheck]
type = VarSet
trigger1 = (GameTime>(Parent,var(57)))
trigger2 = !(Parent,Alive)
trigger3 = (RoundState != 2)
trigger4 = Parent,var(59)
trigger5 = (var(3):=0)
var(2) = (var(3):=1)+(var(4):=0)

[State 9741, Facing]
type = Turn
trigger1 = (var(9):=(Facing != Parent,Facing))

[State 9741, DirTurnOnAI]
type = ParentVarSet
triggerall = !var(3)
triggerall = !var(9)
trigger1 = (Parent,command = "holdfwd")
trigger2 = (Parent,command = "holdback")
trigger3 = (Parent,command = "holdup")
trigger4 = (Parent,command = "holddown")
trigger5 = !(var(4):=1)
var(59) = var(4)

[State 9741, DirTurnOffAI]
type = ParentVarSet
triggerall = !var(3)
triggerall = Parent,var(59)
trigger1 = (command = "holdfwd")
trigger1 = (Parent,command = "holdfwd")
trigger2 = (command = "holdback")
trigger2 = (Parent,command = "holdback")
trigger3 = (command = "holdup")
trigger3 = (Parent,command = "holdup")
trigger4 = (command = "holddown")
trigger4 = (Parent,command = "holddown")
var(59) = (var(4):=0)

[State 9741, ButtonTurnOnAI]
type = ParentVarSet
triggerall = var(1)
triggerall = !var(2)
trigger1 = (Parent,command = "a")
trigger2 = (Parent,command = "b")
trigger3 = (Parent,command = "c")
trigger4 = (Parent,command = "x")
trigger5 = (Parent,command = "y")
trigger6 = (Parent,command = "z")
trigger7 = (Parent,command = "s")
var(59) = 1

[State 9741, ButtonTurnOffAI]
type = ParentVarSet
triggerall = !var(2)
trigger1 = (command = "a")
trigger1 = (Parent,command = "a")
trigger2 = (command = "b")
trigger2 = (Parent,command = "b")
trigger3 = (command = "c")
trigger3 = (Parent,command = "c")
trigger4 = (command = "x")
trigger4 = (Parent,command = "x")
trigger5 = (command = "y")
trigger5 = (Parent,command = "y")
trigger6 = (command = "z")
trigger6 = (Parent,command = "z")
trigger7 = (command = "s")
trigger7 = (Parent,command = "s")
var(59) = -1

[State 9741, UnPauseCheck]
type = VarSet
triggerall = var(2)
trigger1 = (Parent,command = "a")
trigger2 = (Parent,command = "b")
trigger3 = (Parent,command = "c")
trigger4 = (Parent,command = "x")
trigger5 = (Parent,command = "y")
trigger6 = (Parent,command = "z")
trigger7 = (Parent,command = "s")
trigger8 = (var(2) = 2)
trigger8 = (var(2):=0)
var(2) = 2

[State 9741, Goodbye]
type = DestroySelf
triggerall = (var(1):=1)
trigger1 = Parent,var(59)
trigger2 = !(Parent,Alive)
trigger3 = (RoundState != 2)


;------------------
; AI Activation Helper State - Compatibly Partnered Version
;
; var(1) - First tick dir activation prevention
; var(2) - Used for pause/superpause and custom state check, basically.
; var(3) - (Super/)Pause & custom state-triggered dir detection disabler.
; var(4) - Hitpause check.
; var(5) - No button on previous tick.
; var(6) - Any dir on this tick.
; var(7) - Any button on this tick.
; var(8) - Matching partner button detected.
; var(9) - AutoTurn bug fixer.
; parent's var(57) - Parent's GameTime var, for pause and custom state check.
; parent's var(59) - Parent's primary AI variable.
;
; The code in this state is mostly simply copy/pasteable.
; But if you're using different indices for the parent's variables,
; or if you change your character's basic commands' names, you'll
; of course need to change the code in this state accordingly.

[StateDef 9742]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9742, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 0

[State 9742, PauseCheck]
type = VarSet
trigger1 = (GameTime>Parent,var(57))
trigger2 = !(Parent,Alive)
trigger3 = (RoundState != 2)
trigger4 = Parent,var(59)
trigger5 = (var(3):=0)
var(2) = (var(3):=1)

[State 9742, Facing]
type = Turn
trigger1 = (var(9):=(Facing != Parent,Facing))

[State 9742, ParentDirCheck]
type = VarSet
trigger1 = (Parent,command = "holdfwd")
trigger2 = (Parent,command = "holdback")
trigger3 = (Parent,command = "holdup")
trigger4 = (Parent,command = "holddown")
trigger5 = (var(6):=0)
var(6) = 1

[State 9742, ParentButtonCheck]
type = VarSet
trigger1 = (Parent,command = "a")
trigger2 = (Parent,command = "b")
trigger3 = (Parent,command = "c")
trigger4 = (Parent,command = "x")
trigger5 = (Parent,command = "y")
trigger6 = (Parent,command = "z")
trigger7 = (Parent,command = "s")
trigger8 = (var(7):=0)
var(7) = 1

[State 9742, SameButtonCheck]
type = VarSet
triggerall = var(7)
triggerall = !var(2)
triggerall = NumPartner
trigger1 = (Parent,command = "a")
trigger1 = (Partner,command = "a")
trigger2 = (Parent,command = "b")
trigger2 = (Partner,command = "b")
trigger3 = (Parent,command = "c")
trigger3 = (Partner,command = "c")
trigger4 = (Parent,command = "x")
trigger4 = (Partner,command = "x")
trigger5 = (Parent,command = "y")
trigger5 = (Partner,command = "y")
trigger6 = (Parent,command = "z")
trigger6 = (Partner,command = "z")
trigger7 = (Parent,command = "s")
trigger7 = (Partner,command = "s")
trigger8 = (var(8):=0)
var(8) = 1

[State 9742, DirTurnOnAI]
type = ParentVarSet
trigger1 = var(1)
trigger1 = var(6)
trigger1 = !var(3)
trigger1 = !var(4)
trigger1 = !var(9)
var(59) = 1

[State 9742, DirTurnOffAI]
type = ParentVarSet
triggerall = var(6)
triggerall = !var(3)
triggerall = Parent,var(59)
trigger1 = (command = "holdfwd")
trigger1 = (Parent,command = "holdfwd")
trigger2 = (command = "holdback")
trigger2 = (Parent,command = "holdback")
trigger3 = (command = "holdup")
trigger3 = (Parent,command = "holdup")
trigger4 = (command = "holddown")
trigger4 = (Parent,command = "holddown")
var(59) = 0

[State 9742, ButtonTurnOnAI]
type = ParentVarSet
trigger1 = var(5)
trigger1 = var(7)
trigger1 = !var(2)
trigger1 = !var(8)
var(59) = 1

[State 9742, ButtonTurnOffAI]
type = ParentVarSet
triggerall = var(7)
triggerall = !var(2)
triggerall = !var(8)
trigger1 = (command = "a")
trigger1 = (Parent,command = "a")
trigger2 = (command = "b")
trigger2 = (Parent,command = "b")
trigger3 = (command = "c")
trigger3 = (Parent,command = "c")
trigger4 = (command = "x")
trigger4 = (Parent,command = "x")
trigger5 = (command = "y")
trigger5 = (Parent,command = "y")
trigger6 = (command = "z")
trigger6 = (Parent,command = "z")
trigger7 = (command = "s")
trigger7 = (Parent,command = "s")
var(59) = -1

[State 9742, UnPauseCheck]
type = VarSet
triggerall = var(2)
triggerall = !var(4)
trigger1 = var(7)
trigger2 = (var(2) = 2)
trigger2 = (var(2):=0)
var(2) = 2

[State 9742, Goodbye]
type = DestroySelf
trigger1 = Parent,var(59)
trigger2 = !(Parent,Alive)
trigger3 = (RoundState != 2)

[State 9742, HitPauseCheck]
type = VarSet
trigger1 = var(6)
trigger2 = var(7)
trigger3 = !(Parent,HitPauseTime)
var(4) = Parent,HitPauseTime

[State 9742, Delay]
type = VarSet
trigger1 = (var(1):=1)
var(5) = !var(7)


;------------------
; XOR Method's HitPauseTime Helper State

[StateDef 9743]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9743, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 0

[State 9743, HitPauseTime]
type = VarSet
trigger1 = !(Parent,HitPauseTime)
trigger2 = (GameTime>Parent,var(57))
var(1) = Parent,HitPauseTime

[State 9742, Goodbye]
type = DestroySelf
trigger1 = (Parent,var(59) = 1)
trigger2 = !(Parent,Alive)
trigger3 = (RoundState != 2)
