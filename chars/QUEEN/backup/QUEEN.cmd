;AI
[Command]
name = "AI01"
command = a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI02"
command = b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI03"
command = c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI04"
command = x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI05"
command = y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI06"
command = z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI07"
command = U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI08"
command = D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI09"
command = F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI10"
command = B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI11"
command = a,b,a,b,a,b,a,b,a,b,a,b
time = 0
[Command]
name = "AI12"
command = a,c,a,c,a,c,a,c,a,c,a,c
time = 0
[Command]
name = "AI13"
command = b,a,b,a,b,a,b,a,b,a,b,a
time = 0
[Command]
name = "AI14"
command = b,c,b,c,b,c,b,c,b,c,b,c
time = 0
[Command]
name = "AI15"
command = c,a,c,a,c,a,c,a,c,a,c,a
time = 0
[Command]
name = "AI16"
command = c,b,c,b,c,b,c,b,c,b,c,b
time = 0
[Command]
name = "AI17"
command = U,D,U,D,U,D,U,D,U,D,U,D
time = 0
[Command]
name = "AI18"
command = D,U,D,U,D,U,D,U,D,U,D,U
time = 0
[Command]
name = "AI19"
command = F,B,F,B,F,B,F,B,F,B,F,B
time = 0
[Command]
name = "AI20"
command = B,F,B,F,B,F,B,F,B,F,B,F
time = 0
[Command]
name = "AI21"
command = U,D,U,D,U,D,U,D,U,D,U,D
time = 0
[Command]
name = "AI22"
command = U,U,U,U,U,U,D,D,D,D,D,D
time = 0
[Command]
name = "AI23"
command = D,D,D,D,D,D,U,U,U,U,U,U
time = 0
[Command]
name = "AI24"
command = F,F,F,F,F,F,B,B,B,B,B,B
time = 0
[Command]
name = "AI25"
command = B,B,B,B,B,B,F,F,F,F,F,F
time = 0
[Command]
name = "AI26"
command = U,a,U,a,U,a,U,a,U,a,U,a
time = 0
[Command]
name = "AI27"
command = U,b,U,b,U,b,U,b,U,b,U,b
time = 0
[Command]
name = "AI28"
command = U,c,U,c,U,c,U,c,U,c,U,c
time = 0
[Command]
name = "AI29"
command = U,x,U,x,U,x,U,x,U,x,U,x
time = 0
[Command]
name = "AI30"
command = U,y,U,y,U,y,U,y,U,y,U,y
time = 0

;-----------------[power 1000����]-----------------------------------------
[Command];�˂��h��x
name = "bussashi_x"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command];�˂��h��y
name = "bussashi_x"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command];�˂��h��a
name = "bussashi_x"
command = ~D, DF, F, D, DF, F, a
time = 30

;-----------------[power 500����]-----------------------------------------
[Command];EX�E�_�f��
name = "Acid_EX"
command = ~D, DB, B, D, DB, B, x
time = 20

[Command];EX�E�_�f��
name = "Acid_EX"
command = ~D, DB, B, D, DB, B, a
time = 20

[Command];EX�E�_�f��
name = "Acid_EX"
command = ~D, DB, B, D, DB, B, y
time = 20

;----------------------------------------------------------
[Command];�͂�ŗh���Ԃ�
name = "Y_x"
command = ~B, DB, D, DF, F, x
time = 20

[Command];�͂�Ő�˂�
name = "Y_y"
command = ~B, DB, D, DF, F, y
time = 20

[Command];�͂�ŕ��蓊����
name = "Y_a"
command = ~B, DB, D, DF, F, a
time = 20

[Command];�ːix
name = "tosshin_x"
command = ~35$B, $F, x
time = 15

[Command];�ːiy
name = "tosshin_y"
command = ~35$B, $F, y
time = 15

[Command];�ːia
name = "tosshin_a"
command = ~35$B, $F, a
time = 15

[Command];�_�f��x
name = "Acid_x"
command = ~D, DB, B, x
time = 20

[Command];�_�f��y
name = "Acid_y"
command = ~D, DB, B, y
time = 20

[Command];�_�f��a
name = "Acid_a"
command = ~D, DB, B, a
time = 20

;-| Double Tap |--------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
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
name = "down_y"
command = /$D,y
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

;----------
;�A�ŗp
[Command]
name = "$fwd"
command = $F
time = 1

[Command]
name = "$back"
command = $B
time = 1

[Command]
name = "$up" 
command = $U
time = 1

[Command]
name = "$down"
command = $D
time = 1

