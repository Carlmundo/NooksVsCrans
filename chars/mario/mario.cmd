; �J���t�[�}���̓��̓R�}���h��`�t�@�C���ł��B
; �R�}���h�̓��̓L�[��ݒ肷��p�[�g�ƁA�Z�����s���邽�߂̏�����ݒ肷��p�[�g�ɕ�����Ă��܂��B
;------------------------------------------------------------------------------
;==============================================================================
; ���̓L�[�̐ݒ�p�[�g
;==============================================================================
;------------------------------------------------------------------------------
;���ݒ�͂��̌`�����܂莖�ł��B�ڍׂ͈ȉ��Q�ƁB
;
;[Command]
;name = "***"
;command = ###
;time = &&&
;
;���R�}���h�̖��O�F�uname = "***"�v�Ƃ������ɓ���܂��B***�ɕ��������Ă��������B
; �@�@�@�@�@�@�@�@�A���t�@�x�b�g�͑啶���Ə������ł���ʂ���܂��B���{����\�ł��B
;
;���w����@�F�ucommand = ###�v�Ƃ������ɓ���܂��B
;�@�@�@�@�@�@###�ɉ��L�̃L�[��g�ݍ��킹���͂���R�}���h��ݒ肵�Ă��������B
;
;�@�@�����L�[�F�@B, DB, D, DF, F, UF, U, UB�@�i�S�đ啶���Łj
;�@�@�@�@�@�@�@�@B=Back�i��j�ED=Down�i���j�EF=Forward�i�O�j�EU=Up�i��j�ɂȂ��Ă��܂��B
;
;�@�@�{�^���@�F�@a, b, c, x, y, z, s �@�@�@�@�i�S�ď������Łj
; 
;�@�����ꕶ��
;
;�@�@�X���b�V���i / �j�F�{�^�����������ςȂ��ɂ���ꍇ�͂�������܂��B
;�@�@�@�@�@�@�@�@��Fcommand = /F�@�@�@�i�O�L�[���������܂܂ɂ���j
;�@�@�@�@�@�@�@�@�@�@command = /B,y�@�@�i��L�[���������܂܂x�{�^������́j
;
;�@�@�`���_�@�@�i ~ �j�F�{�^����������鎖��F��������ꍇ�͂�������܂��B
;�@�@�@�@�@�@�@�@��Fcommand = ~c�@�@�@�i�b�{�^���𗣂��j
;�@�@�@�@�@�@�@�@�@�@command = ~DB,DF,x�i�΂ߌ㉺�𗣂��Ď΂ߑO��=>�w�{�^���̏��Ԃɓ��́j
;
;�@�@�@�@�@�@�@�@�����l��ǉ����鎖�ŁA�{�^���𗣂��܂ł̎��ԁA������w���߁x��ݒ�o���܂��B
;�@�@�@�@�@�@�@�@��Fcommand = ~20z�@�@�i�y�{�^�����������܂܂ɂ��A�Q�O�t���[����ɗ����j
;�@�@�@�@�@�@�@�@�@�@command = ~40B,F,b�i��L�[���������܂܂ɂ��A�S�O�t���[����ɗ����đO�L�[=>�a�{�^���̏��Ԃɓ��́j
;
;�@�@�h���@�@�@�i $ �j�F�����̕����L�[�v�f����͏o����悤�ɂ���ꍇ�͂�������܂��B
;�@�@�@�@�@�@�@�@��Fcommand = $U�@�@�@�i��E�΂ߑO��E�΂ߌ��̂ǂꂩ��Ŏn�߂Ă��ǂ��j
;�@�@�@�@�@�@�@�@�@�@command = $DF �@�@�i���E�΂ߑO���E�O�̂ǂꂩ��Ŏn�߂Ă��ǂ��j
;
;�@�@�v���X�@�@�i + �j�F�{�^���𓯎���������ꍇ�͂�������܂��B
;�@�@�@�@�@�@�@�@��Fcommand = a+b �@�@�i�`�{�^���Ƃa�{�^���𓯎��������܂��j
;�@�@�@�@�@�@�@�@�@�@command = x+y+z �@�i�w�{�^���Ƃx�{�^���Ƃy�{�^���𓯎��������܂��j
;�@�@�@�@�@�@�@�@�@�@command = F+c �@�@�i�O�L�[�Ƃb�{�^���𓯎��������܂��j
;
;�@�������̓��ꕶ���́A�g�ݍ��킹�Ďg�p���鎖���\�ł��B
;�@�@�@�@�@�@�@�@��Fcommand = ~30$D,a+b
;�@�@�@�@�@�@�@�@�@�@�@�@�@�i���v�f���R�O�t���[�����߂ė�������ɂ`�{�^���Ƃa�{�^���𓯎��������܂��j
;
;�����̓R�}���h��t���ԁF�utime = &&&�v�Ƃ������ɓ���܂��B�I�v�V�����Ȃ̂ŏȗ��\�B
;�@�@�@�@�@�@�@�@�@�@�@�@&&&�ɃR�}���h����͏o���鎞�Ԃ����Ă��������B���Ԃ̓t���[�����ł��i�P�t���[����1/60�b�j�B
;�@�@�@�@�@�@�@�@��Ftime = 24�@�i���͎�t���Ԃ��Q�S�t���[���i0.4�b�j�ɐݒ�j
;
; ��͎��ۂɓo�^����Ă�����̂��Q�Ƃ��Ă��������B
;==============================================================================
[Command]
name = "AI0"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI2"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI3"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI4"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI5"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI6"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI7"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI8"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI9"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI10"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI11"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI14"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI16"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0
[Command]
name = "AI18"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI19"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI20"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI21"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI22"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI23"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI24"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI25"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI26"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI27"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI28"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI29"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI30"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI31"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI32"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI33"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI34"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI35"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI36"
command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI37"
command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time = 0
[Command]
name = "AI38"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0
[Command]
name = "AI39"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI40"
command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI41"
command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
time = 0
[Command]
name = "AI42"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI43"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
time = 0
[Command]
name = "AI44"
command = z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
time = 0
[Command]
name = "AI45"
command = z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z
time = 0
[Command]
name = "AI46"
command = z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z
time = 0
[Command]
name = "AI47"
command = z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI48"
command = z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
time = 0
[Command]
name = "AI49"
command = z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
time = 0
[Command]
name = "AI50"
command = z,z,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
time = 0
;------------------------------------------------------------------------------
;-| ���K�E�Z |-----------------------------------------------------------------

[Command]
name = "�}���I�t�@�C�i��"    
command = D,F,b
time = 30


;------------------------------------------------------------------------------
;-| �K�E�Z |-------------------------------------------------------------------


[Command]
name = "��X�}"    
command = U,a
time = 5

[Command]
name = "�O�X�}"    
command = F,a
time = 5

[Command]
name = "���X�}"    
command = D,a
time = 10




[Command]
name = "�|���v"    
command = /D,b
time = 25


[Command]
name = "�X�[�p�[�}���g"    
command = /F,b
time = 25


[Command]
name = "�X�[�p�[�W�����v�p���`"    
command = /U,b
time = 25


[Command]
name = "��a"    
command = /D,a
time = 25


[Command]
name = "�Oa"    
command = /F,a
time = 25


[Command]
name = "��a"    
command = /B,a
time = 25


[Command]
name = "��a"    
command = /U,a
time = 25

[Command]
name = "�O�]"
command = F
time = 10

[Command]
name = "��]"
command = B
time = 10

[Command]
name = "���̏���"
command = D
time = 10

[Command]
name = "�󒆉��"
command = c
time = 1






[Command]
name = "�V���[�g�W�����v"
command = U
time = 1

;------------------------------------------------------------------------------
;-| �L�[�Q��A������ |---------------------------------------------------------
[Command]
name = "FF"     ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = F, F
time = 10

[Command]
name = "BB"     ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = y
time = 10

;------------------------------------------------------------------------------
;-| �������� |-----------------------------------------------------------------
[Command]
name = "recovery"   ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = c
time = 1

[Command]
name = "recovery"   ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = a+b
time = 1
;================================================

[Command]
name="holda"
command=/a
time=1
[Command]
name="holdb"
command=/b
time=1
[Command]
name="holdc"
command=/c
time=1
[Command]
name="holdx"
command=/x
time=1
[Command]
name="holdy"
command=/y
time=1
[Command]
name="holdz"
command=/z
time=1
[Command]
name="start"
command=s
time=1

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;-| �����L�[�{�{�^�� |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1


;================================================

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

[Command]
name = "airjump"
command = U
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1
;------------------------------------------------------------------------------
;-| �{�^���P�� |---------------------------------------------------------------
[Command]
name = "a"
command = a
time = 30

[Command]
name = "z"
command = z
time = 30

[Command]
name = "b"
command = b
time = 30

[Command]
name = "y"
command = y
time = 25

[Command]
name = "c"
command = c
time = 25

[Command]
name = "x"
command = x
time = 25

[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1
;-| �����L�[�������ςȂ� |-----------------------------------------------------
[Command]
name = "holdfwd"   ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = /$F
time = 1

[Command]
name = "holdback"  ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = /$B
time = 1

[Command]
name = "holdup"    ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = /$U
time = 1

[Command]
name = "holddown"  ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = /$D
time = 1

;==============================================================


[Statedef -1]


;------------------------------------------------------------------------------

[State -1, �}���I�t�@�C�i��]
type = ChangeState
value = 3000
triggerall =NumHelper(3000) = 0
triggerall =NumHelper(3100) = 0
triggerall = var(59) != 1
triggerall = command = "�}���I�t�@�C�i��"
triggerall = power >= 3000
trigger1 = ctrl = 1
;------------------------------------------------------------------------------
[State -1,�|���v_S�ő嗭��]
type = ChangeState
value = 920
triggerall = var(59) != 1
triggerall =var(0) = 4
triggerall = command = "�|���v"
trigger1 = statetype = C
trigger1 = ctrl 
;------------------------------------------------------------------------------
[State -1,�|���v_S]
type = ChangeState
value = 900
triggerall = var(59) != 1
triggerall =var(0) != 4
triggerall = command = "�|���v"
trigger1 = statetype = C
trigger1 = ctrl 

;------------------------------------------------------------------------------

[State -1,�X�[�p�[�}���g]
type = ChangeState
value = 800
triggerall = var(59) != 1
triggerall = command = "�X�[�p�[�}���g"
trigger1 = statetype = S
trigger1 = ctrl 


;------------------------------------------------------------------------------


[State -1,�X�[�p�[�}���g]
type = ChangeState
value = 850
triggerall = var(59) != 1
triggerall = command = "�X�[�p�[�}���g"
trigger1 = statetype = A
trigger1 = ctrl 

;--------------------------------------------------------------------------------

[State -1,�X�[�p�[�W�����v�p���`_S]
type = ChangeState
value = 700
triggerall = var(59) != 1
triggerall = command = "�X�[�p�[�W�����v�p���`"
triggerall = statetype = S
trigger1 = stateno = 40
trigger2 = stateno = [120,155]
trigger3 = stateno = 2200
trigger3 = movecontact 
;--------------------------------------------------------------------------------

[State -1,�X�[�p�[�W�����v�p���`_A]
type = ChangeState
value = 750
triggerall = var(59) != 1
triggerall = command = "�X�[�p�[�W�����v�p���`"
triggerall = statetype = A
trigger1 = ctrl 
;-------------------------------------------------------
[State -1,�X���C�f�B���O]
type = ChangeState
value = 2200
triggerall = var(59) != 1
triggerall = command = "�Oa"
triggerall = statetype = S
triggerall = stateno = 100
trigger1 = ctrl 
;-------------------------------------------------------
[State -1,��X�}]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = command = "��X�}"
triggerall = statetype = S
trigger1 = stateno = 40
trigger2 = stateno = [120,155]
;-------------------------------------------------------
[State -1,���X�}]
type = ChangeState
value = 2300
triggerall = var(59) != 1
triggerall = command = "���X�}"
triggerall = statetype = S
trigger1 = ctrl 
;-------------------------------------------------------
[State -1,�O�X�}]
type = ChangeState
value = 2500
triggerall = var(59) != 1
triggerall = command = "�O�X�}"
triggerall = statetype = S
trigger1 = ctrl 
;---------------------------------------------------------------------

[State -1,�}���I�T�C�N����_S]
type = ChangeState
value = 500
triggerall = var(59) != 1
triggerall = command = "��a"
triggerall = statetype = C
trigger1 = ctrl 
;---------------------------------------------------------------------
[State -1,���e�I�i�b�N��_A]
type = ChangeState
value = 1500
triggerall = var(59) != 1
triggerall = command = "�Oa"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 300
trigger2 = MoveHit >= 1
trigger3 = stateno = 250
trigger3 = MoveHit >= 1
;---------------------------------------------------------------------
[State -1,�}���I�T�C�N����_A]
type = ChangeState
value = 550
triggerall = var(59) != 1
triggerall = command = "���X�}"
trigger1 = statetype = A
trigger1 = ctrl 
;---------------------------------------------------------------------

[State -1,��a_A]
type = ChangeState
value = 2100
triggerall = var(59) != 1
triggerall = command = "��a"
triggerall = statetype = A
trigger1 = ctrl 
trigger2 = stateno = 300
trigger2 = MoveHit >= 1

;---------------------------------------------------------------------
[State -1,���a_A]
type = ChangeState
value = 300
triggerall = var(59) != 1
triggerall = command = "��a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 2100
trigger2 = MoveHit >= 1
;-------------------------------------------------------
[State -1,�Oa]
type = ChangeState
value = 2400
triggerall = var(59) != 1
triggerall = command = "�Oa"
triggerall = statetype = S
trigger1 = ctrl 
;---------------------------------------------------------------------

[State -1,��a]
type = ChangeState
value = 2000
triggerall = var(59) != 1
triggerall = command = "��a"
triggerall = statetype = S
trigger1 = stateno = 40
trigger2 = stateno = [120,155]
;------------------------------------------------------------------
[State -1, �_�b�V������]
type = ChangeState
value = 1100
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = stateno = 100
trigger1 = statetype = S
trigger1 = ctrl = 1
;--------------------------------------------------------------------------
;���̏���
[State -1, Shield]
type = ChangeState
value = 1600
triggerall = NumHelper(999) = 0 
triggerall = var(59) = 0
triggerall = command = "���̏���"
triggerall = statetype = S || statetype = C
triggerall = Pos Y = 0
triggerall = stateno != 100
trigger1 = stateno = [120,155]
trigger2 = stateno = [900,910]
;------------------------------------------------------------------------------
[State -1, �O�]]
type = ChangeState
value = 2600
triggerall = var(59) != 1
triggerall = command = "�O�]"
triggerall = statetype = S || statetype = C
triggerall = Pos Y = 0
triggerall = stateno != 100
trigger1 = stateno = [120,155]
trigger2 = stateno = [900,910]
;------------------------------------------------------------------------------
[State -1,��]]
type = ChangeState
value = 2650
triggerall = var(59) != 1
triggerall = command = "��]"
triggerall = statetype = S || statetype = C
triggerall = Pos Y = 0
triggerall = stateno != 100
trigger1 = stateno = [120,155]
trigger2 = stateno = [900,910]
;---------------------------------------------------------------------
;�_�b�V��
[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;�o�b�N�X�e�b�v
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;-----------------------------------------------------------------------------
[State -1, �ʏ�a]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------
[State -1, �ǉ�a_01]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = stateno = 200
trigger1 = movecontact 
trigger2 = AnimTime >= 10 
;------------------------------------------------------
[State -1, �ǉ�a_02]
type = ChangeState
value = 220
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = stateno = 210
trigger1 = movecontact 
trigger2 = AnimTime >= 10 

;--------------------------------------------------------------------------------

[State -1, ��a]
type = ChangeState
value = 250
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1, �t�@�C�A�{�[��_S]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "b"
triggerall =NumHelper(600) = [0,1]
trigger1 = statetype = S
trigger1 = ctrl

;-----------------------------------------------------------------------------


[State -1, �t�@�C�A�{�[��_A]
type = ChangeState
value = 650
triggerall = var(59) != 1
triggerall = command = "b"
triggerall =NumHelper(600) = [0,1]
trigger1 = statetype = A
trigger1 = ctrl
;--------------------------------------------------------------------------------

[State -1, ����]
type = ChangeState
value = 1100
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [120,155]
;------------------------------------------------
;����
[State -1, Shield]
type = ChangeState
value = 185
triggerall = NumHelper(999) = 0 
triggerall = var(59) = 0
triggerall = statetype = S
triggerall = ctrl
triggerall = Alive
trigger1 = command = "start"

;--------------------------------------------------------------------------
;�󒆉��
[State -1, Shield]
type = ChangeState
value = 1700
triggerall = Alive && var(10) = 0
triggerall = NumHelper(999) = 0 
triggerall = var(59) = 0
triggerall = statetype = A
triggerall = ctrl
triggerall = Alive && var(10) = 0
trigger1 = command = "�󒆉��"
;--------------------------------------------------------------------------------

;�V�[���h
[State -1, Shield]
type = ChangeState
value = 130
triggerall = NumHelper(999) = 0 
triggerall = var(59) = 0
triggerall = statetype = S
triggerall = ctrl
triggerall = Alive
triggerall = Pos Y >= 0
trigger1 = command = "hold_c"
;--------------------------------------------------------------------------------

[State -1,�V�[���h_A]
type = ChangeState
value = 132
triggerall = Alive && var(10) = 0
triggerall = NumHelper(999) = 0 
triggerall = var(59) = 0
triggerall = command = "hold_c"
trigger1 = statetype = A
trigger1 = ctrl 

;--------------------------------------------------------------------------------

[State -1,�V�[���h_C]
type = ChangeState
value = 131
triggerall = NumHelper(999) = 0 
triggerall = var(59) = 0
triggerall = command = "hold_c"
trigger1 = statetype = C
trigger1 = ctrl 
;--------------------------------------------------------------------------------


