; **IMPORTANT NOTE:**
; THIS COMMAND FILE WILL, AND WILL PREVENT THE AI FROM EVEN ATTACKING
; THIS COMMAND FILE WAS MADE LIKE THIS TO ADD AI AND PREVENT HUMAN COMMANDS
; FROM BEING INVOLVED IN THE AI.
;
; IF YOU WANT YOUR CHARACTER TO ATTACK, THEN YOU WILL HAVE TO CODE AI...

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
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
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
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
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
; name = "5b"
; command = b, b, b, b, b
; time = 30
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
;
;==================================================================================
;======| RELACIONADO À AI - AI RELATED |===========================================
;==================================================================================

; These 11 Single Button and Hold Dir commands must be placed here at the top
; of the CMD, above all other commands, and in the standard order shown here,
; in order for the "Compatibly Partnered" version (9742) of the helper AI
; activation method to work with different partners in simul team mode.
; (When the partner is not compatible, then it's best to just use the regular
; version (9741) and rely on the XOR method for backup in case a human
; partner's input turns off the CPU partner's AI.)
; (Now, even if you do not intend to give your character any custom AI, it
; would still be nice if you would place the commands at the top of your CMD,
; for the sake of other characters which do use this AI activation method.
; And then, define Anim 9741 in your AIR file to indicate to other characters
; that your character is compatible.
; It may slightly increase the chances of faulty AI activation if the user is
; using characters with a poor implementation of the old humanly-impossible
; commands AI activation method when fighting against your character, but
; other than that, there's really no particular reason not to.  And you can
; change the names of the commands if you want.  For compatibility, all that
; really matters is the "command" and "time" parameters.)
;
; Another important point to make, is that if you want to add additional
; definitions for any of these basic command names, then there are limits on
; what kind of parameters you can use, in order to ensure the reliability of
; the helper method.  That is, if you redefine any of these first 11 commands,
; then you must follow these rules when doing so:
; - Don't use any command string that includes any tildes. (e.g. no "~x",
;   no "~30D")
; - In the command string, don't include any direction that isn't preceeded by
;   a slash. (e.g. no "F", no "$D")
; - Don't put any non-slashed buttons in a command string overloading one of
;   the Hold Dir command names.
; - Using a command string that includes any commas (e.g. no "a,b"), and/or
;   setting the time parameter to greater than 1, may be safe, but I wouldn't
;   risk it.
; An example of what is permissible, is redefining the "z" button like so:
;	[Command]
;	name = "z"
;	command = y+b
;	time = 1
; Other than that particular common type of redefinition, it's probably best
; to simply avoid adding definitions for these 11 command names altogether.
; And remember, this paragraph just has to do with the helper method.  You'll
; still need to make changes to the XOR code, no matter what type of overloading
; you use with the commands used by it.
[Defaults]
command.buffer.time = 2
;
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

;-| Hold Button |----------------------------------------------------------
; Please define Anim 74140108 in your AIR file if AND ONLY IF you place these
; 7 Hold Button commands immediately after the 11 Single Button and Hold Dir
; commands at the very top of your CMD list, as demonstrated here.
; In this version of the AI code, these commands are only used by the XOR
; method, and thus are optional.  But there remains a possibility that a
; future version of the helper method might be helped by having these
; commands placed here, and Anim 74140108 would then be used to indicate
; that a partner character has a compatible CMD.

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1

