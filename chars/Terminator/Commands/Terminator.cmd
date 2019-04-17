; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below.
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "Pulemet"
; command = D, F, a+b
; time = 10
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10


;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command] 
name = "Minigun"
command = ~D, F, x+y
time = 30

[Command] 
name = "Minigun"
command = ~D, F, y+z
time = 30

[Command] 
name = "Minigun"
command = ~D, F, x+z
time = 30

[Command] 
name = "Machinegun+Shotgun"
command = ~D, F, a+b
time = 30

[Command] 
name = "Machinegun+Shotgun"
command = ~D, F, b+c
time = 30

[Command] 
name = "Machinegun+Shotgun"
command = ~D, F, a+c
time = 30

[Command] 
name = "Laser"
command = ~D, B, x+y
time = 30

[Command] 
name = "Laser"
command = ~D, B, y+z
time = 30

[Command] 
name = "Laser"
command = ~D, B, x+z
time = 30

[Command] 
name = "Hasta La Vista"
command = ~D, B, a+b
time = 30

[Command] 
name = "Hasta La Vista"
command = ~D, B, b+c
time = 30

[Command] 
name = "Hasta La Vista"
command = ~D, B, a+c
time = 30

;-| Special Motions |------------------------------------------------------

[Command] 
name = "Machinegun"
command = a+x;~D, DF, F, z

[Command] 
name = "Machinegun"
command = b+y;~D, DF, F, z

[Command] 
name = "Machinegun"
command = c+z;~D, DF, F, z

[Command] 
name = "Mine"
command = x+y;~D, DF, F, z

[Command] 
name = "Bazooka"
command = y+z;~D, DF, F, z

[Command] 
name = "Plasma_Heavy"
command = b+c;~D, DF, F, c

[Command] 
name = "Grenade_Launcher"
command = a+b;~D, DF, F, c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------

[Command]
name = "Hold_s"
command = /s
time = 1

[Command]
name = "Realise_s"
command = ~s
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
name = "s"
command = start
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "fwd";Required (do not remove)
command = F
time = 10

[Command]
name = "back";Required (do not remove)
command = B
time = 10

