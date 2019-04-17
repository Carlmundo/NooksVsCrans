;Cmd File
;
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

;----- inicio dos comandos da AI ---------------------------------------------

[Command]
name = "AI_1"
command = D,D,D,F,F,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_2"
command = D,D,D,F,F,U,a+b+c+x+y+z
time = 1

[Command]
name = "AI_3"
command = D,D,D,F,F,UF,a+b+c+x+y+z
time = 1

[Command]
name = "AI_4"
command = D,D,D,F,F,D,a+b+c+x+y+z
time = 1

[Command]
name = "AI_5"
command = D,D,D,F,F,DF,a+b+c+x+y+z
time = 1

[Command]
name = "AI_6"
command = D,D,D,F,F,B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_7"
command = D,D,D,F,F,DB,a+b+c+x+y+z
time = 1

[Command]
name = "AI_8"
command = D,D,D,F,F,UB,a+b+c+x+y+z
time = 1

[Command]
name = "AI_9"
command = D,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_10"
command = D,D,D,F,UF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_11"
command = D,D,D,F,DF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_12"
command = D,D,D,F,D,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_13"
command = D,D,D,F,DB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_14"
command = D,D,D,F,B,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_15"
command = D,D,D,F,UB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_16"
command = D,D,D,F,F,F,a+b+c+x+y,z
time = 1

[Command]
name = "AI_17"
command = D,D,D,F,F,F,a+b+c+x,y,z
time = 1

[Command]
name = "AI_18"
command = D,D,D,F,F,F,a+b+c,x,y,z
time = 1

[Command]
name = "AI_19"
command = D,D,D,F,F,F,a+b,c,x,y,z
time = 1

;[Command]
;name = "AI_20"
;command = D,D,D,F,F,F,a,b,c,x,y,z
;time = 1

;[Command]
;name = "AI_21"
;command = D,D,D,F,F,F,a+b+c,x+y+z
;time = 1

;--------------------- fim AI comandos ------------------------------------

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "koopa"
command = ~D, DF, F, D, DF, F, z
time = 20

[Command]
name = "pegopelorabo"
command = ~D, DB, B, D, DB, B, z
time = 20

[Command]
name = "capfalcon"
command = ~D, DF, F, D, DF, F, a;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "MarioKart"
command = ~D, DF, F, D, DF, F, b;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "MetalMario"
command = ~D, DF, F, D, DF, F, c;~F, D, DF, F, D, DF, x
time = 20


[Command]
name = "fly"
command = ~D, DB, B, D, DB, B, c;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "Shouryuuken_x"
command = ~F, D, DF, x
time = 20

[Command]
name = "Shouryuuken_y"
command = ~F,D,DF,y
time = 15

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_x"
command = F, F, x

[Command]
name = "FF_y"
command = F, F, y


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
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "up_x"
command = U,x
time = 1

[Command]
name = "up_a"
command = /$U,a
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
name = "start"
command = s
time = 1

[command]
name = "banjo"
command = a+x

[command]
name = "link"
command = b+y

[command]
name = "luigi"
command = c+z

;-| Hold Dir |--------------------------------------------------------------
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

[command]
name = "barriga"
command = /+x
time = 15
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

;----------------- ativa鈬o da AI --------------------------
[State -1]
type = VarSet
trigger1 = command = "AI_1"
trigger2 = command = "AI_2"
trigger3 = command = "AI_3"
trigger4 = command = "AI_4"
trigger5 = command = "AI_5"
trigger6 = command = "AI_6"
trigger7 = command = "AI_7"
trigger8 = command = "AI_8"
trigger9 = command = "AI_9"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
trigger13 = command = "AI_13"
trigger14 = command = "AI_14"
trigger15 = command = "AI_15"
trigger16 = command = "AI_16"
trigger17 = command = "AI_17"
trigger18 = command = "AI_18"
trigger19 = command = "AI_19"
v = 59
value = 1
;----------------------------------------------------------------------
;----------- AI defesa ------------------------------------------------
;01 AI defesa ----------------------------------------------------------
[State -1]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 75
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 130
;-----------------------------------------------------------------------
;02 AI defesa abaixado ----------------------------------
[State -1]
type = ChangeState
value = 152
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Random <= 600
trigger1 = Ctrl && P2MoveType = A && StateType = C

