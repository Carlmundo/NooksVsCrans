;--------------------------------------------------------



;AI�t���O
[Command]
name    = "AI"
command = B,B,B,B,a+b+s
time    = 0
[Command]
name    = "AI1"
command = B,B,B,B,a+b+c+s
time    = 0
[Command]
name    = "AI2"
command = B,B,B,B,a+b+c
time    = 0
[Command]
name    = "AI3"
command = B,B,B,B,a+c
time    = 0
[Command]
name    = "AI4"
command = B,B,B,a+b+c
time    = 0
[Command]
name    = "AI5"
command = B,B,B,F,a+b+c
time    = 0
[Command]
name    = "AI6"
command = B,B,B,U,a+b+c
time    = 0
[Command]
name    = "AI7"
command = B,B,B,D,a+b+c
time    = 0
[Command]
name    = "AI8"
command = B,B,D,B,a+b+c
time    = 0
[Command]
name    = "AI9"
command = B,U,B,B,a+b+c
time    = 0
[Command]
name    = "AI10"
command = B,D,B,B,a+b+c
time    = 0
[Command]
name    = "AI11"
command = F,B,B,B,a+b+c
time    = 0
[Command]
name    = "AI12"
command = B,B,F,B,a+b+c
time    = 0
[Command]
name    = "AI13"
command = B,F,B,F,a+b+c
time    = 0
[Command]
name    = "AI14"
command = B,B,D,B,a+b+s
time    = 0
[Command]
name    = "AI15"
command = F,B,B,B,a+b+c
time    = 0
[Command]
name    = "AI16"
command = B,B,D,F,a+b+c+s
time    = 0
[Command]
name    = "AI17"
command = B,B,D,F,x+y+b+s
time    = 0
[Command]
name    = "AI18"
command = B,B,D,F,x+y+b+s
time    = 0
[Command]
name    = "AI19"
command = B,B,D,F,x+a+b+s
time    = 0
[Command]
name    = "AI20"
command = B,B,D,F,x+y+s
time    = 0
[Command]
name    = "AI21"
command = B,B,D,F,x+y+c+s
time    = 0
[Command]
name    = "AI22"
command = U,F,B,B,B,a+b+c+s
time    = 0
[Command]
name    = "AI23"
command = U,B,B,D,F,a+b+c+s
time    = 0
[Command]
name    = "AI24"
command = U,B,B,D,F,x+y+b+s
time    = 0
[Command]
name    = "AI25"
command = U,B,B,D,F,x+y+b
time    = 0
[Command]
name    = "AI26"
command = U,B,B,D,F,x+a+b+s
time    = 0
[Command]
name    = "AI27"
command = U,B,B,D,F,x+y+s
time    = 0
[Command]
name    = "AI28"
command = U,B,B,D,F,x+y+c+s
time    = 0

















;\\\\\\\\\\\\\\\\\\\\\\\\\\
;\\\\\\\\\\\\\\\\\\\\\\\\
;\\\\\\\\\\\\\\\\\\\\\\\\
----------------------
;-|�K�E�Z |-----------------------------------------------------------------



[Command]
name = "kaihi"  ;���
command = b+x
;;;time = 1



[Command]
name = "TripleKFPalm"
command = ~D, DB, B, D, DB, B, y
time = 40





[Command]
name = "syoryu"
command = ~F, D, DF, x
time = 20




[Command];;;;�]�b�h
name = "h1"
command = ~D, DF, F, D, DF, F, a
time = 40



[Command];;;�鐋R�m
name = "h2"
command = ~D, DB, B, D, DB, B, a
time = 40


[Command]
name = "schierke"
command = ~D, DF, F, D, DF, F, b
time = 40




[Command]
name = "kyou"
command = ~D, DB, B, D, DB, B, x
time = 40





[Command]
name = "taihou"
command = ~D, DF, F, D, DF, F, y
time = 40









