; �T���v���L�����N�^�[�w�J���t�[�}���x�̃R�}���h�t�@�C���ł��B
; �R�}���h�Ɋւ���ݒ�͂S���\���ɂȂ��Ă��܂��B
;==============================================================================
; Win�Ő�p�p�[�g
;==============================================================================
;------------------------------------------------------------------------------
; ������Win�ł���i���m�ɂ�Linux�ł���j�ǉ����ꂽ�v�f�̓�B
; �R�}���h�֘A�̏����ݒ��C�ӂɎw��o����悤�ɂȂ���(`�E�ցE�L)
;
;�w�{�^�����}�b�v�x�̓{�^���z�u�ύX�p�̍��ځB
; ��`�p�[�g�ł��������ύX���Ȃ��Ă��ǂ��悤�ɂȂ���������B
; �ʓ|�L���l�p���ȁI�i�ú�
;
;�w�f�t�H���g�ݒ�x�ł͊e[Command]�ŏȗ������ꍇ��
; ���͎�t���ԂƓ��͋L�����Ԃ�\�ߌ��߂Ă������ځB
;
;
; ���̂Q���ڂ͏ȗ��\�B
;------------------------------------------------------------------------------
;-| �{�^�����}�b�v�i�{�^���R���t�B�O�j|---------------------------------------- ��P��

[Remap]
x = x      ;�w�{�^���̓��͔�������ۂɉ����{�^���Ɋ��蓖�Ă�B
y = y      ;�x�{�^���@�@�@�@�@�@�@�@�@�V
z = z      ;�y�{�^���@�@�@�@�@�@�@�@�@�V
a = a      ;�`�{�^���@�@�@�@�@�@�@�@�@�V
b = b      ;�a�{�^���@�@�@�@�@�@�@�@�@�V
c = c      ;�b�{�^���@�@�@�@�@�@�@�@�@�V
s = s      ;�X�^�[�g�{�^���@�@�@�@�@�@�V

;------------------------------------------------------------------------------
; �Ⴆ�΁u�{���w�{�^���ŏo����p���`���a�{�^���ɕς������ꍇ�v�Ȃ�A
;
; x = b
;
; �ŊȒP�ɏo����B�g��Ȃ��{�^�����g���Ă���{�^���Ɋ��蓖�Ă鎖���\�B
;------------------------------------------------------------------------------
;-| �f�t�H���g�ݒ� |----------------------------------------------------------- ��Q��

[Defaults]
command.time = 15  ;�W���̃R�}���h���͎�t���ԁB
                   ;�e�R�}���h�ŏȗ����Ă���ꍇ�ɗL���B
                   ;���̃p�����[�^���������ꍇ�A�f�t�H���g�͂P�t���[���ɂȂ�B
                   ;�i�@M.U.G.E.N�ł̂P�t���[���@���@�P�^�U�O�b�@�j

command.buffer.time = 1  ;�W���̃R�}���h���͋L�����ԁB
                         ;���͂�������ɃR�}���h���L�����A
                         ;�w�𗣂��Ă��R�}���h���������Ă����Ԃ�
                         ;�����Őݒ肵�����Ԃ̕��ێ�����B
                         ;�P�`�R�O�t���[���܂ł̊ԂŐݒ�\�B
                         ;�f�t�H���g�͂P�t���[���B

;============================================================================== ��R��
; �R�}���h��`�p�[�g�i���̓L�[��ݒ肷��j
;==============================================================================
;------------------------------------------------------------------------------
; �������L�[�ƃ{�^���̑g�ݍ��킹�Ŋi���Q�[���ɂ�����
;�w���̓R�}���h�x�𒼐ڐݒ�E�ҏW����p�[�g�B
;
; ����R�}���h�ɖ��O��t���ē��̓L�[��g�ݍ��킹��P���ȍ�ƂɂȂ邯�ǁA
; �g�ݍ��킹���Ɠ�������o����͓̂�Փx�����������B
;
; ���L�Łu�����̌��܂�v�Ɓu�g�ݍ��킹�ɕK�v�ȃA���t�@�x�b�g�ƋL���v��
; �S�Đ������܂��傤�B
;------------------------------------------------------------------------------
;�������̌��܂聡
;
; [Command]         �F���̓R�}���h���P��`����B
; name = "***"      �F�R�}���h�������߂�B�啶���Ə���������ʂ����B
; command = ###     �F���ۂɓ��͂���L�[��g�ݍ��킹��B�ڍׂ͌�q�B
; time = &&&        �F���͎�t���Ԃ�ݒ�i�I�v�V�����j�B
; buffer.time = @@@ �F���͋L�����Ԃ�ݒ�i�I�v�V�����j�B
;
; ���l�^�ł��������Ă���ʂ�A�o�^���\�Ȑ��͍ő�w�P�Q�W�x�܂ŁB
;
;
;���w�K�{�R�}���h���x�Ə����Ă�R�}���h�́A�V�X�e�����ŏ������Ă܂��B
;�@�R�}���h����ς�����A�����Ă͂����܂���B�L�[�̕ύX�͏o���܂��B
;------------------------------------------------------------------------------
;���K�v�ȃA���t�@�x�b�g�ƋL����
;
; ��L�́ucommand = ###�v�́w###�x�ɊY�����镔���ŁA
; �g�ݍ��킹��L�[�ƃ{�^����ݒ肵�Ȃ���΂Ȃ�Ȃ��B
;
; ���ݒ肵���L�[��{�^����M.U.G.E.N�̃I�v�V�������[�h�ɂ���
;  �u�L�[�R���t�B�O�v�ɂĐݒ肵���L�[�ȂǂɑΉ����Ă��܂��B
;
; �������L�[���i�S�ĕK���啶���Łj
;
; �@B �@�F�u����v�ɃL�[������i Backward �j
; �@D �@�F�u�����v�ɃL�[������i Downward �j
; �@F �@�F�u�O���v�ɃL�[������i Forward �j
; �@U �@�F�u����v�ɃL�[������i Upward �j
;
; �@DB�@�F�u���΂߉��v�ɃL�[������i�uD�v�ƁuB�v�������ɓ��͂��ꂽ����F���j
; �@UB�@�F�u���΂ߏ�v�ɃL�[������i�uU�v�ƁuB�v�������ɓ��͂��ꂽ����F���j
; �@DF�@�F�u�O�΂߉��v�ɃL�[������i�uD�v�ƁuF�v�������ɓ��͂��ꂽ����F���j
; �@UF�@�F�u�O�΂ߏ�v�ɃL�[������i�uU�v�ƁuF�v�������ɓ��͂��ꂽ����F���j
;
; ���{�^�����i�S�ĕK���������Łj
;
; �@a �@�F�u�`�{�^���v������
; �@b �@�F�u�a�{�^���v������
; �@c �@�F�u�b�{�^���v������
; �@x �@�F�u�w�{�^���v������
; �@y �@�F�u�x�{�^���v������
; �@z �@�F�u�y�{�^���v������
; �@s �@�F�u�X�^�[�g�{�^���v������
;
; ���L�����i���͌��ʂ�ω������閽�߁j
;
; �@/ �@�F�i�X���b�V���j�L�[��{�^�����u�������ςȂ��v�ɂ��Ă��鎖��F������ꍇ�ɒǉ�����
;
; �@�@�i��j�F�@/b       = �a�{�^�����������܂܂ɂ���
; �@�@�@�@�@�@�@/F       = �O�L�[���������܂܂ɂ���
; �@�@�@�@�@�@�@/U,z     = ��L�[���������܂܂y�{�^������͂���
;
;�@�@������������������������������������������������������������
;
; �@~ �@�F�i�`���_�j�L�[��{�^�����u�����ꂽ���v��F������ꍇ�ɒǉ�����
;
; �@�@�i��j�F�@~x       = �w�{�^���𗣂�
; �@�@�@�@�@�@�@~DF      =�u�O�΂߉��v�̃L�[�𗣂�
; �@�@�@�@�@�@�@~DB,F,c  =�u���΂߉��v�𗣂�����ɑO�L�[�E�b�{�^���̏��Ԃɓ��͂���
;
; �@�@�@�@�@�@���u�{�^���𗣂��܂ł̎��ԁi���ߎ��ԁj�v���ݒ肷�鎖���o����
;
; �@�@�@�@�@�@�@~30x     = �w�{�^�����������܂܂ɂ��āA�R�O�t���[���ȏ�o�����痣��
; �@�@�@�@�@�@�@~50B,F,a = ���L�[���T�O�t���[���܂ŗ��߂đO�L�[�E�`�{�^���̏��Ԃɓ��͂���
;
;�@�@������������������������������������������������������������
;
; �@$ �@�F�i�h���j�����L�[�́u�����̓��ǂꂩ�����͂���Ă��鎖�v��F������ꍇ�ɒǉ�����
;
; �@�@�i��j�F�@$B       =�u����v�u���΂߉��v�u���΂ߏ�v�̂ǂꂩ�����͂���Ă�����
; �@�@�@�@�@�@�@$UF      =�u�O�v�u��v�u�O�΂ߏ�v�̂ǂꂩ�����͂���Ă�����
;
; �@�@�@�@�@�@�����̋L���́u�����L�[�v�ł����g���܂���B
;
;�@�@������������������������������������������������������������
;
; �@+ �@�F�i�v���X�j�{�^�����u���������v���Ă��鎖��F������ꍇ�ɒǉ�����
;
; �@�@�i��j�F�@x+y      = �w�{�^���Ƃx�{�^���𓯎���������
; �@�@�@�@�@�@�@a+b+c    = �`�{�^���Ƃa�{�^���Ƃb�{�^���𓯎���������
;
; �@�@�@�@�@�@�����̋L���́u�{�^���v�ł����g���܂���B
;
;�@�@������������������������������������������������������������
;
; �@> �@�F�i�O���[�^�[�U���j��Ȃ�iWin�łŒǉ����ꂽ�L���j
; �@�@�@�@�@�@�@�@�@�@�@�@�u���̃L�[�����͂���Ă��Ȃ������m�F���āA���̃L�[�������v�ꍇ
;
; �@�@�i��j�F�@a,>~a    = �`�{�^���ȊO�����͂���Ă��Ȃ���Ԃł`�{�^���𗣂�
; �@�@�@�@�@�@�@F,>~F,>F = �O�L�[�ȊO�����͂���Ă��Ȃ���ԂőO�L�[�𗣂��A
;�@�@�@�@�@�@�@�@�@�@�@�@�@������x�O�L�[����͂���
;
;-------------------------------------------------------------------------------
; �������̋L���͑S�đg�ݍ��킹�Ďg�������o���遜
;
; �@�@�i��j�F�@~80$DB,DF,F,/a+y+c
; �@�@�@�@�@�@�@
; �@�@�@�@�@�@�u����v�u���v�u���΂߉��v�̂ǂꂩ���W�O�t���[���܂ŗ��߂�
; �@�@�@�@�@�@�u�O�΂߉��v���u�O�v����͂�����A�`�Ƃx�Ƃb�𓯎����������܂܂ɂ���
;
;------------------------------------------------------------------------------
;-| ���K�E�Z |-----------------------------------------------------------------

;�����O�������Ȃ�΁A�Ⴄ�R�}���h�ł������X�e�[�g�̋Z���o�������\�B

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TripleKFPalm"
command = ~D, D, c;~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, D, z;~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, D, y;~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

;------------------------------------------------------------------------------
;-| �K�E�Z |-------------------------------------------------------------------

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

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
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCF_yz"
command = ~D, DF, F, y+z

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "DB_y"
command = /DB, y;DB, y

[Command]
name = "DB_y"
command = ~D, /DB, y;

[Command]
name = "DB_y"
command = ~B, /DB, y;

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "DD_x"
command = D, D, x

[Command]
name = "DD_y"
command = D, D, y

;---------------------------
;(�u�����v�p�ɃR�}���h��ǉ����Ă܂�)
[Command]
name = "board"
command = ~D, DF, F, a

[Command]
name = "board"
command = ~D, DF, F, b

;------------------------------------------------------------------------------
;-| �L�[�Q��A������ |---------------------------------------------------------

[Command]
name = "FF"       ;�K�{�R�}���h��
command = F, F
time = 10

[Command]
name = "BB"       ;�K�{�R�}���h��
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| �������� |-----------------------------------------------------------------

[Command]
name = "recovery" ;�K�{�R�}���h��
command = x+y
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

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "front_z"
command = /$F,z
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

;---------------------------
;(�u�p���[���߁v�p�ɃR�}���h��ǉ����Ă܂�)
[Command]
name = "hold_c"
command = /c

;------------------------------------------------------------------------------
;-| �����L�[ |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;�K�{�R�}���h��
command = /$F
time = 1

[Command]
name = "holdback"  ;�K�{�R�}���h��
command = /$B
time = 1

[Command]
name = "holdup"    ;�K�{�R�}���h��
command = /$U
time = 1

[Command]
name = "holddown"  ;�K�{�R�}���h��
command = /$D
time = 1

;============================================================================== ��S��
; �X�e�[�g�G���g���[�p�[�g�i�Z�Ȃǂ��o����悤�ɂ��邽�߂̏�����ݒ�j
;==============================================================================
;------------------------------------------------------------------------------
; �R�}���h���Ɠ��͂���R�}���h��ݒ肵����������Ӗ��������̂ŁA��������
;�u���ۂɓ��͂����R�}���h�łǂ̔ԍ��̃X�e�[�g���ǂ����������ŏo���邩�v
; �����߂Ȃ���΂Ȃ�Ȃ��B
;
; �X�e�[�g�R���g���[���uChangeState�v�����g��Ȃ����ǁA
; ����Ȃɓ���Ȃ��̂Ńg���K�[���o���Ă��炷���o����B
;
; ���������������Ă����ΊȒP�ȃg���K�[�ݒ�̗���͊o�����邩�ƁB
;
; �G���g���[�̏��Ԃɂ͂�����x�̖@�������邯�ǁA
; ���܂��t�H���_�́u���l�^.txt�v���Q�ƁB�i�g�������\�����׶��ׁj
;
; ChangeState�ȂǃX�e�[�g�R���g���[���̊�{�I�Ȑݒu���
; ���܂��t�H���_�́u�e���v���[�g.txt�v���Q�ƁB
;------------------------------------------------------------------------------
; �����펞�Ď��X�e�[�g�i�|�P�j��
; �R�}���h�t�@�C���i�̃X�e�[�g�G���g���[�p�[�g�j�ɕK�v�ȍ��ڂł��B
; ��΂ɏ����Ă͂����Ȃ��̂ŗv���ӁB
;
; �ʏ�̐H�炢��ԈȊO�́uP2StateNo�v��uTargetState�v���Ő��䂳�ꂽ�A
; �쐬�҂��C�ӂɎw�肵�����葤�̐H�炢�X�e�[�g�Ɍ���A
; �o�^�����X�e�[�g�R���g���[�����L���ɂ͂Ȃ�܂���B
;------------------------------------------------------------------------------

[Statedef -1] ;�����̍s�͐�΂ɏ����Ȃ��łˁB�K�{���ڂł��B

[State -1, Game Over]
type=changestate
triggerall = palno = 12 && var(53) != 0
triggerall= !ishelper && stateno!=5150
trigger1= roundstate>=3
trigger2= roundstate=2
trigger2= fvar(1)<=0 && fvar(1)!=-1 && fvar(1)!=-2
value=5150

;==============================================================================
; ���K�E�Z
;==============================================================================
;------------------------------------------------------------------------------

[State -1, �X�}�b�V���J���t�[�A�b�p�[];�Q�[�W���x���P
type = ChangeState
value = 3050
triggerall = command = "QCF_ab";"SmashKFUpper"  ;�uSmashKFUpper�v�̖��O�̃R�}���h�����͂��ꂽ��
triggerall = power >= 1000             ;�p���[�Q�[�W�����x���P�ȏ㗭�܂��Ă��鎞�i���j
triggerall = statetype != A            ;�u�󒆁v�ł͂Ȃ���
triggerall = palno != 10 && palno != 11 && palno != 12 && var(11) = 0 
trigger1 = ctrl                        ;�R���g���[�����\�ȏꍇ
trigger2 = hitdefattr = SC, NA, SA, HA ;�����́uHitDef�̈ꕔ�̍U�������v���o�Ă��鎞�i�e���v���[�g�Q�Ɓj
trigger2 = stateno != [3050,3100)      ;���݂̃X�e�[�g���u3050�ȏ�A3100�����v�̊Ԃ̂ǂꂩ�ȏꍇ
trigger2 = movecontact                 ;�U��������ɐG��Ă��鎞�i�q�b�g�E�K�[�h�����j
trigger3 = (StateNo = 1300) && (Time = [12,38]) ;������Ƃ��ۂ��ǉ�

;------------------------------------------------------------------------------
; �����Ł��ɂĎ��ۂɎg���Ă���u�X�}�b�V���J���t�[�A�b�p�[��ChangeState�v����
; ���čs���܂���Im9���M�D�L)
;
; �܂�����̃R�}���h����͂������Ȃ�΁A
; �K���w�Ăяo���R�}���h�̃g���K�[�x�͐ݒ肵�܂��傤�B
; ����ȏ����łȂ�����A�R�}���h�͒ʏ�utriggerall�v�̕��Őݒ肵�������ǂ��B
;
;�utriggerall�v�Ƃ́w�L���ɂȂ�󋵂����肷�邽�߂̏����x���w�肷��B
; triggerall�̏������L���ɂȂ�Ȃ�����Atrigger1�ȍ~�̏������L���ɂ͂Ȃ�Ȃ��B
; ���ł����₹��B�X�e�[�g�쐬�̊�{�e�N�j�b�N�̈�Ȃ̂Ŋo���Ă����ĂˁB
; ������triggerall��trigger1�ȍ~�������Ɓu�P�̂ł́v�g���Ȃ��̂Œ��ӁB
;�itrigger1�ȍ~��S�ăR�����g������M.U.G.E.N�ł��̃L������I��Ŏ����Ă݂悤�j
;
;
; ���w�p���[�Q�[�W�x�́u�X�[�p�[�R���{�Q�[�W�v��u���K�E�Z�Q�[�W�v�Ȃǂ�
; �@�Ă΂�Ă镔���̃Q�[�W�ł��B
; �@�Q�[�W���u�P�O�O�O�|�C���g�v�Ȃ�w���x���P�x�Ɠ����Ӗ��ɂȂ�܂��B
;
; �@�܂��p�b�ƌ��AM.U.G.E.N�̃p���[�Q�[�W���Ďd�g�݂�
; �@�X�g�y�d�q�n�V���[�Y�́u�X�[�p�[�R���{���x���Q�[�W�v�܂�܂���ˁi���
;------------------------------------------------------------------------------

[State -1, �O��J���t�[�˂���];�Q�[�W���x���P
type = ChangeState
value = 3000
triggerall = command = "QCF_xy";"TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
;trigger3 = (StateNo = 1300) && (Time = [12,38]) ;������Ƃ��ۂ��ǉ�

[State -1, �O��J���t�[�˂���];�Q�[�W���x���P
type = ChangeState
value = 3001
triggerall = command = "QCF_yz";"TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;==============================================================================
; �K�E�Z
;==============================================================================
;------------------------------------------------------------------------------
; �ϐ��̎g�����̗�B
;
; �J���t�[�}���́u�n��ŕK�E�Z���o����󋵁v��A
; �ʏ�Z����K�E�Z�֌q�����́u�L�����Z���v�̕�����ݒ肵�Ă���B
; �n��Ő�������΁A�w�ϐ��̗�Q�x�̃X�e�[�g�R���g���[���Őݒ肵��
; �ϐ������s����A����ȊO�Ȃ�w�ϐ��̗�P�x�Ń��Z�b�g����A�Ƃ��������B
;
; �l�I�ɂ͂��̕��@�̓I�X�X�����Ȃ��Bkfmc�ł̕��@�𐄑E���܂��B

[State -1, �ϐ��̗�P];�K�E�Z�̔����������Z�b�g
type = VarSet
trigger1 = 1
var(1) = 0 ;�ϐ��p�p�����[�^�̋L�q���@���̂P�i���̂Q�́u�����v�̃X�e�[�g�ɂāj

[State -1, �ϐ��̗�Q];�K�E�Z�̔����������`�F�b�N
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;[Statedef 440]�i�������̃X�e�[�g�j�ł͂Ȃ���
trigger2 = movecontact
var(1) = 1

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;[State -1, �����J���t�[�j�[];�Q�[�W����
;type = ChangeState
;value = 1070
;triggerall = command = "FF_ab"
;triggerall = power >= 330
;trigger1 = var(1) ;��Őݒ肵���ϐ����L���ɂȂ�����

;[State -1, ��J���t�[�j�[]
;type = ChangeState
;value = 1050
;triggerall = command = "FF_a"
;trigger1 = var(1)

;[State -1, ���J���t�[�j�[]
;type = ChangeState
;value = 1060
;triggerall = command = "FF_b"
;trigger1 = var(1)

;------------------------------------------------------------------------------

;[State -1, �����J���t�[�A�b�p�[];�Q�[�W����
;type = ChangeState
;value = 1120
;triggerall = command = "upper_xy"
;triggerall = power >= 330
;trigger1 = var(1)

;[State -1, ��J���t�[�A�b�p�[]
;type = ChangeState
;value = 1100
;triggerall = command = "upper_x"
;trigger1 = var(1)

;[State -1, ���J���t�[�A�b�p�[]
;type = ChangeState
;value = 1110
;triggerall = command = "upper_y"
;trigger1 = var(1)

;------------------------------------------------------------------------------

;[State -1, �����J���t�[�˂���];�Q�[�W����
;type = ChangeState
;value = 1020
;triggerall = command = "QCF_xy"
;triggerall = power >= 330
;trigger1 = var(1)

[State -1, ��J���t�[�˂���]
type = ChangeState
value = 201
triggerall = command = "QCF_x"
trigger1 = var(1)
trigger1 = statetype != A
;trigger2 = hitdefattr = SC, NA, SA, HA
trigger1 = stateno = 200
trigger1 = movecontact

[State -1, ��J���t�[�˂���]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
trigger1 = stateno != 201
trigger1 = var(1)

;[State -1, ���J���t�[�˂���]
;type = ChangeState
;value = 1010
;triggerall = command = "QCF_y"
;trigger1 = var(1)

;------------------------------------------------------------------------------

;[State -1, �����J���t�[�u���[];�Q�[�W����
;type = ChangeState
;value = 1220
;triggerall = command = "QCB_xy"
;triggerall = power >= 330
;trigger1 = var(1)

;[State -1, ��J���t�[�u���[]
;type = ChangeState
;value = 1200
;triggerall = command = "QCB_x"
;trigger1 = var(1)

;[State -1, ���J���t�[�u���[]
;type = ChangeState
;value = 1210
;triggerall = command = "QCB_y"
;trigger1 = var(1)

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;[State -1, ����];������Ƃ��ۂ��ǉ������Z
;type = ChangeState
;value = 1300
;triggerall = command = "board"
;triggerall = NumHelper(1300) = 0 ;�h�c�i���o�[�u1300�v�̃w���p�[����ʒ��ɂP���o�ĂȂ���
;triggerall = NumProjID(1302) = 0 ;�h�c�i���o�[�u1302�v�̔�ѓ����ʒ��ɂP���o�ĂȂ���
;trigger1 = var(1)

;==============================================================================
; �ړ��֘A
;==============================================================================
;------------------------------------------------------------------------------

[State -1, ����]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, �o�b�N�X�e�b�v]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; ����Z
;==============================================================================
;------------------------------------------------------------------------------

[State -1, �J���t�[�X���[];�����Z
type = ChangeState
value = 910;800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;------------------------------------------------------------------------------

;[State -1, �p���[����];������Ƃ��ۂ��ǉ������Z
;type = ChangeState
;value = 700
;triggerall = command = "hold_c"
;triggerall = power < 3000 ;�Q�[�W�����^���̎��͏o���Ȃ�
;trigger1 = statetype != A && ctrl

[State -1, �N���[�������ɌĂ�]
type = ChangeState
value = 702
triggerall = command = "back_z";"DD_x";
triggerall = power >= 250
trigger1 = statetype != A && ctrl

[State -1, �N���[����O�ɌĂ�]
type = ChangeState
value = 701
triggerall = command = "front_z";"DD_y";
triggerall = power >= 500
trigger1 = statetype != A && ctrl

;---------------------------------------------
;���g-�ǉ��`�F���W
;[State -1, ���g-�ǉ��`�F���W]
;type 	=	ChangeState 			
;value 	=	961 			;�X�e�[�g�Ŏg��
;triggerall	=	command 	= 	"z" 	;
;triggerall	=	statetype 	!= 	A 	;�󒆈ȊO�̂Ƃ�
;trigger1	=	var(1) 			;�R���{�Ŏg����悤��
;trigger1	=	numhelper(702) 	>= 	1 	;���g��1�ȏ゠�鎞

;==============================================================================
; �ʏ�U���Z
;==============================================================================
;------------------------------------------------------------------------------

[State -1, ������p���`]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = stateno = 200
;trigger2 = time > 6
trigger2 = (stateno = 230) && time > 6

[State -1, �e��]
type = ChangeState
value = 210
triggerall = var(6) <= 10
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && time > 6

[State -1, �e���ǌ�];�A��
type = ChangeState
value = 211
triggerall = var(6) <= 10
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && time > 14;15
trigger2 = (stateno = 210) && time < 25;27
trigger3 = (stateno = 211) && time > 5;3;3
trigger3 = (stateno = 211) && time < 16;13

[State -1, ������L�b�N]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && time > 9

[State -1, �������L�b�N]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && time > 6

;------------------------------------------------------------------------------

[State -1, ����]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

;[State -1, ���Ⴊ�ݎ�p���`]
;type = ChangeState
;value = 400
;triggerall = command = "x"
;triggerall = command = "holddown"
;trigger1 = statetype = C
;trigger1 = ctrl

[State -1, ���Ⴊ�ݏe���E��]
type = ChangeState
value = 213
triggerall = var(6) <= 10
triggerall = command = "DB_y"
;triggerall = command = "y"
;triggerall = command = "holddown"
triggerall = P2BodyDist X < 40 && p2statetype = A;P2BodyDist Y >= 17
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 430) && time > 6

[State -1, ���Ⴊ�ݏe���E��]
type = ChangeState
value = 215
triggerall = var(6) <= 10
triggerall = command = "DB_y"
;triggerall = command = "y"
;triggerall = command = "holddown"
triggerall = P2BodyDist X >= 40 || p2statetype != A;P2BodyDist Y >= 17
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 430) && time > 6

[State -1, ���Ⴊ�ݏe���E�O]
type = ChangeState
value = 217
triggerall = var(6) <= 10
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 430) && time > 6

;[State -1, ���Ⴊ�݋��p���`]
;type = ChangeState
;value = 410
;triggerall = command = "y"
;triggerall = command = "holddown"
;trigger1 = statetype = C
;trigger1 = ctrl
;trigger2 = (stateno = 400) || (stateno = 430)
;trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, ���Ⴊ�ݏe���ǌ��E��];�A��
type = ChangeState
value = 216
triggerall = var(6) <= 10
triggerall = command = "DB_y"
;triggerall = command = "y"
;triggerall = command = "holddown"
triggerall = P2BodyDist X >= 40 || p2statetype != A;
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 215) && time > 17;15
trigger2 = (stateno = 215) && time < 25
trigger3 = (stateno = 216) && time > 5;3
trigger3 = (stateno = 216) && time < 13;13
trigger4 = (stateno = 213) && time > 17;15
trigger4 = (stateno = 213) && time < 25
trigger5 = (stateno = 214) && time > 5;3
trigger5 = (stateno = 214) && time < 13;13
trigger6 = (stateno = 217) && time > 17;15
trigger6 = (stateno = 217) && time < 25
trigger7 = (stateno = 218) && time > 5;3
trigger7 = (stateno = 218) && time < 13;13

[State -1, ���Ⴊ�ݏe���ǌ��E��];�A��
type = ChangeState
value = 214
triggerall = var(6) <= 10
triggerall = command = "DB_y"
;triggerall = command = "y"
;triggerall = command = "holddown"
triggerall = P2BodyDist X < 40 && p2statetype = A;
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 213) && time > 17;15
trigger2 = (stateno = 213) && time < 25
trigger3 = (stateno = 214) && time > 5;3
trigger3 = (stateno = 214) && time < 13;13
trigger4 = (stateno = 215) && time > 17;15
trigger4 = (stateno = 215) && time < 25
trigger5 = (stateno = 216) && time > 5;3
trigger5 = (stateno = 216) && time < 13;13
trigger6 = (stateno = 217) && time > 17;15
trigger6 = (stateno = 217) && time < 25
trigger7 = (stateno = 218) && time > 5;3
trigger7 = (stateno = 218) && time < 13;13

[State -1, ���Ⴊ�ݏe���ǌ��E�O];�A��
type = ChangeState
value = 218
triggerall = var(6) <= 10
;triggerall = command = "DB_y"
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 217) && time > 17;15
trigger2 = (stateno = 217) && time < 25
trigger3 = (stateno = 218) && time > 5;3
trigger3 = (stateno = 218) && time < 13;13
trigger4 = (stateno = 213) && time > 17;15
trigger4 = (stateno = 213) && time < 25
trigger5 = (stateno = 214) && time > 5;3
trigger5 = (stateno = 214) && time < 13;13
trigger6 = (stateno = 215) && time > 17;15
trigger6 = (stateno = 215) && time < 25
trigger7 = (stateno = 216) && time > 5;3
trigger7 = (stateno = 216) && time < 13;13

[State -1, ���Ⴊ�ݎ�L�b�N]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, ���Ⴊ�݋��L�b�N]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;------------------------------------------------------------------------------

;[State -1, �W�����v��p���`]
;type = ChangeState
;value = 600
;triggerall = command = "x"
;trigger1 = statetype = A
;trigger1 = ctrl
;trigger2 = stateno = 600
;trigger2 = statetime >= 7
;;trigger3 = stateno = 1350 ;Win�ł̃J���t�[�}���ɂ́u�u���b�L���O�v�����ڗ\�肾�����炵��

;[State -1, �W�����v���p���`]
;type = ChangeState
;value = 610
;triggerall = command = "y"
;trigger1 = statetype = A
;trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 630
;trigger2 = movecontact
;;trigger3 = stateno = 1350 ;Win�ł̃J���t�[�}���ɂ́u�u���b�L���O�v�����ڗ\�肾�����炵��

[State -1, �W�����v��L�b�N]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 1350 ;Win�ł̃J���t�[�}���ɂ́u�u���b�L���O�v�����ڗ\�肾�����炵��

[State -1, �W�����v���L�b�N]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
;trigger3 = stateno = 1350 ;Win�ł̃J���t�[�}���ɂ́u�u���b�L���O�v�����ڗ\�肾�����炵��

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