;---------
[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holdz"
command = /$z
time = 1

;--------------------------------------------------------------------------
[Statedef -1]
;--------------------------------------------------------------------------
;�˂��h��
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000
trigger1 = command = "bussashi_x"
trigger1 = statetype != A
trigger1 = ctrl

;--------------------------------------------------------------------------
;�͂�ŕ��蓊����
[State -1]
type = ChangeState
value = 2300
triggerall = command = "Y_a"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�͂�Ő�˂�
[State -1,]
type = ChangeState
value = 2200
triggerall = command = "Y_y"
trigger1 = statetype != A
trigger1 = ctrl

;--------------------------------------------------------------------------
;�͂�ŗh���Ԃ�
[State -1]
type = ChangeState
value = 2100
triggerall = command = "Y_x"
triggerall = statetype != A
trigger1 = ctrl

;--------------------------------------------------------------------------
;EX�_�f��
[State -1]
type = ChangeState
value = 2000
triggerall = numhelper(1005) = 0
triggerall = numhelper(1006) = 0
triggerall = numhelper(1007) = 0
triggerall = power >= 1000
trigger1 = command = "Acid_EX"
trigger1 = statetype != A
trigger1 = ctrl

;--------------------------------------------------------------------------
;�G�C���A���E�E�H���A�[���Ă�
[State -1]
type = ChangeState
value = 1100
triggerall = numhelper(1100) <= 2
trigger1 = command = "b"
trigger1 = statetype != A && power >= 1000
trigger1 = ctrl

;--------------------------------------------------------------------------
;�ːi�͂�
[State -1]
type = ChangeState
value = 1600
trigger1 = command = "tosshin_a"
trigger1 = statetype != A
trigger1 = ctrl

;--------------------------------------------------------------------------
;�ːi��˂�
[State -1]
type = ChangeState
value = 1500
trigger1 = command = "tosshin_y"
trigger1 = statetype != A
trigger1 = ctrl

;--------------------------------------------------------------------------
;�ːi�p���`
[State -1]
type = ChangeState
value = 1400
trigger1 = command = "tosshin_x"
trigger1 = statetype != A
trigger1 = ctrl

;--------------------------------------------------------------------------
;�_�f��x
[State -1]
type = ChangeState
value = 1000
triggerall = numhelper(1005) = 0
triggerall = numhelper(1006) = 0
triggerall = numhelper(1007) = 0
trigger1 = command = "Acid_x"
trigger1 = statetype != A
trigger1 = ctrl

;--------------------------------------------------------------------------
;�_�f��a
[State -1]
type = ChangeState
value = 1025
triggerall = numhelper(1005) = 0
triggerall = numhelper(1006) = 0
triggerall = numhelper(1007) = 0
trigger1 = command = "Acid_a"
trigger1 = statetype != A
trigger1 = ctrl

;--------------------------------------------------------------------------
;�_�f��y
[State -1]
type = ChangeState
value = 1050
triggerall = numhelper(1005) = 0
triggerall = numhelper(1006) = 0
triggerall = numhelper(1007) = 0
trigger1 = command = "Acid_y"
trigger1 = statetype != A
trigger1 = ctrl

;--------------------------------------------------------------------------
;�_�b�V��
[State -1, Run Fwd]
type = null; ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;��ރ_�b�V��
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;�p���`
[State -1, Standing Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�p���`�Q�A��
;[State -1, Standing Punch2]
;type = ChangeState
;value = 205
;triggerall = command = "x"
;triggerall = command != "holddown"
;trigger1 = statetype != A
;trigger1 = stateno = 200 && AnimElemTime(4) >= 3

;---------------------------------------------------------------------------
;���Ⴊ�݃p���`
[State -1, Crouching Punch]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;��U���E��
[State -1,]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;----------------------------------------------------------------------------
;��U���E��
[State -1,]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holdback"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;----------------------------------------------------------------------------
;��U���E��
[State -1,]
type = ChangeState
value = 250
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;-----------------------------------------------------------------------------
;��U���E�m�[�}��
[State -1,]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = command = "holdback" && ctrl
trigger2 = command = "holddown" && ctrl
trigger3 = command = "holdback" && ctrl

;----------------------------------------------------------------------------
;�K���U���E���
[State -1]
type = ChangeState
value = 270
triggerall = command = "a"
triggerall = command = "holdback" || (command = "holddown" && command = "holdback")
triggerall = statetype != A
trigger1 = ctrl

;----------------------------------------------------------------------------
;�K���U���E����
[State -1]
type = ChangeState
value = 280
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command != "holdfwd" && command != "holdback"
triggerall = statetype != A
trigger1 = ctrl

;----------------------------------------------------------------------------
;�K���U���E�O��
[State -1,]
type = ChangeState
value = 290
triggerall = command = "a"
triggerall = command = "holdfwd" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;----------------------------------------------------------------------------
;�K���U���E������
[State -1,]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = command != "holddown" || (command != "holddown" && command != "holdback")
triggerall = statetype != A
trigger1 = ctrl
trigger2 = ctrl && command = "holdfwd"