[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
var(1) = 1

;--------------------------------------------------------------------------
;---------------------------------------------------------------------------

;------------------ГИПЕРАТАКИ 3 УРОВНЯ-----------------------------------------------
;Hasta La Vista
[State -1, Hasta La Vista]
type = ChangeState
value = 3200
triggerall = RoundState = 2 && ctrl
triggerall = power >= 3000 && Statetype != A
trigger1 = (Command = "Hasta La Vista" && !AILevel) || (AILevel && (Random = [650,(699+Ailevel)]) && P2StateType != L)

;------------------ГИПЕРАТАКИ 2 УРОВНЯ-----------------------------------------------
;Лазер
[State -1, Laser]
type = ChangeState
value = 3100
triggerall = RoundState = 2 && ctrl
triggerall = power >= 2000 && Statetype != A
trigger1 = (Command = "Laser" && !AILevel) || (AILevel && (Random = [0,(22+Ailevel)]) && P2StateType != L)

;------------------ГИПЕРАТАКИ 1 УРОВНЯ-----------------------------------------------

;Пулемет
[State -1, Minigun]
type = ChangeState
value = 3000
triggerall = RoundState = 2 && ctrl
triggerall = power >= 1000 && Statetype != A
trigger1 = (Command = "Minigun" && !AILevel) || (AILevel && (Random = [50,(52+Ailevel)])&& P2StateType != L)

;Автомат + Дробовик
[State -1, Machinegun+Shotgun]
type = ChangeState
value = 3001
triggerall = RoundState = 2 && ctrl
triggerall = power >= 1000 && Statetype != A
trigger1 = (Command = "Machinegun+Shotgun" && !AILevel) || (AILevel && (Random = [100,(102+Ailevel)])&& P2StateType != L)

;----------------------------------------------Тактический экран--------------------------------------

[State -1, Tactic_screen]
type = ChangeState
value = 211
triggerall = RoundState = 2 && !FVar(10) &&  power >= 200
triggerall = Anim = 0+(var(50)*10000) || Anim = 11+(var(50)*10000)
triggerall = Statetype != A && ctrl && !HitFall;&& PrevStateNo != 211
triggerall = Anim != (212+(var(50)*10000))
triggerall = (Command != "holdup") && (Command != "holdfwd") && (Command != "holdback")
trigger1 = (Command = "Hold_s" && !AILevel) || (AILevel && (Random = [150,(152+Ailevel)]) && Statetype != L && p2bodydist x >= 50 && P2StateType != L)

;------------------СПЕЦАТАКИ--СТОЯ---------------------------------------------
;Пулемет
[State -1, Machinegun]
type = ChangeState
value = 240
triggerall = RoundState = 2 && ctrl
triggerall = power >= 700 && statetype = S
triggerall = command != "holddown"
trigger1 = (Command = "Machinegun" && !AILevel) || (AILevel && (Random = [750,(752+Ailevel)])&& P2StateType != L)

;Мина
[State -1, Mine]
type = ChangeState
value = 250
triggerall = RoundState = 2 && ctrl && !numHelper(10250)
triggerall = power >= 600 && (statetype = S || statetype = C)
trigger1 = (Command = "Mine" && !AILevel) || (AILevel && (Random = [700,(702+Ailevel)]))

;Базука
[State -1, Bazooka]
type = ChangeState
value = 203
triggerall = RoundState = 2 && ctrl
triggerall = power >= 600 && statetype = S
triggerall = command != "holddown"
trigger1 = (Command = "Bazooka" && !AILevel) || (AILevel && (Random = [200,(202+Ailevel)])&& P2StateType != L)

;Плазмограната
[State -1, Plasmagun_Heavy]
type = ChangeState
value = 206
triggerall = RoundState = 2 && ctrl
triggerall = power >= 500 && statetype = S
triggerall = command != "holddown"
trigger1 = (Command ="Plasma_Heavy"&& !AILevel) || (AILevel && (Random = [250,(252+Ailevel)])&& P2StateType != L)

;Гранатомет
[State -1, Grenade_Launcher]
type = ChangeState
value = 208 ;195
triggerall = RoundState = 2 && ctrl
triggerall = power >= 500 && statetype = S
triggerall = command != "holddown"
trigger1 = (Command = "Grenade_Launcher"&& !AILevel) || (AILevel && (Random = [300,(302+Ailevel)])&& P2StateType != L)

;------------------СПЕЦАТАКИ--СИДЯ---------------------------------------------
;Пулемет
[State -1, Machinegun]
type = ChangeState
value = 411
triggerall = RoundState = 2 && ctrl
triggerall = power >= 800 && statetype = C
triggerall = command = "holddown"
trigger1 = (Command = "Machinegun" && !AILevel) || (AILevel && (Random = [750,(752+Ailevel)])&& P2StateType != L)

;Плазмограната сидя
[State -1, Plasmagun_Heavy]
type = ChangeState
value = 405
triggerall = RoundState = 2 && ctrl
triggerall = power >= 500 && statetype = C
triggerall = command = "holddown"
trigger1 = (Command ="Plasma_Heavy"&& !AILevel) || (AILevel && (Random = [250,(252+Ailevel)])&& P2StateType != L)

;Базука сидя
[State -1, Bazooka]
type = ChangeState
value = 408
triggerall = RoundState = 2 && ctrl
triggerall = power >= 600 && statetype = C
triggerall = command = "holddown"
trigger1 = (Command = "Bazooka" && !AILevel) || (AILevel && (Random = [200,(202+Ailevel)])&& P2StateType != L)

;Гранатомет сидя
[State -1, Grenade_Launcher]
type = ChangeState
value = 409 ;195
triggerall = RoundState = 2 && ctrl
triggerall = power >= 500 && statetype = C
triggerall = command = "holddown"
trigger1 = (Command = "Grenade_Launcher"&& !AILevel) || (AILevel && (Random = [300,(302+Ailevel)])&& P2StateType != L)


;------------------СПЕЦАТАКИ--В--ВОЗДУХЕ-------------------------------------------
;Пулемет
[State -1, Machinegun]
type = ChangeState
value = 611
triggerall = RoundState = 2 && ctrl
triggerall = power >= 800 && statetype = A
triggerall = command != "holddown"
trigger1 = (Command = "Machinegun" && !AILevel) || (AILevel && (Random = [750,(752+Ailevel)])&& P2StateType != L)

;Плазмограната в воздухе
[State -1, Plasmagun_Heavy]
type = ChangeState
value = 603
triggerall = RoundState = 2 && ctrl
triggerall = power >= 500 && statetype = A
triggerall = command != "holddown"
trigger1 = (Command ="Plasma_Heavy"&& !AILevel) || (AILevel && (Random = [250,(252+Ailevel)])&& P2StateType = A)

;Базука в воздухе
[State -1, Bazooka]
type = ChangeState
value = 606
triggerall = RoundState = 2 && ctrl
triggerall = power >= 600 && statetype = A
triggerall = command != "holddown"
trigger1 = (Command = "Bazooka" && !AILevel) || (AILevel && (Random = [200,(202+Ailevel)])&& P2StateType = A)

;Гранатомет в воздухе
[State -1, Grenade_Launcher]
type = ChangeState
value = 609 ;195
triggerall = RoundState = 2 && ctrl
triggerall = power >= 500 && statetype = A
triggerall = command != "holddown"
trigger1 = (Command = "Grenade_Launcher"&& !AILevel) || (AILevel && (Random = [300,(302+Ailevel)])&& P2StateType != L)

;-------------------------------------------------------------------------------------------------------

;Бег вперед
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Отскок назад
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;------------------АТАКИ НА ЗЕМЛЕ--------------------------------------------------

;Удар рукой
[State -1, Punch]
type = ChangeState
value = 220
triggerall = RoundState = 2 && ctrl
triggerall = statetype = S 
triggerall = command != "holddown"
triggerall = p2bodydist x < 30
trigger1 = (Command = "a" && !AILevel) || (AILevel && (Random = [350,(372+Ailevel)])&& P2StateType != L)

;Пистолет
[State -1, Gun]
type = ChangeState
value = 200
triggerall = RoundState = 2 && ctrl
triggerall = power >= 100 && statetype = S 
triggerall = command != "holddown"
triggerall = p2bodydist x >= 30
trigger1 = (Command = "a" && !AILevel) || (AILevel && (Random = [350,(352+Ailevel)])&& P2StateType != L)

;Удар ногой
[State -1, Kick]
type = ChangeState
value = 221
triggerall = RoundState = 2 && ctrl
triggerall = statetype = S
triggerall = p2bodydist x < 40
trigger1 = (Command = "b" && !AILevel) || (AILevel && (Random = [400,(422+Ailevel)])&& P2StateType != L)

;Узи
[State -1, Uzi]
type = ChangeState
value = 201
triggerall = RoundState = 2 && ctrl
triggerall = power >= 200 && statetype = S
triggerall = p2bodydist x >= 40 
trigger1 = (Command = "b" && !AILevel) || (AILevel && (Random = [400,(402+Ailevel)])&& P2StateType != L)

;Удар оружием
[State -1, WeaponHit]
type = ChangeState
value = 222
triggerall = RoundState = 2 && ctrl
triggerall = statetype = S
triggerall = command != "holddown"
triggerall = p2bodydist x < 50 
trigger1 = (Command = "c" && !AILevel) || (AILevel && (Random = [450,(472+Ailevel)])&& P2StateType != L)

;Плазма
[State -1, Plasmagun]
type = ChangeState
value = 202
triggerall = RoundState = 2 && ctrl
triggerall = power >= 300 && statetype = S
triggerall = command != "holddown"
triggerall = p2bodydist x >= 50 
trigger1 = (Command = "c" && !AILevel) || (AILevel && (Random = [450,(452+Ailevel)])&& P2StateType != L)

;Дробовик
[State -1, Shotgun]
type = ChangeState
value = 207
triggerall = RoundState = 2 && ctrl
triggerall = power >= 450 && statetype = S
triggerall = command != "holddown"
trigger1 = (Command = "x" && !AILevel) || (AILevel && (Random = [500,(502+Ailevel)])&& P2StateType != L)

;Автомат
[State -1, Machine_gun]
type = ChangeState
value = 204
triggerall = RoundState = 2 && ctrl
triggerall = power >= 400 && statetype = S
triggerall = command != "holddown"
trigger1 = (Command = "y" && !AILevel) || (AILevel && (Random = [550,(552+Ailevel)])&& P2StateType != L)

;Винтовка
[State -1, Rifle]
type = ChangeState
value = 209
triggerall = RoundState = 2 && ctrl
triggerall = power >= 300 && statetype = S
triggerall = command != "holddown"
trigger1 = (Command = "z" && !AILevel) || (AILevel && (Random = [600,(602+Ailevel)])&& P2StateType != L)

;------------------АТАКИ СИДЯ-------------------------------------------------

;Стрельба одиночными сидя
[State -1, Gun_in_crouch]
type = ChangeState
value = 400
triggerall = RoundState = 2 && ctrl
triggerall = power >= 100 && statetype = C
triggerall = p2bodydist x >= 30
triggerall = command = "holddown"
trigger1 = (Command = "a" && !AILevel) || (AILevel && (Random = [350,(352+Ailevel)])&& P2StateType != L)

;Удар рукой сидя
[State -1, Punch_in_crouch]
type = ChangeState
value = 402
triggerall = RoundState = 2 && ctrl
triggerall = statetype = C 
triggerall = p2bodydist x < 30
triggerall = command = "holddown"
trigger1 = (Command = "a" && !AILevel) || (AILevel && (Random = [350,(372+Ailevel)])&& P2StateType != L)

;Узи сидя
[State -1, Uzi_in_crouch]
type = ChangeState
value = 401
triggerall = RoundState = 2 && ctrl
triggerall = power >= 200 && statetype = C
triggerall = command = "holddown"
trigger1 = (Command = "b" && !AILevel) || (AILevel && (Random = [400,(402+Ailevel)])&& P2StateType != L)

;Удар оружием сидя
[State -1, Punch_in_crouch]
type = ChangeState
value = 403
triggerall = RoundState = 2 && ctrl
triggerall = statetype = C 
triggerall = p2bodydist x < 50
triggerall = command = "holddown"
trigger1 = (Command = "c" && !AILevel) || (AILevel && (Random = [450,(472+Ailevel)])&& P2StateType != L)

;Плазма сидя
[State -1, Plasmagun]
type = ChangeState
value = 404
triggerall = RoundState = 2 && ctrl
triggerall = power >= 300 && statetype = C
triggerall = p2bodydist x >= 50 
triggerall = command = "holddown"
trigger1 = (Command = "c" && !AILevel) || (AILevel && (Random = [450,(452+Ailevel)])&& P2StateType != L)

;Дробовик сидя
[State -1, Shotgun]
type = ChangeState
value = 406
triggerall = RoundState = 2 && ctrl
triggerall = power >= 450 && statetype = C
triggerall = command = "holddown"
trigger1 = (Command = "x" && !AILevel) || (AILevel && (Random = [500,(502+Ailevel)])&& P2StateType != L)

;Автомат сидя
[State -1, Machine_gun]
type = ChangeState
value = 407
triggerall = RoundState = 2 && ctrl
triggerall = power >= 400 && statetype = C
triggerall = command = "holddown"
trigger1 = (Command = "y" && !AILevel) || (AILevel && (Random = [550,(552+Ailevel)])&& P2StateType != L)

;Винтовка сидя
[State -1, Rifle]
type = ChangeState
value = 410
triggerall = RoundState = 2 && ctrl
triggerall = power >= 300 && statetype = C
triggerall = command = "holddown"
trigger1 = (Command = "z" && !AILevel) || (AILevel && (Random = [600,(602+Ailevel)])&& P2StateType = A)

;------------------АТАКИ В ВОЗДУХЕ--------------------------------------------------

;Стрельба одиночными в воздухе
[State -1, Gun_in_air]
type = ChangeState
value = 600
triggerall = RoundState = 2 && ctrl
triggerall = power >= 100 && statetype = A
triggerall = command != "holddown"
triggerall = p2bodydist x >= 30
trigger1 = (Command = "a" && !AILevel) || (AILevel && (Random = [350,(372+Ailevel)])&& P2StateType = A)

;Удар в воздухе
[State -1, Punch_in_air]
type = ChangeState
value = 607
triggerall = RoundState = 2 && ctrl
triggerall = statetype = A 
triggerall = command != "holddown"
triggerall = p2bodydist x < 30
trigger1 = (Command = "a" && !AILevel) || (AILevel && (Random = [350,(352+Ailevel)])&&P2StateType = A)

;Узи в воздухе
[State -1, Uzi_in_air]
type = ChangeState
value = 601
triggerall = RoundState = 2 && ctrl
triggerall = power >= 200 && statetype = A
triggerall = command != "holddown"
trigger1 = (Command = "b" && !AILevel) || (AILevel && (Random = [400,(402+Ailevel)])&& P2StateType = A)

;Плазма в воздухе
[State -1, Plasmagun]
type = ChangeState
value = 602
triggerall = RoundState = 2 && ctrl
triggerall = power >= 300 && statetype = A
triggerall = command != "holddown"
triggerall = p2bodydist x >= 50
trigger1 = (Command = "c" && !AILevel) || (AILevel && (Random = [450,(452+Ailevel)])&& P2StateType = A)

;Удар оружием в воздухе
[State -1, WeaponHit_in_air]
type = ChangeState
value = 608
triggerall = RoundState = 2 && ctrl
triggerall = statetype = A 
triggerall = command != "holddown"
triggerall = p2bodydist x < 50
trigger1 = (Command = "c" && !AILevel) || (AILevel && (Random = [450,(472+Ailevel)])&& P2StateType = A)

;Дробовик в воздухе
[State -1, Shotgun]
type = ChangeState
value = 604
triggerall = RoundState = 2 && ctrl
triggerall = power >= 450 && statetype = A
triggerall = command != "holddown"
trigger1 = (Command = "x" && !AILevel) || (AILevel && (Random = [500,(502+Ailevel)])&& P2StateType = A)

;Автомат в воздухе
[State -1, Machine_gun]
type = ChangeState
value = 605
triggerall = RoundState = 2 && ctrl
triggerall = power >= 400 && statetype = A
triggerall = command != "holddown"
trigger1 = (Command = "y" && !AILevel) || (AILevel && (Random = [550,(552+Ailevel)])&& P2StateType = A)

;Винтовка в воздухе
[State -1, Rifle]
type = ChangeState
value = 610
triggerall = RoundState = 2 && ctrl
triggerall = power >= 300 && statetype = A
triggerall = command != "holddown"
trigger1 = (Command = "z" && !AILevel) || (AILevel && (Random = [600,(602+Ailevel)])&& P2StateType = A)

;--------------------------------------------------------------