;03 AI Mario Twister -------------------------------------------------------
[State -1]
type = ChangeState
value = 1700
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Random <= 400
trigger1 = Ctrl && P2MoveType = A && StateType = S
trigger1 = P2BodyDist X <= 70
;---------------------------------------------------------------------------
;04 AI escorrega
[State -1]
type = ChangeState
value = 400
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = P2BodyDist X <= 100 && Random <= 600
trigger1 = Ctrl && statetype != C
trigger1 = P2MoveType = A
;---------------------------------------------------------------------------
;05 coin
[State -1]
type = ChangeState
value = 1000
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = P2BodyDist X >= 140 && Random <= 600
trigger1 = p2statetype != C
;---------------------------------------------------------------------------
;06 AI Bomb ---------------------------------------------------------------
[State -1]
type = ChangeState
value = 1010
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && statetype = S
trigger1 = P2BodyDist X >= 140 && Random <= 600
trigger1 = p2statetype != C
;--------------------------------------------------------------------------
;5 AI Pego pelo rabo ------------------------------------------------------
[State -1]
type = ChangeState
value = 3010
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = P2BodyDist X <= 175 && Random <= 700
trigger1 = p2statetype != C
;--------------------------------------------------------------------------
;13 AI Mario Kart-----------------------------------------------------------
[State -1]
type = ChangeState
value = 1410
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = P2BodyDist X >= 150 && Random <= 900
trigger1 = p2statetype != C
;---------------------------------------------------------------------------
;7 AI Penguim -------------------------------------------------------------
[State -1]
type = ChangeState
value = 1200
triggerall = power >= 500
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 200
triggerall = numhelper(1201) = 0
trigger1 = var(1) ;Use combo condition (above)
;--------------------------------------------------------------------------
;8 AI Planta Carnivora-----------------------------------------------------
[State -1]
type = ChangeState
value = 1210
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = P2BodyDist X <= 100 && Random <= 800
triggerall = numhelper(1213) = 0
;---------------------------------------------------------------------------
;9 AI Banjo ----------------------------------------------------------------
[State -1]
type = ChangeState
value = 1300
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = P2BodyDist X <= 150 && Random <= 500
triggerall = numhelper(1301) = 0
;---------------------------------------------------------------------------
;10 AI Link -----------------------------------------------------------------
[State -1]
type = ChangeState
value = 1310
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = P2BodyDist X <= 160 && Random <= 500
triggerall = numhelper(1211) = 0
;---------------------------------------------------------------------------
;11 AI Luigi ---------------------------------------------------------------
[State -1]
type = ChangeState
value = 1320
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = P2BodyDist X <= 105 && Random <= 500
triggerall = numhelper(1221) = 0
;---------------------------------------------------------------------------
;12 AI Captain Falcon  -----------------------------------------------------
[State -1]
type = ChangeState
value = 1400
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = P2BodyDist X <= 120 && Random <= 700
triggerall = numhelper(1401) = 0
;---------------------------------------------------------------------------
;14 AI Matal Mario ---------------------------------------------------------
[State -1]
type = ChangeState
value = 1500
triggerall = power >= 2000
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 500
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;15 AI Voo ----------------------------------------------------------------
[State -1]
type = ChangeState
value = 1600
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 750
triggerall = power >= 1000
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;17 AI Koopa ---------------------------------------------------------------
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 900
;---------------------------------------------------------------------------

;20 AI Koopa ---------------------------------------------------------------
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 700
;---------------------------------------------------------------------------
;21 AI Koopa ---------------------------------------------------------------
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 700
;---------------------------------------------------------------------------

;----------------------------------------------------------------------------

;-------------- fim da AI ---------------------------------------------------

;----------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）

;---------------------------------------------------------------------------
;Shoryoken
[State -1, Maryuuken_y]
type = ChangeState
value = 500
triggerall = command = "Shouryuuken_y"
trigger1 = var(1) ;Use combo condition (above)


;Shoryoken
[State -1, Maryuuken_x]
type = ChangeState
value = 500
triggerall = command = "Shouryuuken_x"
trigger1 = var(1) ;Use combo condition (above)

;banjo
[State -1, banjo ]
type = ChangeState
value = 1300
triggerall = power >= 200
triggerall = command = "banjo"
triggerall = numhelper(1301) = 0
;trigger1 = statetype != A
trigger1 = var(1)

;link
[State -1, link ]
type = ChangeState
value = 1310
triggerall = power >= 200
triggerall = command = "link"
triggerall = numhelper(1311) = 0
;trigger1 = statetype != A
trigger1 = var(1)

;luigi
[State -1, luigi ]
type = ChangeState
value = 1320
triggerall = power >= 200
triggerall = command = "luigi"
triggerall = numhelper(1321) = 0
;trigger1 = statetype != A
trigger1 = var(1)

;cap. Falcon
[State -1, CapFalcon ]
type = ChangeState
value = 1400
triggerall = power >= 200
triggerall = command = "capfalcon"
triggerall = numhelper(1401) = 0
;trigger1 = statetype != A
trigger1 = var(1)
;Mario Kart
[State -1, MarioKart ]
type = ChangeState
value = 1410
triggerall = power >= 500
triggerall = command = "MarioKart"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
;trigger2 = movecontact != A


;Metal Mario
[State -1, MetalMario ]
type = ChangeState
value = 1500
triggerall = power >= 2000
triggerall = command = "MetalMario"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA

;---------------------------------------------------------------------------

;Voa
[State -1, Voa]
type = ChangeState
value = 1600
trigger1 = statetype = S
trigger1 = command = "fly"
triggerall = power >= 1000
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;furacao
[State -1, furacao x]
type = ChangeState
value = 1700
triggerall = command = "FF_x"
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;furacao
[State -1, furacao y]
type = ChangeState
value = 1700
triggerall = command = "FF_y"
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）
[State -1, Koopa]
type = ChangeState
value = 3000
triggerall = command = "koopa"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;---------------------------------------------------------------------------

[State -1, Pego pelo Rabo]
type = ChangeState
value = 3010
triggerall = command = "pegopelorabo"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

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
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;---------------------------------------------------------------------------
;Light Kung Fu Palm
;カンフー突き手（弱）
[State -1, Coin]
type = ChangeState
value = 1000
triggerall = power >= 50
triggerall = command = "QCF_x"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Palm
;カンフー突き手（強）
[State -1, Bomb]
type = ChangeState
value = 1010
triggerall = power >= 50
triggerall = command = "QCF_y"
trigger1 = var(1) ;Use combo condition (above)


;---------------------------------------------------------------------------
;Penguim
[State -1, Penguim]
type = ChangeState
value = 1200
triggerall = power >= 50
triggerall = command = "QCB_x"
triggerall = numhelper(1201) = 0
;trigger1 = statetype != A
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Blow
[State -1, Planta Carnivora]
type = ChangeState
value = 1210
triggerall = command = "QCB_y"
triggerall = numhelper(1213) = 0
trigger1 = var(1) ;Use combo condition (above)

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Crouch punch
[State -1,Crouch light punch ]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 450 && movehit

;---------------------------------------------------------------------------
;Crouch punch
[State -1,Crouch strong punch ]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 450 && movehit

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
