

;-| ���K�E�Z |--------------------------------------------------------
;�����ɂ͒��K�E�Z���L�q���Ă��������A�������O���uname =�v���ɏ����܂���
;�R�}���h�͐�΂Ɉ�������̂ɂ��Ă��������B
;�J���t�[�}���͎�p���`�Ƌ��p���`�ŋZ���o����悤�ɓ������O�̃R�}���h��
;���e����Ƌ��ɂȂ��Ă��܂��B
;�utime=20�v�Ə������ƂŁu�R�}���h��20�t���[���ȓ��ɓ��́v�Ɛݒ�ł��܂��B

[Command]
name = "DB_abc"
command = ~D, DB, B,a+b
time = 30

[Command]
name = "DB_xyz"
command = ~D, DF, F, a+b
time = 30

[Command]
name = "DF_xyz"
command = ~D, DF, F, x+y
time = 30

[Command]
name = "DF_*z"
command = ~D, DB, B, x+y
time = 30

;[Command]
;name = "BT"
;command = ~D, DF, F,a+x
;time = 30

[Command]
name = "FD_abc"
command = s
time = 30



;[Command]
;name = "Hack"
;command =~D, DF, F,a+x
;time = 30






;-| �K�E�Z |------------------------------------------------------


[Command]
name = "BCF_x"
command = ~F, DF, F, x
time = 25
[Command]
name = "BCF_x"
command = ~F, DF, F, y
time = 25
[Command]
name = "BCF_x"
command = ~F, DF, F, z
time = 25

[Command]
name = "CF_z"
command = ~D, DB, B, x
time = 25
[Command]
name = "CF_z"
command = ~D, DB, B, y
time = 25
[Command]
name = "CF_z"
command = ~D, DB, B, z
time = 25

[Command]
name = "CF_x"
command = ~D, DF, F, x
time = 25
[Command]
name = "CF_x"
command = ~D, DF, F, y
time = 25
[Command]
name = "CF_x"
command = ~D, DF, F, z
time = 25


[Command]
name = "CB_x"
command = ~D, DF, F, a
time = 25
[Command]
name = "CB_x"
command = ~D, DF, F, b
time = 25
[Command]
name = "CB_x"
command =~D, DF, F, c
time = 25

[Command]
name = "CB_a"
command = ~D, DB, B, a
time = 25
[Command]
name = "CB_b"
command = ~D, DB, B, b
time = 25
[Command]
name = "CB_c"
command = ~D, DB, B, c
time = 25

;[Command]
;name = "BCF_y"
;command = ~B,D, F, y

;[Command]
;name = "BCF_z"
;command = ~B,D, F, z

;[Command]
;name = "FC_x"
;command = ~F,D, x

;[Command]
;name = "FC_y"
;command = ~F,D, y

;[Command]
;name = "FC_z" 
;command = ~F,D, z

;[Command]
;name = "BDB_a" 
;command = a+x
;time=30


[Command]
name = "/a" 
command = /a
time = 1

[Command]
name = "/b" 
command = /b
time = 1

[Command]
name = "/c" 
command = /c
time = 1

[Command]
name = "~a" 
command = ~a
time = 1

[Command]
name = "~b" 
command = ~b
time = 1

[Command]
name = "~c" 
command = ~c
time = 1



[Command]
name = "CF_y"
command = ~D, DF, F, y




;[Command]
;name = "CF_a"
;command = ~D, DF, F, a

;[Command]
;name = "CF_b"
;command = ~D, DF, F, b

;[Command]
;name = "CF_c"
;command = ~D, DF, F, c




;[Command]
;name = "FF_ab"
;command = F, F, a+b

;[Command]
;name = "FF_a"
;command = F, F, a

;[Command]
;name = "FF_b"
;command = F, F, b

;[Command]
;name = "getup"
;command = F, D, B, a

;[Command]
;name = "getup"
;command = F, D, B, b

;[Command]
;name = "getup"
;command = F, D, B, c

;[Command]
;name = "tri"
;command = b+y

;�����������������������������������������_�b�V���U���R�}���h

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

;�����������������������������������������n�C�W�����v�R�}���h
;�~����������Ɖ����ď�������A�ƌ����Ӗ��B
[Command]
name = "h_jump"    
;command = ~1$D,$U
command = a+b+c
time = 10