[Command]
name = "holdp"
command = /x
time = 1
[Command]
name = "holdp"
command = /y
time = 1
[Command]
name = "holdp"
command = /z
time = 1
;-| Super Motions |--------------------------------------------------------
;---------------------[Ace of Spades]---------------------
[Command]
name = "AceofSpades"
command = ~F,D,B,a+b
time = 20
[Command]
name = "AceofSpades"
command = ~F,D,B,b+c
time = 20
[Command]
name = "AceofSpades"
command = ~F,D,B,a+c
time = 20
[Command]
name = "AceofSpades"
command = ~F,DF,D,DB,B,a+b
time = 25
[Command]
name = "AceofSpades"
command = ~F,DF,D,DB,B,b+c
time = 25
[Command]
name = "AceofSpades"
command = ~F,DF,D,DB,B,a+c
time = 25
;---------------------[Cajun Slash X]---------------------
[Command]
name = "CardDestruction"
command = ~F, D, DF, x+y
time = 20
[Command]
name = "CardDestruction"
command = ~F, D, DF, y+z
time = 20
[Command]
name = "CardDestruction"
command = ~F, D, DF, x+z
time = 20
;---------------------[Card Destruction]---------------------
[Command]
name = "CajunSlashX"
command = ~F, D, DF, a+b
time = 20
[Command]
name = "CajunSlashX"
command = ~F, D, DF, b+c
time = 20
[Command]
name = "CajunSlashX"
command = ~F, D, DF, a+c
time = 20
;---------------------[Royal Flush]---------------------
[Command]
name = "RoyalFlush"
command = ~D, DF, F, x+y
time = 20
[Command]
name = "RoyalFlush"
command = ~D, DF, F, x+z
time = 20
[Command]
name = "RoyalFlush"
command = ~D, DF, F, z+y
time = 20
;---------------------[Cajun Strike X]---------------------
[Command]
name = "CajunStrikeX"
command = ~D,DB,B,x+y
time = 20
[Command]
name = "CajunStrikeX"
command = ~D,DB,B,y+z
time = 20
[Command]
name = "CajunStrikeX"
command = ~D,DB,B,x+z
time = 20
;---------------------[Cajun Explosion]---------------------
[Command]
name = "CajunExplosionF"
command = ~D, DF, F, a+b
time = 20
[Command]
name = "CajunExplosionF"
command = ~D, DF, F, b+c
time = 20
[Command]
name = "CajunExplosionF"
command = ~D, DF, F, a+c
time = 20
[Command]
name = "CajunExplosionB"
command = ~D, DB, B, a+b
time = 20
[Command]
name = "CajunExplosionB"
command = ~D, DB, B, b+c
time = 20
[Command]
name = "CajunExplosionB"
command = ~D, DB, B, a+c
time = 20
;-| Special Motions |------------------------------------------------------
;------------------------Cajun Slash-------------------

[Command]
name = "DP_x"
command = ~F, D, DF, x
[Command]
name = "DP_y"
command = ~F, D, DF, y
[Command]
name = "DP_z"
command = ~F, D, DF, z



[Command]
name = "DPb_x"
command = ~B, D, DB, x
[Command]
name = "DPb_y"
command = ~B, D, DB, y
[Command]
name = "DPb_z"
command = ~B, D, DB, z
;-----------------------
;------------------------Kinetic Card---------------------
[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 20
[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 20
[Command]
name = "QCF_z"
command = ~D, DF, F, z
time = 20
;------------------------Cajun Strike-------------------
[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 20
[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 20
[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 20
[Command]
name = "QCB_a"
command = ~D, DB, B, a
[Command]
name = "QCB_b"
command = ~D, DB, B, b
[Command]
name = "QCB_c"
command = ~D, DB, B, c
;---------------------Trick Card------------
[Command]
name = "QCB_x"
command = ~D, DB, B, x
[Command]
name = "QCB_y"
command = ~D, DB, B, y
[Command]
name = "QCB_z"
command = ~D, DB, B, z
;---------------------Kentic Ground---------
[Command]
name = "DP_a"
command = ~F, D, DF, a
[Command]
name = "DP_b"
command = ~F, D, DF, b
[Command]
name = "DP_c"
command = ~F, D, DF, c
;---------------------Dodge Roll------------
[Command]
name = "HCB_x"
command = ~F, DF, D, DB, B, x
time = 25
[Command]
name = "HCB_y"
command = ~F, DF, D, DB, B, y
time = 25
[Command]
name = "HCB_z"
command = ~F, DF, D, DB, B, z
time = 25

[Command]
name = "HCB_x"
command = ~F, D, B, x
time = 25
[Command]
name = "HCB_y"
command = ~F, D, B, y
time = 25
[Command]
name = "HCB_z"
command = ~F, D, B, z
time = 25
;-| Tap |-----------------------------------------------------------
[Command]
name="fwd"
command=F
time=1
[Command]
name="back"
command=B
time=1
[Command]
name="up"
command=U
time=1
[Command]
name="down"
command=D
time=1
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "recoverf"     ;Required (do not remove)
command = F, F
time = 20

[Command]
name = "recoverb"     ;Required (do not remove)
command = B, B
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

;---------------------------------------------------------------------------------------------
;Super Jump
[Command]
name = "SJ"
command = $D, $U

[Command]
name = "Super_Jump"
command = ~D, U

[Command]
name="bdx"
command=~B,DB,D,x
time=20
[Command]
name="bdy"
command=~B,DB,D,y
time=20
[Command]
name="bdz"
command=~B,DB,D,z
time=20
[Command]
name="bdx"
command=~B,DB,D,~x
time=20
[Command]
name="bdy"
command=~B,DB,D,~y
time=20
[Command]
name="bdz"
command=~B,DB,D,~z
time=20

[Command]
name="bda"
command=~B,DB,D,a
time=20
[Command]
name="bdb"
command=~B,DB,D,b
time=20
[Command]
name="bdc"
command=~B,DB,D,c
time=20
[Command]
name="bda"
command=~B,DB,D,~a
time=20
[Command]
name="bdb"
command=~B,DB,D,~b
time=20
[Command]
name="bdc"
command=~B,DB,D,~c
time=20

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5

[Command]
name = "chargey"
command = /y
time = 1

[Command]
name = "chargeb"
command = /b
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

[Statedef -1]

;[State -1, Zero counter]
;type=changestate
;value=750
;triggerall=roundstate=2&&(command="bdx"||command="bdy"||command="bdz"||command="bda"||command="bdb"||command="bdc")
;triggerall=p2dist x>0&&power>=1000&&statetype!=A
;trigger1=stateno=150||stateno=152

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = stateno !=[100,106]
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = stateno !=[100,106]
triggerall = command = "BB"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,499]) && (movecontact)

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195

triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Guard Push stand]
type = ChangeState
value = 160

triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push crouch]
type = ChangeState
value = 161

triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = ChangeState
value = 162

triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]
;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000