;------------------------------------------------------------------------------
;-| �L�[�Q��A������ |---------------------------------------------------------
;;[Command]
;;name = "FF"     ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
;;command = F, F
;;time = 10

[Command]
name = "BB"     ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| �������� |-----------------------------------------------------------------
[Command]
name = "recovery"   ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = x+y
time = 1

[Command]
name = "recovery"   ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = a+b
time = 1


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

;------------------------------------------------------------------------------
;-| �{�^���P�� |---------------------------------------------------------------
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

;------------------------------------------------------------------------------
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

;------------------------------------------------------------------------------
;==============================================================================
; �Z�����s���邽�߂̏����̐ݒ�i�X�e�[�g�G���g���[�p�[�g�j
;==============================================================================
;------------------------------------------------------------------------------
; �������牺�́u�ǂ̃R�}���h�łǂ̔ԍ��̃X�e�[�g���ǂ����������ŏo���邩�v��ݒ肷��ꏊ�ł��B
;�i�X�e�[�g�Ɋւ��Ă�CNS�t�@�C�����Q�Ɓj
; 
;���ݒ�͊�{�I�ɂ��̌`�ɂȂ�܂��B
;
; [State -1, Label]                  ;�uLabel�v�̕����͂����̃��x���ł��B���ł��ǂ��ł��B����ȊO�͕ύX�s�B
; type = ChangeState                 ;�u�ʂ̃X�e�[�g�ɕύX����v�Ƃ����Ӗ��̃X�e�[�g�R���g���[��
; value = new_state_number           ;�o�������Z�̃X�e�[�g�ԍ������܂�
; trigger1 = command = command_name  ;���̓L�[�ݒ�p�[�g�œo�^�����R�}���h�̖��O���ǂꂩ����܂�
; . . .  (any additional triggers)   ;trigger�i�������w�肷��g���K�[�j��ǉ��o���܂�
;
;��trigger�Ɏg�����{�I�ȏ����i�ʏ�́u�g���K�[�v�ƌĂ΂�Ă��܂��j
;
;   - StateType    - �L�����N�^�[���ǂ̏�Ԃ̎��ɂ��̃X�e�[�g���o���邩�ǂ��������߂��܂��B
;                    S=��������ԁEC=��������ԁEA=�󒆂ɂ����ԁEL=���ɓ|�ꂽ��ԁA�̂S�����܂莖�ł��B
;                    CNS��Statedef�̉��ɂ���uType = *�v�̍��ڂ���Ԃ̈Ӗ��Ȃ̂ŁA��������̃g���K�[�Ŕ��f���܂��B
;
;   - Ctrl         - �R���g���[�����\���s�\���ǂ��炩�̎��ɂ��̃X�e�[�g���o���邩�ǂ��������߂��܂��B
;                    0=�R���g���[���s�\��ԁE1=�R���g���[���\��ԁA�ł����ʏ�� Ctrl = 1 ( = 1 �ȗ��\)����{�B
;
;   - StateNo      - �ʂ̔ԍ��̃X�e�[�g����o���鎖���\�ɂȂ�܂��B
;                    ��������p���ăX�[�p�[�L�����Z�����\�ł��B
;
;   - MoveContact  - �����U��������ɓ����������i�U�����q�b�g�������A�������̓K�[�h���ꂽ���j�ɁA
;                    ���̃X�e�[�g���o���邩�ǂ��������߂��܂��B�Q��ނS�p�^�[������܂��B
;                    MoveContact or MoveContact = 1  �i�U���������������j
;                    !MoveContact or MoveContact = 0 �i�U�����������ĂȂ����j
;                    ��������p���ăX�[�p�[�L�����Z�����\�ł��B
;
;�@����̂S�ȊO�ɂ�����܂����A���̃g���K�[��M.U.G.E.N�{��docs�t�H���_�̒���
;�@�@CNS�h�L�������e�[�V�������Q�Ƃ��Ă��������B
;
;���X�e�[�g�G���g���[�̏���
;
; ChangeState�̓o�^�̏��Ԃ͏d�v�ł��B��ɗ���Η���قǃR�}���h���̗͂D��x�������Ȃ�܂��B
;
; ���p�ɂȂ�܂����A�Ⴆ�΁u�g�����R�}���h��ChangeState�i���_���{�p���`�j�v��
;�u�������R�}���h��ChangeState�i�����_�{�p���`�j�v������ɓo�^�����ꍇ�A
; �Q�[�����ł͏��������o�����Ƃ��Ă��g����������Ė\�����₷���Ȃ��Ă��܂��܂��B
; �h�~���邽�߂ɂ́A�u�g������ChangeState�v���u��������ChangeState�v�������ɓo�^���Ȃ��Ă͂Ȃ�܂���B
;�u���o�[��O�ɓ���ďo������Z�v�Ɓu�����Z�v�̊֌W�Ȃǂ����l�ł��B
;
; ���Ԃ��悭�l���ēo�^���܂��傤�B
;
;��[Statedef -1]�Ƃ́H
;
; ���̕�����CNS�v���O���~���O�̊g�������́A�펞�Ď��X�e�[�g�ɂȂ�܂��B
; �ǂ̂����Ȃ��Ԃł��ݒ肵���L�q����ɗL���ɂȂ�X�e�[�g�ł��iCNS��[Statedef -2]�Ǝ����悤�ȕ����j�B
;
; �K�v�ȋL�q�ƍs�Ȃ̂ŁA��΂ɏ����Ȃ��ł��������B
;
;==============================================================================
;------------------------------------------------------------------------------
; ���̍s�͐�΂ɏ����Ȃ��ł��������B�K�{�̍��ڂł��B

[Statedef -1]

;==============================================================================
;------------------------------------------------------------------------------

;AI---------------------------------------------------
;AI VarSet
[State -1, AI]
type = VarSet
triggerall = var(59) = 0
trigger1  = command = "AI"
trigger2  = command = "AI1"
trigger3  = command = "AI2"
trigger4  = command = "AI3"
trigger5  = command = "AI4"
trigger6  = command = "AI5"
trigger7  = command = "AI6"
trigger8  = command = "AI7"
trigger9  = command = "AI8"
trigger10  = command = "AI9"
trigger11  = command = "AI10"
trigger12  = command = "AI11"
trigger13  = command = "AI12"
trigger14  = command = "AI13"
trigger15  = command = "AI14"
trigger16  = command = "AI15"
trigger17  = command = "AI16"
trigger18  = command = "AI17"
trigger19  = command = "AI18"
trigger20  = command = "AI19"
trigger21  = command = "AI20"
trigger22  = command = "AI21"
trigger23  = command = "AI22"
trigger24  = command = "AI23"
trigger25  = command = "AI24"
trigger26  = command = "AI25"
trigger27  = command = "AI26"
trigger28  = command = "AI27"
trigger29  = command = "AI28"
v =  59
value = 3






;�K�[�h Lv�ݒ�
[State -1, AI]
type = VarSet
triggerall = var(58) = 0
trigger1  = var(59) > 0
v =  58
value = 3  ;0�`5�Œ��߂ł��܂�

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





;�]�b�h
[State -1]
type = ChangeState
value = 6005
triggerall   = var(59)  > 2
triggerall = roundstate = 2
triggerall = power >= 2000 
triggerall = statetype != A
triggerall   = p2statetype != L
triggerall = NumHelper(6010) <  1
triggerall = p2life > 1
trigger1 = random < 250
trigger1 = ctrl






;�鐋R�m
[State -1]
type = ChangeState
value = 5720
triggerall   = var(59)  > 2
triggerall = roundstate = 2
triggerall = power >= 2000 
triggerall = statetype != A
triggerall   = p2statetype != L
triggerall = NumHelper(5721) <  1
triggerall = p2life > 1
trigger1 = random < 250
trigger1 = ctrl




;���̎ԗ�
[State -1]
type = ChangeState
value = 7799
triggerall = power >= 2000
triggerall = p2life > 1
triggerall   = var(59)  > 1
triggerall = statetype != A
triggerall = NumHelper(7800) <  1
triggerall = NumHelper(7802) <  1
trigger1 = ctrl
trigger1 = random < 250



;����m
[State -1]
type = ChangeState
value = 5730
triggerall   = var(59)  > 1
triggerall = roundstate = 2
triggerall = power >= 3000 
triggerall = statetype != A
triggerall = p2life > 1
trigger1 = random < 50
trigger1 = ctrl






;��C
[State -1]
type = ChangeState
value = 5429
triggerall = power >= 1000
triggerall   = var(59)  > 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2statetype = A
triggerall = p2stateno != 5120
triggerall= p2stateno != 5160
triggerall= p2stateno !=  5080
triggerall= p2stateno !=  5150
triggerall = p2life > 1
trigger1 = ctrl
trigger1 = p2bodydist X > 140
trigger1 = random < 200



;�S�l�a��
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 60000
triggerall   = var(59) > 0
triggerall = statetype != A ;�u != �v�͔ے�i�`�ł͖������j�̈Ӗ��̏����ɂȂ�܂�
triggerall = power >= 1000
triggerall = stateno != 800    ;����
triggerall = stateno != 810    ;����
triggerall = ctrl 
triggerall   = P2movetype  = A
triggerall = p2bodydist X < 150
triggerall = p2statetype != L
triggerall = p2life > 1
triggerall = p2stateno != 5120
trigger1 = random < 200











;����
[State -1]
type = ChangeState
value = 7820
triggerall   = var(59) > 1
triggerall = statetype != A
triggerall = stateno != 800    ;����
triggerall = stateno != 810    ;����
triggerall = p2stateno != 5120
triggerall = ctrl 
triggerall   = P2movetype  = A
triggerall = p2bodydist X < 80
triggerall = p2statetype != L
trigger1 = random < 150
trigger1 = p2life > 1

trigger2  = P2movetype  = A
trigger2 = p2bodydist X < 50
trigger2 = stateno = 200
trigger2   = random < 200

trigger3 = stateno = 7830
trigger3  = animtime = 0
trigger3  = p2bodydist X < 100
trigger3   = P2movetype  = A







;���Ⴊ�݃p���`
[State -1]
type = ChangeState
value = 400
triggerall = var(59) > 1
triggerall = statetype != A
triggerall = p2bodydist X < 40
triggerall = p2stateno != 5120
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = p2life > 1
trigger1 = ctrl
trigger1   = p2statetype != A       ; Not Lie down
trigger1   = random < 900

trigger2 = stateno = 5120
trigger2  = p2bodydist X < 40
trigger2  = animtime = 0

trigger3 = stateno = 7830
trigger3  = animtime = 0
trigger3  = p2bodydist X < 40







;�p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 200
triggerall = var(59) > 1
triggerall = statetype != A
triggerall = p2bodydist X < 60
triggerall = p2stateno != 5120
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = p2life > 1
trigger1 = ctrl
trigger1   = p2statetype != A       ; Not Lie down
trigger1   = random < 120





;�a��1�@��
[State -1, Stand Strong Punch]
type = ChangeState
value = 6200
triggerall = var(59) > 1
triggerall = statetype != A
triggerall = p2bodydist X > 40
triggerall = p2bodydist X < 140
triggerall = p2stateno != 5120
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = p2life > 1
trigger1 = ctrl
trigger1   = p2statetype != A       ; Not Lie down
trigger1   = random < 100
trigger2 = stateno = 6201
trigger2 = Animelem = 6

trigger3 = stateno = 5120
trigger3  = p2bodydist X > 30
trigger3  = p2bodydist X < 60
trigger3  = animtime = 0






;�a��2�@��
[State -1, Stand Strong Punch]
type = ChangeState
value = 6201
triggerall = var(59) > 1
triggerall = statetype != A
triggerall = p2bodydist X > 40
triggerall = p2bodydist X < 140
triggerall = p2stateno != 5120
triggerall = p2statetype != L
trigger1 = p2life > 1
trigger1 = ctrl
trigger1   = p2statetype != A       ; Not Lie down
trigger1   = random < 100
trigger2 = stateno = 6200
trigger2 = Animelem = 6












;���Ⴊ�݋��p���`�@�@���Ⴊ�ݎa��@�@�΋�
[State -1, Stand Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) > 1
triggerall = statetype != A
triggerall = p2bodydist X >  -100
triggerall = p2bodydist X < 100
triggerall = p2stateno != 5120
triggerall  = p2statetype = A
trigger1 = p2life > 1
trigger1 = !inguarddist
trigger1 = ctrl
trigger1   = p2statetype != L       ; Not Lie down
trigger1   = random < 40
trigger2 = stateno = 6005
trigger2  = animtime = 0







;�������p���`�@�@�����a��1
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) > 1
triggerall = statetype != A
triggerall = p2stateno != 5120

trigger1 = p2bodydist X >  100
trigger1 = p2bodydist X < 150
trigger1 = p2life > 1
trigger1 = ctrl
trigger1   = p2statetype != L       ; Not Lie down
trigger1   = random < 20








;���Ⴊ�ݓ˂��a��
[State -1, Stand Strong Punch]
type = ChangeState
value = 440
triggerall = var(59) > 1
triggerall = statetype != A
triggerall = p2stateno != 5120
triggerall = p2stateno != 5050
triggerall = p2stateno != 5061
triggerall = p2stateno != 5080
triggerall = p2stateno != 5090
triggerall = p2stateno != 5100
triggerall = p2stateno != 5160
triggerall = p2stateno != 5170
triggerall = p2stateno != 6001
triggerall   = p2statetype != L       ; Not Lie down

trigger1 = p2bodydist X > 200
trigger1 = p2life > 1
trigger1 = ctrl
trigger1   = p2statetype != A       ; Not Lie down
trigger1   = p2statetype != L       ; Not Lie down
trigger1   = random < 250


trigger2 = p2bodydist X > 140
trigger2 = stateno = 6200
trigger2 = p2life > 1
;;;;;trigger2 = movehit

trigger3 = p2bodydist X > 140
trigger3 = stateno = 6201
trigger3 = p2life > 1
;;;;;trigger3 = movehit






;�������������@�@�����a��2    �΋�
[State -1, Stand Strong Punch]
type = ChangeState
value = 240
triggerall = var(59) > 1
triggerall = statetype != A
triggerall = p2stateno != 5120
triggerall  = p2statetype = A

trigger1 = p2bodydist X > 151
trigger1 = p2life > 1
trigger1 = !inguarddist
trigger1 = ctrl
trigger1   = p2statetype != L       ; Not Lie down
trigger1   = random < 20





;�������������@�@�����a��2
[State -1, Stand Strong Punch]
type = ChangeState
value = 240
triggerall = var(59) > 1
triggerall = statetype != A
triggerall = p2stateno != 5120

trigger1 = p2bodydist X > 151
trigger1 = p2life > 1
trigger1 = !inguarddist
trigger1 = ctrl
trigger1   = p2statetype != L       ; Not Lie down
trigger1   = random < 20

;;;trigger2   = random < 100
trigger2 = stateno = 440
trigger2 = p2life > 1
trigger2 = movehit
trigger2 = Animelem = 7




;�W�����v���L�b�N
[State -1,1]
type = ChangeState
value = 640
triggerall = var(59) > 1
triggerall = statetype = A
triggerall   = p2statetype != L       ; Not Lie down
trigger1 = ctrl 
trigger1 = p2bodydist X > 80
trigger1 = p2bodydist X < 150




;�W�����v���p���`
[State -1,1]
type = ChangeState
value = 610
triggerall = var(59) > 1
triggerall = statetype = A
triggerall   = p2statetype != L       ; Not Lie down
trigger1 = p2statetype != A
trigger1 = ctrl 
trigger1 = p2bodydist X < 100
trigger1 = p2bodydist X > -100

trigger2 = stateno = 5200
trigger2  = p2bodydist X < 100

trigger3 = stateno = 5300
trigger3  = p2bodydist X < 100














[State -1,���Ⴊ�݃K�[�h]
Type = ChangeState
Value = 131
Triggerall = var(59) > 0
TriggerAll = StateType != A
Triggerall = inguarddist
Triggerall = Ctrl 
Triggerall = p2Statetype != A

Trigger1 = Random = [0,300]
Trigger1 = var(58) = 1
Trigger2 = Random = [0,700]
Trigger2 = var(58) = 2
Trigger3 = Random = [0,350]
Trigger3 = var(58) = 3
Trigger4 = Random = [0,700]
Trigger4 = var(58) = 4
Trigger5 = Random = [0,990]
Trigger5 = var(58) > 4


[State -1,�����K�[�h]
Type = ChangeState
Value = 130
Triggerall = var(59) > 0
TriggerAll = StateType != A
Triggerall = inguarddist
Triggerall = Ctrl 
Triggerall = p2Statetype = A
Trigger1 = Random = [0,300]
Trigger1 = var(58) = 1
Trigger2 = Random = [0,700]
Trigger2 = var(58) = 2
Trigger3 = Random = [0,350]
Trigger3 = var(58) = 3
Trigger4 = Random = [0,700]
Trigger4 = var(58) = 4
Trigger5 = Random = [0,970]
Trigger5 = var(58) > 4


[State -1,�󒆃K�[�h]
Type = ChangeState
value = 132
Triggerall = var(59) > 0
TriggerAll = StateType = A
Triggerall = inguarddist
Triggerall = Ctrl
Trigger1 = Random = [0,300]
Trigger1 = var(58) = 1
Trigger2 = Random = [0,700]
Trigger2 = var(58) = 2
Trigger3 = Random = [0,350]
Trigger3 = var(58) = 3
Trigger4 = Random = [0,700]
Trigger4 = var(58) = 4
Trigger5 = Random = [0,970]
Trigger5 = var(58) > 4






;�o�b�N�X�e�b�v
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = var(59) > 0
triggerall = p2statetype = L
triggerall = p2bodydist X < 60

trigger1 = p2life > 1
trigger1   = statetype != A
trigger1 = ctrl






;���
[State -1]
type = ChangeState
value = 7830
triggerall   = var(59)  > 0
triggerall = p2life > 0
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = roundstate = 2

trigger1   = P2movetype  = A
trigger1 = ctrl
trigger1 = p2bodydist X > 150
trigger1   = random < 100
trigger1 = enemy, numhelper > 0


trigger2 = p2bodydist X > 200
trigger2   = random < 10
trigger2   = P2movetype  = A
trigger2 = ctrl

trigger3 = p2bodydist X < 50
trigger3 = stateno = 6200

trigger4 = p2bodydist X < 50
trigger4 = stateno = 6201

trigger5   = P2movetype  = A
trigger5 = p2bodydist X < 20
trigger5 = stateno = 100

trigger6   = P2movetype  = A
trigger6 = ctrl
trigger6 = p2bodydist X > 150
trigger6   = random < 100
trigger6 = enemy, Numproj > 0

trigger7   = P2movetype  = A
trigger7 = p2bodydist X < 150
trigger7 = stateno = 6200

trigger8  = P2movetype  = A
trigger8 = p2bodydist X < 150
trigger8 = stateno = 6201

trigger9 = stateno = 6040
trigger9 = enemy, numhelper > 0











;���2222
[State -1]
type = ChangeState
value = 7830
triggerall   = var(59)  > 0
triggerall = p2life > 0
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = roundstate = 2

trigger1 = stateno = 6040
trigger1 = enemy, Numproj > 0


;----------------------------------------------------------------------
;----------------------------------------------------------------------
;----------------------------------------------------------------------
;----------------------------------------------------------------------
;----------------------------------------------------------------------
;----------------------------------------------------------------------
;----------------------------------------------------------------------
;----------------------------------------------------------------------

































;;����
[State -1, syoryu]
type = ChangeState
value = 7820
triggerall   = var(59)  = [0,1]
triggerall = command = "syoryu"
triggerall = statetype != A
triggerall = stateno != 6001
triggerall = stateno != 6005
triggerall = stateno != 6010
triggerall = stateno != 6011
triggerall = stateno != 6012
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = MoveContact 







;;����m
[State -1, kyou]
type = ChangeState
value = 5730
triggerall   = var(59)  = [0,1]
triggerall = command = "kyou"
triggerall = power >= 3000
triggerall = statetype != A
triggerall = stateno != 6001
triggerall = stateno != 6005
triggerall = stateno != 6010
triggerall = stateno != 6011
triggerall = stateno != 6012
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA ;�L�����N�^�[�{�̂̒n��U�����肪�o�Ă��鎞�̏����i�ڍׂ�docs�Q�Ɓj
trigger2 = MoveContact 




;;�鐋R�m
[State -1, h2]
type = ChangeState
value = 5720
triggerall   = var(59)  = [0,1]
triggerall = command = "h2"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = stateno != 6001
triggerall = stateno != 6005
triggerall = stateno != 6010
triggerall = stateno != 6011
triggerall = stateno != 6012
triggerall = NumHelper(5721) <  1

trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA ;�L�����N�^�[�{�̂̒n��U�����肪�o�Ă��鎞�̏����i�ڍׂ�docs�Q�Ɓj
trigger2 = MoveContact 





;�S�l�a��i�Q�[�W���x���P�j
[State -1, TripleKFPalm]
type = ChangeState
value = 60000
triggerall   = var(59)  = [0,1]

triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = stateno != 6001
triggerall = stateno != 6005
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA ;�L�����N�^�[�{�̂̒n��U�����肪�o�Ă��鎞�̏����i�ڍׂ�docs�Q�Ɓj
trigger2 = MoveContact 




;;�V�[���P�̖��@-���̎ԗ�
[State -1, schierke]
type = ChangeState
value = 7799
triggerall   = var(59)  = [0,1]
triggerall = command = "schierke"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = stateno != 6001
triggerall = stateno != 6005
triggerall = stateno != 6010
triggerall = stateno != 6011
triggerall = stateno != 6012
triggerall = stateno != 7800
triggerall = stateno != 7801
triggerall = stateno != 7802
triggerall = stateno != 7803
triggerall = stateno != 7799
triggerall = NumHelper(7800) <  1
triggerall = NumHelper(7802) <  1

trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA ;�L�����N�^�[�{�̂̒n��U�����肪�o�Ă��鎞�̏����i�ڍׂ�docs�Q�Ɓj
trigger2 = MoveContact 




;;�]�b�h
[State -1, h1]
type = ChangeState
value = 6005
triggerall   = var(59)  = [0,1]

triggerall = command = "h1"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = stateno != 6001
triggerall = stateno != 6005
triggerall = stateno != 6010
triggerall = stateno != 6011
triggerall = stateno != 6012
triggerall = NumHelper(6010) <  1

trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA ;�L�����N�^�[�{�̂̒n��U�����肪�o�Ă��鎞�̏����i�ڍׂ�docs�Q�Ɓj
trigger2 = MoveContact 







;;;��C
[State -1, taihou]
type = ChangeState
value = 5429
triggerall   = var(59)  = [0,1]
triggerall = power >= 1000
triggerall = command = "taihou"
triggerall = statetype != A
triggerall = stateno != 6001
triggerall = stateno != 6005
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA ;�L�����N�^�[�{�̂̒n��U�����肪�o�Ă��鎞�̏����i�ڍׂ�docs�Q�Ɓj
trigger2 = MoveContact 









; ���p���[�Q�[�W�́u�X�[�p�[�R���{�Q�[�W�v��u���K�E�Z�Q�[�W�v�Ƃ��Ă΂�Ă��镔���ł��B
;------------------------------------------------------------------------------
;===========================================================================
;------------------------------------------------------------------------------


;==============================================================================
;------------------------------------------------------------------------------
;�_�b�V��
;[State -1, Dash]
;type = ChangeState
;value = 100
;triggerall   = var(59)  = [0,1]

;trigger1 = command = "FF"
;trigger1 = statetype = S
;trigger1 = ctrl



;�o�b�N�X�e�b�v
[State -1, Back Step]
type = ChangeState
value = 105
triggerall   = var(59)  = [0,1]

trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------
;����
;[State -1, Kung Fu Throw]
;type = ChangeState
;value = 800
;triggerall   = var(59)  = [0,1]

;triggerall = command = "y"
;triggerall = statetype = S
;triggerall = ctrl
;triggerall = stateno != 100
;trigger1 = command = "holdfwd"
;trigger1 = p2bodydist X < 3
;trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
;trigger2 = command = "holdback"
;trigger2 = p2bodydist X < 5
;trigger2 = (p2statetype = S) || (p2statetype = C)
;trigger2 = p2movetype != H

;==============================================================================








;�a��1
[State -1, Stand Light Punch]
type = ChangeState
value = 6200
triggerall   = var(59)  = [0,1]
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 6201) && time > 11





;�a��2
[State -1, Stand Light Punch]
type = ChangeState
value = 6201
triggerall   = var(59)  = [0,1]

triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 6200) && time > 11








:���
[State -1]
type = ChangeState
value = 7830
triggerall   = var(59)  = [0,1]
triggerall = command = "kaihi"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = 6200) && time > 6
trigger3 = (stateno = 6201) && time > 6
trigger4 = (stateno = 400) && time > 1













;------------------------------------------------------------------------------
;������p���`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall   = var(59)  = [0,1]
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6 ;�V�t���[���ȏ�ɂȂ�����L��

trigger3 = (stateno = 6200) && time > 6
trigger4 = (stateno = 6201) && time > 6








;�������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall   = var(59)  = [0,1]
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5 ; �u && �v�͗����������ɐ���( and )���鎞�̈Ӗ��ł�
trigger3 = (stateno = 230) && time > 6

;------------------------------------------------------------------------------

;�������L�b�N
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall   = var(59)  = [0,1]

triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;------------------------------------------------------------------------------
;����
[State -1, Taunt]
type = ChangeState
value = 195
triggerall   = var(59)  = [0,1]

triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;���Ⴊ�ݎ�p���`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall   = var(59)  = [0,1]
triggerall = command = "x"
triggerall = command = "holddown"

trigger1 = statetype = C
trigger1 = ctrl








;���Ⴊ�݋��p���`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall   = var(59)  = [0,1]

triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;------------------------------------------------------------------------------

;���Ⴊ�݋��L�b�N
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall   = var(59)  = [0,1]

triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;�󒆎�p���`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall   = var(59)  = [0,1]

triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600|| stateno = 640|| stateno = 610
trigger2 = statetime >= 7

;�󒆋��p���`
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall   = var(59)  = [0,1]

triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640 ;;;|| stateno = 630
trigger2 = movecontact

;------------------------------------------------------------------------------

;�󒆋��L�b�N
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall   = var(59)  = [0,1]

triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 ;;;;|| stateno = 630
trigger2 = movecontact

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