;���������������������������������������������
;��������Ȃ���x+y+z�A�Ƃ����Ӗ�
[Command]
name = "away-b"    
command = /B,b+y
time = 10

;�����������������������������������������O����
;x+y+z�A�Ƃ����Ӗ�
[Command]
name = "away-f"    
command = b+y
time = 10

[Command]
name = "cz"    
command = c+z
time = 10

[Command]
name = "ax"    
command = a+x
time = 10

;-| �Q�񉟂��Z |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| �Q�E�R�̓��������Z |-----------------------------------------------
[Command]
name = "recovery"
command = x+y+z
time = 1

;-| �Q�E�R�̓��������Z |-----------------------------------------------
[Command]
name = "x+y+z"
command = x+y+z
time = 1

;-| �Q�E�R�̓��������Z |-----------------------------------------------
[Command]
name = "a+b+c"
command = a+b+c
time = 1

;-| �����ƃ{�^���ŏo���Z |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| �{�^���ݒ�i������Ȃ��j|---------------------------------------------------------
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

;-| �������ςȂ��ݒ�i������Ȃ��j-------------------------------------------------------
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
name = "DU"
command = D, U
time = 20

; ���̋L�q���͐�΂ɏ����Ȃ��ł��������B
[Statedef -1]
;===========================================================================


;---------------------------------------------------------------------------
;�J�E���^�[
;---------------------------------------------------------------------------
;[State -1, ]
;type = VarSet
;var(16) = 900
;var(17) = 1
;triggerall = stateno = [150,159]
;triggerall = stateType != A
;trigger1 = (command = "CF_a")||(command = "CF_b")||(command = "CF_c")
;trigger2 = var(59) = 1
;trigger2 = P2BodyDist X < 50
;trigger2 = EnemyNear,MoveType != A
;trigger3 = var(58) = 1
;trigger3 = (command = "a") || (command = "b") || (command = "c") || (command = "x") || (command = "y") || (command = "z")

;[State -1, ]
;type = VarSet
;var(16) = 640
;var(17) = 1
;triggerall = stateno = [150,159]
;triggerall = stateType = A
;trigger1 = (command = "CF_a")||(command = "CF_b")||(command = "CF_c")
;trigger2 = var(59) = 1
;trigger2 = P2BodyDist X < 50
;trigger2 = EnemyNear,MoveType != A
;trigger3 = var(58) = 1
;trigger3 = (command = "a") || (command = "b") || (command = "c") || (command = "x") || (command = "y") || (command = "z")




;===========================================================================
;===========================================================================
;===========================================================================
;���K���S�N��
;[State -1, h4]
;type = ChangeState
;value = 3020
;triggerall = command = "Hack"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;�o���b�g�^�C��
;[State -1]
;type = ChangeState
;value = 3005
;triggerall = command = "BT"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;���K_�A�b�v�O���[�h
[State -1]
type = ChangeState
value = 3070
triggerall = command = "FD_abc"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;���K_�w�����K�g�����O�C
;[State -1, h3]
;type = ChangeState
;value = 3040
;triggerall = command = "DB_abc"
;triggerall = power >= 1000
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;���K_�w�����K�g�����O�C
[State -1, h3]
type = ChangeState
value = 3400
triggerall = command = "DB_abc"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;���K���R����
[State -1, h3]
type = ChangeState
value = 3010
triggerall = command = "DB_xyz"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;���K���P�_�u���K��
[State -1, h1]
type = ChangeState
value = 3000
triggerall = command = "DF_xyz"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;���K���Q�_�u���K��
[State -1, h2]
type = ChangeState
value = 3001
triggerall = command = "DF_*z"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;===========================================================================

;---------------------------------------------------------------------------
;�K�E�V�K����
;[State -1, s7]
;type = ChangeState
;value = 1070
;triggerall = command = "CF_x"
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;�K�E�V�K����
;[State -1, s7]
;type = ChangeState
;value = 1070
;triggerall = command = "CF_y"
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;�K�E�V�K����
;[State -1, s7]
;type = ChangeState
;value = 1070
;triggerall = command = "CF_z"
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;�K�E�R�}�V���K���i��j
[State -1, s3l]
type = ChangeState
value = 1032
triggerall = command = "BCF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�K�E�R�}�V���K���i��j
[State -1, s3l]
type = ChangeState
value = 1060
triggerall = command = "cz"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;�K�E�R�}�V���K���i���j
;[State -1, s3m]
;type = ChangeState
;value = 1031
;triggerall = command = "BCF_y"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = 100) || (stateno = 105)
;trigger3 = (stateno = [200,299]) || (stateno = [400,499])
;trigger3 = movecontact
;trigger4 = (stateno = [1060,1062]) && (movecontact)

;---------------------------------------------------------------------------
;�K�E�R�}�V���K���i���j
;[State -1, s3s]
;type = ChangeState
;value = 1030
;triggerall = command = "BCF_z"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = 100) || (stateno = 105)
;trigger3 = (stateno = [200,299]) || (stateno = [400,499])
;trigger3 = movecontact
;trigger4 = (stateno = [1060,1062]) && (movecontact)