triggerall = StateType = S || StateType = C
triggerall = ctrl
trigger1 = Command = "SJ"
trigger2 = command = "Super_Jump"
;trigger3 = command = "SSSuper_Jump"
;trigger4 = command = "SSSSuper_Jump"
;trigger5 = command = "SSSSSuper_Jump"
;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000

triggerall = Command = "holdup"
trigger1 = stateno = 420 && movehit
;---------------------------------------------------------------------------
;Begin the Recovery Roll
[State -1,Recovery roll]
type = VarSet

triggerall = roundstate = 2
triggerall = alive
;triggerall = (Stateno != 5100) && (Stateno != 5110)
trigger1 = (HitFall) && (command = "holdfwd") ;"recoverf")
var(22) = 1
;---------------------------------------------------------------------------
;Begin the Recovery Roll
[State -1,Recovery roll]
type = VarSet

triggerall = roundstate = 2
triggerall = alive
;triggerall = (Stateno != 5100) && (Stateno != 5110)
trigger1 = (HitFall) && (command = "holdback") ;"recoverb")
var(22) = 2
;---------------------------------------------------------------------------
;Recovery Roll Variable Set 2
[State -1,Recovery roll]
type = VarSet
trigger1 = Lose = 1
trigger1 = !alive
var(22) = 0

;===========================================================================
;-------------------------------Super Attacks-------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
; Ace of Spades
[State -1, The Ace of Spades (Air)]
type = ChangeState
value = 3505

triggerall = power >= 3000
triggerall = command = "AceofSpades"
triggerall= numenemy
triggerall= !(enemy,teammode=simul)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650])
trigger3 = (stateno = [1000,1900])
;---------------------------------------------------------------------------
; Ace of Spades
[State -1, The Ace of Spades]
type = ChangeState
value = 3500

triggerall = power >= 3000
triggerall = command = "AceofSpades"
triggerall= numenemy
triggerall= !(enemy,teammode=simul)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])
trigger3 = (stateno = [1000,1900])
;---------------------------------------------------------------------------
; Cajun Slash X
[State -1, Cajun Slash X]
type = ChangeState
value = 3400

triggerall = power >= 1000
triggerall = command = "CajunSlashX"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])
trigger3 = (stateno = [1000,1900])

;---------------------------------------------------------------------------
; Card Destruction
[State -1, Card Destruction]
type = ChangeState
value = 3300

triggerall = power >= 1000
triggerall = command = "CardDestruction"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])
trigger3 = (stateno = [1000,1900])
;---------------------------------------------------------------------------
; Royal Flush
[State -1, Royal Flush]
type = ChangeState
value = 3000

