;-| super motions |--------------------------------------------------------

[command]
name = "Mine Cart"
command = ~F, a
time = 10

[command]
name = "Mine Cart2"
command = ~F, b
time = 10

[command]
name = "Rambi"
command = ~z
time = 1

[command]
name = "Funkey"
command = ~F, z
time = 10

;---------------------------------------------------------------------------
[Command];                                                               run
name = "FF"
command = F, F
time = 10
;---------------------------------------------------------------------------
[Command];                                                          hop back
name = "BB"
command = B, B
time = 10
;---------------------------------------------------------------------------
[Command];                                                          recovery
name = "recovery"
command = a+b
time = 1
;---------------------------------------------------------------------------
[Command];                                                             holda
name = "holda"
command = /a
time = 1
;---------------------------------------------------------------------------
[Command];                                                             holdy
name = "holdy"
command = /y
time = 1
;---------------------------------------------------------------------------
[Command];                                                                 a
name = "a"
command = a
time = 1
;---------------------------------------------------------------------------
[Command];                                                                 b
name = "b"
command = b
time = 1
;---------------------------------------------------------------------------
[Command];                                                                 c
name = "c"
command = c
time = 1
;---------------------------------------------------------------------------
[Command];                                                                 x
name = "x"
command = x
time = 1
;---------------------------------------------------------------------------
[Command];                                                                 y
name = "y"
command = y
time = 1
;---------------------------------------------------------------------------
[Command];                                                                 z
name = "z"
command = z
time = 1
;---------------------------------------------------------------------------
[Command];                                                           towards
name = "holdfwd"
command = /$F
time = 1
;---------------------------------------------------------------------------
[Command];                                                              away
name = "holdback"
command = /$B
time = 1
;---------------------------------------------------------------------------
[Command];                                                                up
name = "holdup"
command = /$U
time = 1
;---------------------------------------------------------------------------
[Command];                                                              down
name = "holddown"
command = /$D
time = 1
;---------------------------------------------------------------------------
[Command];                                                      hold up-back
name = "holdUB"
command = /$UB
time = 1
;---------------------------------------------------------------------------
[Command];                                                   hold up-forward
name = "holdUF"
command = /$UF
time = 1
;---------------------------------------------------------------------------
[Statedef -1]
;___________________________________________________________________________

;---------------------------------------------------------------------------
;ディンキーとトロッコで体当たり
[State -1, Mine Cart Carnage]
type = ChangeState
value = 3050
triggerall = command = "Mine Cart2"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact
;---------------------------------------------------------------------------
;ディクシーとトロッコで体当たり
[State -1, Mine Cart Carnage]
type = ChangeState
value = 3000
triggerall = command = "Mine Cart"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
;---------------------------------------------------------------------------
;ランビのスーパーダッシュ
[State -1, Rambi]
type = ChangeState
value = 2060
triggerall = command = "Rambi"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = movecontact

;---------------------------------------------------------------------------
; ドンキーヘッドバット
[State -1, Headbutt]
type = ChangeState
value = 2000
trigger1 = command = "c"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;スピニングコング
[State -1, Jump Light Kick]
type = ChangeState
value = 2010
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ファンキーのフライングサーフィン
[State -1, Funkey Kong]
type = ChangeState
value = 2050
triggerall = command = "Funkey"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1];                                                            punch
type = ChangeState
value = 210
trigger1 = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
[State -1];                                                             kick
type = ChangeState
value = 220
trigger1 = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
[State -1];                                                      ground slap
type = ChangeState
value = 230
triggerall = statetype != A
triggerall = ctrl = 1
triggerall = command = "holddown"
trigger1 = command = "b"
;---------------------------------------------------------------------------
[State -1];                                                            pound
type = ChangeState
value = 200
triggerall = statetype != A
triggerall = command = "holddown"
triggerall = ctrl = 1
trigger1 = command = "a"
;---------------------------------------------------------------------------
[State -1];                                                             roll
type = ChangeState
value = 400
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "x"
;---------------------------------------------------------------------------
[State -1];                                                            MarioKart
type = ChangeState
value = 440
triggerall = statetype != A
triggerall = command = "holddown"
triggerall = ctrl = 1
trigger1 = command = "c"
;---------------------------------------------------------------------------
[State -1];                                                         air kick
type = ChangeState
value = 240
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
[State -1];                                                        air punch
type = ChangeState
value = 250
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
[State -1];                                                            crawl
type = ChangeState
value = 23
trigger1 = command = "holdfwd"
trigger1 = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
[State -1];                                                     fast advance
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
[State -1];                                                     fast retreat
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
[State -1];                                                   pick up target
type = ChangeState
value = 300
triggerall = command = "y"
triggerall = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------