;---------------------------------------------------------------------------
;�K�E�R�}�V���K���i�ǉ���j
;[State -1, s3l plus]
;type = varset 
;triggerall = command = "FC_x" 
;trigger1 = stateno = [1030,1032] 
;var(2) = 1 ;

;[State -1, s3l plus] 
;type = ChangeState 
;triggerall = var(2) = 1 
;triggerall = statetype != A 
;trigger1 = (stateno = 1030 && Animelemtime(9) = 4)
;trigger2 = (stateno = 1031 && Animelemtime(9) = 4)
;trigger3 = (stateno = 1032 && Animelemtime(9) = 4) 
;value = 1042 

;---------------------------------------------------------------------------
;�K�E�R�}�V���K���i�ǉ����j
;[State -1, s3m plus]
;type = varset 
;triggerall = command = "FC_y" 
;trigger1 = stateno = [1030,1032] 
;var(2) = 2 

;[State -1, s3m plus] 
;type = ChangeState 
;triggerall = var(2) = 2 
;triggerall = statetype != A 
;trigger1 = (stateno = 1030 && Animelemtime(9) = 4)
;trigger2 = (stateno = 1031 && Animelemtime(9) = 4)
;trigger3 = (stateno = 1032 && Animelemtime(9) = 4) 
;value = 1041 

;---------------------------------------------------------------------------
;�K�E�R�}�V���K���i�ǉ����j
;[State -1, s3s plus]
;type = varset 
;triggerall = command = "FC_z" 
;trigger1 = stateno = [1030,1032] 
;var(2) = 3 

;[State -1, s3s plus] 
;type = ChangeState 
;triggerall = var(2) = 3 
;triggerall = statetype != A 
;trigger1 = (stateno = 1030 && Animelemtime(9) = 4)
;trigger2 = (stateno = 1031 && Animelemtime(9) = 4)
;trigger3 = (stateno = 1032 && Animelemtime(9) = 4) 
;value = 1040 

;---------------------------------------------------------------------------
;�K�E�W�}�g����b
;[State -1, s8]
;type = ChangeState
;value = 1080
;triggerall = var(9) = 0
;triggerall = command = "BDB_a"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = 100) || (stateno = 105)
;trigger3 = (stateno = [200,299]) || (stateno = [400,499])
;trigger4 = (stateno = [1060,1062])

;---------------------------------------------------------------------------
;�K�E�S�K���i��j
[State -1, s4l]
type = ChangeState
value = 1050
triggerall = command = "CF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;�K�E�S�K���i���j
;[State -1, s4m]
;type = ChangeState
;value = 1051
;triggerall = command = "CF_y"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = 100) || (stateno = 105)
;trigger3 = (stateno = [200,299]) || (stateno = [400,499])
;trigger3 = movecontact
;trigger4 = (stateno = [1060,1062]) && (movecontact)