triggerall = power >= 1000
triggerall = command = "RoyalFlush"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])
trigger3 = (stateno = [1000,1900])
;---------------------------------------------------------------------------
; Cajun Explosion (Near Wall)
[State -1, Cajun Explosion]
type = ChangeState
value = 3110
triggerall = enemynear, name != "helibonus"
triggerall = power >= 1000
triggerall = (backedgebodydist <= 15 && command = "CajunExplosionB")
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650])
trigger3 = (stateno = [1000,1900])
;---------------------------------------------------------------------------
; Cajun Explosion (Near Wall)
[State -1, Cajun Explosion]
type = ChangeState
value = 3111
triggerall = enemynear, name != "helibonus"
triggerall = power >= 1000
triggerall = (frontedgebodydist <= 15 && command = "CajunExplosionF")
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650])
trigger3 = (stateno = [1000,1900])
;---------------------------------------------------------------------------
; Cajun Explosion Forward
[State -1, Cajun Explosion Forward]
type = ChangeState
value = 3100
triggerall = enemynear, name != "helibonus"
triggerall = power >= 1000
triggerall = command = "CajunExplosionF"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])
trigger3 = (stateno = [1000,1900])
;---------------------------------------------------------------------------
; Cajun Explosion Backward
[State -1, Cajun Explosion Backward]
type = ChangeState
value = 3105
triggerall = enemynear, name != "helibonus"
triggerall = power >= 1000
triggerall = command = "CajunExplosionB"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])
trigger3 = (stateno = [1000,1900])
;---------------------------------------------------------------------------
; Cajun Strike X
[State -1, Cajun Strike X]
type = ChangeState
value = 3200

triggerall = power >= 1000
triggerall = command = "CajunStrikeX"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])
trigger3 = (stateno = [1000,1900])

;===========================================================================
;-----------------------------Special Attacks-------------------------------
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
; Air Throw
[State -1, Air Throw]
type = ChangeState
value = 880
triggerall = enemynear, name != "Prime Sentinels"
triggerall = command = "holdfwd" && p2bodydist x < 15 && command = "c"
triggerall = statetype = A && enemynear,statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = enemynear, name != "Prime Sentinels"
triggerall = command = "holdfwd" && p2bodydist x < 15 && command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
;---------------------------------------------------------------------------
; Throw
[State -1, Throw 2]
type = ChangeState
value = 850
triggerall = enemynear, name != "Prime Sentinels"
triggerall = command = "holdfwd"  && p2bodydist x < 15 && command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)

;---------------------------------------------------------------------------
; Dodge Roll
[State -1, Dodge Roll]
type = ChangeState
value = 1502

triggerall = command = "HCB_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])
;---------------------------------------------------------------------------
; Dodge Roll
[State -1, Dodge Roll]
type = ChangeState
value = 1501

triggerall = command = "HCB_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])
;---------------------------------------------------------------------------
; Dodge Roll
[State -1, Dodge Roll]
type = ChangeState
value = 1500

triggerall = command = "HCB_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])

;---------------------------------------------------------------------------
; Kinetic Ground Weak
[State -1, Kinetic Ground Weak]
type = null;ChangeState
value = 1600
triggerall = command = "DP_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])

;---------------------------------------------------------------------------
; Kinetic Ground Medium
[State -1, Kinetic Ground Medium]
type = null;ChangeState
value = 1610
triggerall = command = "DP_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])

;---------------------------------------------------------------------------
; Kinetic Ground Hard
[State -1, Kinetic Ground Hard]
type = ChangeState
value = 1620
triggerall = command = "DPb_z" || command = "DPb_y" || command = "DPb_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])

;---------------------------------------------------------------------------
; Cajun Slash Weak
[State -1, Cajun Slash Weak]
type = ChangeState
value = 1200

triggerall = command = "DP_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])
;---------------------------------------------------------------------------
; Cajun Slash Medium
[State -1, Cajun Slash Medium]
type = ChangeState
value = 1210

triggerall = command = "DP_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])
;---------------------------------------------------------------------------
; Cajun Slash Heavy
[State -1, Cajun Slash Heavy]
type = ChangeState
value = 1220

triggerall = command = "DP_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])
;---------------------------------------------------------------------------
; Air Kinetic Card
[State -1, Air Quick Kinetic Card]
type = ChangeState
value = 1005

;triggerall = numhelper(1000) = 0
triggerall = numtarget(1010) = 0
triggerall = command = "QCF_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650])
;---------------------------------------------------------------------------
; Kinetic Card
[State -1, Air Normal Kinetic Card]
type = ChangeState
value = 1006

;triggerall = numhelper(1000) = 0
triggerall = numtarget(1010) = 0
triggerall = command = "QCF_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650])
;---------------------------------------------------------------------------
; Kinetic Card
[State -1, Air Slow Kinetic Card]
type = ChangeState
value = 1007

;triggerall = numhelper(1000) = 0
triggerall = numtarget(1010) = 0
triggerall = command = "QCF_z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650])

;---------------------------------------------------------------------------
; Cajun Strike
[State -1, Cajun Strike Forward]
type = ChangeState
value = 1300
triggerall = enemynear, name != "helibonus"
triggerall = command = "QCF_a" || command = "QCF_b" || command = "QCF_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])
;---------------------------------------------------------------------------
; Cajun Strike
[State -1, Cajun Strike Backward]
type = ChangeState
value = 1310
triggerall = enemynear, name != "helibonus"
triggerall = command = "QCB_a" || command = "QCB_b" || command = "QCB_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])
;---------------------------------------------------------------------------
; Cajun Kick
[State -1, Cajun Kick]
type = ChangeState
value = 1400

triggerall = command = "QCF_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650])
;---------------------------------------------------------------------------
; Cajun Kick
[State -1, Cajun Kick (Bounce)]
type = ChangeState
value = 1401

triggerall = command = "QCF_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650])
;---------------------------------------------------------------------------
; Cajun Kick
[State -1, Cajun Kick (Multi-Hit)]
type = ChangeState
value = 1402

triggerall = command = "QCF_c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650])
;---------------------------------------------------------------------------
; Kinetic Card
[State -1, Quick Kinetic Card]
type = ChangeState
value = 1000

;triggerall = numhelper(1000) = 0
triggerall = numtarget(1010) = 0
triggerall = command = "QCF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])
;---------------------------------------------------------------------------
; Kinetic Card
[State -1, Normal Kinetic Card]
type = ChangeState
value = 1001

;triggerall = numhelper(1000) = 0
triggerall = numtarget(1010) = 0
triggerall = command = "QCF_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])
;---------------------------------------------------------------------------
; Kinetic Card
[State -1, Slow Kinetic Card]
type = ChangeState
value = 1002

;triggerall = numhelper(1000) = 0
triggerall = numtarget(1010) = 0
triggerall = command = "QCF_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])

;---------------------------------------------------------------------------
; Trick Card
[State -1, Quick Trick Card]
type = ChangeState
value = 1100

;triggerall = numhelper(1000) = 0
triggerall = numtarget(1010) = 0
triggerall = command = "QCB_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])
;---------------------------------------------------------------------------
; Trick Card
[State -1, Normal Trick Card]
type = ChangeState
value = 1101

;triggerall = numhelper(1000) = 0
triggerall = numtarget(1010) = 0
triggerall = command = "QCB_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])
;---------------------------------------------------------------------------
; Trick Card
[State -1, Slow Trick Card]
type = ChangeState
value = 1102

;triggerall = numhelper(1000) = 0
triggerall = numtarget(1010) = 0
triggerall = command = "QCB_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200

triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = ( stateno = 230 || stateno = 400 || stateno = 430)  && movecontact

 ;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210

triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200  ||stateno = 230 ) && movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220

triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210 || stateno = 240 || stateno = 200|| stateno = 230)  && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230

triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = ( stateno = 200 || stateno = 400 || stateno = 430)  && movecontact
trigger2 = (stateno = 200)  && movecontact

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240

triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230 || stateno = 210)  && movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250

triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 220 || stateno = 210 || stateno = 240 ||stateno = 200|| stateno = 230)  && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400

triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
;trigger2 = (stateno = 230 || stateno = 200 || stateno = 430)  && movecontact
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410

triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400 || stateno = 430)  && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420

triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 410 || stateno = 440|| stateno = 400||stateno = 430)  && movecontact;  && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430

triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;trigger2 = (stateno = 230 || stateno = 400 || stateno = 200)  && movecontact
trigger2 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440

triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400 || stateno = 430 || stateno = 410)  && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450

triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 410 || stateno = 440|| stateno = 400 || stateno = 430)  && movecontact; && movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600

triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610

triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 630)  && movecontact

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620

triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 610 || stateno = 640 ||stateno = 600 || stateno = 630)  && movecontact
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630

triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600  && movecontact

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640

triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 630 || stateno = 600|| stateno = 610)  && movecontact

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650

triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 620 || stateno = 610 || stateno = 640 ||stateno = 600 || stateno = 630)  && movecontact