;---------------------------------------------------------------------------
;�K�E�S�K���i���j
[State -1, s4s]
type = ChangeState
value = 1052
triggerall = command = "CF_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;�K�E�U����i��j
[State -1, s6l]
type = ChangeState
value = 1500
triggerall = command = "CB_x"
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;�K�E�U����i���j
;[State -1, s6m]
;type = ChangeState
;value = 1061
;triggerall = command = "CB_y"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;�K�E�U����i���j
;[State -1, s6s]
;type = ChangeState
;value = 1062
;triggerall = command = "CB_z"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;�K�E�P�L�b�N�i��j
[State -1, s1l]
type = ChangeState
value = 1000
triggerall = command = "CB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;�K�E�P�L�b�N�i���j
[State -1, s1m]
type = ChangeState
value = 1003
triggerall = command = "CB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;�K�E�P�L�b�N�i���j
[State -1, s1s]
type = ChangeState
value = 1005
triggerall = command = "CB_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59)!=1
triggerall = roundstate=2
triggerall = command = "c"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;===========================================================================
;���o�[�O���ꋭ�U���i�\�o�b�g�j
[State -1]
type = ChangeState
value = 300
triggerall = command != "holddown"
trigger1 = statetype = S ;����
trigger1 = stateno != 100 ;�_�b�V�������ǂ���
trigger1 = command = "fwd_c"
trigger1 = ctrl
;---------------------------------------------------------------------------
;�_�b�V���U���i�\�o�b�g�j
;[State -1]
;type = ChangeState
;value = 305
;triggerall = command != "holddown"
;trigger1 = stateno = 100 ;�_�b�V����
;trigger1 = command = "fwd_a"
;trigger1 = ctrl
;trigger2 = stateno = 100
;trigger2 = command = "fwd_b"
;trigger2 = ctrl
;trigger3 = stateno = 100
;trigger3 = command = "fwd_c"
;trigger3 = ctrl

;---------------------------------------------------------------------------
;�n�C�W�����v
;[State -1, Run Fwd]
;type = ChangeState
;value = 840
;trigger1 = command = "h_jump"
;trigger1 = statetype != A
;trigger1 = ctrl

;---------------------------------------------------------------------------
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
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
;�󒆑O�_�b�V��
;���ʂ̃X�e�[�g�A���̒��ł͈�ԊȒP�ȃX�e�[�g
;�������󒆃_�b�V����A���łł��Ȃ��悤�Ɂustateno ! = 2300�v�Ƃ��Ă��܂�
;�ڍׂ�airdash.cns��

[State -1, airrun]
type = ChangeState
value = 2300
triggerall = var(59) = 0
triggerall = statetype = A
trigger1 = command = "FF"
trigger1 = ctrl
trigger1 = stateno != 2300

;---------------------------------------------------------------------------
;�󒆌��_�b�V��
;���ʂ̃X�e�[�g�A���̒��ł͈�ԊȒP�ȃX�e�[�g
;�������󒆃_�b�V����A���łł��Ȃ��悤�Ɂustateno ! = 2301�v�Ƃ��Ă��܂�
;�ڍׂ�airdash.cns��

[State -1, airrun]
type = ChangeState
value = 2301
trigger1 = command = "BB"
triggerall = statetype = A
trigger1 = ctrl
trigger1 = stateno != 2301

;---------------------------------------------------------------------------
;�A�h�o���V���O�K�[�h
;[State -1]
;type = ChangeState
;value = 830
;;triggerall = var(59) = 0
;triggerall = roundstate = 2
;triggerall = command = "x+y+z"
;triggerall = prevstateno != [830,831]
;trigger1 = stateno = 150 || stateno = 151 || stateno = 152 || stateno = 153
;ignorehitpause = 1

;---------------------------------------------------------------------------
;�p���[����
;�V�����uholdx�v�uholdy�v�Ƃ����R�}���h�����܂�
;���킹���X��Y�𓯎��ɉ����Ƃ��Ă��Ƃł��B
;�p���[���l�`�w�Ȃ̂ɗ��߂�͕̂ςȂ̂Ńg���K�[��power != 3000��t���܂��B
;�ڍׂ�power.cns��

;[State -1, Run Back]
;type = ChangeState
;value = 2000
;triggerall = power != 3000
;trigger1 = command = "holdx"
;trigger1 = command = "holdy"
;trigger1 = statetype = S
;trigger1 = ctrl

;---------------------------------------------------------------------------
;�X�g���C�J�[
[State 2000,1];���w���p�[���Ăяo��
type = Helper
triggerall=NumHelper(2000)=0
triggerall = power >= 500
trigger1 = command = "ax"
id = 2000
name = "trinity"
sprpriority = 4
pos = -300,-150;-300,-150
postype = p2
facing = 1
stateno = 2010;���Ăяo���ꂽ�w���p�[�͂��̃X�e�[�g����n�܂�
helpertype = normal
keyctrl = 0          
ownpal = 0


;---------------------------------------------------------------------------

;�����
;�ƂĂ��ȒP�ȃX�e�[�g�ł��B
;�����ł���Ă����Ȃ��Ƃ́u�������v�ł��B
;�ڍׂ�away.cns��

[State -1, Away]
type = ChangeState
value = 115
triggerall = command = "away-b"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------

;�O����
;�ƂĂ��ȒP�ȃX�e�[�g�ł��B
;�����ł���Ă����Ȃ��Ƃ́u�������v�ł��B
;�ڍׂ�away.cns��

[State -1, Away]
type = ChangeState
value = 110
triggerall = command = "away-f"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------

;�N���オ��
;[State -1, getup]
;type = ChangeState
;value = 5125
;triggerall = command = "getup"
;triggerall = command != "holddown"
;trigger1 = stateno = 5110
;trigger1 = statetype = L
;trigger1 = time > 5

;---------------------------------------------------------------------------




;===========================================================================
;---------------------------------------------------------------------------





;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger5 = prevstateno != 200

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,249])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,449])&& movecontact
trigger6 = stateno = 100

;---------------------------------------------------------------------------

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = 100

;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,249])&& movecontact
trigger3 = (stateno = [400,449])&& movecontact
trigger4 = stateno = 100

;---------------------------------------------------------------------------
;����
;[State -1, Taunt]
;type = ChangeState
;value = 195
;trigger1 = statetype != A
;trigger1 = command = "start"
;trigger1 = ctrl

;---------------------------------------------------------------------------

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact   

;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,249])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,449])&& movecontact 

;---------------------------------------------------------------------------

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100  

;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,249])&& movecontact
trigger3 = (stateno = [400,449])&& movecontact  

;---------------------------------------------------------------------------

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 100000

;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,609])&& movecontact
trigger3 = (stateno = [630,639])&& movecontact
trigger4 = stateno = 100000

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,619])&& movecontact
trigger3 = (stateno = [630,649])&& movecontact
trigger4 = stateno = 100000

;---------------------------------------------------------------------------

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,609])&& movecontact
trigger3 = stateno = 100000

;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,619])&& movecontact
trigger3 = (stateno = [630,639])&& movecontact
trigger4 = stateno = 100000

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,649])&& movecontact
trigger4 = stateno = 100000

;---------------------------------------------------------------------------
;�������p���`�ǉ��U���P
;[State -1, Stand Strong Punch2]
;type = ChangeState
;value = 221
;triggerall = command = "x"
;triggerall = command != "holddown"
;triggerall = statetype = S 
;trigger1 = (movecontact) && (stateno = 220)

;---------------------------------------------------------------------------
;������p���`�ǉ��U���P
[State -1, Stand Light Punch1]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S 
trigger1 = ctrl
trigger2 = (movecontact) && (stateno = 200)

;---------------------------------------------------------------------------
;������p���`�ǉ��U���Q
[State -1, Stand Light Punch2]
type = ChangeState
value = 202
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S 
trigger1 = ctrl
trigger2 = (movecontact) && (stateno = 201)

;---------------------------------------------------------------------------


;Super Jump
[State -1, super jump ]
type = ChangeState
value = 9996
trigger1 = command = "DU"
trigger1 = ctrl ; these means that you can make the move when you control the char
trigger1 = statetype != A ; these is to make that you cant use the superjump while you are in the air
; If you want to make a launcher you can use these 
;trigger2 = (stateno = yyy) && (movehit) && (command = "holdup") ;yyy right here is the stateno for your lancher

[State -3,veladd]
type = Veladd
triggerall =command = "holdfwd"
triggerall = prevstateno = 9996 ; the superjumo state
trigger1 = stateno = 50; jump state
x = .2 ; maybe you need to modify these value

[State state-3,veladd]
type = Veladd
triggerall =command = "holdback"
triggerall = prevstateno = 9996
trigger1 = stateno = 50
x = -.2